Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758424F95EE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 14:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D7C10F123;
	Fri,  8 Apr 2022 12:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3B210F117
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 12:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649421590; x=1680957590;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=xfX+QyCYAQFhdqkYOZ2Av831MirdismHmaoqsJPuXhU=;
 b=AH59L2kFapmYDf2VtMU6JBBnxR8X6IZjiagFfJ5tSm+RqHnd9wp/6wAb
 9kHadVwd/+MUrCAy2A0Z1giWOGU1FDNpzVtStR5fs+9wuQXC7q5O5CF3N
 EUjeWp9JgL7ax+q+V690AtqPngdAc723KLV8FvwuruuAmddVUWlDAcM5o
 Qasq5H9cyx91vR5va52BuSSO7vnsAS9Fp91TUsSk99JXrx8rhPJ9F6i4S
 xVGWL7K2vts8E36GIItF7qelmUyGj4VPcLzo63GL3HqjAFqT3X3EGKty9
 XkjzELYcUYThzUfNyeKba1NaGZxRp9CKuU9gTqEXVkrmER13QDdRV0H2i g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261274285"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="261274285"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:39:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="571477173"
Received: from ddobson-mobl.ger.corp.intel.com (HELO [10.213.224.220])
 ([10.213.224.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:39:48 -0700
Message-ID: <2f0090b9-fc64-ece9-70e7-e9ef6311a683@linux.intel.com>
Date: Fri, 8 Apr 2022 13:39:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220317185655.1786958-1-alan.previn.teres.alexis@intel.com>
 <20220317185655.1786958-2-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220317185655.1786958-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v11 01/13] drm/i915/guc: Update GuC ADS size
 for error capture lists
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


On 17/03/2022 18:56, Alan Previn wrote:
> Update GuC ADS size allocation to include space for
> the lists of error state capture register descriptors.
> 
> Then, populate GuC ADS with the lists of registers we want
> GuC to report back to host on engine reset events. This list
> should include global, engine-class and engine-instance
> registers for every engine-class type on the current hardware.
> 
> Ensure we allocate a persistent store for the register lists
> that are populated into ADS so that we don't need to allocate
> memory during GT resets when GuC is reloaded and ADS population
> happens again.
> 
> NOTE: Start with a sample static table of register lists to
> layout the framework before adding real registers in subsequent
> patch. This static register tables are a different format from
> the ADS populated list.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  91 +++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  13 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   9 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 127 +++++-
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 374 ++++++++++++++++++
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   8 +
>   8 files changed, 628 insertions(+), 17 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>   create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>   create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> 

[snip]

> +
> +static int
> +guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> +		      struct guc_mmio_reg *ptr, u16 num_entries)
> +{
> +	u32 i = 0;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> +	const struct __guc_mmio_reg_descr_group *reglists = guc->capture->reglists;
> +	const struct __guc_mmio_reg_descr_group *match;
> +
> +	if (!reglists)
> +		return -ENODEV;
> +
> +	match = guc_capture_get_one_list(reglists, owner, type, classid);
> +	if (match) {
> +		for (i = 0; i < num_entries && i < match->num_regs; ++i) {
> +			ptr[i].offset = match->list[i].reg.reg;
> +			ptr[i].value = 0xDEADF00D;
> +			ptr[i].flags = match->list[i].flags;
> +			ptr[i].mask = match->list[i].mask;
> +		}
> +		return 0;
> +	}
> +
> +	guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
> +					classid);

I got a lot of these when booting on DG1 today (drm-tip):

