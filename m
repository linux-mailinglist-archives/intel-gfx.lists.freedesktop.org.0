Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDD4117C2A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 01:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3176E5A4;
	Tue, 10 Dec 2019 00:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D62B6E214;
 Tue, 10 Dec 2019 00:09:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DAB5A0073;
 Mon,  9 Dec 2019 23:33:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Mon, 09 Dec 2019 23:33:46 -0000
Message-ID: <157593442641.14782.17672729599105158074@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191209223556.3897-1-andi@etezian.org>
In-Reply-To: <20191209223556.3897-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Some_debugfs_enhancements?=
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

Series: Some debugfs enhancements
URL   : https://patchwork.freedesktop.org/series/70658/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
112b55276b89 drm/i915/rps: Add frequency translation helpers
77e7a15ebe7b drm/i915/gt: Move power management debugfs files into gt
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:29: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#29: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:1:
+/*

-:30: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#30: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:2:
+ * SPDX-License-Identifier: MIT

-:121: CHECK:BRACES: braces {} should be used on all arms of this statement
#121: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:93:
+		if (INTEL_GEN(i915) >= 9)
[...]
+		else {
[...]

-:123: CHECK:BRACES: Unbalanced braces around else statement
#123: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:95:
+		else {

-:442: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#442: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:414:
+		gen9_powergate_enable = intel_uncore_read(uncore,
+						GEN9_PG_ENABLE);

-:444: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#444: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:416:
+		gen9_powergate_status = intel_uncore_read(uncore,
+						GEN9_PWRGT_DOMAIN_STATUS);

-:457: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#457: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:429:
+		seq_printf(m, "Render Well Gating Enabled: %s\n",
+			yesno(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));

-:459: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#459: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:431:
+		seq_printf(m, "Media Well Gating Enabled: %s\n",
+			yesno(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));

-:466: CHECK:CAMELCASE: Avoid CamelCase: <GEN6_RCn_MASK>
#466: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:438:
+	switch (gt_core_status & GEN6_RCn_MASK) {

-:491: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#491: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:463:
+		seq_printf(m, "Render Power Well: %s\n",
+			(gen9_powergate_status &

-:494: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#494: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:466:
+		seq_printf(m, "Media Power Well: %s\n",
+			(gen9_powergate_status &

-:628: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#628: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h:1:
+/*

-:629: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#629: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 5 warnings, 9 checks, 1287 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
