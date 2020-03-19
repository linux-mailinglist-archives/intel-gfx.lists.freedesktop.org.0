Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF6D18BA58
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 16:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B166E15F;
	Thu, 19 Mar 2020 15:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3AE6E15F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 15:06:51 +0000 (UTC)
IronPort-SDR: QrqprUQ6KNg+d4L7QMOJlZ0ak2N4k+h8b6nB5mQCUSm4pTJL99dlW42T67HaZBRmW5hsm1uckK
 u3ZrGigtYuGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 08:06:50 -0700
IronPort-SDR: ZfluJkqzDD+gmTxEtHuD8D+CqbzxT09VzTgEergPQilDJbg8jgSLiUsnW8ribFRP7Q39zqiI47
 imnaf3lXqT+w==
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="245186107"
Received: from amgotede-mobl.ger.corp.intel.com (HELO [10.254.158.140])
 ([10.254.158.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 08:06:48 -0700
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
References: <20200318135837.79467-1-andi@etezian.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <248e7053-a5ce-5dab-f049-b68c8c9a87a6@linux.intel.com>
Date: Thu, 19 Mar 2020 15:06:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200318135837.79467-1-andi@etezian.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: move files more files into
 debugfs
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/03/2020 13:58, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The following interfaces:
> 
> i915_wedged
> i915_forcewake_user
> i915_gem_interrupt
> i915_gem_drop_caches
> 
> are dependent on gt values. Put them inside gt/ and drop the
> "i915_" prefix name. This would be the new structure:
> 
>    gt
>    |
>    +-- drop_caches
>    |
>    +-- forcewake_user
>    |
>    +-- interrupt_info_show
>    |
>    +-- wedge
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
> Hi,
> 
> this patch is the first of a series that aims to refactor the
> debugfs structure in the i915. Some changes will affect the
> debugfs framework as well.
> 
> Andi
> 
>   drivers/gpu/drm/i915/gt/debugfs_engines.c |  54 +++++++++
>   drivers/gpu/drm/i915/gt/debugfs_gt.c      | 140 +++++++++++++++++++++-
>   drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  32 +++++
>   3 files changed, 225 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
> index 5e3725e62241..0d0fee1a166d 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
> @@ -11,6 +11,59 @@
>   #include "i915_drv.h" /* for_each_engine! */
>   #include "intel_engine.h"
>   
> +static int interrupt_info_show(struct seq_file *m, void *data)
> +{
> +	struct intel_gt *gt = m->private;
> +	struct intel_uncore *uncore = gt->uncore;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	intel_wakeref_t wakeref;
> +
> +	wakeref = intel_runtime_pm_get(uncore->rpm);
> +
> +	if (INTEL_GEN(gt->i915) >= 11) {
> +		seq_printf(m, "RCS Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_RCS0_RSVD_INTR_MASK));
> +		seq_printf(m, "BCS Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_BCS_RSVD_INTR_MASK));
> +		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_VCS0_VCS1_INTR_MASK));
> +		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_VCS2_VCS3_INTR_MASK));
> +		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_VECS0_VECS1_INTR_MASK));
> +		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_GUC_SG_INTR_MASK));
> +		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_GPM_WGBOXPERF_INTR_MASK));
> +		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_CRYPTO_RSVD_INTR_MASK));
> +		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
> +			   intel_uncore_read(gt->uncore,
> +					     GEN11_GUNIT_CSME_INTR_MASK));
> +

Visually odd blank line.

> +	} else if (INTEL_GEN(gt->i915) >= 6) {
> +		for_each_engine(engine, gt, id) {
> +			seq_printf(m,
> +				   "Graphics Interrupt mask (%s):	%08x\n",
> +				   engine->name, ENGINE_READ(engine, RING_IMR));
> +		}
> +	}

I saw that Chris is not overly excited by this one but I think why not.

But two things:

1.

Some platforms are missing and some GT registers are missing from "gen 
 >= 6". For instance GT_I*R.

What do to with CHV and VLV? Split or leave as is?

For Gen11 I'd have GEN11_GFX_MSTR_IRQ in both GT and display/legacy file 
because it is shared. GEN8_MASTER_IRQ as well then I guess.

