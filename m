Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966A3993856
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 22:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A1B10E41F;
	Mon,  7 Oct 2024 20:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKHhmYi3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928C110E283;
 Mon,  7 Oct 2024 20:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728333366; x=1759869366;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OQbLs7h/nk0k9rCElG5MqC6Hzn9E/UkpQILgVAoX488=;
 b=IKHhmYi3GSFoolHyNLToDKeqFB7OwrYqL/hutyI0+2+bzJCtQL6g9Oth
 hU+Cv/UYgJzL4TP1GDm7qRVxGksHUuV67yY3t6jceah8pkUVn2mTzytQ/
 3VuNQq8OvrDiZTZt9NFnXRG6cDr7Uydew7bwmOZRmUvrG9+wecjMTDFw9
 ZIeHdNt3zhP0P3TDvBgEQZj0TqRCGh/OVRk6w0BrrAqhBIm/8itfHUmXB
 QTYoFdn4Ws4+5SNdCbG4iNPKZqT7ywNBRO8uFx2HisCLXC4Yinpp4t0gd
 ijymc+NBZydgoHja9auiP5aj5xADrdUiVzy/bqSbBx2aK+oqpwlU8WJvZ A==;
X-CSE-ConnectionGUID: dHqtMvRzTd+vvRhZl47PMw==
X-CSE-MsgGUID: LS1iAPQQS/ua88gdvOb/Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31288429"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="31288429"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 13:36:06 -0700
X-CSE-ConnectionGUID: PiofscwXT8KJArl+922tuQ==
X-CSE-MsgGUID: T5oZFW5oTSacANsvegOUNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="106349522"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 07 Oct 2024 13:36:03 -0700
Received: from [10.246.1.253] (mwajdecz-MOBL.ger.corp.intel.com [10.246.1.253])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EBCDE2FC65;
 Mon,  7 Oct 2024 21:36:01 +0100 (IST)
Message-ID: <00e7082a-c0e9-4812-8fac-ded4b8f19928@intel.com>
Date: Mon, 7 Oct 2024 22:36:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/15] drm/i915/display: use a macro to define platform
 enumerations
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
References: <cover.1727699233.git.jani.nikula@intel.com>
 <c10f2ca9980a1f62aad26b8e349552db475933ff.1727699233.git.jani.nikula@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <c10f2ca9980a1f62aad26b8e349552db475933ff.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 30.09.2024 14:31, Jani Nikula wrote:
> We'll be needing a macro based list of platforms for more things in the
> future. Start by defining the platform enumerations with it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
>  1 file changed, 61 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 5306bbd13e59..1cc1a2de9e6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -15,63 +15,70 @@ struct drm_i915_private;
>  struct drm_printer;
>  
>  /* Keep in gen based order, and chronological order within a gen */
> +#define INTEL_DISPLAY_PLATFORMS(func) \
> +	func(PLATFORM_UNINITIALIZED) \

maybe this one should be defined in the old-fashion way so the
INTEL_DISPLAY_PLATFORMS macro will contain only valid IDs?

