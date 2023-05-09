Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FF76FBECC
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 07:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B51410E32D;
	Tue,  9 May 2023 05:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1EFA10E329;
 Tue,  9 May 2023 05:43:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBEDEAADFC;
 Tue,  9 May 2023 05:43:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 09 May 2023 05:43:11 -0000
Message-ID: <168361099182.14157.26079024130443547@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230509051403.2748545-1-lucas.demarchi@intel.com>
In-Reply-To: <20230509051403.2748545-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixed-width_mask/bit_helpers?=
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

Series: Fixed-width mask/bit helpers
URL   : https://patchwork.freedesktop.org/series/117490/
State : warning

== Summary ==

Error: dim checkpatch failed
ebd974edde6a drm/amd: Remove wrapper macros over get_u{32, 16, 8}
-:69: ERROR:CODE_INDENT: code indent should use tabs where possible
#69: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:126:
+^I^I^I^I             get_u16(ctx->bios, base + 1),$

-:70: ERROR:CODE_INDENT: code indent should use tabs where possible
#70: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:127:
+^I^I^I^I             temp);$

-:86: ERROR:CODE_INDENT: code indent should use tabs where possible
#86: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:139:
+^I^I^I^I^I^I^I^I^I^I         base + 2);$

-:100: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#100: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:148:
+			     (0xFFFFFFFF >> (32 - get_u8(ctx->bios, base + 1)))) << get_u8(ctx->bios,

-:101: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#101: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:149:
+										           base + 3);

-:101: ERROR:CODE_INDENT: code indent should use tabs where possible
#101: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:149:
+^I^I^I^I^I^I^I^I^I^I           base + 3);$

-:115: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#115: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:158:
+			     (0xFFFFFFFF >> (32 - get_u8(ctx->bios, base + 1)))) << get_u8(ctx->bios,

-:116: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#116: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:159:
+										           base + 3);

-:116: ERROR:CODE_INDENT: code indent should use tabs where possible
#116: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:159:
+^I^I^I^I^I^I^I^I^I^I           base + 3);$

-:134: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#134: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:169:
+										        get_u8(ctx->bios, base + 1))))

-:134: ERROR:CODE_INDENT: code indent should use tabs where possible
#134: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:169:
+^I^I^I^I^I^I^I^I^I^I        get_u8(ctx->bios, base + 1))))$

-:311: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#311: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:587:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:320: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#320: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:601:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:346: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#346: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:636:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:355: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#355: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:648:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:364: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#364: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:662:
+	unsigned count = get_u8(ctx->ctx->bios, (*ptr)++);

-:373: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#373: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:674:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:382: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#382: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:692:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:400: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#400: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:771:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:409: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#409: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:788:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:418: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#418: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:805:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:427: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#427: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:817:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:436: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#436: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:835:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:445: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#445: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:849:
+	uint8_t val = get_u8(ctx->ctx->bios, (*ptr)++);

-:471: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#471: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:885:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:497: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#497: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:926:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:506: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#506: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:942:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:515: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#515: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:958:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:524: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#524: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:977:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:533: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#533: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:996:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:542: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#542: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:1010:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:565: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#565: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:1037:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:574: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#574: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:1049:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:583: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#583: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:1063:
+	uint8_t val = get_u8(ctx->ctx->bios, (*ptr)++);

-:590: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#590: FILE: drivers/gpu/drm/amd/amdgpu/atom.c:1069:
+	uint16_t val = get_u16(ctx->ctx->bios, *ptr);

-:826: ERROR:CODE_INDENT: code indent should use tabs where possible
#826: FILE: drivers/gpu/drm/radeon/atom.c:127:
+^I^I^I^I^I^I            get_u16(ctx->bios, base + 1));$

-:828: ERROR:CODE_INDENT: code indent should use tabs where possible
#828: FILE: drivers/gpu/drm/radeon/atom.c:129:
+^I^I^I^I               get_u16(ctx->bios, base + 1),$

-:829: ERROR:CODE_INDENT: code indent should use tabs where possible
#829: FILE: drivers/gpu/drm/radeon/atom.c:130:
+^I^I^I^I               temp);$

-:845: ERROR:CODE_INDENT: code indent should use tabs where possible
#845: FILE: drivers/gpu/drm/radeon/atom.c:142:
+^I^I^I^I^I^I^I^I^I^I         base + 2);$

-:859: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#859: FILE: drivers/gpu/drm/radeon/atom.c:151:
+			     (0xFFFFFFFF >> (32 - get_u8(ctx->bios, base + 1)))) << get_u8(ctx->bios,

-:860: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#860: FILE: drivers/gpu/drm/radeon/atom.c:152:
+										           base + 3);

