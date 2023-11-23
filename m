Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEBD7FA2F3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 15:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E76F110E2D5;
	Mon, 27 Nov 2023 14:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch [185.70.43.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B53E910E323
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 17:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1700762231; x=1701021431;
 bh=RAB1yX4J4AFDu+AUL8SRbdAkIAE3kfmtLuXGzMK+zdg=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=UP1U6UaOB1DbRpVMueKdycFKMjr7Juj62B976ncAH4000oY5wSidHwE/xQ0u4oyjD
 ZWeKv6lU/c5TwL52Hz/LIMn+Tlefm59QgWZI8YWjmT2dK7/4bKgh/4P1yb45Z5HhwK
 tiqoDHySEd79Gb4xr8S1RURZzxXlgDqFR8/935KLUXqkjXw5/f7aKfqcsoXhqaM7/L
 JaNEKgzVL6tlyFXsRGEKwpq/X/uEv48o4pK7jmYlNzwrzyXO+cOk4Q2y6Mj2LJG6s8
 2h0KLoI6EndtLmJU6eDq+BW+YHaiAgg2LXTvjTRMj6gyzGpb5+vTHPda9DhVdiE87c
 oxgD9DI84fT6Q==
Date: Thu, 23 Nov 2023 17:56:53 +0000
To: intel-gfx@lists.freedesktop.org
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Message-ID: <20231123175638.27650-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 27 Nov 2023 14:35:29 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/irq: Improve error logging for
 unexpected DE Misc interrupts
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
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 Rahul Rameshbabu <sergeantsagara@protonmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dump the iir value in hex when the interrupt is unexpected.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9652#note_2178501
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu=
/drm/i915/display/intel_display_irq.c
index bff4a76310c0..1a5a9e0fc01e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -896,7 +896,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_p=
riv, u32 iir)
 =09}
=20
 =09if (!found)
-=09=09drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
+=09=09drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt: %#x\n", iir);
 }
=20
 static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_pr=
iv,
--=20
2.40.1


