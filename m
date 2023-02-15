Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7014697504
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 04:45:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEF2D10E670;
	Wed, 15 Feb 2023 03:45:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A7C710E670;
 Wed, 15 Feb 2023 03:45:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2129FA0169;
 Wed, 15 Feb 2023 03:45:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Wed, 15 Feb 2023 03:45:07 -0000
Message-ID: <167643270713.30600.8949421845710711197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
In-Reply-To: <20230207074416.3209722-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_YCbCr420_for_VDSC_=28rev4=29?=
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

Series: Enable YCbCr420 for VDSC (rev4)
URL   : https://patchwork.freedesktop.org/series/113729/
State : warning

== Summary ==

Error: dim checkpatch failed
6cdd40baf8cf drm/dp_helper: Add helper to check if the sink supports given format with DSC
04c83ea19cea drm/i915/dp: Check if DSC supports the given output_format
80ca3b9cb354 drm/i915: Adding the new registers for DSC
bc52e4f42491 drm/i915: Enable YCbCr420 for VDSC
-:199: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_row' - possible side-effects?
#199: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:447:
+#define PARAM_TABLE(_minmax, _bpc, _row, _col, _is_420)  do { \
+	if (bpc == (_bpc)) {	\
+		if (_is_420)	\
+			return rc_range_##_minmax##qp420_##_bpc##bpc[_row][_col]; \
+		else	\
+			return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+	}	\
 } while (0)

-:199: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_col' - possible side-effects?
#199: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:447:
+#define PARAM_TABLE(_minmax, _bpc, _row, _col, _is_420)  do { \
+	if (bpc == (_bpc)) {	\
+		if (_is_420)	\
+			return rc_range_##_minmax##qp420_##_bpc##bpc[_row][_col]; \
+		else	\
+			return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+	}	\
 } while (0)

total: 0 errors, 0 warnings, 2 checks, 228 lines checked
6b12844735fd drm/i915: Fill in native_420 field
e3abb5a999a6 drm/i915/vdsc: Check slice design requirement
ce3c95890351 drm/i915/dsc: Add debugfs entry to validate DSC output formats
-:114: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1909:
+	seq_printf(m, "DSC_Output_Format: %s\n", intel_output_format_name(crtc_state->output_format));

total: 0 errors, 1 warnings, 0 checks, 151 lines checked


