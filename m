Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C4B4412DB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 06:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F251F89E98;
	Mon,  1 Nov 2021 05:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9F6289E63;
 Mon,  1 Nov 2021 05:05:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2E13A66C9;
 Mon,  1 Nov 2021 05:05:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Mon, 01 Nov 2021 05:05:49 -0000
Message-ID: <163574314963.18410.986661523839716347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211101043937.35747-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20211101043937.35747-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc/slpc=3A_Implement_waitboost_for_SLPC_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/guc/slpc: Implement waitboost for SLPC (rev2)
URL   : https://patchwork.freedesktop.org/series/96082/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2f567ab7135f drm/i915/guc/slpc: Define and initialize boost frequency
-:13: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#13: 
a few lines below to accomodate this.
                     ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 154 lines checked
b9821acf779c drm/i915/guc/slpc: Add waitboost functionality for SLPC
-:87: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:452:
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+

total: 0 errors, 0 warnings, 1 checks, 99 lines checked
a588e644a1f8 drm/i915/guc/slpc: Update boost sysfs hooks for SLPC


