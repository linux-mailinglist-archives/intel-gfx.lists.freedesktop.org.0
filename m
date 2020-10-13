Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B46BD28D1E5
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 18:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213516E8F4;
	Tue, 13 Oct 2020 16:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F6F6E8F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 16:12:14 +0000 (UTC)
IronPort-SDR: SGZ3G6hdIogk77unPnkF1WuRz19XVcX4sZUDyPPdG3i6DaQWYQym16qA49a/wmCF7XZ9UfEFnJ
 9B6BhugwbBhw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="153768783"
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="153768783"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 09:12:13 -0700
IronPort-SDR: zKF/xkEo6YZKH8fa/Lxy9IM1MNZk6rF5y4/u9AAbyenS0tSOs6h5Gw4Hx2v3vmjPAGagM7mPsl
 tA+RCfhVLhJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="420574924"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 Oct 2020 09:12:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Oct 2020 19:12:10 +0300
Date: Tue, 13 Oct 2020 19:12:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201013161210.GD6112@intel.com>
References: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
 <160260406924.2946.14780529118115559847@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160260406924.2946.14780529118115559847@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Mark ininitial fb obj as WT
 on eLLC machines to avoid rcu lockup during fbdev init
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 13, 2020 at 04:47:49PM +0100, Chris Wilson wrote:
> See subject, s/ininitial/iniital/
> =

> Quoting Ville Syrjala (2020-10-07 13:03:27)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Currently we leave the cache_level of the initial fb obj
> > set to NONE. This means on eLLC machines the first pin_to_display()
> > will try to switch it to WT which requires a vma unbind+bind.
> > If that happens during the fbdev initialization rcu does not
> > seem operational which causes the unbind to get stuck. To
> > most appearances this looks like a dead machine on boot.
> > =

> > Avoid the unbind by already marking the object cache_level
> > as WT when creating it. We still do an excplicit ggtt pin
> > which will rewrite the PTEs anyway, so they will match whatever
> > cache level we set.
> > =

> > Cc: <stable@vger.kernel.org> # v5.7+
> > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2381
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 907e1d155443..00c08600c60a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3445,6 +3445,14 @@ initial_plane_vma(struct drm_i915_private *i915,
> >         if (IS_ERR(obj))
> >                 return NULL;
> >  =

> > +       /*
> > +        * Mark it WT ahead of time to avoid changing the
> > +        * cache_level during fbdev initialization. The
> > +        * unbind there would get stuck waiting for rcu.
> > +        */
> > +       i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
> > +                                           I915_CACHE_WT : I915_CACHE_=
NONE);
> =

> Ok, I've been worrying about whether there were any more side-effects,
> but I think it all comes out in the wash. The proof is definitely in the
> eating, and we will know soon enough if we break someone's virtual
> terminal.

At least it seems to work on my CFL with eLLC caching enabled.

> =

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Ta.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
