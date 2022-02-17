Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F37D74BAD15
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 00:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1357D10E17D;
	Thu, 17 Feb 2022 23:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64BCC10E166;
 Thu, 17 Feb 2022 23:12:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 492FFA00A0;
 Thu, 17 Feb 2022 23:12:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 17 Feb 2022 23:12:11 -0000
Message-ID: <164513953127.18050.11520255281934230039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217144158.21555-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220217144158.21555-1-andi.shyti@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/100331/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84ebedcd8baa drm/i915: Rename INTEL_REGION_LMEM with INTEL_REGION_LMEM_0
3122cf9d817d drm/i915: Prepare for multiple GTs
-:252: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#252: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:91:
+#define for_each_gt(gt__, i915__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_GT; \
+	     (id__)++) \
+		for_each_if(((gt__) = (i915__)->gt[(id__)]))

total: 0 errors, 0 warnings, 1 checks, 435 lines checked
993116c384d8 drm/i915/gt: add gt_is_root() helper
cb0e95e71059 drm/i915/gt: create per-tile sysfs interface
-:70: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#70: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 222 lines checked
62eccef7a8ce drm/i915/gt: Create per-tile RC6 sysfs interface
-:119: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#119: 
new file mode 100644

-:207: CHECK:SPACING: No space is necessary after a cast
#207: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:84:
+	return sysfs_emit(buff, "%u\n", (u32) rc6_residency);

-:222: CHECK:SPACING: No space is necessary after a cast
#222: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:99:
+	return sysfs_emit(buff, "%u\n", (u32) rc6p_residency);

-:237: CHECK:SPACING: No space is necessary after a cast
#237: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:114:
+	return sysfs_emit(buff, "%u\n", (u32) rc6pp_residency);

-:252: CHECK:SPACING: No space is necessary after a cast
#252: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:129:
+	return sysfs_emit(buff, "%u\n", (u32) rc6_residency);

total: 0 errors, 1 warnings, 4 checks, 427 lines checked
8a294f4a2e2e drm/i915/gt: Create per-tile RPS sysfs interfaces
-:127: CHECK:SPACING: No space is necessary after a cast
#127: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:253:
+	return sysfs_emit(buff, "%u\n", (u32) actual_freq);

-:141: CHECK:SPACING: No space is necessary after a cast
#141: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:267:
+	return sysfs_emit(buff, "%u\n", (u32) cur_freq);

-:156: CHECK:SPACING: No space is necessary after a cast
#156: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:282:
+	return sysfs_emit(buff, "%u\n", (u32) boost_freq);

-:209: CHECK:SPACING: No space is necessary after a cast
#209: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:335:
+	return sysfs_emit(buff, "%d\n", (int) rpe_freq);

-:233: ERROR:CODE_INDENT: code indent should use tabs where possible
#233: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:359:
+                                      struct device_attribute *attr,$

-:233: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#233: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:359:
+                                      struct device_attribute *attr,$

-:234: ERROR:CODE_INDENT: code indent should use tabs where possible
#234: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:360:
+                                      const char *buff, size_t count);$

-:234: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#234: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:360:
+                                      const char *buff, size_t count);$

-:238: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#238: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:364:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:238: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_show' - possible side-effects?
#238: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:364:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:238: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_store' - possible side-effects?
#238: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:364:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:259: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#259: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:385:
+static INTEL_GT_RPS_SYSFS_ATTR(RPn_freq_mhz, 0444, rps_rp_mhz_show, NULL);

-:272: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_##s##_RPn_freq_mhz>
#272: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:398:
+		&dev_attr_##s##_RPn_freq_mhz.attr, \

-:280: ERROR:CODE_INDENT: code indent should use tabs where possible
#280: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:406:
+                                      struct device_attribute *attr,$

-:280: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#280: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:406:
+                                      struct device_attribute *attr,$

-:281: ERROR:CODE_INDENT: code indent should use tabs where possible
#281: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:407:
+                                      const char *buff, size_t count)$

-:281: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#281: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:407:
+                                      const char *buff, size_t count)$

-:308: CHECK:SPACING: No space is necessary after a cast
#308: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:434:
+	return sysfs_emit(buff, "%u\n", (u32) val);

-:323: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#323: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:449:
+	} else if (attr == &dev_attr_gt_RP1_freq_mhz ||
[...]
+		   val = intel_rps_get_rp1_frequency(rps);

-:326: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#326: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:452:
+	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||
[...]
+		   val = intel_rps_get_rpn_frequency(rps);

-:326: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_gt_RPn_freq_mhz>
#326: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:452:
+	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||

-:327: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_rps_RPn_freq_mhz>
#327: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:453:
+		   attr == &dev_attr_rps_RPn_freq_mhz) {

total: 4 errors, 6 warnings, 12 checks, 486 lines checked
ab6a55a71e52 drm/i915/gt: Adding new sysfs frequency attributes


