Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA5619DEBF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 21:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C247E6EC72;
	Fri,  3 Apr 2020 19:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B28A6E97A;
 Fri,  3 Apr 2020 19:50:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71B1FA41FB;
 Fri,  3 Apr 2020 19:50:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Fri, 03 Apr 2020 19:50:01 -0000
Message-ID: <158594340143.13349.8678521266167795213@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403183837.99554-1-andi@etezian.org>
In-Reply-To: <20200403183837.99554-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_?=
 =?utf-8?b?KHJldjQp?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev4)
URL   : https://patchwork.freedesktop.org/series/75333/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
88806913668d drm/i915/gt: move remaining debugfs interfaces into gt
-:119: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#119: 
new file mode 100644

-:443: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#443: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:74:
+		eu_reg[2 * s + 1] = intel_uncore_read(uncore,
+						  GEN10_SS23_EU_PGCTL_ACK(s));

-:493: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#493: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:124:
+		eu_reg[2*s] = intel_uncore_read(uncore,
 		        ^

-:495: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#495: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:126:
+		eu_reg[2*s + 1] = intel_uncore_read(uncore,
 		        ^

-:533: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#533: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:164:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                               ^

-:533: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#533: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:164:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                                      ^

-:534: CHECK:SPACING: spaces preferred around that '%' (ctx:VxV)
#534: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:165:
+					       eu_mask[ss%2]);
 					                 ^

total: 0 errors, 1 warnings, 6 checks, 1062 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
