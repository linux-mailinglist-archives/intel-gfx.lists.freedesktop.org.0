Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAC6B1C707
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3824110E78D;
	Wed,  6 Aug 2025 13:52:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJmcmecQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3A710E782;
 Wed,  6 Aug 2025 13:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754488336; x=1786024336;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OB9iWDl4fOcd9OodKeWQ1+Kk9mNMjdIwBHzKiyaUIz0=;
 b=KJmcmecQ768RChrJ7GPfgMSuhOKvgDvly+byEDqzMLOwSLw4dB5uec4g
 9qDLdftWc8gujUHs1BikwovZmKoAOad7sD9L1QGPxRdZFCRIsT27EtdzE
 Anv+VtqcdAnRU3TsXOdNfoL+WvKclQHl2DmayoW2PQJoGLJgZlZ0jHSsg
 Nc/VgMWyQXv2oub9aQkiE1CRhVhJBkxnc6zezg7LcyWjEuUoKSupwqCMt
 HxlqA7oNvuqbgHiPNvTBQdA95owLODvS5AHanABHV1QHKYU2q1N2YAr5/
 ezmhLAflL+2PkcQz8QX8gWuGIWOgFiwX/T0ykbHbRLa5hkfR56vAovaE2 A==;
X-CSE-ConnectionGUID: tVzsz/xFRA2B9X6yiTnpPQ==
X-CSE-MsgGUID: AajdgEafT92Q82xZfAILEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60617561"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60617561"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:52:11 -0700
X-CSE-ConnectionGUID: ckCAOGyNT4+03Qbi93LQiQ==
X-CSE-MsgGUID: abo7OFHFQKaKbMUSO4ai8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164694958"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:52:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/dram: bypass fsb/mem freq detection on dg2
 and no display
In-Reply-To: <aJKEoYy1qiyaHa16@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1753971617.git.jani.nikula@intel.com>
 <aa7b14eff92750fa1ddf878ac0f4e90c87b8d3d2.1753971617.git.jani.nikula@intel.com>
 <aJKEoYy1qiyaHa16@intel.com>
Date: Wed, 06 Aug 2025 16:52:06 +0300
Message-ID: <d18558149f62c87be70d183b6f41d11e0092cf4a@intel.com>
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

On Tue, 05 Aug 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jul 31, 2025 at 05:21:24PM +0300, Jani Nikula wrote:
>> Non-display now calls the intel_fsb_freq() and intel_mem_freq()
>> functions, so we don't have to have the frequencies initialized for dg2
>> or non-display cases.

Is this enough amendmend for the commit message:

"""
This is in preparation for unifying the pre-gen9 handling in dram info.

DG2 remains a special case as described in commit 5eb6bf0b44e7
("drm/i915/dg2: Don't read DRAM info").
"""

Or do you want more?

BR,
Jani.

>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/soc/intel_dram.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>> index 193e7f71a356..d896fb67270f 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -725,10 +725,13 @@ int intel_dram_detect(struct drm_i915_private *i915)
>>  	struct dram_info *dram_info;
>>  	int ret;
>>  
>> +	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
>> +		return 0;
>> +
>>  	detect_fsb_freq(i915);
>>  	detect_mem_freq(i915);
>
> but they will only be set to zero no? do we really need to avoid it?
> if so, perhaps make this change earlier?
>
> Also I wonder what's special in DG2, but not in BMG...
>
>>  
>> -	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
>> +	if (GRAPHICS_VER(i915) < 9)
>
> what about the old gen remaining here? at least deserves a comment on why
> it needs the upper calls, but not the call bellow? or should the upper
> calls be in another function/flow?
>
>>  		return 0;
>>  
>>  	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
