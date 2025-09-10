Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02913B51687
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 14:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAED110E905;
	Wed, 10 Sep 2025 12:07:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TqI3f10f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F173310E905
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 12:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757506022; x=1789042022;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=bLrtlN4o5gmkvRJhMTk+qa1c+IZroDTndwBx8uAAsoI=;
 b=TqI3f10fjRG0tfqQLrAZLGoNEAsvdfSbwSBKnUNzlkwi+vpoXLdgXvYT
 1DDFXs1ydkLWpjOT8yR2rSeOWb/09Bu15NBI6CSxCPZCsVmt180OsIYdo
 I9w0JXSj4q1pc94LbKj9u+k7jjDN34Hrj/HCN0HnQNL0kVoiA1E7yPpHg
 ptNolJgKTsX7zuuYvNd6zjy6dK6NBb5d0aTK9B3PbRdeAcsI3EtApzFXc
 CUMROlYvFuTsfV123Sioes/+j2nzW2v6I37E141wsSj95x5i/0chKJ6M8
 KSKHLLsEo3J7IVGWY+HzAI+pIpBrcAMhbo8GwFoJczO53A62j+1gj+bAq Q==;
X-CSE-ConnectionGUID: Uxd2ayNiS+y0eSU/NvNq/A==
X-CSE-MsgGUID: CL30U7yRRM+9sWZh60bKIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="47384102"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="47384102"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 05:07:01 -0700
X-CSE-ConnectionGUID: bNWbfm85SCChtSHTxqNLDA==
X-CSE-MsgGUID: l/NsVNLhShury2LDP965aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="172661151"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 05:06:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915: split out i915_wait_util.h
In-Reply-To: <aMAuTHq8uyHWAv5l@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1757340520.git.jani.nikula@intel.com>
 <7845cd4643bfa1caf4d177d9c8bab28a6c2c9998.1757340521.git.jani.nikula@intel.com>
 <aMAuTHq8uyHWAv5l@intel.com>
