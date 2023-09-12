Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBE079DB8C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 00:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE1F10E094;
	Tue, 12 Sep 2023 22:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D74A10E094;
 Tue, 12 Sep 2023 22:03:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B0EEAADD7;
 Tue, 12 Sep 2023 22:03:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 12 Sep 2023 22:03:42 -0000
Message-ID: <169455622256.31792.2521681376450841683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230912163735.1075868-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230912163735.1075868-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_fractional_bpp_support_=28rev6=29?=
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

Series: Add DSC fractional bpp support (rev6)
URL   : https://patchwork.freedesktop.org/series/111391/
State : warning

== Summary ==

Error: dim checkpatch failed
7058c3132171 drm/display/dp: Add helper function to get DSC bpp prescision
eef79ef63c3a drm/i915/display: Store compressed bpp in U6.4 format
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:118: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#118: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3390:
+		intel_fractional_bpp_to_x16(min(crtc_state->pipe_bpp,
+				     VBT_DSC_MAX_BPP(dsc->max_bpp)));

-:140: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#140: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2571:
+		int min_cdclk_bj = (intel_fractional_bpp_from_x16(crtc_state->dsc.compressed_bpp_x16) *

-:189: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#189: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1867:
+			pipe_config->dsc.compressed_bpp_x16 = intel_fractional_bpp_to_x16(valid_dsc_bpp[i]);

-:198: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1905:
+			pipe_config->dsc.compressed_bpp_x16 = intel_fractional_bpp_to_x16(compressed_bpp);

-:207: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2089:
+	pipe_config->dsc.compressed_bpp_x16 = intel_fractional_bpp_to_x16(max(dsc_min_bpp, dsc_max_bpp));

-:253: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2275:
+					intel_fractional_bpp_from_x16(pipe_config->dsc.compressed_bpp_x16)),

-:299: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#299: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:246:
+		intel_fractional_bpp_to_x16(intel_dp_dsc_nearest_valid_bpp(i915,
+								last_compressed_bpp,

-:314: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#314: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:258:
+					intel_fractional_bpp_from_x16(crtc_state->dsc.compressed_bpp_x16),

-:315: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#315: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:259:
+					intel_fractional_bpp_from_x16(crtc_state->dsc.compressed_bpp_x16),

-:327: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#327: 
new file mode 100644

total: 0 errors, 8 warnings, 2 checks, 302 lines checked
0f248379263d drm/i915/display: Consider fractional vdsc bpp while computing m_n values
1aaabe03687f drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
adcdfae5fce4 drm/i915/dsc/mtl: Add support for fractional bpp
d5dfd1cce381 drm/i915/dp: Iterate over output bpp with fractional step size
098bb9e549cb drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
1c1295360f87 drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs


