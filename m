Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0761588DEB3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 13:18:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C68610FBAF;
	Wed, 27 Mar 2024 12:18:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="FRboy/XG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A627D10F7E3;
 Wed, 27 Mar 2024 12:18:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2814861516;
 Wed, 27 Mar 2024 12:18:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 000C1C433C7;
 Wed, 27 Mar 2024 12:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711541899;
 bh=KTtpWTMjOQwngwn+yU6wwksb7TJ6zBCJq+Ni7vA0NTs=;
 h=From:To:Cc:Subject:Date:From;
 b=FRboy/XG9bbWh5Ec1/VLwFkoW2dQcAueTz/KSmpkYAqjz083CFkFrjsTTBYIvSfgG
 pPL1/9xP5Dva34MyQx6UNHG9tySR9mAl9G/NYexi/IdRq+/cp6WtnzuTGZWli1HO75
 z84pjr/rdHe9HMbuObXM2CL8eiZsXRPtOAJYVcHRiyzSBB3YypIXviIlvE6dC4gTbH
 uxTbRL7IaArwoezOpMmIpaYKMoE+bLKN9Razu0GwhOmxdOq8DkJlwWDcdxU32PDitv
 g6n5k2qABcwc5NCtfoEKn0zfWuwAlC/tW88UpyxJwCtosBfA1B1TDKHbAQ7jS6e1tk
 EQeovWKDs6XIg==
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	ville.syrjala@linux.intel.com
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: FAILED: Patch "Revert "drm/i915/dsi: Do display on sequence later on
 icl+"" failed to apply to 5.10-stable tree
Date: Wed, 27 Mar 2024 08:18:17 -0400
Message-ID: <20240327121818.2834227-1-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

The patch below does not apply to the 5.10-stable tree.
If someone wants it applied there, or to any other stable or longterm
tree, then please email the backport, including the original git commit
id to <stable@vger.kernel.org>.

Thanks,
Sasha

------------------ original commit in Linus's tree ------------------

From dc524d05974f615b145404191fcf91b478950499 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Tue, 16 Jan 2024 23:08:21 +0200
Subject: [PATCH] Revert "drm/i915/dsi: Do display on sequence later on icl+"
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This reverts commit 88b065943cb583e890324d618e8d4b23460d51a3.

Lenovo 82TQ is unhappy if we do the display on sequence this
late. The display output shows severe corruption.

It's unclear if this is a failure on our part (perhaps
something to do with sending commands in LP mode after HS
/video mode transmission has been started? Though the backlight
on command at least seems to work) or simply that there are
some commands in the sequence that are needed to be done
earlier (eg. could be some DSC init stuff?). If the latter
then I don't think the current Windows code would work
either, but maybe this was originally tested with an older
driver, who knows.

Root causing this fully would likely require a lot of
experimentation which isn't really feasible without direct
access to the machine, so let's just accept failure and
go back to the original sequence.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10071
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20240116210821.30194-1-ville.syrjala@linux.intel.com
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ac456a2275dba..eda4a8b885904 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1155,6 +1155,7 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 	}
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 
 	/* ensure all panel commands dispatched before enabling transcoder */
 	wait_for_cmds_dispatched_to_panel(encoder);
@@ -1255,8 +1256,6 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
-
 	/* step7: enable backlight */
 	intel_backlight_enable(crtc_state, conn_state);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
-- 
2.43.0




