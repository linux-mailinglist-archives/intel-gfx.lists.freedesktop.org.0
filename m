Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D7F1704A9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3786EAD3;
	Wed, 26 Feb 2020 16:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F8F6E141
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 08:07:32 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id p17so1925854wma.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 00:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to
 :mime-version:content-transfer-encoding;
 bh=IzSm6B28RpmTh92RLe5K6IhynzM/MfGpTdfts4Zbi3E=;
 b=UdpXAPD/e+26DwUZYad66XSsvC1aZBlUU5iK9j5QFssNUF++8BHy5Na21ElNLCXq21
 jTiTHrLTgpA2Z6kSmdcmoYBJERVYmc6FMUTZ/C0BBcvZ7jRd2zAW6KVRzatRxrQ4jbNs
 BF2OaoCPRTTbqUGfsCoNytEn56RRXtHA+yZrEfFiAJqUDywaU88sYJBe/odOZvHCNJOy
 jVBxvIStTMJgt0gayf1gtJB+hLBr3WNLAum+Gcpvq8Omg1MsTk5F3+OznoaiY++l/2Io
 09fEVhHI5TGW1nKofVTCG32KMyCzRUFwlGXkeOrxhO3Yur/vQ+ctad1tzcBX3gsV4+jK
 deGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to:mime-version:content-transfer-encoding;
 bh=IzSm6B28RpmTh92RLe5K6IhynzM/MfGpTdfts4Zbi3E=;
 b=NF8uDeD8LLwQy9vXXibt1Uk7MiDm17EOH/COwJVMYRQZgUzGrWAZzAcRHnQSRVAU1Q
 ueThOXyfyajPiuOaCiC4lnrpFdyYElEjZDUyQEa47osmK0IQvHwkco0aCayl85MrPhRc
 XiOg7xL/i4PmxtO85gJpm8t8Pz6bXtiAf0U1tZ/n2DUYt8QDDAzzJdflpl9dVwJYjy6L
 Jrr+oDyRbnTS4lTWnNM+GRBm9XkSxF6rT3M1/appLVGBX1DFYFVCB1d8oxRrCRztC+Qm
 6/DNItOg8QcmNb4AZNaXF6677dUuWCGWrpXOHuUrZMXvuSg+RvbXE4v0LlGFPJs9x8Cv
 IShw==
X-Gm-Message-State: APjAAAXhyBZ/oRJT+B1ypRy/4COT1FkxcRGyDCeTK236tpZK55Pp6KK4
 Dppgjt4ymq2HTVX9IDHea1IQBfilchY=
X-Google-Smtp-Source: APXvYqxUsNPJO/mYLgrBDPF0dkgjzygO1uKz+zwfC/LqukWtCpVGw8FrIun5EjL26na5PJF3D/fCVQ==
X-Received: by 2002:a05:600c:23cd:: with SMTP id
 p13mr3861501wmb.28.1582704450765; 
 Wed, 26 Feb 2020 00:07:30 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x4d001122.dyn.telefonica.de.
 [77.0.17.34])
 by smtp.gmail.com with ESMTPSA id t3sm2147494wrx.38.2020.02.26.00.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:07:30 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed, 26 Feb 2020 09:06:44 +0100
Message-Id: <20200226080645.7421-2-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200226080645.7421-1-oliver.barta@aptiv.com>
References: <20200226080645.7421-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 26 Feb 2020 16:44:12 +0000
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: HDCP: fix Ri prime and R0 checks
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
Reply-To: Oliver Barta <oliver.barta@aptiv.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Including HDCP_STATUS_ENC bit in the checks is pointless.
It is simply not set at this point.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: ee5e5e7a5e0f ("drm/i915: Add HDCP framework + base implementation")
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0fdbd39f6641..9d7af15e128e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -689,7 +689,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Wait for R0 ready */
 	if (wait_for(I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
+		     HDCP_STATUS_R0_READY, 1)) {
 		DRM_ERROR("Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
@@ -721,7 +721,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		/* Wait for Ri prime match */
 		if (!wait_for(I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
 						    port)) &
-		    (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
+		    HDCP_STATUS_RI_MATCH, 1))
 			break;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
