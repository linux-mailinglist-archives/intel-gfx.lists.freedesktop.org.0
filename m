Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CED3CCADD94
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 18:15:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C7010E035;
	Mon,  8 Dec 2025 17:15:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wr2nE4Yy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DC810E035
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Dec 2025 17:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765214147; x=1796750147;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aqIhK+zLxmo0N7y7SE2iPZauIr5OwaWFbSt5XC+E7Hg=;
 b=Wr2nE4Yy3AAxEE3G7myXj9Kf6l2iMihAFepgEU6GCcDBis6IQIz+lI45
 lTJ1Dt6aOHcbAgEJl1gGcCYPFLAv+8fjT8JGcchxt82PzXdRBEwqR17lm
 +dcE5nkD1YYQFoe9TTDYVQmXuR4NYJkkopmg7zXmhjotfYHn+46+fL5D2
 IEBtUPqx8PiCc7GDsIkh3Ss0Ay8hTsB+yqBjr3QVILmxukXo/En7je6zm
 zCMuxwahEqDB0kMJrYg9hbRpAtAM8a7xnp0u/xT/WpO/k/F4X5y8O1Wm7
 xWfRngs/8yaJn+O20Ub1RTZkVsBMh+j0l1kKYKUcaoprWvwB7EAbKdG8i w==;
X-CSE-ConnectionGUID: 1Y9UCrAVTGeQsji7/ppFGQ==
X-CSE-MsgGUID: Xkk0EMKFSaWvlCebkSS+vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67054713"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67054713"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 09:15:46 -0800
X-CSE-ConnectionGUID: 6Z0C/4asSfK6fGz1HadzEw==
X-CSE-MsgGUID: IJydUdr/QXamnkzkSKbwXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="219334896"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 09:15:44 -0800
Date: Mon, 8 Dec 2025 19:15:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 3/3] drm: Avoid undefined behavior on u16
 multiplication in drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Message-ID: <aTcHvk1QhPNfKT89@intel.com>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-4-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251204143827.111428-4-krzysztof.karas@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 04, 2025 at 02:38:27PM +0000, Krzysztof Karas wrote:
> vpos (int) field multiplied by crtc_htotal (u16) may cause
> implicit promotion of the latter and overflow the result causing
> undefined behavior.

How is that undefined?

> 
> Cast the u16 operand to (s32) type to avoid that.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> 
> v4:
> * use s32 cast instead of int;
> 
>  drivers/gpu/drm/drm_vblank.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 32d013c5c8fc..e25dcaa6cad4 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -791,7 +791,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
>  	 * since start of scanout at first display scanline. delta_ns
>  	 * can be negative if start of scanout hasn't happened yet.
>  	 */
> -	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
> +	delta_ns = div_s64(1000000LL * (vpos * (s32)mode->crtc_htotal + hpos),
>  			   mode->crtc_clock);
>  
>  	/* Subtract time delta from raw timestamp to get final
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
