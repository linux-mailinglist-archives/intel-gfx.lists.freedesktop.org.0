Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EF918C902
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 09:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEBCB6EAE8;
	Fri, 20 Mar 2020 08:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4203 seconds by postgrey-1.36 at gabe;
 Fri, 20 Mar 2020 08:36:19 UTC
Received: from 6.mo177.mail-out.ovh.net (6.mo177.mail-out.ovh.net
 [46.105.51.249])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 147696EAE4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 08:36:18 +0000 (UTC)
Received: from player698.ha.ovh.net (unknown [10.110.115.231])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 7EBAB128629
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 04:49:21 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player698.ha.ovh.net (Postfix) with ESMTPSA id 83B37109614F1;
 Fri, 20 Mar 2020 03:49:06 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri, 20 Mar 2020 05:49:01 +0200
Message-Id: <20200320034901.102550-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 4413527637245805149
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudegtddgieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: move files more files into
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andi Shyti <andi.shyti@intel.com>

The following interfaces:

i915_wedged
i915_forcewake_user
i915_gem_interrupt
i915_sseu_status

are dependent on gt values. Put them inside gt/ and drop the
"i915_" prefix name. This would be the new structure:

  gt
  |
  +-- forcewake_user
  |
  +-- interrupt_info_show
  |
  +-- sseu_status
  |
  +-- wedge

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
---
Hi,

this patch is the first of a series that aims to refactor the
debugfs structure in the i915. Some changes will affect the
debugfs framework as well.

It is based on Daniele's series and it applies only on top of
that.

Thanks Tvrtko for the review,
Andi

Changelog
=========
v2:
 - dropped changes on "drop_caches", they were indeed irrelevant
 - improved interrupt info function

 drivers/gpu/drm/i915/gt/debugfs_gt.c    | 464 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c |  32 ++
 drivers/gpu/drm/i915/i915_debugfs.c     | 441 +---------------------
 3 files changed, 499 insertions(+), 438 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
index fcbc57e226c3..ab731350daea 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -5,12 +5,472 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/sched/mm.h>
 
 #include "debugfs_engines.h"
 #include "debugfs_gt.h"
 #include "debugfs_gt_pm.h"
-#include "uc/debugfs_uc.h"
 #include "i915_drv.h"
