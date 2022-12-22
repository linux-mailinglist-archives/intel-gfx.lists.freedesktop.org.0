Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE06540F8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D1C10E0C6;
	Thu, 22 Dec 2022 12:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 599A089EFF;
 Thu, 22 Dec 2022 12:25:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50FE3AA0ED;
 Thu, 22 Dec 2022 12:25:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Wang" <zyytlz.wz@163.com>
Date: Thu, 22 Dec 2022 12:25:24 -0000
Message-ID: <167171192430.14837.1449640528570194950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <tencent_ED24158E83CB9885E8BDD173EB5896B51906@qq.com>
In-Reply-To: <tencent_ED24158E83CB9885E8BDD173EB5896B51906@qq.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_fix_double-free_bug_in_split=5F2MB=5Fgtt=5F?=
 =?utf-8?q?entry_=28rev8=29?=
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

Series: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry (rev8)
URL   : https://patchwork.freedesktop.org/series/108732/
State : warning

== Summary ==

Error: dim checkpatch failed
c4caf92615d0 drm/i915/gvt: fix double free bug in split_2MB_gtt_entry
-:73: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#73: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1254:
+			ret1 = ppgtt_invalidate_spt_by_shadow_entry(

-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1258:
+				gvt_vgpu_err("fail: shadow page %p shadow entry 0x%llx type %d\n",
+				spt, e.val64, e.type);

-:82: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#82: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1263:
+			GEM_BUG_ON(1);

-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1269:
+	trace_spt_change(sub_spt->vgpu->id, "release", sub_spt,
+		sub_spt->guest_page.gfn, sub_spt->shadow_page.type);

total: 0 errors, 1 warnings, 3 checks, 73 lines checked


