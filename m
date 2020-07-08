Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92259217C62
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D156E185;
	Wed,  8 Jul 2020 00:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79C276E185;
 Wed,  8 Jul 2020 00:54:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73AB1A0118;
 Wed,  8 Jul 2020 00:54:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 08 Jul 2020 00:54:31 -0000
Message-ID: <159416967144.3838.13935181575119646693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_some_device_capabilities_under_intel=5Fgt_=28rev3=29?=
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

Series: Move some device capabilities under intel_gt (rev3)
URL   : https://patchwork.freedesktop.org/series/78829/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7ed094988586 drm/i915: Convert device_info to uncore/de_read
fdcbfbd417ae drm/i915: Use the gt in HAS_ENGINE
4f35f1ee2075 drm/i915: Move engine-related mmio init to engines_init_mmio
d8ce0e15423d drm/i915: Move the engine mask to intel_gt_info
175320cb4eb3 drm/i915: Introduce gt_init_mmio
4ab8c86b1410 drm/i915/sseu: Move sseu detection and dump to intel_sseu
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
03320da3ca4c drm/i915/sseu: Move sseu_info under gt_info
bfa82674d569 drm/i915: gt-fy sseu debugfs
-:121: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#121: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1698:
+		eu_reg[2*s] = intel_uncore_read(uncore, GEN9_SS01_EU_PGCTL_ACK(s));
 		        ^

-:122: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#122: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1699:
+		eu_reg[2*s + 1] = intel_uncore_read(uncore, GEN9_SS23_EU_PGCTL_ACK(s));
 		        ^

total: 0 errors, 0 warnings, 2 checks, 188 lines checked
39f5aed2982f drm/i915: Move sseu debugfs under gt/
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
