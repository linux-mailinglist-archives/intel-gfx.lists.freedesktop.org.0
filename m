Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C866C7EE3CD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 16:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0632F10E613;
	Thu, 16 Nov 2023 15:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E64310E610
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 15:02:35 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-5079f3f3d7aso1301813e87.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 07:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700146953; x=1700751753; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JHlxFEauHIbdVGHCnlUCVeS3pP6uN+BrYbQfdi5F6ls=;
 b=lUsdcdXBnPJzK9U1dR6LpLWTpmtskk0j8gi62vkKX8T9TJkevRk/U/ELJoXbdlrZ17
 CMILYbuJefltY0zl6hE5ywhw7dyQVIzUeW6J+gYsV2CQrd2H6XQlz6+V1bqujN4+SHgI
 0MsMirHOiSx3ATtqFK8aLZYcpMRtx5rww1IwWWpRlu+1XHDWuqdZCYFvKiQQpy/Ad6Td
 a4p8Di/9/xVoE/N/f6LoFVA+Fdh3GL72YpOYpDjmTjBeiIayfM7JFiwBcZkGUAXteFkY
 9R3az+ka2ZViAc/BKiVHOMzTnp9J5WBHvfxnZ81bc/szx5WSKzpsueL2UtI2j4OMmkKV
 cjbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700146953; x=1700751753;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JHlxFEauHIbdVGHCnlUCVeS3pP6uN+BrYbQfdi5F6ls=;
 b=OALINDu0tJRk4bcf8CkGEpFrA+P8PIKek8uTzJBcbEvhM5f/mbbFlToPRoZ/M4ME3P
 sJlUxAgwQLRsJbQG1bR8n4asvzChWTGrBpk2e/DmXTZlg3zrKxzmkDFYh7XGl08tK6vn
 SAQytjNON7TMYmatfSwOFHHyLO2kartgh6cfx5EgDHNvbDMKstt5kbSdMgJ84PN3yJ36
 wWFs3LLeEDyppCqkY1/qxv4t0cjd6Y9z3R+g1BkTR3/G8A0jmlHQfmBQ6bds9rnrOBPF
 b/1WWuBhpFKleqDHPPSAOBlOZP0WhooxO0/B+s4eK7Qqh21kpsIZpYv4R28JO+byGctj
 +RKQ==
X-Gm-Message-State: AOJu0YzrqmP78LcpOZhArBzEOGtXfM6BjksELu7lPjsrcHzlvtdX+7Qz
 sMWDs7EU00WWpcC9VHL53PaDruOiuq6Brg==
X-Google-Smtp-Source: AGHT+IHGOYp/a4P0neGeCSqicv/iHpPpHSB966Ob/80rRIwLbxKMMVOFC1ZN6uaPk8OdY+zduauzFQ==
X-Received: by 2002:a19:2d4b:0:b0:507:9787:6776 with SMTP id
 t11-20020a192d4b000000b0050797876776mr12100571lft.5.1700146952983; 
 Thu, 16 Nov 2023 07:02:32 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:a48a:cde7:e984:4fbc])
 by smtp.gmail.com with ESMTPSA id
 c27-20020ac25f7b000000b00500b561285bsm18055lfc.292.2023.11.16.07.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Nov 2023 07:02:32 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 17:02:24 +0200
Message-Id: <20231116150225.204233-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
References: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: in skl_surf_address check
 for dpt-vma
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

touch dpt_vma->node only if dpt-vma is not NULL

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 39499a0ec6c0..f5c77a018e10 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1006,7 +1006,8 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 		 * The DPT object contains only one vma, so the VMA's offset
 		 * within the DPT is always 0.
 		 */
-		drm_WARN_ON(&i915->drm, plane_state->dpt_vma->node.start);
+		drm_WARN_ON(&i915->drm, plane_state->dpt_vma &&
+			    plane_state->dpt_vma->node.start);
 		drm_WARN_ON(&i915->drm, offset & 0x1fffff);
 		return offset >> 9;
 	} else {
-- 
2.25.1