[    4.396554] i915 0000:03:00.0: [drm:intel_wopcm_init [i915]] Calculated GuC WOPCM [592K, 1420K)
[    4.396681] i915 0000:03:00.0: [drm:i915_init_ggtt [i915]] clearing unused GTT space: [0, fee00000]
[    4.412408] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
[    4.505766] MCR Steering: Default steering: sliceid=0x0, subsliceid=0x0
[    4.505771] [drm:wa_init_finish [i915]] Initialized 6 GT workarounds on global
[    4.506300] [drm:wa_init_finish [i915]] Initialized 6 engine workarounds on rcs'0
[    4.506413] [drm:wa_init_finish [i915]] Initialized 3 whitelist workarounds on rcs'0
[    4.506490] [drm:wa_init_finish [i915]] Initialized 6 context workarounds on rcs'0
[    4.506712] [drm:wa_init_finish [i915]] Initialized 1 engine workarounds on bcs'0
[    4.506787] [drm:wa_init_finish [i915]] Initialized 1 whitelist workarounds on bcs'0
[    4.506845] [drm:wa_init_finish [i915]] Initialized 1 context workarounds on bcs'0
[    4.506972] [drm:wa_init_finish [i915]] Initialized 1 engine workarounds on vcs'0
[    4.507026] [drm:wa_init_finish [i915]] Initialized 1 whitelist workarounds on vcs'0
[    4.507160] [drm:wa_init_finish [i915]] Initialized 1 engine workarounds on vcs'2
[    4.507217] [drm:wa_init_finish [i915]] Initialized 1 whitelist workarounds on vcs'2
[    4.507330] [drm:wa_init_finish [i915]] Initialized 1 engine workarounds on vecs'0
[    4.507385] [drm:wa_init_finish [i915]] Initialized 1 whitelist workarounds on vecs'0
[    4.508752] [drm:intel_guc_log_create [i915]] guc_log_level=5 (enabled, verbose:yes, verbosity:3)
[    4.508999] i915 0000:03:00.0: [drm:intel_guc_ads_create [i915]] Used 4 KB for temporary ADS regset
[    4.509082] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for PF Class-Registers on Video-Engine
[    4.509152] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for PF Class-Registers on Blitter-Engine
[    4.509219] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Render-Engine
[    4.509283] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Render-Engine
[    4.509347] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Video-Engine
[    4.509408] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Video-Engine
[    4.509472] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on VideoEnhance-Engine
[    4.509531] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on VideoEnhance-Engine
[    4.509600] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Blitter-Engine
[    4.509665] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Blitter-Engine
[    4.509730] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Global-Registers.
[    4.514938] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for PF Class-Registers on Video-Engine
[    4.515079] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for PF Class-Registers on Blitter-Engine
[    4.515279] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Render-Engine
[    4.515374] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Render-Engine
[    4.515471] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Video-Engine
[    4.515559] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Video-Engine
[    4.515657] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on VideoEnhance-Engine
[    4.515742] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on VideoEnhance-Engine
[    4.515815] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Blitter-Engine
[    4.515883] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Blitter-Engine
[    4.516049] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Global-Registers.
[    4.519482] [drm:intel_guc_init [i915]] param[ 0] = 0x16304f
[    4.519617] [drm:intel_guc_init [i915]] param[ 1] = 0x40000
[    4.519707] [drm:intel_guc_init [i915]] param[ 2] = 0x4
[    4.519841] [drm:intel_guc_init [i915]] param[ 3] = 0x3
[    4.519969] [drm:intel_guc_init [i915]] param[ 4] = 0xac8
[    4.520093] [drm:intel_guc_init [i915]] param[ 5] = 0x49050001
[    4.520221] [drm:intel_guc_init [i915]] param[ 6] = 0x0
[    4.520350] [drm:intel_guc_init [i915]] param[ 7] = 0x0
[    4.520468] [drm:intel_guc_init [i915]] param[ 8] = 0x0
[    4.520581] [drm:intel_guc_init [i915]] param[ 9] = 0x0
[    4.520665] [drm:intel_guc_init [i915]] param[10] = 0x0
[    4.520733] [drm:intel_guc_init [i915]] param[11] = 0x0
[    4.520816] [drm:intel_guc_init [i915]] param[12] = 0x0
[    4.520883] [drm:intel_guc_init [i915]] param[13] = 0x0
[    4.521296] i915 0000:03:00.0: [drm] GuC firmware i915/dg1_guc_69.0.3.bin version 69.0
[    4.521298] i915 0000:03:00.0: [drm] HuC firmware i915/dg1_huc_7.9.3.bin version 7.9
[    4.521818] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for PF Class-Registers on Video-Engine
[    4.521921] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for PF Class-Registers on Blitter-Engine
[    4.522086] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Render-Engine
[    4.522151] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Render-Engine
[    4.522221] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Video-Engine
[    4.522289] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Video-Engine
[    4.522359] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on VideoEnhance-Engine
[    4.522419] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on VideoEnhance-Engine
[    4.522486] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Class-Registers on Blitter-Engine
[    4.522544] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Instance-Registers on Blitter-Engine
[    4.522692] i915 0000:03:00.0: [drm:guc_capture_warn_with_list_info [i915]] GuC-capture: Missing register list size for VF Global-Registers.
[    4.527029] i915 0000:03:00.0: [drm:guc_enable_communication [i915]] GuC communication enabled
[    4.527887] i915 0000:03:00.0: [drm] HuC authenticated
[    4.528364] i915 0000:03:00.0: [drm] GuC submission enabled
[    4.528366] i915 0000:03:00.0: [drm] GuC SLPC enabled
[    4.529157] i915 0000:03:00.0: [drm] GuC RC: enabled

What is it about?

Regards,

Tvrtko