+#include "intel_gt_pm.h"
+#include "intel_gt_requests.h"
+#include "uc/debugfs_uc.h"
+
+static void
+intel_sseu_copy_subslices(const struct sseu_dev_info *sseu, int slice,
+			  u8 *to_mask)
+{
+	int offset = slice * sseu->ss_stride;
+
+	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
+}
+
+static void cherryview_sseu_device_status(struct intel_gt *gt,
+					  struct sseu_dev_info *sseu)
+{
+#define SS_MAX 2
+	const int ss_max = SS_MAX;
+	u32 sig1[SS_MAX], sig2[SS_MAX];
+	int ss;
+
+	sig1[0] = intel_uncore_read(gt->uncore, CHV_POWER_SS0_SIG1);
+	sig1[1] = intel_uncore_read(gt->uncore, CHV_POWER_SS1_SIG1);
+	sig2[0] = intel_uncore_read(gt->uncore, CHV_POWER_SS0_SIG2);
+	sig2[1] = intel_uncore_read(gt->uncore, CHV_POWER_SS1_SIG2);
+
+	for (ss = 0; ss < ss_max; ss++) {
+		unsigned int eu_cnt;
+
+		if (sig1[ss] & CHV_SS_PG_ENABLE)
+			/* skip disabled subslice */
+			continue;
+
+		sseu->slice_mask = BIT(0);
+		sseu->subslice_mask[0] |= BIT(ss);
+		eu_cnt = ((sig1[ss] & CHV_EU08_PG_ENABLE) ? 0 : 2) +
+			 ((sig1[ss] & CHV_EU19_PG_ENABLE) ? 0 : 2) +
+			 ((sig1[ss] & CHV_EU210_PG_ENABLE) ? 0 : 2) +
+			 ((sig2[ss] & CHV_EU311_PG_ENABLE) ? 0 : 2);
+		sseu->eu_total += eu_cnt;
+		sseu->eu_per_subslice = max_t(unsigned int,
+					      sseu->eu_per_subslice, eu_cnt);
+	}
+#undef SS_MAX
+}
+
+static void gen10_sseu_device_status(struct intel_gt *gt,
+				     struct sseu_dev_info *sseu)
+{
+#define SS_MAX 6
+	const struct intel_runtime_info *info = RUNTIME_INFO(gt->i915);
+	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
+	int s, ss;
+
+	for (s = 0; s < info->sseu.max_slices; s++) {
+		/*
+		 * FIXME: Valid SS Mask respects the spec and read
+		 * only valid bits for those registers, excluding reserved
+		 * although this seems wrong because it would leave many
+		 * subslices without ACK.
+		 */
+		s_reg[s] = intel_uncore_read(gt->uncore,
+					     GEN10_SLICE_PGCTL_ACK(s)) &
+			GEN10_PGCTL_VALID_SS_MASK(s);
+		eu_reg[2 * s] = intel_uncore_read(gt->uncore,
+						  GEN10_SS01_EU_PGCTL_ACK(s));
+		eu_reg[2 * s + 1] = intel_uncore_read(gt->uncore,
+						  GEN10_SS23_EU_PGCTL_ACK(s));
+	}
+
+	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
+		     GEN9_PGCTL_SSA_EU19_ACK |
+		     GEN9_PGCTL_SSA_EU210_ACK |
+		     GEN9_PGCTL_SSA_EU311_ACK;
+	eu_mask[1] = GEN9_PGCTL_SSB_EU08_ACK |
+		     GEN9_PGCTL_SSB_EU19_ACK |
+		     GEN9_PGCTL_SSB_EU210_ACK |
+		     GEN9_PGCTL_SSB_EU311_ACK;
+
+	for (s = 0; s < info->sseu.max_slices; s++) {
+		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) == 0)
+			/* skip disabled slice */
+			continue;
+
+		sseu->slice_mask |= BIT(s);
+		intel_sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
+
+		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
+			unsigned int eu_cnt;
+
+			if (info->sseu.has_subslice_pg &&
+			    !(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
+				/* skip disabled subslice */
+				continue;
+
+			eu_cnt = 2 * hweight32(eu_reg[2 * s + ss / 2] &
+					       eu_mask[ss % 2]);
+			sseu->eu_total += eu_cnt;
+			sseu->eu_per_subslice = max_t(unsigned int,
+						      sseu->eu_per_subslice,
+						      eu_cnt);
+		}
+	}
+#undef SS_MAX
+}
+
+static void gen9_sseu_device_status(struct intel_gt *gt,
+				    struct sseu_dev_info *sseu)
+{
+#define SS_MAX 3
+	const struct intel_runtime_info *info = RUNTIME_INFO(gt->i915);
+	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
+	int s, ss;
+
+	for (s = 0; s < info->sseu.max_slices; s++) {
+		s_reg[s] = intel_uncore_read(gt->uncore,
+					     GEN9_SLICE_PGCTL_ACK(s));
+		eu_reg[2*s] = intel_uncore_read(gt->uncore,
+						GEN9_SS01_EU_PGCTL_ACK(s));
+		eu_reg[2*s + 1] = intel_uncore_read(gt->uncore,
+						    GEN9_SS23_EU_PGCTL_ACK(s));
+	}
+
+	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
+		     GEN9_PGCTL_SSA_EU19_ACK |
+		     GEN9_PGCTL_SSA_EU210_ACK |
+		     GEN9_PGCTL_SSA_EU311_ACK;
+	eu_mask[1] = GEN9_PGCTL_SSB_EU08_ACK |
+		     GEN9_PGCTL_SSB_EU19_ACK |
+		     GEN9_PGCTL_SSB_EU210_ACK |
+		     GEN9_PGCTL_SSB_EU311_ACK;
+
+	for (s = 0; s < info->sseu.max_slices; s++) {
+		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) == 0)
+			/* skip disabled slice */
+			continue;
+
+		sseu->slice_mask |= BIT(s);
+
+		if (IS_GEN9_BC(gt->i915))
+			intel_sseu_copy_subslices(&info->sseu, s,
+						  sseu->subslice_mask);
+
+		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
+			unsigned int eu_cnt;
+			u8 ss_idx = s * info->sseu.ss_stride +
+				    ss / BITS_PER_BYTE;
+
+			if (IS_GEN9_LP(gt->i915)) {
+				if (!(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
+					/* skip disabled subslice */
+					continue;
+
+				sseu->subslice_mask[ss_idx] |=
+					BIT(ss % BITS_PER_BYTE);
+			}
+
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
+					       eu_mask[ss%2]);
+			sseu->eu_total += eu_cnt;
+			sseu->eu_per_subslice = max_t(unsigned int,
+						      sseu->eu_per_subslice,
+						      eu_cnt);
+		}
+	}
+#undef SS_MAX
+}
+
+static void bdw_sseu_device_status(struct intel_gt *gt,
+				   struct sseu_dev_info *sseu)
+{
+	const struct intel_runtime_info *info = RUNTIME_INFO(gt->i915);
+	u32 slice_info = intel_uncore_read(gt->uncore, GEN8_GT_SLICE_INFO);
+	int s;
+
+	sseu->slice_mask = slice_info & GEN8_LSLICESTAT_MASK;
+
+	if (sseu->slice_mask) {
+		sseu->eu_per_subslice = info->sseu.eu_per_subslice;
+		for (s = 0; s < fls(sseu->slice_mask); s++)
+			intel_sseu_copy_subslices(&info->sseu, s,
+						  sseu->subslice_mask);
+		sseu->eu_total = sseu->eu_per_subslice *
+				 intel_sseu_subslice_total(sseu);
+
+		/* subtract fused off EU(s) from enabled slice(s) */
+		for (s = 0; s < fls(sseu->slice_mask); s++) {
+			u8 subslice_7eu = info->sseu.subslice_7eu[s];
+
+			sseu->eu_total -= hweight8(subslice_7eu);
+		}
+	}
+}
+
+static void print_sseu_info(struct seq_file *m, bool is_available_info,
+			    const struct sseu_dev_info *sseu)
+{
+	struct intel_gt *gt = m->private;
+	const char *type = is_available_info ? "Available" : "Enabled";
+	int s;
+
+	seq_printf(m, "  %s Slice Mask: %04x\n", type,
+		   sseu->slice_mask);
+	seq_printf(m, "  %s Slice Total: %u\n", type,
+		   hweight8(sseu->slice_mask));
+	seq_printf(m, "  %s Subslice Total: %u\n", type,
+		   intel_sseu_subslice_total(sseu));
+	for (s = 0; s < fls(sseu->slice_mask); s++) {
+		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
+			   s, intel_sseu_subslices_per_slice(sseu, s));
+	}
+	seq_printf(m, "  %s EU Total: %u\n", type,
+		   sseu->eu_total);
+	seq_printf(m, "  %s EU Per Subslice: %u\n", type,
+		   sseu->eu_per_subslice);
+
+	if (!is_available_info)
+		return;
+
+	seq_printf(m, "  Has Pooled EU: %s\n", yesno(HAS_POOLED_EU(gt->i915)));
+	if (HAS_POOLED_EU(gt->i915))
+		seq_printf(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);
+
+	seq_printf(m, "  Has Slice Power Gating: %s\n",
+		   yesno(sseu->has_slice_pg));
+	seq_printf(m, "  Has Subslice Power Gating: %s\n",
+		   yesno(sseu->has_subslice_pg));
+	seq_printf(m, "  Has EU Power Gating: %s\n",
+		   yesno(sseu->has_eu_pg));
+}
+
+static int sseu_status_show(struct seq_file *m, void *unused)
+{
+	struct intel_gt *gt = m->private;
+	const struct intel_runtime_info *info = RUNTIME_INFO(gt->i915);
+	struct sseu_dev_info sseu;
+	intel_wakeref_t wakeref;
+
+	if (INTEL_GEN(gt->i915) < 8)
+		return -ENODEV;
+
+	seq_puts(m, "SSEU Device Info\n");
+	print_sseu_info(m, true, &info->sseu);
+
+	seq_puts(m, "SSEU Device Status\n");
+	memset(&sseu, 0, sizeof(sseu));
+	intel_sseu_set_info(&sseu, info->sseu.max_slices,
+			    info->sseu.max_subslices,
+			    info->sseu.max_eus_per_subslice);
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
+		if (IS_CHERRYVIEW(gt->i915))
+			cherryview_sseu_device_status(gt, &sseu);
+		else if (IS_BROADWELL(gt->i915))
+			bdw_sseu_device_status(gt, &sseu);
+		else if (IS_GEN(gt->i915, 9))
+			gen9_sseu_device_status(gt, &sseu);
+		else if (INTEL_GEN(gt->i915) >= 10)
+			gen10_sseu_device_status(gt, &sseu);
+	}
+
+	print_sseu_info(m, false, &sseu);
+
+	return 0;
+}
+DEFINE_GT_DEBUGFS_ATTRIBUTE(sseu_status);
+
+static int interrupt_info_show(struct seq_file *m, void *data)
+{
+	struct intel_gt *gt = m->private;
+	struct intel_uncore *uncore = gt->uncore;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
+	int i;
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
+
+	if (IS_CHERRYVIEW(gt->i915)) {
+		seq_printf(m, "Master Interrupt Control:\t%08x\n",
+			   intel_uncore_read(gt->uncore, GEN8_MASTER_IRQ));
+
+		seq_printf(m, "Display IER:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IER));
+		seq_printf(m, "Display IIR:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IIR));
+		seq_printf(m, "Display IIR_RW:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IIR_RW));
+		seq_printf(m, "Display IMR:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IMR));
+
+		for (i = 0; i < 4; i++) {
+			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
+				   i, intel_uncore_read(gt->uncore,
+							GEN8_GT_IMR(i)));
+			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
+				   i, intel_uncore_read(gt->uncore,
+							GEN8_GT_IIR(i)));
+			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
+				   i, intel_uncore_read(gt->uncore,
+							GEN8_GT_IER(i)));
+		}
+
+	} else if (INTEL_GEN(gt->i915) >= 11) {
+		seq_printf(m, "Master Interrupt Control:  %08x\n",
+			   intel_uncore_read(gt->uncore, GEN11_GFX_MSTR_IRQ));
+
+		seq_printf(m, "Render/Copy Intr Enable:   %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_RENDER_COPY_INTR_ENABLE));
+		seq_printf(m, "VCS/VECS Intr Enable:      %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VCS_VECS_INTR_ENABLE));
+		seq_printf(m, "GUC/SG Intr Enable:\t   %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GUC_SG_INTR_ENABLE));
+		seq_printf(m, "GPM/WGBOXPERF Intr Enable: %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GPM_WGBOXPERF_INTR_ENABLE));
+		seq_printf(m, "Crypto Intr Enable:\t   %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_CRYPTO_RSVD_INTR_ENABLE));
+		seq_printf(m, "GUnit/CSME Intr Enable:\t   %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GUNIT_CSME_INTR_ENABLE));
+
+		seq_printf(m, "RCS Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_RCS0_RSVD_INTR_MASK));
+		seq_printf(m, "BCS Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_BCS_RSVD_INTR_MASK));
+		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VCS0_VCS1_INTR_MASK));
+		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VCS2_VCS3_INTR_MASK));
+		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VECS0_VECS1_INTR_MASK));
+		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GUC_SG_INTR_MASK));
+		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GPM_WGBOXPERF_INTR_MASK));
+		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_CRYPTO_RSVD_INTR_MASK));
+		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GUNIT_CSME_INTR_MASK));
+
+	} else if (INTEL_GEN(gt->i915) >= 8) {
+		seq_printf(m, "Master Interrupt Control:\t%08x\n",
+			   intel_uncore_read(gt->uncore, GEN8_MASTER_IRQ));
+
+		for (i = 0; i < 4; i++) {
+			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
+				   i, intel_uncore_read(gt->uncore,
+							GEN8_GT_IMR(i)));
+			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
+				   i, intel_uncore_read(gt->uncore,
+							GEN8_GT_IIR(i)));
+			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
+				   i, intel_uncore_read(gt->uncore,
+							GEN8_GT_IER(i)));
+		}
+
+	} else if (IS_VALLEYVIEW(gt->i915)) {
+		seq_printf(m, "Master IER:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_MASTER_IER));
+
+		seq_printf(m, "Display IER:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IER));
+		seq_printf(m, "Display IIR:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IIR));
+		seq_printf(m, "Display IIR_RW:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IIR_RW));
+		seq_printf(m, "Display IMR:\t%08x\n",
+			   intel_uncore_read(gt->uncore, VLV_IMR));
+
+		seq_printf(m, "Render IER:\t%08x\n",
+			   intel_uncore_read(gt->uncore, GTIER));
+		seq_printf(m, "Render IIR:\t%08x\n",
+			   intel_uncore_read(gt->uncore, GTIIR));
+		seq_printf(m, "Render IMR:\t%08x\n",
+			   intel_uncore_read(gt->uncore, GTIMR));
+
+		seq_printf(m, "PM IER:\t\t%08x\n",
+			   intel_uncore_read(gt->uncore, GEN6_PMIER));
+		seq_printf(m, "PM IIR:\t\t%08x\n",
+			   intel_uncore_read(gt->uncore, GEN6_PMIIR));
+		seq_printf(m, "PM IMR:\t\t%08x\n",
+			   intel_uncore_read(gt->uncore, GEN6_PMIMR));
+
+	} else if (INTEL_GEN(gt->i915) >= 6) {
+		for_each_engine(engine, gt, id) {
+			seq_printf(m,
+				   "Graphics Interrupt mask (%s):	%08x\n",
+				   engine->name, ENGINE_READ(engine, RING_IMR));
+		}
+
+	} else if (!HAS_PCH_SPLIT(gt->i915)) {
+		seq_printf(m, "Interrupt enable:    %08x\n",
+			   intel_uncore_read(gt->uncore, GEN2_IER));
+		seq_printf(m, "Interrupt identity:  %08x\n",
+			   intel_uncore_read(gt->uncore, GEN2_IIR));
+		seq_printf(m, "Interrupt mask:      %08x\n",
+			   intel_uncore_read(gt->uncore, GEN2_IMR));
+	}
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return 0;
+}
+DEFINE_GT_DEBUGFS_ATTRIBUTE(interrupt_info);
+
+static int wedged_get(void *data, u64 *val)
+{
+	struct intel_gt *gt = data;
+	int ret = intel_gt_terminally_wedged(gt);
+
+	switch (ret) {
+	case -EIO:
+		*val = 1;
+		return 0;
+	case 0:
+		*val = 0;
+		return 0;
+	default:
+		return ret;
+	}
+}
+
+static int wedged_set(void *data, u64 val)
+{
+	struct intel_gt *gt = data;
+
+	/* Flush any previous reset before applying for a new one */
+	wait_event(gt->reset.queue,
+		   !test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
+
+	intel_gt_handle_error(gt, val, I915_ERROR_CAPTURE,
+			      "Manually set wedged engine mask = %llx", val);
+	return 0;
+}
+DEFINE_SIMPLE_ATTRIBUTE(wedged_fops, wedged_get, wedged_set, "%llu\n");
+
+static void __debugfs_gt_register(struct intel_gt *gt, struct dentry *root)
+{
+	static const struct debugfs_gt_file files[] = {
+		{ "sseu_status", &sseu_status_fops, NULL },
+		{ "interrupt_info_show", &interrupt_info_fops, NULL },
+		{ "wedge", &wedged_fops, NULL },
+	};
+
+	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
+}
 
 void debugfs_gt_register(struct intel_gt *gt)
 {
@@ -23,6 +483,8 @@ void debugfs_gt_register(struct intel_gt *gt)
 	if (IS_ERR(root))
 		return;
 
+	__debugfs_gt_register(gt, root);
+
 	debugfs_engines_register(gt, root);
 	debugfs_gt_pm_register(gt, root);
 
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index dc024944873a..5b1f109c4abb 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -10,6 +10,7 @@
 #include "debugfs_gt_pm.h"
 #include "i915_drv.h"
 #include "intel_gt.h"
+#include "intel_gt_pm.h"
 #include "intel_llc.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
@@ -17,6 +18,36 @@
 #include "intel_sideband.h"
 #include "intel_uncore.h"
 
+static int forcewake_user_open(struct inode *inode, struct file *file)
+{
+	struct intel_gt *gt = inode->i_private;
+
+	atomic_inc(&gt->user_wakeref);
+	intel_gt_pm_get(gt);
+	if (INTEL_GEN(gt->i915) >= 6)
+		intel_uncore_forcewake_user_get(gt->uncore);
+
+	return 0;
+}
+
+static int forcewake_user_release(struct inode *inode, struct file *file)
+{
+	struct intel_gt *gt = inode->i_private;
+
+	if (INTEL_GEN(gt->i915) >= 6)
+		intel_uncore_forcewake_user_put(gt->uncore);
+	intel_gt_pm_put(gt);
+	atomic_dec(&gt->user_wakeref);
+
+	return 0;
+}
+
+static const struct file_operations forcewake_user_fops = {
+	.owner = THIS_MODULE,
+	.open = forcewake_user_open,
+	.release = forcewake_user_release,
+};
+
 static int fw_domains_show(struct seq_file *m, void *data)
 {
 	struct intel_gt *gt = m->private;
@@ -597,6 +628,7 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
 		{ "drpc", &drpc_fops, NULL },
 		{ "frequency", &frequency_fops, NULL },
 		{ "forcewake", &fw_domains_fops, NULL },
+		{ "forcewake_user", &forcewake_user_fops, NULL},
 		{ "llc", &llc_fops, llc_eval },
 		{ "rps_boost", &rps_boost_fops, rps_eval },
 	};
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 4c8a88c64c1d..82607419aebf 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -429,26 +429,14 @@ static void gen8_display_interrupt_info(struct seq_file *m)
 static int i915_interrupt_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_engine_cs *engine;
 	intel_wakeref_t wakeref;
-	int i, pipe;
+	int pipe;
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
 	if (IS_CHERRYVIEW(dev_priv)) {
 		intel_wakeref_t pref;
 
-		seq_printf(m, "Master Interrupt Control:\t%08x\n",
-			   I915_READ(GEN8_MASTER_IRQ));
-
-		seq_printf(m, "Display IER:\t%08x\n",
-			   I915_READ(VLV_IER));
-		seq_printf(m, "Display IIR:\t%08x\n",
-			   I915_READ(VLV_IIR));
-		seq_printf(m, "Display IIR_RW:\t%08x\n",
-			   I915_READ(VLV_IIR_RW));
-		seq_printf(m, "Display IMR:\t%08x\n",
-			   I915_READ(VLV_IMR));
 		for_each_pipe(dev_priv, pipe) {
 			enum intel_display_power_domain power_domain;
 
@@ -477,67 +465,25 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 			   I915_READ(DPINVGTT));
 		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
 
-		for (i = 0; i < 4; i++) {
-			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IMR(i)));
-			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IIR(i)));
-			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IER(i)));
-		}
-
 		seq_printf(m, "PCU interrupt mask:\t%08x\n",
 			   I915_READ(GEN8_PCU_IMR));
 		seq_printf(m, "PCU interrupt identity:\t%08x\n",
 			   I915_READ(GEN8_PCU_IIR));
 		seq_printf(m, "PCU interrupt enable:\t%08x\n",
 			   I915_READ(GEN8_PCU_IER));
