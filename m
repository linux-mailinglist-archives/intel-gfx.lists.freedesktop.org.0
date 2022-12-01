Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 709E163F81B
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 20:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74ACE10E155;
	Thu,  1 Dec 2022 19:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F6B810E155;
 Thu,  1 Dec 2022 19:24:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2945AAADD6;
 Thu,  1 Dec 2022 19:24:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pan, Xinhui" <xinhui.pan@amd.com>
Date: Thu, 01 Dec 2022 19:24:16 -0000
Message-ID: <166992265613.14638.8999039786169096645@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221129124538.177870-1-xinhui.pan@amd.com>
In-Reply-To: <20221129124538.177870-1-xinhui.pan@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Optimise_for_continuous_memory_allocation_=28rev3=29?=
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

Series: drm: Optimise for continuous memory allocation (rev3)
URL   : https://patchwork.freedesktop.org/series/111542/
State : warning

== Summary ==

Error: dim checkpatch failed
0c97871616d7 drm: Optimise for continuous memory allocation
-:93: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#93: FILE: drivers/gpu/drm/drm_buddy.c:420:
+		begin = end = free_block;

-:116: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#116: FILE: drivers/gpu/drm/drm_buddy.c:443:
+				BUG_ON(drm_buddy_block_offset(end) +

-:123: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#123: FILE: drivers/gpu/drm/drm_buddy.c:450:
+				BUG_ON(drm_buddy_block_offset(prev) +

-:131: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#131: FILE: drivers/gpu/drm/drm_buddy.c:458:
+			BUG_ON(pages < cur_pages);

total: 0 errors, 3 warnings, 1 checks, 168 lines checked


