Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9428CCCC9A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 17:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8984710EA38;
	Thu, 18 Dec 2025 16:33:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="L6AILi70";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1689F10E968;
 Thu, 18 Dec 2025 16:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1766075613;
 bh=Bne1RUVyYhtMfwYqK3Ip48zVZdJr+u55XTL2YPV9fWw=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=L6AILi70GOu0bBpaCMi1t04iYu1fqO6T2+WA+dyEarffMK5ME6pvNmjD4A2482CHU
 btMqDuvonrTkngp55+RUYNykWiu4bu9s8yMpR4luqZL7f56U0SVAlf1G/vxwd0Pzhx
 AxJ8LXcmpXXsRZ547M5pA/bdkzY9QhPRiX6cHfW+yXr1aeiGnVqvyKjeeRDAh4Dzv3
 83RnpeB0xQzQqu5YCW6R748Xw3KvvYEb2zeFesShSBIJ8+hdICxHk3Umjpn8wJYW0d
 XzLNZbqx9VatAaBQwlx+JLNdteazBdONE2rP4RT190O5djz3lnB/29zdhbHWiJVnww
 dH4UbAhotX0Ew==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [i915-rt v4 01/20] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
Date: Thu, 18 Dec 2025 17:33:49 +0100
Message-ID: <20251218163408.97508-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251218163408.97508-1-dev@lankhorst.se>
References: <20251218163408.97508-1-dev@lankhorst.se>
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

The LPE audio interrupt comes from the i915 interrupt handler. It
should be in irq disabled context.

With PREEMPT_RT enabled, the IRQ handler is threaded.
Because intel_lpe_audio_irq_handler() may be called in threaded IRQ context,
generic_handle_irq_safe API disables the interrupts before calling LPE's
interrupt top half handler.

This fixes braswell audio issues with RT enabled.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 5b41abe1c64d5..172c0062237eb 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
 	if (!HAS_LPE_AUDIO(display))
 		return;
 
-	ret = generic_handle_irq(display->audio.lpe.irq);
+	ret = generic_handle_irq_safe(display->audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(display->drm,
 				    "error handling LPE audio irq: %d\n", ret);
-- 
2.51.0

