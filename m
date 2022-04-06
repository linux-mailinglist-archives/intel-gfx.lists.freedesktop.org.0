Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2534F67CE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 19:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF7210E1E2;
	Wed,  6 Apr 2022 17:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7741710E152
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 17:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649267188; x=1680803188;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LnZyu+L3h5xQD/4m/f5AJ+xeWknYeKSu5G8zVUeLLSQ=;
 b=mb8EZYbKfp31obFos5b3CGF9jMCZR1prxQV3iNYIJHWTshOYQ2rRirFQ
 atfAesSazVD4LBctbG7XQExrmbEmWBmo4n75Nw3pRk09z1UeU8jhdxOe0
 3JQqlIPyokSI65S1VGODcFoFnQdcFKz9MUOOm+4vP46fn+1RsyEwa1LTh
 /AFI6L2Nb8U6slnZD8E+/XJXPhXBP1agFsd/c7bef/xDYnVOEgmYcU1uj
 W/H6di8QrA9Z2K3oaffXpdurqDNkO7chu5hjD3labBNm5KBBr+7Y3+i3B
 iJgbntSQJeflAb+EF7SGQZcILrkeCfg9WgWBanpZMqY5bKbRNsGvk1oLx Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="248640544"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="248640544"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:46:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="570673997"
Received: from aclausch-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.8.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:46:27 -0700
Date: Wed, 6 Apr 2022 10:46:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20220406174627.ilsnfzjcojfxribe@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
 <20220405180242.naisj5g2edrhrfsi@ldmartin-desk2>
 <be86669330e24a448de8265fcc6eff81@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <be86669330e24a448de8265fcc6eff81@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 06, 2022 at 10:16:55AM -0700, Anusha Srivatsa wrote:
>
>
>> -----Original Message-----
>> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Sent: Tuesday, April 5, 2022 11:03 AM
>> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
>>
>> On Tue, Apr 05, 2022 at 10:14:29AM -0700, Anusha Srivatsa wrote:
>> >Bspec has added some steps that check for DMC MMIO range before
>> >programming them.
>> >
>> >v2: Fix for CI failure for v1
>> >
>> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> >---
>> > drivers/gpu/drm/i915/display/intel_dmc.c | 42
>> ++++++++++++++++++++++++
>> > 1 file changed, 42 insertions(+)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >index 257cf662f9f4..05d8e90854ec 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >@@ -103,6 +103,18 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
>> > #define DMC_V1_MAX_MMIO_COUNT		8
>> > #define DMC_V3_MAX_MMIO_COUNT		20
>> > #define DMC_V1_MMIO_START_RANGE		0x80000
>> >+#define TGL_MAIN_MMIO_START		0x8F000
>> >+#define TGL_MAIN_MMIO_END		0x8FFFF
>> >+#define TGL_PIPEA_MMIO_START		0x92000
>> >+#define TGL_PIPEA_MMIO_END		0x93FFF
>> >+#define TGL_PIPEB_MMIO_START		0x96000
>> >+#define TGL_PIPEB_MMIO_END		0x97FFF
>> >+#define TGL_PIPEC_MMIO_START		0x9A000
>> >+#define TGL_PIPEC_MMIO_END		0x9BFFF
>> >+#define TGL_PIPED_MMIO_START		0x9E000
>> >+#define TGL_PIPED_MMIO_END		0x9FFFF
>> >+#define ADLP_PIPE_MMIO_START		0x5F000
>> >+#define ADLP_PIPE_MMIO_END		0x5FFFF
>> >
>> > struct intel_css_header {
>> > 	/* 0x09 for DMC */
>> >@@ -374,6 +386,30 @@ static void dmc_set_fw_offset(struct intel_dmc
>> *dmc,
>> > 	}
>> > }
>> >
>> >+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const
>> >+u32 *mmioaddr,
>> >+u32 mmio_count)
>> >+{
>> >+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915),
>> dmc);
>> >+	int i;
>> >+
>> >+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
>> >+		for (i = 0; i < mmio_count; i++) {
>> >+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START &&
>> mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
>> >+			      (mmioaddr[i] >= ADLP_PIPE_MMIO_START &&
>> mmioaddr[i] <= ADLP_PIPE_MMIO_END)))
>> >+				return false;
>> >+		}
>> >+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) ||
>> IS_ALDERLAKE_S(i915))
>> >+		for (i = 0; i < mmio_count; i++) {
>> >+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START &&
>> mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
>> >+			      (mmioaddr[i] >= TGL_PIPEA_MMIO_START &&
>> mmioaddr[i] <= TGL_PIPEA_MMIO_END) ||
>> >+			      (mmioaddr[i] >= TGL_PIPEB_MMIO_START &&
>> mmioaddr[i] <= TGL_PIPEB_MMIO_END) ||
>> >+			      (mmioaddr[i] >= TGL_PIPEC_MMIO_START &&
>> mmioaddr[i] <= TGL_PIPEC_MMIO_END) ||
>> >+			      (mmioaddr[i] >= TGL_PIPED_MMIO_START &&
>> mmioaddr[i] <= TGL_PIPEC_MMIO_END)))
>> >+				return false;
>>
>> wonder if we should check for each pipe DMC range independently rather
>> than just checking all the ranges.
> Can convert this to a switch case in that scenario. "If it is PIPE A then it must be within this range". But it will be 2 switches one for DG2 and ADLP and one for TGL and the rest which have individual ranges for every pipe.

I was thinking more about like this:

#define _TGL_PIPEA_MMIO	0x92000
#define _TGL_PIPEB_MMIO	0x96000
#define TGL_PIPE_MMIO(pipe)	_MMIO_PIPE(pipe, _TGL_PIPEA_MMIO, _TGL_PIPEB_MMIO)
#define TGL_PIPE_MMIO_SIZE	0x1000

This of course means that each blob is supposed to update only addresses
on their own ranges. Is this true? Do we care?

>
>> >+	}
>> >+	return true;
>> >+}
>> >+
>> > static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>> > 			       const struct intel_dmc_header_base
>> *dmc_header,
>> > 			       size_t rem_size, u8 dmc_id)
>> >@@ -443,6 +479,12 @@ static u32 parse_dmc_fw_header(struct intel_dmc
>> *dmc,
>> > 		return 0;
>> > 	}
>> >
>> >+	if (dmc_header->header_ver == 3) {
>>
>> this also needs to be done for ver 2
>For v2 though there has been no update about the start range. As in this mmio range is different from the RAM_MMIO_START range.

it is the same situation as v3. We read it from firmware. Why do you
simply trust the value in v2 but you don't trust it in v3? You removed
the check in 3d5928a168a9 ("drm/i915/xelpd: Pipe A DMC plugging")

         for (i = 0; i < mmio_count; i++) {
-               if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
-                   mmioaddr[i] > DMC_MMIO_END_RANGE) {
-                       drm_err(&i915->drm, "DMC firmware has wrong mmio address 0x%x\n",
-                               mmioaddr[i]);
-                       return 0;
-               }
                 dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
                 dmc_info->mmiodata[i] = mmiodata[i];
         }

I remember mentioning this during review, but let it pass.

Lucas De Marchi

>
>Anusha
>
>> Lucas De Marchi
