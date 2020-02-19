Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEF0164FEB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DA96EC97;
	Wed, 19 Feb 2020 20:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 691FF6EC97;
 Wed, 19 Feb 2020 20:32:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62CB0A0087;
 Wed, 19 Feb 2020 20:32:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Wed, 19 Feb 2020 20:32:21 -0000
Message-ID: <158214434140.21059.8131537283221218770@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219190223.16972-1-andi.shyti@intel.com>
In-Reply-To: <20200219190223.16972-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_make_a_gt_sysfs_group_and_move_power_managem?=
 =?utf-8?q?ent_files_=28rev5=29?=
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

Series: drm/i915/gt: make a gt sysfs group and move power management files (rev5)
URL   : https://patchwork.freedesktop.org/series/73190/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1ad40388b0d2 drm/i915/gt: make a gt sysfs group and move power management files
-:88: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#88: 
new file mode 100644

-:164: WARNING:TYPO_SPELLING: 'wether' may be misspelled - perhaps 'whether'?
#164: FILE: drivers/gpu/drm/i915/gt/sysfs_gt.c:72:
+	 * the name gt tells us wether sysfs_root

-:567: WARNING:DEVICE_ATTR_FUNCTIONS: Consider renaming function(s) 'gt_rp_mhz_show' to 'gt_RP0_freq_mhz_show'
#567: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:362:
+static DEVICE_ATTR(gt_RP0_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:568: WARNING:DEVICE_ATTR_FUNCTIONS: Consider renaming function(s) 'gt_rp_mhz_show' to 'gt_RP1_freq_mhz_show'
#568: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:363:
+static DEVICE_ATTR(gt_RP1_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:569: CHECK:CAMELCASE: Avoid CamelCase: <gt_RPn_freq_mhz>
#569: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:364:
+static DEVICE_ATTR(gt_RPn_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:569: WARNING:DEVICE_ATTR_FUNCTIONS: Consider renaming function(s) 'gt_rp_mhz_show' to 'gt_RPn_freq_mhz_show'
#569: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:364:
+static DEVICE_ATTR(gt_RPn_freq_mhz, 0444, gt_rp_mhz_show, NULL);

-:584: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_gt_RPn_freq_mhz>
#584: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:379:
+	else if (attr == &dev_attr_gt_RPn_freq_mhz)

-:587: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#587: FILE: drivers/gpu/drm/i915/gt/sysfs_gt_pm.c:382:
+		BUG();

total: 0 errors, 6 warnings, 2 checks, 1009 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