-:860: ERROR:CODE_INDENT: code indent should use tabs where possible
#860: FILE: drivers/gpu/drm/radeon/atom.c:152:
+^I^I^I^I^I^I^I^I^I^I           base + 3);$

-:874: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#874: FILE: drivers/gpu/drm/radeon/atom.c:161:
+			     (0xFFFFFFFF >> (32 - get_u8(ctx->bios, base + 1)))) << get_u8(ctx->bios,

-:875: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#875: FILE: drivers/gpu/drm/radeon/atom.c:162:
+										           base + 3);

-:875: ERROR:CODE_INDENT: code indent should use tabs where possible
#875: FILE: drivers/gpu/drm/radeon/atom.c:162:
+^I^I^I^I^I^I^I^I^I^I           base + 3);$

-:893: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#893: FILE: drivers/gpu/drm/radeon/atom.c:172:
+										        get_u8(ctx->bios, base + 1))))

-:893: ERROR:CODE_INDENT: code indent should use tabs where possible
#893: FILE: drivers/gpu/drm/radeon/atom.c:172:
+^I^I^I^I^I^I^I^I^I^I        get_u8(ctx->bios, base + 1))))$

-:1070: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1070: FILE: drivers/gpu/drm/radeon/atom.c:590:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1079: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1079: FILE: drivers/gpu/drm/radeon/atom.c:604:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1105: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1105: FILE: drivers/gpu/drm/radeon/atom.c:639:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1114: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1114: FILE: drivers/gpu/drm/radeon/atom.c:651:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1123: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1123: FILE: drivers/gpu/drm/radeon/atom.c:665:
+	unsigned count = get_u8(ctx->ctx->bios, (*ptr)++);

-:1132: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1132: FILE: drivers/gpu/drm/radeon/atom.c:677:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1150: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1150: FILE: drivers/gpu/drm/radeon/atom.c:752:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1159: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1159: FILE: drivers/gpu/drm/radeon/atom.c:769:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1168: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1168: FILE: drivers/gpu/drm/radeon/atom.c:786:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1177: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1177: FILE: drivers/gpu/drm/radeon/atom.c:802:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1186: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1186: FILE: drivers/gpu/drm/radeon/atom.c:816:
+	uint8_t val = get_u8(ctx->ctx->bios, (*ptr)++);

-:1212: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1212: FILE: drivers/gpu/drm/radeon/atom.c:852:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1238: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1238: FILE: drivers/gpu/drm/radeon/atom.c:893:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:1247: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1247: FILE: drivers/gpu/drm/radeon/atom.c:909:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:1256: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1256: FILE: drivers/gpu/drm/radeon/atom.c:925:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:1265: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1265: FILE: drivers/gpu/drm/radeon/atom.c:944:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++), shift;

-:1274: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1274: FILE: drivers/gpu/drm/radeon/atom.c:963:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1283: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1283: FILE: drivers/gpu/drm/radeon/atom.c:977:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1306: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1306: FILE: drivers/gpu/drm/radeon/atom.c:1004:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

-:1315: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1315: FILE: drivers/gpu/drm/radeon/atom.c:1016:
+	uint8_t attr = get_u8(ctx->ctx->bios, (*ptr)++);

total: 13 errors, 12 warnings, 42 checks, 1313 lines checked
90c002142113 linux/bits.h: Add fixed-width GENMASK and BIT macros
-:20: WARNING:REPEATED_WORD: Possible repeated word: 'is'
#20: 
The following test file is is used to test this:

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#55: FILE: include/linux/bits.h:48:
+#define GENMASK_U32(h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + __GENMASK_U32(h, l))

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#55: FILE: include/linux/bits.h:48:
+#define GENMASK_U32(h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + __GENMASK_U32(h, l))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#61: FILE: include/linux/bits.h:54:
+#define GENMASK_U16(h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + __GENMASK_U16(h, l))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#61: FILE: include/linux/bits.h:54:
+#define GENMASK_U16(h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + __GENMASK_U16(h, l))

-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#67: FILE: include/linux/bits.h:60:
+#define GENMASK_U8(h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + __GENMASK_U8(h, l))

-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#67: FILE: include/linux/bits.h:60:
+#define GENMASK_U8(h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + __GENMASK_U8(h, l))

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nr' - possible side-effects?
#71: FILE: include/linux/bits.h:64:
+#define BIT_U16(nr)	(GENMASK_INPUT_CHECK(16 - 1, nr) + (U32(1) << (nr)))

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nr' - possible side-effects?
#72: FILE: include/linux/bits.h:65:
+#define BIT_U8(nr)	(GENMASK_INPUT_CHECK(32 - 1, nr) + (U32(1) << (nr)))

total: 0 errors, 1 warnings, 8 checks, 44 lines checked
77bd0600bc20 drm/i915: Temporary conversion to new GENMASK/BIT macros


