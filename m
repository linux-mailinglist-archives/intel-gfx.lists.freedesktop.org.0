Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DF6BE894
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 00:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD7C6EE37;
	Wed, 25 Sep 2019 22:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com
 [IPv6:2607:f8b0:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D966D6EE37
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 22:58:45 +0000 (UTC)
Received: by mail-pl1-x642.google.com with SMTP id y10so346412plp.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:58:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a8l1h42oL5P23xHtbf5VYzA5ZkeKmzbH6tKjUBSBl+E=;
 b=V4L6jT1xRHeNcS7LChMq4OCdcJe4x4DYLB4qvpIiJLFoU287DXpMhnJ0A5pLJe+/0L
 OZ8BzNvRZpymC6TZkf2RQfwu8c6gKbX8VDMDAyeuXE0e4sQ5DOmUWl5ZF1I70usZ1dNm
 3+SUWhakZBOE2DhilDSFqeDhQPBLUpwKCOpUFhqATheDUvk1YfFWEELntVNfjAMhy3NA
 bzPtGFqeozTGofSZUeN1VGQt3Kg3NdBb5vO6zjL3iynkZ5sCnqdoMIdoS2ov8XSCE/7d
 W/nHW2dEneQO8FM3QAlmIDfZbyBs0lqtvvHlmY2c9v75H/EE5hjGU1kkxp2nOVvG9Tme
 DIvA==
X-Gm-Message-State: APjAAAXOJ9AZYCvqITB1ZZrqFIrwVel5ayog4fahV7hf9wSYHuTjRN7i
 bGOkrTXIMJaMVf+SJoyV/11CCw==
X-Google-Smtp-Source: APXvYqzDNs3vEprSzaoe6gRCguGllX+tDvFlstkCquRzzh0Piq6427vQeaol87qaa+E6o95eLxbqbg==
X-Received: by 2002:a17:902:b68e:: with SMTP id
 c14mr539964pls.306.1569452325220; 
 Wed, 25 Sep 2019 15:58:45 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:44 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 25 Sep 2019 15:58:33 -0700
Message-Id: <20190925225833.7310-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a8l1h42oL5P23xHtbf5VYzA5ZkeKmzbH6tKjUBSBl+E=;
 b=mZdbN7PU15gvrkxboOz4EvcivX/ux1fVAqsJCq6EgzispzgwuhEsAlz2ZHeBFsy6AF
 nFJVLzl+LytoIKO4/YdZ1xWZH80l5SKrIIa2WxgJD+p+QXWSPvNvoGV2JOLti0PYNVZd
 IpeblEXMS3gfQeMUmm75yJ/NL7jP6a/9DNtx4=
Subject: [Intel-gfx] [PATCH v8 4/4] drm/mtk: add panel orientation property
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpbml0cyB0aGUgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVydHkgZm9yIHRoZSBtZWRpYXRl
ayBkc2kgZHJpdmVyCmlmIHRoZSBwYW5lbCBvcmllbnRhdGlvbiAoY29ubmVjdG9yLmRpc3BsYXlf
aW5mby5wYW5lbF9vcmllbnRhdGlvbikgaXMKbm90IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9O
X1VOS05PV04uCgpTaWduZWQtb2ZmLWJ5OiBEZXJlayBCYXNlaG9yZSA8ZGJhc2Vob3JlQGNocm9t
aXVtLm9yZz4KQWNrZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KUmV2aWV3
ZWQtYnk6IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kc2kuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwppbmRleCAyMjRhZmI2NjY4ODEuLjI5
MzY5MzIzNDRlYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2ku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCkBAIC03OTIsMTAgKzc5
MiwxOCBAQCBzdGF0aWMgaW50IG10a19kc2lfY3JlYXRlX2Nvbm5lY3RvcihzdHJ1Y3QgZHJtX2Rl
dmljZSAqZHJtLCBzdHJ1Y3QgbXRrX2RzaSAqZHNpKQogCQkJRFJNX0VSUk9SKCJGYWlsZWQgdG8g
YXR0YWNoIHBhbmVsIHRvIGRybVxuIik7CiAJCQlnb3RvIGVycl9jb25uZWN0b3JfY2xlYW51cDsK
IAkJfQorCisJCXJldCA9IGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9w
ZXJ0eSgmZHNpLT5jb25uKTsKKwkJaWYgKHJldCkgeworCQkJRFJNX0VSUk9SKCJGYWlsZWQgdG8g
aW5pdCBwYW5lbCBvcmllbnRhdGlvblxuIik7CisJCQlnb3RvIGVycl9wYW5lbF9kZXRhY2g7CisJ
CX0KIAl9CiAKIAlyZXR1cm4gMDsKIAorZXJyX3BhbmVsX2RldGFjaDoKKwlkcm1fcGFuZWxfZGV0
YWNoKGRzaS0+cGFuZWwpOwogZXJyX2Nvbm5lY3Rvcl9jbGVhbnVwOgogCWRybV9jb25uZWN0b3Jf
Y2xlYW51cCgmZHNpLT5jb25uKTsKIAlyZXR1cm4gcmV0OwotLSAKMi4yMy4wLjM1MS5nYzQzMTcw
MzJlNi1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
