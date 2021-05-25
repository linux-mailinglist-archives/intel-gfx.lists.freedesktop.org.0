Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE8B390B0E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 23:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FCC6EB26;
	Tue, 25 May 2021 21:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8777C6EB23;
 Tue, 25 May 2021 21:10:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7768FA73C9;
 Tue, 25 May 2021 21:10:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 25 May 2021 21:10:20 -0000
Message-ID: <162197702046.1319.14361343561465180199@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210525211541.87696-1-matthew.brost@intel.com>
In-Reply-To: <20210525211541.87696-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Non-interface_changing_GuC_CTBs_updates?=
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

Series: Non-interface changing GuC CTBs updates
URL   : https://patchwork.freedesktop.org/series/90552/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
232417d031b9 drm/i915/guc: skip disabling CTBs before sanitizing the GuC
341c70656750 drm/i915/guc: use probe_error log for CT enablement failure
-:57: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#57: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:38:
+#define CT_PROBE_ERROR(_ct, _fmt, ...) \
+	i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__);

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
b6b4993218ab drm/i915/guc: enable only the user interrupt when using GuC submission
7bc25d889ff7 drm/i915/guc: Remove sample_forcewake h2g action
-:11: WARNING:BAD_SIGN_OFF: Use a single space after Cc:
#11: 
Cc:  Vinay Belgaumkar <vinay.belgaumkar@intel.com>

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
a02cb3e825d6 drm/i915/guc: Keep strict GuC ABI definitions
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 476 lines checked
776f36a2bce0 drm/i915/guc: Stop using fence/status from CTB descriptor
877a8bd1e6bd drm/i915: Promote ptrdiff() to i915_utils.h
62559d3051cf drm/i915/guc: Only rely on own CTB size
51f154fa0b01 drm/i915/guc: Don't repeat CTB layout calculations
23f84eb2bb28 drm/i915/guc: Replace CTB array with explicit members
ef402f00ed93 drm/i915/guc: Update sizes of CTB buffers
fcdee0ecb586 drm/i915/guc: Relax CTB response timeout
-:7: WARNING:TYPO_SPELLING: 'procesing' may be misspelled - perhaps 'processing'?
#7: 
parallel to the GuC for procesing, so we shouldn't assume any more
                        ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
c48c38ded661 drm/i915/guc: Start protecting access to CTB descriptors
-:87: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:36:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 61 lines checked
7d0c670b963f drm/i915/guc: Ensure H2G buffer updates visible before tail update
-:23: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:331:
+static void write_barrier(struct intel_guc_ct *ct) {

-:31: WARNING:MEMORY_BARRIER: memory barrier without comment
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:339:
+		wmb();

total: 1 errors, 1 warnings, 0 checks, 30 lines checked
29bcbe2dea0e drm/i915/guc: Stop using mutex while sending CTB messages
5e9855bcaa3f drm/i915/guc: Don't receive all G2H messages in irq handler
b4f470d880ca drm/i915/guc: Always copy CT message to new allocation


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
