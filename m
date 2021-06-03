Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBC53999AB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 07:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6166F3A4;
	Thu,  3 Jun 2021 05:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 308376E0A8;
 Thu,  3 Jun 2021 05:10:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FE25A47EB;
 Thu,  3 Jun 2021 05:10:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 03 Jun 2021 05:10:04 -0000
Message-ID: <162269700410.8033.5412476564193235687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603051630.2635-1-matthew.brost@intel.com>
In-Reply-To: <20210603051630.2635-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_CTBs_changes_+_a_few_misc_patches?=
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

Series: GuC CTBs changes + a few misc patches
URL   : https://patchwork.freedesktop.org/series/90923/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b995ee93341d drm/i915/guc: skip disabling CTBs before sanitizing the GuC
615b2e145353 drm/i915/guc: use probe_error log for CT enablement failure
64633e8a2c5c drm/i915/guc: enable only the user interrupt when using GuC submission
ff1239608127 drm/i915/guc: Remove sample_forcewake h2g action
cd4bc4bbb7db drm/i915/guc: Keep strict GuC ABI definitions
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 476 lines checked
92abfd675d17 drm/i915/guc: Drop guc->interrupts.enabled
b4d1bfbad95a drm/i915/guc: Stop using fence/status from CTB descriptor
3fdb982139de drm/i915: Promote ptrdiff() to i915_utils.h
b8b55afb041b drm/i915/guc: Only rely on own CTB size
5fd584084741 drm/i915/guc: Don't repeat CTB layout calculations
1ef8d35c354a drm/i915/guc: Replace CTB array with explicit members
29418a3ae1ca drm/i915/guc: Update sizes of CTB buffers
9397ecf1bd5d drm/i915/guc: Relax CTB response timeout
2807c0d82a1f drm/i915/guc: Start protecting access to CTB descriptors
-:87: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:36:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 61 lines checked
ce3277877e1b drm/i915/guc: Ensure H2G buffer updates visible before tail update
bd544d24227f drm/i915/guc: Stop using mutex while sending CTB messages
348ce9572410 drm/i915/guc: Don't receive all G2H messages in irq handler
294ee7f74a50 drm/i915/guc: Always copy CT message to new allocation
da53d759233e drm/i915/guc: Early initialization of GuC send registers
0a6789a09f83 drm/i915/guc: Use guc_class instead of engine_class in fw interface


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
