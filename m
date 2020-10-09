Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AC62899D8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 22:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8706EDFD;
	Fri,  9 Oct 2020 20:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A2DD6EDFD;
 Fri,  9 Oct 2020 20:40:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39610A8835;
 Fri,  9 Oct 2020 20:40:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 09 Oct 2020 20:40:08 -0000
Message-ID: <160227600820.1827.17510191236031697349@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201009194442.3668677-1-matthew.d.roper@intel.com>
In-Reply-To: <20201009194442.3668677-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Gen12_forcewake_and_multicast_updates_=28rev2=29?=
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

Series: Gen12 forcewake and multicast updates (rev2)
URL   : https://patchwork.freedesktop.org/series/82359/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
008bd21e710f drm/i915: Rename FORCEWAKE_BLITTER to FORCEWAKE_GT
14beef5e5c93 drm/i915: Update gen12 forcewake table
-:46: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#46: FILE: drivers/gpu/drm/i915/intel_uncore.c:1137:
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
+		0x0   -  0xaff: reserved

-:47: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#47: FILE: drivers/gpu/drm/i915/intel_uncore.c:1138:
+		0xb00 - 0x1fff: always on */

-:57: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#57: FILE: drivers/gpu/drm/i915/intel_uncore.c:1145:
+	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_GT), /*
+		0x4000 - 0x48ff: gt

-:58: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#58: FILE: drivers/gpu/drm/i915/intel_uncore.c:1146:
+		0x4900 - 0x51ff: reserved */

-:60: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#60: FILE: drivers/gpu/drm/i915/intel_uncore.c:1148:
+	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER), /*
+		0x5200 - 0x53ff: render

-:62: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#62: FILE: drivers/gpu/drm/i915/intel_uncore.c:1150:
+		0x5500 - 0x7fff: render */

-:67: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#67: FILE: drivers/gpu/drm/i915/intel_uncore.c:1154:
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
+		0x8160 - 0x817f: reserved

-:68: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#68: FILE: drivers/gpu/drm/i915/intel_uncore.c:1155:
+		0x8180 - 0x81ff: always on */

-:76: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#76: FILE: drivers/gpu/drm/i915/intel_uncore.c:1159:
+	GEN_FW_RANGE(0x8500, 0x94cf, FORCEWAKE_GT), /*
+		0x8500 - 0x87ff: gt

-:79: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#79: FILE: drivers/gpu/drm/i915/intel_uncore.c:1162:
+		0x9480 - 0x94cf: reserved */

-:82: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#82: FILE: drivers/gpu/drm/i915/intel_uncore.c:1165:
+	GEN_FW_RANGE(0x9560, 0x97ff, 0), /*
+		0x9560 - 0x95ff: always on

-:83: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#83: FILE: drivers/gpu/drm/i915/intel_uncore.c:1166:
+		0x9600 - 0x97ff: reserved */

-:99: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#99: FILE: drivers/gpu/drm/i915/intel_uncore.c:1170:
+	GEN_FW_RANGE(0xb400, 0xcfff, FORCEWAKE_GT), /*
+		0xb400 - 0xbf7f: gt

-:101: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#101: FILE: drivers/gpu/drm/i915/intel_uncore.c:1172:
+		0xc000 - 0xcfff: gt */

-:106: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#106: FILE: drivers/gpu/drm/i915/intel_uncore.c:1177:
+	GEN_FW_RANGE(0xdc00, 0xefff, FORCEWAKE_RENDER), /*
+		0xdc00 - 0xddff: render

-:109: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#109: FILE: drivers/gpu/drm/i915/intel_uncore.c:1180:
+		0xe900 - 0xefff: reserved */

-:111: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#111: FILE: drivers/gpu/drm/i915/intel_uncore.c:1182:
+	GEN_FW_RANGE(0xf000, 0x147ff, FORCEWAKE_GT), /*
+		 0xf000 - 0xffff: gt

-:112: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#112: FILE: drivers/gpu/drm/i915/intel_uncore.c:1183:
+		0x10000 - 0x147ff: reserved */

-:114: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#114: FILE: drivers/gpu/drm/i915/intel_uncore.c:1185:
+	GEN_FW_RANGE(0x14800, 0x1ffff, FORCEWAKE_RENDER), /*
+		0x14800 - 0x14fff: render

-:117: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#117: FILE: drivers/gpu/drm/i915/intel_uncore.c:1188:
+		0x1c000 - 0x1ffff: reserved */

-:122: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#122: FILE: drivers/gpu/drm/i915/intel_uncore.c:1193:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		0x24000 - 0x2407f: always on

-:123: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#123: FILE: drivers/gpu/drm/i915/intel_uncore.c:1194:
+		0x24080 - 0x2417f: reserved */

-:125: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#125: FILE: drivers/gpu/drm/i915/intel_uncore.c:1196:
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt

-:126: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#126: FILE: drivers/gpu/drm/i915/intel_uncore.c:1197:
+		0x24200 - 0x249ff: reserved */

-:128: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#128: FILE: drivers/gpu/drm/i915/intel_uncore.c:1199:
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
+		0x24a00 - 0x24a7f: render

-:129: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#129: FILE: drivers/gpu/drm/i915/intel_uncore.c:1200:
+		0x24a80 - 0x251ff: reserved */

-:131: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#131: FILE: drivers/gpu/drm/i915/intel_uncore.c:1202:
+	GEN_FW_RANGE(0x25200, 0x255ff, FORCEWAKE_GT), /*
+		0x25200 - 0x252ff: gt

-:132: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#132: FILE: drivers/gpu/drm/i915/intel_uncore.c:1203:
+		0x25300 - 0x255ff: reserved */

-:135: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#135: FILE: drivers/gpu/drm/i915/intel_uncore.c:1206:
+	GEN_FW_RANGE(0x25680, 0x259ff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x25680 - 0x256ff: VD2

-:136: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#136: FILE: drivers/gpu/drm/i915/intel_uncore.c:1207:
+		0x25700 - 0x259ff: reserved */

-:139: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#139: FILE: drivers/gpu/drm/i915/intel_uncore.c:1210:
+	GEN_FW_RANGE(0x25a80, 0x2ffff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x25a80 - 0x25aff: VD2

-:140: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#140: FILE: drivers/gpu/drm/i915/intel_uncore.c:1211:
+		0x25b00 - 0x2ffff: reserved */

-:151: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#151: FILE: drivers/gpu/drm/i915/intel_uncore.c:1215:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0

-:155: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#155: FILE: drivers/gpu/drm/i915/intel_uncore.c:1219:
+		0x1c3f00 - 0x1c3fff: VD0 */

-:158: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#158: FILE: drivers/gpu/drm/i915/intel_uncore.c:1222:
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0

-:160: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#160: FILE: drivers/gpu/drm/i915/intel_uncore.c:1224:
+		0x1cbf00 - 0x1cbfff: VE0 */

-:162: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#162: FILE: drivers/gpu/drm/i915/intel_uncore.c:1226:
+	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1cc000 - 0x1ccfff: VD0

-:163: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#163: FILE: drivers/gpu/drm/i915/intel_uncore.c:1227:
+		0x1cd000 - 0x1cffff: reserved */

-:165: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#165: FILE: drivers/gpu/drm/i915/intel_uncore.c:1229:
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2bff: VD2

-:169: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#169: FILE: drivers/gpu/drm/i915/intel_uncore.c:1233:
+		0x1d3f00 - 0x1d3fff: VD2 */

total: 0 errors, 40 warnings, 0 checks, 143 lines checked
74565d868b44 drm/i915: Update gen12 multicast register ranges


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
