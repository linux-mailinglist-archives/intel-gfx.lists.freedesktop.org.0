Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603E6A5DB5D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 12:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DC110E76D;
	Wed, 12 Mar 2025 11:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dSJ05lJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BFFA10E2CA;
 Wed, 12 Mar 2025 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741778734; x=1773314734;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XEZTvBu228k/6sUHF0vY93bH0zt39YiS+I4KPJz17Qc=;
 b=dSJ05lJQ0h0/tTp/F3gegP+xgQlzBPLtMlYuuh6xl2sKkUVv7+SNzq8t
 UJT16+mSCy9tPAmQveFirR+O68lC1YAlThGOTTy4WqRHqefZIwhJJFuPa
 3atHpOlNhbVyy2gp4aeJy9C9u+h97bhKAEj9cCYX/xSYf/qj4u5T7sune
 HfjB/MxDrmc5oyj4dd4/BVYWz36H7ntEbnwj4SvY0AqtU9FCNepQaKspC
 fy/CCjCM5XBcpm7wNOwzVZrwEM9TYjevdT2eaiJ68tyCMc7Nne8HMKSTj
 uicxbBvl7+NUokPnVAru0ARXJouKQ26CP50ig/WmgnIUqFTmq1rIhoD1K Q==;
X-CSE-ConnectionGUID: 8sYegypIT8+GzzTWstOWSw==
X-CSE-MsgGUID: 7NrCZVBkS9aM1WsUtcrm5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42019006"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="42019006"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 04:25:33 -0700
X-CSE-ConnectionGUID: GM3m4HhYS9m+usS6jr3s6w==
X-CSE-MsgGUID: pNkTIeZUTRyvFZ0oslm27Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="143801241"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.23])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 04:25:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
In-Reply-To: <3e96d168-77c9-4726-a127-3f105b26f6ae@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
 <3e96d168-77c9-4726-a127-3f105b26f6ae@intel.com>
Date: Wed, 12 Mar 2025 13:25:28 +0200
Message-ID: <87jz8ufq3b.fsf@intel.com>
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

On Wed, 12 Mar 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 3/11/2025 11:38 PM, Jani Nikula wrote:
>> On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index 717286981687..332647c4ca81 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>>>   	func(supports_tv);
>>>   
>>>   #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>> +#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>>>   #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
>> Y comes before _ in asciibetical order.
>
> Thanks for pointing this out. I had a misconception that we use _ as 
> delimiter and sort the words in alphabetical order.

Emacs M-x sort-lines is the definition for me. ;)

BR,
Jani.


>
> Will correct this as per asciibetical order.
>
> Also will change :
>
> HAS_DP_MST
> HAS_DP20
> HAS_DPT
>
> to:
>
> HAS_DP20
> HAS_DPT
> HAS_DP_MST
>
> Regards,
>
> Ankit
>
>>
>> BR,
>> Jani.
>>
>>>   #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>>>   #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>>>   #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
>>> +#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>>   #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>>>   #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>>>   #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>>> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>>>   					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>>>   					 HAS_DSC(__display))
>>>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
>>> -#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>>> -#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>>>   #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
>>>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)

-- 
Jani Nikula, Intel
