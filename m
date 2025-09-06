Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8FEB46E68
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Sep 2025 15:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCD110E039;
	Sat,  6 Sep 2025 13:38:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YyKVQTZ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A04F10E039;
 Sat,  6 Sep 2025 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757165915; x=1788701915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=odYl+c22GfakiEgQc8wFGqAiYlM3jucTIDD3tChqV0Q=;
 b=YyKVQTZ/90aKpBgbcYjAsLQU8isn/lqjqhctuSfMMc+l5DYKhTCuqEup
 F4r/tmIJmDvepUsCLFG1x86Kkddfw5G5JRyZVJxLvViAD115+u9J2l/Tr
 P0g+P4gZ9mMqQnS4RxJdKSiWKPhg+leBUTJLDy63CcLBq0fhOaxPlz2BH
 zYQNaBqUEC+5RCF/zuK7D0rg+zWnKi3ef4Zyq6uyNvXPAvPq3j3By0S+V
 UPvhqNSQjb50Bfmhydmern2QnEr14qUG8GugYx49XlT8KF5lbMgmwRImf
 TMGnzC8G9tBW3t6a/AavvAjyN3r+LKfvv83dLNSUtPWM11KW6JkVvA4M8 w==;
X-CSE-ConnectionGUID: t8RaX6T8S82+hbdAZeyrbg==
X-CSE-MsgGUID: 6AbTyHdqSBuyXWGzkY9kWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58703003"
X-IronPort-AV: E=Sophos;i="6.18,244,1751266800"; d="scan'208";a="58703003"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2025 06:38:35 -0700
X-CSE-ConnectionGUID: +rQHURNATY6ok8++qDrApA==
X-CSE-MsgGUID: IiiRRhMtTqSVZ26n0WUBaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,244,1751266800"; d="scan'208";a="176466628"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP; 06 Sep 2025 06:38:34 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: jouni.hogander@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Panel Replay SU cap dpcd read return value
Date: Sat,  6 Sep 2025 15:39:24 +0200
Message-ID: <20250906133924.4177569-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: 20250827060809.2461725-1-jouni.hogander@intel.com
References: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On Wed, 27 Aug 2025 09:08:09 +0300, Jouni Högander wrote:
> Currently return value of drm_dpcd_readb is not checked when reading sink
> Panel Replay Selective Update capabilities.
> 
> Fix this and switch to drm_dpcd_read_byte.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8b4cdf9b30db..f2b9a733637a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -494,12 +494,14 @@ static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
>  {
>  	u8 su_capability = 0;
>  
> -	if (intel_dp->psr.sink_panel_replay_su_support)
> -		drm_dp_dpcd_readb(&intel_dp->aux,
> -				  DP_PANEL_REPLAY_CAP_CAPABILITY,
> -				  &su_capability);
> -	else
> +	if (intel_dp->psr.sink_panel_replay_su_support) {
> +		if (drm_dp_dpcd_read_byte(&intel_dp->aux,
> +					  DP_PANEL_REPLAY_CAP_CAPABILITY,
> +					  &su_capability) < 0)
> +			return 0;
> +	} else {
>  		su_capability = intel_dp->psr_dpcd[1];
> +	}
>  
>  	return su_capability;
>  }

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
