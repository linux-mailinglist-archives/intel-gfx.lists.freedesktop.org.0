Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A933C7D5C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 06:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB5D6E15C;
	Wed, 14 Jul 2021 04:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97B1F6E159;
 Wed, 14 Jul 2021 04:23:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8ED5AA47DB;
 Wed, 14 Jul 2021 04:23:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 14 Jul 2021 04:23:24 -0000
Message-ID: <162623660455.13708.4855819467231098279@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Begin_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev5=29?=
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

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev5)
URL   : https://patchwork.freedesktop.org/series/92135/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7a5fbcb1f150 drm/i915: Add XE_HP initial definitions
8bb98dab1d23 drm/i915: Fork DG1 interrupt handler
371d21e168c4 drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based
00fe5bfd2f5b drm/i915/gen12: Use fuse info to enable SFC
25d8fcda069c drm/i915/selftests: Allow for larger engine counts
75088f6dd8c2 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
6f3c6efb8015 drm/i915/xehp: Extra media engines - Part 2 (interrupts)
99c452861f03 drm/i915/xehp: Extra media engines - Part 3 (reset)
04721d135106 drm/i915/xehp: Xe_HP forcewake support
-:10: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#10: 
Co-authored-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3311:
+		engine->fw_domain = intel_uncore_forcewake_for_reg(engine->uncore,
+				    RING_EXECLIST_CONTROL(engine->mmio_base),

-:208: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#208: FILE: drivers/gpu/drm/i915/intel_uncore.c:1323:
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
+		  0x0 -  0xaff: reserved

-:209: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#209: FILE: drivers/gpu/drm/i915/intel_uncore.c:1324:
+		0xb00 - 0x1fff: always on */

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#213: FILE: drivers/gpu/drm/i915/intel_uncore.c:1328:
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
+		0x4b00 - 0x4fff: reserved

-:214: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#214: FILE: drivers/gpu/drm/i915/intel_uncore.c:1329:
+		0x5000 - 0x51ff: always on */

-:219: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#219: FILE: drivers/gpu/drm/i915/intel_uncore.c:1334:
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
+		0x8160 - 0x817f: reserved

-:220: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#220: FILE: drivers/gpu/drm/i915/intel_uncore.c:1335:
+		0x8180 - 0x81ff: always on */

-:224: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#224: FILE: drivers/gpu/drm/i915/intel_uncore.c:1339:
+	GEN_FW_RANGE(0x8500, 0x94cf, FORCEWAKE_GT), /*
+		0x8500 - 0x87ff: gt

-:227: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#227: FILE: drivers/gpu/drm/i915/intel_uncore.c:1342:
+		0x9480 - 0x94cf: reserved */

-:230: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#230: FILE: drivers/gpu/drm/i915/intel_uncore.c:1345:
+	GEN_FW_RANGE(0x9560, 0x97ff, 0), /*
+		0x9560 - 0x95ff: always on

-:231: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#231: FILE: drivers/gpu/drm/i915/intel_uncore.c:1346:
+		0x9600 - 0x97ff: reserved */

-:233: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#233: FILE: drivers/gpu/drm/i915/intel_uncore.c:1348:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt

-:235: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#235: FILE: drivers/gpu/drm/i915/intel_uncore.c:1350:
+		0xc000 - 0xcfff: gt */

-:240: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#240: FILE: drivers/gpu/drm/i915/intel_uncore.c:1355:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt

-:241: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#241: FILE: drivers/gpu/drm/i915/intel_uncore.c:1356:
+		0xde00 - 0xde7f: reserved */

-:243: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#243: FILE: drivers/gpu/drm/i915/intel_uncore.c:1358:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render

-:245: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#245: FILE: drivers/gpu/drm/i915/intel_uncore.c:1360:
+		0xe100 - 0xe8ff: render */

-:247: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#247: FILE: drivers/gpu/drm/i915/intel_uncore.c:1362:
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
+		0xe900 - 0xe9ff: gt

-:249: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#249: FILE: drivers/gpu/drm/i915/intel_uncore.c:1364:
+		0xf000 - 0xffff: gt */

-:251: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#251: FILE: drivers/gpu/drm/i915/intel_uncore.c:1366:
+	GEN_FW_RANGE(0x10000, 0x13fff, 0), /*
+		0x10000 - 0x11fff: reserved

-:253: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#253: FILE: drivers/gpu/drm/i915/intel_uncore.c:1368:
+		0x12800 - 0x13fff: reserved */

-:259: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#259: FILE: drivers/gpu/drm/i915/intel_uncore.c:1374:
+	GEN_FW_RANGE(0x14800, 0x1ffff, FORCEWAKE_RENDER), /*
+		0x14800 - 0x14fff: render

-:261: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#261: FILE: drivers/gpu/drm/i915/intel_uncore.c:1376:
+		0x16e00 - 0x1ffff: render */

-:263: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#263: FILE: drivers/gpu/drm/i915/intel_uncore.c:1378:
+	GEN_FW_RANGE(0x20000, 0x21fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x20000 - 0x20fff: VD0

-:264: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#264: FILE: drivers/gpu/drm/i915/intel_uncore.c:1379:
+		0x21000 - 0x21fff: reserved */

-:267: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#267: FILE: drivers/gpu/drm/i915/intel_uncore.c:1382:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		0x24000 - 0x2407f: always on

-:268: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#268: FILE: drivers/gpu/drm/i915/intel_uncore.c:1383:
+		0x24080 - 0x2417f: reserved */

-:270: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#270: FILE: drivers/gpu/drm/i915/intel_uncore.c:1385:
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt

-:271: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#271: FILE: drivers/gpu/drm/i915/intel_uncore.c:1386:
+		0x24200 - 0x249ff: reserved */

-:273: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#273: FILE: drivers/gpu/drm/i915/intel_uncore.c:1388:
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
+		0x24a00 - 0x24a7f: render

-:274: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#274: FILE: drivers/gpu/drm/i915/intel_uncore.c:1389:
+		0x24a80 - 0x251ff: reserved */

-:276: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#276: FILE: drivers/gpu/drm/i915/intel_uncore.c:1391:
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
+		0x25200 - 0x252ff: gt

-:277: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#277: FILE: drivers/gpu/drm/i915/intel_uncore.c:1392:
+		0x25300 - 0x25fff: reserved */

-:279: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#279: FILE: drivers/gpu/drm/i915/intel_uncore.c:1394:
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
+		0x26000 - 0x27fff: render

-:281: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#281: FILE: drivers/gpu/drm/i915/intel_uncore.c:1396:
+		0x2a000 - 0x2ffff: undocumented */

-:285: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#285: FILE: drivers/gpu/drm/i915/intel_uncore.c:1400:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0

-:289: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#289: FILE: drivers/gpu/drm/i915/intel_uncore.c:1404:
+		0x1c3f00 - 0x1c3fff: VD0 */

-:291: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#291: FILE: drivers/gpu/drm/i915/intel_uncore.c:1406:
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6bff: VD1

-:294: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#294: FILE: drivers/gpu/drm/i915/intel_uncore.c:1409:
+		0x1c6e00 - 0x1c7fff: reserved */

-:296: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#296: FILE: drivers/gpu/drm/i915/intel_uncore.c:1411:
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0

-:297: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#297: FILE: drivers/gpu/drm/i915/intel_uncore.c:1412:
+		0x1ca100 - 0x1cbfff: reserved */

-:303: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#303: FILE: drivers/gpu/drm/i915/intel_uncore.c:1418:
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2bff: VD2

-:307: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#307: FILE: drivers/gpu/drm/i915/intel_uncore.c:1422:
+		0x1d3f00 - 0x1d3fff: VD2 */

-:309: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#309: FILE: drivers/gpu/drm/i915/intel_uncore.c:1424:
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
+		0x1d4000 - 0x1d6bff: VD3

-:312: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#312: FILE: drivers/gpu/drm/i915/intel_uncore.c:1427:
+		0x1d6e00 - 0x1d7fff: reserved */

-:314: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#314: FILE: drivers/gpu/drm/i915/intel_uncore.c:1429:
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
+		0x1d8000 - 0x1da0ff: VE1

-:315: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#315: FILE: drivers/gpu/drm/i915/intel_uncore.c:1430:
+		0x1da100 - 0x1dffff: reserved */

-:317: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#317: FILE: drivers/gpu/drm/i915/intel_uncore.c:1432:
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
+		0x1e0000 - 0x1e2bff: VD4

-:321: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#321: FILE: drivers/gpu/drm/i915/intel_uncore.c:1436:
+		0x1e3f00 - 0x1e3fff: VD4 */

-:323: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#323: FILE: drivers/gpu/drm/i915/intel_uncore.c:1438:
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
+		0x1e4000 - 0x1e6bff: VD5

-:326: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#326: FILE: drivers/gpu/drm/i915/intel_uncore.c:1441:
+		0x1e6e00 - 0x1e7fff: reserved */

-:328: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#328: FILE: drivers/gpu/drm/i915/intel_uncore.c:1443:
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
+		0x1e8000 - 0x1ea0ff: VE2

-:329: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#329: FILE: drivers/gpu/drm/i915/intel_uncore.c:1444:
+		0x1ea100 - 0x1effff: reserved */

-:331: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#331: FILE: drivers/gpu/drm/i915/intel_uncore.c:1446:
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
+		0x1f0000 - 0x1f2bff: VD6

-:335: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#335: FILE: drivers/gpu/drm/i915/intel_uncore.c:1450:
+		0x1f3f00 - 0x1f3fff: VD6 */

-:337: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#337: FILE: drivers/gpu/drm/i915/intel_uncore.c:1452:
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
+		0x1f4000 - 0x1f6bff: VD7

-:340: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#340: FILE: drivers/gpu/drm/i915/intel_uncore.c:1455:
+		0x1f6e00 - 0x1f7fff: reserved */

total: 0 errors, 57 warnings, 1 checks, 467 lines checked
12a2020fa1fc drm/i915/xehp: Define multicast register ranges
f5a167391d70 drm/i915/xehp: Handle new device context ID format
e6c034ba7a58 drm/i915/xehp: New engine context offsets
733505aa0488 drm/i915/xehp: handle new steering options
-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:117:
+	if (GRAPHICS_VER(gt->i915) >= 11 &&
+		   GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50)) {

-:195: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#195: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:955:
+			 unsigned slice, unsigned subslice)

-:195: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#195: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:955:
+			 unsigned slice, unsigned subslice)