Date: Wed, 10 Sep 2025 15:06:56 +0300
Message-ID: <95099d2538cd2290bf875b264e9e49812d54fe12@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 09 Sep 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Sep 08, 2025 at 05:11:49PM +0300, Jani Nikula wrote:
>> Move waiting related utilities from i915_utils.h to separate new file
>> i915_wait_util.h. Clean up related includes.
>>=20
>> Note: Many of the various wait macro usages could likely be refactored
>> to use poll_timeout_us().
>
> I hope so! :)
>
> nice clean up overall, although my dream is that we
> could get rid entirely of these utils that pretend
> they are core kernel.
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, but no dice. :(

I didn't realize GEM_BUG_ON() uses GEM_TRACE_DUMP() uses
__add_taint_for_CI(), i.e. roughly everything requires i915_utils.h.

Maybe I'll post just some of these and drop patch 1.

BR,
Jani.




>
>
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/gt/intel_execlists_submission.c  |   1 +
>>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   1 +
>>  drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
>>  .../gpu/drm/i915/gt/intel_ring_submission.c   |   7 +-
>>  drivers/gpu/drm/i915/gt/intel_rps.c           |   2 +
>>  drivers/gpu/drm/i915/gt/selftest_tlb.c        |   6 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  |   6 +-
>>  .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |   2 +
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   8 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   4 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  13 +-
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>>  drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
>>  drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
>>  drivers/gpu/drm/i915/i915_utils.h             | 106 ----------------
>>  drivers/gpu/drm/i915/i915_wait_util.h         | 119 ++++++++++++++++++
>>  drivers/gpu/drm/i915/intel_pcode.c            |   1 +
>>  drivers/gpu/drm/i915/intel_uncore.c           |   7 +-
>>  drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
>>  drivers/gpu/drm/i915/selftests/i915_request.c |   5 +-
>>  .../gpu/drm/i915/selftests/i915_selftest.c    |   2 +-
>>  drivers/gpu/drm/i915/selftests/igt_spinner.c  |   5 +-
>>  drivers/gpu/drm/i915/vlv_suspend.c            |   5 +-
>>  24 files changed, 183 insertions(+), 150 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/i915_wait_util.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/driv=
ers/gpu/drm/i915/gt/intel_execlists_submission.c
>> index 0c1b2df02d26..7f389cb0bde4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> @@ -117,6 +117,7 @@
>>  #include "i915_timer_util.h"
>>  #include "i915_trace.h"
>>  #include "i915_vgpu.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_breadcrumbs.h"
>>  #include "intel_context.h"
>>  #include "intel_engine_heartbeat.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i9=
15/gt/intel_gt_mcr.c
>> index a60822e2b5d4..c3afa321fe30 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>> @@ -4,6 +4,7 @@
>>   */
>>=20=20
>>  #include "i915_drv.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_gt.h"
>>  #include "intel_gt_mcr.h"
>>  #include "intel_gt_print.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i91=
5/gt/intel_reset.c
>> index 4a1675dea1c7..41b5036dc538 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -9,18 +9,17 @@
>>=20=20
>>  #include "display/intel_display_reset.h"
>>  #include "display/intel_overlay.h"
>> -
>>  #include "gem/i915_gem_context.h"
>> -
>>  #include "gt/intel_gt_regs.h"
>> -
>>  #include "gt/uc/intel_gsc_fw.h"
>> +#include "uc/intel_guc.h"
>>=20=20
>>  #include "i915_drv.h"
>>  #include "i915_file_private.h"
>>  #include "i915_gpu_error.h"
>>  #include "i915_irq.h"
>>  #include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_breadcrumbs.h"
>>  #include "intel_engine_pm.h"
>>  #include "intel_engine_regs.h"
>> @@ -32,8 +31,6 @@
>>  #include "intel_pci_config.h"
>>  #include "intel_reset.h"
>>=20=20
>> -#include "uc/intel_guc.h"
>> -
>>  #define RESET_MAX_RETRIES 3
>>=20=20
>>  static void client_mark_guilty(struct i915_gem_context *ctx, bool banne=
d)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/g=
pu/drm/i915/gt/intel_ring_submission.c
>> index 2a6d79abf25b..8314a4b0505e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>> @@ -15,18 +15,19 @@
>>  #include "i915_irq.h"
>>  #include "i915_mitigations.h"
>>  #include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_breadcrumbs.h"
>>  #include "intel_context.h"
>> +#include "intel_engine_heartbeat.h"
>> +#include "intel_engine_pm.h"
>>  #include "intel_engine_regs.h"
>>  #include "intel_gt.h"
>>  #include "intel_gt_irq.h"
>> +#include "intel_gt_print.h"
>>  #include "intel_gt_regs.h"
>>  #include "intel_reset.h"
>>  #include "intel_ring.h"
>>  #include "shmem_utils.h"
>> -#include "intel_engine_heartbeat.h"
>> -#include "intel_engine_pm.h"
>> -#include "intel_gt_print.h"
>>=20=20
>>  /* Rough estimate of the typical request size, performing a flush,
>>   * set-context and then emitting the batch.
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index 006042e0b229..4da94098bd3e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -10,9 +10,11 @@
>>  #include "display/intel_display.h"
>>  #include "display/intel_display_rps.h"
>>  #include "soc/intel_dram.h"
>> +
>>  #include "i915_drv.h"
>>  #include "i915_irq.h"
>>  #include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_breadcrumbs.h"
>>  #include "intel_gt.h"
>>  #include "intel_gt_clock_utils.h"
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i9=
15/gt/selftest_tlb.c
>> index 69ed946a39e5..a5184f09d1de 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
>> @@ -3,17 +3,17 @@
>>   * Copyright =C2=A9 2022 Intel Corporation
>>   */
>>=20=20
>> -#include "i915_selftest.h"
>> -
>>  #include "gem/i915_gem_internal.h"
>>  #include "gem/i915_gem_lmem.h"
>>  #include "gem/i915_gem_region.h"
>>=20=20
>>  #include "gen8_engine_cs.h"
>>  #include "i915_gem_ww.h"
>> +#include "i915_selftest.h"
>> +#include "i915_wait_util.h"
>> +#include "intel_context.h"
>>  #include "intel_engine_regs.h"
>>  #include "intel_gpu_commands.h"
>> -#include "intel_context.h"
>>  #include "intel_gt.h"
>>  #include "intel_ring.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/=
drm/i915/gt/uc/intel_gsc_proxy.c
>> index d8edd7c054c8..e7444ebc373e 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> @@ -10,11 +10,13 @@
>>=20=20
>>  #include "gt/intel_gt.h"
>>  #include "gt/intel_gt_print.h"
>> +
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_gsc_proxy.h"
>>  #include "intel_gsc_uc.h"
>>  #include "intel_gsc_uc_heci_cmd_submit.h"
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>>=20=20
>>  /*
>>   * GSC proxy:
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b=
/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
>> index 2fde5c360cff..9bd29be7656f 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
>> @@ -8,6 +8,8 @@
>>  #include "gt/intel_gpu_commands.h"
>>  #include "gt/intel_gt.h"
>>  #include "gt/intel_ring.h"
>> +
>> +#include "i915_wait_util.h"
>>  #include "intel_gsc_uc_heci_cmd_submit.h"
>>=20=20
>>  struct gsc_heci_pkt {
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i9=
15/gt/uc/intel_guc.c
>> index f360f020d8f1..52ec4421a211 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -8,15 +8,17 @@
>>  #include "gt/intel_gt_irq.h"
>>  #include "gt/intel_gt_pm_irq.h"
>>  #include "gt/intel_gt_regs.h"
>> +
>> +#include "i915_drv.h"
>> +#include "i915_irq.h"
>> +#include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_guc.h"
>>  #include "intel_guc_ads.h"
>>  #include "intel_guc_capture.h"
>>  #include "intel_guc_print.h"
>>  #include "intel_guc_slpc.h"
>>  #include "intel_guc_submission.h"
>> -#include "i915_drv.h"
>> -#include "i915_irq.h"
>> -#include "i915_reg.h"
>>=20=20
>>  /**
>>   * DOC: GuC
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm=
/i915/gt/uc/intel_guc_ct.c
>> index 380a11c92d63..3e7e5badcc2b 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -5,11 +5,12 @@
>>=20=20
>>  #include <linux/circ_buf.h>
>>  #include <linux/ktime.h>
>> -#include <linux/time64.h>
>>  #include <linux/string_helpers.h>
>> +#include <linux/time64.h>
>>  #include <linux/timekeeping.h>
>>=20=20
>>  #include "i915_drv.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_guc_ct.h"
>>  #include "intel_guc_print.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm=
/i915/gt/uc/intel_guc_fw.c
>> index e7ccfa520df3..1bb1491f90fc 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
>> @@ -13,9 +13,11 @@
>>  #include "gt/intel_gt_mcr.h"
>>  #include "gt/intel_gt_regs.h"
>>  #include "gt/intel_rps.h"
>> +
>> +#include "i915_drv.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_guc_fw.h"
>>  #include "intel_guc_print.h"
>> -#include "i915_drv.h"
>>=20=20
>>  static void guc_prepare_xfer(struct intel_gt *gt)
>>  {
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/d=
rm/i915/gt/uc/intel_guc_slpc.c
>> index d5ee6e5e1443..fa9af08f9708 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> @@ -3,17 +3,20 @@
>>   * Copyright =C2=A9 2021 Intel Corporation
>>   */
>>=20=20
>> -#include <drm/drm_cache.h>
>>  #include <linux/string_helpers.h>
>>=20=20
>> +#include <drm/drm_cache.h>
>> +
>> +#include "gt/intel_gt.h"
>> +#include "gt/intel_gt_regs.h"
>> +#include "gt/intel_rps.h"
>> +
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>> -#include "intel_guc_slpc.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_guc_print.h"
>> +#include "intel_guc_slpc.h"
>>  #include "intel_mchbar_regs.h"
>> -#include "gt/intel_gt.h"
>> -#include "gt/intel_gt_regs.h"
>> -#include "gt/intel_rps.h"
>>=20=20
>>  /**
>>   * DOC: SLPC - Dynamic Frequency management
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers=
/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 127316d2c8aa..68f2b8d363ac 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -25,16 +25,16 @@
>>  #include "gt/intel_mocs.h"
>>  #include "gt/intel_ring.h"
>>=20=20
>> +#include "i915_drv.h"
>> +#include "i915_irq.h"
>> +#include "i915_reg.h"
>> +#include "i915_trace.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_guc_ads.h"
>>  #include "intel_guc_capture.h"
>>  #include "intel_guc_print.h"
>>  #include "intel_guc_submission.h"
>>=20=20
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>> -#include "i915_irq.h"
>> -#include "i915_trace.h"
>> -
>>  /**
>>   * DOC: GuC-based command submission
>>   *
>> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i=
915/gvt/mmio_context.c
>> index 2f7208843367..0b810baad20a 100644
>> --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
>> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
>> @@ -33,14 +33,16 @@
>>   *
>>   */
>>=20=20
>> -#include "i915_drv.h"
>> -#include "i915_reg.h"
>>  #include "gt/intel_context.h"
>>  #include "gt/intel_engine_regs.h"
>>  #include "gt/intel_gpu_commands.h"
>>  #include "gt/intel_gt_regs.h"
>>  #include "gt/intel_ring.h"
>> +
>>  #include "gvt.h"
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "trace.h"
>>=20=20
>>  #define GEN9_MOCS_SIZE		64
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/=
i915_debugfs.c
>> index 23fa098c4479..c2e38d4bcd01 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -26,11 +26,11 @@
>>   *
>>   */
>>=20=20
>> +#include <linux/debugfs.h>
>>  #include <linux/sched/mm.h>
>>  #include <linux/sort.h>
>>  #include <linux/string_helpers.h>
>>=20=20
>> -#include <linux/debugfs.h>
>>  #include <drm/drm_debugfs.h>
>>=20=20
>>  #include "gem/i915_gem_context.h"
>> @@ -54,6 +54,7 @@
>>  #include "i915_irq.h"
>>  #include "i915_reg.h"
>>  #include "i915_scheduler.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_mchbar_regs.h"
>>=20=20
>>  static inline struct drm_i915_private *node_to_i915(struct drm_info_nod=
e *node)
>> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i9=
15_utils.h
>> index 4a6437d6e00e..a0c892e4c40d 100644
>> --- a/drivers/gpu/drm/i915/i915_utils.h
>> +++ b/drivers/gpu/drm/i915/i915_utils.h
>> @@ -134,112 +134,6 @@ wait_remaining_ms_from_jiffies(unsigned long times=
tamp_jiffies, int to_wait_ms)
>>  	}
>>  }
>>=20=20
>> -/*
>> - * __wait_for - magic wait macro
>> - *
>> - * Macro to help avoid open coding check/wait/timeout patterns. Note th=
at it's
>> - * important that we check the condition again after having timed out, =
since the
>> - * timeout could be due to preemption or similar and we've never had a =
chance to
>> - * check the condition before the timeout.
>> - */
>> -#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
>> -	const ktime_t end__ =3D ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
>> -	long wait__ =3D (Wmin); /* recommended min for usleep is 10 us */	\
>> -	int ret__;							\
>> -	might_sleep();							\
>> -	for (;;) {							\
>> -		const bool expired__ =3D ktime_after(ktime_get_raw(), end__); \
>> -		OP;							\
>> -		/* Guarantee COND check prior to timeout */		\
>> -		barrier();						\
>> -		if (COND) {						\
>> -			ret__ =3D 0;					\
>> -			break;						\
>> -		}							\
>> -		if (expired__) {					\
>> -			ret__ =3D -ETIMEDOUT;				\
>> -			break;						\
>> -		}							\
>> -		usleep_range(wait__, wait__ * 2);			\
>> -		if (wait__ < (Wmax))					\
>> -			wait__ <<=3D 1;					\
>> -	}								\
>> -	ret__;								\
>> -})
>> -
>> -#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmi=
n), \
>> -						   (Wmax))
>> -#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
>> -
>> -/*
>> - * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports fals=
e.
>> - * On PREEMPT_RT the context isn't becoming atomic because it is used i=
n an
>> - * interrupt handler or because a spinlock_t is acquired. This leads to
>> - * warnings which don't occur otherwise and therefore the check is disa=
bled.
>> - */
>> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUN=
T) && !defined(CONFIG_PREEMPT_RT)
>> -# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_at=
omic())
>> -#else
>> -# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
>> -#endif
>> -
>> -#define _wait_for_atomic(COND, US, ATOMIC) \
>> -({ \
>> -	int cpu, ret, timeout =3D (US) * 1000; \
>> -	u64 base; \
>> -	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
>> -	if (!(ATOMIC)) { \
>> -		preempt_disable(); \
>> -		cpu =3D smp_processor_id(); \
>> -	} \
>> -	base =3D local_clock(); \
>> -	for (;;) { \
>> -		u64 now =3D local_clock(); \
>> -		if (!(ATOMIC)) \
>> -			preempt_enable(); \
>> -		/* Guarantee COND check prior to timeout */ \
>> -		barrier(); \
>> -		if (COND) { \
>> -			ret =3D 0; \
>> -			break; \
>> -		} \
>> -		if (now - base >=3D timeout) { \
>> -			ret =3D -ETIMEDOUT; \
>> -			break; \
>> -		} \
>> -		cpu_relax(); \
>> -		if (!(ATOMIC)) { \
>> -			preempt_disable(); \
>> -			if (unlikely(cpu !=3D smp_processor_id())) { \
>> -				timeout -=3D now - base; \
>> -				cpu =3D smp_processor_id(); \
>> -				base =3D local_clock(); \
>> -			} \
>> -		} \
>> -	} \
>> -	ret; \
>> -})
>> -
>> -#define wait_for_us(COND, US) \
>> -({ \
>> -	int ret__; \
>> -	BUILD_BUG_ON(!__builtin_constant_p(US)); \
>> -	if ((US) > 10) \
>> -		ret__ =3D _wait_for((COND), (US), 10, 10); \
>> -	else \
>> -		ret__ =3D _wait_for_atomic((COND), (US), 0); \
>> -	ret__; \
>> -})
>> -
>> -#define wait_for_atomic_us(COND, US) \
>> -({ \
>> -	BUILD_BUG_ON(!__builtin_constant_p(US)); \
>> -	BUILD_BUG_ON((US) > 50000); \
>> -	_wait_for_atomic((COND), (US), 1); \
>> -})
>> -
>> -#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 100=
0)
>> -
>>  #define KHz(x) (1000 * (x))
>>  #define MHz(x) KHz(1000 * (x))
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/i915_wait_util.h b/drivers/gpu/drm/i91=
5/i915_wait_util.h
>> new file mode 100644
>> index 000000000000..7376898e3bf8
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_wait_util.h
>> @@ -0,0 +1,119 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#ifndef __I915_WAIT_UTIL_H__
>> +#define __I915_WAIT_UTIL_H__
>> +
>> +#include <linux/compiler.h>
>> +#include <linux/delay.h>
>> +#include <linux/ktime.h>
>> +#include <linux/sched/clock.h>
>> +#include <linux/smp.h>
>> +
>> +/*
>> + * __wait_for - magic wait macro
>> + *
>> + * Macro to help avoid open coding check/wait/timeout patterns. Note th=
at it's
>> + * important that we check the condition again after having timed out, =
since the
>> + * timeout could be due to preemption or similar and we've never had a =
chance to
>> + * check the condition before the timeout.
>> + */
>> +#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
>> +	const ktime_t end__ =3D ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
>> +	long wait__ =3D (Wmin); /* recommended min for usleep is 10 us */	\
>> +	int ret__;							\
>> +	might_sleep();							\
>> +	for (;;) {							\
>> +		const bool expired__ =3D ktime_after(ktime_get_raw(), end__); \
>> +		OP;							\
>> +		/* Guarantee COND check prior to timeout */		\
>> +		barrier();						\
>> +		if (COND) {						\
>> +			ret__ =3D 0;					\
>> +			break;						\
>> +		}							\
>> +		if (expired__) {					\
>> +			ret__ =3D -ETIMEDOUT;				\
>> +			break;						\
>> +		}							\
>> +		usleep_range(wait__, wait__ * 2);			\
>> +		if (wait__ < (Wmax))					\
>> +			wait__ <<=3D 1;					\
>> +	}								\
>> +	ret__;								\
>> +})
>> +
>> +#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmi=
n), \
>> +						   (Wmax))
>> +#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
>> +
>> +/*
>> + * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports fals=
e.
>> + * On PREEMPT_RT the context isn't becoming atomic because it is used i=
n an
>> + * interrupt handler or because a spinlock_t is acquired. This leads to
>> + * warnings which don't occur otherwise and therefore the check is disa=
bled.
>> + */
>> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUN=
T) && !defined(CONFIG_PREEMPT_RT)
>> +# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_at=
omic())
>> +#else
>> +# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
>> +#endif
>> +
>> +#define _wait_for_atomic(COND, US, ATOMIC) \
>> +({ \
>> +	int cpu, ret, timeout =3D (US) * 1000; \
>> +	u64 base; \
>> +	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
>> +	if (!(ATOMIC)) { \
>> +		preempt_disable(); \
>> +		cpu =3D smp_processor_id(); \
>> +	} \
>> +	base =3D local_clock(); \
>> +	for (;;) { \
>> +		u64 now =3D local_clock(); \
>> +		if (!(ATOMIC)) \
>> +			preempt_enable(); \
>> +		/* Guarantee COND check prior to timeout */ \
>> +		barrier(); \
>> +		if (COND) { \
>> +			ret =3D 0; \
>> +			break; \
>> +		} \
>> +		if (now - base >=3D timeout) { \
>> +			ret =3D -ETIMEDOUT; \
>> +			break; \
>> +		} \
>> +		cpu_relax(); \
>> +		if (!(ATOMIC)) { \
>> +			preempt_disable(); \
>> +			if (unlikely(cpu !=3D smp_processor_id())) { \
>> +				timeout -=3D now - base; \
>> +				cpu =3D smp_processor_id(); \
>> +				base =3D local_clock(); \
>> +			} \
>> +		} \
>> +	} \
>> +	ret; \
>> +})
>> +
>> +#define wait_for_us(COND, US) \
>> +({ \
>> +	int ret__; \
>> +	BUILD_BUG_ON(!__builtin_constant_p(US)); \
>> +	if ((US) > 10) \
>> +		ret__ =3D _wait_for((COND), (US), 10, 10); \
>> +	else \
>> +		ret__ =3D _wait_for_atomic((COND), (US), 0); \
>> +	ret__; \
>> +})
>> +
>> +#define wait_for_atomic_us(COND, US) \
>> +({ \
>> +	BUILD_BUG_ON(!__builtin_constant_p(US)); \
>> +	BUILD_BUG_ON((US) > 50000); \
>> +	_wait_for_atomic((COND), (US), 1); \
>> +})
>> +
>> +#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 100=
0)
>> +
>> +#endif /* __I915_WAIT_UTIL_H__ */
>> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/i=
ntel_pcode.c
>> index 81da75108c60..55ffedad2490 100644
>> --- a/drivers/gpu/drm/i915/intel_pcode.c
>> +++ b/drivers/gpu/drm/i915/intel_pcode.c
>> @@ -5,6 +5,7 @@
>>=20=20
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_pcode.h"
>>=20=20
>>  static int gen6_check_mailbox_status(u32 mbox)
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/=
intel_uncore.c
>> index 4ccba7c8ffb3..8cb59f8d1f4c 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -21,19 +21,20 @@
>>   * IN THE SOFTWARE.
>>   */
>>=20=20
>> -#include <drm/drm_managed.h>
>>  #include <linux/pm_runtime.h>
>>=20=20
>> -#include "display/intel_display_core.h"
>> +#include <drm/drm_managed.h>
>>=20=20
>> -#include "gt/intel_gt.h"
>> +#include "display/intel_display_core.h"
>>  #include "gt/intel_engine_regs.h"
>> +#include "gt/intel_gt.h"
>>  #include "gt/intel_gt_regs.h"
>>=20=20
>>  #include "i915_drv.h"
>>  #include "i915_iosf_mbi.h"
>>  #include "i915_reg.h"
>>  #include "i915_vgpu.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_uncore_trace.h"
>>=20=20
>>  #define FORCEWAKE_ACK_TIMEOUT_MS 50
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915=
/pxp/intel_pxp.c
>> index f8da693ad3ce..27d545c4e6a5 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> @@ -2,15 +2,15 @@
>>  /*
>>   * Copyright(c) 2020 Intel Corporation.
>>   */
>> +
>>  #include <linux/workqueue.h>
>>=20=20
>>  #include "gem/i915_gem_context.h"
>> -
>>  #include "gt/intel_context.h"
>>  #include "gt/intel_gt.h"
>>=20=20
>>  #include "i915_drv.h"
>> -
>> +#include "i915_wait_util.h"
>>  #include "intel_pxp.h"
>>  #include "intel_pxp_gsccs.h"
>>  #include "intel_pxp_irq.h"
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu=
/drm/i915/selftests/i915_request.c
>> index 2fb7a9e7efec..48cd617247d1 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
>> @@ -22,14 +22,13 @@
>>   *
>>   */
>>=20=20
>> -#include <linux/prime_numbers.h>
>>  #include <linux/pm_qos.h>
>> +#include <linux/prime_numbers.h>
>>  #include <linux/sort.h>
>>=20=20
>>  #include "gem/i915_gem_internal.h"
>>  #include "gem/i915_gem_pm.h"
>>  #include "gem/selftests/mock_context.h"
>> -
>>  #include "gt/intel_engine_heartbeat.h"
>>  #include "gt/intel_engine_pm.h"
>>  #include "gt/intel_engine_user.h"
>> @@ -40,11 +39,11 @@
>>=20=20
>>  #include "i915_random.h"
>>  #include "i915_selftest.h"
>> +#include "i915_wait_util.h"
>>  #include "igt_flush_test.h"
>>  #include "igt_live_test.h"
>>  #include "igt_spinner.h"
>>  #include "lib_sw_fence.h"
>> -
>>  #include "mock_drm.h"
>>  #include "mock_gem_device.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gp=
u/drm/i915/selftests/i915_selftest.c
>> index 889281819c5b..9c276c9d0a75 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
>> @@ -31,7 +31,7 @@
>>  #include "i915_driver.h"
>>  #include "i915_drv.h"
>>  #include "i915_selftest.h"
>> -
>> +#include "i915_wait_util.h"
>>  #include "igt_flush_test.h"
>>=20=20
>>  struct i915_selftest i915_selftest __read_mostly =3D {
>> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/=
drm/i915/selftests/igt_spinner.c
>> index 8c3e1f20e5a1..820364171ebe 100644
>> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
>> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
>> @@ -3,12 +3,13 @@
>>   *
>>   * Copyright =C2=A9 2018 Intel Corporation
>>   */
>> -#include "gt/intel_gpu_commands.h"
>> -#include "gt/intel_gt.h"
>>=20=20
>>  #include "gem/i915_gem_internal.h"
>>  #include "gem/selftests/igt_gem_utils.h"
>> +#include "gt/intel_gpu_commands.h"
>> +#include "gt/intel_gt.h"
>>=20=20
>> +#include "i915_wait_util.h"
>>  #include "igt_spinner.h"
>>=20=20
>>  int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/v=
lv_suspend.c
>> index fc9f311ea1db..221e4c0b2c58 100644
>> --- a/drivers/gpu/drm/i915/vlv_suspend.c
>> +++ b/drivers/gpu/drm/i915/vlv_suspend.c
>> @@ -8,16 +8,17 @@
>>=20=20
>>  #include <drm/drm_print.h>
>>=20=20
>> +#include "gt/intel_gt_regs.h"
>> +
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>>  #include "i915_trace.h"
>>  #include "i915_utils.h"
>> +#include "i915_wait_util.h"
>>  #include "intel_clock_gating.h"
>>  #include "intel_uncore_trace.h"
>>  #include "vlv_suspend.h"
>>=20=20
>> -#include "gt/intel_gt_regs.h"
>> -
>>  struct vlv_s0ix_state {
>>  	/* GAM */
>>  	u32 wr_watermark;
>> --=20
>> 2.47.3
>>=20

--=20
Jani Nikula, Intel
