Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E3A851C92
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 19:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C5D10E05B;
	Mon, 12 Feb 2024 18:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A2B10E05B;
 Mon, 12 Feb 2024 18:20:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Adaptive_Sync?=
 =?utf-8?q?_SDP_Support_for_DP_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Feb 2024 18:20:08 -0000
Message-ID: <170776200848.1183349.8911718819693264172@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Enable Adaptive Sync SDP Support for DP (rev7)
URL   : https://patchwork.freedesktop.org/series/126829/
State : warning

== Summary ==

Error: dim checkpatch failed
e80754e52fa2 drm/i915/display: Compute TRANS_VRR_VSYNC
-:45: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#45: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:212:
+	intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+				   crtc_state->vrr.vsync_end << 16 | crtc_state->vrr.vsync_start);

-:62: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 1 checks, 37 lines checked
3f73d1cf112c drm: Add Adaptive Sync SDP logging
-:136: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#136: FILE: include/drm/display/drm_dp_helper.h:129:
+void drm_dp_as_sdp_log(struct drm_printer *p,
+					   const struct drm_dp_as_sdp *as_sdp);

total: 0 errors, 0 warnings, 1 checks, 97 lines checked
ac7b9820d766 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
e2b66d1bbc8b drm/i915/display: Compute and Enable AS SDP


