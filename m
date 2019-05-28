Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BF62C216
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9BA89DE6;
	Tue, 28 May 2019 09:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECED989D56
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:18 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id s19so2498178edq.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2XhY37QKiJG0yVeCBJVjNjQRjgX7g+zT5YuLsuJlT/0=;
 b=dc3r7WC5/4LAkT5QD0nLWPD+LpBty/0ilLoJ4D/LxrqSmTtiw5sd/37sxBF76mT5KA
 JKHqOzeUrUJ520QeaxqxpthMrbS5zw4PMvnv9yyOMDdftjWelCN/q99vbFF++gedIVcF
 5/zGdc85JWk+hO58vur2aIchq8l8VE6O/5+YNU+LLzgLTR05quX2po80axPBMD5wnZbZ
 /iJgR/iuGtZ828u2lKGNMyUSWMmR+inYGO+riQOQT+6vKBKdlep3dKrkordEKssawL4F
 72/+w8DsQ1fXJUY79LH6Vm7cgBDulE4Nryr81WHVdeJQ+DW1FkKVnCSf/mfij0P367+5
 gIVg==
X-Gm-Message-State: APjAAAWAeGTMwIheIkMj6+rQc0n7GXa7V6uEJ+sgs45jQemq2esn4vhv
 /dZkw7sMtfmKfgSHlnYDpVKosA==
X-Google-Smtp-Source: APXvYqysJqma/Cwd8MeT0Rq/SJ2o0DZ5nqO5ai6mqVm0Hq+p9CdMzlw4b+pi8PAdwAc8N8a+yr7I9w==
X-Received: by 2002:a50:991d:: with SMTP id k29mr126603128edb.29.1559034197127; 
 Tue, 28 May 2019 02:03:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:36 +0200
Message-Id: <20190528090304.9388-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2XhY37QKiJG0yVeCBJVjNjQRjgX7g+zT5YuLsuJlT/0=;
 b=HUmM6fWW1Qkokcj/zd5Ot2If+OrST6LgqHbbva3UHFF9eJkoMa8t9wN30uRB3Hil7i
 Hc91q9/ULJ947zUpmJgPZwcZmOAeI2WYWWQPocRGWKVj2wKtRnHlrfxXz9WfvOVZabyR
 oBmw1pFE2OHFz+mZds0Vm6nwXAK2VxZ9stb/w=
Subject: [Intel-gfx] [PATCH 05/33] fbdev/sa1100fb: Remove dead code
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW90aXZhdGVkIGJlY2F1c2UgaXQgY29udGFpbnMgYSBzdHJ1Y3QgZGlzcGxheSwgd2hpY2ggaXMg
YSBmYmNvbgppbnRlcm5hbCBkYXRhIHN0cnVjdHVyZSB0aGF0IEkgd2FudCB0byByZW5hbWUuIEl0
IHNlZW1zIHRvIGhhdmUgYmVlbgpmb3JtZXJseSB1c2VkIGluIGRyaXZlcnMsIGJ1dCB0aGF0J3Mg
dmVyeSBsb25nIHRpbWUgYWdvLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L3NhMTEwMGZiLmMgfCAyNSAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy92aWRlby9mYmRldi9zYTExMDBmYi5jIGIvZHJpdmVycy92aWRlby9mYmRldi9z
YTExMDBmYi5jCmluZGV4IDE1YWU1MDA2MzI5Ni4uZjdmOGRlZTA0NGIxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3ZpZGVvL2ZiZGV2L3NhMTEwMGZiLmMKKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9z
YTExMDBmYi5jCkBAIC05NzQsMzUgKzk3NCwxMCBAQCBzdGF0aWMgdm9pZCBzYTExMDBmYl90YXNr
KHN0cnVjdCB3b3JrX3N0cnVjdCAqdykKICAqLwogc3RhdGljIHVuc2lnbmVkIGludCBzYTExMDBm
Yl9taW5fZG1hX3BlcmlvZChzdHJ1Y3Qgc2ExMTAwZmJfaW5mbyAqZmJpKQogewotI2lmIDAKLQl1
bnNpZ25lZCBpbnQgbWluX3BlcmlvZCA9ICh1bnNpZ25lZCBpbnQpLTE7Ci0JaW50IGk7Ci0KLQlm
b3IgKGkgPSAwOyBpIDwgTUFYX05SX0NPTlNPTEVTOyBpKyspIHsKLQkJc3RydWN0IGRpc3BsYXkg
KmRpc3AgPSAmZmJfZGlzcGxheVtpXTsKLQkJdW5zaWduZWQgaW50IHBlcmlvZDsKLQotCQkvKgot
CQkgKiBEbyB3ZSBvd24gdGhpcyBkaXNwbGF5PwotCQkgKi8KLQkJaWYgKGRpc3AtPmZiX2luZm8g
IT0gJmZiaS0+ZmIpCi0JCQljb250aW51ZTsKLQotCQkvKgotCQkgKiBPaywgY2FsY3VsYXRlIGl0
cyBETUEgcGVyaW9kCi0JCSAqLwotCQlwZXJpb2QgPSBzYTExMDBmYl9kaXNwbGF5X2RtYV9wZXJp
b2QoJmRpc3AtPnZhcik7Ci0JCWlmIChwZXJpb2QgPCBtaW5fcGVyaW9kKQotCQkJbWluX3Blcmlv
ZCA9IHBlcmlvZDsKLQl9Ci0KLQlyZXR1cm4gbWluX3BlcmlvZDsKLSNlbHNlCiAJLyoKIAkgKiBG
SVhNRTogd2UgbmVlZCB0byB2ZXJpZnkgX2FsbF8gY29uc29sZXMuCiAJICovCiAJcmV0dXJuIHNh
MTEwMGZiX2Rpc3BsYXlfZG1hX3BlcmlvZCgmZmJpLT5mYi52YXIpOwotI2VuZGlmCiB9CiAKIC8q
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
