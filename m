Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E776011EAEC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 20:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C95F6EC36;
	Fri, 13 Dec 2019 19:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CBF36EC36
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 19:05:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 11:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="415729504"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga006.fm.intel.com with ESMTP; 13 Dec 2019 11:05:49 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.57])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBDJ5m77031748; Fri, 13 Dec 2019 19:05:48 GMT
To: "Intel GFX" <intel-gfx@lists.freedesktop.org>, "Andi Shyti"
 <andi@etezian.org>
References: <20191213183736.31992-1-andi@etezian.org>
 <20191213183736.31992-3-andi@etezian.org>
Date: Fri, 13 Dec 2019 20:05:47 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0cq3bxq3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20191213183736.31992-3-andi@etezian.org>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/gt: Move power management
 debug files into a gt aware debugfs
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 13 Dec 2019 19:37:36 +0100, Andi Shyti <andi@etezian.org> wrote:

> From: Andi Shyti <andi.shyti@intel.com>
>
> The GT system is becoming more and more a stand-alone system in
> i915 and it's fair to assign it its own debugfs directory.
>
> rc6, rps and llc debugfs files are gt related, move them into the
> gt debugfs directory.
>
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile        |   2 +
>  drivers/gpu/drm/i915/gt/debugfs_gt.c |  22 +
>  drivers/gpu/drm/i915/gt/debugfs_gt.h |  26 ++
>  drivers/gpu/drm/i915/gt/debugfs_pm.c | 623 +++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/debugfs_pm.h |  16 +
>  drivers/gpu/drm/i915/i915_debugfs.c  | 579 +------------------------
>  6 files changed, 698 insertions(+), 570 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.c
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.h
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_pm.c
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_pm.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile  =

> b/drivers/gpu/drm/i915/Makefile
> index e0fd10c0cfb8..8f6cdfd08ac8 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -75,6 +75,8 @@ i915-$(CONFIG_PERF_EVENTS) +=3D i915_pmu.o
>  # "Graphics Technology" (aka we talk to the gpu)
>  obj-y +=3D gt/
>  gt-y +=3D \
> +	gt/debugfs_gt.o \
> +	gt/debugfs_pm.o \

hm, maybe this should be:
	gt/intel_gt_debugfs.o
and
	gt/intel_pm_debugfs.o

>  	gt/intel_breadcrumbs.o \
>  	gt/intel_context.o \
>  	gt/intel_engine_cs.o \
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c  =

> b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> new file mode 100644
> index 000000000000..3c9dce1cc212
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */

in .c SPDX shall start with //

> +/*
> + * Copyright =A9 2019 Intel Corporation
> + */
> +
> +#include "debugfs_pm.h"
> +#include "i915_trace.h"
> +
> +int debugfs_gt_init(struct intel_gt *gt)
> +{
> +	struct dentry *debugfs_root =3D gt->i915->drm.primary->debugfs_root;
> +	struct dentry *gt_root;
> +
> +	if (!debugfs_root)
> +		return -ENODEV;
> +
> +	gt_root =3D debugfs_create_dir("gt", debugfs_root);
> +	if (IS_ERR(gt_root))
> +		return PTR_ERR(gt_root);
> +
> +	return intel_gt_pm_debugfs_register(gt, gt_root);
> +}
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.h  =

> b/drivers/gpu/drm/i915/gt/debugfs_gt.h
> new file mode 100644
> index 000000000000..cac5a3503459
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2019 Intel Corporation
> + */
> +
> +#ifndef DEBUGFS_GT
> +#define DEBUGFS_GT
> +
> +#include "intel_gt_types.h"
> +
> +#define DEFINE_GT_DEBUGFS_ATTRIBUTE(__name)				\
> +static int __name ## _open(struct inode *inode, struct file *file)	\
> +{									\
> +	return single_open(file, __name ## _show, inode->i_private);	\
> +}									\
> +static const struct file_operations __name ## _fops =3D {			\
> +	.owner =3D THIS_MODULE,						\
> +	.open =3D __name ## _open,					\
> +	.read =3D seq_read,						\
> +	.llseek =3D seq_lseek,						\
> +	.release =3D single_release,					\
> +}
> +
> +int debugfs_gt_init(struct intel_gt *gt);
> +
> +#endif /* DEBUGFS_GT */
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_pm.c  =