-	} else if (INTEL_GEN(dev_priv) >= 11) {
-		seq_printf(m, "Master Interrupt Control:  %08x\n",
-			   I915_READ(GEN11_GFX_MSTR_IRQ));
-
-		seq_printf(m, "Render/Copy Intr Enable:   %08x\n",
-			   I915_READ(GEN11_RENDER_COPY_INTR_ENABLE));
-		seq_printf(m, "VCS/VECS Intr Enable:      %08x\n",
-			   I915_READ(GEN11_VCS_VECS_INTR_ENABLE));
-		seq_printf(m, "GUC/SG Intr Enable:\t   %08x\n",
-			   I915_READ(GEN11_GUC_SG_INTR_ENABLE));
-		seq_printf(m, "GPM/WGBOXPERF Intr Enable: %08x\n",
-			   I915_READ(GEN11_GPM_WGBOXPERF_INTR_ENABLE));
-		seq_printf(m, "Crypto Intr Enable:\t   %08x\n",
-			   I915_READ(GEN11_CRYPTO_RSVD_INTR_ENABLE));
-		seq_printf(m, "GUnit/CSME Intr Enable:\t   %08x\n",
-			   I915_READ(GEN11_GUNIT_CSME_INTR_ENABLE));
 
+	} else if (INTEL_GEN(dev_priv) >= 11) {
 		seq_printf(m, "Display Interrupt Control:\t%08x\n",
 			   I915_READ(GEN11_DISPLAY_INT_CTL));
 
 		gen8_display_interrupt_info(m);
-	} else if (INTEL_GEN(dev_priv) >= 8) {
-		seq_printf(m, "Master Interrupt Control:\t%08x\n",
-			   I915_READ(GEN8_MASTER_IRQ));
-
-		for (i = 0; i < 4; i++) {
-			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IMR(i)));
-			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IIR(i)));
-			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IER(i)));
-		}
 
