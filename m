Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE9BCB05EA
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 16:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F144E10E1EE;
	Tue,  9 Dec 2025 15:13:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="haVkiR4S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3510410E1F0;
 Tue,  9 Dec 2025 15:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765293207;
 bh=PIZdGznWV10Zck8DGMiuGxByYMsH6n8Kk3aDFowkzbA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=haVkiR4SCJwsQjJj55aCLKTx2GX/W6tiKJkHYu5exnMX8DStlfe+BqHkUPRjen4M4
 HVi70r3D7GDE4XGaDP7iziPgZfRHwhm+8QiIOU4m5vD9f3s4/OJjZkzpVl0VKuor8G
 r9MMTlKbDsL4cc9yz5UZW5PAHDdg9fpYNkDC4GSG8Zb1GqDUuXeica1FstY8WN7eIh
 /9FSXdBI8iA5kUpaqQaItMt4EO6dV61jA8PZq/B745wwWMGqPmv0fi4kEaVli/+6VD
 lLGD3VAfcksto1uxbOlk1zWBrWCUODr4NuN7KFQvLEAA5wG8cpjMpddpiyE6IqO8oq
 Hp7QKQv8D08CQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler for
 PREEMPT-RT
Date: Tue,  9 Dec 2025 16:13:21 +0100
Message-ID: <20251209151319.494640-4-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251209151319.494640-3-dev@lankhorst.se>
References: <20251209151319.494640-3-dev@lankhorst.se>
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

No need for backporting, this is only useful for i915,
and it doesn't compile with I915 enabled.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
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

