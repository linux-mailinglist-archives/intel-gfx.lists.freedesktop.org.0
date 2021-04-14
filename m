Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B59435F9C9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4F26E8FE;
	Wed, 14 Apr 2021 17:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891006E4D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 17:29:31 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 nm3-20020a17090b19c3b029014e1bbf6c60so7007766pjb.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 10:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=plmO0AdMl820K1E1EewPUIFFIYm0UYQ8GWMNCMfiNMs=;
 b=LWWkG7tf2pAAxOYa62M6wF4DR6wuiuWheoc5zSNFuwA0w62Prt2SPX7h0tg3QF4d2V
 44nkwDeNFfIzGlhxsD0/euzgJwjZy8/voyo4Fri/H5W/ug6v0hmlUPQH+WHtMo0TjM9m
 zGTvuXagrcNpxaxXK+HoZoVJQf5Z62gbvDiKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=plmO0AdMl820K1E1EewPUIFFIYm0UYQ8GWMNCMfiNMs=;
 b=J7YCiN6MReSKMT6Tj6Y49gXJcBprYfs7OO2xVM5X5aOJu4y2Ij8z7b7tIIxDnmLZHm
 fKTEScYjgSM3P0rbyUSD1sqc81ZRxGhL1vkKFFDcutpTUQSn/bwGBV9AUuu2ZEq8EF82
 MDNScnBsWc+Gr0Dj1wVI4ugPafnPstQm7HPYzAOjopIgvy6UCs20IqvtLkk/JIk7y9Cf
 8I/RxCYcP5TLeTXAhAnGMdY4W3tQAi0aDM/YEEMd6lyYER42eeM5IwPqAksbhvWUW221
 PFYd5JJ1Em1gBgD3TknBrOvfR5PePZExUSX/wZ/Gw4p4o7BMszAHkOQ6jMURct6xNRoA
 rcYQ==
X-Gm-Message-State: AOAM5330EQraPxprOWYYBEs4053zkPc28rLw1HqlFVV8YIaDa3cALR93
 MCjOsTpOABuSiscYxlOIHK7+nQ==
X-Google-Smtp-Source: ABdhPJzqi2vvW8j/Szl8iVKwjP6K0nUzELS0dvdFZgmCztvcUb4kX2kyyJdsJNS5/ctFp046mYN23w==
X-Received: by 2002:a17:902:fe91:b029:eb:ad8:c5f with SMTP id
 x17-20020a170902fe91b02900eb0ad80c5fmr15248007plm.63.1618421371078; 
 Wed, 14 Apr 2021 10:29:31 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:bae3:4af0:9792:1539])
 by smtp.gmail.com with ESMTPSA id e31sm63460pjk.4.2021.04.14.10.29.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 10:29:30 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Wolfram Sang <wsa@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 15 Apr 2021 01:29:13 +0800
Message-Id: <20210414172916.2689361-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210414172916.2689361-1-hsinyi@chromium.org>
References: <20210414172916.2689361-1-hsinyi@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 3/6] i2c: mediatek: mt65xx: add optional
 vbus-supply
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
Cc: devicetree@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add vbus-supply which provides power to SCL/SDA. Pass this regulator
into core so it can be turned on/off for low power mode support.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/i2c/busses/i2c-mt65xx.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 2ffd2f354d0a..82f2b6716005 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -1215,6 +1215,13 @@ static int mtk_i2c_probe(struct platform_device *pdev)
 	i2c->adap.quirks = i2c->dev_comp->quirks;
 	i2c->adap.timeout = 2 * HZ;
 	i2c->adap.retries = 1;
+	i2c->adap.bus_regulator = devm_regulator_get_optional(&pdev->dev, "vbus");
+	if (IS_ERR(i2c->adap.bus_regulator)) {
+		if (PTR_ERR(i2c->adap.bus_regulator) == -ENODEV)
+			i2c->adap.bus_regulator = NULL;
+		else
+			return PTR_ERR(i2c->adap.bus_regulator);
+	}
 
 	ret = mtk_i2c_parse_dt(pdev->dev.of_node, i2c);
 	if (ret)
-- 
2.31.1.295.g9ea45b61b8-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
