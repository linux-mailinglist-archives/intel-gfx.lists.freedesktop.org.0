Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876E748B0DD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 16:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209EC10E6D9;
	Tue, 11 Jan 2022 15:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFB2F10E6D9;
 Tue, 11 Jan 2022 15:33:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC509A73C7;
 Tue, 11 Jan 2022 15:33:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 11 Jan 2022 15:33:05 -0000
Message-ID: <164191518593.24977.16408286112430384670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111121552.35679-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220111121552.35679-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_multitile_support?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Introduce multitile support
URL   : https://patchwork.freedesktop.org/series/98741/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
297fae638da5 drm/i915: Prepare for multiple GTs
-:254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#254: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:91:
+#define for_each_gt(gt__, i915__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_GT; \
+	     (id__)++) \
+		for_each_if(((gt__) = (i915__)->gt[(id__)]))

total: 0 errors, 0 warnings, 1 checks, 436 lines checked
2ac6f3cedf48 drm/i915/gt: make a gt sysfs group and move power management files
-:106: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#106: 
new file mode 100644

-:460: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#460: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:168:
+static ssize_t act_freq_mhz_show(struct device *dev,
+				     struct device_attribute *attr, char *buff)

-:586: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#586: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:294:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:586: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_show' - possible side-effects?
#586: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:294:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:586: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_store' - possible side-effects?
#586: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:294:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:609: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#609: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:317:
+static INTEL_GT_RPS_SYSFS_ATTR(RPn_freq_mhz, 0444, rps_rp_mhz_show, NULL);

-:611: CHECK:LINE_SPACING: Please don't use multiple blank lines
#611: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:319:
+
+

-:620: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_##s##_RPn_freq_mhz>
#620: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:328:
+		&dev_attr_##s##_RPn_freq_mhz.attr, \

-:639: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#639: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:347:
+	} else if (attr == &dev_attr_gt_RP1_freq_mhz ||
[...]
+		   val = intel_rps_get_rp1_frequency(rps);

-:642: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#642: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:350:
+	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||
[...]
+		   val = intel_rps_get_rpn_frequency(rps);

-:642: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_gt_RPn_freq_mhz>
#642: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:350:
+	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||

-:643: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_rps_RPn_freq_mhz>
#643: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:351:
+		   attr == &dev_attr_rps_RPn_freq_mhz) {

total: 0 errors, 3 warnings, 9 checks, 985 lines checked


