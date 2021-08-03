Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E85A63DE5E7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 07:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEB16E334;
	Tue,  3 Aug 2021 05:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D9A76E2C7;
 Tue,  3 Aug 2021 05:04:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25E93A73C7;
 Tue,  3 Aug 2021 05:04:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Aug 2021 05:04:18 -0000
Message-ID: <162796705815.9816.13252799622928147540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210803051121.72017-1-matthew.brost@intel.com>
In-Reply-To: <20210803051121.72017-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_GuC_submission_by_default_on_DG1?=
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

Series: Enable GuC submission by default on DG1
URL   : https://patchwork.freedesktop.org/series/93325/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9d575da473a3 drm/i915: Do not define vma on stack
-:12: WARNING:BAD_SIGN_OFF: Non-standard signature: 'Signef-off-by:' - perhaps 'Signed-off-by:'?
#12: 
Signef-off-by: Matthew Brost <matthew.brost@intel.com>

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
d90a57170211 drm/i915/guc: put all guc objects in lmem when available
-:110: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#110: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c:45:
+static int guc_xfer_rsa(struct intel_uc_fw *guc_fw,
 			 struct intel_uncore *uncore)

total: 0 errors, 0 warnings, 1 checks, 234 lines checked
dab0f2596b90 drm/i915/guc: Add DG1 GuC / HuC firmware defs
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
a06cd563cc84 drm/i915/guc: Enable GuC submission by default on DG1
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


