Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979BA14B02A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63B16ECB6;
	Tue, 28 Jan 2020 07:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05996ECB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:15:03 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id g1so1269334wmh.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BrrNx/SGhS5iDi2Wqhwgu/1zbPN2YlnCdQQVBpLRUws=;
 b=O6PkGDeyIGG/7RO2Pmi1LPCw/3shK7SjvqrzbFL5Qn1lAqXAPcPJyayk6yzCGINvaa
 cPDRBwWwQD573zQiOUAlST8HBeTs94Unmba4JW63PL4tWTQk3GrHtcbcTpRe9lSCRGa6
 tsQDuuTlG6tquKJlLhUdQX6korL4vg77DM6EkBa/1zEHF9lM1qRzu3qrjYrM46P3hVnm
 jpnegFATcmZTgRhIs0ybsCx2olScCkdBE4VZDvH/1D3KNj5IqpwgW7iHnTtmW2COIcpu
 JRndLlISuACddtV73seFP347fALa8MaAKMWTWuNyUM+DGJ3bp8HLJ4kgEJNDrnWi+jQ5
 egCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BrrNx/SGhS5iDi2Wqhwgu/1zbPN2YlnCdQQVBpLRUws=;
 b=AOrBrttrinnsKNYOf6Vi4l9maS4NHEVn5hL62EIQpKDI2NT9TobXo7d1NcefN+oiKd
 BGmwvU08FeU3nFXCcQ+0TiNNaVwbPtUWWBkb+ALbfnIVdCTuczkkvitUOe8/gNp7dTQ7
 Q7bRFdqwHTrAP9YjKVLc4w07tifvfGuXxJemefoaFVYmvOXHFhx42oeKoVfM6NYmJ88M
 Yzicjif/sgprMTyODloRgev/+bN2CbZsvGVMN0YgTpGPu8tqFY5w/mwDDUB8M9cQS2vr
 sGmbnsYG4c+y0W9WSt/BzxO9aV7l11i+cCQ5KmnCKQHwqmk8XQU0XJq8+z2rfRmW8hNX
 JIag==
X-Gm-Message-State: APjAAAUjtcQXSTh1W2M8DFGtO2jmHlh41+FiR5LZRLqL2jKEvQppQwk0
 t1fqbxp+mYm2XP8ttiDXP7w=
X-Google-Smtp-Source: APXvYqwvrOQ9EajwhWbC9MOQvPC5MqMGiYCCTLZo/14lYG+abxa+rRMBOfcDifkq2CZNINJybP3qPA==
X-Received: by 2002:a05:600c:21ce:: with SMTP id
 x14mr3094657wmj.120.1580195702371; 
 Mon, 27 Jan 2020 23:15:02 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:15:01 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:36 +0300
Message-Id: <20200128071437.9284-8-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/ring: convert to new logging
 macros in gt/intel_ring_submission.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Manually convert the remaining instance of the printk based drm logging
macros to the struct drm_device based logging macros in
i915/gt/intel_ring_submission.c

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 964a8d8d28b5..0f2e8a010794 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1666,7 +1666,8 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 					 GEN6_BSD_SLEEP_INDICATOR,
 					 0,
 					 1000, 0, NULL))
-		DRM_ERROR("timed out waiting for the BSD ring to wake up\n");
+		drm_err(&uncore->i915->drm,
+			"timed out waiting for the BSD ring to wake up\n");
 
 	/* Now that the ring is fully powered up, update the tail */
 	i9xx_submit_request(request);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
