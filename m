Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC45C5651B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 09:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47B4010E76E;
	Thu, 13 Nov 2025 08:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gogByJ5k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F5A10E66C;
 Thu, 13 Nov 2025 08:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763023281; x=1794559281;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sxuW4ruSnpfN3E6Q1bB7A7+7aLm/uE5p04SK2qLCSEw=;
 b=gogByJ5kPfiEt5HuDknQrD29D+StjYKijuAjrl+QHFDi010A7GhqWZkr
 fT3T0dyEllHcRYlFJtDiqKDwaCpHU+ZDZWtiteEuo1Tn4svRcPi1hAWho
 8efLeET0QFEYFphsIv5zSrvF98ha0IEgv0IRiGITDsGjCX538AQ1YpxXh
 vZT5tVOJ3VrNGc0KSd3ktsCMaXGYeWZeK3jy0R0u3KtLyoOeqmdOu2ooP
 oUWu/3wopSwRe/ryr55cPIoNySTM0c09Z7qLLTjoTA+UY2TzeaJylU7JZ
 LUzlm1tuqsaAmR2p4GnXn1QDbJ5lQjnSngwJKXZhS9bj1FEsAP3NvcbnV w==;
X-CSE-ConnectionGUID: yB69k/XmS5eZtY7A7Rc1WA==
X-CSE-MsgGUID: 8Ap55XC3TvicZAIFwfy4zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64303255"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="64303255"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:41:17 -0800
X-CSE-ConnectionGUID: uTUhQ1OQSA+fl8GgO2sruA==
X-CSE-MsgGUID: zgi+/RSMSMuN89FoO7+mQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="194617883"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:41:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/ltphy: include intel_display_utils.h instead
 of i915_utils.h
In-Reply-To: <aRTiJdbO8fnW8cIv@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251112181342.107911-1-jani.nikula@intel.com>
 <aRTiJdbO8fnW8cIv@intel.com>
Date: Thu, 13 Nov 2025 10:41:12 +0200
Message-ID: <eaaceb6a48feb978edf06b94762a7270170723ec@intel.com>
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

On Wed, 12 Nov 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Nov 12, 2025 at 08:13:42PM +0200, Jani Nikula wrote:
>> Display code stopped using i915_utils.h in favour of
>> intel_display_utils.h. Fix recent additions.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> index bebd7488aab9..a67eb4f7f897 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> @@ -6,7 +6,6 @@
>>  #include <drm/drm_print.h>
>>  
>>  #include "i915_reg.h"
>> -#include "i915_utils.h"
>>  #include "intel_cx0_phy.h"
>>  #include "intel_cx0_phy_regs.h"
>>  #include "intel_ddi.h"
>> @@ -14,6 +13,7 @@
>>  #include "intel_de.h"
>>  #include "intel_display.h"
>>  #include "intel_display_types.h"
>> +#include "intel_display_utils.h"
>>  #include "intel_dpll_mgr.h"
>>  #include "intel_hdmi.h"
>>  #include "intel_lt_phy.h"
>> -- 
>> 2.47.3
>> 

-- 
Jani Nikula, Intel
