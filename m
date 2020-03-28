Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8499D197E2F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFB48959D;
	Mon, 30 Mar 2020 14:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26DB96EAD0
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 10:41:44 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id b12so14284586wmj.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 03:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L56RXpvi3wqLXmQnpnBpkSpCB5vNNpwy0dv1ZPvyNjw=;
 b=ENnLkIplXI7xm0YZb+iJkkFAlyzoFiA9T93FgAzX6+uGUo7lrpo0e2plZ5Hx5Oahc5
 0liTrWu6ZAnt4HqhVsUFaTORvveegqPm18wl5A5xoBceGWyK612Mp0e1CPdxyYcrzWie
 wqfoXnHavQzBhY8scogimllnjihdLNZ1j6Atr3mbI1zx0R+Wf/Xf4aEQZRSSUAEZXi9M
 Dbyzs+MtNe+dzLZn23BvOeqfwcySAJ71l/Tc6NaD8m3DaUPOdwXWevahXgQ2VMmosDZN
 FHkkFh9iNzi7lbPjThI2uKTj3Elwi3hPaLqyWVllkXMixZEWVXItML20Xb/asR89f11r
 vF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L56RXpvi3wqLXmQnpnBpkSpCB5vNNpwy0dv1ZPvyNjw=;
 b=l7mKRf39wqB7OSHXb7JSuiiGDkgYMbGlPNi8cWAI3fWoQmII4XlHLbeQqt9f8SgwtJ
 8+pq4pM8z8JfneFWOSLkiXZETd7S/nNUk26KDJjVWA/7M8MiuJVKRVED/uxJZLmzGTg0
 uJrE/G6xAYyMjLKfe/viwBpwVCR2c+dvsuTTUzoqPvGJoPSVfrNQFD8A00yiWhHNzumw
 lehagWjnQ8syljFRyrJsjLIXrFa8KfoN6gPSlSibV0JEvrsGo+Dy/NtcpicFRMDytyvY
 XB+2SK/8NKt4g8Iz6EcHZTX/1+AHpO6Ung2HlQjL5wMDRsMzC5thIMETCvfxV5he1Cuf
 zHtA==
X-Gm-Message-State: ANhLgQ1KveDLlZuo0YzlCVFshYTYJ6gMII0jcXTnFaZlO65nD8djrF/m
 CZSXyuRFK172rHgu+OHY7Z8=
X-Google-Smtp-Source: ADFU+vtRDmCeMKj3R8/Jn7ooxpa6DNsnup+306p3L48gQ45tOqd3G8KubR53mjBj2kerz+EcfHfd3g==
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr3288089wmg.151.1585392102635; 
 Sat, 28 Mar 2020 03:41:42 -0700 (PDT)
Received: from xyz-CELSIUS-H720.fritz.box (x4d0a625a.dyn.telefonica.de.
 [77.10.98.90])
 by smtp.gmail.com with ESMTPSA id j5sm11809962wrr.47.2020.03.28.03.41.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 03:41:42 -0700 (PDT)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: Ramalingam C <ramalingam.c@intel.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Sat, 28 Mar 2020 11:41:00 +0100
Message-Id: <20200328104100.12162-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 30 Mar 2020 14:16:11 +0000
Subject: [Intel-gfx] [PATCH v2] drm/i915: HDCP: fix Ri prime check done
 during link check
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
 Sean Paul <seanpaul@chromium.org>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Oliver Barta <oliver.barta@aptiv.com>

The check was always succeeding even in case of a mismatch due to the
HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
---
 [v2] rebased on top of latest changes

 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0076abc63851..51a69f330588 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1561,7 +1561,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
+		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		drm_err(&i915->drm,
 			"Ri' mismatch detected, link check failed (%x)\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
