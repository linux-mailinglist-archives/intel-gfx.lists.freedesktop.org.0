Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3AF51D224
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 09:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3736F112063;
	Fri,  6 May 2022 07:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51FF111206C;
 Fri,  6 May 2022 07:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651821710; x=1683357710;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cYSj6PrjOphKcN3GXcEP4KtSYwRg+L3OmOTDpAiB6Do=;
 b=gdVAplU3toMy78Sm30sdDDI+8/ZFlBFvYi35WGEZ63ZBEQZygOSqKPfH
 Y0MrBaT03hoyIKomkA+9ncBPIBkWaElZF2eO07eZFbylpASeoRSmf1jWh
 A90T4dghDLm47uyXSo9HoQB4dUEljzX582UbBDZFVz7rp49nkbp92Zg61
 Z4V2GHOY+zUKT/7OZTjsl28Fiy0ROTFXgQrBiG8zLUgknUwX83gup1CGu
 OYWERQFryrcuQXQpOOme+cYryG1Zv3ab9OngAt/TUNAFgLAMX66Aj+P61
 69emZqdusKfIjrWZIVFxS1L30UEvhNypMaaj9SoIBZlFeRqz3aLpup2hn Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="293585664"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="293585664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 00:21:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="735452012"
Received: from tkinch-mobl.ger.corp.intel.com (HELO [10.213.192.122])
 ([10.213.192.122])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 00:21:48 -0700
