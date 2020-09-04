Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7F25DC06
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CE06EC08;
	Fri,  4 Sep 2020 14:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0746EC18
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:07 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id z9so6334129wmk.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FuRI0Mh9qTrbpGFtaTRcx/6NFU2nISTNkH+iqCeYwJg=;
 b=YY6hV7NOdNhttFR9tP2o2MbKwVFq1C0vEjTJ9jNBhOEj+/4qMsZg9lKx9VNNs0aIuO
 yIsQc/dX82Jolbe6JurIsjkp6693P7z+31DB9ZPCQHSTv70nTa9JzpIo2i7Z4+XgYH1e
 D9VihatzOIdJyDnr7Xnv+Ykb7NgJx7PMXiVwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FuRI0Mh9qTrbpGFtaTRcx/6NFU2nISTNkH+iqCeYwJg=;
 b=APmhckZ+LgKM5YPmRuu4AE8imOffEWc3HrXfy70TcZKfgIMwJM1tSRc4aup9uEu7h9
 i6E8/pHCE+rSVAnklj9lKY6QbI/HLsYBePBo+DCgAAjuIcG9woqBup81RzFkiH6aQQTQ
 LfuT9chEbt5kVPklDUtyFlB3sD2WFYBndS1hOOPbIjdMTQRM7fv7clXCQ7D8eateiCLp
 ogVWfyxllvQXxkq+6ipPaY7bTfDWAScq05898EgQibMEft8vdR5n5GZJhfR3aEvHrB6+
 4cv+/MYlumQogihXVm+WT13GB8hPN0AuYLW5hXZ3Dge6bq/XTzjxeiqL0cMWM2kgJM4j
 8TXg==
X-Gm-Message-State: AOAM530og1l8Zr0jXk7E8XNkBL/W1X7Jcdhxa2u74pNM57avh1ADCwqh
 SKoXy2OnM7H971459/7HTDaH/Wbb63Vt4/7k
X-Google-Smtp-Source: ABdhPJwMuCX23dKqFCcr5sRS/ER7/pNqZ2SczB+GuX8l3ZN5oPgRNiXcrfm0OZGQRw+gfxZaDn42RA==
X-Received: by 2002:a1c:2002:: with SMTP id g2mr7806779wmg.122.1599230403541; 
 Fri, 04 Sep 2020 07:40:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:29 +0200
Message-Id: <20200904143941.110665-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/24] drm/arc: Delete arcpgu_priv->fb
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Leftover from the conversion to the generic fbdev emulation.

Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index 87821c91a00c..ed77dd5dd5cb 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -12,7 +12,6 @@ struct arcpgu_drm_private {
 	struct drm_device	drm;
 	void __iomem		*regs;
 	struct clk		*clk;
-	struct drm_framebuffer	*fb;
 	struct drm_crtc		crtc;
 	struct drm_plane	*plane;
 };
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
