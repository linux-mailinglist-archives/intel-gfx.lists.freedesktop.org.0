Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE3B54A1EF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 00:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DD110FC5D;
	Mon, 13 Jun 2022 22:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7366A10FC5D;
 Mon, 13 Jun 2022 22:11:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CBFEAADD3;
 Mon, 13 Jun 2022 22:11:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 13 Jun 2022 22:11:16 -0000
Message-ID: <165515827641.9738.8508833346990210291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220611005711.596098-1-matthew.d.roper@intel.com>
In-Reply-To: <20220611005711.596098-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Extract=2C_polish=2C_and_document_multicast_handlin?=
 =?utf-8?q?g?=
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

Series: i915: Extract, polish, and document multicast handling
URL   : https://patchwork.freedesktop.org/series/105015/
State : warning

== Summary ==

Error: dim checkpatch failed
765b6cf9cb6f drm/i915/gt: Move multicast register handling to a dedicated file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:424: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#424: 
new file mode 100644

-:610: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#610: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:182:
+	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

total: 0 errors, 1 warnings, 1 checks, 1019 lines checked
023c00125617 drm/i915/gt: Cleanup interface for MCR operations
-:247: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#247: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:268:
+void intel_gt_mcr_multicast_write(struct intel_gt *gt,
+				i915_reg_t reg, u32 value)

total: 0 errors, 0 warnings, 1 checks, 554 lines checked


