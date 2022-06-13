Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AF054A1A2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 23:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F367610FB6F;
	Mon, 13 Jun 2022 21:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C73F10FB41;
 Mon, 13 Jun 2022 21:40:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02E52AA0EA;
 Mon, 13 Jun 2022 21:40:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Mon, 13 Jun 2022 21:40:06 -0000
Message-ID: <165515640697.9736.708683577311438526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220610234712.36849-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20220610234712.36849-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc/slpc=3A_Add_a_new_SLPC_selftest_=28rev2=29?=
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

Series: drm/i915/guc/slpc: Add a new SLPC selftest (rev2)
URL   : https://patchwork.freedesktop.org/series/105005/
State : warning

== Summary ==

Error: dim checkpatch failed
d128b50efeb4 drm/i915/guc/slpc: Add a new SLPC selftest
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
code duplication. Rename the "clamp" tests to vary_max_freq and vary_min_freq.

-:17: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8ee2c227822e ("drm/i915/guc/slpc: Add SLPC selftest")'
#17: 
Fixes 8ee2c227822e ("drm/i915/guc/slpc: Add SLPC selftest")

-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:45:
+static int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
+		  u32 *max_act_freq)

-:122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#122: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:69:
+			pr_err("SWReq is %d, should be at most %d\n", req_freq,
+				max_freq + FREQUENCY_REQ_UNIT);

-:161: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#161: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:85:
+static int vary_min_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
+		  u32 *max_act_freq)

-:196: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#196: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:109:
+			pr_err("SWReq is %d, should be at least %d\n", req_freq,
+				min_freq - FREQUENCY_REQ_UNIT);

-:348: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'engine->class == VIDEO_DECODE_CLASS'
#348: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:224:
+			if ((engine->class == VIDEO_DECODE_CLASS) ||
+			    (engine->class == VIDEO_ENHANCEMENT_CLASS)) {

-:348: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'engine->class == VIDEO_ENHANCEMENT_CLASS'
#348: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:224:
+			if ((engine->class == VIDEO_DECODE_CLASS) ||
+			    (engine->class == VIDEO_ENHANCEMENT_CLASS)) {

-:401: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#401: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:265:
+
+}

total: 1 errors, 1 warnings, 7 checks, 411 lines checked


