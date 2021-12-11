Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7424710F6
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 03:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F5410E2B5;
	Sat, 11 Dec 2021 02:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E512A10E30F;
 Sat, 11 Dec 2021 02:28:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD964A0096;
 Sat, 11 Dec 2021 02:28:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Sat, 11 Dec 2021 02:28:57 -0000
Message-ID: <163918973787.10523.932745671404526079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211211005612.8575-1-matthew.brost@intel.com>
In-Reply-To: <20211211005612.8575-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_stealing_guc=5Fids_+_test?=
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

Series: Fix stealing guc_ids + test
URL   : https://patchwork.freedesktop.org/series/97896/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
52305c422f77 drm/i915/guc: Use correct context lock when callig clr_context_registered
eb4fbbb3657c drm/i915/guc: Only assign guc_id.id when stealing guc_id
9018d8758c77 drm/i915/guc: Remove racey GEM_BUG_ON
e111f83640ff drm/i915/guc: Don't hog IRQs when destroying contexts
1bec569ba9a3 drm/i915/guc: Add extra debug on CT deadlock
30672810bf14 drm/i915/guc: Kick G2H tasklet if no credits
df10803955c6 drm/i915/guc: Selftest for stealing of guc ids
-:52: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'guc' may be better as '(guc)' to avoid precedence issues
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:148:
+#define NUMBER_MULTI_LRC_GUC_ID(guc)	(guc->submission_state.num_guc_ids / 16)

-:158: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#158: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:153:
+	if (!ce) {
+		pr_err("Context array allocation failed\n");

total: 0 errors, 1 warnings, 1 checks, 262 lines checked


