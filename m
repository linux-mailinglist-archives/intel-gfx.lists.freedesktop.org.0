Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7943B4DE4AC
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 00:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE9A10E5DF;
	Fri, 18 Mar 2022 23:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6930410E583;
 Fri, 18 Mar 2022 23:53:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62908AA01E;
 Fri, 18 Mar 2022 23:53:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 18 Mar 2022 23:53:54 -0000
Message-ID: <164764763437.31586.3294128296969476634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220318233938.149744-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220318233938.149744-1-andi.shyti@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/101551/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e394242076f2 drm/i915: Rename INTEL_REGION_LMEM with INTEL_REGION_LMEM_0
e56e16681fc9 drm/i915/gt: add gt_is_root() helper
5bf72a0d1d73 drm/i915: Prepare for multiple GTs
-:249: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#249: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:103:
+#define for_each_gt(gt__, i915__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_GT; \
+	     (id__)++) \
+		for_each_if(((gt__) = (i915__)->gt[(id__)]))

total: 0 errors, 0 warnings, 1 checks, 444 lines checked
3dbb22f19314 drm/i915/gt: create per-tile sysfs interface
-:72: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#72: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 196 lines checked
e051f78dc8fa drm/i915/gt: Create per-tile RC6 sysfs interface
-:121: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#121: 
new file mode 100644

-:157: CHECK:SPACING: No space is necessary after a cast
#157: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:32:
+	ret = (op == INTEL_GT_SYSFS_MAX) ? 0 : (u32) -1;

total: 0 errors, 1 warnings, 1 checks, 453 lines checked
557499c5d443 drm/i915/gt: Create per-tile RPS sysfs interfaces
-:320: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#320: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:458:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:320: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_show' - possible side-effects?
#320: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:458:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:320: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_store' - possible side-effects?
#320: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:458:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
+	struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
+	struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:334: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#334: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:472:
+static INTEL_GT_RPS_SYSFS_ATTR_RO(RPn_freq_mhz);

-:348: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_##s##_RPn_freq_mhz>
#348: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:486:
+		&dev_attr_##s##_RPn_freq_mhz.attr, \

total: 0 errors, 0 warnings, 5 checks, 503 lines checked
42ca62b1fbf5 drm/i915/gt: Add sysfs throttle frequency interfaces
-:87: CHECK:SPACING: No space is necessary after a cast
#87: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:521:
+				(struct intel_gt_bool_throttle_attr *) attr;

total: 0 errors, 0 warnings, 1 checks, 147 lines checked


