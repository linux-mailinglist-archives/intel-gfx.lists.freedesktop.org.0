Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1710FA5DF49
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 15:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCB910E787;
	Wed, 12 Mar 2025 14:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2n6Ol/p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0641810E787
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Mar 2025 14:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741790607; x=1773326607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=He+kE7uujG0/dBShGnpQ+2HAem9uskm2s3ULXeeMb2w=;
 b=X2n6Ol/pjExNbpw5Vh12szvgbW8a5HSINJ+nd8VkwUS3pkiB88v65LOj
 0Hiw6Ao/9LyjnQgozgGElDAwOjILn933nmGacEWe5qaVGv5TfQiZju5wK
 zLYNzUPVIWu/c6KwRBJRv0y5o9WZKK/5DyXydXvjsthcluhwrzBKTQMF0
 dS6o/wKnoegKd+v4jzgZ4fnb/rx3cuIfHYQDrc6zla0gNv9ctNJ2mX0ba
 LVCt6BjiPVtpbMm772k5FNwZDC18nA779teAZTkQph5WETBckuXxmQAtz
 K8ggduDNVm6HHy/jFBTUgUfOjJhhl09JgoqP3UcC5OuUBPG0O5bA5p+1d Q==;
X-CSE-ConnectionGUID: FKYgip79Rhe1cQkI77u0zA==
X-CSE-MsgGUID: SKyR+VVtTSiNl7bXyIbQyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="54243482"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="54243482"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 07:43:27 -0700
X-CSE-ConnectionGUID: XD9G/UAJS4msCsKZZcnYZQ==
X-CSE-MsgGUID: BT29KPWfRH25Bd9TA7DsCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="124810414"
Received: from lnl-rocket-lake-client-platform.iind.intel.com (HELO
 lnl-Tiger-Lake-Client-Platform.iind.intel.com) ([10.145.169.162])
 by fmviesa003.fm.intel.com with ESMTP; 12 Mar 2025 07:43:25 -0700
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH v5] drm/i915/dmc: Create debugfs entry for dc6 counter
Date: Wed, 12 Mar 2025 20:13:10 +0530
Message-ID: <20250312144310.7610-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203085613.236340-1-mohammed.thasleem@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Starting from MTL we don't have a platform agnostic way to validate
DC6 state due to dc6 counter has been removed to validate DC state.

The goal is to validate that the display HW can reach the DC6 power
state. There is no HW DC6 residency counter (and there wasn't such
a counter earlier either), so an alternative way is required. According
to the HW team the display driver has programmed everything correctly in
order to allow the DC6 power state if the DC5 power state is reached
(indicated by the HW DC5 residency counter incrementing) and DC6 is
enabled by the driver.

Driver could take a snapshot of the DC5 residency counter right
after it enables DC6 (dc5_residency_start) and increment the SW
DC6 residency counter right before it disables DC6 or when user space
reads the DC6 counter. So the driver would update the counter at these
two points in the following way:
dc6_residency_counter += dc5_current_count - dc5_start_count

v2: Update the discription. (Imre)
    Read dc5 count during dc6 enable and disable then and update
    dc6 residency counter. (Imre)
    Remove variable from dmc structure. (Jani)
    Updated the subject title.
v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
    Use flags to check dc6 enable/disable states. (Imre)
    Move the display version check and counter read/update to
    a helper. (Imre)
    Resize the variable length. (Rodrigo)
    Use old dc6 debugfs entry for every platform. (Rodrigo)
v4: Remove superfluous whitespace. (Jani)
    Read DMC registers in intel_dmc.c (Jani)
    Rename dc6_en_dis to dc6_enabled and change its type to bool. (Jani)
    Rename update_dc6_count and move it to intel_dmc.c (Jani)
    Rename dc6_en_dis to start_tracking. (Imre)
    Have lock for dc6 state read aswelll. (Imre)
    Keep the existing way print 'DC5 -> DC6 count' along with
    new 'DC6 Allowed Count' print. (Imre)
    Add counters in intel_dmc struct. (Imre)
    Have interface to return dc6 allowed count. (Imre)
    Rename dc6_count to dc6_allowed_count. (Rodrigo)
