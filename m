Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA9011E8D4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 18:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D286EB44;
	Fri, 13 Dec 2019 17:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E91E89CC4;
 Fri, 13 Dec 2019 17:00:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26FB1A0BA8;
 Fri, 13 Dec 2019 17:00:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Fri, 13 Dec 2019 17:00:19 -0000
Message-ID: <157625641915.23800.6877469779461544759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213124549.28412-1-andi@etezian.org>
In-Reply-To: <20191213124549.28412-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Some_debugfs_enhancements_=28rev3=29?=
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

Series: Some debugfs enhancements (rev3)
URL   : https://patchwork.freedesktop.org/series/70658/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
459c6bf64d8f drm/i915/rps: Add frequency translation helpers
9bbd26a433a3 drm/i915/gt: Move power management debug files into a gt aware debugfs
-:29: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#29: 
new file mode 100644

-:34: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/gt/debugfs_gt.c', please use '//' instead
#34: FILE: drivers/gpu/drm/i915/gt/debugfs_gt.c:1:
+/* SPDX-License-Identifier: MIT */

-:34: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#34: FILE: drivers/gpu/drm/i915/gt/debugfs_gt.c:1:
+/* SPDX-License-Identifier: MIT */

-:91: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#91: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:1:
+/*

-:92: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#92: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:2:
+ * SPDX-License-Identifier: MIT

-:185: CHECK:BRACES: braces {} should be used on all arms of this statement
#185: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:95:
+		if (INTEL_GEN(i915) >= 9)
[...]
+		else {
[...]

-:187: CHECK:BRACES: Unbalanced braces around else statement
#187: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:97:
+		else {

-:516: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#516: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:426:
+		gen9_powergate_enable = intel_uncore_read(uncore,
+						GEN9_PG_ENABLE);

-:518: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#518: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:428:
+		gen9_powergate_status = intel_uncore_read(uncore,
+						GEN9_PWRGT_DOMAIN_STATUS);

-:531: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#531: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:441:
+		seq_printf(m, "Render Well Gating Enabled: %s\n",
+			yesno(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));

-:533: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#533: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:443:
+		seq_printf(m, "Media Well Gating Enabled: %s\n",
+			yesno(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));

-:540: CHECK:CAMELCASE: Avoid CamelCase: <GEN6_RCn_MASK>
#540: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:450:
+	switch (gt_core_status & GEN6_RCn_MASK) {

-:565: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#565: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:475:
+		seq_printf(m, "Render Power Well: %s\n",
+			(gen9_powergate_status &

-:568: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#568: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.c:478:
+		seq_printf(m, "Media Power Well: %s\n",
+			(gen9_powergate_status &

-:723: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#723: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.h:1:
+/*

-:724: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#724: FILE: drivers/gpu/drm/i915/gt/debugfs_pm.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 7 warnings, 9 checks, 1341 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
