Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B011600FF5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 15:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAAA10E46F;
	Mon, 17 Oct 2022 13:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 506A210E433;
 Mon, 17 Oct 2022 13:10:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46C24A0099;
 Mon, 17 Oct 2022 13:10:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Mon, 17 Oct 2022 13:10:11 -0000
Message-ID: <166601221128.13568.11936560510303383464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
In-Reply-To: <20221014152622.233398-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_YCbCr420_for_VDSC_=28rev3=29?=
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

Series: Enable YCbCr420 for VDSC (rev3)
URL   : https://patchwork.freedesktop.org/series/109723/
State : warning

== Summary ==

Error: dim checkpatch failed
55621de03fe4 drm/i915/dp: Check if DSC supports the given output_format
4f0091385d61 drm/i915: Adding the new registers for DSC
ccd21963a69f drm/i915: Enable YCbCr420 for VDSC
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
f3ae50bc33c5 drm/i915: Fill in native_420 field


