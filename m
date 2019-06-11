Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07613C1DB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 06:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1BB890F7;
	Tue, 11 Jun 2019 04:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FB388E95
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 04:03:56 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id v9so4443513pgr.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dK5nepKO/Lu9qcWjch0d2Z8IhG0b83DDW/+1Tc5GcLg=;
 b=HbLoVZ27wRmbS00fdN8ipSDn6TzaS+ABWscmwhJMNs6MjMeEX1ZAtp8x16VJQ0ACMn
 eJrt2i37ow6dQMRpdNHeNH/YBysK2DqHhJEgDGyeJ+gYjmlxP6t1KPrjMKeizkelyfX0
 nmIZ15TiVXu+EIvFYV1PpcrUnvbYPKLcipe7hHhm6VGWYspxVJ48IJ270xoCVO7hmVnv
 MN7KBP6UEXg/LkY7HFYJJo+u81o4Wjmb9gmc9DKvLcFGXxSdeuoIktOJyD6r6jXtQyHY
 2QDi9MhgCJqN2exQ+t2+xkov1t81rVBVYsr9deoJRWx6Pixotrscdq070uJD6seTCNTH
 eVSg==
X-Gm-Message-State: APjAAAWs3dw7uF0dQ518muPfFpxBehc7kW9zXktwXjw0BhksU7sDEkDP
 Bqc0ziP+ecy99kRpIejR0Y5Vuw==
X-Google-Smtp-Source: APXvYqwobTrT91p21YyGnsEse1+RxzZxvnHAKh/XjPiTdvWC3iFSRE8s82N6n3Ie7F+FBFdVUvCVAQ==
X-Received: by 2002:a62:ce07:: with SMTP id y7mr49658309pfg.12.1560225836465; 
 Mon, 10 Jun 2019 21:03:56 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:55 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 10 Jun 2019 21:03:46 -0700
Message-Id: <20190611040350.90064-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dK5nepKO/Lu9qcWjch0d2Z8IhG0b83DDW/+1Tc5GcLg=;
 b=KXrCMiQg7a3OfPUXlEJ0jxFjUzyZmNjg7jLQ3vlyHvu+/ZoYFywdDn0CYhVxJ6210H
 Be7ENhzB8haIWSJaAFOqD/im/zV70ZC09Z+ulYwJ0v3pb2/30T9ccgBbFuxxbqyb4Sb3
 F8SC9XyvrE2wKX+6pwO4Kc/M8q4p4YESBKAMI=
