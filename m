Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0472D6AE5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 00:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40136EB94;
	Thu, 10 Dec 2020 23:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46DC6EB94
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 23:13:24 +0000 (UTC)
IronPort-SDR: dk4A24CJ/2v0iNDnb2Ga9ZVDaPQaXh1vGgY11J/tp3k0dAoVKBGMmHqGKRD/hSuoM6bPUUcpeR
 rQUCbDfLlnSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="170843489"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="170843489"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 15:13:24 -0800
IronPort-SDR: K8TRc3oY2LQMbqB4NBEfkEhdwagG9i7QIxPuSgzR+Fo0+m7zrfmq/2k/tz92YtmyN9tGgFU3vf
 fOb+hW1l0LCg==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="349089590"
Received: from luciarga-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.212.59.234])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 15:13:23 -0800
Date: Thu, 10 Dec 2020 15:13:22 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210231322.GA117137@intel.com>
References: <20201210230741.17140-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210230741.17140-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Go softly softly on
 initial modeset failure
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
Cc: "H . J . Lu" <hjl.tools@gmail.com>, intel-gfx@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 11:07:41PM +0000, Chris Wilson wrote:
> Reduce the module/device probe error into a mere debug to hide issues
> where the initial modeset is failing (after lies told by hw probe) and
> the system hangs with a livelock in cleaning up the failed commit.
> =

> Reported-by: H.J. Lu <hjl.tools@gmail.com>
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=3D210619
> Fixes: b3bf99daaee9 ("drm/i915/display: Defer initial modeset until after=
 GGTT is initialised")
> Fixes: ccc9e67ab26f ("drm/i915/display: Defer initial modeset until after=
 GGTT is initialised")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Ville Syrj=E4l=E4" <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: H.J. Lu <hjl.tools@gmail.com>
> Cc: Dave Airlie <airlied@redhat.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c567c0cada7e..761be8deaa9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -18755,7 +18755,7 @@ int intel_modeset_init(struct drm_i915_private *i=
915)
>  	 */
>  	ret =3D intel_initial_commit(&i915->drm);
>  	if (ret)
> -		return ret;
> +		drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
>  =

>  	intel_overlay_setup(i915);
>  =

> -- =

> 2.20.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
