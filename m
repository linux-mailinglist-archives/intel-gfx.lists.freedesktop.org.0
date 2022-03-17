Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0634DCC1E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC27110E437;
	Thu, 17 Mar 2022 17:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F77610E3B2;
 Thu, 17 Mar 2022 17:10:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A3E6A0003;
 Thu, 17 Mar 2022 17:10:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 17 Mar 2022 17:10:43 -0000
Message-ID: <164753704358.32164.1047802829599381805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220317163353.4152-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220317163353.4152-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DP_MST_DSC_support_to_i915?=
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

Series: Add DP MST DSC support to i915
URL   : https://patchwork.freedesktop.org/series/101492/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
12739c663521 drm: Add missing DP DSC extended capability definitions.
-:20: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#20: FILE: drivers/gpu/drm/dp/drm_dp.c:2316:
+/**
+  * drm_dp_dsc_sink_bpp_increment_div - Get the bits per pixel precision

-:43: CHECK:LINE_SPACING: Please don't use multiple blank lines
#43: FILE: drivers/gpu/drm/dp/drm_dp.c:2339:
+
+

total: 0 errors, 1 warnings, 1 checks, 76 lines checked
b93f8f4e8667 drm/i915: Add DSC support to MST path
-:227: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#227: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1549:
+	pipe_config->dsc.compressed_bpp = min_t(u16,
+					       dsc_max_output_bpp >> 4,

-:290: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#290: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:103:
+static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
+						 struct intel_crtc_state *crtc_state,

-:330: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#330: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:143:
+	drm_dbg_kms(&i915->drm, "DSC Sink supported min bpp %d max bpp %d\n",
+				min_bpp, max_bpp);

-:341: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#341: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:154:
+		drm_dbg_kms(&i915->drm, "Trying bpp %d got %d pbn %d slots\n",
+					bpp, crtc_state->pbn, slots);

-:453: CHECK:LINE_SPACING: Please don't use multiple blank lines
#453: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:898:
+
+

total: 0 errors, 0 warnings, 5 checks, 398 lines checked


