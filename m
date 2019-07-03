Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE535EF5E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 01:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062876E21C;
	Wed,  3 Jul 2019 23:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com
 [IPv6:2607:f8b0:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 544C96E219
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 23:02:20 +0000 (UTC)
Received: by mail-pg1-x542.google.com with SMTP id t132so1924677pgb.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jul 2019 16:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=i8r4jj5MhEJQ0wXVvLfTphGDmfXonHSzVYiDQbVVJo42GmUsaz6jb1wF+Ykig6hzgu
 yPe+lqqMf08v/hkrIEzCxS7btDArgCSo0FqOPqI8CRmS2oGnShFS9QShYK2QGX0LGPxZ
 FREocPRClxf9L0gxCf23NolRQ5du9if0bPLkBl3nTLro59Kf0igPVM1dMZWmrNaryurx
 w0mc7mTQNXgI8IvzEDO1hWlHrDbaBwIMAscg8vyKmdMT2ZpDTQLnGrs8HIJ0eqIaps6a
 KszvuDvrogTmwlHdpKbGeiOMmN2Hu3dExSGwVULNcSjpUINV6dcTKyN3CWCauMLmvNqv
 nJ4A==
X-Gm-Message-State: APjAAAWcDDoo37tynIntvAc6qQjPwm/PlcC1Wf93RXIB6cYxoK0nL0bx
 I3693X3ET3Xoh14TGybIy/U+ow==
X-Google-Smtp-Source: APXvYqyG7F1sqItbURwJvHhS/2DarvFHk2VbgTA5dTpR7guaFyZ6mbPUxyay/cbBh1DPeX4KcfiwJA==
X-Received: by 2002:a17:90a:cf8f:: with SMTP id
 i15mr14955387pju.110.1562194939953; 
 Wed, 03 Jul 2019 16:02:19 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t8sm4245171pfq.31.2019.07.03.16.02.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 16:02:19 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed,  3 Jul 2019 16:02:10 -0700
Message-Id: <20190703230210.85342-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190703230210.85342-1-dbasehore@chromium.org>
References: <20190703230210.85342-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=KoFbuYFaOMgz+CA9HtkLNTvAr+pabLlsPrLFWh8/CDrvglaCWGGLw4Pnxd6skHFk9D
 q3Vow7aYTiXXFCeiDRL8qO677+a7piMs8y1uZhje39FRkVgbfJ0BDZ+RweMNQAxf5gWi
 dXTZ2iVaBDwYMJGt3iTUEcM1C9Zfdf2BI1S3A=
Subject: [Intel-gfx] [PATCH v5 4/4] drm/mtk: add panel orientation property
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
aXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgOCArKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RzaS5jCmluZGV4IGI5MWM0NjE2NjQ0YS4uMjkyMDQ1OGFlMmZiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZHNpLmMKQEAgLTc5MCwxMCArNzkwLDE4IEBAIHN0YXRpYyBpbnQgbXRrX2Rz
aV9jcmVhdGVfY29ubmVjdG9yKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBtdGtfZHNp
ICpkc2kpCiAJCQlEUk1fRVJST1IoIkZhaWxlZCB0byBhdHRhY2ggcGFuZWwgdG8gZHJtXG4iKTsK
IAkJCWdvdG8gZXJyX2Nvbm5lY3Rvcl9jbGVhbnVwOwogCQl9CisKKwkJcmV0ID0gZHJtX2Nvbm5l
Y3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9uX3Byb3BlcnR5KCZkc2ktPmNvbm4pOworCQlpZiAo
cmV0KSB7CisJCQlEUk1fRVJST1IoIkZhaWxlZCB0byBpbml0IHBhbmVsIG9yaWVudGF0aW9uXG4i
KTsKKwkJCWdvdG8gZXJyX3BhbmVsX2RldGFjaDsKKwkJfQogCX0KIAogCXJldHVybiAwOwogCitl
cnJfcGFuZWxfZGV0YWNoOgorCWRybV9wYW5lbF9kZXRhY2goZHNpLT5wYW5lbCk7CiBlcnJfY29u
bmVjdG9yX2NsZWFudXA6CiAJZHJtX2Nvbm5lY3Rvcl9jbGVhbnVwKCZkc2ktPmNvbm4pOwogCXJl
dHVybiByZXQ7Ci0tIAoyLjIyLjAuNDEwLmdkOGZkYmUyMWI1LWdvb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