+	} else if (INTEL_GEN(dev_priv) >= 8) {
 		gen8_display_interrupt_info(m);
+
 	} else if (IS_VALLEYVIEW(dev_priv)) {
 		intel_wakeref_t pref;
 
-		seq_printf(m, "Display IER:\t%08x\n",
-			   I915_READ(VLV_IER));
-		seq_printf(m, "Display IIR:\t%08x\n",
-			   I915_READ(VLV_IIR));
-		seq_printf(m, "Display IIR_RW:\t%08x\n",
-			   I915_READ(VLV_IIR_RW));
-		seq_printf(m, "Display IMR:\t%08x\n",
-			   I915_READ(VLV_IMR));
 		for_each_pipe(dev_priv, pipe) {
 			enum intel_display_power_domain power_domain;
 
@@ -556,23 +502,6 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 			intel_display_power_put(dev_priv, power_domain, pref);
 		}
 
-		seq_printf(m, "Master IER:\t%08x\n",
-			   I915_READ(VLV_MASTER_IER));
-
-		seq_printf(m, "Render IER:\t%08x\n",
-			   I915_READ(GTIER));
-		seq_printf(m, "Render IIR:\t%08x\n",
-			   I915_READ(GTIIR));
-		seq_printf(m, "Render IMR:\t%08x\n",
-			   I915_READ(GTIMR));
-
-		seq_printf(m, "PM IER:\t\t%08x\n",
-			   I915_READ(GEN6_PMIER));
-		seq_printf(m, "PM IIR:\t\t%08x\n",
-			   I915_READ(GEN6_PMIIR));
-		seq_printf(m, "PM IMR:\t\t%08x\n",
-			   I915_READ(GEN6_PMIMR));
-
 		pref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 		seq_printf(m, "Port hotplug:\t%08x\n",
 			   I915_READ(PORT_HOTPLUG_EN));
@@ -583,12 +512,6 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
 
 	} else if (!HAS_PCH_SPLIT(dev_priv)) {
-		seq_printf(m, "Interrupt enable:    %08x\n",
-			   I915_READ(GEN2_IER));
-		seq_printf(m, "Interrupt identity:  %08x\n",
-			   I915_READ(GEN2_IIR));
-		seq_printf(m, "Interrupt mask:      %08x\n",
-			   I915_READ(GEN2_IMR));
 		for_each_pipe(dev_priv, pipe)
 			seq_printf(m, "Pipe %c stat:         %08x\n",
 				   pipe_name(pipe),
@@ -614,34 +537,6 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 			   I915_READ(GTIMR));
 	}
 