> b/drivers/gpu/drm/i915/gt/debugfs_pm.c
> new file mode 100644
> index 000000000000..accf8234385c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_pm.c
> @@ -0,0 +1,623 @@
> +/*
> + * SPDX-License-Identifier: MIT

SPDX shall be in 1st line (starting with //)

> + *
> + * Copyright =A9 2019 Intel Corporation
> + */
> +
> +#include "debugfs_pm.h"
> +#include "debugfs_gt.h"
> +#include "i915_debugfs.h"
> +#include "i915_trace.h"
> +#include "intel_rc6.h"
> +#include "intel_rps.h"
> +#include "intel_sideband.h"
> +
> +static int forcewake_domains_show(struct seq_file *m, void *data)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	struct intel_uncore_forcewake_domain *fw_domain;
> +	unsigned int tmp;
> +
> +	seq_printf(m, "user.bypass_count =3D %u\n",
> +		   uncore->user_forcewake_count);
> +
> +	for_each_fw_domain(fw_domain, uncore, tmp)
> +		seq_printf(m, "%s.wake_count =3D %u\n",
> +			   intel_uncore_forcewake_domain_to_str(fw_domain->id),
> +			   READ_ONCE(fw_domain->wake_count));
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(forcewake_domains);
> +
> +static void print_rc6_res(struct seq_file *m,
> +			  const char *title,
> +			  const i915_reg_t reg)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		seq_printf(m, "%s %u (%llu us)\n", title,
> +			   intel_uncore_read(gt->uncore, reg),
> +			   intel_rc6_residency_us(&gt->rc6, reg));
> +}
> +
> +static int vlv_drpc_info(struct seq_file *m)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	u32 rcctl1, pw_status;
> +
> +	pw_status =3D intel_uncore_read(uncore, VLV_GTLC_PW_STATUS);
> +	rcctl1 =3D intel_uncore_read(uncore, GEN6_RC_CONTROL);
> +
> +	seq_printf(m, "RC6 Enabled: %s\n",
> +		   yesno(rcctl1 & (GEN7_RC_CTL_TO_MODE |
> +					GEN6_RC_CTL_EI_MODE(1))));
> +	seq_printf(m, "Render Power Well: %s\n",
> +		   (pw_status & VLV_GTLC_PW_RENDER_STATUS_MASK) ? "Up" : "Down");
> +	seq_printf(m, "Media Power Well: %s\n",
> +		   (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");
> +
> +	print_rc6_res(m, "Render RC6 residency since boot:",  =

> VLV_GT_RENDER_RC6);
> +	print_rc6_res(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);
> +
> +	return forcewake_domains_show(m, NULL);
> +}
> +
> +static int gen6_drpc_info(struct seq_file *m)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	u32 gt_core_status, rcctl1, rc6vids =3D 0;
> +	u32 gen9_powergate_enable =3D 0, gen9_powergate_status =3D 0;
> +
> +	gt_core_status =3D intel_uncore_read_fw(uncore, GEN6_GT_CORE_STATUS);
> +	trace_i915_reg_rw(false, GEN6_GT_CORE_STATUS, gt_core_status, 4, true);
> +
> +	rcctl1 =3D intel_uncore_read(uncore, GEN6_RC_CONTROL);
> +	if (INTEL_GEN(i915) >=3D 9) {
> +		gen9_powergate_enable =3D intel_uncore_read(uncore,
> +						GEN9_PG_ENABLE);
> +		gen9_powergate_status =3D intel_uncore_read(uncore,
> +						GEN9_PWRGT_DOMAIN_STATUS);
> +	}
> +
> +	if (INTEL_GEN(i915) <=3D 7)
> +		sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
> +				       &rc6vids, NULL);
> +
> +	seq_printf(m, "RC1e Enabled: %s\n",
> +		   yesno(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
> +	seq_printf(m, "RC6 Enabled: %s\n",
> +		   yesno(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
> +	if (INTEL_GEN(i915) >=3D 9) {
> +		seq_printf(m, "Render Well Gating Enabled: %s\n",
> +			yesno(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));
> +		seq_printf(m, "Media Well Gating Enabled: %s\n",
> +			yesno(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));
> +	}
> +	seq_printf(m, "Deep RC6 Enabled: %s\n",
> +		   yesno(rcctl1 & GEN6_RC_CTL_RC6p_ENABLE));
> +	seq_printf(m, "Deepest RC6 Enabled: %s\n",
> +		   yesno(rcctl1 & GEN6_RC_CTL_RC6pp_ENABLE));
> +	seq_puts(m, "Current RC state: ");
> +	switch (gt_core_status & GEN6_RCn_MASK) {
> +	case GEN6_RC0:
> +		if (gt_core_status & GEN6_CORE_CPD_STATE_MASK)
> +			seq_puts(m, "Core Power Down\n");
> +		else
> +			seq_puts(m, "on\n");
> +		break;
> +	case GEN6_RC3:
> +		seq_puts(m, "RC3\n");
> +		break;
> +	case GEN6_RC6:
> +		seq_puts(m, "RC6\n");
> +		break;
> +	case GEN6_RC7:
> +		seq_puts(m, "RC7\n");
> +		break;
> +	default:
> +		seq_puts(m, "Unknown\n");
> +		break;
> +	}
> +
> +	seq_printf(m, "Core Power Down: %s\n",
> +		   yesno(gt_core_status & GEN6_CORE_CPD_STATE_MASK));
> +	if (INTEL_GEN(i915) >=3D 9) {
> +		seq_printf(m, "Render Power Well: %s\n",
> +			(gen9_powergate_status &
> +			 GEN9_PWRGT_RENDER_STATUS_MASK) ? "Up" : "Down");
> +		seq_printf(m, "Media Power Well: %s\n",
> +			(gen9_powergate_status &
> +			 GEN9_PWRGT_MEDIA_STATUS_MASK) ? "Up" : "Down");
> +	}
> +
> +	/* Not exactly sure what this is */
> +	print_rc6_res(m, "RC6 \"Locked to RPn\" residency since boot:",
> +		      GEN6_GT_GFX_RC6_LOCKED);
> +	print_rc6_res(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
> +	print_rc6_res(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
> +	print_rc6_res(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);
> +
> +	if (INTEL_GEN(i915) <=3D 7) {
> +		seq_printf(m, "RC6   voltage: %dmV\n",
> +			   GEN6_DECODE_RC6_VID(((rc6vids >> 0) & 0xff)));
> +		seq_printf(m, "RC6+  voltage: %dmV\n",
> +			   GEN6_DECODE_RC6_VID(((rc6vids >> 8) & 0xff)));
> +		seq_printf(m, "RC6++ voltage: %dmV\n",
> +			   GEN6_DECODE_RC6_VID(((rc6vids >> 16) & 0xff)));
> +	}
> +
> +	return forcewake_domains_show(m, NULL);
> +}
> +
> +static int ironlake_drpc_info(struct seq_file *m)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	u32 rgvmodectl, rstdbyctl;
> +	u16 crstandvid;
> +
> +	rgvmodectl =3D intel_uncore_read(uncore, MEMMODECTL);
> +	rstdbyctl =3D intel_uncore_read(uncore, RSTDBYCTL);
> +	crstandvid =3D intel_uncore_read16(uncore, CRSTANDVID);
> +
> +	seq_printf(m, "HD boost: %s\n", yesno(rgvmodectl & MEMMODE_BOOST_EN));
> +	seq_printf(m, "Boost freq: %d\n",
> +		   (rgvmodectl & MEMMODE_BOOST_FREQ_MASK) >>
> +		   MEMMODE_BOOST_FREQ_SHIFT);
> +	seq_printf(m, "HW control enabled: %s\n",
> +		   yesno(rgvmodectl & MEMMODE_HWIDLE_EN));
> +	seq_printf(m, "SW control enabled: %s\n",
> +		   yesno(rgvmodectl & MEMMODE_SWMODE_EN));
> +	seq_printf(m, "Gated voltage change: %s\n",
> +		   yesno(rgvmodectl & MEMMODE_RCLK_GATE));
> +	seq_printf(m, "Starting frequency: P%d\n",
> +		   (rgvmodectl & MEMMODE_FSTART_MASK) >> MEMMODE_FSTART_SHIFT);
> +	seq_printf(m, "Max P-state: P%d\n",
> +		   (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT);
> +	seq_printf(m, "Min P-state: P%d\n", (rgvmodectl & MEMMODE_FMIN_MASK));
> +	seq_printf(m, "RS1 VID: %d\n", (crstandvid & 0x3f));
> +	seq_printf(m, "RS2 VID: %d\n", ((crstandvid >> 8) & 0x3f));
> +	seq_printf(m, "Render standby enabled: %s\n",
> +		   yesno(!(rstdbyctl & RCX_SW_EXIT)));
> +	seq_puts(m, "Current RS state: ");
> +	switch (rstdbyctl & RSX_STATUS_MASK) {
> +	case RSX_STATUS_ON:
> +		seq_puts(m, "on\n");
> +		break;
> +	case RSX_STATUS_RC1:
> +		seq_puts(m, "RC1\n");
> +		break;
> +	case RSX_STATUS_RC1E:
> +		seq_puts(m, "RC1E\n");
> +		break;
> +	case RSX_STATUS_RS1:
> +		seq_puts(m, "RS1\n");
> +		break;
> +	case RSX_STATUS_RS2:
> +		seq_puts(m, "RS2 (RC6)\n");
> +		break;
> +	case RSX_STATUS_RS3:
> +		seq_puts(m, "RC3 (RC6+)\n");
> +		break;
> +	default:
> +		seq_puts(m, "unknown\n");
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static int drpc_info_show(struct seq_file *m, void *unused)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	intel_wakeref_t wakeref;
> +	int err =3D -ENODEV;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
> +		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +			err =3D vlv_drpc_info(m);
> +		else if (INTEL_GEN(i915) >=3D 6)
> +			err =3D gen6_drpc_info(m);
> +		else
> +			err =3D ironlake_drpc_info(m);
> +	}
> +
> +	return err;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(drpc_info);
> +
> +static int frequency_info_show(struct seq_file *m, void *unused)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	struct intel_rps *rps =3D &gt->rps;
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_runtime_pm_get(uncore->rpm);
> +
> +	if (IS_GEN(i915, 5)) {
> +		u16 rgvswctl =3D intel_uncore_read16(uncore, MEMSWCTL);
> +		u16 rgvstat =3D intel_uncore_read16(uncore, MEMSTAT_ILK);
> +
> +		seq_printf(m, "Requested P-state: %d\n", (rgvswctl >> 8) & 0xf);
> +		seq_printf(m, "Requested VID: %d\n", rgvswctl & 0x3f);
> +		seq_printf(m, "Current VID: %d\n", (rgvstat & MEMSTAT_VID_MASK) >>
> +			   MEMSTAT_VID_SHIFT);
> +		seq_printf(m, "Current P-state: %d\n",
> +			   (rgvstat & MEMSTAT_PSTATE_MASK) >> MEMSTAT_PSTATE_SHIFT);
> +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +		u32 rpmodectl, freq_sts;
> +
> +		rpmodectl =3D intel_uncore_read(uncore, GEN6_RP_CONTROL);
> +		seq_printf(m, "Video Turbo Mode: %s\n",
> +			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
> +		seq_printf(m, "HW control enabled: %s\n",
> +			   yesno(rpmodectl & GEN6_RP_ENABLE));
> +		seq_printf(m, "SW control enabled: %s\n",
> +			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) =3D=3D
> +				  GEN6_RP_MEDIA_SW_MODE));
> +
> +		vlv_punit_get(i915);
> +		freq_sts =3D vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> +		vlv_punit_put(i915);
> +
> +		seq_printf(m, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
> +		seq_printf(m, "DDR freq: %d MHz\n", i915->mem_freq);
> +
> +		seq_printf(m, "actual GPU freq: %d MHz\n",
> +			   intel_gpu_freq(rps, (freq_sts >> 8) & 0xff));
> +
> +		seq_printf(m, "current GPU freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->cur_freq));
> +
> +		seq_printf(m, "max GPU freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->max_freq));
> +
> +		seq_printf(m, "min GPU freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->min_freq));
> +
> +		seq_printf(m, "idle GPU freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->idle_freq));
> +
> +		seq_printf(m, "efficient (RPe) frequency: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->efficient_freq));
> +	} else if (INTEL_GEN(i915) >=3D 6) {
> +		u32 rp_state_limits;
> +		u32 gt_perf_status;
> +		u32 rp_state_cap;
> +		u32 rpmodectl, rpinclimit, rpdeclimit;
> +		u32 rpstat, cagf, reqf;
> +		u32 rpupei, rpcurup, rpprevup;
> +		u32 rpdownei, rpcurdown, rpprevdown;
> +		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
> +		int max_freq;
> +
> +		rp_state_limits =3D intel_uncore_read(uncore, GEN6_RP_STATE_LIMITS);
> +		if (IS_GEN9_LP(i915)) {
> +			rp_state_cap =3D intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> +			gt_perf_status =3D intel_uncore_read(uncore, BXT_GT_PERF_STATUS);
> +		} else {
> +			rp_state_cap =3D intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
> +			gt_perf_status =3D intel_uncore_read(uncore, GEN6_GT_PERF_STATUS);
> +		}
> +
> +		/* RPSTAT1 is in the GT power well */
> +		intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> +
> +		reqf =3D intel_uncore_read(uncore, GEN6_RPNSWREQ);
> +		if (INTEL_GEN(i915) >=3D 9)
> +			reqf >>=3D 23;
> +		else {
> +			reqf &=3D ~GEN6_TURBO_DISABLE;
> +			if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +				reqf >>=3D 24;
> +			else
> +				reqf >>=3D 25;
> +		}
> +		reqf =3D intel_gpu_freq(rps, reqf);
> +
> +		rpmodectl =3D intel_uncore_read(uncore, GEN6_RP_CONTROL);
> +		rpinclimit =3D intel_uncore_read(uncore, GEN6_RP_UP_THRESHOLD);
> +		rpdeclimit =3D intel_uncore_read(uncore, GEN6_RP_DOWN_THRESHOLD);
> +
> +		rpstat =3D intel_uncore_read(uncore, GEN6_RPSTAT1);
> +		rpupei =3D intel_uncore_read(uncore, GEN6_RP_CUR_UP_EI) &  =

> GEN6_CURICONT_MASK;
> +		rpcurup =3D intel_uncore_read(uncore, GEN6_RP_CUR_UP) &  =

> GEN6_CURBSYTAVG_MASK;
> +		rpprevup =3D intel_uncore_read(uncore, GEN6_RP_PREV_UP) &  =

> GEN6_CURBSYTAVG_MASK;
> +		rpdownei =3D intel_uncore_read(uncore, GEN6_RP_CUR_DOWN_EI) &  =

> GEN6_CURIAVG_MASK;
> +		rpcurdown =3D intel_uncore_read(uncore, GEN6_RP_CUR_DOWN) &  =

> GEN6_CURBSYTAVG_MASK;
> +		rpprevdown =3D intel_uncore_read(uncore, GEN6_RP_PREV_DOWN) &  =

> GEN6_CURBSYTAVG_MASK;
> +		cagf =3D intel_rps_read_actual_frequency(rps);
> +
> +		intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> +
> +		if (INTEL_GEN(i915) >=3D 11) {
> +			pm_ier =3D intel_uncore_read(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);
> +			pm_imr =3D intel_uncore_read(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);
> +			/*
> +			 * The equivalent to the PM ISR & IIR cannot be read
> +			 * without affecting the current state of the system
> +			 */
> +			pm_isr =3D 0;
> +			pm_iir =3D 0;
> +		} else if (INTEL_GEN(i915) >=3D 8) {
> +			pm_ier =3D intel_uncore_read(uncore, GEN8_GT_IER(2));
> +			pm_imr =3D intel_uncore_read(uncore, GEN8_GT_IMR(2));
> +			pm_isr =3D intel_uncore_read(uncore, GEN8_GT_ISR(2));
> +			pm_iir =3D intel_uncore_read(uncore, GEN8_GT_IIR(2));
> +		} else {
> +			pm_ier =3D intel_uncore_read(uncore, GEN6_PMIER);
> +			pm_imr =3D intel_uncore_read(uncore, GEN6_PMIMR);
> +			pm_isr =3D intel_uncore_read(uncore, GEN6_PMISR);
> +			pm_iir =3D intel_uncore_read(uncore, GEN6_PMIIR);
> +		}
> +		pm_mask =3D intel_uncore_read(uncore, GEN6_PMINTRMSK);
> +
> +		seq_printf(m, "Video Turbo Mode: %s\n",
> +			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
> +		seq_printf(m, "HW control enabled: %s\n",
> +			   yesno(rpmodectl & GEN6_RP_ENABLE));
> +		seq_printf(m, "SW control enabled: %s\n",
> +			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) =3D=3D
> +				  GEN6_RP_MEDIA_SW_MODE));
> +
> +		seq_printf(m, "PM IER=3D0x%08x IMR=3D0x%08x, MASK=3D0x%08x\n",
> +			   pm_ier, pm_imr, pm_mask);
> +		if (INTEL_GEN(i915) <=3D 10)
> +			seq_printf(m, "PM ISR=3D0x%08x IIR=3D0x%08x\n",
> +				   pm_isr, pm_iir);
> +		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
> +			   rps->pm_intrmsk_mbz);
> +		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
> +		seq_printf(m, "Render p-state ratio: %d\n",
> +			   (gt_perf_status & (INTEL_GEN(i915) >=3D 9 ? 0x1ff00 : 0xff00)) >>  =

> 8);
> +		seq_printf(m, "Render p-state VID: %d\n",
> +			   gt_perf_status & 0xff);
> +		seq_printf(m, "Render p-state limit: %d\n",
> +			   rp_state_limits & 0xff);
> +		seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
> +		seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
> +		seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
> +		seq_printf(m, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
> +		seq_printf(m, "RPNSWREQ: %dMHz\n", reqf);
> +		seq_printf(m, "CAGF: %dMHz\n", cagf);
> +		seq_printf(m, "RP CUR UP EI: %d (%dus)\n",
> +			   rpupei, GT_PM_INTERVAL_TO_US(i915, rpupei));
> +		seq_printf(m, "RP CUR UP: %d (%dus)\n",
> +			   rpcurup, GT_PM_INTERVAL_TO_US(i915, rpcurup));
> +		seq_printf(m, "RP PREV UP: %d (%dus)\n",
> +			   rpprevup, GT_PM_INTERVAL_TO_US(i915, rpprevup));
> +		seq_printf(m, "Up threshold: %d%%\n",
> +			   rps->power.up_threshold);
> +
> +		seq_printf(m, "RP CUR DOWN EI: %d (%dus)\n",
> +			   rpdownei, GT_PM_INTERVAL_TO_US(i915, rpdownei));
> +		seq_printf(m, "RP CUR DOWN: %d (%dus)\n",
> +			   rpcurdown, GT_PM_INTERVAL_TO_US(i915, rpcurdown));
> +		seq_printf(m, "RP PREV DOWN: %d (%dus)\n",
> +			   rpprevdown, GT_PM_INTERVAL_TO_US(i915, rpprevdown));
> +		seq_printf(m, "Down threshold: %d%%\n",
> +			   rps->power.down_threshold);
> +
> +		max_freq =3D (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
> +			    rp_state_cap >> 16) & 0xff;
> +		max_freq *=3D (IS_GEN9_BC(i915) ||
> +			     INTEL_GEN(i915) >=3D 10 ? GEN9_FREQ_SCALER : 1);
> +		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
> +			   intel_gpu_freq(rps, max_freq));
> +
> +		max_freq =3D (rp_state_cap & 0xff00) >> 8;
> +		max_freq *=3D (IS_GEN9_BC(i915) ||
> +			     INTEL_GEN(i915) >=3D 10 ? GEN9_FREQ_SCALER : 1);
> +		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
> +			   intel_gpu_freq(rps, max_freq));
> +
> +		max_freq =3D (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
> +			    rp_state_cap >> 0) & 0xff;
> +		max_freq *=3D (IS_GEN9_BC(i915) ||
> +			     INTEL_GEN(i915) >=3D 10 ? GEN9_FREQ_SCALER : 1);
> +		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
> +			   intel_gpu_freq(rps, max_freq));
> +		seq_printf(m, "Max overclocked frequency: %dMHz\n",
> +			   intel_gpu_freq(rps, rps->max_freq));
> +
> +		seq_printf(m, "Current freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->cur_freq));
> +		seq_printf(m, "Actual freq: %d MHz\n", cagf);
> +		seq_printf(m, "Idle freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->idle_freq));
> +		seq_printf(m, "Min freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->min_freq));
> +		seq_printf(m, "Boost freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->boost_freq));
> +		seq_printf(m, "Max freq: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->max_freq));
> +		seq_printf(m,
> +			   "efficient (RPe) frequency: %d MHz\n",
> +			   intel_gpu_freq(rps, rps->efficient_freq));
> +	} else {
> +		seq_puts(m, "no P-state info available\n");
> +	}
> +
> +	seq_printf(m, "Current CD clock frequency: %d kHz\n",  =

> i915->cdclk.hw.cdclk);
> +	seq_printf(m, "Max CD clock frequency: %d kHz\n",  =

> i915->max_cdclk_freq);
> +	seq_printf(m, "Max pixel clock frequency: %d kHz\n",  =

> i915->max_dotclk_freq);
> +
> +	intel_runtime_pm_put(uncore->rpm, wakeref);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(frequency_info);
> +
> +static int llc_info_show(struct seq_file *m, void *data)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	const bool edram =3D INTEL_GEN(i915) > 8;
> +
> +	seq_printf(m, "LLC: %s\n", yesno(HAS_LLC(i915)));
> +	seq_printf(m, "%s: %uMB\n", edram ? "eDRAM" : "eLLC",
> +		   i915->edram_size_mb);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(llc_info);
> +
> +static int ring_freq_table_show(struct seq_file *m, void *unused)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct intel_rps *rps =3D &gt->rps;
> +	unsigned int max_gpu_freq, min_gpu_freq;
> +	intel_wakeref_t wakeref;
> +	int gpu_freq, ia_freq;
> +
> +	min_gpu_freq =3D rps->min_freq;
> +	max_gpu_freq =3D rps->max_freq;
> +	if (IS_GEN9_BC(i915) || INTEL_GEN(i915) >=3D 10) {
> +		/* Convert GT frequency to 50 HZ units */
> +		min_gpu_freq /=3D GEN9_FREQ_SCALER;
> +		max_gpu_freq /=3D GEN9_FREQ_SCALER;
> +	}
> +
> +	seq_puts(m, "GPU freq (MHz)\tEffective CPU freq (MHz)\tEffective Ring  =

> freq (MHz)\n");
> +
> +	wakeref =3D intel_runtime_pm_get(gt->uncore->rpm);
> +	for (gpu_freq =3D min_gpu_freq; gpu_freq <=3D max_gpu_freq; gpu_freq++)=
 {
> +		ia_freq =3D gpu_freq;
> +		sandybridge_pcode_read(i915,
> +				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
> +				       &ia_freq, NULL);
> +		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
> +			   intel_gpu_freq(rps,
> +					  (gpu_freq *
> +					   (IS_GEN9_BC(i915) ||
> +					    INTEL_GEN(i915) >=3D 10 ?
> +					    GEN9_FREQ_SCALER : 1))),
> +			   ((ia_freq >> 0) & 0xff) * 100,
> +			   ((ia_freq >> 8) & 0xff) * 100);
> +	}
> +	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
> +
> +	return 0;
> +}
> +
> +static bool ring_freq_table_eval(struct intel_gt *gt)
> +{
> +	return HAS_LLC(gt->i915) ? true : false;
> +}
> +
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(ring_freq_table);
> +
> +static const char *rps_power_to_str(unsigned int power)
> +{
> +	static const char * const strings[] =3D {
> +		[LOW_POWER] =3D "low power",
> +		[BETWEEN] =3D "mixed",
> +		[HIGH_POWER] =3D "high power",
> +	};
> +
> +	if (power >=3D ARRAY_SIZE(strings) || !strings[power])
> +		return "unknown";
> +
> +	return strings[power];
> +}
> +
> +static int rps_boost_info_show(struct seq_file *m, void *data)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	struct intel_rps *rps =3D &gt->rps;
> +	u32 act_freq;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_in_use(uncore->rpm, wakeref)
> +		act_freq =3D intel_rps_read_actual_frequency(rps);
> +
> +	seq_printf(m, "RPS enabled? %d\n", rps->enabled);
> +	seq_printf(m, "GPU busy? %s\n", yesno(gt->awake));
> +	seq_printf(m, "Boosts outstanding? %d\n",
> +		   atomic_read(&rps->num_waiters));
> +	seq_printf(m, "Interactive? %d\n", READ_ONCE(rps->power.interactive));
> +	seq_printf(m, "Frequency requested %d, actual %d\n",
> +		   intel_gpu_freq(rps, rps->cur_freq), act_freq);
> +	seq_printf(m, "  min hard:%d, soft:%d; max soft:%d, hard:%d\n",
> +		   intel_gpu_freq(rps, rps->min_freq),
> +		   intel_gpu_freq(rps, rps->min_freq_softlimit),
> +		   intel_gpu_freq(rps, rps->max_freq_softlimit),
> +		   intel_gpu_freq(rps, rps->max_freq));
> +	seq_printf(m, "  idle:%d, efficient:%d, boost:%d\n",
> +		   intel_gpu_freq(rps, rps->idle_freq),
> +		   intel_gpu_freq(rps, rps->efficient_freq),
> +		   intel_gpu_freq(rps, rps->boost_freq));
> +
> +	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
> +
> +	if (INTEL_GEN(i915) >=3D 6 && rps->enabled && gt->awake) {
> +		u32 rpup, rpupei;
> +		u32 rpdown, rpdownei;
> +
> +		intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> +		rpup =3D intel_uncore_read_fw(uncore, GEN6_RP_CUR_UP) & GEN6_RP_EI_MAS=
K;
> +		rpupei =3D intel_uncore_read_fw(uncore, GEN6_RP_CUR_UP_EI) &  =

> GEN6_RP_EI_MASK;
> +		rpdown =3D intel_uncore_read_fw(uncore, GEN6_RP_CUR_DOWN) &  =

> GEN6_RP_EI_MASK;
> +		rpdownei =3D intel_uncore_read_fw(uncore, GEN6_RP_CUR_DOWN_EI) &  =

> GEN6_RP_EI_MASK;
> +		intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> +
> +		seq_printf(m, "\nRPS Autotuning (current \"%s\" window):\n",
> +			   rps_power_to_str(rps->power.mode));
> +		seq_printf(m, "  Avg. up: %d%% [above threshold? %d%%]\n",
> +			   rpup && rpupei ? 100 * rpup / rpupei : 0,
> +			   rps->power.up_threshold);
> +		seq_printf(m, "  Avg. down: %d%% [below threshold? %d%%]\n",
> +			   rpdown && rpdownei ? 100 * rpdown / rpdownei : 0,
> +			   rps->power.down_threshold);
> +	} else {
> +		seq_puts(m, "\nRPS Autotuning inactive\n");
> +	}
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(rps_boost_info);
> +
> +static const struct gt_pm_debugfs_files {
> +	const char *name;
> +	const struct file_operations *fops;
> +	bool (*eval)(struct intel_gt *gt);
> +} gt_pm_debugfs_files[] =3D {
> +	{ "drpc_info", &drpc_info_fops, NULL },
> +	{ "frequency_info", &frequency_info_fops, NULL },
> +	{ "forcewake_domains", &forcewake_domains_fops, NULL },
> +	{ "llc_info", &llc_info_fops, NULL },
> +	{ "ring_freq_table", &ring_freq_table_fops, ring_freq_table_eval },
> +	{ "rps_boost_info", &rps_boost_info_fops, NULL },
> +};
> +
> +int intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry  =

> *root)
> +{
> +	int i;
> +
> +	if (unlikely(!root))
> +		return -ENODEV;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(gt_pm_debugfs_files); i++) {
> +		const struct gt_pm_debugfs_files *f =3D &gt_pm_debugfs_files[i];
> +
> +		if (f->eval && !f->eval(gt))
> +			continue;
> +
> +		debugfs_create_file(f->name, 0444, root, gt, f->fops);
> +	}
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_pm.h  =

> b/drivers/gpu/drm/i915/gt/debugfs_pm.h
> new file mode 100644
> index 000000000000..0c5987b6be18
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_pm.h
> @@ -0,0 +1,16 @@
> +/*
> + * SPDX-License-Identifier: MIT

SPDX shall be in first line (in .h with /**/)

> + *
> + * Copyright =A9 2019 Intel Corporation
> + */
> +
> +#ifndef DEBUGFS_PM
> +#define DEBUGFS_PM
> +
> +#include <linux/seq_file.h>
> +
> +#include "intel_gt_types.h"
> +
> +int intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry  =

> *root);
> +
> +#endif /* DEBUGFS_PM */
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c  =

> b/drivers/gpu/drm/i915/i915_debugfs.c
> index 3ec26b6a48c1..cfe3dd308c67 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -40,11 +40,10 @@
>  #include "display/intel_psr.h"
> #include "gem/i915_gem_context.h"
> +#include "gt/debugfs_gt.h"
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_gt_requests.h"
>  #include "gt/intel_reset.h"
> -#include "gt/intel_rc6.h"
> -#include "gt/intel_rps.h"
>  #include "gt/uc/intel_guc_submission.h"
> #include "i915_debugfs.h"
> @@ -778,443 +777,6 @@ static const struct file_operations  =

> i915_error_state_fops =3D {
>  };
>  #endif
> -static int i915_frequency_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_uncore *uncore =3D &dev_priv->uncore;
> -	struct intel_rps *rps =3D &dev_priv->gt.rps;
> -	intel_wakeref_t wakeref;
> -	int ret =3D 0;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	if (IS_GEN(dev_priv, 5)) {
> -		u16 rgvswctl =3D intel_uncore_read16(uncore, MEMSWCTL);
> -		u16 rgvstat =3D intel_uncore_read16(uncore, MEMSTAT_ILK);
> -
> -		seq_printf(m, "Requested P-state: %d\n", (rgvswctl >> 8) & 0xf);
> -		seq_printf(m, "Requested VID: %d\n", rgvswctl & 0x3f);
> -		seq_printf(m, "Current VID: %d\n", (rgvstat & MEMSTAT_VID_MASK) >>
> -			   MEMSTAT_VID_SHIFT);
> -		seq_printf(m, "Current P-state: %d\n",
> -			   (rgvstat & MEMSTAT_PSTATE_MASK) >> MEMSTAT_PSTATE_SHIFT);
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		u32 rpmodectl, freq_sts;
> -
> -		rpmodectl =3D I915_READ(GEN6_RP_CONTROL);
> -		seq_printf(m, "Video Turbo Mode: %s\n",
> -			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
> -		seq_printf(m, "HW control enabled: %s\n",
> -			   yesno(rpmodectl & GEN6_RP_ENABLE));
> -		seq_printf(m, "SW control enabled: %s\n",
> -			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) =3D=3D
> -				  GEN6_RP_MEDIA_SW_MODE));
> -
> -		vlv_punit_get(dev_priv);
> -		freq_sts =3D vlv_punit_read(dev_priv, PUNIT_REG_GPU_FREQ_STS);
> -		vlv_punit_put(dev_priv);
> -
> -		seq_printf(m, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
> -		seq_printf(m, "DDR freq: %d MHz\n", dev_priv->mem_freq);
> -
> -		seq_printf(m, "actual GPU freq: %d MHz\n",
> -			   intel_gpu_freq(rps, (freq_sts >> 8) & 0xff));
> -
> -		seq_printf(m, "current GPU freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->cur_freq));
> -
> -		seq_printf(m, "max GPU freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->max_freq));
> -
> -		seq_printf(m, "min GPU freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->min_freq));
> -
> -		seq_printf(m, "idle GPU freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->idle_freq));
> -
> -		seq_printf(m,
> -			   "efficient (RPe) frequency: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->efficient_freq));
> -	} else if (INTEL_GEN(dev_priv) >=3D 6) {
> -		u32 rp_state_limits;
> -		u32 gt_perf_status;
> -		u32 rp_state_cap;
> -		u32 rpmodectl, rpinclimit, rpdeclimit;
> -		u32 rpstat, cagf, reqf;
> -		u32 rpupei, rpcurup, rpprevup;
> -		u32 rpdownei, rpcurdown, rpprevdown;
> -		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
> -		int max_freq;
> -
> -		rp_state_limits =3D I915_READ(GEN6_RP_STATE_LIMITS);
> -		if (IS_GEN9_LP(dev_priv)) {
> -			rp_state_cap =3D I915_READ(BXT_RP_STATE_CAP);
> -			gt_perf_status =3D I915_READ(BXT_GT_PERF_STATUS);
> -		} else {
> -			rp_state_cap =3D I915_READ(GEN6_RP_STATE_CAP);
> -			gt_perf_status =3D I915_READ(GEN6_GT_PERF_STATUS);
> -		}
> -
> -		/* RPSTAT1 is in the GT power well */
> -		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
> -
> -		reqf =3D I915_READ(GEN6_RPNSWREQ);
> -		if (INTEL_GEN(dev_priv) >=3D 9)
> -			reqf >>=3D 23;
> -		else {
> -			reqf &=3D ~GEN6_TURBO_DISABLE;
> -			if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> -				reqf >>=3D 24;
> -			else
> -				reqf >>=3D 25;
> -		}
> -		reqf =3D intel_gpu_freq(rps, reqf);
> -
> -		rpmodectl =3D I915_READ(GEN6_RP_CONTROL);
> -		rpinclimit =3D I915_READ(GEN6_RP_UP_THRESHOLD);
> -		rpdeclimit =3D I915_READ(GEN6_RP_DOWN_THRESHOLD);
> -
> -		rpstat =3D I915_READ(GEN6_RPSTAT1);
> -		rpupei =3D I915_READ(GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
> -		rpcurup =3D I915_READ(GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
> -		rpprevup =3D I915_READ(GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
> -		rpdownei =3D I915_READ(GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
> -		rpcurdown =3D I915_READ(GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
> -		rpprevdown =3D I915_READ(GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
> -		cagf =3D intel_rps_read_actual_frequency(rps);
> -
> -		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
> -
> -		if (INTEL_GEN(dev_priv) >=3D 11) {
> -			pm_ier =3D I915_READ(GEN11_GPM_WGBOXPERF_INTR_ENABLE);
> -			pm_imr =3D I915_READ(GEN11_GPM_WGBOXPERF_INTR_MASK);
> -			/*
> -			 * The equivalent to the PM ISR & IIR cannot be read
> -			 * without affecting the current state of the system
> -			 */
> -			pm_isr =3D 0;
> -			pm_iir =3D 0;
> -		} else if (INTEL_GEN(dev_priv) >=3D 8) {
> -			pm_ier =3D I915_READ(GEN8_GT_IER(2));
> -			pm_imr =3D I915_READ(GEN8_GT_IMR(2));
> -			pm_isr =3D I915_READ(GEN8_GT_ISR(2));
> -			pm_iir =3D I915_READ(GEN8_GT_IIR(2));
> -		} else {
> -			pm_ier =3D I915_READ(GEN6_PMIER);
> -			pm_imr =3D I915_READ(GEN6_PMIMR);
> -			pm_isr =3D I915_READ(GEN6_PMISR);
> -			pm_iir =3D I915_READ(GEN6_PMIIR);
> -		}
> -		pm_mask =3D I915_READ(GEN6_PMINTRMSK);
> -
> -		seq_printf(m, "Video Turbo Mode: %s\n",
> -			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
> -		seq_printf(m, "HW control enabled: %s\n",
> -			   yesno(rpmodectl & GEN6_RP_ENABLE));
> -		seq_printf(m, "SW control enabled: %s\n",
> -			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) =3D=3D
> -				  GEN6_RP_MEDIA_SW_MODE));
> -
> -		seq_printf(m, "PM IER=3D0x%08x IMR=3D0x%08x, MASK=3D0x%08x\n",
> -			   pm_ier, pm_imr, pm_mask);
> -		if (INTEL_GEN(dev_priv) <=3D 10)
> -			seq_printf(m, "PM ISR=3D0x%08x IIR=3D0x%08x\n",
> -				   pm_isr, pm_iir);
> -		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
> -			   rps->pm_intrmsk_mbz);
> -		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
> -		seq_printf(m, "Render p-state ratio: %d\n",
> -			   (gt_perf_status & (INTEL_GEN(dev_priv) >=3D 9 ? 0x1ff00 : 0xff00))=
  =

> >> 8);
> -		seq_printf(m, "Render p-state VID: %d\n",
> -			   gt_perf_status & 0xff);
> -		seq_printf(m, "Render p-state limit: %d\n",
> -			   rp_state_limits & 0xff);
> -		seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
> -		seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
> -		seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
> -		seq_printf(m, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
> -		seq_printf(m, "RPNSWREQ: %dMHz\n", reqf);
> -		seq_printf(m, "CAGF: %dMHz\n", cagf);
> -		seq_printf(m, "RP CUR UP EI: %d (%dus)\n",
> -			   rpupei, GT_PM_INTERVAL_TO_US(dev_priv, rpupei));
> -		seq_printf(m, "RP CUR UP: %d (%dus)\n",
> -			   rpcurup, GT_PM_INTERVAL_TO_US(dev_priv, rpcurup));
> -		seq_printf(m, "RP PREV UP: %d (%dus)\n",
> -			   rpprevup, GT_PM_INTERVAL_TO_US(dev_priv, rpprevup));
> -		seq_printf(m, "Up threshold: %d%%\n",
> -			   rps->power.up_threshold);
> -
> -		seq_printf(m, "RP CUR DOWN EI: %d (%dus)\n",
> -			   rpdownei, GT_PM_INTERVAL_TO_US(dev_priv, rpdownei));
> -		seq_printf(m, "RP CUR DOWN: %d (%dus)\n",
> -			   rpcurdown, GT_PM_INTERVAL_TO_US(dev_priv, rpcurdown));
> -		seq_printf(m, "RP PREV DOWN: %d (%dus)\n",
> -			   rpprevdown, GT_PM_INTERVAL_TO_US(dev_priv, rpprevdown));
> -		seq_printf(m, "Down threshold: %d%%\n",
> -			   rps->power.down_threshold);
> -
> -		max_freq =3D (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 0 :
> -			    rp_state_cap >> 16) & 0xff;
> -		max_freq *=3D (IS_GEN9_BC(dev_priv) ||
> -			     INTEL_GEN(dev_priv) >=3D 10 ? GEN9_FREQ_SCALER : 1);
> -		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq =3D (rp_state_cap & 0xff00) >> 8;
> -		max_freq *=3D (IS_GEN9_BC(dev_priv) ||
> -			     INTEL_GEN(dev_priv) >=3D 10 ? GEN9_FREQ_SCALER : 1);
> -		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq =3D (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 16 :
> -			    rp_state_cap >> 0) & 0xff;
> -		max_freq *=3D (IS_GEN9_BC(dev_priv) ||
> -			     INTEL_GEN(dev_priv) >=3D 10 ? GEN9_FREQ_SCALER : 1);
> -		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -		seq_printf(m, "Max overclocked frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, rps->max_freq));
> -
> -		seq_printf(m, "Current freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->cur_freq));
> -		seq_printf(m, "Actual freq: %d MHz\n", cagf);
> -		seq_printf(m, "Idle freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->idle_freq));
> -		seq_printf(m, "Min freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->min_freq));
> -		seq_printf(m, "Boost freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->boost_freq));
> -		seq_printf(m, "Max freq: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->max_freq));
> -		seq_printf(m,
> -			   "efficient (RPe) frequency: %d MHz\n",
> -			   intel_gpu_freq(rps, rps->efficient_freq));
> -	} else {
> -		seq_puts(m, "no P-state info available\n");
> -	}
> -
> -	seq_printf(m, "Current CD clock frequency: %d kHz\n",  =

> dev_priv->cdclk.hw.cdclk);
> -	seq_printf(m, "Max CD clock frequency: %d kHz\n",  =

> dev_priv->max_cdclk_freq);
> -	seq_printf(m, "Max pixel clock frequency: %d kHz\n",  =

> dev_priv->max_dotclk_freq);
> -
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -	return ret;
> -}
> -
> -static int ironlake_drpc_info(struct seq_file *m)
> -{
> -	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> -	struct intel_uncore *uncore =3D &i915->uncore;
> -	u32 rgvmodectl, rstdbyctl;
> -	u16 crstandvid;
> -
> -	rgvmodectl =3D intel_uncore_read(uncore, MEMMODECTL);
> -	rstdbyctl =3D intel_uncore_read(uncore, RSTDBYCTL);
> -	crstandvid =3D intel_uncore_read16(uncore, CRSTANDVID);
> -
> -	seq_printf(m, "HD boost: %s\n", yesno(rgvmodectl & MEMMODE_BOOST_EN));
> -	seq_printf(m, "Boost freq: %d\n",
> -		   (rgvmodectl & MEMMODE_BOOST_FREQ_MASK) >>
> -		   MEMMODE_BOOST_FREQ_SHIFT);
> -	seq_printf(m, "HW control enabled: %s\n",
> -		   yesno(rgvmodectl & MEMMODE_HWIDLE_EN));
> -	seq_printf(m, "SW control enabled: %s\n",
> -		   yesno(rgvmodectl & MEMMODE_SWMODE_EN));
> -	seq_printf(m, "Gated voltage change: %s\n",
> -		   yesno(rgvmodectl & MEMMODE_RCLK_GATE));
> -	seq_printf(m, "Starting frequency: P%d\n",
> -		   (rgvmodectl & MEMMODE_FSTART_MASK) >> MEMMODE_FSTART_SHIFT);
> -	seq_printf(m, "Max P-state: P%d\n",
> -		   (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT);
> -	seq_printf(m, "Min P-state: P%d\n", (rgvmodectl & MEMMODE_FMIN_MASK));
> -	seq_printf(m, "RS1 VID: %d\n", (crstandvid & 0x3f));
> -	seq_printf(m, "RS2 VID: %d\n", ((crstandvid >> 8) & 0x3f));
> -	seq_printf(m, "Render standby enabled: %s\n",
> -		   yesno(!(rstdbyctl & RCX_SW_EXIT)));
> -	seq_puts(m, "Current RS state: ");
> -	switch (rstdbyctl & RSX_STATUS_MASK) {
> -	case RSX_STATUS_ON:
> -		seq_puts(m, "on\n");
> -		break;
> -	case RSX_STATUS_RC1:
> -		seq_puts(m, "RC1\n");
> -		break;
> -	case RSX_STATUS_RC1E:
> -		seq_puts(m, "RC1E\n");
> -		break;
> -	case RSX_STATUS_RS1:
> -		seq_puts(m, "RS1\n");
> -		break;
> -	case RSX_STATUS_RS2:
> -		seq_puts(m, "RS2 (RC6)\n");
> -		break;
> -	case RSX_STATUS_RS3:
> -		seq_puts(m, "RC3 (RC6+)\n");
> -		break;
> -	default:
> -		seq_puts(m, "unknown\n");
> -		break;
> -	}
> -
> -	return 0;
> -}
> -
> -static int i915_forcewake_domains(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> -	struct intel_uncore *uncore =3D &i915->uncore;
> -	struct intel_uncore_forcewake_domain *fw_domain;
> -	unsigned int tmp;
> -
> -	seq_printf(m, "user.bypass_count =3D %u\n",
> -		   uncore->user_forcewake_count);
> -
> -	for_each_fw_domain(fw_domain, uncore, tmp)
> -		seq_printf(m, "%s.wake_count =3D %u\n",
> -			   intel_uncore_forcewake_domain_to_str(fw_domain->id),
> -			   READ_ONCE(fw_domain->wake_count));
> -
> -	return 0;
> -}
> -
> -static void print_rc6_res(struct seq_file *m,
> -			  const char *title,
> -			  const i915_reg_t reg)
> -{
> -	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> -	intel_wakeref_t wakeref;
> -
> -	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> -		seq_printf(m, "%s %u (%llu us)\n", title,
> -			   intel_uncore_read(&i915->uncore, reg),
> -			   intel_rc6_residency_us(&i915->gt.rc6, reg));
> -}
> -
> -static int vlv_drpc_info(struct seq_file *m)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	u32 rcctl1, pw_status;
> -
> -	pw_status =3D I915_READ(VLV_GTLC_PW_STATUS);
> -	rcctl1 =3D I915_READ(GEN6_RC_CONTROL);
> -
> -	seq_printf(m, "RC6 Enabled: %s\n",
> -		   yesno(rcctl1 & (GEN7_RC_CTL_TO_MODE |
> -					GEN6_RC_CTL_EI_MODE(1))));
> -	seq_printf(m, "Render Power Well: %s\n",
> -		   (pw_status & VLV_GTLC_PW_RENDER_STATUS_MASK) ? "Up" : "Down");
> -	seq_printf(m, "Media Power Well: %s\n",
> -		   (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");
> -
> -	print_rc6_res(m, "Render RC6 residency since boot:",  =

> VLV_GT_RENDER_RC6);
> -	print_rc6_res(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);
> -
> -	return i915_forcewake_domains(m, NULL);
> -}
> -
> -static int gen6_drpc_info(struct seq_file *m)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	u32 gt_core_status, rcctl1, rc6vids =3D 0;
> -	u32 gen9_powergate_enable =3D 0, gen9_powergate_status =3D 0;
> -
> -	gt_core_status =3D I915_READ_FW(GEN6_GT_CORE_STATUS);
> -	trace_i915_reg_rw(false, GEN6_GT_CORE_STATUS, gt_core_status, 4, true);
> -
> -	rcctl1 =3D I915_READ(GEN6_RC_CONTROL);
> -	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		gen9_powergate_enable =3D I915_READ(GEN9_PG_ENABLE);
> -		gen9_powergate_status =3D I915_READ(GEN9_PWRGT_DOMAIN_STATUS);
> -	}
> -
> -	if (INTEL_GEN(dev_priv) <=3D 7)
> -		sandybridge_pcode_read(dev_priv, GEN6_PCODE_READ_RC6VIDS,
> -				       &rc6vids, NULL);
> -
> -	seq_printf(m, "RC1e Enabled: %s\n",
> -		   yesno(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
> -	seq_printf(m, "RC6 Enabled: %s\n",
> -		   yesno(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
> -	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		seq_printf(m, "Render Well Gating Enabled: %s\n",
> -			yesno(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));
> -		seq_printf(m, "Media Well Gating Enabled: %s\n",
> -			yesno(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));
> -	}
> -	seq_printf(m, "Deep RC6 Enabled: %s\n",
> -		   yesno(rcctl1 & GEN6_RC_CTL_RC6p_ENABLE));
> -	seq_printf(m, "Deepest RC6 Enabled: %s\n",
> -		   yesno(rcctl1 & GEN6_RC_CTL_RC6pp_ENABLE));
> -	seq_puts(m, "Current RC state: ");
> -	switch (gt_core_status & GEN6_RCn_MASK) {
> -	case GEN6_RC0:
> -		if (gt_core_status & GEN6_CORE_CPD_STATE_MASK)
> -			seq_puts(m, "Core Power Down\n");
> -		else
> -			seq_puts(m, "on\n");
> -		break;
> -	case GEN6_RC3:
> -		seq_puts(m, "RC3\n");
> -		break;
> -	case GEN6_RC6:
> -		seq_puts(m, "RC6\n");
> -		break;
> -	case GEN6_RC7:
> -		seq_puts(m, "RC7\n");
> -		break;
> -	default:
> -		seq_puts(m, "Unknown\n");
> -		break;
> -	}
> -
> -	seq_printf(m, "Core Power Down: %s\n",
> -		   yesno(gt_core_status & GEN6_CORE_CPD_STATE_MASK));
> -	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		seq_printf(m, "Render Power Well: %s\n",
> -			(gen9_powergate_status &
> -			 GEN9_PWRGT_RENDER_STATUS_MASK) ? "Up" : "Down");
> -		seq_printf(m, "Media Power Well: %s\n",
> -			(gen9_powergate_status &
> -			 GEN9_PWRGT_MEDIA_STATUS_MASK) ? "Up" : "Down");
> -	}
> -
> -	/* Not exactly sure what this is */
> -	print_rc6_res(m, "RC6 \"Locked to RPn\" residency since boot:",
> -		      GEN6_GT_GFX_RC6_LOCKED);
> -	print_rc6_res(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
> -	print_rc6_res(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
> -	print_rc6_res(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);
> -
> -	if (INTEL_GEN(dev_priv) <=3D 7) {
> -		seq_printf(m, "RC6   voltage: %dmV\n",
> -			   GEN6_DECODE_RC6_VID(((rc6vids >> 0) & 0xff)));
> -		seq_printf(m, "RC6+  voltage: %dmV\n",
> -			   GEN6_DECODE_RC6_VID(((rc6vids >> 8) & 0xff)));
> -		seq_printf(m, "RC6++ voltage: %dmV\n",
> -			   GEN6_DECODE_RC6_VID(((rc6vids >> 16) & 0xff)));
> -	}
> -
> -	return i915_forcewake_domains(m, NULL);
> -}
> -
> -static int i915_drpc_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	intel_wakeref_t wakeref;
> -	int err =3D -ENODEV;
> -
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> -		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -			err =3D vlv_drpc_info(m);
> -		else if (INTEL_GEN(dev_priv) >=3D 6)
> -			err =3D gen6_drpc_info(m);
> -		else
> -			err =3D ironlake_drpc_info(m);
> -	}
> -
> -	return err;
> -}
> -
>  static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -1362,47 +924,6 @@ static int i915_sr_status(struct seq_file *m, void  =

> *unused)
>  	return 0;
>  }
> -static int i915_ring_freq_table(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_rps *rps =3D &dev_priv->gt.rps;
> -	unsigned int max_gpu_freq, min_gpu_freq;
> -	intel_wakeref_t wakeref;
> -	int gpu_freq, ia_freq;
> -
> -	if (!HAS_LLC(dev_priv))
> -		return -ENODEV;
> -
> -	min_gpu_freq =3D rps->min_freq;
> -	max_gpu_freq =3D rps->max_freq;
> -	if (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >=3D 10) {
> -		/* Convert GT frequency to 50 HZ units */
> -		min_gpu_freq /=3D GEN9_FREQ_SCALER;
> -		max_gpu_freq /=3D GEN9_FREQ_SCALER;
> -	}
> -
> -	seq_puts(m, "GPU freq (MHz)\tEffective CPU freq (MHz)\tEffective Ring  =

> freq (MHz)\n");
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -	for (gpu_freq =3D min_gpu_freq; gpu_freq <=3D max_gpu_freq; gpu_freq++)=
 {
> -		ia_freq =3D gpu_freq;
> -		sandybridge_pcode_read(dev_priv,
> -				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
> -				       &ia_freq, NULL);
> -		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
> -			   intel_gpu_freq(rps,
> -					  (gpu_freq *
> -					   (IS_GEN9_BC(dev_priv) ||
> -					    INTEL_GEN(dev_priv) >=3D 10 ?
> -					    GEN9_FREQ_SCALER : 1))),
> -			   ((ia_freq >> 0) & 0xff) * 100,
> -			   ((ia_freq >> 8) & 0xff) * 100);
> -	}
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
>  static int i915_opregion(struct seq_file *m, void *unused)
>  {
>  	struct intel_opregion *opregion =3D &node_to_i915(m->private)->opregion;
> @@ -1605,87 +1126,6 @@ static int i915_swizzle_info(struct seq_file *m,  =

> void *data)
>  	return 0;
>  }
> -static const char *rps_power_to_str(unsigned int power)
> -{
> -	static const char * const strings[] =3D {
> -		[LOW_POWER] =3D "low power",
> -		[BETWEEN] =3D "mixed",
> -		[HIGH_POWER] =3D "high power",
> -	};
> -
> -	if (power >=3D ARRAY_SIZE(strings) || !strings[power])
> -		return "unknown";
> -
> -	return strings[power];
> -}
> -
> -static int i915_rps_boost_info(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_rps *rps =3D &dev_priv->gt.rps;
> -	u32 act_freq;
> -	intel_wakeref_t wakeref;
> -
> -	with_intel_runtime_pm_if_in_use(&dev_priv->runtime_pm, wakeref)
> -		act_freq =3D intel_rps_read_actual_frequency(rps);
> -
> -	seq_printf(m, "RPS enabled? %d\n", rps->enabled);
> -	seq_printf(m, "GPU busy? %s\n", yesno(dev_priv->gt.awake));
> -	seq_printf(m, "Boosts outstanding? %d\n",
> -		   atomic_read(&rps->num_waiters));
> -	seq_printf(m, "Interactive? %d\n", READ_ONCE(rps->power.interactive));
> -	seq_printf(m, "Frequency requested %d, actual %d\n",
> -		   intel_gpu_freq(rps, rps->cur_freq), act_freq);
> -	seq_printf(m, "  min hard:%d, soft:%d; max soft:%d, hard:%d\n",
> -		   intel_gpu_freq(rps, rps->min_freq),
> -		   intel_gpu_freq(rps, rps->min_freq_softlimit),
> -		   intel_gpu_freq(rps, rps->max_freq_softlimit),
> -		   intel_gpu_freq(rps, rps->max_freq));
> -	seq_printf(m, "  idle:%d, efficient:%d, boost:%d\n",
> -		   intel_gpu_freq(rps, rps->idle_freq),
> -		   intel_gpu_freq(rps, rps->efficient_freq),
> -		   intel_gpu_freq(rps, rps->boost_freq));
> -
> -	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
> -
> -	if (INTEL_GEN(dev_priv) >=3D 6 && rps->enabled && dev_priv->gt.awake) {
> -		u32 rpup, rpupei;
> -		u32 rpdown, rpdownei;
> -
> -		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
> -		rpup =3D I915_READ_FW(GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
> -		rpupei =3D I915_READ_FW(GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
> -		rpdown =3D I915_READ_FW(GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
> -		rpdownei =3D I915_READ_FW(GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
> -		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
> -
> -		seq_printf(m, "\nRPS Autotuning (current \"%s\" window):\n",
> -			   rps_power_to_str(rps->power.mode));
> -		seq_printf(m, "  Avg. up: %d%% [above threshold? %d%%]\n",
> -			   rpup && rpupei ? 100 * rpup / rpupei : 0,
> -			   rps->power.up_threshold);
> -		seq_printf(m, "  Avg. down: %d%% [below threshold? %d%%]\n",
> -			   rpdown && rpdownei ? 100 * rpdown / rpdownei : 0,
> -			   rps->power.down_threshold);
> -	} else {
> -		seq_puts(m, "\nRPS Autotuning inactive\n");
> -	}
> -
> -	return 0;
> -}
> -
> -static int i915_llc(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	const bool edram =3D INTEL_GEN(dev_priv) > 8;
> -
> -	seq_printf(m, "LLC: %s\n", yesno(HAS_LLC(dev_priv)));
> -	seq_printf(m, "%s: %uMB\n", edram ? "eDRAM" : "eLLC",
> -		   dev_priv->edram_size_mb);
> -
> -	return 0;
> -}
> -
>  static int i915_huc_load_status_info(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -4246,9 +3686,6 @@ static const struct drm_info_list  =

> i915_debugfs_list[] =3D {
>  	{"i915_guc_load_err_log_dump", i915_guc_log_dump, 0, (void *)1},
>  	{"i915_guc_stage_pool", i915_guc_stage_pool, 0},
>  	{"i915_huc_load_status", i915_huc_load_status_info, 0},
> -	{"i915_frequency_info", i915_frequency_info, 0},
> -	{"i915_drpc_info", i915_drpc_info, 0},
> -	{"i915_ring_freq_table", i915_ring_freq_table, 0},
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
>  	{"i915_fbc_status", i915_fbc_status, 0},
>  	{"i915_ips_status", i915_ips_status, 0},
> @@ -4257,9 +3694,7 @@ static const struct drm_info_list  =

> i915_debugfs_list[] =3D {
>  	{"i915_vbt", i915_vbt, 0},
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>  	{"i915_context_status", i915_context_status, 0},
> -	{"i915_forcewake_domains", i915_forcewake_domains, 0},
>  	{"i915_swizzle_info", i915_swizzle_info, 0},
> -	{"i915_llc", i915_llc, 0},
>  	{"i915_edp_psr_status", i915_edp_psr_status, 0},
>  	{"i915_energy_uJ", i915_energy_uJ, 0},
>  	{"i915_runtime_pm_status", i915_runtime_pm_status, 0},
> @@ -4275,7 +3710,6 @@ static const struct drm_info_list  =

> i915_debugfs_list[] =3D {
>  	{"i915_ddb_info", i915_ddb_info, 0},
>  	{"i915_sseu_status", i915_sseu_status, 0},
>  	{"i915_drrs_status", i915_drrs_status, 0},
> -	{"i915_rps_boost_info", i915_rps_boost_info, 0},
>  };
>  #define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
> @@ -4311,6 +3745,7 @@ static const struct i915_debugfs_files {
>  int i915_debugfs_register(struct drm_i915_private *dev_priv)
>  {
>  	struct drm_minor *minor =3D dev_priv->drm.primary;
> +	int err;
>  	int i;
> 	debugfs_create_file("i915_forcewake_user", S_IRUSR, minor->debugfs_root,
> @@ -4324,9 +3759,13 @@ int i915_debugfs_register(struct drm_i915_private  =

> *dev_priv)
>  				    i915_debugfs_files[i].fops);
>  	}
> -	return drm_debugfs_create_files(i915_debugfs_list,
> -					I915_DEBUGFS_ENTRIES,
> -					minor->debugfs_root, minor);
> +	err =3D drm_debugfs_create_files(i915_debugfs_list,
> +				       I915_DEBUGFS_ENTRIES,
> +				       minor->debugfs_root, minor);
> +	if (err)
> +		return err;
> +
> +	return debugfs_gt_init(&dev_priv->gt);
>  }
> struct dpcd_block {
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
