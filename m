Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FEE14D126
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 20:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EADE6E42C;
	Wed, 29 Jan 2020 19:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035336E42C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 19:21:09 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 11:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="222551176"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 29 Jan 2020 11:19:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 21:19:11 +0200
Date: Wed, 29 Jan 2020 21:19:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200129191911.GY13686@intel.com>
References: <20191209150137.18578-1-ville.syrjala@linux.intel.com>
 <20191209150137.18578-2-ville.syrjala@linux.intel.com>
 <157590439302.6399.13307864068739805449@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157590439302.6399.13307864068739805449@skylake-alporthouse-com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel 2/2] sna: Eliminate
 sna_mode_wants_tear_free()
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

On Mon, Dec 09, 2019 at 03:13:13PM +0000, Chris Wilson wrote:
> Quoting Ville Syrjala (2019-12-09 15:01:37)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The modparam checks performed by sna_mode_wants_tear_free() don't
> > generally work when the server is running as a regular user. Hence
> > we can't rely on them to indicate whether FBC/PSR/etc is enabled.
> > A lso the "Panel Self-Refresh" connector property doesn't actually
> > exist so we can nuke that part as well. Let's just nuke the whole
> > thing and assume we want dirtyfb always when tearfree is not enabled.
> > =

> > I'll anyway want to enable FBC by default across the board soonish
> > so the check wouldn't really buy us much (would just exclude i830
> > and a few old desktop chipsets which don't have FBC hardware).
> > =

> > Additionally if we don't have working dirtyfb we really should
> > enable tearfree by default because otherwise we're going to
> > get horrible lag due to missing frontbuffer flushes.
> =

> But we also want to enable TearFree anyway in most cases, and here we
> are defaulting to off in cases where it was already on.
> =

> I still don't know on what grounds the cut-off should be based, the
> primary question is can we afford to keep an extra framebuffer plus any
> gubbins memory? The worry about perf are now larger moot, so it boils
> down to available memory -- in quite a few cases TearFree is a big
> improvement on power management, but that I guess is currently snb+
> (although we can fix ilk render powerstandby).
> =

> How about GTT > mappable aperture, based on the idea that we have room
> to spare that can't be used for scanout? That would only disable gen2 by
> default.

So thinking about this thing again. If we go with the mappable vs. gtt
size check, what do we want to do with the meson/autoconf tearfree knob.
Just nuke it? Or maybe we want it to override all the heuristics?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