2.
I'd remove the data which got moved here from the legacy file.

> +
> +	intel_runtime_pm_put(uncore->rpm, wakeref);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(interrupt_info);
> +
>   static int engines_show(struct seq_file *m, void *data)
>   {
>   	struct intel_gt *gt = m->private;
> @@ -29,6 +82,7 @@ DEFINE_GT_DEBUGFS_ATTRIBUTE(engines);
>   void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
>   {
>   	static const struct debugfs_gt_file files[] = {
> +		{ "interrupt_info_show", &interrupt_info_fops, NULL },
>   		{ "engines", &engines_fops },
>   	};
>   
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> index fcbc57e226c3..1fc960ebba06 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> @@ -5,12 +5,148 @@
>    */
>   
>   #include <linux/debugfs.h>
> +#include <linux/sched/mm.h>
>   
>   #include "debugfs_engines.h"
>   #include "debugfs_gt.h"
>   #include "debugfs_gt_pm.h"
> -#include "uc/debugfs_uc.h"
>   #include "i915_drv.h"
> +#include "intel_gt_pm.h"
> +#include "intel_gt_requests.h"
> +#include "uc/debugfs_uc.h"
> +
> +#define DROP_UNBOUND	BIT(0)
> +#define DROP_BOUND	BIT(1)
> +#define DROP_RETIRE	BIT(2)
> +#define DROP_ACTIVE	BIT(3)
> +#define DROP_FREED	BIT(4)
> +#define DROP_SHRINK_ALL	BIT(5)
> +#define DROP_IDLE	BIT(6)
> +#define DROP_RESET_ACTIVE	BIT(7)
> +#define DROP_RESET_SEQNO	BIT(8)
> +#define DROP_RCU	BIT(9)
> +#define DROP_ALL (DROP_UNBOUND	| \
> +		  DROP_BOUND	| \
> +		  DROP_RETIRE	| \
> +		  DROP_ACTIVE	| \
> +		  DROP_FREED	| \
> +		  DROP_SHRINK_ALL |\
> +		  DROP_IDLE	| \
> +		  DROP_RESET_ACTIVE | \
> +		  DROP_RESET_SEQNO | \
> +		  DROP_RCU)
> +
> +static int drop_caches_get(void *data, u64 *val)
> +{
> +	*val = DROP_ALL;
> +
> +	return 0;
> +}
> +
> +static int drop_caches(struct intel_gt *gt, u64 val)
> +{
> +	int ret;
> +
> +	if (val & DROP_RESET_ACTIVE &&
> +	    wait_for(intel_engines_are_idle(gt), I915_IDLE_ENGINES_TIMEOUT))
> +		intel_gt_set_wedged(gt);
> +
> +	if (val & DROP_RETIRE)
> +		intel_gt_retire_requests(gt);
> +
> +	if (val & (DROP_IDLE | DROP_ACTIVE)) {
> +		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (val & DROP_IDLE) {
> +		ret = intel_gt_pm_wait_for_idle(gt);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (val & DROP_RESET_ACTIVE && intel_gt_terminally_wedged(gt))
> +		intel_gt_handle_error(gt, ALL_ENGINES, 0, NULL);
> +
> +	return 0;
> +}
> +
> +static int drop_caches_set(void *data, u64 val)
> +{
> +	struct intel_gt *gt = data;
> +	int ret;
> +
> +	DRM_DEBUG("Dropping caches: 0x%08llx [0x%08llx]\n",
> +		  val, val & DROP_ALL);
> +
> +	ret = drop_caches(gt, val);
> +	if (ret)
> +		return ret;
> +
> +	fs_reclaim_acquire(GFP_KERNEL);
> +	if (val & DROP_BOUND)
> +		i915_gem_shrink(gt->i915, LONG_MAX, NULL, I915_SHRINK_BOUND);
> +
> +	if (val & DROP_UNBOUND)
> +		i915_gem_shrink(gt->i915, LONG_MAX, NULL, I915_SHRINK_UNBOUND);
> +
> +	if (val & DROP_SHRINK_ALL)
> +		i915_gem_shrink_all(gt->i915);
> +	fs_reclaim_release(GFP_KERNEL);
> +
> +	if (val & DROP_RCU)
> +		rcu_barrier();
> +
> +	if (val & DROP_FREED)
> +		i915_gem_drain_freed_objects(gt->i915);
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(drop_caches_fops,
> +			drop_caches_get, drop_caches_set,
> +			"0x%08llx\n");

For drop caches we could only support the GT operations in gt/ debugfs. 
(The drop_caches(gt) part.

The rest can stay in legacy debugfs.

> +
> +static int wedged_get(void *data, u64 *val)
> +{
> +	struct intel_gt *gt = data;
> +	int ret = intel_gt_terminally_wedged(gt);
> +
> +	switch (ret) {
> +	case -EIO:
> +		*val = 1;
> +		return 0;
> +	case 0:
> +		*val = 0;
> +		return 0;
> +	default:
> +		return ret;
> +	}
> +}
> +
> +static int wedged_set(void *data, u64 val)
> +{
> +	struct intel_gt *gt = data;
> +
> +	/* Flush any previous reset before applying for a new one */
> +	wait_event(gt->reset.queue,
> +		   !test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> +
> +	intel_gt_handle_error(gt, val, I915_ERROR_CAPTURE,
> +			      "Manually set wedged engine mask = %llx", val);
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(wedged_fops, wedged_get, wedged_set, "%llu\n");
> +
> +static void __debugfs_gt_register(struct intel_gt *gt, struct dentry *root)
> +{
> +	static const struct debugfs_gt_file files[] = {
> +		{ "drop_caches", &drop_caches_fops, NULL },
> +		{ "wedge", &wedged_fops, NULL },
> +	};
> +
> +	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> +}
>   
>   void debugfs_gt_register(struct intel_gt *gt)
>   {
> @@ -23,6 +159,8 @@ void debugfs_gt_register(struct intel_gt *gt)
>   	if (IS_ERR(root))
>   		return;
>   
> +	__debugfs_gt_register(gt, root);
> +
>   	debugfs_engines_register(gt, root);
>   	debugfs_gt_pm_register(gt, root);
>   
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> index dc024944873a..5b1f109c4abb 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> @@ -10,6 +10,7 @@
>   #include "debugfs_gt_pm.h"
>   #include "i915_drv.h"
>   #include "intel_gt.h"
> +#include "intel_gt_pm.h"
>   #include "intel_llc.h"
>   #include "intel_rc6.h"
>   #include "intel_rps.h"
> @@ -17,6 +18,36 @@
>   #include "intel_sideband.h"
>   #include "intel_uncore.h"
>   
> +static int forcewake_user_open(struct inode *inode, struct file *file)
> +{
> +	struct intel_gt *gt = inode->i_private;
> +
> +	atomic_inc(&gt->user_wakeref);
> +	intel_gt_pm_get(gt);
> +	if (INTEL_GEN(gt->i915) >= 6)
> +		intel_uncore_forcewake_user_get(gt->uncore);
> +
> +	return 0;
> +}
> +
> +static int forcewake_user_release(struct inode *inode, struct file *file)
> +{
> +	struct intel_gt *gt = inode->i_private;
> +
> +	if (INTEL_GEN(gt->i915) >= 6)
> +		intel_uncore_forcewake_user_put(gt->uncore);
> +	intel_gt_pm_put(gt);
> +	atomic_dec(&gt->user_wakeref);
> +
> +	return 0;
> +}
> +
> +static const struct file_operations forcewake_user_fops = {
> +	.owner = THIS_MODULE,
> +	.open = forcewake_user_open,
> +	.release = forcewake_user_release,
> +};
> +
>   static int fw_domains_show(struct seq_file *m, void *data)
>   {
>   	struct intel_gt *gt = m->private;
> @@ -597,6 +628,7 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
>   		{ "drpc", &drpc_fops, NULL },
>   		{ "frequency", &frequency_fops, NULL },
>   		{ "forcewake", &fw_domains_fops, NULL },
> +		{ "forcewake_user", &forcewake_user_fops, NULL},
>   		{ "llc", &llc_fops, llc_eval },
>   		{ "rps_boost", &rps_boost_fops, rps_eval },
>   	};
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
