Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7EB1AAF57
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 19:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B7F16EA42;
	Wed, 15 Apr 2020 17:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE006EA41
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 17:20:48 +0000 (UTC)
IronPort-SDR: NHwJWfATxdguU5WWxMSHQuWVFaHo+v23YCAru+NGH735rvyHbrCQvce2neK2Wx2+qRGYKietE2
 JB3qTuw+gR+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 10:20:48 -0700
IronPort-SDR: l8MZa8CyVy97UFBkRXgN46P0OQHjPf5b+SAsbch2iHbqXuGCz+rPj3alpRg5/aXcSg5KwVdy1F
 tE3FZgZXNj5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="400382932"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 15 Apr 2020 10:20:46 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 22:35:55 +0530
Message-Id: <20200415170555.15531-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200415170555.15531-1-anshuman.gupta@intel.com>
References: <20200415170555.15531-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 4/4] drm/i915: Add i915_lpsp_status debugfs
 attribute
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It requires a separate debugfs attribute to expose lpsp
status to user space, as there may be display less configuration
without any valid connected output, those configuration will not be
able to test lpsp status, if lpsp status exposed from a connector
based debugfs attribute.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  2 +
 2 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index ea48de3cac24..70525623bcdf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -9,6 +9,7 @@
 #include "i915_debugfs.h"
 #include "intel_csr.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_fbc.h"
@@ -1143,6 +1144,51 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 	return 0;
 }
 
+#define LPSP_STATUS(COND) (COND ? seq_puts(m, "LPSP: enabled\n") : \
+				seq_puts(m, "LPSP: disabled\n"))
+
+static bool
+intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
+			      enum i915_power_well_id power_well_id)
+{
+	intel_wakeref_t wakeref;
+	bool is_enabled;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	is_enabled = intel_display_power_well_is_enabled(i915,
+							 power_well_id);
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
+	return is_enabled;
+}
+
+static int i915_lpsp_status(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+
+	switch (INTEL_GEN(i915)) {
+	case 12:
+	case 11:
+		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
+		break;
+	case 10:
+	case 9:
+		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, SKL_DISP_PW_2));
+		break;
+	default:
+		/*
+		 * Apart from HASWELL/BROADWELL other legacy platform doesn't
+		 * support lpsp.
+		 */
+		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+			LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, HSW_DISP_PW_GLOBAL));
+		else
+			seq_puts(m, "LPSP: not supported\n");
+	}
+
+	return 0;
+}
+
 static int i915_dp_mst_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1910,6 +1956,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
 	{"i915_drrs_status", i915_drrs_status, 0},
+	{"i915_lpsp_status", i915_lpsp_status, 0},
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 56cbae6327b7..14c5ad20287f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -266,6 +266,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
 
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain);
+bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+					 enum i915_power_well_id power_well_id);
 bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				      enum intel_display_power_domain domain);
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
