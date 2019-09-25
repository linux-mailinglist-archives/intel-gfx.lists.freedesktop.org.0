Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A1FBE892
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 00:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D896EDF0;
	Wed, 25 Sep 2019 22:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com
 [IPv6:2607:f8b0:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD026ED65
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 22:58:40 +0000 (UTC)
Received: by mail-pg1-x542.google.com with SMTP id i14so177422pgt.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:58:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8RLpwKs4I/KTJ32MS45zoaSBUWPxrYYP2TJ+BhJ7dIo=;
 b=EeK1n1sfXigLeM7Jc6W7/2PfcWMYqReuQHtX7rWys8OgVMj/DgmRSb7cr2q+KHpZ9m
 46Tjbm4dI+Ha7PaGowrJ4c3bLVvPP8MPHeYhJP27ChUZE466MKrI2L4LxLwowQbEf5h8
 MeTsADBptUmWqPilr8DAtbD66ykplv6lF2q9MjvuKgFt6SOyyML5w++DyN8yppYF6S43
 qj65krDhkubPzgbyDsE95chjwQsQtUKWJ8wIHp8KGZlWfYGCD71bwUC7h7s8J9RJ9jfI
 QC1IctHz2aYXPxtNtGcFI4NNQC9SnMXPR1pnVcxYkk+hccy2eVeLFoCN4wYqetUINDxv
 OwZA==
X-Gm-Message-State: APjAAAVasrO42Dw3nF/UxKE18R8eVzWq+X+Z1hiHRxj1ssHpFE4VnoWM
 m7pT8XLxPbUZJzjWxXlQc1vmpQ==
X-Google-Smtp-Source: APXvYqx+h6o8pAcbo6iFSgBiXzuTlpI1jzN3uzMrVMTvyDHl+CmzEswng7j99czxoZvuaSQhXljYkw==
X-Received: by 2002:a63:67c2:: with SMTP id b185mr278299pgc.436.1569452320464; 
 Wed, 25 Sep 2019 15:58:40 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:39 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 25 Sep 2019 15:58:30 -0700
Message-Id: <20190925225833.7310-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8RLpwKs4I/KTJ32MS45zoaSBUWPxrYYP2TJ+BhJ7dIo=;
 b=lX625GkSWQhcn3jHGAe6xWSr0MrR/xtQ2yTUKlx5cgk/atVv5K7Kc50LuoUY675HjQ
 Y8b+UWDk8muJoMytA0w5+vX8OLmFKLu/+beCXViUfxS6zK4zo/TzqMNEAAa/VdGnvPYT
 Jq1YeEDWdMlDsRJCeFLex/1KV68Gz4c6ISl1Q=
Subject: [Intel-gfx] [PATCH v8 1/4] drm/panel: Add helper for reading DT
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
ZWsgQmFzZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1bS5vcmc+ClJldmlld2VkLWJ5OiBTYW0gUmF2
bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5j
IHwgNDMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0v
ZHJtX3BhbmVsLmggICAgIHwgIDkgKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fcGFuZWwuYwppbmRleCA2YjBiZjQyMDM5Y2YuLjA5MDliNTNiNzRlNiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcGFuZWwuYwpAQCAtMjY0LDYgKzI2NCw0OSBAQCBzdHJ1Y3QgZHJtX3BhbmVsICpv
Zl9kcm1fZmluZF9wYW5lbChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCXJldHVybiBF
UlJfUFRSKC1FUFJPQkVfREVGRVIpOwogfQogRVhQT1JUX1NZTUJPTChvZl9kcm1fZmluZF9wYW5l
bCk7CisKKy8qKgorICogb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbiAtIGxvb2sgdXAgdGhl
IG9yaWVudGF0aW9uIG9mIHRoZSBwYW5lbCB0aHJvdWdoCisgKiB0aGUgInJvdGF0aW9uIiBiaW5k
aW5nIGZyb20gYSBkZXZpY2UgdHJlZSBub2RlCisgKiBAbnA6IGRldmljZSB0cmVlIG5vZGUgb2Yg
dGhlIHBhbmVsCisgKiBAb3JpZW50YXRpb246IG9yaWVudGF0aW9uIGVudW0gdG8gYmUgZmlsbGVk
IGluCisgKgorICogTG9va3MgdXAgdGhlIHJvdGF0aW9uIG9mIGEgcGFuZWwgaW4gdGhlIGRldmlj
ZSB0cmVlLiBUaGUgb3JpZW50YXRpb24gb2YgdGhlCisgKiBwYW5lbCBpcyBleHByZXNzZWQgYXMg
YSBwcm9wZXJ0eSBuYW1lICJyb3RhdGlvbiIgaW4gdGhlIGRldmljZSB0cmVlLiBUaGUKKyAqIHJv
dGF0aW9uIGluIHRoZSBkZXZpY2UgdHJlZSBpcyBjb3VudGVyIGNsb2Nrd2lzZS4KKyAqCisgKiBS
ZXR1cm46IDAgd2hlbiBhIHZhbGlkIHJvdGF0aW9uIHZhbHVlICgwLCA5MCwgMTgwLCBvciAyNzAp
IGlzIHJlYWQgb3IgdGhlCisgKiByb3RhdGlvbiBwcm9wZXJ0eSBkb2Vzbid0IGV4aXN0LiAtRUVS
Uk9SIG90aGVyd2lzZS4KKyAqLworaW50IG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24oY29u
c3Qgc3RydWN0IGRldmljZV9ub2RlICpucCwKKwkJCQkgZW51bSBkcm1fcGFuZWxfb3JpZW50YXRp
b24gKm9yaWVudGF0aW9uKQoreworCWludCByb3RhdGlvbiwgcmV0OworCisJcmV0ID0gb2ZfcHJv
cGVydHlfcmVhZF91MzIobnAsICJyb3RhdGlvbiIsICZyb3RhdGlvbik7CisJaWYgKHJldCA9PSAt
RUlOVkFMKSB7CisJCS8qIERvbid0IHJldHVybiBhbiBlcnJvciBpZiB0aGVyZSdzIG5vIHJvdGF0
aW9uIHByb3BlcnR5LiAqLworCQkqb3JpZW50YXRpb24gPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRB
VElPTl9VTktOT1dOOworCQlyZXR1cm4gMDsKKwl9CisKKwlpZiAocmV0IDwgMCkKKwkJcmV0dXJu
IHJldDsKKworCWlmIChyb3RhdGlvbiA9PSAwKQorCQkqb3JpZW50YXRpb24gPSBEUk1fTU9ERV9Q
QU5FTF9PUklFTlRBVElPTl9OT1JNQUw7CisJZWxzZSBpZiAocm90YXRpb24gPT0gOTApCisJCSpv
cmllbnRhdGlvbiA9IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1JJR0hUX1VQOworCWVsc2Ug
aWYgKHJvdGF0aW9uID09IDE4MCkKKwkJKm9yaWVudGF0aW9uID0gRFJNX01PREVfUEFORUxfT1JJ
RU5UQVRJT05fQk9UVE9NX1VQOworCWVsc2UgaWYgKHJvdGF0aW9uID09IDI3MCkKKwkJKm9yaWVu
dGF0aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fTEVGVF9VUDsKKwllbHNlCisJCXJl
dHVybiAtRUlOVkFMOworCisJcmV0dXJuIDA7Cit9CitFWFBPUlRfU1lNQk9MKG9mX2RybV9nZXRf
cGFuZWxfb3JpZW50YXRpb24pOwogI2VuZGlmCiAKIE1PRFVMRV9BVVRIT1IoIlRoaWVycnkgUmVk
aW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Iik7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
cGFuZWwuaCBiL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oCmluZGV4IDYyNGJkMTVlY2ZhYi4uZDE2
MTU4ZGVhY2RjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaAorKysgYi9pbmNs
dWRlL2RybS9kcm1fcGFuZWwuaApAQCAtMzQsNiArMzQsOCBAQCBzdHJ1Y3QgZHJtX2RldmljZTsK
IHN0cnVjdCBkcm1fcGFuZWw7CiBzdHJ1Y3QgZGlzcGxheV90aW1pbmc7CiAKK2VudW0gZHJtX3Bh
bmVsX29yaWVudGF0aW9uOworCiAvKioKICAqIHN0cnVjdCBkcm1fcGFuZWxfZnVuY3MgLSBwZXJm
b3JtIG9wZXJhdGlvbnMgb24gYSBnaXZlbiBwYW5lbAogICoKQEAgLTE2NSwxMSArMTY3LDE4IEBA
IGludCBkcm1fcGFuZWxfZ2V0X21vZGVzKHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsKTsKIAogI2lm
IGRlZmluZWQoQ09ORklHX09GKSAmJiBkZWZpbmVkKENPTkZJR19EUk1fUEFORUwpCiBzdHJ1Y3Qg
ZHJtX3BhbmVsICpvZl9kcm1fZmluZF9wYW5lbChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
KTsKK2ludCBvZl9kcm1fZ2V0X3BhbmVsX29yaWVudGF0aW9uKGNvbnN0IHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAsCisJCQkJIGVudW0gZHJtX3BhbmVsX29yaWVudGF0aW9uICpvcmllbnRhdGlvbik7
CiAjZWxzZQogc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX3BhbmVsICpvZl9kcm1fZmluZF9wYW5l
bChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogewogCXJldHVybiBFUlJfUFRSKC1FTk9E
RVYpOwogfQorc3RhdGljIGlubGluZSBpbnQgb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbihj
b25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAorCQllbnVtIGRybV9wYW5lbF9vcmllbnRhdGlv
biAqb3JpZW50YXRpb24pCit7CisJcmV0dXJuIC1FTk9ERVY7Cit9CiAjZW5kaWYKIAogI2VuZGlm
Ci0tIAoyLjIzLjAuMzUxLmdjNDMxNzAzMmU2LWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
