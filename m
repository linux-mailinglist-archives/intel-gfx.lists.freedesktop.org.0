Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21A7573052
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 10:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D84958AC;
	Wed, 13 Jul 2022 08:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C832C95135;
 Wed, 13 Jul 2022 08:12:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9451A61AE4;
 Wed, 13 Jul 2022 08:12:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AC64C341E5;
 Wed, 13 Jul 2022 08:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657699952;
 bh=PqPlgIAlFyMpP7L789BurP975nmnKIyBwIXdpVDg5yg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D0kKyHiXDCKIteitN7csA+HvvNev9nkF3luVYDfS3vKTOBTJHXPLH2gWhDqpo6YaA
 ABJ7gzwNzsP7txHseBd44Y7zcJzM7era82j2qwZwX+qsSbJfnUdHDX6jq2uokFfqZx
 0/BiOJR0cUSJg9tAegb+8t8dm8AjC79fRyjWex06UiwwSM313tMaAApuMACvDhkX3G
 Qmx/qLguteARTZj0/z+Hrsgnq5Okd6QD3BwwAV45q6MPxm9PAJXQkKGzoUeUeeepHP
 4MGvMB0C95WhRblKKjjDatW6TMA5rcIM45gHf5wHaVxO9SVzu0DM6/hLsF2dG5J+6J
 VMMM6m6Bg6S7Q==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oBXTx-004zuE-TU;
 Wed, 13 Jul 2022 09:12:29 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Wed, 13 Jul 2022 09:12:17 +0100
Message-Id: <f612d5d73c6972693a71140bb247e861a1670919.1657699522.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657699522.git.mchehab@kernel.org>
References: <cover.1657699522.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 29/39] docs: gpu: i915.rst: display: add
 kernel-doc markups
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are several documented kAPI at the display side that
aren't currently part of the docs. Add them, as this allows
identifying issues with badly-formatted tags.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/39] at: https://lore.kernel.org/all/cover.1657699522.git.mchehab@kernel.org/

 Documentation/gpu/i915.rst | 50 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 4e59db1cfb00..2ad7941a79f2 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -100,6 +100,56 @@ Display FIFO Underrun Reporting
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
    :internal:
 
+Atomic Modeset Support
+----------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic.c
+
+Display Power Domain
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display_power.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display_power_map.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display_power_well.c
+
+Misc display functions
+----------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_backlight.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_crtc.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_connector.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display_debugfs.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_training.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpt.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fb.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fb_pin.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_gmbus.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lvds.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_opregion.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_snps_phy.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_tc.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/skl_scaler.c
+
+
 Plane Configuration
 -------------------
 
-- 
2.36.1

