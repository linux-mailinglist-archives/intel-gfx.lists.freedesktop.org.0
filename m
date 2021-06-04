Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF2139BC15
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 17:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D7089FEA;
	Fri,  4 Jun 2021 15:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442456E9F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 15:38:19 +0000 (UTC)
IronPort-SDR: EPTcA3oP1QilieDdwUOy85RAhCWxioL80ZmGVSnOO5NztdY45hT84QtBLvlVuJ6+tlRyLSbv8l
 LovPetzBujkQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204340423"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="204340423"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 08:38:00 -0700
IronPort-SDR: 6VBT/9Yoo4WfKWOdNEnie3iaQloHdRZlHXTxDhv4gqb/YffbATGPqxsDsiL5kdV+2KG0/aVmxO
 pkR/p5j7CKAw==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="417791177"
Received: from ccbilbre-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.254.2.203])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 08:37:59 -0700
Date: Fri, 4 Jun 2021 11:37:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <YLpI1QmigxqbU+CN@intel.com>
References: <20210603220754.13920-1-manasi.d.navare@intel.com>
 <YLoheJuGxUjOgHd1@intel.com> <87wnr9odrq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wnr9odrq.fsf@gaia.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Initialize the mbus_offset to
 fix static analysis issue
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 06:22:49PM +0300, Mika Kuoppala wrote:
> Rodrigo Vivi <rodrigo.vivi@intel.com> writes:
> =

> > On Thu, Jun 03, 2021 at 03:07:54PM -0700, Manasi Navare wrote:
> >> Static analysis identified an issue in skl_crtc_allocate_ddb where
> >> mbus_offset may be used uninitialized.
> >> This patch fixes it.
> >
> > I'm sorry, but I really cannot see what this tool is seeing...
> > I even tried to look to our internal branch to see if it was an issue
> > there.
> > But I'm failing to see how it is possible...
> =

> It is in the goto out; path.

indeed... thanks

what a huge "out" block.

For me it looks like another function and not just an "out".

Could we get a refactor here?
I'm afraid that setting mbus_offset =3D 0 silence the static analysis tool,
but this might not be right for this "out" section. Because offset gets
totally ignored.

The condition to call the goto out is not that clear on why we want
one or another path, so a refactor there to make things more clear is
probably the best.

> -Mika
> =

> >
> >> =

> >> Fixes: 835c176cb1c4 ("drm/i915: Introduce MBUS relative dbuf offsets")
> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >> =

> >> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/in=
tel_pm.c
> >> index 00f3dead20ad..a385b8b7414f 100644
> >> --- a/drivers/gpu/drm/i915/intel_pm.c
> >> +++ b/drivers/gpu/drm/i915/intel_pm.c
> >> @@ -4163,7 +4163,7 @@ skl_crtc_allocate_ddb(struct intel_atomic_state =
*state, struct intel_crtc *crtc)
> >>  	struct intel_crtc_state *crtc_state;
> >>  	struct skl_ddb_entry ddb_slices;
> >>  	enum pipe pipe =3D crtc->pipe;
> >> -	unsigned int mbus_offset;
> >> +	unsigned int mbus_offset =3D 0;
> >>  	u32 ddb_range_size;
> >>  	u32 dbuf_slice_mask;
> >>  	u32 start, end;
> >> -- =

> >> 2.19.1
> >> =

> >> _______________________________________________
> >> Intel-gfx mailing list
> >> Intel-gfx@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
