Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A2D6A3A51
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 06:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A47A010E088;
	Mon, 27 Feb 2023 05:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD6B110E088;
 Mon, 27 Feb 2023 05:24:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D30F5A0099;
 Mon, 27 Feb 2023 05:24:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Date: Mon, 27 Feb 2023 05:24:45 -0000
Message-ID: <167747548582.26341.4530398262385077956@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227050021.139929-1-tejas.upadhyay@intel.com>
In-Reply-To: <20230227050021.139929-1-tejas.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Fix_live=5Frequests_for_all_engines?=
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

Series: drm/i915/selftests: Fix live_requests for all engines
URL   : https://patchwork.freedesktop.org/series/114393/
State : warning

== Summary ==

Error: dim checkpatch failed
323deaeadb3e drm/i915/selftests: Fix live_requests for all engines
-:198: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#198: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1222:
+			pr_err("%s: Unable to create batch, err=%d\n",
+					__func__, err);

-:211: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#211: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1234:
+		GEM_BUG_ON(request[idx]->context->vm != batch->vm);

-:251: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#251: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1268:
+			pr_err("%s: failed to resolve batch, err=%d\n",
+					__func__, err);

-:273: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#273: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1288:
+		GEM_BUG_ON(!i915_request_completed(rq));

-:316: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#316: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1364:
+		GEM_BUG_ON(request[idx]->context->vm != batch->vm);

total: 0 errors, 3 warnings, 2 checks, 293 lines checked


