Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D76101A8A13
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 20:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D326E52D;
	Tue, 14 Apr 2020 18:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA886E52D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 18:48:38 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id t3so10669954qkg.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 11:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6yzQmC4w0ygPYVxz9suanugjLM83UH8h3lByA0VCiMA=;
 b=cAEi95OSVoYMxPUPRRQ8P7aBzCq8iAWXDDnkVEIltb6Csmr/PTAqZ8uUgHj9KUrqdV
 QJf2dsphTPAsP6WLs7/Rlxy9qC7eCJ5RPO+/dwa9TTw8JifcBXEZjNy0+J95RAPH5BNM
 2wDMugg/9uMxbui+zrvAKweLF+If5y7NjbwtMOXKMugA8qc9c1RAPh86Taz0u9RvZ4p4
 LavIgMLzqRn7WrqOohi0GNcBWVJYMTjy7CN1qdP05mLO9DK5OI147ZRffqFQ5rJrtoNM
 GOj1s6DlGKmKASYh0om8z0BP/PDGdWF9y6gZYVDCN7KhkNJEvlW7FrdLcUkl5yIVGT9J
 NAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6yzQmC4w0ygPYVxz9suanugjLM83UH8h3lByA0VCiMA=;
 b=O1O8ejNp/CWayrSHE7lse0/xMFV50Ab7eV3Zn3vYycuHjkgBnt7bYS1mPG4MU/jnz7
 xB9H6kwvYdISnSeeZ77/8lthN/qNTZEeLl7OZLpDyYFfpVgvT2ScJJExZRL2qS0+9G/C
 7jajd5OIQwFeoTR8dAzxi+F5ePkxeHGA9GKiSNYBDBjbY8GoXOt23bbH9XaZfTD+MKys
 d9ASbjcSE3kovQjXtUFARK8Or7UGoQpfBPuHdhVhdA0aa1ckhwqCnSUJ5ROodBLwRFH5
 GmFbDmU1s05reYevXDv0mMbv69KRBlDuzs7tOq4yoJYOE1fEmpWxuLi5vx/eNnmWlW7K
 MflA==
X-Gm-Message-State: AGi0PuaAkDup8GzxEsrFY0jfPOhHPpMr8p/B7IQCzV2ae+wK8CI8hGYH
 wlxkWHntPBsSpWUT+L5Vwl7M+PfC90qhxw==
X-Google-Smtp-Source: APiQypKMY6bMG74EyHD+GoZ12sBeFRvtchEAfByEmex7yDdu4T+2CkMF22ApyxuG74lJ5sRXGajdyA==
X-Received: by 2002:ae9:ed56:: with SMTP id c83mr18610142qkg.244.1586890117683; 
 Tue, 14 Apr 2020 11:48:37 -0700 (PDT)
Received: from localhost (mobile-166-170-55-13.mycingular.net. [166.170.55.13])
 by smtp.gmail.com with ESMTPSA id f1sm10522199qkl.91.2020.04.14.11.48.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Apr 2020 11:48:36 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	ramalingam.c@intel.com
Date: Tue, 14 Apr 2020 14:48:26 -0400
Message-Id: <20200414184835.2878-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm: Fix HDCP failures when SRM fw is missing
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
cannot be found.

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
---
 drivers/gpu/drm/drm_hdcp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
index 7f386adcf872..3c36005d367b 100644
--- a/drivers/gpu/drm/drm_hdcp.c
+++ b/drivers/gpu/drm/drm_hdcp.c
@@ -241,8 +241,10 @@ static int drm_hdcp_request_srm(struct drm_device *drm_dev,
 
 	ret = request_firmware_direct(&fw, (const char *)fw_name,
 				      drm_dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		ret = 0;
 		goto exit;
+	}
 
 	if (fw->size && fw->data)
 		ret = drm_hdcp_srm_update(fw->data, fw->size, revoked_ksv_list,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