total: 0 errors, 2 warnings, 1 checks, 282 lines checked
f983b1241a0f drm/i915/xehp: Loop over all gslices for INSTDONE processing
-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter_' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:583:
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gslice_' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:583:
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dss_' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:583:
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))

total: 0 errors, 0 warnings, 3 checks, 164 lines checked
559ec30fa734 drm/i915/xehpsdv: add initial XeHP SDV definitions
b359a5197220 drm/i915/xehp: Changes to ss/eu definitions
381532783086 drm/i915/xehpsdv: Add maximum sseu limits
9beeacbb8d15 drm/i915/xehpsdv: Add compute DSS type
70410e269067 drm/i915/xehpsdv: Define steering tables
5cd632524fbb drm/i915/xehpsdv: Define MOCS table for XeHP SDV
638ddf4e9d14 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
edd8638b9ce9 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
8d231c0c99c3 drm/i915/dg2: add DG2 platform info
-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_drv.h:1637:
+#define IS_DG2_GT_STEP(__i915, variant, since, until) \
+	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
+	 IS_GT_STEP(__i915, since, until))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:1641:
+#define IS_DG2_DISP_STEP(__i915, since, until) \
+	(IS_DG2(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 2 checks, 117 lines checked
8527f182dc41 drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV
462ae54b609e drm/i915/dg2: Add forcewake table
-:178: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#178: FILE: drivers/gpu/drm/i915/intel_uncore.c:1328:
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*					\
+		  0x0 -  0xaff: reserved					\

-:179: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#179: FILE: drivers/gpu/drm/i915/intel_uncore.c:1329:
+		0xb00 - 0x1fff: always on */					\

-:183: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#183: FILE: drivers/gpu/drm/i915/intel_uncore.c:1333:
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*					\
+		0x4b00 - 0x4fff: reserved					\

-:184: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#184: FILE: drivers/gpu/drm/i915/intel_uncore.c:1334:
+		0x5000 - 0x51ff: always on */					\

-:189: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#189: FILE: drivers/gpu/drm/i915/intel_uncore.c:1339:
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*					\
+		0x8160 - 0x817f: reserved					\

-:190: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#190: FILE: drivers/gpu/drm/i915/intel_uncore.c:1340:
+		0x8180 - 0x81ff: always on */					\

-:194: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#194: FILE: drivers/gpu/drm/i915/intel_uncore.c:1344:
+	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*				\
+		0x8500 - 0x87ff: gt						\

-:196: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#196: FILE: drivers/gpu/drm/i915/intel_uncore.c:1346:
+		0x8c80 - 0x8cff: gt (DG2 only) */				\

-:198: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#198: FILE: drivers/gpu/drm/i915/intel_uncore.c:1348:
+	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*			\
+		0x8d00 - 0x8dff: render (DG2 only)				\

-:199: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#199: FILE: drivers/gpu/drm/i915/intel_uncore.c:1349:
+		0x8e00 - 0x8fff: reserved */					\

-:201: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#201: FILE: drivers/gpu/drm/i915/intel_uncore.c:1351:
+	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*				\
+		0x9000 - 0x947f: gt						\

-:202: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#202: FILE: drivers/gpu/drm/i915/intel_uncore.c:1352:
+		0x9480 - 0x94cf: reserved */					\

-:205: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#205: FILE: drivers/gpu/drm/i915/intel_uncore.c:1355:
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*					\
+		0x9560 - 0x95ff: always on					\

-:206: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#206: FILE: drivers/gpu/drm/i915/intel_uncore.c:1356:
+		0x9600 - 0x967f: reserved */					\

-:208: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#208: FILE: drivers/gpu/drm/i915/intel_uncore.c:1358:
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*			\
+		0x9680 - 0x96ff: render (DG2 only)				\

-:209: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#209: FILE: drivers/gpu/drm/i915/intel_uncore.c:1359:
+		0x9700 - 0x97ff: reserved */					\

-:211: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#211: FILE: drivers/gpu/drm/i915/intel_uncore.c:1361:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*				\
+		0x9800 - 0xb4ff: gt						\

-:213: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#213: FILE: drivers/gpu/drm/i915/intel_uncore.c:1363:
+		0xc000 - 0xcfff: gt */						\

-:219: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#219: FILE: drivers/gpu/drm/i915/intel_uncore.c:1369:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*				\
+		0xdd00 - 0xddff: gt						\

-:220: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#220: FILE: drivers/gpu/drm/i915/intel_uncore.c:1370:
+		0xde00 - 0xde7f: reserved */					\

-:222: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#222: FILE: drivers/gpu/drm/i915/intel_uncore.c:1372:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*			\
+		0xde80 - 0xdfff: render						\

-:224: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#224: FILE: drivers/gpu/drm/i915/intel_uncore.c:1374:
+		0xe100 - 0xe8ff: render */					\

-:226: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#226: FILE: drivers/gpu/drm/i915/intel_uncore.c:1376:
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*				\
+		0xe900 - 0xe9ff: gt						\

-:228: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#228: FILE: drivers/gpu/drm/i915/intel_uncore.c:1378:
+		0xf000 - 0xffff: gt */						\

-:230: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#230: FILE: drivers/gpu/drm/i915/intel_uncore.c:1380:
+	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*					\
+		0x10000 - 0x11fff: reserved					\

-:232: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#232: FILE: drivers/gpu/drm/i915/intel_uncore.c:1382:
+		0x12800 - 0x12fff: reserved */					\

-:235: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#235: FILE: drivers/gpu/drm/i915/intel_uncore.c:1385:
+	GEN_FW_RANGE(0x13200, 0x13fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
+		0x13200 - 0x133ff: VD2 (DG2 only)				\

-:236: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#236: FILE: drivers/gpu/drm/i915/intel_uncore.c:1386:
+		0x13400 - 0x13fff: reserved */					\

-:243: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#243: FILE: drivers/gpu/drm/i915/intel_uncore.c:1393:
+	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*			\
+		0x15000 - 0x15fff: gt (DG2 only)				\

-:244: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#244: FILE: drivers/gpu/drm/i915/intel_uncore.c:1394:
+		0x16000 - 0x16dff: reserved */					\

-:247: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#247: FILE: drivers/gpu/drm/i915/intel_uncore.c:1397:
+	GEN_FW_RANGE(0x20000, 0x21fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
+		0x20000 - 0x20fff: VD0 (XEHPSDV only)				\

-:248: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#248: FILE: drivers/gpu/drm/i915/intel_uncore.c:1398:
+		0x21000 - 0x21fff: reserved */					\

-:251: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#251: FILE: drivers/gpu/drm/i915/intel_uncore.c:1401:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*					\
+		0x24000 - 0x2407f: always on					\

-:252: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#252: FILE: drivers/gpu/drm/i915/intel_uncore.c:1402:
+		0x24080 - 0x2417f: reserved */					\

-:254: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#254: FILE: drivers/gpu/drm/i915/intel_uncore.c:1404:
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*			\
+		0x24180 - 0x241ff: gt						\

-:255: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#255: FILE: drivers/gpu/drm/i915/intel_uncore.c:1405:
+		0x24200 - 0x249ff: reserved */					\

-:257: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#257: FILE: drivers/gpu/drm/i915/intel_uncore.c:1407:
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*			\
+		0x24a00 - 0x24a7f: render					\

-:258: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#258: FILE: drivers/gpu/drm/i915/intel_uncore.c:1408:
+		0x24a80 - 0x251ff: reserved */					\

-:260: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#260: FILE: drivers/gpu/drm/i915/intel_uncore.c:1410:
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*			\
+		0x25200 - 0x252ff: gt						\

-:261: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#261: FILE: drivers/gpu/drm/i915/intel_uncore.c:1411:
+		0x25300 - 0x25fff: reserved */					\

-:263: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#263: FILE: drivers/gpu/drm/i915/intel_uncore.c:1413:
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*			\
+		0x26000 - 0x27fff: render					\

-:265: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#265: FILE: drivers/gpu/drm/i915/intel_uncore.c:1415:
+		0x2a000 - 0x2ffff: undocumented */				\

-:269: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#269: FILE: drivers/gpu/drm/i915/intel_uncore.c:1419:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
+		0x1c0000 - 0x1c2bff: VD0					\

-:273: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#273: FILE: drivers/gpu/drm/i915/intel_uncore.c:1423:
+		0x1c3f00 - 0x1c3fff: VD0 */					\

-:275: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#275: FILE: drivers/gpu/drm/i915/intel_uncore.c:1425:
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*		\
+		0x1c4000 - 0x1c6bff: VD1					\

-:278: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#278: FILE: drivers/gpu/drm/i915/intel_uncore.c:1428:
+		0x1c6e00 - 0x1c7fff: reserved */				\

-:280: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#280: FILE: drivers/gpu/drm/i915/intel_uncore.c:1430:
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*		\
+		0x1c8000 - 0x1ca0ff: VE0					\

-:281: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#281: FILE: drivers/gpu/drm/i915/intel_uncore.c:1431:
+		0x1ca100 - 0x1cbfff: reserved */				\

-:287: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#287: FILE: drivers/gpu/drm/i915/intel_uncore.c:1437:
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
+		0x1d0000 - 0x1d2bff: VD2					\

-:292: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#292: FILE: drivers/gpu/drm/i915/intel_uncore.c:1442:
+		0x1d3f00 - 0x1d3fff: VD2 */					\

-:294: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#294: FILE: drivers/gpu/drm/i915/intel_uncore.c:1444:
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*		\
+		0x1d4000 - 0x1d6bff: VD3					\

-:297: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#297: FILE: drivers/gpu/drm/i915/intel_uncore.c:1447:
+		0x1d6e00 - 0x1d7fff: reserved */				\

-:299: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#299: FILE: drivers/gpu/drm/i915/intel_uncore.c:1449:
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*		\
+		0x1d8000 - 0x1da0ff: VE1					\

-:300: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#300: FILE: drivers/gpu/drm/i915/intel_uncore.c:1450:
+		0x1da100 - 0x1dffff: reserved */				\

-:302: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#302: FILE: drivers/gpu/drm/i915/intel_uncore.c:1452:
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*		\
+		0x1e0000 - 0x1e2bff: VD4					\

-:306: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#306: FILE: drivers/gpu/drm/i915/intel_uncore.c:1456:
+		0x1e3f00 - 0x1e3fff: VD4 */					\

-:308: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#308: FILE: drivers/gpu/drm/i915/intel_uncore.c:1458:
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*		\
+		0x1e4000 - 0x1e6bff: VD5					\

-:311: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#311: FILE: drivers/gpu/drm/i915/intel_uncore.c:1461:
+		0x1e6e00 - 0x1e7fff: reserved */				\

-:313: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#313: FILE: drivers/gpu/drm/i915/intel_uncore.c:1463:
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*		\
+		0x1e8000 - 0x1ea0ff: VE2					\

-:314: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#314: FILE: drivers/gpu/drm/i915/intel_uncore.c:1464:
+		0x1ea100 - 0x1effff: reserved */				\

-:316: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#316: FILE: drivers/gpu/drm/i915/intel_uncore.c:1466:
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*		\
+		0x1f0000 - 0x1f2bff: VD6					\

-:320: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#320: FILE: drivers/gpu/drm/i915/intel_uncore.c:1470:
+		0x1f3f00 - 0x1f3fff: VD6 */					\

-:322: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#322: FILE: drivers/gpu/drm/i915/intel_uncore.c:1472:
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*		\
+		0x1f4000 - 0x1f6bff: VD7					\

-:325: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#325: FILE: drivers/gpu/drm/i915/intel_uncore.c:1475:
+		0x1f6e00 - 0x1f7fff: reserved */				\

total: 0 errors, 64 warnings, 0 checks, 318 lines checked
1232841b09bc drm/i915/dg2: Update LNCF steering ranges
ed945621c3f2 drm/i915/dg2: Add SQIDI steering
56c13089d010 drm/i915/dg2: Add new LRI reg offsets
c6bfb5cac52e drm/i915/dg2: Maintain backward-compatible nested batch behavior
c4f3a58eb9b9 drm/i915/dg2: Report INSTDONE_GEOM values in error state
1ae2606f06f9 drm/i915/dg2: Define MOCS table for DG2
dd67eb915449 drm/i915/dg2: Add fake PCH
dfa122ad3f15 drm/i915/dg2: Add cdclk table and reference clock
76524872d616 drm/i915/dg2: Skip shared DPLL handling
8119ad7f31ee drm/i915/dg2: Don't wait for AUX power well enable ACKs
f3d519fa8374 drm/i915/dg2: Setup display outputs
3a7526efaf70 drm/i915/dg2: Add dbuf programming
cc08e720e5ae drm/i915/dg2: Don't program BW_BUDDY registers
60aa12c033cf drm/i915/dg2: Don't read DRAM info
118fc85a94ad drm/i915/dg2: DG2 has fixed memory bandwidth
689792bb94d6 drm/i915/dg2: Add MPLLB programming for SNPS PHY
-:110: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#110: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 671 lines checked
89d6432d3673 drm/i915/dg2: Add MPLLB programming for HDMI
-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3750:
+static void dg2_ddi_get_config(struct intel_encoder *encoder,
+				struct intel_crtc_state *crtc_state)

-:81: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#81: FILE: drivers/gpu/drm/i915/display/intel_display.c:9135:
+#define MPLLB_CHECK(name) do { \
+	if (mpllb_sw_state->name != mpllb_hw_state.name) { \
+		pipe_config_mismatch(false, crtc, "MPLLB:" __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     mpllb_s


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
