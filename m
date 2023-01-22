Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D999676D2B
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Jan 2023 14:41:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C14410E03E;
	Sun, 22 Jan 2023 13:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDED10E03E
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Jan 2023 13:40:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E3DCD60C1D;
 Sun, 22 Jan 2023 13:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8C3FC433EF;
 Sun, 22 Jan 2023 13:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1674394857;
 bh=SB6Sa0JgYIDhKC62AcXl3OlpDBWUca0f+uUojFYRfLY=;
 h=Subject:To:Cc:From:Date:From;
 b=1iOErqsDWUNF8yfFVjyrvJN84lFtoolznEg2EyrP7RJmyH6NEKdjHSBVIhRXD6DoS
 HXWM9Zq1/98T7ulhwpeWsMFCNcXBsJWwFoe+fEO7ctSg0efvziNBsn1YBZvGW6iJbN
 aanCoUnHBwrhAxNzJuF0hQxaSbjNhdsYHMhurNB0=
To: Jason@zx2c4.com, Julia.Lawall@inria.fr, alexander.deucher@amd.com,
 andi.shyti@linux.intel.com, andrzej.hajda@intel.com,
 ankit.k.nautiyal@intel.com, gregkh@linuxfoundation.org, imre.deak@intel.com,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 jose.souza@intel.com, jouni.hogander@intel.com, lucas.demarchi@intel.com,
 manasi.d.navare@intel.com, matthew.d.roper@intel.com,
 radhakrishna.sripada@intel.com, ramalingam.c@intel.com, rodrigo.vivi@intel.com,
 stanislav.lisovskiy@intel.com, tvrtko.ursulin@linux.intel.com,
 tzimmermann@suse.de, uma.shankar@intel.com, ville.syrjala@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 22 Jan 2023 14:40:24 +0100
Message-ID: <167439482427154@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/i915: Allow switching away via
 vga-switcheroo if uninitialized" has been added to the 6.1-stable tree
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
Cc: stable-commits@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This is a note to let you know that I've just added the patch titled

    drm/i915: Allow switching away via vga-switcheroo if uninitialized

to the 6.1-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-allow-switching-away-via-vga-switcheroo-if-uninitialized.patch
and it can be found in the queue-6.1 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From a273e95721e96885971a05f1b34cb6d093904d9d Mon Sep 17 00:00:00 2001
From: Thomas Zimmermann <tzimmermann@suse.de>
Date: Mon, 16 Jan 2023 12:54:23 +0100
Subject: drm/i915: Allow switching away via vga-switcheroo if uninitialized
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

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
 drivers/gpu/drm/i915/i915_driver.c     |    5 +----
 drivers/gpu/drm/i915/i915_switcheroo.c |    6 +++++-
 2 files changed, 6 insertions(+), 5 deletions(-)

--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1070,12 +1070,9 @@ static int i915_driver_open(struct drm_d
  */
 static void i915_driver_lastclose(struct drm_device *dev)
 {
-	struct drm_i915_private *i915 = to_i915(dev);
-
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


Patches currently in stable-queue which might be from tzimmermann@suse.de are

queue-6.1/drm-i915-allow-switching-away-via-vga-switcheroo-if-uninitialized.patch
