Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A864C4155BC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 05:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD99F6E0CF;
	Thu, 23 Sep 2021 03:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5069B6E0CF;
 Thu, 23 Sep 2021 03:01:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47E2FA0003;
 Thu, 23 Sep 2021 03:01:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 03:01:59 -0000
Message-ID: <163236611926.31048.9500906359127599821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
In-Reply-To: <20210916102118.17356-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_unregister_gmbus_if_LFP_display_was_MIPI_pa?=
 =?utf-8?q?nel_=28rev4=29?=
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

Series: drm/i915/dsi: unregister gmbus if LFP display was MIPI panel (rev4)
URL   : https://patchwork.freedesktop.org/series/94733/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
388b23930275 drm/i915/dsi: do not register gmbus if it was reserved for MIPI display
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:122:
+static bool intel_gmbus_ddc_reserve_for_mipi_dsi(struct drm_i915_private *dev_priv,
+					     unsigned int pin)

-:46: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#46: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:127:
+			if ((pin == GMBUS_PIN_2_BXT && dev_priv->vbt.dsi.config->dual_link) ||
+			     pin == GMBUS_PIN_1_BXT) {

total: 0 errors, 0 warnings, 2 checks, 29 lines checked


