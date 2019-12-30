Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42C912D3D5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 20:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3286289B57;
	Mon, 30 Dec 2019 19:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF90F89B57
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 19:21:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 11:21:13 -0800
X-IronPort-AV: E=Sophos;i="5.69,376,1571727600"; d="scan'208";a="213408704"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 11:21:11 -0800
Date: Mon, 30 Dec 2019 21:20:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191230192036.GB6221@ideak-desk.fi.intel.com>
References: <20191227235147.32366-1-imre.deak@intel.com>
 <20191227235147.32366-2-imre.deak@intel.com>
 <157770320111.2392.10167327753502605270@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157770320111.2392.10167327753502605270@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Make sure a semiplanar UV
 plane is tile row size aligned
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 30, 2019 at 10:53:21AM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2019-12-27 23:51:46)
> > Currently the start address of a UV plane in a semiplanar YUV FB is tile
> > size (4kB) aligned. I noticed, that enforcing only this alignment leads
> > oddly to random memory corruptions on TGL while scanning out Y-tiled
> > FBs. This issue can be easily reproduced with a UV plane that is not
> > aligned to the plane's tile row size.
> > =

> > Some experiments showed the correct alignment to be tile row size
> > indeed. This also makes sense, since the de-tiling fence created for the
> =

> One would expect the implicit fence to follow the fence detiling HW
> logic, which does not require tile-row alignment, just 4096 alignment
> (since gen4). That suggests this logic is peculiar to the display engine.

Not sure what's an implicit fence, I only considered the fence we add
(which is added at offset 0 for the whole object via the set_tiling
IOCTL).  But I suppose you mean the display would use its own fence even
if we don't add one (since an explicit fence for display is not needed
for a while now). Not sure what's the exact reason for the spec's
tile-row alignment restriction for UV surface addresses, maybe it's
required both by an implicit or explicit fence. Note that I haven't seen
the memory corruption if I didn't add the explicit fence for the object,
but I haven't checked if there are other problems even then, once I
noticed the spec alignment requirement.

To me what's logical as a rule is to not wrap around the right edge of
the fence (implicit or explicit) by programming a display surface base
address and an x offset. That would also mean that the stride of FB
surfaces (for planar YUV surfaces all surface stride's being the same)
match the stride of an implicit or explicit fence. Not sure if we
enforce all these.

> > object - with its own stride and so "left" and "right" edge - applies to
> > all the planes in the FB, so each tile row of all planes should be tile
> > row aligned.
> > =

> > In fact BSpec requires this alignment since SKL. On SKL we may enforce
> > this due to the AUX plane x,y coords check, but on ICL and TGL we don't.
> > For now enforce this only on TGL; I can follow up with any necessary
> > change for ICL after more tests.
> =

> Considering the severity of the error, I strongly suggest we fix all
> suspected machines and Cc:stable.

Ok, will add Cc now to this one, but would follow up with other machines
after more empirical proofs.

> > BSpec requires a stricter alignment for linear UV planes too (kind of a
> > tile row alignment), but it's unclear whether that's really needed
> > (couldn't be explained with the de-tiling fence as above) and enforcing
> > that could break existing user space; so avoid that too for now until
> > more tests.
> > =

> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > +static unsigned int intel_tile_row_size(const struct drm_framebuffer *=
fb,
> > +                                       int color_plane)
> > +{
> > +       unsigned int tile_width, tile_height;
> > +
> > +       intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> > +
> > +       return fb->pitches[color_plane] * tile_height;
> =

> Ok, that is tile_row_size.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
