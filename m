Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD2619E66C
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 18:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5256E25A;
	Sat,  4 Apr 2020 16:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E6156E258;
 Sat,  4 Apr 2020 16:18:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36FA8A00CC;
 Sat,  4 Apr 2020 16:18:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sat, 04 Apr 2020 16:18:14 -0000
Message-ID: <158601709419.1391.2399813371215113528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200404150508.111056-1-andi@etezian.org>
In-Reply-To: <20200404150508.111056-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev5)
URL   : https://patchwork.freedesktop.org/series/75333/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b1842893326e drm/i915/gt: move remaining debugfs interfaces into gt
-:131: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#131: 
new file mode 100644

-:455: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#455: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:74:
+		eu_reg[2 * s + 1] = intel_uncore_read(uncore,
+						  GEN10_SS23_EU_PGCTL_ACK(s));

-:505: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#505: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:124:
+		eu_reg[2*s] = intel_uncore_read(uncore,
 		        ^

-:507: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#507: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:126:
+		eu_reg[2*s + 1] = intel_uncore_read(uncore,
 		        ^

-:545: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#545: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:164:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                               ^

-:545: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#545: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:164:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                                      ^

-:546: CHECK:SPACING: spaces preferred around that '%' (ctx:VxV)
#546: FILE: drivers/gpu/drm/i915/gt/debugfs_sseu.c:165:
+					       eu_mask[ss%2]);
 					                 ^

total: 0 errors, 1 warnings, 6 checks, 1022 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
