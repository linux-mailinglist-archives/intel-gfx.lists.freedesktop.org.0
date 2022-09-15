Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 673D75B9296
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 04:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626AD10EA40;
	Thu, 15 Sep 2022 02:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A728810EA40;
 Thu, 15 Sep 2022 02:18:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78CB2A0BCB;
 Thu, 15 Sep 2022 02:18:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 15 Sep 2022 02:18:17 -0000
Message-ID: <166320829746.11974.1457451279030282356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220914220427.3091448-1-matthew.d.roper@intel.com>
In-Reply-To: <20220914220427.3091448-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Further_multi-gt_handling?=
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

Series: Further multi-gt handling
URL   : https://patchwork.freedesktop.org/series/108577/
State : warning

== Summary ==

Error: dim checkpatch failed
7cda801d9e36 drm/i915/gt: Cleanup partial engine discovery failures
-:43: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!engine->release"
#43: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1289:
+		GEM_BUG_ON(engine->release == NULL);

-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 0 errors, 1 warnings, 1 checks, 35 lines checked
f6b63c25ea92 drm/i915: Make GEM resume all engines
c19f4077a5e6 drm/i915: Make GEM suspend all GTs
261248f1b8f7 drm/i915: Handle all GTs on driver (un)load paths
-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/i915_gem.c:1199:
+				i915_probe_error(dev_priv,
+						"Failed to initialize GPU, declaring it wedged!\n");

total: 0 errors, 0 warnings, 1 checks, 95 lines checked


