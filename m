Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3C13FD166
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 04:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448ED894B7;
	Wed,  1 Sep 2021 02:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DC37894B7;
 Wed,  1 Sep 2021 02:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65FC9A8830;
 Wed,  1 Sep 2021 02:37:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 01 Sep 2021 02:37:27 -0000
Message-ID: <163046384735.2831.3081711947168083952@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210901022043.2395135-1-John.C.Harrison@Intel.com>
In-Reply-To: <20210901022043.2395135-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_GuC_submission_by_default_on_DG1_=28rev2=29?=
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

Series: Enable GuC submission by default on DG1 (rev2)
URL   : https://patchwork.freedesktop.org/series/93325/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6980dea021fa drm/i915: Do not define vma on stack
8e2a5b71ad3f drm/i915/guc: put all guc objects in lmem when available
86c5db967bd1 drm/i915/guc: Add DG1 GuC / HuC firmware defs
c88604227edc drm/i915/guc: Enable GuC submission by default on DG1
97b71fbd31ae Me: Allow relocs on DG1 for CI
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:19: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
4ec48c0b396e Me: Workaround LMEM blow up
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:19: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
edda215da5e9 Me: Dump GuC log to dmesg on SLPC load failure
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:17: CHECK:SPACING: No space is necessary after a cast
#17: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:267:
+						 (intel_engine_mask_t) ~0U);

-:56: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#56: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1999:
+	if (!buf) {
+		drm_err(&i915->drm, "Failed to allocate buffer for error capture!\n");

-:68: WARNING:LINE_SPACING: Missing a blank line after declarations
#68: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2011:
+		ssize_t got = i915_gpu_coredump_copy_to_buffer(error, buf, pos_err, buf_size - 1);
+		if (got <= 0)

-:91: CHECK:BRACES: braces {} should be used on all arms of this statement
#91: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2034:
+			if (count > MAX_CHUNK) {
[...]
+			} else
[...]

-:97: WARNING:LINE_SPACING: Missing a blank line after declarations
#97: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2040:
+					char chr = ptr[pos];
+					ptr[pos] = 0;

-:104: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2047:
+					drm_info(&i915->drm, "Capture %c%s%c\n", tag[0], ptr2, tag[1]);

-:107: CHECK:BRACES: Unbalanced braces around else statement
#107: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2050:
+			} else

-:139: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 5 warnings, 3 checks, 118 lines checked