-	if (INTEL_GEN(dev_priv) >= 11) {
-		seq_printf(m, "RCS Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_RCS0_RSVD_INTR_MASK));
-		seq_printf(m, "BCS Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_BCS_RSVD_INTR_MASK));
-		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_VCS0_VCS1_INTR_MASK));
-		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_VCS2_VCS3_INTR_MASK));
-		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_VECS0_VECS1_INTR_MASK));
-		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_GUC_SG_INTR_MASK));
-		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
-			   I915_READ(GEN11_GPM_WGBOXPERF_INTR_MASK));
-		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_CRYPTO_RSVD_INTR_MASK));
-		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_GUNIT_CSME_INTR_MASK));
-
-	} else if (INTEL_GEN(dev_priv) >= 6) {
-		for_each_uabi_engine(engine, dev_priv) {
-			seq_printf(m,
-				   "Graphics Interrupt mask (%s):	%08x\n",
-				   engine->name, ENGINE_READ(engine, RING_IMR));
-		}
-	}
-
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 
 	return 0;
@@ -1355,42 +1250,6 @@ static int i915_wa_registers(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int
-i915_wedged_get(void *data, u64 *val)
-{
-	struct drm_i915_private *i915 = data;
-	int ret = intel_gt_terminally_wedged(&i915->gt);
-
-	switch (ret) {
-	case -EIO:
-		*val = 1;
-		return 0;
-	case 0:
-		*val = 0;
-		return 0;
-	default:
-		return ret;
-	}
-}
-
-static int
-i915_wedged_set(void *data, u64 val)
-{
-	struct drm_i915_private *i915 = data;
-
-	/* Flush any previous reset before applying for a new one */
-	wait_event(i915->gt.reset.queue,
-		   !test_bit(I915_RESET_BACKOFF, &i915->gt.reset.flags));
-
-	intel_gt_handle_error(&i915->gt, val, I915_ERROR_CAPTURE,
-			      "Manually set wedged engine mask = %llx", val);
-	return 0;
-}
-
-DEFINE_SIMPLE_ATTRIBUTE(i915_wedged_fops,
-			i915_wedged_get, i915_wedged_set,
-			"%llu\n");
-
 static int
 i915_perf_noa_delay_set(void *data, u64 val)
 {
@@ -1561,298 +1420,10 @@ i915_cache_sharing_set(void *data, u64 val)
 	return 0;
 }
 
-static void
-intel_sseu_copy_subslices(const struct sseu_dev_info *sseu, int slice,
-			  u8 *to_mask)
-{
-	int offset = slice * sseu->ss_stride;
-
-	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
-}
-
 DEFINE_SIMPLE_ATTRIBUTE(i915_cache_sharing_fops,
 			i915_cache_sharing_get, i915_cache_sharing_set,
 			"%llu\n");
 
-static void cherryview_sseu_device_status(struct drm_i915_private *dev_priv,
-					  struct sseu_dev_info *sseu)
-{
-#define SS_MAX 2
-	const int ss_max = SS_MAX;
-	u32 sig1[SS_MAX], sig2[SS_MAX];
-	int ss;
-
-	sig1[0] = I915_READ(CHV_POWER_SS0_SIG1);
-	sig1[1] = I915_READ(CHV_POWER_SS1_SIG1);
-	sig2[0] = I915_READ(CHV_POWER_SS0_SIG2);
-	sig2[1] = I915_READ(CHV_POWER_SS1_SIG2);
-
-	for (ss = 0; ss < ss_max; ss++) {
-		unsigned int eu_cnt;
-
-		if (sig1[ss] & CHV_SS_PG_ENABLE)
-			/* skip disabled subslice */
-			continue;
-
-		sseu->slice_mask = BIT(0);
-		sseu->subslice_mask[0] |= BIT(ss);
-		eu_cnt = ((sig1[ss] & CHV_EU08_PG_ENABLE) ? 0 : 2) +
-			 ((sig1[ss] & CHV_EU19_PG_ENABLE) ? 0 : 2) +
-			 ((sig1[ss] & CHV_EU210_PG_ENABLE) ? 0 : 2) +
-			 ((sig2[ss] & CHV_EU311_PG_ENABLE) ? 0 : 2);
-		sseu->eu_total += eu_cnt;
-		sseu->eu_per_subslice = max_t(unsigned int,
-					      sseu->eu_per_subslice, eu_cnt);
-	}
-#undef SS_MAX
-}
-
-static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
-				     struct sseu_dev_info *sseu)
-{
-#define SS_MAX 6
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
-	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
-	int s, ss;
-
-	for (s = 0; s < info->sseu.max_slices; s++) {
-		/*
-		 * FIXME: Valid SS Mask respects the spec and read
-		 * only valid bits for those registers, excluding reserved
-		 * although this seems wrong because it would leave many
-		 * subslices without ACK.
-		 */
-		s_reg[s] = I915_READ(GEN10_SLICE_PGCTL_ACK(s)) &
-			GEN10_PGCTL_VALID_SS_MASK(s);
-		eu_reg[2 * s] = I915_READ(GEN10_SS01_EU_PGCTL_ACK(s));
-		eu_reg[2 * s + 1] = I915_READ(GEN10_SS23_EU_PGCTL_ACK(s));
-	}
-
-	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
-		     GEN9_PGCTL_SSA_EU19_ACK |
-		     GEN9_PGCTL_SSA_EU210_ACK |
-		     GEN9_PGCTL_SSA_EU311_ACK;
-	eu_mask[1] = GEN9_PGCTL_SSB_EU08_ACK |
-		     GEN9_PGCTL_SSB_EU19_ACK |
-		     GEN9_PGCTL_SSB_EU210_ACK |
-		     GEN9_PGCTL_SSB_EU311_ACK;
-
-	for (s = 0; s < info->sseu.max_slices; s++) {
-		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) == 0)
-			/* skip disabled slice */
-			continue;
-
-		sseu->slice_mask |= BIT(s);
-		intel_sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
-
-		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
-			unsigned int eu_cnt;
-
-			if (info->sseu.has_subslice_pg &&
-			    !(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
-				/* skip disabled subslice */
-				continue;
-
-			eu_cnt = 2 * hweight32(eu_reg[2 * s + ss / 2] &
-					       eu_mask[ss % 2]);
-			sseu->eu_total += eu_cnt;
-			sseu->eu_per_subslice = max_t(unsigned int,
-						      sseu->eu_per_subslice,
-						      eu_cnt);
-		}
-	}
-#undef SS_MAX
-}
-
-static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
-				    struct sseu_dev_info *sseu)
-{
-#define SS_MAX 3
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
-	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
-	int s, ss;
-
-	for (s = 0; s < info->sseu.max_slices; s++) {
-		s_reg[s] = I915_READ(GEN9_SLICE_PGCTL_ACK(s));
-		eu_reg[2*s] = I915_READ(GEN9_SS01_EU_PGCTL_ACK(s));
-		eu_reg[2*s + 1] = I915_READ(GEN9_SS23_EU_PGCTL_ACK(s));
-	}
-
-	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
-		     GEN9_PGCTL_SSA_EU19_ACK |
-		     GEN9_PGCTL_SSA_EU210_ACK |
-		     GEN9_PGCTL_SSA_EU311_ACK;
-	eu_mask[1] = GEN9_PGCTL_SSB_EU08_ACK |
-		     GEN9_PGCTL_SSB_EU19_ACK |
-		     GEN9_PGCTL_SSB_EU210_ACK |
-		     GEN9_PGCTL_SSB_EU311_ACK;
-
-	for (s = 0; s < info->sseu.max_slices; s++) {
-		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) == 0)
-			/* skip disabled slice */
-			continue;
-
-		sseu->slice_mask |= BIT(s);
-
-		if (IS_GEN9_BC(dev_priv))
-			intel_sseu_copy_subslices(&info->sseu, s,
-						  sseu->subslice_mask);
-
-		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
-			unsigned int eu_cnt;
-			u8 ss_idx = s * info->sseu.ss_stride +
-				    ss / BITS_PER_BYTE;
-
-			if (IS_GEN9_LP(dev_priv)) {
-				if (!(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
-					/* skip disabled subslice */
-					continue;
-
-				sseu->subslice_mask[ss_idx] |=
-					BIT(ss % BITS_PER_BYTE);
-			}
-
-			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
-					       eu_mask[ss%2]);
-			sseu->eu_total += eu_cnt;
-			sseu->eu_per_subslice = max_t(unsigned int,
-						      sseu->eu_per_subslice,
-						      eu_cnt);
-		}
-	}
-#undef SS_MAX
-}
-
-static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
-				   struct sseu_dev_info *sseu)
-{
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
-	u32 slice_info = I915_READ(GEN8_GT_SLICE_INFO);
-	int s;
-
-	sseu->slice_mask = slice_info & GEN8_LSLICESTAT_MASK;
-
-	if (sseu->slice_mask) {
-		sseu->eu_per_subslice = info->sseu.eu_per_subslice;
-		for (s = 0; s < fls(sseu->slice_mask); s++)
-			intel_sseu_copy_subslices(&info->sseu, s,
-						  sseu->subslice_mask);
-		sseu->eu_total = sseu->eu_per_subslice *
-				 intel_sseu_subslice_total(sseu);
-
-		/* subtract fused off EU(s) from enabled slice(s) */
-		for (s = 0; s < fls(sseu->slice_mask); s++) {
-			u8 subslice_7eu = info->sseu.subslice_7eu[s];
-
-			sseu->eu_total -= hweight8(subslice_7eu);
-		}
-	}
-}
-
-static void i915_print_sseu_info(struct seq_file *m, bool is_available_info,
-				 const struct sseu_dev_info *sseu)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	const char *type = is_available_info ? "Available" : "Enabled";
-	int s;
-
-	seq_printf(m, "  %s Slice Mask: %04x\n", type,
-		   sseu->slice_mask);
-	seq_printf(m, "  %s Slice Total: %u\n", type,
-		   hweight8(sseu->slice_mask));
-	seq_printf(m, "  %s Subslice Total: %u\n", type,
-		   intel_sseu_subslice_total(sseu));
-	for (s = 0; s < fls(sseu->slice_mask); s++) {
-		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
-			   s, intel_sseu_subslices_per_slice(sseu, s));
-	}
-	seq_printf(m, "  %s EU Total: %u\n", type,
-		   sseu->eu_total);
-	seq_printf(m, "  %s EU Per Subslice: %u\n", type,
-		   sseu->eu_per_subslice);
-
-	if (!is_available_info)
-		return;
-
-	seq_printf(m, "  Has Pooled EU: %s\n", yesno(HAS_POOLED_EU(dev_priv)));
-	if (HAS_POOLED_EU(dev_priv))
-		seq_printf(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);
-
-	seq_printf(m, "  Has Slice Power Gating: %s\n",
-		   yesno(sseu->has_slice_pg));
-	seq_printf(m, "  Has Subslice Power Gating: %s\n",
-		   yesno(sseu->has_subslice_pg));
-	seq_printf(m, "  Has EU Power Gating: %s\n",
-		   yesno(sseu->has_eu_pg));
-}
-
-static int i915_sseu_status(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
-	struct sseu_dev_info sseu;
-	intel_wakeref_t wakeref;
-
-	if (INTEL_GEN(dev_priv) < 8)
-		return -ENODEV;
-
-	seq_puts(m, "SSEU Device Info\n");
-	i915_print_sseu_info(m, true, &info->sseu);
-
-	seq_puts(m, "SSEU Device Status\n");
-	memset(&sseu, 0, sizeof(sseu));
-	intel_sseu_set_info(&sseu, info->sseu.max_slices,
-			    info->sseu.max_subslices,
-			    info->sseu.max_eus_per_subslice);
-
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		if (IS_CHERRYVIEW(dev_priv))
-			cherryview_sseu_device_status(dev_priv, &sseu);
-		else if (IS_BROADWELL(dev_priv))
-			bdw_sseu_device_status(dev_priv, &sseu);
-		else if (IS_GEN(dev_priv, 9))
-			gen9_sseu_device_status(dev_priv, &sseu);
-		else if (INTEL_GEN(dev_priv) >= 10)
-			gen10_sseu_device_status(dev_priv, &sseu);
-	}
-
-	i915_print_sseu_info(m, false, &sseu);
-
-	return 0;
-}
-
-static int i915_forcewake_open(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *i915 = inode->i_private;
-	struct intel_gt *gt = &i915->gt;
-
-	atomic_inc(&gt->user_wakeref);
-	intel_gt_pm_get(gt);
-	if (INTEL_GEN(i915) >= 6)
-		intel_uncore_forcewake_user_get(gt->uncore);
-
-	return 0;
-}
-
-static int i915_forcewake_release(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *i915 = inode->i_private;
-	struct intel_gt *gt = &i915->gt;
-
-	if (INTEL_GEN(i915) >= 6)
-		intel_uncore_forcewake_user_put(&i915->uncore);
-	intel_gt_pm_put(gt);
-	atomic_dec(&gt->user_wakeref);
-
-	return 0;
-}
-
-static const struct file_operations i915_forcewake_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_forcewake_open,
-	.release = i915_forcewake_release,
-};
-
 static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_capabilities", i915_capabilities, 0},
 	{"i915_gem_objects", i915_gem_object_info, 0},
