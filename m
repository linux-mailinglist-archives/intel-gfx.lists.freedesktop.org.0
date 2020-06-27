Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDEC20C007
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 10:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2B589C52;
	Sat, 27 Jun 2020 08:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1AD86E02E;
 Sat, 27 Jun 2020 08:13:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99554A47E1;
 Sat, 27 Jun 2020 08:13:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 27 Jun 2020 08:13:32 -0000
Message-ID: <159324561259.5394.7769709589699311984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_some_device_capabilities_under_intel=5Fgt?=
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

Series: Move some device capabilities under intel_gt
URL   : https://patchwork.freedesktop.org/series/78829/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
999ecfc5fc75 drm/i915: Convert device_info to uncore/de_read
cb6b1a857f72 drm/i915: Use the gt in HAS_ENGINE
72189c790177 drm/i915: Move engine-related mmio init to engines_init_mmio
f77f0e80766d drm/i915: Move the engine mask to intel_gt_info
09b520c7dacc drm/i915: Introduce gt_init_mmio
5ba87fdd277d drm/i915/sseu: Move sseu detection and dump to intel_sseu
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
f739bfbef07e drm/i915/sseu: Move sseu_info under gt_info

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
