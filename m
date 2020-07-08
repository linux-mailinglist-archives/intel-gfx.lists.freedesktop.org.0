Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79902218C41
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 17:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56E66E8E9;
	Wed,  8 Jul 2020 15:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7806E6E8E9;
 Wed,  8 Jul 2020 15:50:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 657CCA66C9;
 Wed,  8 Jul 2020 15:50:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 08 Jul 2020 15:50:06 -0000
Message-ID: <159422340641.3837.6761976113794500790@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_some_device_capabilities_under_intel=5Fgt_=28rev4=29?=
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

Series: Move some device capabilities under intel_gt (rev4)
URL   : https://patchwork.freedesktop.org/series/78829/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
81adaf361708 drm/i915: Convert device_info to uncore/de_read
e45d8bbcd7f5 drm/i915: Use the gt in HAS_ENGINE
5e3310bf1e2a drm/i915: Move engine-related mmio init to engines_init_mmio
2c61035b8c47 drm/i915: Move the engine mask to intel_gt_info
d5805b164862 drm/i915: Introduce gt_init_mmio
24805dc1308d drm/i915/sseu: Move sseu detection and dump to intel_sseu
-:285: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#285: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:311:
+	 * across subslices.
+	*/

-:294: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#294: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:320:
+	 * more than one EU pair per subslice.
+	*/

-:320: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#320: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:346:
+	 * to each of the enabled slices.
+	*/

-:328: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#328: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:354:
+	 * count the total enabled EU.
+	*/

-:370: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#370: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:396:
+	 * distribution.
+	*/

-:382: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#382: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:408:
+	 * pair per subslice.
+	*/

-:506: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#506: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:532:
+		/* fall through */

-:526: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#526: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:552:
+		/* fall through */

total: 0 errors, 8 warnings, 0 checks, 1259 lines checked
aedcca102ac4 drm/i915/sseu: Move sseu_info under gt_info
459b33e50ba5 drm/i915: gt-fy sseu debugfs
-:121: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#121: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1698:
+		eu_reg[2*s] = intel_uncore_read(uncore, GEN9_SS01_EU_PGCTL_ACK(s));
 		        ^

-:122: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#122: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1699:
+		eu_reg[2*s + 1] = intel_uncore_read(uncore, GEN9_SS23_EU_PGCTL_ACK(s));
 		        ^

total: 0 errors, 0 warnings, 2 checks, 188 lines checked
c3278f5361ee drm/i915: Move sseu debugfs under gt/
-:50: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#50: 
new file mode 100644

-:178: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#178: FILE: drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c:124:
+		eu_reg[2*s] = intel_uncore_read(uncore, GEN9_SS01_EU_PGCTL_ACK(s));
 		        ^

-:179: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#179: FILE: drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c:125:
+		eu_reg[2*s + 1] = intel_uncore_read(uncore, GEN9_SS23_EU_PGCTL_ACK(s));
 		        ^

-:216: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c:162:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                               ^

-:216: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c:162:
+			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
 			                                      ^

-:217: CHECK:SPACING: spaces preferred around that '%' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c:163:
+					       eu_mask[ss%2]);
 					                 ^

total: 0 errors, 1 warnings, 5 checks, 637 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
