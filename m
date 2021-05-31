Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4108D395F0D
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 16:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8083E89FDE;
	Mon, 31 May 2021 14:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C425C6E4CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 14:05:41 +0000 (UTC)
IronPort-SDR: zrmKAPSXCk6OUbK2lcsFRlhRlY9cE32lmZu2OkMXDqXw+MqHjKXpfVUsq5rXIMYeZprbGF0Jcn
 A2P4tvuD543A==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190725843"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="190725843"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 07:05:40 -0700
IronPort-SDR: 2gRWLD1y+Ii+EvcXgq7PFrcBVBxYV1toOQb7EtbvcXJZvABIDdlN8XkP5CWkeDpqdEpeOjTWCb
 KkOrIIPoG9Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="410955140"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 31 May 2021 07:05:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 May 2021 17:05:37 +0300
Date: Mon, 31 May 2021 17:05:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sodhi, Vunny" <vunny.sodhi@intel.com>
Message-ID: <YLTtMS4AOu2d7kmo@intel.com>
References: <1622460737-46494-1-git-send-email-vunny.sodhi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1622460737-46494-1-git-send-email-vunny.sodhi@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add support of
 MOD_Y_TILED during fb init
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
Cc: intel-gfx@lists.freedesktop.org, Sodhi@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 31, 2021 at 07:32:17PM +0800, Sodhi, Vunny wrote:
> Adding Y_TILED modifier which is needed to support DRM_FORMAT_NV12
> during framebuffer initialization.
> =

> Signed-off-by: Sodhi, Vunny <vunny.sodhi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index caf0414..a9b1b62 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11610,8 +11610,10 @@ static int intel_framebuffer_init(struct intel_f=
ramebuffer *intel_fb,
>  		if (tiling =3D=3D I915_TILING_X) {
>  			mode_cmd->modifier[0] =3D I915_FORMAT_MOD_X_TILED;
>  		} else if (tiling =3D=3D I915_TILING_Y) {
> +			mode_cmd->modifier[0] =3D I915_FORMAT_MOD_Y_TILED;
> +		} else {

This is just the legacy bo tiling->modifier path, which is not needed by
any old userspace, and all modern userspace should just use modifiers.

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "No Y tiling for legacy addfb\n");
> +				    "Unsupported tiling for legacy addfb\n");
>  			goto err;
>  		}
>  	}
> -- =

> 2.7.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
