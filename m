Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7621C4F363
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 05:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367A26E956;
	Sat, 22 Jun 2019 03:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C8D76E956
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 03:41:16 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id i189so4517240pfg.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:41:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=GAQvdFM4UQnluhBLN8X6X8zSWNXkGp4IZ9g2eBnAMHLptuqQ4PcnPtnl9ku3/khY8/
 3GOM6A0liecJc3F75JoXKMCchfM/UutoJgS8EeeXWO0SlZ4haQ8rgISOJToa3e316WAT
 tx8E3WAdoBoIaHVVk2smWkGbdMoqbq1+ajh+wXgDd4ARGLByv0gx9eWKtn0RY/UtyakW
 NPTl8ZjQL7CQwmvE6EIBquJDKI7hXuIANsr/wWCRwfXCH/YcxluVTvHnxrmUKd1Ul2Mf
 iD8JM/y2xpcYohnTqeI0dzincH75RejNkvvZ//ocwGiWc4/TYPpWTiOA4XtIiU+KNcwI
 PtVQ==
X-Gm-Message-State: APjAAAXshatIugPFSe0R6IKayDRb4FGHQKXSEACU2wMPG52J1QlaGrJo
 NVtzHbBv1xXObszQk25jmA14vw==
X-Google-Smtp-Source: APXvYqzslQDI58gAtC55+8w+gQS8zY9PascQUVg5lYBeYsEo3d9ImRfo5a3yRY89wZxYrkoWlqCAMQ==
X-Received: by 2002:a17:90b:d8f:: with SMTP id
 bg15mr10778249pjb.65.1561174875712; 
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Fri, 21 Jun 2019 20:41:05 -0700
Message-Id: <20190622034105.188454-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=niGTS4FI/C687+sa3kKLIMPE58L7G7E5nctX9I6CtYN8GELqO1dmYNy3W+bytP3lM2
 7jJLiBQxNMTmWuycDio83VjqRBYXENo40QGJV77eJIpEvs05teclhe/XR8ex/VpLgaDx
 lNQopJYpNYfOR+08BHj2q1c/NuSF1p8+Ua8Lg=
Subject: [Intel-gfx] [PATCH v4 4/4] drm/mtk: add panel orientation property
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
bXRrX2RzaS5jCmluZGV4IDRhMGI5MTUwYTdiYi4uMDhmZmRjNzUyNmRkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZHNpLmMKQEAgLTc4MiwxMCArNzgyLDE4IEBAIHN0YXRpYyBpbnQgbXRrX2Rz
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