Message-ID: <8eda8d5c-7f37-aea0-5144-e43eaa8f3d52@linux.intel.com>
Date: Fri, 6 May 2022 08:21:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
 <20220502163417.2635462-8-matthew.d.roper@intel.com>
 <472e2679-abc5-8881-6f93-f64ec1feb365@linux.intel.com>
 <YnQ6s5SqV9Dm4wPR@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YnQ6s5SqV9Dm4wPR@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/pvc: Engines definitions for
 new copy engines
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/05/2022 21:59, Matt Roper wrote:
> On Tue, May 03, 2022 at 09:05:43AM +0100, Tvrtko Ursulin wrote:
>>
>> On 02/05/2022 17:34, Matt Roper wrote:
>>> This patch adds the basic definitions needed to support
>>> new copy engines. Also updating the cmd_info to accommodate
>>> new engines, as the engine id's of legacy engines have been
>>> changed.
>>>
>>> Original-author: CQ Tang
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 56 ++++++++++++++++++++
>>>    drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++-
>>>    drivers/gpu/drm/i915/gt/intel_gt_regs.h      |  8 +++
>>>    drivers/gpu/drm/i915/gvt/cmd_parser.c        |  2 +-
>>>    drivers/gpu/drm/i915/i915_reg.h              |  8 +++
>>>    5 files changed, 82 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> index 14c6ddbbfde8..4532c3ea9ace 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> @@ -71,6 +71,62 @@ static const struct engine_info intel_engines[] = {
>>>    			{ .graphics_ver = 6, .base = BLT_RING_BASE }
>>>    		},
>>>    	},
>>> +	[BCS1] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 1,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS1_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS2] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 2,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS2_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS3] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 3,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS3_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS4] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 4,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS4_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS5] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 5,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS5_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS6] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 6,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS6_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS7] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 7,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS7_RING_BASE }
>>> +		},
>>> +	},
>>> +	[BCS8] = {
>>> +		.class = COPY_ENGINE_CLASS,
>>> +		.instance = 8,
>>> +		.mmio_bases = {
>>> +			{ .graphics_ver = 12, .base = XEHPC_BCS8_RING_BASE }
>>> +		},
>>> +	},
>>>    	[VCS0] = {
>>>    		.class = VIDEO_DECODE_CLASS,
>>>    		.instance = 0,
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> index 298f2cc7a879..356c15cdccf0 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> @@ -35,7 +35,7 @@
>>>    #define OTHER_CLASS		4
>>>    #define COMPUTE_CLASS		5
>>>    #define MAX_ENGINE_CLASS	5
>>> -#define MAX_ENGINE_INSTANCE	7
>>> +#define MAX_ENGINE_INSTANCE	8
>>>    #define I915_MAX_SLICES	3
>>>    #define I915_MAX_SUBSLICES 8
>>> @@ -107,6 +107,14 @@ struct i915_ctx_workarounds {
>>>    enum intel_engine_id {
>>>    	RCS0 = 0,
>>>    	BCS0,
>>> +	BCS1,
>>> +	BCS2,
>>> +	BCS3,
>>> +	BCS4,
>>> +	BCS5,
>>> +	BCS6,
>>> +	BCS7,
>>> +	BCS8,
>>
>> _BCS(n) macro will not be required?
>>
>>>    	VCS0,
>>>    	VCS1,
>>>    	VCS2,
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> index a0a49c16babd..aa2c0974b02c 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> @@ -1476,6 +1476,14 @@
>>>    #define   GEN11_KCR				(19)
>>>    #define   GEN11_GTPM				(16)
>>>    #define   GEN11_BCS				(15)
>>> +#define   XEHPC_BCS1				(14)
>>> +#define   XEHPC_BCS2				(13)
>>> +#define   XEHPC_BCS3				(12)
>>> +#define   XEHPC_BCS4				(11)
>>> +#define   XEHPC_BCS5				(10)
>>> +#define   XEHPC_BCS6				(9)
>>> +#define   XEHPC_BCS7				(8)
>>> +#define   XEHPC_BCS8				(23)
>>>    #define   GEN12_CCS3				(7)
>>>    #define   GEN12_CCS2				(6)
>>>    #define   GEN12_CCS1				(5)
>>> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>>> index b9eb75a2b400..0ba2a3455d99 100644
>>> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
>>> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>>> @@ -428,7 +428,7 @@ struct cmd_info {
>>>    #define R_VECS	BIT(VECS0)
>>>    #define R_ALL (R_RCS | R_VCS | R_BCS | R_VECS)
>>>    	/* rings that support this cmd: BLT/RCS/VCS/VECS */
>>> -	u16 rings;
>>> +	intel_engine_mask_t rings;
>>
>> Looks like mask already overflows u16 even without the blitter engines.
>> (When CCS were added.) Meaning maybe there should be a separate patch to fix
>> it.
> 
> Adding the CCS engines didn't cause a problem because GVT only includes
> the gen11 set of engines in R_ALL.  Since the CCS engines (and even the
> higher instances of VCS/VECS introduced by Xe_HP) are never used
> anywhere in GVT, there's no overflow possible...the highest bit they
> ever use anywhere is VECS0; before this patch, that was bit(10) and fit
> within a u16 comfortably.  But since the new BCS engines added by this
> patch get inserted at lower values within the engine_id enum, the
> location of VECS0 moves up to bit(18), which falls outside the u16
> definition and triggers a build failure:
> 
> drivers/gpu/drm/i915/gvt/cmd_parser.c:429:15: error: conversion from ‘long unsigned int’ to ‘short unsigned int’ changes value from ‘265219’ to ‘3075’ [-Werror=overflow]
>    429 | #define R_ALL (R_RCS | R_VCS | R_BCS | R_VECS)

Well I did not know why GVT does not support CCS, or when it will start 
supporting it. If that support would happen in a kernel with CCS 
support, but not this PVC patch then it would need the above hunk. So 
fundamentally it sounded the hunk belongs to a separate patch. But 
unless Zhi can comment I guess you are okay to proceed with what you have.

Regards,

Tvrtko

>>
>> But good question though is GVT supporting CCS and should it be part of
>> R_ALL? Or should this patch even be touching GVT since CCS enablement did
>> not? Adding Zhi to comment.
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    	/* devices that support this cmd: SNB/IVB/HSW/... */
>>>    	u16 devices;
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index 4a3d7b96ef43..ab64ab4317b3 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -976,6 +976,14 @@
>>>    #define GEN12_COMPUTE2_RING_BASE	0x1e000
>>>    #define GEN12_COMPUTE3_RING_BASE	0x26000
>>>    #define BLT_RING_BASE		0x22000
>>> +#define XEHPC_BCS1_RING_BASE	0x3e0000
>>> +#define XEHPC_BCS2_RING_BASE	0x3e2000
>>> +#define XEHPC_BCS3_RING_BASE	0x3e4000
>>> +#define XEHPC_BCS4_RING_BASE	0x3e6000
>>> +#define XEHPC_BCS5_RING_BASE	0x3e8000
>>> +#define XEHPC_BCS6_RING_BASE	0x3ea000
>>> +#define XEHPC_BCS7_RING_BASE	0x3ec000
>>> +#define XEHPC_BCS8_RING_BASE	0x3ee000
>>>    #define DG1_GSC_HECI1_BASE	0x00258000
>>>    #define DG1_GSC_HECI2_BASE	0x00259000
>>>    #define DG2_GSC_HECI1_BASE	0x00373000
> 
