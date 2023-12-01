Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 557A68001AC
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 03:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F76C10E7AB;
	Fri,  1 Dec 2023 02:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62B0A10E790;
 Fri,  1 Dec 2023 02:37:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9F46A882E;
 Fri,  1 Dec 2023 02:37:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Fri, 01 Dec 2023 02:37:04 -0000
Message-ID: <170139822482.19685.7679586788097645052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231130213103.214915-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231130213103.214915-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/dp=3A_Use_LINK?=
 =?utf-8?q?=5FQUAL=5FPATTERN=5F*_Phy_test_pattern_names?=
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

Series: series starting with [v2,1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
URL   : https://patchwork.freedesktop.org/series/127146/
State : warning

== Summary ==

Error: dim checkpatch failed
fde39bbbd88d drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
bebe1422443c drm/i915/dp: Add TPS4 PHY test pattern support
-:46: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#46: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4744:
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,

total: 0 errors, 0 warnings, 1 checks, 39 lines checked


