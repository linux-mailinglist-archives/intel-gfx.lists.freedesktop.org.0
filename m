Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B08B19D9F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 10:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8E010E419;
	Mon,  4 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TGFNkH8O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C9B10E415;
 Mon,  4 Aug 2025 08:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754296192; x=1785832192;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+1/VL2A2GY1234vs1ONT0qYfeGeNsJ1fwDNZ5qU3drs=;
 b=TGFNkH8OF69S+QO/Bf/RIldWVgMHNuKV9t66Bl066b2yNelXYxC9FXtl
 o6wGsOcOtdh4aGmooQ6st41YY1GdDBv+0O5b0Ek07xOrEpV8advXc6UPX
 TZNhqhSXHeDar03LYpqu1Bo2zGAxfAydIZ3FPPks5u59JP/pxV5vVr/pw
 6oXIqwk7X+SW+V8SnSGGfUTNhb5cXtlpjAsoyRxQiPMEcQ3vBqwx1Pdj/
 n4yMdY13Rn3hnZGmIowHO2jWYsyE/uKYDFttKHHhxEbunBlWcDZ5f+lJ7
 0vODVGU5kyajcaYWkrHXqAQH+qXN6tU5oe9FVQaA5Qk1xVG3vPQRVMHxF Q==;
X-CSE-ConnectionGUID: V11ZCom7SYiAIVknQXyikg==
X-CSE-MsgGUID: TQ01+yz3RiGPNmFsYD6gNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="59168194"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="59168194"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:29:51 -0700
X-CSE-ConnectionGUID: h/OJHVe8RRa+r2gWd1KXFg==
X-CSE-MsgGUID: LtOB41n/TzS2zEKFppq8bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164098010"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.215])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:29:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/xe/compat: remove unused platform macros
In-Reply-To: <aIzbkP65RdbiFI4O@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1753965351.git.jani.nikula@intel.com>
 <4507b49ead12c997de4615fa6ec277e666e5226a.1753965351.git.jani.nikula@intel.com>
 <aIzbkP65RdbiFI4O@intel.com>
Date: Mon, 04 Aug 2025 11:29:47 +0300
Message-ID: <65c8529b5d5c11979f77c8e5e0edb75c22eb4a8f@intel.com>
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

On Fri, 01 Aug 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jul 31, 2025 at 03:36:15PM +0300, Jani Nikula wrote:
>> After refactors, a lot of platform macros have become unused. Remove
>> them before new users have a chance to pop up.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> I trust your compiler! :)
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din, as this is more relevant there.

BR,
Jani.

>
>> ---
>>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 21 -------------------
>>  1 file changed, 21 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> index 9b7572e06f34..d8cd66a96621 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> @@ -26,34 +26,13 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>>  #define IS_I915G(dev_priv)	(dev_priv && 0)
>>  #define IS_I915GM(dev_priv)	(dev_priv && 0)
>>  #define IS_PINEVIEW(dev_priv)	(dev_priv && 0)
>> -#define IS_IVYBRIDGE(dev_priv)	(dev_priv && 0)
>>  #define IS_VALLEYVIEW(dev_priv)	(dev_priv && 0)
>>  #define IS_CHERRYVIEW(dev_priv)	(dev_priv && 0)
>>  #define IS_HASWELL(dev_priv)	(dev_priv && 0)
>>  #define IS_BROADWELL(dev_priv)	(dev_priv && 0)
>> -#define IS_SKYLAKE(dev_priv)	(dev_priv && 0)
>>  #define IS_BROXTON(dev_priv)	(dev_priv && 0)
>> -#define IS_KABYLAKE(dev_priv)	(dev_priv && 0)
>>  #define IS_GEMINILAKE(dev_priv)	(dev_priv && 0)
>> -#define IS_COFFEELAKE(dev_priv)	(dev_priv && 0)
>> -#define IS_COMETLAKE(dev_priv)	(dev_priv && 0)
>> -#define IS_ICELAKE(dev_priv)	(dev_priv && 0)
>> -#define IS_JASPERLAKE(dev_priv)	(dev_priv && 0)
>> -#define IS_ELKHARTLAKE(dev_priv)	(dev_priv && 0)
>> -#define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_TIGERLAKE)
>> -#define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_ROCKETLAKE)
>> -#define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, XE_DG1)
>> -#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
>> -#define IS_ALDERLAKE_P(dev_priv) (IS_PLATFORM(dev_priv, XE_ALDERLAKE_P) || \
>> -				  IS_PLATFORM(dev_priv, XE_ALDERLAKE_N))
>>  #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
>> -#define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
>> -#define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
>> -#define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
>> -#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
>> -
>> -#define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
>> -#define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
>>  
>>  #define IS_MOBILE(xe) (xe && 0)
>>  
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
