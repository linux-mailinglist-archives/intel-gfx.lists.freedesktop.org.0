Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111A960D5F2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 23:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4890710E0DF;
	Tue, 25 Oct 2022 21:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F099B10E0B6;
 Tue, 25 Oct 2022 21:00:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8E63A0169;
 Tue, 25 Oct 2022 21:00:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Date: Tue, 25 Oct 2022 21:00:31 -0000
Message-ID: <166673163192.15484.12954551310736502636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221025195015.1003517-1-andi.shyti@linux.intel.com>
In-Reply-To: <20221025195015.1003517-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_CFI_violations_in_gt=5Fsysfs_=28rev5=29?=
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

Series: drm/i915: Fix CFI violations in gt_sysfs (rev5)
URL   : https://patchwork.freedesktop.org/series/108917/
State : warning

== Summary ==

Error: dim checkpatch failed
e2d4c2e70109 drm/i915: Fix CFI violations in gt_sysfs
-:125: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#125: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs.c:61:
 }
+static struct kobj_attribute attr_id = __ATTR_RO(id);

-:268: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#268: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:155:
+#define INTEL_GT_DUAL_ATTR_RW(_name) \
+	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0644,		\
+								 _name##_dev_show,	\
+								 _name##_dev_store);	\
+	INTEL_GT_ATTR_RW(_name)

-:274: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#274: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:161:
+#define INTEL_GT_DUAL_ATTR_RO(_name) \
+	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0444,		\
+								 _name##_dev_show,	\
+								 NULL);			\
+	INTEL_GT_ATTR_RO(_name)

-:656: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#656: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:405:
+INTEL_GT_SYSFS_SHOW_MAX(RPn_freq_mhz);

-:664: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#664: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:413:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store, _show_dev, _store_dev)		\
+	static struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode,		\
+								    _show_dev, _store_dev);	\
+	static struct kobj_attribute attr_rps_##_name = __ATTR(rps_##_name, _mode,		\
+							       _show, _store)

-:705: CHECK:CAMELCASE: Avoid CamelCase: <p##attr_##s##_RPn_freq_mhz>
#705: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:445:
+		&p##attr_##s##_RPn_freq_mhz.attr, \

-:842: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#842: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:675:
+INTEL_GT_ATTR_RO(media_RPn_freq_mhz);

-:852: CHECK:CAMELCASE: Avoid CamelCase: <attr_media_RPn_freq_mhz>
#852: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:681:
+	&attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 8 checks, 785 lines checked


