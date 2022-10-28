Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F353B61133D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 15:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CAE10E83A;
	Fri, 28 Oct 2022 13:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FE8A10E833;
 Fri, 28 Oct 2022 13:43:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBD7EA00E8;
 Fri, 28 Oct 2022 13:43:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Fri, 28 Oct 2022 13:43:01 -0000
Message-ID: <166696458196.15989.5669733629934288054@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221028111953.12552-1-swati2.sharma@intel.com>
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_YCbCr420_for_VDSC?=
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

Series: Enable YCbCr420 for VDSC
URL   : https://patchwork.freedesktop.org/series/110253/
State : warning

== Summary ==

Error: dim checkpatch failed
725469674e5e drm/dp_helper: Add helper to check if the sink supports given format with DSC
-:20: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#20: FILE: include/drm/display/drm_dp_helper.h:196:
 }
+/* Check if sink supports DSC with given output format */

total: 0 errors, 0 warnings, 1 checks, 12 lines checked
f2af65f313e1 drm/i915/dp: Check if DSC supports the given output_format
359916e75b3c drm/i915: Adding the new registers for DSC
ee9a17fe123d drm/i915: Enable YCbCr420 for VDSC
-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_row' - possible side-effects?
#189: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:447:
+#define PARAM_TABLE(_minmax, _bpc, _row, _col, _is_420)  do { \
+	if (bpc == (_bpc)) {	\
+		if (_is_420)	\
+			return rc_range_##_minmax##qp420_##_bpc##bpc[_row][_col]; \
+		else	\
+			return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+	}	\
 } while (0)

-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_col' - possible side-effects?
#189: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:447:
+#define PARAM_TABLE(_minmax, _bpc, _row, _col, _is_420)  do { \
+	if (bpc == (_bpc)) {	\
+		if (_is_420)	\
+			return rc_range_##_minmax##qp420_##_bpc##bpc[_row][_col]; \
+		else	\
+			return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+	}	\
 } while (0)

total: 0 errors, 0 warnings, 2 checks, 228 lines checked
03df68b9395c drm/i915: Fill in native_420 field
411bbe96f7f6 drm/i915/dsc: Add debugfs entry to validate DSC YCbCr420
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
both RGB and YCbCr420 output formats by the sink, our policy is to try RGB first

-:26: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1774:
+			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, DP_DSC_YCbCr420_Native)));

total: 0 errors, 2 warnings, 0 checks, 109 lines checked
84bb46c116fe drm/i915/dsc: Allow DSC only with YCbCr420 format when forced from debugfs
-:20: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#20: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1510:
+	if (intel_dp->force_dsc_ycbcr420_en && pipe_config->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
6b5d2bc2cd05 drm/i915: Code styling fixes


