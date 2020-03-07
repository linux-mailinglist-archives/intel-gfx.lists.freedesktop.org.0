Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1D417C969
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 01:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9136E433;
	Sat,  7 Mar 2020 00:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAC216E433;
 Sat,  7 Mar 2020 00:09:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3B71A41FB;
 Sat,  7 Mar 2020 00:09:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 07 Mar 2020 00:09:41 -0000
Message-ID: <158353978170.20975.2287726801865200071@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Gamma_cleanups_=28rev4=29?=
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

Series: drm/i915: Gamma cleanups (rev4)
URL   : https://patchwork.freedesktop.org/series/69136/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ca6d5d42a01b drm/i915: Polish CHV CGM CSC loading
97e95a526dd1 drm/i915: Clean up i9xx_load_luts_internal()
cce1fed1d2dd drm/i915: Split i9xx_read_lut_8() to gmch vs. ilk variants
-:58: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#58: FILE: drivers/gpu/drm/i915/display/intel_color.c:1845:
+		blob_data[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:60: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#60: FILE: drivers/gpu/drm/i915/display/intel_color.c:1847:
+		blob_data[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:62: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#62: FILE: drivers/gpu/drm/i915/display/intel_color.c:1849:
+		blob_data[i].blue = intel_color_lut_pack(REG_FIELD_GET(

total: 0 errors, 0 warnings, 3 checks, 65 lines checked
319ef1a13f77 drm/i915: s/blob_data/lut/
-:40: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#40: FILE: drivers/gpu/drm/i915/display/intel_color.c:1711:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:43: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#43: FILE: drivers/gpu/drm/i915/display/intel_color.c:1713:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:46: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#46: FILE: drivers/gpu/drm/i915/display/intel_color.c:1715:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/i915/display/intel_color.c:1762:
+	lut[i].red = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
 					 intel_de_read(dev_priv, PIPEGCMAX(pipe, 0)));

-:86: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#86: FILE: drivers/gpu/drm/i915/display/intel_color.c:1764:
+	lut[i].green = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
 					   intel_de_read(dev_priv, PIPEGCMAX(pipe, 1)));

-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/i915/display/intel_color.c:1766:
+	lut[i].blue = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
 					  intel_de_read(dev_priv, PIPEGCMAX(pipe, 2)));

-:111: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#111: FILE: drivers/gpu/drm/i915/display/intel_color.c:1803:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:114: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#114: FILE: drivers/gpu/drm/i915/display/intel_color.c:1805:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:119: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#119: FILE: drivers/gpu/drm/i915/display/intel_color.c:1809:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:143: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#143: FILE: drivers/gpu/drm/i915/display/intel_color.c:1845:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:146: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#146: FILE: drivers/gpu/drm/i915/display/intel_color.c:1847:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:149: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#149: FILE: drivers/gpu/drm/i915/display/intel_color.c:1849:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:173: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#173: FILE: drivers/gpu/drm/i915/display/intel_color.c:1878:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:176: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#176: FILE: drivers/gpu/drm/i915/display/intel_color.c:1880:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:179: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#179: FILE: drivers/gpu/drm/i915/display/intel_color.c:1882:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:206: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#206: FILE: drivers/gpu/drm/i915/display/intel_color.c:1928:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:209: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#209: FILE: drivers/gpu/drm/i915/display/intel_color.c:1930:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:212: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#212: FILE: drivers/gpu/drm/i915/display/intel_color.c:1932:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

total: 0 errors, 0 warnings, 18 checks, 183 lines checked
d4f1fa52704c drm/i915: s/chv_read_cgm_lut/chv_read_cgm_gamma/
ef770588c959 drm/i915: Clean up integer types in color code
8973bf85659e drm/i915: Refactor LUT read functions
406986ee9efc drm/i915: Fix readout of PIPEGCMAX
3da0fd12387c drm/i915: Pass the crtc to the low level read_lut() funcs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
