Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5FA96B2CD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 09:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B088110E693;
	Wed,  4 Sep 2024 07:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aP8OXpTm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959C010E693;
 Wed,  4 Sep 2024 07:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725434862; x=1756970862;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DMHMjfFvKuBlQGV7XtBnrhEGTwUVYy3hzCcNyfUWvxo=;
 b=aP8OXpTmXaYL1xKJs3BWs8ojJgyDnkq3vfH8rUdniexlkalfCNyjCqxo
 XWua7yaLk+K9TJi62d0my6c9U1+RNhYgvUTUL3aWCCCgFYq5B3gtwkkLQ
 XUBOZ0xj/9XFqye//JvDVHMm26Uc44KPuQVsLQIUGrO/Ty6YhtxpdsIlq
 MmmDuwC8HYBxbB+nMsnO7NYibD9JG+0VIFqRYyJ7DHEada6X6KQ4Lyz7U
 E6jX4hIG1Rd6YULESsG/D1gAzGl8UwaxuYWl94QVAyPRYsTHsAJZK9Vl3
 eiXiTYtoZx4BaE66UkIn+jRN/nIIKT3iV6ZEgKKnmhfUTJdqz/PGNzWvB A==;
X-CSE-ConnectionGUID: eKCGt37DQdqCkB9PN8DJ1g==
X-CSE-MsgGUID: ACmtilT8SSWlvcbFcUIvwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24228434"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="24228434"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 00:27:41 -0700
X-CSE-ConnectionGUID: CVIMKKknToyxFcF69SN/NA==
X-CSE-MsgGUID: 4ntoxRIUSk2Q94NcbOiY5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69569874"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 00:27:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 2/4] drm/xe/display: Remove i915_drv.h include
In-Reply-To: <20240903223803.380711-3-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
 <20240903223803.380711-3-rodrigo.vivi@intel.com>
Date: Wed, 04 Sep 2024 10:27:22 +0300
Message-ID: <87cyljubdx.fsf@intel.com>
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

On Tue, 03 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> Change HAS_DISPLAY towards intel_display and remove one of the
> last includes of i915_drv.h in Xe.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index c93b753fc88e..65331bbbc068 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -13,7 +13,6 @@
>  #include <uapi/drm/xe_drm.h>
>  
>  #include "soc/intel_dram.h"
> -#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
>  #include "intel_acpi.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
> @@ -34,7 +33,7 @@
>  
>  static bool has_display(struct xe_device *xe)
>  {
> -	return HAS_DISPLAY(xe);
> +	return HAS_DISPLAY(&xe->display);
>  }
>  
>  /**

-- 
Jani Nikula, Intel
