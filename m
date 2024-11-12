Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A849C569D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B925910E5CE;
	Tue, 12 Nov 2024 11:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HxduICtL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB45910E1F8;
 Tue, 12 Nov 2024 11:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731411221; x=1762947221;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mHIT0zYw0AbMCdAtR55bMEioJZw9kx/2C2Xc039IqVg=;
 b=HxduICtL0xS8TqbatP1t389ErKmEZbAlJbFNhLdIPFf6lLm0oz1qLxui
 UvyZ2/+eZJJVLmEwv8GNi30S1G1m4WbW/JX12jKed62IjUfpgHJFzjR9g
 celcOxulHRew9/T2s4cnaCh2pHBSFPPsiLi8DCHLYa9BZhHGg3qLxHv+9
 uAHnD0y4Ad/kquH4oag4kgUe01uiZ03EqIOWB5zm/ZrF+hd1aYmjP3Nc/
 Xt3Z5IYZVBncfsHJ5gvDnduIMV9p32ynA5u5f+HnitRyUN01RgUbAzgPG
 3pOJ20iMC6AI1TtgpQQ3wDveZv89NiVxWt6SgJm6adTlkfW+hE9c/cl7h A==;
X-CSE-ConnectionGUID: EtWHX2n2RUWJrMmCGCLZGg==
X-CSE-MsgGUID: ieL6FtwHTeimKh4o4cXTcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="35172972"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="35172972"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:33:40 -0800
X-CSE-ConnectionGUID: RjJV2sRyTLidG/nJ62mSIw==
X-CSE-MsgGUID: 9AKM5AC4RVaaJSiyTQ679A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87785146"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:33:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
In-Reply-To: <877c98d6w3.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-4-ankit.k.nautiyal@intel.com>
 <877c98d6w3.fsf@intel.com>
Date: Tue, 12 Nov 2024 13:33:35 +0200
Message-ID: <874j4cd6uo.fsf@intel.com>
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

On Tue, 12 Nov 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 11 Nov 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> VRR timing generator can be used in multiple modes: dynamic vrr, fixed
>> refresh rate and content matched refresh rate (cmrr).
>> Currently we support dynamic vrr mode and cmrr mode, so add a new member
>> to track in which mode the VRR timing generator is used.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index d3a1aa7c919f..a1b67e76d91c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -913,6 +913,12 @@ void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
>>  
>>  typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
>>  
>> +enum intel_vrrtg_mode {
>> +	INTEL_VRRTG_MODE_NONE,
>
> I couldn't quickly conclude whether this is in fact redundant with
> tg_enable.
>
> Would it be possible to ditch this in favor of using mode != NONE?

Hrmh, I meant s/this/tg_enable/.

>
> BR,
> Jani.
>
>
>> +	INTEL_VRRTG_MODE_VRR,
>> +	INTEL_VRRTG_MODE_CMRR,
>> +};
>> +
>>  struct intel_crtc_state {
>>  	/*
>>  	 * uapi (drm) state. This is the software state shown to userspace.
>> @@ -1286,6 +1292,7 @@ struct intel_crtc_state {
>>  		u8 pipeline_full;
>>  		u16 flipline, vmin, vmax, guardband;
>>  		u32 vsync_end, vsync_start;
>> +		enum intel_vrrtg_mode mode;
>>  	} vrr;
>>  
>>  	/* Content Match Refresh Rate state */

-- 
Jani Nikula, Intel
