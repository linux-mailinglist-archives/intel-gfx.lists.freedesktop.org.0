Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1449DAEA10F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 16:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D61310E8CA;
	Thu, 26 Jun 2025 14:45:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="KaMUhL9P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E4910E2CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 14:33:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id CDF2544EC5;
 Thu, 26 Jun 2025 14:33:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0610AC4CEEB;
 Thu, 26 Jun 2025 14:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1750948401;
 bh=IwtG2VdTCoheodllkw5FcV9W8RETmfOaKJg36XVVK9E=;
 h=From:To:Cc:Subject:Date:From;
 b=KaMUhL9PovBp+jAzz4MD/CEGMISuqFrDJRUMeMPxi6G+iXc04qF0J0BTNSGfgz8JK
 rmASjC72dQnj2SXIT7QqMQm8owPOyzuP/3JG7N37Mq9xPXyTQjCQ2dqOl1N2wWV1Vl
 0aSi7YODYca/Z69Ltt/uL/vlJYElyBgffLzojieppI6uYExUV646r4gto8BKNxHSul
 WRROL7OGgRqu8bWi03Ba1TF+DR+DSdV5HrHvjojvOrwdHB8CdsWf7ZPeMAKatWdBDU
 MdkI+mokR2ljM2HYdSV1lipYhEsqzyhi9u3lx+5PVQvBst96+M0UeBdepabVOjCPnk
 gpwbogkZOdgeg==
From: Hans de Goede <hansg@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Cc: Hans de Goede <hansg@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: [PATCH] drm/i915/dsi: Fix NULL pointer deref in vlv_dphy_param_init()
Date: Thu, 26 Jun 2025 16:33:17 +0200
Message-ID: <20250626143317.101706-1-hansg@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 26 Jun 2025 14:45:14 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 77ba0b856225 ("drm/i915/dsi: convert vlv_dsi.[ch] to struct
intel_display") added a to_intel_display(connector) call to
vlv_dphy_param_init() but when vlv_dphy_param_init() gets called
the connector object has not been initialized yet, so this leads
to a NULL pointer deref:

 BUG: kernel NULL pointer dereference, address: 000000000000000c
 ...
 Hardware name: ASUSTeK COMPUTER INC. T100TA/T100TA, BIOS T100TA.314 08/13/2015
 RIP: 0010:vlv_dsi_init+0x4e6/0x1600 [i915]
 ...
 Call Trace:
  <TASK>
  ? intel_step_name+0x4be8/0x5c30 [i915]
  intel_setup_outputs+0x2d6/0xbd0 [i915]
  intel_display_driver_probe_nogem+0x13f/0x220 [i915]
  i915_driver_probe+0x3d9/0xaf0 [i915]

Use to_intel_display(&intel_dsi->base) instead to fix this.

Fixes: 77ba0b856225 ("drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display")
Signed-off-by: Hans de Goede <hansg@kernel.org>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 21c1e10caf68..2007bb9d974d 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1589,8 +1589,8 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
 
 static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 {
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
-	struct intel_display *display = to_intel_display(connector);
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns, extra_byte_count, tlpx_ui;
 	u32 ui_num, ui_den;
-- 
2.49.0

