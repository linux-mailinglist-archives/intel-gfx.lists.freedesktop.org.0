Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7534012590E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 02:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF756E0E6;
	Thu, 19 Dec 2019 01:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1BA56E0E6;
 Thu, 19 Dec 2019 01:05:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A4B8A363B;
 Thu, 19 Dec 2019 01:05:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 19 Dec 2019 01:05:25 -0000
Message-ID: <157671752561.26202.16788389075573554138@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218161105.30638-1-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl=3A_Render/media_decompression_support_=28rev3?=
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

Series: drm/i915/tgl: Render/media decompression support (rev3)
URL   : https://patchwork.freedesktop.org/series/71125/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0db89922ad4d drm/framebuffer: Format modifier for Intel Gen-12 render compression
fdc1e07ba896 drm/i915: Use intel_tile_height() instead of re-implementing
ed420ff5d644 drm/i915: Move CCS stride alignment W/A inside intel_fb_stride_alignment
6dfdc0daaf3f drm/i915: Extract framebufer CCS offset checks into a function
a5ee2996f222 drm/i915: Add helpers to select correct ccs/aux planes
0754fb06980e drm/i915/tgl: Gen-12 render decompression
-:287: ERROR:CODE_INDENT: code indent should use tabs where possible
#287: FILE: drivers/gpu/drm/i915/display/intel_display.c:2802:
+^I        drm_format_info_block_width(fb->format, main_plane);$

total: 1 errors, 0 warnings, 0 checks, 434 lines checked
9e84b5f36583 drm/i915/tgl: Make sure FBs have a correct CCS plane stride
fe895b490e63 drm/i915: Skip rotated offset adjustment for unsupported modifiers
5f3205fa6fef drm/i915: Make sure Y slave planes get all the required state
586b5fcb3735 drm/i915: Make sure CCS YUV semiplanar format checks work
-:54: ERROR:CODE_INDENT: code indent should use tabs where possible
#54: FILE: drivers/gpu/drm/i915/display/intel_display.c:3856:
+^I^I^I^I^I        fb->modifier)) {$

-:54: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#54: FILE: drivers/gpu/drm/i915/display/intel_display.c:3856:
+	if (intel_format_info_is_yuv_semiplanar(fb->format,
+					        fb->modifier)) {

-:64: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#64: FILE: drivers/gpu/drm/i915/display/intel_display.c:5786:
+		  uint64_t modifier, bool need_scaler)

total: 1 errors, 0 warnings, 2 checks, 142 lines checked
740c4f7ff980 drm/framebuffer: Format modifier for Intel Gen-12 media compression
b816e143d098 drm/fb: Extend format_info member arrays to handle four planes
2add322e7188 drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the media engine
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
compressed buffers. Unlike render decompression, plane 6 and  plane 7 do not

-:111: WARNING:MISSING_BREAK: Possible switch case/default not preceded by break or fallthrough comment
#111: FILE: drivers/gpu/drm/i915/display/intel_display.c:2635:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:

total: 0 errors, 2 warnings, 0 checks, 487 lines checked
ffc858def370 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
d3ec1213283b drm/i915/tgl: Add Clear Color support for TGL Render Decompression
-:304: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#304: FILE: drivers/gpu/drm/i915/i915_reg.h:6889:
+#define PLANE_CC_VAL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))

total: 0 errors, 0 warnings, 1 checks, 238 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
