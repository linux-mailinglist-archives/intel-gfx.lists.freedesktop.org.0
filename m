Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C62AE5BA35C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 01:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61E810EC24;
	Thu, 15 Sep 2022 23:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAF1110E312;
 Thu, 15 Sep 2022 23:46:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3BD3A7DFC;
 Thu, 15 Sep 2022 23:46:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 15 Sep 2022 23:46:21 -0000
Message-ID: <166328558177.11971.9440526841356648251@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220915232654.3283095-1-matthew.d.roper@intel.com>
In-Reply-To: <20220915232654.3283095-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Further_multi-gt_handling_=28rev2=29?=
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

Series: Further multi-gt handling (rev2)
URL   : https://patchwork.freedesktop.org/series/108577/
State : warning

== Summary ==

Error: dim checkpatch failed
7b4382364d95 drm/i915/gt: Cleanup partial engine discovery failures
-:34: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!engine->release"
#34: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1283:
+		GEM_BUG_ON(engine->release == NULL);

-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 0 errors, 1 warnings, 1 checks, 14 lines checked
b0a1a491ee2e drm/i915: Make GEM resume all engines
27ca7be62dd9 drm/i915: Make GEM suspend all GTs
385fa5430533 drm/i915: Handle all GTs on driver (un)load paths
-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/i915/i915_gem.c:1197:
+				i915_probe_error(dev_priv,
+						"Failed to initialize GPU, declaring it wedged!\n");

total: 0 errors, 0 warnings, 1 checks, 92 lines checked


