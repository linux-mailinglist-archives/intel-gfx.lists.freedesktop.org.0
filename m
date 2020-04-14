Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3611A8A7E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 21:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADC06E55E;
	Tue, 14 Apr 2020 19:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A3C6E55E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 19:03:02 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id j4so14499179qkc.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 12:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qx+9uJOtenCeFNWJQn8/GXTaoex2bmlkCDWgniXI+ZU=;
 b=Pym8bfR7Gg2SFIjtkrpH3i99R3yaBV/sVMg+GrDhN+1uEfZbZNShC7p/2YFGKedq7I
 cfVSa9ty6LwtX9FirYHQ1czwqckx5uEa91Il3Oc7kTWnYugekyTfLHuvS1gbShaLTkas
 CGQioOVtDTntWActVDzN9h765S622eX4COcqXqBuiqqTdFMc0oVMX7vAA/E2PV3RufTr
 0ncoaCkRpbRUco+DNRQKzd22xjYxf7up9dRfLSu31wUoHvUj/sORm63+CFoc/IqfGv+F
 i5cwTnK0J0CVePVcnB4prpkUe8knDAhXQ3z62UMCHLxpiYhMFU2BD5fBHq6Iju8PsBlI
 hFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qx+9uJOtenCeFNWJQn8/GXTaoex2bmlkCDWgniXI+ZU=;
 b=RAFVbw5guTGC/zF0EYHOGmFnPpy2EAs4TFjt2++GotE93uDR4NihBaRJX3vl/ijlxI
 3FatopuLKelr5szBi7WoUB6QO+JbnVgdSxIzKTeM+3bTInBrYCkhshnEGK6dGq9ljRwM
 JGdCxa9dYi4jVW+uJ44OHr7scaZfdBWP8Kc/J/VKKPlP30y8g7YzeHzxFSC4bApw27fm
 k4cTTupBUMtv0nhwXtOIe788skz7daDlnLmdq20c1KnJTWvUXOIHufeH8Me9gIuhu81S
 c3jORnNEO0Z62G6F1wkhNe0bOHAbmz8mW1KGC4BuLkFh83UfizPoTGnssVBhaJittGv8
 AywQ==
X-Gm-Message-State: AGi0PuaVYtlXmNVkPHsxuBr2aF3k7ccGlM+Tm0rybLXjyjQvGT5d6jMr
 qI8BNmZKWJXJ/W67Rroo4NvgSw==
X-Google-Smtp-Source: APiQypIo6NVa3ggkrGir9Av9BKxhR8YxgO3E79REfl10Nl4HP+r06ERk/mZOw3BERhNtE8IuJR7XJw==
X-Received: by 2002:a37:9e92:: with SMTP id h140mr22324127qke.24.1586890981611; 
 Tue, 14 Apr 2020 12:03:01 -0700 (PDT)
Received: from localhost (mobile-166-170-55-13.mycingular.net. [166.170.55.13])
 by smtp.gmail.com with ESMTPSA id z18sm12048224qtz.77.2020.04.14.12.03.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Apr 2020 12:03:01 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	ramalingam.c@intel.com
Date: Tue, 14 Apr 2020 15:02:55 -0400
Message-Id: <20200414190258.38873-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414184835.2878-1-sean@poorly.run>
References: <20200414184835.2878-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v2] drm: Fix HDCP failures when SRM fw is missing
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 stable@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

The SRM cleanup in 79643fddd6eb2 ("drm/hdcp: optimizing the srm
handling") inadvertently altered the behavior of HDCP auth when
the SRM firmware is missing. Before that patch, missing SRM was
interpreted as the device having no revoked keys. With that patch,
if the SRM fw file is missing we reject _all_ keys.

This patch fixes that regression by returning success if the file
cannot be found. It also checks the return value from request_srm such
that we won't end up trying to parse the ksv list if there is an error
fetching it.

Fixes: 79643fddd6eb ("drm/hdcp: optimizing the srm handling")
Cc: stable@vger.kernel.org
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Sean Paul <seanpaul@chromium.org>

Changes in v2:
-Noticed a couple other things to clean up
---

Sorry for the quick rev, noticed a couple other loose ends that should
be cleaned up.

 drivers/gpu/drm/drm_hdcp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
index 7f386adcf872..910108ccaae1 100644
--- a/drivers/gpu/drm/drm_hdcp.c
+++ b/drivers/gpu/drm/drm_hdcp.c
@@ -241,8 +241,12 @@ static int drm_hdcp_request_srm(struct drm_device *drm_dev,
 
 	ret = request_firmware_direct(&fw, (const char *)fw_name,
 				      drm_dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		*revoked_ksv_cnt = 0;
+		*revoked_ksv_list = NULL;
+		ret = 0;
 		goto exit;
+	}
 
 	if (fw->size && fw->data)
 		ret = drm_hdcp_srm_update(fw->data, fw->size, revoked_ksv_list,
@@ -287,6 +291,8 @@ int drm_hdcp_check_ksvs_revoked(struct drm_device *drm_dev, u8 *ksvs,
 
 	ret = drm_hdcp_request_srm(drm_dev, &revoked_ksv_list,
 				   &revoked_ksv_cnt);
+	if (ret)
+		return ret;
 
 	/* revoked_ksv_cnt will be zero when above function failed */
 	for (i = 0; i < revoked_ksv_cnt; i++)
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
