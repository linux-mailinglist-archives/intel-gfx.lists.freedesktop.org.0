Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027082C8FA8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9226E8A1;
	Mon, 30 Nov 2020 21:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AF886E89B;
 Mon, 30 Nov 2020 21:11:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F3C1A0BCB;
 Mon, 30 Nov 2020 21:11:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Nov 2020 21:11:14 -0000
Message-ID: <160677067432.10641.11540516464456898367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130131910.9412-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201130131910.9412-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/gt=3A_Add_an_insert?=
 =?utf-8?q?=5Fentry_for_gen8=5Fppgtt?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/5] drm/i915/gt: Add an insert_entry for gen8_ppgtt
URL   : https://patchwork.freedesktop.org/series/84406/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1c46e6988161 drm/i915/gt: Add an insert_entry for gen8_ppgtt
9faed65cd732 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
cdb5b864f376 drm/i915/gt: Export the pinned context constructor
e4efd4ff4c9e drm/i915/gt: Pipelined page migration
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
new file mode 100644

-:255: CHECK:SPACING: spaces preferred around that '/' (ctx:WxV)
#255: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:198:
+	pkt = min_t(int, pkt, (ring->size - ring->emit) /sizeof(u32) - 6);
 	                                                ^

-:271: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!hdr"
#271: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:214:
+		if (hdr == NULL) {

-:277: CHECK:SPACING: spaces preferred around that '/' (ctx:WxV)
#277: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:220:
+			pkt = min_t(int, pkt, (ring->size - ring->emit) /sizeof(u32) - 6);
 			                                                ^

total: 0 errors, 1 warnings, 3 checks, 599 lines checked
d38f43a8ebcc drm/i915/gt: Pipelined clear


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
