Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E0156507
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 16:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 270376E340;
	Sat,  8 Feb 2020 15:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8D276E33F;
 Sat,  8 Feb 2020 15:15:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3D03A00FD;
 Sat,  8 Feb 2020 15:15:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sat, 08 Feb 2020 15:15:05 -0000
Message-ID: <158117490564.30226.1995791864026334957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200208122759.30833-1-andi@etezian.org>
In-Reply-To: <20200208122759.30833-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_make_a_gt_sysfs_group_and_move_power_managem?=
 =?utf-8?q?ent_files?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: make a gt sysfs group and move power management files
URL   : https://patchwork.freedesktop.org/series/73190/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e572bceec010 drm/i915/gt: make a gt sysfs group and move power management files
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

-:118: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#118: FILE: drivers/gpu/drm/i915/gt/sysfs_gt.c:43:
+	gt->kobj = kobject_create_and_add("gt",
+			kobject_get(&gt->i915->drm.primary->kdev->kobj));

-:512: WARNING:DEVICE_ATTR_FUNCTIONS: Consider renaming function(s) 'gt_rp_mhz_show' to 'gt_RP0_freq_mhz_show'
#512: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:344:
+static DEVICE_ATTR(gt_RP0_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:513: WARNING:DEVICE_ATTR_FUNCTIONS: Consider renaming function(s) 'gt_rp_mhz_show' to 'gt_RP1_freq_mhz_show'
#513: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:345:
+static DEVICE_ATTR(gt_RP1_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:514: CHECK:CAMELCASE: Avoid CamelCase: <gt_RPn_freq_mhz>
#514: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:346:
+static DEVICE_ATTR(gt_RPn_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:514: WARNING:DEVICE_ATTR_FUNCTIONS: Consider renaming function(s) 'gt_rp_mhz_show' to 'gt_RPn_freq_mhz_show'
#514: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:346:
+static DEVICE_ATTR(gt_RPn_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:529: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_gt_RPn_freq_mhz>
#529: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:361:
+	else if (attr == &dev_attr_gt_RPn_freq_mhz)

-:532: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#532: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:364:
+		BUG();

total: 0 errors, 5 warnings, 3 checks, 970 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
