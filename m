Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6920135F9C8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF186E4CD;
	Wed, 14 Apr 2021 17:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBF66E4D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 17:29:28 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id t23so10618562pjy.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 10:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7XXmpI6HkWp3If8HQFwzyKKNYzDH+WeOIEtuebDT2y0=;
 b=I+HzJNsWwPu+FB2uLUNEccOp0IOpNLd7gjigdfWKoW+DkwAVBGxH6GGl4TCfcMoszJ
 xRSSk+Z6mg9TI3va5vffbfIW6+DPVXdqsbzrAfZU4eQkN+wxC7jtCncWq/8r0rTElKO4
 o8YvKWheqTGhnCuUklNdzVElOTiQliz9cKSx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7XXmpI6HkWp3If8HQFwzyKKNYzDH+WeOIEtuebDT2y0=;
 b=jmuRZDH6DtpeUPb2TDpUpt9rGMI08B5EDX2eDwuOSkWxbXAf5aHI6GcGNVDTkkMwal
 S0Eb3o1IHhOC9zGZoK7y6yxKSO/VRfjtnQLR7Jlp5pQIMGdMk6Ijzb5gTqnrk6d0eqxj
 XnwZVZCrBtoZKTAtTtj+TrHs3tqvEN7MGoobzpbrmzh8OrkKT3eNst5t7jwj3mISWQvA
 oAEPMLiHzvU71SGeF/WSFo3pSRHq3K02w1SiXNtv7iYqQ3QXBXiz583YiEu8Cn5pK0yW
 zEFNze3gguH3al2SoxzbvBHNDt9JmgPGEjL6xy8RAOudhUctqqAppzbrAbb1g5BN/mqb
 7omQ==
X-Gm-Message-State: AOAM5323dP+ZkCbPD6nEM2ghVcxluKhnDlkgw1o2E1XPHs2JayRnPYkX
 ekmjWT1/sXP6mDTIBzlR0FKGAg==
X-Google-Smtp-Source: ABdhPJyKkMkvbglTteDlYjGwaiEf42P1VA/e4pB2K1gUgp1BeKp2w9jFz51WnfyldOcx2B7bgOvJYg==
X-Received: by 2002:a17:902:ea89:b029:ea:c781:daad with SMTP id
 x9-20020a170902ea89b02900eac781daadmr23289889plb.62.1618421368025; 
 Wed, 14 Apr 2021 10:29:28 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:bae3:4af0:9792:1539])
 by smtp.gmail.com with ESMTPSA id e31sm63460pjk.4.2021.04.14.10.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 10:29:27 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Wolfram Sang <wsa@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 15 Apr 2021 01:29:12 +0800
Message-Id: <20210414172916.2689361-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210414172916.2689361-1-hsinyi@chromium.org>
References: <20210414172916.2689361-1-hsinyi@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 2/6] dt-binding: i2c: mt65xx: add
 vbus-supply property
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

Add vbus-supply property for mt65xx. The regulator can be passed into
core and turned off during suspend/sleep to reduce power consumption.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
index 7f0194fdd0cc..2c45647e9f0b 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
@@ -32,6 +32,7 @@ Optional properties:
   - mediatek,have-pmic: platform can control i2c form special pmic side.
     Only mt6589 and mt8135 support this feature.
   - mediatek,use-push-pull: IO config use push-pull mode.
+  - vbus-supply: phandle to the regulator that provides power to SCL/SDA.
 
 Example:
 
-- 
2.31.1.295.g9ea45b61b8-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
