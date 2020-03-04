Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D704B1792CA
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 15:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698126E190;
	Wed,  4 Mar 2020 14:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA25B6EADF
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 07:50:28 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id u9so765516wml.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 23:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3vbIZ7+8goYKLI0EiEmgwxXhDckBLNfg/1II3xDfPAE=;
 b=o47wtXzebyUp04+AUylXdPzBlUxcQTpNDFxQbQiaOUkjAHSxHgy7pd1HYB2jXUP08z
 KEcQ54i6x6Q+AAeao1b05ra1bNK7Uu2wC2zRDy4nGmBaW1LiP0ddwpddgFDxQWwil423
 IjReHyzxiJzS3bZkUT+JHtny9UZOpgXjCJDscqvikSnqlfHfN+4zBkc6TPL8siueVff1
 +Mtk9bLxIpPny08x4Pz1ar38LCJwtBYQM9ugdgpy/LI+OreJJDz+OoYuKK6C4RIo3ZBO
 kphkX5/1mAuokZtOgh++pHXwxHLZ63CDzFXMpK2BqPECARSZsX5zsWjNkhL63fRgPXuS
 sr0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3vbIZ7+8goYKLI0EiEmgwxXhDckBLNfg/1II3xDfPAE=;
 b=rT3QRmUYlClNx8u1GS2Fg/CI+eTV8rF30hMeOUHBK0s0Ns0M56W6DybxOj47YuRIy8
 I61DtVnpufKxdggQJaUs5uJtQwWXHCbJSQdPbvRHsU0F3umG81+X9FE3eC8xRN3NyK0f
 M+MZezNZWLF3riql6op/Dsn4lV8WKnu0nM93e39ZZtDix1TGoorQFyAEJn+IyalQlfUV
 FztevUCQoWs4etg1Yxzdga2loOxEL0TAi6CbBvB2xTj4Zmxiz6VbcpE2hr7rwE49O/cd
 654pfnVBVG54tLQyE0ahk8e01IoBcE/OFU7UuRsHYip+LdX4bwbJc4SM11dypvNb4sW7
 D/Gw==
X-Gm-Message-State: ANhLgQ25ogE//Ma0p5YWO/l7bGbrSVzfSyb1+5o7PPsbrxktrWm49l6Z
 hmbju8ISqOacPwKLNBc3Pwg=
X-Google-Smtp-Source: ADFU+vsiK4HAxUYpwnGkJCcAUuqG11HcmxhaRBciBtXM8PJGYz/rCu4Zm++DTvGTtMxeVTpMKqha9w==
X-Received: by 2002:a05:600c:2102:: with SMTP id
 u2mr2119351wml.99.1583308227509; 
 Tue, 03 Mar 2020 23:50:27 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x5f706a25.dyn.telefonica.de.
 [95.112.106.37])
 by smtp.gmail.com with ESMTPSA id n8sm36451347wrm.46.2020.03.03.23.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 23:50:26 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: Ramalingam C <ramalingam.c@intel.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed,  4 Mar 2020 08:49:52 +0100
Message-Id: <20200304074952.3470-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 04 Mar 2020 14:55:41 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: HDCP: fix Ri prime and R0 checks
 during auth
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Oliver Barta <oliver.barta@aptiv.com>

Including HDCP_STATUS_ENC bit in the checks is pointless.
It is simply not set at this point.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: ee5e5e7a5e0f ("drm/i915: Add HDCP framework + base implementation")
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 229b4e329864..89d035da95e7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -705,7 +705,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Wait for R0 ready */
 	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
+		     HDCP_STATUS_R0_READY, 1)) {
 		DRM_ERROR("Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
@@ -738,7 +738,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 		/* Wait for Ri prime match */
 		if (!wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
+			      HDCP_STATUS_RI_MATCH, 1))
 			break;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
