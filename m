Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCC7AD0344
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 15:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E7D10EAA8;
	Fri,  6 Jun 2025 13:33:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EcHnvGg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1F810EAA7;
 Fri,  6 Jun 2025 13:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749216794; x=1780752794;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=pTGcbQpHMVMlMpyu9lfU5UA5V+QqN4Emaa23SHJJ9S0=;
 b=EcHnvGg4XrZpJRcx6gD7WhhRQhtaWm9gShtSHqepUAJx72+oO3txfjJU
 vGzpYlMJUTI+v9tG+yICnp4RMjMjbPI5+JEiXpKLq4xJjvyFjKpPm04Dv
 U0XqASPyxmj1h4tIL7gmMpz8kvN8Jg79YxH+bAIrHP2lkYoF0jowagZrJ
 KZd75lxeA3s4GfeSJsPb6kdPCHJW7csW3PrdTlZp5OFZALi3X+mvhRZ01
 1HBU9J9ZtIgUoMTqkZraiEuexSEUqmQ/06bb5G4RwNxHKy5DiIJotoItF
 eI4OQbtN4Su2XUgx4ZMXnGCCHOutITfM330kg4bsA+ZVGisBBCIEpXH1W w==;
X-CSE-ConnectionGUID: KB4pi3lATfKVBK10eHXeHA==
X-CSE-MsgGUID: 4lNY8MUYTPydlCJQdW/iHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11456"; a="62762565"
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="62762565"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 06:33:14 -0700
X-CSE-ConnectionGUID: oKow10mHQnmtCMMoHGOxfg==
X-CSE-MsgGUID: BiY1/zHFR0C4adnZI2MV2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="176700248"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 06:33:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Fix macro HAS_ULTRAJOINER
In-Reply-To: <20250605052616.3368990-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250605052616.3368990-1-ankit.k.nautiyal@intel.com>
Date: Fri, 06 Jun 2025 16:33:10 +0300
Message-ID: <6444da4dfedf172aef83804dc85c3828e0f8b115@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 05 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Not all platforms that have display >= 20 support ultrajoiner.

That implies some of them do, but the patch says none of them do.

> Fix the macro HAS_ULTRAJOINER with correct platforms.
>
> Bspec: 69556
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0ac5484c0043..4308822f0415 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -192,9 +192,8 @@ struct intel_display_platforms {
>  #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
>  						  BIT(trans)) != 0)
>  #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
> -#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
> -					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
> -					 HAS_DSC(__display))
> +#define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
> +					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
>  #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
>  #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>  #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)

-- 
Jani Nikula, Intel
