Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EA219A2D1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 02:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 895A06E8A6;
	Wed,  1 Apr 2020 00:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB46389D3E;
 Wed,  1 Apr 2020 00:28:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9393A66C9;
 Wed,  1 Apr 2020 00:28:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Wed, 01 Apr 2020 00:28:49 -0000
Message-ID: <158570092988.25625.12818561090870429083@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331220432.55227-1-andi@etezian.org>
In-Reply-To: <20200331220432.55227-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev2)
URL   : https://patchwork.freedesktop.org/series/75333/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7c03d498e02f drm/i915/gt: move remaining debugfs interfaces into gt
-:116: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#116: 
new file mode 100644

-:440: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#440: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c:74:
+		eu_reg[2 * s + 1] = intel_uncore_read(uncore,
+						  GEN10_SS23_EU_PGCTL_ACK(s));

-:490: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#490: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c:124:
+		eu_reg[2*s] = intel_uncore_read(uncore,
 		        ^

-:492: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#492: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c:126:
+		eu_reg[2*s + 1] = intel_uncore_read(uncore,
 		        ^

-:530: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#530: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c:164:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                               ^

-:530: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#530: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c:164:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                                      ^

-:531: CHECK:SPACING: spaces preferred around that '%' (ctx:VxV)
#531: FILE: drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c:165:
+					       eu_mask[ss%2]);
 					                 ^

total: 0 errors, 1 warnings, 6 checks, 1031 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
