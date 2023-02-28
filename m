Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3176A5274
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 05:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A381010E499;
	Tue, 28 Feb 2023 04:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 178DA10E499;
 Tue, 28 Feb 2023 04:54:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F21A5AADEB;
 Tue, 28 Feb 2023 04:54:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Date: Tue, 28 Feb 2023 04:54:31 -0000
Message-ID: <167756007195.15130.16132517106580999217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230228044307.191639-1-tejas.upadhyay@intel.com>
In-Reply-To: <20230228044307.191639-1-tejas.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Fix_live=5Frequests_for_all_engines_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/selftests: Fix live_requests for all engines (rev2)
URL   : https://patchwork.freedesktop.org/series/114393/
State : warning

== Summary ==

Error: dim checkpatch failed
3342b504f81b drm/i915/selftests: Fix live_requests for all engines
-:213: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#213: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1234:
+		GEM_BUG_ON(request[idx]->context->vm != batch->vm);

-:275: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#275: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1288:
+		GEM_BUG_ON(!i915_request_completed(rq));

-:318: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#318: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1364:
+		GEM_BUG_ON(request[idx]->context->vm != batch->vm);

total: 0 errors, 3 warnings, 0 checks, 293 lines checked


