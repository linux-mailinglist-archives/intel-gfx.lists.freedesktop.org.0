Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D11661A94CC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3CC6E8D0;
	Wed, 15 Apr 2020 07:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45BB6E8AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:25 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id a25so17885770wrd.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9YLUlKZaUtM4Forfwro10xQxgCvUy2+rdwZQ9G36jRA=;
 b=au/6GXsR962lWxHERPC6f5V2H/uwDoLBNfhGEyskC/NR14Bf8mMYthZcxaPVnh29zq
 2Q6e0Aqo1OJZnWshnWHySNKmJ3OJ1FMwsBVBEvpvSMhTQZ3U/KZioJAuPCBeelRwRrwq
 LM4+kt3V6TxnsbWbii4XJDAvDKvRyPsGBCv04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9YLUlKZaUtM4Forfwro10xQxgCvUy2+rdwZQ9G36jRA=;
 b=RX3ziH54DJE60LzZL1r8h/utDWAfD8mkv4zQz6ocuZENtpgNfNxB5x2u0ZJRkhetiU
 /JQfC+06cnVZzNB+cZcD8fTWmighAKzzjEa79ifKiGbtUC7c3557QLyDLQe07fcpnXdQ
 LmnDhgoXSAomUHS7aPgi2I/XBiWaHOwf6PVqrpnHNLWEPdfwRnuMnnkmQ4Y0pNdK60EZ
 MGMwnuwBiu03EroJxyoOwyIeloqyl5OQ8HOSzlhRQVseA9QRVOfewIy1RSn2jQMaBfBE
 RoazOkb4Qqbt1y4vP77GCpkd/Rgp53crMzHSVyJOjwhv00nY5RQ1LxhJygA3OYH+90ne
 p43A==
X-Gm-Message-State: AGi0PuYgoh2uSmoIHCZi/kEfvrYPmi62M7PgA94/YuI5fHSIPUTKEK4f
 90DlGO9P4XS96fb22mU1sbVffzxHa04=
X-Google-Smtp-Source: APiQypJp6M2iPDeyh4Ts6IiJYaZH3ULti8aKsQCruTMAu+HpHofy6Uw5K2ShviOt48qbXzhV4w8+Bg==
X-Received: by 2002:adf:ed86:: with SMTP id c6mr26496505wro.286.1586936483588; 
 Wed, 15 Apr 2020 00:41:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:23 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:16 +0200
Message-Id: <20200415074034.175360-42-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/59] drm/arcpgu: Delete arcpgu_priv->fb
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
 Alexey Brodkin <abrodkin@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Leftover from the conversion to the generic fbdev emulation.

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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
