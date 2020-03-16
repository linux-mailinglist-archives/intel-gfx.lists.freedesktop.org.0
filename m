Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ED7186C1D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 14:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64486E448;
	Mon, 16 Mar 2020 13:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189686E448
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 13:32:06 +0000 (UTC)
IronPort-SDR: uK7j6hX3o64SMEwopttbn7pyk3ACG0PdhgNvlG1fi0pTLLr0zBgbhst1qO8tp/F6N5fv7kqW+R
 eEtAjUi2kVsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 06:32:00 -0700
IronPort-SDR: Og841mvzV5TvcaWATM4Bn0JPu8LQRWe4XVNsAbru/glNPQmbUXqGe0G6oGFChK1lfY81rWuYsN
 0pDRCxthQgGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="247457568"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by orsmga006.jf.intel.com with ESMTP; 16 Mar 2020 06:31:59 -0700
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 18:59:51 +0530
Message-Id: <1584365391-30029-4-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584365391-30029-1-git-send-email-ankit.p.navik@intel.com>
References: <1584365391-30029-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] [PATCH v7 3/3] drm/i915: Predictive governor to control
 slice/subslice/eu
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
Cc: ankit.p.navik@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Load classification is used for predictive governor to control
eu/slice/subslice based on workloads.

sysfs is provided to enable/disable the feature

V2:
 * Fix code style.
 * Move predictive_load_timer into a drm_i915_private
   structure.
 * Make generic function to set optimum config. (Tvrtko Ursulin)

V3:
 * Rebase.
 * Fix race condition for predictive load set.
 * Add slack to start hrtimer for more power efficient. (Tvrtko Ursulin)

V4:
 * Fix data type and initialization of mutex to protect predictive load
   state.
 * Move predictive timer init to i915_gem_init_early. (Tvrtko Ursulin)
 * Move debugfs to kernel parameter.

V5:
 * Rebase.
 * Remove mutex for pred_timer

V6:
 * Rebase.
 * Fix warnings.

V7:
 * Drop timer and move logic to __execlists_update_reg_state. (Tvrtko Ursulin)
 * Remove kernel boot param and make it to sysfs entry. (Jani Nikula)

Cc: Vipin Anand <vipin.anand@intel.com>
Signed-off-by: Ankit Navik <ankit.p.navik@intel.com>
---
 drivers/gpu/drm/i915/i915_sysfs.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 45d32ef42787..5d76e4992c8d 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -433,12 +433,43 @@ static ssize_t gt_min_freq_mhz_store(struct device *kdev,
 	return ret ?: count;
 }
 
+static ssize_t deu_enable_show(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
+
+	return snprintf(buf, PAGE_SIZE, "%u\n", i915->predictive_load_enable);
+}
+
+static ssize_t deu_enable_store(struct device *kdev,
+				struct device_attribute *attr,
+				const char *buf,
+				size_t count)
+{
+	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
+	ssize_t ret;
+	u32 val;
+
+	ret = kstrtou32(buf, 0, &val);
+	if (ret)
+		return ret;
+
+	/* Check invalid values */
+	if (val != 0 && val != 1)
+		ret = -EINVAL;
+
+	i915->predictive_load_enable = val;
+
+	return count;
+}
+
 static DEVICE_ATTR_RO(gt_act_freq_mhz);
 static DEVICE_ATTR_RO(gt_cur_freq_mhz);
 static DEVICE_ATTR_RW(gt_boost_freq_mhz);
 static DEVICE_ATTR_RW(gt_max_freq_mhz);
 static DEVICE_ATTR_RW(gt_min_freq_mhz);
 
+static DEVICE_ATTR_RW(deu_enable);
+
 static DEVICE_ATTR_RO(vlv_rpe_freq_mhz);
 
 static ssize_t gt_rp_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf);
@@ -474,6 +505,7 @@ static const struct attribute * const gen6_attrs[] = {
 	&dev_attr_gt_RP0_freq_mhz.attr,
 	&dev_attr_gt_RP1_freq_mhz.attr,
 	&dev_attr_gt_RPn_freq_mhz.attr,
+	&dev_attr_deu_enable.attr,
 	NULL,
 };
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
