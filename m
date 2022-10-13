Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AD75FE51A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 00:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3103C10E975;
	Thu, 13 Oct 2022 22:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82F0410E975;
 Thu, 13 Oct 2022 22:13:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AD2EAADD4;
 Thu, 13 Oct 2022 22:13:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Date: Thu, 13 Oct 2022 22:13:45 -0000
Message-ID: <166569922547.20367.2035437183698542167@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221013205909.1282545-1-nathan@kernel.org>
In-Reply-To: <20221013205909.1282545-1-nathan@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_CFI_violations_in_gt=5Fsysfs_=28rev3=29?=
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

Series: drm/i915: Fix CFI violations in gt_sysfs (rev3)
URL   : https://patchwork.freedesktop.org/series/108917/
State : warning

== Summary ==

Error: dim checkpatch failed
26024ab54a1b drm/i915: Fix CFI violations in gt_sysfs
-:123: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#123: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs.c:61:
 }
+static struct kobj_attribute attr_id = __ATTR_RO(id);

-:266: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#266: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:155:
+#define INTEL_GT_DUAL_ATTR_RW(_name) \
+	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0644,		\
+								 _name##_dev_show,	\
+								 _name##_dev_store);	\
+	INTEL_GT_ATTR_RW(_name)

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:161:
+#define INTEL_GT_DUAL_ATTR_RO(_name) \
+	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0444,		\
+								 _name##_dev_show,	\
+								 NULL);			\
+	INTEL_GT_ATTR_RO(_name)

-:654: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#654: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:405:
+INTEL_GT_SYSFS_SHOW_MAX(RPn_freq_mhz);

-:662: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#662: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:413:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store, _show_dev, _store_dev)		\
+	static struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode,		\
+								    _show_dev, _store_dev);	\
+	static struct kobj_attribute attr_rps_##_name = __ATTR(rps_##_name, _mode,		\
+							       _show, _store)

-:703: CHECK:CAMELCASE: Avoid CamelCase: <p##attr_##s##_RPn_freq_mhz>
#703: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:445:
+		&p##attr_##s##_RPn_freq_mhz.attr, \

-:840: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#840: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:675:
+INTEL_GT_ATTR_RO(media_RPn_freq_mhz);

-:850: CHECK:CAMELCASE: Avoid CamelCase: <attr_media_RPn_freq_mhz>
#850: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:681:
+	&attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 8 checks, 785 lines checked


