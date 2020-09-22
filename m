Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA6D27428F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C156E15B;
	Tue, 22 Sep 2020 13:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F288589E9B;
 Tue, 22 Sep 2020 13:00:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DAE10A47E9;
 Tue, 22 Sep 2020 13:00:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 22 Sep 2020 13:00:09 -0000
Message-ID: <160077960986.13390.12184510207858117361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200922125106.30540-1-imre.deak@intel.com>
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_LTTPR_non-transparent_link_trai?=
 =?utf-8?q?ning_mode?=
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

Series: drm/i915: Add support for LTTPR non-transparent link training mode
URL   : https://patchwork.freedesktop.org/series/81968/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
154fc7783917 drm/i915: Fix DP link training pattern mask
b688f7336e26 drm/i915: Move intel_dp_get_link_status to intel_dp_link_training.c
b7d02e6b76cc drm/i915: Simplify the link training functions
-:60: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#60: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:339:
+ * pattern 2, 3 or 4 depending on the the source and sink capabilities.

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
0b95955d4877 drm/i915: Factor out a helper to disable the DPCD training pattern
6a20187d3dfa drm/dp: Add LTTPR helpers
4fbcfbcb1a33 drm/i915: Switch to LTTPR transparent mode link training
91260e606734 drm/i915: Switch to LTTPR non-transparent mode link training
-:140: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 24)
#140: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:64:
+	if (drm_dp_dpcd_read(&intel_dp->aux,
[...]
+			return false;

-:237: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#237: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:156:
+		uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);

-:265: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#265: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:194:
+	const uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);

-:276: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#276: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:205:
+	const uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);

-:285: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#285: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:214:
+static u8 intel_dp_phy_voltage_max(struct intel_dp *intel_dp,
+				    enum drm_dp_phy dp_phy)

-:410: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#410: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:326:
+intel_dp_reset_link_train(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 			u8 dp_train_pat)

-:535: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#535: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:557:
+		const uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);

-:545: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#545: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:565:
+ * using one of training pattern 2, 3 or 4 depending on the the source and

total: 0 errors, 2 warnings, 6 checks, 678 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
