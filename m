Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E169E5FA0CE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 17:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B6A10E62B;
	Mon, 10 Oct 2022 15:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB3BC10E160;
 Mon, 10 Oct 2022 15:00:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2C38AADD4;
 Mon, 10 Oct 2022 15:00:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Wang" <zyytlz.wz@163.com>
Date: Mon, 10 Oct 2022 15:00:43 -0000
Message-ID: <166541404369.29672.17925459090320616853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <tencent_ED24158E83CB9885E8BDD173EB5896B51906@qq.com>
In-Reply-To: <tencent_ED24158E83CB9885E8BDD173EB5896B51906@qq.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_fix_double-free_bug_in_split=5F2MB=5Fgtt=5F?=
 =?utf-8?q?entry_=28rev5=29?=
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

Series: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry (rev5)
URL   : https://patchwork.freedesktop.org/series/108732/
State : warning

== Summary ==

Error: dim checkpatch failed
179c557abab8 drm/i915/gvt: fix double free bug in split_2MB_gtt_entry
-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1031:
+		trace_spt_change(spt->vgpu->id, "release", spt,
+			 spt->guest_page.gfn, spt->shadow_page.type);

total: 0 errors, 0 warnings, 1 checks, 68 lines checked


