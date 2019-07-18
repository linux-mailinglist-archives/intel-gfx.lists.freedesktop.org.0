Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF76D1BA
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 18:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06F06E440;
	Thu, 18 Jul 2019 16:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B376E440;
 Thu, 18 Jul 2019 16:15:42 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id v24so27979843ljg.13;
 Thu, 18 Jul 2019 09:15:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=0RCLW68vHH+vr1sNZN/Hm9G326YwkBfSgwm6bfpQ0fY=;
 b=PQOvB08uoRsYeAnepkEwZoq3iA+tdGsji1jg48fKq5rXK9C23rHIHxdtD3nV24eHER
 9SMluiof/tLeWCAY4lHojmfuLAuqgHqEEQ1XnEQHbeMjNnVRZcvTdQUNbmHpRCJUosFa
 t8NC3WyJ1+FFUD58cIU9HTNv6V0h7lY9sYTId2NaRsg6yHKIRHAodEGJsjZBS2WfCDFI
 P8LUeyzmq8h+zdCV30ndOaHPfx9GW104H2JAJT3rYEPIYnQ8XeoHr2kmhcc4MmYk0oLC
 duH7QGfXnEFWipAnipvAblDYl1hlqmPmZoEuX9efNUyau0N+02VfIVE+UQraZsu8cLzS
 DnsA==
X-Gm-Message-State: APjAAAVvze44D0D5pSdOLhX/zjJUgu5n+nZnUC5VzM8Hib+7JsBCkX32
 dvqxI7GsVZj/aQ62Fe3V5+v5hg+VUsEpHw==
X-Google-Smtp-Source: APXvYqwjeajtI5jUKH3Q/AaZHjPFQyY8Vv8MP/3SMJ9zaJ0mIrocqxV1piFukjyD79ZkZiBc+JB+tg==
X-Received: by 2002:a2e:8744:: with SMTP id q4mr24340285ljj.77.1563466539498; 
 Thu, 18 Jul 2019 09:15:39 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:39 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 Jul 2019 18:15:06 +0200
Message-Id: <20190718161507.2047-11-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0RCLW68vHH+vr1sNZN/Hm9G326YwkBfSgwm6bfpQ0fY=;
 b=ZnlB+CKTzEj1U0fR68ra6rOHnDCqKGUa57UveKCIjgrSEOZAuPINrHMWsT2/ZZFybt
 IyBjBCFm6R3c2ZGGk1CvddB3tu41MEKGeE0snLjCqLSorK9hzqtBoH2MYBLivdH1RZ/g
 vTwdu7tNs9Zda5r86eeZADc4HkP2/ZIw9Kmc16Ok0in8KWvYpWjpy2WJwQuEfJctkatj
 iXACFaRRnYnl7UAPq+Ho2DSjN9KOimFed8B88Xmz3fXzzt9zVWnMXEa9/kBqQ4td+gki
 x4r7kWZ72upSPvVJ3uL368I2NwX9M7HepNAzVOxrl2k3cVCDYJ/GYX80rn6ES6tg2Vvk
 PKsg==
Subject: [Intel-gfx] [PATCH v1 10/11] drm/mediatek: direct include of drm.h
 in mtk_drm_gem.c
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IHJlbHkgb24gaW5jbHVkaW5nIGRybS5oIGZyb20gZHJtX2ZpbGUuaCwKYXMgdGhlIGlu
Y2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCgpTaWduZWQtb2ZmLWJ5OiBTYW0g
UmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29t
PgpDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KQ2M6IE1hdHRoaWFz
IEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+CkNjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcK
LS0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9n
ZW0uYwppbmRleCA5NDM0Zjg4YzYzNDEuLmNhNjcyZjFkMTQwZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kcm1fZ2VtLmMKQEAgLTUsNiArNSw3IEBACiAKICNpbmNsdWRlIDxsaW51eC9k
bWEtYnVmLmg+CiAKKyNpbmNsdWRlIDxkcm0vZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9kZXZp
Y2UuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJpbWUu
aD4KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
