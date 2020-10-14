Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5704A28E36A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 17:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B606EAB2;
	Wed, 14 Oct 2020 15:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 859716EAB2;
 Wed, 14 Oct 2020 15:41:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D0FDA47EA;
 Wed, 14 Oct 2020 15:41:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 14 Oct 2020 15:41:15 -0000
Message-ID: <160269007548.21207.14838843716968896193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201014145914.67547-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201014145914.67547-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/edp/jsl=3A_Update_vswing_table_for_HBR_and_HBR2_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/edp/jsl: Update vswing table for HBR and HBR2 (rev2)
URL   : https://patchwork.freedesktop.org/series/82206/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ecc43963cb27 drm/i915/edp/jsl: Update vswing table for HBR and HBR2
-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1195:
+jsl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,

-:67: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#67: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1204:
+jsl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state,

-:76: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#76: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1213:
+jsl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state,

-:85: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#85: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1222:
+			return jsl_combo_phy_ddi_translations_edp_hbr2;
+		} else {

-:96: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#96: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1233:
+jsl_get_combo_buf_trans(struct intel_encoder *encoder,
+		       const struct intel_crtc_state *crtc_state,

total: 0 errors, 1 warnings, 4 checks, 111 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
