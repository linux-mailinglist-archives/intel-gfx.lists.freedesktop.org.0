Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E345471542
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 19:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4F010E330;
	Sat, 11 Dec 2021 18:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A636410E330;
 Sat, 11 Dec 2021 18:01:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D5CAA0096;
 Sat, 11 Dec 2021 18:01:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Sat, 11 Dec 2021 18:01:58 -0000
Message-ID: <163924571860.10522.13872437764593257138@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211211173545.23536-1-matthew.brost@intel.com>
In-Reply-To: <20211211173545.23536-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_stealing_guc=5Fids_+_test_=28rev2=29?=
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

Series: Fix stealing guc_ids + test (rev2)
URL   : https://patchwork.freedesktop.org/series/97896/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
93cd046bb4d5 drm/i915/guc: Use correct context lock when callig clr_context_registered
8827a89b918a drm/i915/guc: Only assign guc_id.id when stealing guc_id
49b97b5641b7 drm/i915/guc: Remove racey GEM_BUG_ON
b9a723ec8a6a drm/i915/guc: Don't hog IRQs when destroying contexts
27e27d3dd0da drm/i915/guc: Add extra debug on CT deadlock
40d22ca66ddb drm/i915/guc: Kick G2H tasklet if no credits
24c29c4034df drm/i915/guc: Selftest for stealing of guc ids
-:178: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#178: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:153:
+	if (!ce) {
+		pr_err("Context array allocation failed\n");

total: 0 errors, 1 warnings, 0 checks, 265 lines checked


