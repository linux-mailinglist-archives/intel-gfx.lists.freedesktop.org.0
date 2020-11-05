Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570F92A744F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 02:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F6F89E03;
	Thu,  5 Nov 2020 01:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45C889E03
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 01:04:27 +0000 (UTC)
IronPort-SDR: e4oa6CDysiNdY+2r5e6l1LpkSIY64UR4pD/RmQTGvfyu/hTi3ZRjBUjbOz5LtRFF8Emu5JK4mI
 EZbElRE/K5Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="254017649"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="254017649"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 17:04:26 -0800
IronPort-SDR: OJdGuf7VbsdlDmminDbaI/pTlh6u5eTqIFeRQZbJxXqlwDxTDCUTxy0yenTBA6FUYTG/Tn6YH+
 EgbQXAtbjw4w==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="529155143"
Received: from ldmartin-desk1.jf.intel.com ([10.24.14.56])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 17:04:23 -0800
Date: Wed, 4 Nov 2020 17:04:22 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20201105010422.l2mum5gep7dxva5f@ldmartin-desk1.jf.intel.com>
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <20201027044618.719064-3-lucas.demarchi@intel.com>
 <160448371454.8986.12904696092648361290@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160448371454.8986.12904696092648361290@jlahtine-mobl.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only
 registers from MCHBAR
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 11:55:15AM +0200, Joonas Lahtinen wrote:
>Quoting Lucas De Marchi (2020-10-27 06:46:18)
>> GT_PERF_STATUS and RP_STATE_LIMITS were added a long time ago in
>> commit 3b8d8d91d51c ("drm/i915: dynamic render p-state support for Sandy
>> Bridge").  Other than printing their values in debugfs we don't do
>> anything with them.  There's not much useful information in them. These
>> registers may change location in future platforms, but instead of adding
>> new locations, it's simpler to just remove them.
>
>This code seems to have been updated for Gen9LP, so that would indicate
>the debugging information is useful, right? The value is even decoded, not
>simply dumped as most registers. So I would be hesitant to drop it for
>not being useful.

but just updating the register in itself for a new gen doesn't mean it's
actually useful... the commit message where this happened is pretty
vague: 350405623ff3 ("drm/i915: Update rps frequencies for BXT")

My first reaction would be to do the same if the register had moved or
if it ceased to exist in a new platform. Talking with Matt Roper some
time ago we arrived to the conclusion that just printing these values is
not giving us much benefit and it could very well be accomplished by
intel_reg.

So answering the question:  is it really useful as is? IMO, no.

>
>The second question is why we have a huge block of 1-to-1 duplicated
>code in there. Has there been an incorrect merge or some transition has
>been left mid-way?

not a bad merge, no. It seems to be to preserve the previous file
location since now it moved to be inside a gt dir. Long term I think
this is bad both because of the code duplication and because it's easy
to update one and forget the other.

Lucas De Marchi

>
>Regards, Joonas
>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c | 17 ++---------------
>>  drivers/gpu/drm/i915/i915_debugfs.c     | 17 ++---------------
>>  drivers/gpu/drm/i915/i915_reg.h         |  3 ---
>>  3 files changed, 4 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> index 174a24553322..8a68088c12ea 100644
>> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> @@ -296,8 +296,6 @@ static int frequency_show(struct seq_file *m, void *unused)
>>                 seq_printf(m, "efficient (RPe) frequency: %d MHz\n",
>>                            intel_gpu_freq(rps, rps->efficient_freq));
>>         } else if (INTEL_GEN(i915) >= 6) {
>> -               u32 rp_state_limits;
>> -               u32 gt_perf_status;
>>                 u32 rp_state_cap;
>>                 u32 rpmodectl, rpinclimit, rpdeclimit;
>>                 u32 rpstat, cagf, reqf;
>> @@ -307,14 +305,10 @@ static int frequency_show(struct seq_file *m, void *unused)
>>                 u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
>>                 int max_freq;
>>
>> -               rp_state_limits = intel_uncore_read(uncore, GEN6_RP_STATE_LIMITS);
>> -               if (IS_GEN9_LP(i915)) {
>> +               if (IS_GEN9_LP(i915))
>>                         rp_state_cap = intel_uncore_read(uncore, BXT_RP_STATE_CAP);
>> -                       gt_perf_status = intel_uncore_read(uncore, BXT_GT_PERF_STATUS);
>> -               } else {
>> +               else
>>                         rp_state_cap = intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
>> -                       gt_perf_status = intel_uncore_read(uncore, GEN6_GT_PERF_STATUS);
>> -               }
>>
>>                 /* RPSTAT1 is in the GT power well */
>>                 intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>> @@ -390,13 +384,6 @@ static int frequency_show(struct seq_file *m, void *unused)
>>                                    pm_isr, pm_iir);
>>                 seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
>>                            rps->pm_intrmsk_mbz);
>> -               seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
>> -               seq_printf(m, "Render p-state ratio: %d\n",
>> -                          (gt_perf_status & (INTEL_GEN(i915) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
>> -               seq_printf(m, "Render p-state VID: %d\n",
>> -                          gt_perf_status & 0xff);
>> -               seq_printf(m, "Render p-state limit: %d\n",
>> -                          rp_state_limits & 0xff);
>>                 seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
>>                 seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
>>                 seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>> index ea469168cd44..c01f27eebf9c 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -838,8 +838,6 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
>>                            "efficient (RPe) frequency: %d MHz\n",
>>                            intel_gpu_freq(rps, rps->efficient_freq));
>>         } else if (INTEL_GEN(dev_priv) >= 6) {
>> -               u32 rp_state_limits;
>> -               u32 gt_perf_status;
>>                 u32 rp_state_cap;
>>                 u32 rpmodectl, rpinclimit, rpdeclimit;
>>                 u32 rpstat, cagf, reqf;
>> @@ -848,14 +846,10 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
>>                 u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
>>                 int max_freq;
>>
>> -               rp_state_limits = I915_READ(GEN6_RP_STATE_LIMITS);
>> -               if (IS_GEN9_LP(dev_priv)) {
>> +               if (IS_GEN9_LP(dev_priv))
>>                         rp_state_cap = I915_READ(BXT_RP_STATE_CAP);
>> -                       gt_perf_status = I915_READ(BXT_GT_PERF_STATUS);
>> -               } else {
>> +               else
>>                         rp_state_cap = I915_READ(GEN6_RP_STATE_CAP);
>> -                       gt_perf_status = I915_READ(GEN6_GT_PERF_STATUS);
>> -               }
>>
>>                 /* RPSTAT1 is in the GT power well */
>>                 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
>> @@ -924,13 +918,6 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
>>                                    pm_isr, pm_iir);
>>                 seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
>>                            rps->pm_intrmsk_mbz);
>> -               seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
>> -               seq_printf(m, "Render p-state ratio: %d\n",
>> -                          (gt_perf_status & (INTEL_GEN(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
>> -               seq_printf(m, "Render p-state VID: %d\n",
>> -                          gt_perf_status & 0xff);
>> -               seq_printf(m, "Render p-state limit: %d\n",
>> -                          rp_state_limits & 0xff);
>>                 seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
>>                 seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
>>                 seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 8b021f77cb1f..6e7a0dc38bce 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -4044,9 +4044,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>>  #define GEN6_GT_THREAD_STATUS_REG _MMIO(0x13805c)
>>  #define GEN6_GT_THREAD_STATUS_CORE_MASK 0x7
>>
>> -#define GEN6_GT_PERF_STATUS    _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
>> -#define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
>> -#define GEN6_RP_STATE_LIMITS   _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
>>  #define GEN6_RP_STATE_CAP      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
>>  #define BXT_RP_STATE_CAP        _MMIO(0x138170)
>>  #define GEN9_RP_STATE_LIMITS   _MMIO(0x138148)
>> --
>> 2.29.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
