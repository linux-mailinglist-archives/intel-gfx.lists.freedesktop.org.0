Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F56E6351ED
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 09:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00ABC10E4FF;
	Wed, 23 Nov 2022 08:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A079210E4FE;
 Wed, 23 Nov 2022 08:07:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AF6DA00CC;
 Wed, 23 Nov 2022 08:07:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Wed, 23 Nov 2022 08:07:39 -0000
Message-ID: <166919085963.15575.490183362996113317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123074356.7513-1-nischal.varide@intel.com>
In-Reply-To: <20221123074356.7513-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_A_check_on_mode-=3Eclock=2C_if_it_excee?=
 =?utf-8?q?ds_max=5Fdot=5Fclock?=
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

Series: drm/i915/display: A check on mode->clock, if it exceeds max_dot_clock
URL   : https://patchwork.freedesktop.org/series/111240/
State : warning

== Summary ==

Error: dim checkpatch failed
abeb32d368e6 drm/i915/display: A check on mode->clock, if it exceeds max_dot_clock
-:22: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'adjusted_mode->clock > dev_priv->max_dotclk_freq'
#22: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2066:
+	if (!intel_dp_can_bigjoiner(intel_dp) &&
+			(adjusted_mode->clock > dev_priv->max_dotclk_freq))

-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2067:
+	if (!intel_dp_can_bigjoiner(intel_dp) &&
+			(adjusted_mode->clock > dev_priv->max_dotclk_freq))

-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2071:
+	if (intel_dp_can_bigjoiner(intel_dp) &&
+		(adjusted_mode->clock >  (2 * dev_priv->max_dotclk_freq)))

-:30: CHECK:LINE_SPACING: Please don't use multiple blank lines
#30: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2074:
+
+

total: 0 errors, 0 warnings, 4 checks, 25 lines checked


