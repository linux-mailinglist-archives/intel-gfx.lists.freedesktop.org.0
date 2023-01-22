Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AD4676FE3
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Jan 2023 16:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CE5110E17C;
	Sun, 22 Jan 2023 15:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BA410E17C
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Jan 2023 15:26:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 40D1560BC5;
 Sun, 22 Jan 2023 15:26:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2FFC433D2;
 Sun, 22 Jan 2023 15:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1674401174;
 bh=R6digx9blFPhuYEDQsxztJ6n0HaeonF1eLnERsBaZ40=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z7gcRp4GEyVoKKYOn70NMgkJCbnV/2NGuN7HIGWjiCLVAd3SerJSK/8d4qtaIxco5
 xdTyzbG4aMVQBzDFCmajc7HrN3zOz0j82mPadZ7Bl/edbSX/u01YZ2kl07wRxA5fcg
 v4zaLFwl450ZbSQFqqHgJYE4+7c2c4cqNkzaFFys=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Sun, 22 Jan 2023 16:04:28 +0100
Message-Id: <20230122150252.728651448@linuxfoundation.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230122150246.321043584@linuxfoundation.org>
References: <20230122150246.321043584@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6.1 139/193] drm/i915: Allow switching away via
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
 Julia Lawall <Julia.Lawall@inria.fr>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Thomas Zimmermann <tzimmermann@suse.de>

commit a273e95721e96885971a05f1b34cb6d093904d9d upstream.

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/i915_driver.c     |    3 +--
 drivers/gpu/drm/i915/i915_switcheroo.c |    6 +++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1074,8 +1074,7 @@ static void i915_driver_lastclose(struct
 
 	intel_fbdev_restore_mode(dev);
 
-	if (HAS_DISPLAY(i915))
-		vga_switcheroo_process_delayed_switch();
+	vga_switcheroo_process_delayed_switch();
 }
 
 static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -19,6 +19,10 @@ static void i915_switcheroo_set_state(st
 		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
 		return;
 	}
+	if (!HAS_DISPLAY(i915)) {
+		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
+		return;
+	}
 
 	if (state == VGA_SWITCHEROO_ON) {
 		drm_info(&i915->drm, "switched on\n");
@@ -44,7 +48,7 @@ static bool i915_switcheroo_can_switch(s
 	 * locking inversion with the driver load path. And the access here is
 	 * completely racy anyway. So don't bother with locking for now.
 	 */
-	return i915 && atomic_read(&i915->drm.open_count) == 0;
+	return i915 && HAS_DISPLAY(i915) && atomic_read(&i915->drm.open_count) == 0;
 }
 
 static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {


