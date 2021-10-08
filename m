Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16FE42625B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 04:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFBF6E85E;
	Fri,  8 Oct 2021 02:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58F236E091;
 Fri,  8 Oct 2021 02:14:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50755A7E03;
 Fri,  8 Oct 2021 02:14:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Oct 2021 02:14:41 -0000
Message-ID: <163365928130.16848.18011154942034349330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007230903.4084-1-andi@etezian.org>
In-Reply-To: <20211007230903.4084-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_?=
 =?utf-8?b?KHJldjgp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev8)
URL   : https://patchwork.freedesktop.org/series/75333/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
81673b413127 drm/i915/gt: move remaining debugfs interfaces into gt
-:125: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#125: 
new file mode 100644

-:258: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#258: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq_debugfs.c:129:
+				   intel_uncore_read(uncore,
+						GEN12_VCS4_VCS5_INTR_MASK));

-:262: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#262: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq_debugfs.c:133:
+				   intel_uncore_read(uncore,
+						GEN12_VCS6_VCS7_INTR_MASK));

-:271: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#271: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq_debugfs.c:142:
+				   intel_uncore_read(uncore,
+						GEN12_VECS2_VECS3_INTR_MASK));

total: 0 errors, 1 warnings, 3 checks, 310 lines checked


