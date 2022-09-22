Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA325E7042
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 01:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1BEB10E7D2;
	Thu, 22 Sep 2022 23:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDD5210E7D2;
 Thu, 22 Sep 2022 23:37:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C600FAADD2;
 Thu, 22 Sep 2022 23:37:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Date: Thu, 22 Sep 2022 23:37:05 -0000
Message-ID: <166388982577.19670.16199951508463387809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220922195127.2607496-1-nathan@kernel.org>
In-Reply-To: <20220922195127.2607496-1-nathan@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_CFI_violations_in_gt=5Fsysfs?=
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

Series: drm/i915: Fix CFI violations in gt_sysfs
URL   : https://patchwork.freedesktop.org/series/108917/
State : warning

== Summary ==

Error: dim checkpatch failed
8f1e51a50839 drm/i915: Fix CFI violations in gt_sysfs
-:76: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#76: 
[1]: https://lore.kernel.org/20220908215504.3686827-1-samitolvanen@google.com/

-:122: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#122: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs.c:61:
 }
+static struct kobj_attribute attr_id = __ATTR_RO(id);

-:225: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_func' - possible side-effects?
#225: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:115:
+#define INTEL_GT_SYSFS_STORE(_name, _func)						\
+	static ssize_t _name##_store(struct kobject *kobj,				\
+				     struct kobj_attribute *attr, const char *buff,	\
+				     size_t count)					\
+	{										\
+		int ret;								\
+		u32 val;								\
+											\
+		ret = kstrtou32(buff, 0, &val);						\
+		if (ret)								\
+			return ret;							\
+											\
+		ret = sysfs_gt_attribute_w_func(kobj, attr->attr, _func, val);		\
+											\
+		return ret ?: count;							\
+	}										\
+	static ssize_t _name##_dev_store(struct device *dev,				\
+					 struct device_attribute *attr,			\
+					 const char *buff, size_t count)		\
+	{										\
+		int ret;								\
+		u32 val;								\
+											\
+		ret = kstrtou32(buff, 0, &val);						\
+		if (ret)								\
+			return ret;							\
+											\
+		ret = sysfs_gt_attribute_w_func(&dev->kobj, attr->attr, _func, val);	\
+											\
+		return ret ?: count;							\
+	}

-:266: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#266: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:156:
+#define INTEL_GT_DUAL_ATTR_RW(_name) \
+	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0644,		\
+								 _name##_dev_show,	\
+								 _name##_dev_store);	\
+	INTEL_GT_ATTR_RW(_name)

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:162:
+#define INTEL_GT_DUAL_ATTR_RO(_name) \
+	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0444,		\
+								 _name##_dev_show,	\
+								 NULL);			\
+	INTEL_GT_ATTR_RO(_name)

-:654: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#654: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:406:
+INTEL_GT_SYSFS_SHOW_MAX(RPn_freq_mhz);

-:662: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_mode' - possible side-effects?
#662: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:414:
+#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store, _show_dev, _store_dev)		\
+	static struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode,		\
+								    _show_dev, _store_dev);	\
+	static struct kobj_attribute attr_rps_##_name = __ATTR(rps_##_name, _mode,		\
+							       _show, _store)

-:703: CHECK:CAMELCASE: Avoid CamelCase: <p##attr_##s##_RPn_freq_mhz>
#703: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:446:
+		&p##attr_##s##_RPn_freq_mhz.attr, \

-:840: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#840: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:676:
+INTEL_GT_ATTR_RO(media_RPn_freq_mhz);

-:850: CHECK:CAMELCASE: Avoid CamelCase: <attr_media_RPn_freq_mhz>
#850: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:682:
+	&attr_media_RPn_freq_mhz.attr,

total: 0 errors, 1 warnings, 9 checks, 786 lines checked


