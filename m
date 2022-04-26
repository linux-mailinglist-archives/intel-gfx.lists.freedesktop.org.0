Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFC951067F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7090A10E0FB;
	Tue, 26 Apr 2022 18:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 914D110E0FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 18:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650996924; x=1682532924;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3NAeiTWMFLfq3jLOSx5WRqpgxIOMfFXEbo4UsqTlGP0=;
 b=mJY8rObkTHMjgMNAPbgmIfL49zQFuKALolCdlaf5J1Po9un16dLvvbgm
 e7Homnf/VMk/a9xapcd//2/5oGP3TVu5I8J51r3Ryxyrdz6KdOt9ab4w/
 KPykBXb401nqw5LVyJfzgTjt2Bo2KJTGpnUYCh4t656s9qGKqaSFGWrTf
 92R90+61TD08/XJqf5ctdabdBvIPjAfwulFfdUybxKeV1Iz80MX1950BL
 fa8s+o//xllvqCyak7iKCh2Hdl+GKaPkEqY9CM3x/QDXYIqt2jG6VlhKb
 tSZUlUKyV+58DMqSZozG/lTMRtXT2w/qxoZmA5keOxdwYKPJnSZMuv16o w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="263271671"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="263271671"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 11:15:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="595892122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 26 Apr 2022 11:15:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 21:15:20 +0300
Date: Tue, 26 Apr 2022 21:15:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <Ymg2uBjovjgVAyC5@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220426120407.1334318-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 26, 2022 at 05:34:07PM +0530, Arun R Murthy wrote:
> Starting from Gen12 Async Flip is supported on linear buffers.

It's supported earlier than that. But IIRC there was some kind of
GTT alignment vs. async flip vs. FBC restriction that we weren't
handling.

> This patch enables support for async on linear buffer.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0decf3d24237..e3bf250b85e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7522,6 +7522,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
> +			if (DISPLAY_VER(i915) < 12) {
> +				drm_dbg_kms(&i915->drm,
> +					"[PLANE:%d:%s] Modifier does not support async flips\n",
> +					plane->base.base.id, plane->base.name);
> +				return -EINVAL;
> +			}
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
