Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDFF8123C1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 01:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200AF10E865;
	Thu, 14 Dec 2023 00:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF3D610E865;
 Thu, 14 Dec 2023 00:15:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5386A7E03;
 Thu, 14 Dec 2023 00:15:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Bv4=2C1/3=5D_drm/i915/dp=3A_Use_LINK=5FQUAL=5FPATTERN=5F*_Phy_?=
 =?utf-8?q?test_pattern_names?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Thu, 14 Dec 2023 00:15:10 -0000
Message-ID: <170251291084.19959.9482935520714702992@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
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

Series: series starting with [v4,1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
URL   : https://patchwork.freedesktop.org/series/127768/
State : warning

== Summary ==

Error: dim checkpatch failed
fff3da8c3b65 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
fd353c2f5a42 drm/i915/dp: Add TPS4 PHY test pattern support
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4692:
+			intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+				DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4749:
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			    DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,

total: 0 errors, 0 warnings, 2 checks, 47 lines checked
122c598a303e drm/i915/dp: Fix passing the correct DPCD_REV for drm_dp_set_phy_test_pattern


