Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A84474A85
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 19:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D1310E15D;
	Tue, 14 Dec 2021 18:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F125810E15D;
 Tue, 14 Dec 2021 18:12:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB008A00A0;
 Tue, 14 Dec 2021 18:12:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 14 Dec 2021 18:12:47 -0000
Message-ID: <163950556794.24611.7952521366605911387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211214170500.28569-1-matthew.brost@intel.com>
In-Reply-To: <20211214170500.28569-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_stealing_guc=5Fids_+_test_=28rev3=29?=
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

Series: Fix stealing guc_ids + test (rev3)
URL   : https://patchwork.freedesktop.org/series/97896/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b855be58ca75 drm/i915/guc: Use correct context lock when callig clr_context_registered
b2c8358f28bf drm/i915/guc: Only assign guc_id.id when stealing guc_id
16e7a94892d5 drm/i915/guc: Remove racey GEM_BUG_ON
4d46938487d5 drm/i915/guc: Don't hog IRQs when destroying contexts
cbcb8fe154c3 drm/i915/guc: Add extra debug on CT deadlock
344e5cf583e1 drm/i915/guc: Kick G2H tasklet if no credits
c07631e2c9df drm/i915/guc: Selftest for stealing of guc ids
-:183: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#183: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:153:
+	if (!ce) {
+		pr_err("Context array allocation failed\n");

total: 0 errors, 1 warnings, 0 checks, 265 lines checked


