Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0ECBEBFC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A6A10E636;
	Mon, 15 Dec 2025 15:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="hGgqYdIh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B5E10E62F;
 Mon, 15 Dec 2025 15:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765813680;
 bh=Qyjkrg23NvqAtrZ6SXaT7ACN9JWfiY1iU+ZEiaE5bX4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hGgqYdIh8At8iqouPEAnb06+tLu0MwnPPFE4wT6bQ/1Q7tJrMqIyoRVtY8XKm+RKA
 ptWqYYQbIymkaK2ZHzPKnTKe+U6Z8s0P85+5I0y1DHHLHiMzOh2xDG7qAM4wtqtmf4
 Kt5Cxgrd7Vlp4m2DdPf1RhsrFYEIXjilQ0bmZzAJ6z+zBipYLotO4mrlEXtkFUW77M
 QV0YYk8nM2R6n/nJGAkt91ceZn0wJ7dXeTjhc2nLUHQRn3nRsA3rkp6VD8q1WSnKXC
 +KqAITZbzP0urlXLpRP8hgaxycrx+B423h01RthN2jG/2F/rj/XburH7/xIHDz3qt3
 NNescsCZBXAKw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [i915-rt 16/16] Revert "drm/i915: Depend on !PREEMPT_RT."
Date: Mon, 15 Dec 2025 16:47:56 +0100
Message-ID: <20251215154740.1738648-34-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251215154740.1738648-18-dev@lankhorst.se>
References: <20251215154740.1738648-18-dev@lankhorst.se>
MIME-Version: 1.0
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

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Once the known issues are addressed, it should be safe to enable the
driver.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 5e939004b6463..40a9234e6e5dc 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -3,7 +3,6 @@ config DRM_I915
 	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
 	depends on DRM
 	depends on X86 && PCI
-	depends on !PREEMPT_RT
 	select INTEL_GTT if X86
 	select INTERVAL_TREE
 	# we need shmfs for the swappable backing store, and in particular
-- 
2.51.0