@@ -1868,7 +1439,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_rcs_topology", i915_rcs_topology, 0},
 	{"i915_shrinker_info", i915_shrinker_info, 0},
 	{"i915_wa_registers", i915_wa_registers, 0},
-	{"i915_sseu_status", i915_sseu_status, 0},
 	{"i915_rps_boost_info", i915_rps_boost_info, 0},
 };
 #define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
@@ -1878,7 +1448,6 @@ static const struct i915_debugfs_files {
 	const struct file_operations *fops;
 } i915_debugfs_files[] = {
 	{"i915_perf_noa_delay", &i915_perf_noa_delay_fops},
-	{"i915_wedged", &i915_wedged_fops},
 	{"i915_cache_sharing", &i915_cache_sharing_fops},
 	{"i915_gem_drop_caches", &i915_drop_caches_fops},
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
@@ -1894,8 +1463,6 @@ void i915_debugfs_register(struct drm_i915_private *dev_priv)
 
 	i915_debugfs_params(dev_priv);
 
-	debugfs_create_file("i915_forcewake_user", S_IRUSR, minor->debugfs_root,
-			    to_i915(minor->dev), &i915_forcewake_fops);
 	for (i = 0; i < ARRAY_SIZE(i915_debugfs_files); i++) {
 		debugfs_create_file(i915_debugfs_files[i].name,
 				    S_IRUGO | S_IWUSR,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
