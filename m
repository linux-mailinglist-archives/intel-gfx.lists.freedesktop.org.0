Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F897BB4F5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 12:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0C610E06B;
	Fri,  6 Oct 2023 10:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8746710E06B;
 Fri,  6 Oct 2023 10:15:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82727AA3D8;
 Fri,  6 Oct 2023 10:15:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Fri, 06 Oct 2023 10:15:18 -0000
Message-ID: <169658731851.6465.3894760319012786528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Subject=3A_=5BPATCH_dii-client_v6_0/4=5D_drm/i915=3A_Define?=
 =?utf-8?q?_and_use_GuC_and_CTB_TLB_invalidation_routines_=28rev3=29?=
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

Series: Subject: [PATCH dii-client v6 0/4] drm/i915: Define and use GuC and CTB TLB invalidation routines (rev3)
URL   : https://patchwork.freedesktop.org/series/124641/
State : warning

== Summary ==

Error: dim checkpatch failed
15ab16bd043e drm/i915: Add GuC TLB Invalidation device info flags
0f6bb7dee3fe drm/i915: Define and use GuC and CTB TLB invalidation routines
-:336: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#336: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1997:
+		GEM_BUG_ON(wait->busy);

total: 0 errors, 1 warnings, 0 checks, 452 lines checked
8c8cbfb298a3 drm/i915: No TLB invalidation on wedged or suspended GT
c6c6b6a10df4 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
c2d486e88ab3 drm/i915: Enable GuC TLB invalidations for MTL


