Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A260686D91
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 19:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2054610E43B;
	Wed,  1 Feb 2023 18:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AA6610E43B;
 Wed,  1 Feb 2023 18:04:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81E63AADD2;
 Wed,  1 Feb 2023 18:04:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 01 Feb 2023 18:04:07 -0000
Message-ID: <167527464750.25551.14585311127034834815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230201165146.4056691-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230201165146.4056691-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Consolidate_TLB_invalidation_flow?=
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

Series: drm/i915: Consolidate TLB invalidation flow
URL   : https://patchwork.freedesktop.org/series/113563/
State : warning

== Summary ==

Error: dim checkpatch failed
c0fc33d4e83f drm/i915: Consolidate TLB invalidation flow
-:99: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#99: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1207:
+	if (gt_WARN_ON_ONCE(engine->gt,
+			     class >= num ||

-:157: ERROR:OPEN_BRACE: open brace '{' following struct go on the same line
#157: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:350:
+struct intel_engine_tlb_inv
+{

total: 1 errors, 0 warnings, 1 checks, 324 lines checked


