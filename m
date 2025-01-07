Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B9A0488A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 18:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F345C10E761;
	Tue,  7 Jan 2025 17:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2Rm8m/h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12BAF10E761;
 Tue,  7 Jan 2025 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736271839; x=1767807839;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GrD0OXIxzVuHw3hplmT2mt8R2du5jIAzdzYZ7scIxSo=;
 b=I2Rm8m/hI92PRxYS8YJjJ8NvK4syxDSCzLdvJRdFLGleoFw8zTgrrn2u
 sJ15daTXq9qWcPBjg1gDXSs/BXP08vfnD9inRrXeysR2HM5xi+KAUOAMP
 nuc6yFDM7ZqTlpuHY4kj8MXamblr3iUCVt5xfTETdt/44c1zFXusPK9zA
 q8ud/TdKvygvOfR9xgEuUxR6Lzpndtum7br1nhXSXPJ9U2NbQ3bHhHLW5
 3JWNJr06g3+ulCupvlB3PK12KfaKCCz9b+z4upp+NONyT3SAxehN0xui6
 bkB6QWKRXPMfMek22vedlkmbFZ5QDKShM0Vk8mPgSqeeCu0aGRmRa9RnA A==;
X-CSE-ConnectionGUID: WfdJhQ+DSgKeSQUPiu1VFg==
X-CSE-MsgGUID: xv1iITJbSDCxxFqknvZYAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="40139056"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="40139056"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:43:59 -0800
X-CSE-ConnectionGUID: z0I6SNQmQAKesMl/VdKUqA==
X-CSE-MsgGUID: vWcaqWOYR1eWX8YcrtukhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="107884810"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:43:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/4] drm/i915/pmdemand: convert
 to_intel_pmdemand_state() to a function
In-Reply-To: <173567229762.6883.15275451322743246609@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1735662324.git.jani.nikula@intel.com>
 <10324781f9f7eae5a92506aaa7a40403efd345dd.1735662324.git.jani.nikula@intel.com>
 <173567229762.6883.15275451322743246609@intel.com>
Date: Tue, 07 Jan 2025 19:43:53 +0200
Message-ID: <87r05eldt2.fsf@intel.com>
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

On Tue, 31 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-12-31 13:27:37-03:00)
>>In preparation for making struct intel_pmdemand_state an opaque type,
>>convert to_intel_pmdemand_state() to a function.
>>
>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> This looks good to me, so
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
> , but I'm also taking this opportunity to reply to your comment below.

Thanks. I opted to merge this series as-is, with the idea that we can
make further improvements on top.

BR,
Jani.

>
>>
>>---
>>
>>This is the simplest change. There could be other alternatives.
>>
>>Outside of intel_pmdemand.c, this is only used to convert
>>display.pmdemand.obj.state to struct intel_pmdemand_state *. Maybe we
>>could just pass the global object or state pointer instead? Or we could
>>have a function to get the current state from, say, struct
>>intel_display? What we currently have is a bit cumbersome.
>
> I like the idea of the exposed interface receiving only pointers to the
> generic types and that we make the necessary conversion internally.
>
> We currently are only using to_intel_pmdemand_state() to be able to pass
> the correct argument to other functions exposed by the pmdemand header.
> Not sure there is much benefit in doing that except for some level of
> compile-time type-safety?
>
> So, I would generally say:
>
> - For functions that can operate directly on the display.*.obj member
>   (e.g. hardware state readout), we just ask for the display struct
>   pointer as a parameter.
>
> - For functions that potentially add the global state to the atomic
>   state, we also ask for the pointer to the atomic state.
>
> - For functions that operate only on the state bits and that could be
>   called for a state instance that could either be the current one (or
>   old) or some new state during a commit, we ask for a pointer to the
>   intel_global_state struct.
>
> --
> Gustavo Sousa
>
>>---
>> drivers/gpu/drm/i915/display/intel_pmdemand.c | 5 +++++
>> drivers/gpu/drm/i915/display/intel_pmdemand.h | 3 +--
>> 2 files changed, 6 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>index cdd314956a31..69b40b3735b3 100644
>>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>@@ -15,6 +15,11 @@
>> #include "intel_pmdemand.h"
>> #include "skl_watermark.h"
>> 
>>+struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state)
>>+{
>>+        return container_of(obj_state, struct intel_pmdemand_state, base);
>>+}
>>+
>> static struct intel_global_state *
>> intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>> {
>>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>>index a1c49efdc493..89296364ec3b 100644
>>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>>@@ -43,8 +43,7 @@ struct intel_pmdemand_state {
>>         struct pmdemand_params params;
>> };
>> 
>>-#define to_intel_pmdemand_state(global_state) \
>>-        container_of_const((global_state), struct intel_pmdemand_state, base)
>>+struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state);
>> 
>> void intel_pmdemand_init_early(struct drm_i915_private *i915);
>> int intel_pmdemand_init(struct drm_i915_private *i915);
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
