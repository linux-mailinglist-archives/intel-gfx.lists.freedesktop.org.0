Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 379951279B1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 11:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3202C6EC0B;
	Fri, 20 Dec 2019 10:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 194806EC0B;
 Fri, 20 Dec 2019 10:57:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07FA4A0073;
 Fri, 20 Dec 2019 10:57:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 20 Dec 2019 10:57:16 -0000
Message-ID: <157683943600.9212.7924007029086108520@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218161105.30638-1-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl=3A_Render/media_decompression_support_=28rev10?=
 =?utf-8?q?=29?=
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

Series: drm/i915/tgl: Render/media decompression support (rev10)
URL   : https://patchwork.freedesktop.org/series/71125/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0e244fde713c drm/framebuffer: Format modifier for Intel Gen-12 render compression
b8b5d1fe8a14 drm/i915: Use intel_tile_height() instead of re-implementing
cfb29f3dfc82 drm/i915: Move CCS stride alignment W/A inside intel_fb_stride_alignment
302b5a034ca3 drm/i915: Extract framebufer CCS offset checks into a function
9c5b00d5c04f drm/i915: Add helpers to select correct ccs/aux planes
5b81b67242e0 drm/i915/tgl: Gen-12 render decompression
31001f05269d drm/i915/tgl: Make sure FBs have a correct CCS plane stride
bc4f1cd5e087 drm/i915: Skip rotated offset adjustment for unsupported modifiers
38863af06562 drm/i915: Make sure Y slave planes get all the required state
a3117f225e10 drm/i915: Make sure CCS YUV semiplanar format checks work
-:55: ERROR:CODE_INDENT: code indent should use tabs where possible
#55: FILE: drivers/gpu/drm/i915/display/intel_display.c:3855:
+^I^I^I^I^I        fb->modifier)) {$

-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/i915/display/intel_display.c:3855:
+	if (intel_format_info_is_yuv_semiplanar(fb->format,
+					        fb->modifier)) {

-:65: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#65: FILE: drivers/gpu/drm/i915/display/intel_display.c:5785:
+		  uint64_t modifier, bool need_scaler)

total: 1 errors, 0 warnings, 2 checks, 142 lines checked
428f9f32c6f5 drm/framebuffer: Format modifier for Intel Gen-12 media compression
78444dfcb223 drm/fb: Extend format_info member arrays to handle four planes
e9bbc97aba9f drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the media engine
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
compressed buffers. Unlike render decompression, plane 6 and  plane 7 do not

-:124: WARNING:MISSING_BREAK: Possible switch case/default not preceded by break or fallthrough comment
#124: FILE: drivers/gpu/drm/i915/display/intel_display.c:2644:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:

total: 0 errors, 2 warnings, 0 checks, 478 lines checked
8420af3f7552 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
64e5f7fd003b drm/i915/tgl: Add Clear Color support for TGL Render Decompression
-:304: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#304: FILE: drivers/gpu/drm/i915/i915_reg.h:6889:
+#define PLANE_CC_VAL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))

total: 0 errors, 0 warnings, 1 checks, 238 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
