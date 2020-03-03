Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A039178306
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 20:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7DE6E8C9;
	Tue,  3 Mar 2020 19:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4723B89FA5;
 Tue,  3 Mar 2020 19:21:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F70AA3C0D;
 Tue,  3 Mar 2020 19:21:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 03 Mar 2020 19:21:07 -0000
Message-ID: <158326326723.15380.3301661297724346140@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Gamma_cleanups_=28rev3=29?=
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

Series: drm/i915: Gamma cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/69136/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a80ba6cf6eef drm/i915: Polish CHV CGM CSC loading
68f1bc86f1b8 drm/i915: Clean up i9xx_load_luts_internal()
11ff682dafcd drm/i915: Split i9xx_read_lut_8() to gmch vs. ilk variants
-:56: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#56: FILE: drivers/gpu/drm/i915/display/intel_color.c:1845:
+		blob_data[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:58: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#58: FILE: drivers/gpu/drm/i915/display/intel_color.c:1847:
+		blob_data[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:60: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#60: FILE: drivers/gpu/drm/i915/display/intel_color.c:1849:
+		blob_data[i].blue = intel_color_lut_pack(REG_FIELD_GET(

total: 0 errors, 0 warnings, 3 checks, 65 lines checked
2bd70fc18de0 drm/i915: s/blob_data/lut/
-:39: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#39: FILE: drivers/gpu/drm/i915/display/intel_color.c:1711:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:42: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#42: FILE: drivers/gpu/drm/i915/display/intel_color.c:1713:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:45: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#45: FILE: drivers/gpu/drm/i915/display/intel_color.c:1715:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: drivers/gpu/drm/i915/display/intel_color.c:1762:
+	lut[i].red = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
 					 intel_de_read(dev_priv, PIPEGCMAX(pipe, 0)));

-:85: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#85: FILE: drivers/gpu/drm/i915/display/intel_color.c:1764:
+	lut[i].green = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
 					   intel_de_read(dev_priv, PIPEGCMAX(pipe, 1)));

-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/display/intel_color.c:1766:
+	lut[i].blue = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
 					  intel_de_read(dev_priv, PIPEGCMAX(pipe, 2)));

-:110: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#110: FILE: drivers/gpu/drm/i915/display/intel_color.c:1803:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:113: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#113: FILE: drivers/gpu/drm/i915/display/intel_color.c:1805:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:118: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#118: FILE: drivers/gpu/drm/i915/display/intel_color.c:1809:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:142: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#142: FILE: drivers/gpu/drm/i915/display/intel_color.c:1845:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:145: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#145: FILE: drivers/gpu/drm/i915/display/intel_color.c:1847:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:148: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#148: FILE: drivers/gpu/drm/i915/display/intel_color.c:1849:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:172: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#172: FILE: drivers/gpu/drm/i915/display/intel_color.c:1878:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:175: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#175: FILE: drivers/gpu/drm/i915/display/intel_color.c:1880:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:178: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#178: FILE: drivers/gpu/drm/i915/display/intel_color.c:1882:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

-:205: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#205: FILE: drivers/gpu/drm/i915/display/intel_color.c:1928:
+		lut[i].red = intel_color_lut_pack(REG_FIELD_GET(

-:208: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#208: FILE: drivers/gpu/drm/i915/display/intel_color.c:1930:
+		lut[i].green = intel_color_lut_pack(REG_FIELD_GET(

-:211: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#211: FILE: drivers/gpu/drm/i915/display/intel_color.c:1932:
+		lut[i].blue = intel_color_lut_pack(REG_FIELD_GET(

total: 0 errors, 0 warnings, 18 checks, 183 lines checked
5d0116537847 drm/i915: s/chv_read_cgm_lut/chv_read_cgm_gamma/
0608422e4221 drm/i915: Clean up integer types in color code
32017c748224 drm/i915: Refactor LUT read functions
4dbbf6bed479 drm/i915: Fix readout of PIPEGCMAX
1be5c304ba4b drm/i915: Pass the crtc to the low level read_lut() funcs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
