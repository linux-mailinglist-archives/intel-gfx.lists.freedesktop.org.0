Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA1961EC32
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD40110E1F3;
	Mon,  7 Nov 2022 07:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72BA610E1F3;
 Mon,  7 Nov 2022 07:37:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BAF8AADE4;
 Mon,  7 Nov 2022 07:37:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Mon, 07 Nov 2022 07:37:38 -0000
Message-ID: <166780665843.17761.17366849238435714468@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107071801.1352870-1-suraj.kandpal@intel.com>
In-Reply-To: <20221107071801.1352870-1-suraj.kandpal@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/110576/
State : warning

== Summary ==

Error: dim checkpatch failed
5dd859f0d749 drm/dp_helper: Add helper to check if the sink supports given format with DSC
-:20: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#20: FILE: include/drm/display/drm_dp_helper.h:196:
 }
+/* Check if sink supports DSC with given output format */

total: 0 errors, 0 warnings, 1 checks, 12 lines checked
a548c1fd9212 drm/i915/dp: Check if DSC supports the given output_format
d50d3aab8710 drm/i915: Adding the new registers for DSC
8055d2abbceb drm/i915: Enable YCbCr420 for VDSC
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
ad6ab6d8ce06 drm/i915: Fill in native_420 field
b219e92e041b drm/i915/dsc: Add debugfs entry to validate DSC YCbCr420
a291fd85598f drm/i915/dsc: Allow DSC only with YCbCr420 format when forced from debugfs
b03c9a123d12 drm/i915: Code styling fixes