v5: Rename counters and move in to dc6_allowed structure. (Imre)
    Order declaration lines in decreasing line length. (Imre)
    Update start_tacking logic. (Imre)
    Move get couner inside lock and DISPLAY_VER code to helper. (Imre)

Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 11 +++-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 54 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
 3 files changed, 62 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8ec87ffd87d2..574352439573 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -752,8 +752,9 @@ void gen9_sanitize_dc_state(struct intel_display *display)
 void gen9_set_dc_state(struct intel_display *display, u32 state)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
-	u32 val;
+	bool dc6_was_enabled, enable_dc6;
 	u32 mask;
+	u32 val;
 
 	if (!HAS_DISPLAY(display))
 		return;
@@ -772,11 +773,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
 			power_domains->dc_state, val & mask);
 
+	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
+	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
+	if (!dc6_was_enabled && enable_dc6)
+		intel_dmc_update_dc6_allowed_count(display, true);
+
 	val &= ~mask;
 	val |= state;
 
 	gen9_write_dc_state(display, val);
 
+	if (!enable_dc6 && dc6_was_enabled)
+		intel_dmc_update_dc6_allowed_count(display, false);
+
 	power_domains->dc_state = val & mask;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fa6944e55d95..95abeec0586a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -28,6 +28,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display_power_well.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_step.h"
@@ -57,6 +58,10 @@ struct intel_dmc {
 	const char *fw_path;
 	u32 max_fw_size; /* bytes */
 	u32 version;
+	struct {
+		u32 dc5_start;
+		u32 count;
+	} dc6_allowed;
 	struct dmc_fw_info {
 		u32 mmio_count;
 		i915_reg_t mmioaddr[20];
@@ -1232,6 +1237,43 @@ void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct
 			   DMC_VERSION_MINOR(snapshot->version));
 }
 
+void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
+					bool start_tracking)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+	u32 dc5_cur_count;
+
+	if (DISPLAY_VER(dmc->display) < 14)
+		return;
+
+	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
+
+	if (!start_tracking)
+		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
+
+	dmc->dc6_allowed.dc5_start = dc5_cur_count;
+}
+
+static u32 intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
+{
+	struct i915_power_domains *power_domains = &display->power.domains;
+	struct intel_dmc *dmc = display_to_dmc(display);
+
+	if (DISPLAY_VER(display) < 14)
+		return -ENODEV;
+
+	mutex_lock(&power_domains->lock);
+	bool dc6_enabled = DC_STATE_EN_UPTO_DC6 &
+			   intel_de_read(display, DC_STATE_EN);
+	if (dc6_enabled)
+		intel_dmc_update_dc6_allowed_count(display, false);
+
+	*count = dmc->dc6_allowed.count;
+	mutex_unlock(&power_domains->lock);
+
+	return 0;
+}
+
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = m->private;
@@ -1239,6 +1281,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	struct intel_dmc *dmc = display_to_dmc(display);
 	intel_wakeref_t wakeref;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
+	u32 dc6_allowed_count;
 
 	if (!HAS_DMC(display))
 		return -ENODEV;
@@ -1287,9 +1330,14 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	}
 
 	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
-	if (i915_mmio_reg_valid(dc6_reg))
-		seq_printf(m, "DC5 -> DC6 count: %d\n",
-			   intel_de_read(display, dc6_reg));
+
+	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count) == 0) {
+		seq_printf(m, "DC6 Allowed Count : %d\n", dc6_allowed_count);
+	} else {
+		if (i915_mmio_reg_valid(dc6_reg)) {
+			seq_printf(m, "DC5 -> DC6 count: %d\n",
+				   intel_de_read(display, dc6_reg)); }
+	}
 
 	seq_printf(m, "program base: 0x%08x\n",
 		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 44cecef98e73..c78426eb4cd5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -26,6 +26,7 @@ void intel_dmc_debugfs_register(struct intel_display *display);
 
 struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
 void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
+void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
 
 void assert_dmc_loaded(struct intel_display *display);
 
-- 
2.43.0

