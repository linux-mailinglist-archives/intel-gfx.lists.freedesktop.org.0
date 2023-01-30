Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EDD68119C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 15:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A7110E24E;
	Mon, 30 Jan 2023 14:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C6D10E24E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 14:15:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 075B561083;
 Mon, 30 Jan 2023 14:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4891C4339C;
 Mon, 30 Jan 2023 14:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1675088107;
 bh=6G1VkAxqM9Oeqi7n+Myh81Vd7Tvj4wMsM5nVY2tsnFo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dr5UKW3PcWpGu0HvIz3KpAEMbrYgLq9TOk1RdaOfaQ7rGSmK1sDRoIVoQZF5S96k+
 OrULw3dKM6zIabHNsqCJxdRsMhjpT+0+CNH/kS94DpunLMpHbcZ67jwUM4uZM5qoPr
 2fELiUipWbo+tDqPAkpRHzVDejzqo4psMhyUPVmM=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon, 30 Jan 2023 14:51:23 +0100
Message-Id: <20230130134321.658921814@linuxfoundation.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130134316.327556078@linuxfoundation.org>
References: <20230130134316.327556078@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5.15 118/204] drm/i915: Allow switching away via
 vga-switcheroo if uninitialized
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Ramalingam C <ramalingam.c@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Sasha Levin <sashal@kernel.org>, Julia Lawall <Julia.Lawall@inria.fr>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Thomas Zimmermann <tzimmermann@suse.de>

[ Upstream commit a273e95721e96885971a05f1b34cb6d093904d9d ]

Always allow switching away via vga-switcheroo if the display is
uninitalized. Instead prevent switching to i915 if the device has
not been initialized.

This issue was introduced by commit 5df7bd130818 ("drm/i915: skip
display initialization when there is no display") protected, which
protects code paths from being executed on uninitialized devices.
In the case of vga-switcheroo, we want to allow a switch away from
i915's device. So run vga_switcheroo_process_delayed_switch() and
test in the switcheroo callbacks if the i915 device is available.

Fixes: 5df7bd130818 ("drm/i915: skip display initialization when there is no display")
Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: "Ville Syrjälä" <ville.syrjala@linux.intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: "Jouni Högander" <jouni.hogander@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: "José Roberto de Souza" <jose.souza@intel.com>
Cc: Julia Lawall <Julia.Lawall@inria.fr>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.14+
Link: https://patchwork.freedesktop.org/patch/msgid/20230116115425.13484-2-tzimmermann@suse.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/i915/i915_drv.c        | 3 +--
 drivers/gpu/drm/i915/i915_switcheroo.c | 6 +++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 59fb4c710c8c..20b9e58de155 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -990,8 +990,7 @@ static void i915_driver_lastclose(struct drm_device *dev)
 
 	intel_fbdev_restore_mode(dev);
 
-	if (HAS_DISPLAY(i915))
-		vga_switcheroo_process_delayed_switch();
+	vga_switcheroo_process_delayed_switch();
 }
 
 static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index de0e224b56ce..f1ce9f591efa 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -18,6 +18,10 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
 		return;
 	}
+	if (!HAS_DISPLAY(i915)) {
+		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
+		return;
+	}
 
 	if (state == VGA_SWITCHEROO_ON) {
 		drm_info(&i915->drm, "switched on\n");
@@ -43,7 +47,7 @@ static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
 	 * locking inversion with the driver load path. And the access here is
 	 * completely racy anyway. So don't bother with locking for now.
 	 */
-	return i915 && atomic_read(&i915->drm.open_count) == 0;
+	return i915 && HAS_DISPLAY(i915) && atomic_read(&i915->drm.open_count) == 0;
 }
 
 static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {
-- 
2.39.0



