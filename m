Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C632A17A6CC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3EC6E32D;
	Thu,  5 Mar 2020 13:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB75A6E075
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 07:44:08 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id g134so5023282wme.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2020 23:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7BWJjqgFrWmDb6Qj/EjoiAeH7kkf/sLUiPpqqMVSVWo=;
 b=Ia/rGrlg+EZ0nT35kqz9357T/RnU7GbQlgZs6pzlM/HyecFYnDDdvRvAVC+H72xtPU
 ouRECFhAOiCKSMgTwzbNUAv9UlMCQBe8AsT7O629TTng/BlTDSSg4SU4JrcI5NjL+ccx
 sRV8DHKTuzRt1w7kKaMnpfqKP2UVyTL2n6dvxO9X9IBkoo4GYGeNkOhSZtpx6YuEfPTu
 i9uYkPaUhpccAX/PN0SAFzPX39JGcC7Tc9aN4pUw1XLXMBe4AuYrK6FPZreTSLtdAvrA
 Qa7Ybgt2R0X7EpeaRIR8g8tL13QZyz6qHBkmHGE9KfjvtJyBdkt816qw8BTuRMb+Ruy3
 e1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7BWJjqgFrWmDb6Qj/EjoiAeH7kkf/sLUiPpqqMVSVWo=;
 b=rONBW7bNu9Xu4zqTXNYC0Wu2bDzWl84CVhyNusHTTz5j3MbyPm2BTrbWAFN5pYPVre
 J1yqS7EQqLVib6yMm4ZgfXtaPnvQ56Kn5OrR0R9LZy0oShNFWqiOwcpgBwt+C0oftipn
 Ai8D6wndRpvLUJHbu9oUJbtRTKYXYINZTC54YJHH5fZMupIczVxHjQYEJtw/thn9YxKE
 cC9Wq3sgiZhi7L6ICQ2CRvyN2cjvnCwFUb3mJWBEr6Tk9BALPq9ItunpTi0uk+IveBJk
 VVPjS6dF6ak6OlczXltNGL3dR6KSb8dfdztZZAQJASKt4SF4PjFG4GIj5tpy/8Krv30z
 ij5A==
X-Gm-Message-State: ANhLgQ1Tt1/mQT3H6HJTjm8g1NV1pmy/WEc2524H3bJUKwbrjMLkyoiN
 priykIOIJRJx4pV78P1VVq0miNT6QMM=
X-Google-Smtp-Source: ADFU+vu3QlSR8Y0A70VwEjPIe4zStV5XYfacCpVn84m18I0G7t6pVyGdoZp3JDpVHbMLMEv7VGF3lA==
X-Received: by 2002:a1c:4b0f:: with SMTP id y15mr7963614wma.87.1583394247295; 
 Wed, 04 Mar 2020 23:44:07 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x5f70385c.dyn.telefonica.de.
 [95.112.56.92])
 by smtp.gmail.com with ESMTPSA id y10sm7750129wma.26.2020.03.04.23.44.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 23:44:06 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: Ramalingam C <ramalingam.c@intel.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Thu,  5 Mar 2020 08:43:56 +0100
Message-Id: <20200305074356.3777-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Mar 2020 13:55:46 +0000
Subject: [Intel-gfx] [PATCH v2] drm/i915: HDCP: fix Ri prime and R0 checks
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
 [v2] rebased on top of latest changes

 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ee0f27ea2810..78dddbaa61d3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -710,7 +710,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Wait for R0 ready */
 	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
+		     HDCP_STATUS_R0_READY, 1)) {
 		drm_err(&dev_priv->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
@@ -743,7 +743,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
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
