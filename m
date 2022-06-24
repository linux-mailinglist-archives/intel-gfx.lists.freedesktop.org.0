Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC623558C0E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 02:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5A310F110;
	Fri, 24 Jun 2022 00:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A511310F10F;
 Fri, 24 Jun 2022 00:03:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BA4CA73C7;
 Fri, 24 Jun 2022 00:03:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Fri, 24 Jun 2022 00:03:04 -0000
Message-ID: <165602898460.16788.9082459857103206633@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220623233320.11041-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20220623233320.11041-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc/slpc=3A_Add_a_new_SLPC_selftest_=28rev3=29?=
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

Series: drm/i915/guc/slpc: Add a new SLPC selftest (rev3)
URL   : https://patchwork.freedesktop.org/series/105005/
State : warning

== Summary ==

Error: dim checkpatch failed
4982a0bd3fa6 drm/i915/guc/slpc: Add a new SLPC selftest
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
code duplication. Rename the "clamp" tests to vary_max_freq and vary_min_freq.

-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8ee2c227822e ("drm/i915/guc/slpc: Add SLPC selftest")'
#18: 
Fixes 8ee2c227822e ("drm/i915/guc/slpc: Add SLPC selftest")

-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:65:
+			pr_err("SWReq is %d, should be at most %d\n", req_freq,
+				max_freq + FREQUENCY_REQ_UNIT);

-:161: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#161: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:101:
+			pr_err("SWReq is %d, should be at least %d\n", req_freq,
+				min_freq - FREQUENCY_REQ_UNIT);

-:226: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#226: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:138:
 
+		}

-:347: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'engine->class == VIDEO_DECODE_CLASS'
#347: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:219:
+			if ((engine->class == VIDEO_DECODE_CLASS) ||
+			    (engine->class == VIDEO_ENHANCEMENT_CLASS)) {

-:347: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'engine->class == VIDEO_ENHANCEMENT_CLASS'
#347: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:219:
+			if ((engine->class == VIDEO_DECODE_CLASS) ||
+			    (engine->class == VIDEO_ENHANCEMENT_CLASS)) {

-:378: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#378: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:238:
+			pr_err("Perf Limit Reasons: 0x%x\n",
+				intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));

-:407: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#407: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:262:
+
+}

total: 1 errors, 1 warnings, 7 checks, 415 lines checked