Subject: [Intel-gfx] [PATCH 1/5] drm/panel: Add helper for reading DT
 rotation
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhZGRzIGEgaGVscGVyIGZ1bmN0aW9uIGZvciByZWFkaW5nIHRoZSByb3RhdGlvbiAocGFu
ZWwKb3JpZW50YXRpb24pIGZyb20gdGhlIGRldmljZSB0cmVlLgoKU2lnbmVkLW9mZi1ieTogRGVy
ZWsgQmFzZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1bS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9wYW5lbC5jIHwgNDEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
aW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwgIDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCA0OCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5l
bC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCmluZGV4IGRiZDViODczZThmMi4uM2I2
ODljZTRhNTFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCkBAIC0xNzIsNiArMTcyLDQ3IEBAIHN0cnVjdCBk
cm1fcGFuZWwgKm9mX2RybV9maW5kX3BhbmVsKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAp
CiAJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7CiB9CiBFWFBPUlRfU1lNQk9MKG9mX2Ry
bV9maW5kX3BhbmVsKTsKKworLyoqCisgKiBvZl9kcm1fZ2V0X3BhbmVsX29yaWVudGF0aW9uIC0g
bG9vayB1cCB0aGUgcm90YXRpb24gb2YgdGhlIHBhbmVsIHVzaW5nIGEKKyAqIGRldmljZSB0cmVl
IG5vZGUKKyAqIEBucDogZGV2aWNlIHRyZWUgbm9kZSBvZiB0aGUgcGFuZWwKKyAqIEBvcmllbnRh
dGlvbjogb3JpZW50YXRpb24gZW51bSB0byBiZSBmaWxsZWQgaW4KKyAqCisgKiBMb29rcyB1cCB0
aGUgcm90YXRpb24gb2YgYSBwYW5lbCBpbiB0aGUgZGV2aWNlIHRyZWUuIFRoZSByb3RhdGlvbiBp
biB0aGUKKyAqIGRldmljZSB0cmVlIGlzIGNvdW50ZXIgY2xvY2t3aXNlLgorICoKKyAqIFJldHVy
bjogMCB3aGVuIGEgdmFsaWQgcm90YXRpb24gdmFsdWUgKDAsIDkwLCAxODAsIG9yIDI3MCkgaXMg
cmVhZCBvciB0aGUKKyAqIHJvdGF0aW9uIHByb3BlcnR5IGRvZXNuJ3QgZXhpc3QuIC1FRVJST1Ig
b3RoZXJ3aXNlLgorICovCitpbnQgb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbihjb25zdCBz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBpbnQgKm9yaWVudGF0aW9uKQoreworCWludCByb3RhdGlv
biwgcmV0OworCisJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIobnAsICJyb3RhdGlvbiIsICZy
b3RhdGlvbik7CisJaWYgKHJldCA9PSAtRUlOVkFMKSB7CisJCS8qIERvbid0IHJldHVybiBhbiBl
cnJvciBpZiB0aGVyZSdzIG5vIHJvdGF0aW9uIHByb3BlcnR5LiAqLworCQkqb3JpZW50YXRpb24g
PSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOOworCQlyZXR1cm4gMDsKKwl9CisK
KwlpZiAocmV0IDwgMCkKKwkJcmV0dXJuIHJldDsKKworCWlmIChyb3RhdGlvbiA9PSAwKQorCQkq
b3JpZW50YXRpb24gPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9OT1JNQUw7CisJZWxzZSBp
ZiAocm90YXRpb24gPT0gOTApCisJCSpvcmllbnRhdGlvbiA9IERSTV9NT0RFX1BBTkVMX09SSUVO
VEFUSU9OX1JJR0hUX1VQOworCWVsc2UgaWYgKHJvdGF0aW9uID09IDE4MCkKKwkJKm9yaWVudGF0
aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fQk9UVE9NX1VQOworCWVsc2UgaWYgKHJv
dGF0aW9uID09IDI3MCkKKwkJKm9yaWVudGF0aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJ
T05fTEVGVF9VUDsKKwllbHNlCisJCXJldHVybiAtRUlOVkFMOworCisJcmV0dXJuIDA7Cit9CitF
WFBPUlRfU1lNQk9MKG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24pOwogI2VuZGlmCiAKIE1P
RFVMRV9BVVRIT1IoIlRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Iik7CmRpZmYg
LS1naXQgYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaCBiL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5o
CmluZGV4IDhjNzM4YzBlNmU5Zi4uMTM2MzFiMmVmYmFhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2Ry
bS9kcm1fcGFuZWwuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaApAQCAtMTk3LDExICsx
OTcsMTggQEAgaW50IGRybV9wYW5lbF9kZXRhY2goc3RydWN0IGRybV9wYW5lbCAqcGFuZWwpOwog
CiAjaWYgZGVmaW5lZChDT05GSUdfT0YpICYmIGRlZmluZWQoQ09ORklHX0RSTV9QQU5FTCkKIHN0
cnVjdCBkcm1fcGFuZWwgKm9mX2RybV9maW5kX3BhbmVsKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbnApOworaW50IG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24oY29uc3Qgc3RydWN0IGRl
dmljZV9ub2RlICpucCwKKwkJCQkgaW50ICpvcmllbnRhdGlvbik7CiAjZWxzZQogc3RhdGljIGlu
bGluZSBzdHJ1Y3QgZHJtX3BhbmVsICpvZl9kcm1fZmluZF9wYW5lbChjb25zdCBzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wKQogewogCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwogfQoraW50IG9mX2Ry
bV9nZXRfcGFuZWxfb3JpZW50YXRpb24oY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICpucCwKKwkJ
CQkgaW50ICpvcmllbnRhdGlvbikKK3sKKwlyZXR1cm4gLUVOT0RFVjsKK30KICNlbmRpZgogCiAj
ZW5kaWYKLS0gCjIuMjIuMC5yYzIuMzgzLmdmNGZiYmYzMGMyLWdvb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
