Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5E9490B89
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 16:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87CD510E39B;
	Mon, 17 Jan 2022 15:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AB1F10E39B;
 Mon, 17 Jan 2022 15:38:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86395A77A5;
 Mon, 17 Jan 2022 15:38:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 17 Jan 2022 15:38:19 -0000
Message-ID: <164243389951.28492.12727275504258335809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220117150910.231889-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220117150910.231889-1-andi.shyti@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/98950/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
28afa8633a19 drm/i915: Prepare for multiple GTs
-:255: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#255: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:91:
+#define for_each_gt(gt__, i915__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_GT; \
+	     (id__)++) \
+		for_each_if(((gt__) = (i915__)->gt[(id__)]))

total: 0 errors, 0 warnings, 1 checks, 436 lines checked
9028d350f206 drm/i915/gt: make a gt sysfs group and move power management files
-:112: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#112: 
new file mode 100644

-:592: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#592: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:294:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:592: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_show' - possible side-effects?
#592: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:294:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:592: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_store' - possible side-effects?
#592: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:294:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:615: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#615: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:317:
+static INTEL_GT_RPS_SYSFS_ATTR(RPn_freq_mhz, 0444, rps_rp_mhz_show, NULL);

-:625: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_##s##_RPn_freq_mhz>
#625: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:327:
+		&dev_attr_##s##_RPn_freq_mhz.attr, \

-:644: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#644: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:346:
+	} else if (attr == &dev_attr_gt_RP1_freq_mhz ||
[...]
+		   val = intel_rps_get_rp1_frequency(rps);

-:647: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#647: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:349:
+	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||
[...]
+		   val = intel_rps_get_rpn_frequency(rps);

-:647: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_gt_RPn_freq_mhz>
#647: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:349:
+	} else if (attr == &dev_attr_gt_RPn_freq_mhz ||

-:648: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_rps_RPn_freq_mhz>
#648: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:350:
+		   attr == &dev_attr_rps_RPn_freq_mhz) {

total: 0 errors, 3 warnings, 7 checks, 984 lines checked


