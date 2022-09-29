Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331A65EFCD5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 20:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3510910EBD5;
	Thu, 29 Sep 2022 18:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D99310EBD0;
 Thu, 29 Sep 2022 18:16:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43DE6A0099;
 Thu, 29 Sep 2022 18:16:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Wang" <zyytlz.wz@163.com>
Date: Thu, 29 Sep 2022 18:16:50 -0000
Message-ID: <166447541027.11956.12791935085923618646@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <tencent_ED24158E83CB9885E8BDD173EB5896B51906@qq.com>
In-Reply-To: <tencent_ED24158E83CB9885E8BDD173EB5896B51906@qq.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_fix_double-free_bug_in_split=5F2MB=5Fgtt=5F?=
 =?utf-8?q?entry_=28rev3=29?=
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

Series: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry (rev3)
URL   : https://patchwork.freedesktop.org/series/108732/
State : warning

== Summary ==

Error: dim checkpatch failed
4b8a44dfb06a drm/i915/gvt: fix double free bug in split_2MB_gtt_entry
-:54: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#54: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1064:
+		trace_spt_change(spt->vgpu->id, "release", spt,
 			 spt->guest_page.gfn, spt->shadow_page.type);

total: 0 errors, 0 warnings, 1 checks, 53 lines checked


