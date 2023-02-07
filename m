Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9CE68CF0B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE30F10E450;
	Tue,  7 Feb 2023 05:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F11110E450;
 Tue,  7 Feb 2023 05:32:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 289BAAADF7;
 Tue,  7 Feb 2023 05:32:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 07 Feb 2023 05:32:40 -0000
Message-ID: <167574796016.13140.2126518892432343220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230207050717.1833718-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230207050717.1833718-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_drm=5Fdbg_to_guc=5Fdbg_changes_=28rev2=29?=
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

Series: More drm_dbg to guc_dbg changes (rev2)
URL   : https://patchwork.freedesktop.org/series/113624/
State : warning

== Summary ==

Error: dim checkpatch failed
800ec7a87261 drm/i915/guc: More debug print updates - UC firmware
219cdc2fb45b drm/i915/guc: More debug print updates - GSC firmware
c1a8660e46a5 drm/i915/guc: More debug print updates - GuC reg capture
-:101: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#101: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:622:
 	if (!caplist) {
+		guc_dbg(guc, "Failed to alloc cached register capture list");

-:118: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#118: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:663:
 	if (!null_header) {
+		guc_dbg(guc, "Failed to alloc cached register capture null list");

total: 0 errors, 2 warnings, 0 checks, 214 lines checked
9f9950373225 drm/i915/guc: More debug print updates - GuC selftests
-:68: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#68: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:158:
 	if (!ce) {
+		guc_err(guc, "Context array allocation failed\n");

total: 0 errors, 1 warnings, 0 checks, 280 lines checked
88c7ab4b276b drm/i915/guc: More debug print updates - GuC SLPC
c0b7351f1f37 drm/i915/guc: More debug print updates - GuC logging
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:31:
+#define gt_notice_ratelimited(_gt, _fmt, ...) \
+	dev_notice_ratelimited((_gt)->i915->drm.dev, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 1 checks, 27 lines checked


