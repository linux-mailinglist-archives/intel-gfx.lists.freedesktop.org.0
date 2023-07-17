Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F01F7566C4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 16:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10BF910E0C2;
	Mon, 17 Jul 2023 14:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D630910E0C2;
 Mon, 17 Jul 2023 14:48:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD49FA7DFF;
 Mon, 17 Jul 2023 14:48:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Mon, 17 Jul 2023 14:48:56 -0000
Message-ID: <168960533680.24536.1074735243720551320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230717100931.2989980-1-suraj.kandpal@intel.com>
In-Reply-To: <20230717100931.2989980-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_PPS_readout_=28rev3=29?=
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

Series: Add DSC PPS readout (rev3)
URL   : https://patchwork.freedesktop.org/series/120456/
State : warning

== Summary ==

Error: dim checkpatch failed
35e5b6fe7614 drm/i915/vdsc: Refactor dsc register field macro
e09ea59f2e49 drm/i915/vdsc: Add a check for dsc split cases
d8a331ec760b drm/i915/vdsc: Add function to read any PPS register
a0e2e1595c46 drm/i915/vdsc: Use MACRO to cleanup intel_dsc_get_pps_reg
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:373:
+#define PRE_MTL_GET_DSC_REGISTER(pps, is_pipe_dsc, pipe) do { \
+	if (is_pipe_dsc) { \
+		*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_##pps(pipe); \
+		*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_##pps(pipe); \
+	} else { \
+		*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_##pps; \
+		*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_##pps; \
+	} \
+} while (0)

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:383:
+#define MTL_GET_DSC_REGISTER(pps, pipe) do { \
+		*dsc_reg0 = MTL_DSC0_PICTURE_PARAMETER_SET_##pps(pipe); \
+		*dsc_reg1 = MTL_DSC1_PICTURE_PARAMETER_SET_##pps(pipe); \
+} while (0)

total: 0 errors, 0 warnings, 2 checks, 163 lines checked
05fc5c372fe4 drm/i915/vdsc: Add function to write in PPS register
6e552a852efe drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
d3b81dba16cb drm/i915/display: Compare the readout dsc pps params


