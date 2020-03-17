Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A58D9187E56
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 11:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A195899A3;
	Tue, 17 Mar 2020 10:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEA0899A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 10:31:27 +0000 (UTC)
IronPort-SDR: q97XVP1qV3XpV1pPePAKj2iv7KYIfhBjX5BjPZmlYqKSchp4XCb4jzCturQyOGqhmXCxNLLj9N
 0r1llBdH3AUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 03:31:27 -0700
IronPort-SDR: 1WW6KqeJh6ImxTTRjMW4qNs+h8Bsg2JxRySRN0JhaE3+V7h3K3DoXZa93X8wrX7kwA2pIyIduG
 YYTeATflpInw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="445449829"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by fmsmga006.fm.intel.com with ESMTP; 17 Mar 2020 03:31:25 -0700
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Mar 2020 15:59:22 +0530
Message-Id: <1584440962-28453-4-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
References: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] [PATCH v8 3/3] drm/i915: Predictive governor to control
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

v8:
 * Rebase.

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
