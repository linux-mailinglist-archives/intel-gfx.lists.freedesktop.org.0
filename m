Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 921174F360
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 05:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89706E953;
	Sat, 22 Jun 2019 03:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com
 [IPv6:2607:f8b0:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68C46E954
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 03:41:12 +0000 (UTC)
Received: by mail-pl1-x644.google.com with SMTP id c14so3905420plo.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VR+1gVBeNp5zLQOTjis3BU5nyFYrQmMm0AGMlO4tl+8=;
 b=Q7+5XHJgbpCE2KE9/cBqKNA3EBS2dYOc2I4R8+GlA6+6pbjq06rLroy6ZnfdrufbTa
 /pHu0jgpQJfQZNr4ZUiVO9ntHLSxIIfkKB9+YTHJ/GZz8DjNdUgt7//Km8UjeK/CdJ8z
 I/DLHbAwXJZ4es444Fyw+pVu4oKQY9zm3Nl9q8F0szEfie6cePcxYICS7LWVxwJEi71V
 mqtWlXsLS2f69VjqBxg/ScnGinanBYgEdYMY/D0NUi5IP+cKUD5CqgHUK6p3AvLoxbUX
 YgSaqBOkcK2AvLdttK1EVWETFqKihsSyT5zi6z/N6XvQW7Hi/VYkN2msKpSdsJQoYPYF
 iUug==
X-Gm-Message-State: APjAAAXy4AOKd/k3m1RhPDt8KtGX/qg11szf/1is1WXigFwF3EPu7pAm
 JRl69MbXONFBjc8sRWFzupme6A==
X-Google-Smtp-Source: APXvYqy7OZlNIJV/wKk0qzH/BBdfdv3svSddCMNCO3q2GvadO7lmbf1GC5jUG+WPh26RLzF0aYG8KQ==
X-Received: by 2002:a17:902:e58b:: with SMTP id
 cl11mr113259716plb.24.1561174872149; 
 Fri, 21 Jun 2019 20:41:12 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:11 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Fri, 21 Jun 2019 20:41:02 -0700
Message-Id: <20190622034105.188454-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VR+1gVBeNp5zLQOTjis3BU5nyFYrQmMm0AGMlO4tl+8=;
 b=Hz1UANN1roomVyU9jl8Q45f5XfmMGxREC6DBubcmkHxA8N1aR36jWxl686CM4zFQL/
 7MiFPw3h+X4133oN0+Q3yDg/27rL+fCVzFuuMjiJdEJ0QbnbArUJNJK5+nHiqylNnq3C
 XXbpjYWXPs4o9kfi5BLzH73e3K1SmGKI8+SCU=
Subject: [Intel-gfx] [PATCH v3 1/4] drm/panel: Add helper for reading DT
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

VGhpcyBhZGRzIGEgaGVscGVyIGZ1bmN0aW9uIGZvciByZWFkaW5nIHRoZSByb3RhdGlvbiAocGFu
ZWwKb3JpZW50YXRpb24pIGZyb20gdGhlIGRldmljZSB0cmVlLgoKU2lnbmVkLW9mZi1ieTogRGVy
ZWsgQmFzZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1bS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9wYW5lbC5jIHwgNDIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
aW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwgIDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCA0OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5l
bC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCmluZGV4IGRiZDViODczZThmMi4uNTA3
MDk5YWY0YjU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCkBAIC0xNzIsNiArMTcyLDQ4IEBAIHN0cnVjdCBk
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
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAorCQkJCSBlbnVtIGRybV9wYW5lbF9vcmllbnRhdGlvbiAq
b3JpZW50YXRpb24pCit7CisJaW50IHJvdGF0aW9uLCByZXQ7CisKKwlyZXQgPSBvZl9wcm9wZXJ0
eV9yZWFkX3UzMihucCwgInJvdGF0aW9uIiwgJnJvdGF0aW9uKTsKKwlpZiAocmV0ID09IC1FSU5W
QUwpIHsKKwkJLyogRG9uJ3QgcmV0dXJuIGFuIGVycm9yIGlmIHRoZXJlJ3Mgbm8gcm90YXRpb24g
cHJvcGVydHkuICovCisJCSpvcmllbnRhdGlvbiA9IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9O
X1VOS05PV047CisJCXJldHVybiAwOworCX0KKworCWlmIChyZXQgPCAwKQorCQlyZXR1cm4gcmV0
OworCisJaWYgKHJvdGF0aW9uID09IDApCisJCSpvcmllbnRhdGlvbiA9IERSTV9NT0RFX1BBTkVM
X09SSUVOVEFUSU9OX05PUk1BTDsKKwllbHNlIGlmIChyb3RhdGlvbiA9PSA5MCkKKwkJKm9yaWVu
dGF0aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fUklHSFRfVVA7CisJZWxzZSBpZiAo
cm90YXRpb24gPT0gMTgwKQorCQkqb3JpZW50YXRpb24gPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRB
VElPTl9CT1RUT01fVVA7CisJZWxzZSBpZiAocm90YXRpb24gPT0gMjcwKQorCQkqb3JpZW50YXRp
b24gPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9MRUZUX1VQOworCWVsc2UKKwkJcmV0dXJu
IC1FSU5WQUw7CisKKwlyZXR1cm4gMDsKK30KK0VYUE9SVF9TWU1CT0wob2ZfZHJtX2dldF9wYW5l
bF9vcmllbnRhdGlvbik7CiAjZW5kaWYKIAogTU9EVUxFX0FVVEhPUigiVGhpZXJyeSBSZWRpbmcg
PHRyZWRpbmdAbnZpZGlhLmNvbT4iKTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9wYW5l
bC5oIGIvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmgKaW5kZXggOGM3MzhjMGU2ZTlmLi4zNTY0OTUy
ZjFhNGYgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oCisrKyBiL2luY2x1ZGUv
ZHJtL2RybV9wYW5lbC5oCkBAIC0xOTcsMTEgKzE5NywxOCBAQCBpbnQgZHJtX3BhbmVsX2RldGFj
aChzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbCk7CiAKICNpZiBkZWZpbmVkKENPTkZJR19PRikgJiYg
ZGVmaW5lZChDT05GSUdfRFJNX1BBTkVMKQogc3RydWN0IGRybV9wYW5lbCAqb2ZfZHJtX2ZpbmRf
cGFuZWwoY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICpucCk7CitpbnQgb2ZfZHJtX2dldF9wYW5l
bF9vcmllbnRhdGlvbihjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAorCQkJCSBlbnVtIGRy
bV9wYW5lbF9vcmllbnRhdGlvbiAqb3JpZW50YXRpb24pOwogI2Vsc2UKIHN0YXRpYyBpbmxpbmUg
c3RydWN0IGRybV9wYW5lbCAqb2ZfZHJtX2ZpbmRfcGFuZWwoY29uc3Qgc3RydWN0IGRldmljZV9u
b2RlICpucCkKIHsKIAlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKIH0KK2ludCBvZl9kcm1fZ2V0
X3BhbmVsX29yaWVudGF0aW9uKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCisJCQkJIGVu
dW0gZHJtX3BhbmVsX29yaWVudGF0aW9uICpvcmllbnRhdGlvbikKK3sKKwlyZXR1cm4gLUVOT0RF
VjsKK30KICNlbmRpZgogCiAjZW5kaWYKLS0gCjIuMjIuMC40MTAuZ2Q4ZmRiZTIxYjUtZ29vZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
