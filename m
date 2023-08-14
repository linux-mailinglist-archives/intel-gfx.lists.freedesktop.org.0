Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F76477BE2A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 18:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1D010E08A;
	Mon, 14 Aug 2023 16:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1FC10E08A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 16:34:57 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id
 2adb3069b0e04-4ff09632194so2726121e87.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 09:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692030895; x=1692635695;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4qBc6LycJ0bALfRSFvZW8iKHzsxkLAXIalm+qyv0ED0=;
 b=JLGH4SCmJL1XEkOo65qT1dqYzUXrAWOYZiTwKZM2wPJ40IkOna4xzG7eGqywskqAg3
 B73ceCyCddTflZWPFzQGy5UIsV6Py/Qh9Is7WEK833yHmNC/L8kqOfA2HcGoQNHIIK6y
 wsC7BJGwb3r+/htIu2tbXI3cd9vh7EZlaTkJ33RG3TvlQCXEpQ/2Fu+OUARqtN+kp//h
 /0ptw50JUOCcxG+msXjMAUwCy34MFbLstCcBS0cv3/Ot8IFtwbivXIoPR2aIBiojrCp9
 1CtWQ5ExX3ddeoHelr5EWvA62ezfYtiFL6dHBkewbyIPpB2vhBAEl5SfxVCud54MV/oj
 fItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692030895; x=1692635695;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4qBc6LycJ0bALfRSFvZW8iKHzsxkLAXIalm+qyv0ED0=;
 b=WfqKur3ycJh/HG+wKhgYTbC+1MXPEMVWuoAFipowhGapHzjPiwYixRQJJKYLNcxfIT
 hwTolyYXAAG8/7BoijaKLmAq6MO2QbT2pOkUTGmB3E6XOoDP/Wp9345pF9kkbykERKSi
 btpsE/2sQwN4Z8KDP1P7xCP5oYfGg3Kpqqx2DLGUkZ8TgmI0fBrfoYpEHkQUXu9//N+W
 zHjNv24cS1UpmSnen/1pJimjZakTFu2Hy/JVg5xKClC91pEU2XJbt/fYIkF5QC2Ps04Q
 SAFqWkc/HjhFrN45HBMHntopbsuEaOr3d1WuCGHgIFdZIWLEXr0Xa7hYpn/HrGZzcRbE
 /PXw==
X-Gm-Message-State: AOJu0YxV6ZWalkwqJ+eJKukFMxnzVjejEfHkvDAJpJdpFdGZC0Q+CaVf
 cy6epZQGQegkFMWFJS7JzWXbfBKDfCQjqw==
X-Google-Smtp-Source: AGHT+IGW4nD4HndLI1tEdmOQ6eJqozQqiPwuQQzoKAaD7jo2S89IEnYkabGd5ZH6hfXPYjxOxN+tPg==
X-Received: by 2002:a05:6512:1589:b0:4fa:e7e5:66e0 with SMTP id
 bp9-20020a056512158900b004fae7e566e0mr8123234lfb.48.1692030895135; 
 Mon, 14 Aug 2023 09:34:55 -0700 (PDT)
Received: from localhost.localdomain (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 z16-20020a19f710000000b004fe1fc5d0e3sm2029580lfe.206.2023.08.14.09.34.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Aug 2023 09:34:54 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 19:34:45 +0300
Message-ID: <20230814163452.2925-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: add lock while printing
 frontbuffer tracking bits to debugfs
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

Add missing spin_lock/unlock

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 63c1fb9e479f..f05b52381a83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -43,12 +43,16 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 
+	spin_lock(&dev_priv->display.fb_tracking.lock);
+
 	seq_printf(m, "FB tracking busy bits: 0x%08x\n",
 		   dev_priv->display.fb_tracking.busy_bits);
 
 	seq_printf(m, "FB tracking flip bits: 0x%08x\n",
 		   dev_priv->display.fb_tracking.flip_bits);
 
+	spin_unlock(&dev_priv->display.fb_tracking.lock);
+
 	return 0;
 }
 
-- 
2.41.0

