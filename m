Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A061163E19
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 00:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7331F899A5;
	Tue,  9 Jul 2019 22:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B80789950
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 22:58:47 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id b3so149109plr.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jul 2019 15:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ybENbdq7sWCRKSx2uGRD4wfA317CnX0hX0yVvH3yjc=;
 b=VXhLukZHONwFYHUyYPcjq/g9BRAhp48geF9cPLqOtRkEMK1rM7L9uhFUCoYya8QRTh
 oUeuoob9Rjdjau5lX/qGkrzGXmdx9EQLcElVHH9x2hQCGtrkq/RlAYpI4wa7F7cojDT5
 QZn8oe3OX3W3gEm6Dwi4vQ9h+n65dqzO7QJqw9uI3V0+47nz6YxwoR7KvrwYCgdrdLZr
 yC5y861EjV1uBwtm7C7nmQxQaqhdw34HdoTBsfhBE0S3v6BYWnWLysojwF8CdHquVbIu
 WT/LBxnWe8+HOyzubzmJY1NYr4LJNo0UaTecgTskjLsKuHN4FQatRX5tkefTz/AttMvh
 YCDw==
X-Gm-Message-State: APjAAAXbNW/PK6bqpOPtfPgAfstGk5ErtoUI7jHNjv8aeYj+K3pE0x9g
 Jj2eH0v3YomQQugVgcYFYJmK+g==
X-Google-Smtp-Source: APXvYqzsksmUu40dQ8LtR0ERcg38zXNT9bdU3XuMwtnQywHI1Dr5hkNVfsry2FU19wnCYDuvX6Z1uw==
X-Received: by 2002:a17:902:1081:: with SMTP id
 c1mr35359964pla.200.1562713126654; 
 Tue, 09 Jul 2019 15:58:46 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id 201sm152939pfz.24.2019.07.09.15.58.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:58:46 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Tue,  9 Jul 2019 15:58:37 -0700
Message-Id: <20190709225840.144038-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190709225840.144038-1-dbasehore@chromium.org>
References: <20190709225840.144038-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ybENbdq7sWCRKSx2uGRD4wfA317CnX0hX0yVvH3yjc=;
 b=KvY5gN0SAZEGmUhF/z94ihkRRx7Eb5rUIo1+xQkeKLjy4t3pnTe+dluuROYHZWqy23
 5X3FfLnvJNOPNn/6LWdiTwmeDxnemdCvhVFCuVHv6vW4/n+Qr14M5g12QK09ELKAuTMt
 jUqZgUW5b0wxPd77Rck45TBJOLUHR6V0PTo0M=
Subject: [Intel-gfx] [PATCH v6 1/4] drm/panel: Add helper for reading DT
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
L2RybV9wYW5lbC5jIHwgNDMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
aW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwgIDkgKysrKysrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgNTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFu
ZWwuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYwppbmRleCBkYmQ1Yjg3M2U4ZjIuLjE2
OWJhYjU0ZDUyZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYwpAQCAtMTcyLDYgKzE3Miw0OSBAQCBzdHJ1Y3Qg
ZHJtX3BhbmVsICpvZl9kcm1fZmluZF9wYW5lbChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
KQogCXJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwogfQogRVhQT1JUX1NZTUJPTChvZl9k
cm1fZmluZF9wYW5lbCk7CisKKy8qKgorICogb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbiAt
IGxvb2sgdXAgdGhlIG9yaWVudGF0aW9uIG9mIHRoZSBwYW5lbCB0aHJvdWdoCisgKiB0aGUgInJv
dGF0aW9uIiBiaW5kaW5nIGZyb20gYSBkZXZpY2UgdHJlZSBub2RlCisgKiBAbnA6IGRldmljZSB0
cmVlIG5vZGUgb2YgdGhlIHBhbmVsCisgKiBAb3JpZW50YXRpb246IG9yaWVudGF0aW9uIGVudW0g
dG8gYmUgZmlsbGVkIGluCisgKgorICogTG9va3MgdXAgdGhlIHJvdGF0aW9uIG9mIGEgcGFuZWwg
aW4gdGhlIGRldmljZSB0cmVlLiBUaGUgb3JpZW50YXRpb24gb2YgdGhlCisgKiBwYW5lbCBpcyBl
eHByZXNzZWQgYXMgYSBwcm9wZXJ0eSBuYW1lICJyb3RhdGlvbiIgaW4gdGhlIGRldmljZSB0cmVl
LiBUaGUKKyAqIHJvdGF0aW9uIGluIHRoZSBkZXZpY2UgdHJlZSBpcyBjb3VudGVyIGNsb2Nrd2lz
ZS4KKyAqCisgKiBSZXR1cm46IDAgd2hlbiBhIHZhbGlkIHJvdGF0aW9uIHZhbHVlICgwLCA5MCwg
MTgwLCBvciAyNzApIGlzIHJlYWQgb3IgdGhlCisgKiByb3RhdGlvbiBwcm9wZXJ0eSBkb2Vzbid0
IGV4aXN0LiAtRUVSUk9SIG90aGVyd2lzZS4KKyAqLworaW50IG9mX2RybV9nZXRfcGFuZWxfb3Jp
ZW50YXRpb24oY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICpucCwKKwkJCQkgZW51bSBkcm1fcGFu
ZWxfb3JpZW50YXRpb24gKm9yaWVudGF0aW9uKQoreworCWludCByb3RhdGlvbiwgcmV0OworCisJ
cmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIobnAsICJyb3RhdGlvbiIsICZyb3RhdGlvbik7CisJ
aWYgKHJldCA9PSAtRUlOVkFMKSB7CisJCS8qIERvbid0IHJldHVybiBhbiBlcnJvciBpZiB0aGVy
ZSdzIG5vIHJvdGF0aW9uIHByb3BlcnR5LiAqLworCQkqb3JpZW50YXRpb24gPSBEUk1fTU9ERV9Q
QU5FTF9PUklFTlRBVElPTl9VTktOT1dOOworCQlyZXR1cm4gMDsKKwl9CisKKwlpZiAocmV0IDwg
MCkKKwkJcmV0dXJuIHJldDsKKworCWlmIChyb3RhdGlvbiA9PSAwKQorCQkqb3JpZW50YXRpb24g
PSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9OT1JNQUw7CisJZWxzZSBpZiAocm90YXRpb24g
PT0gOTApCisJCSpvcmllbnRhdGlvbiA9IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1JJR0hU
X1VQOworCWVsc2UgaWYgKHJvdGF0aW9uID09IDE4MCkKKwkJKm9yaWVudGF0aW9uID0gRFJNX01P
REVfUEFORUxfT1JJRU5UQVRJT05fQk9UVE9NX1VQOworCWVsc2UgaWYgKHJvdGF0aW9uID09IDI3
MCkKKwkJKm9yaWVudGF0aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fTEVGVF9VUDsK
KwllbHNlCisJCXJldHVybiAtRUlOVkFMOworCisJcmV0dXJuIDA7Cit9CitFWFBPUlRfU1lNQk9M
KG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24pOwogI2VuZGlmCiAKIE1PRFVMRV9BVVRIT1Io
IlRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Iik7CmRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9kcm1fcGFuZWwuaCBiL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oCmluZGV4IDhjNzM4
YzBlNmU5Zi4uYTE4YzU5ZjEzNmFiIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwu
aAorKysgYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaApAQCAtMzMsNiArMzMsOCBAQCBzdHJ1Y3Qg
ZHJtX2RldmljZTsKIHN0cnVjdCBkcm1fcGFuZWw7CiBzdHJ1Y3QgZGlzcGxheV90aW1pbmc7CiAK
K2VudW0gZHJtX3BhbmVsX29yaWVudGF0aW9uOworCiAvKioKICAqIHN0cnVjdCBkcm1fcGFuZWxf
ZnVuY3MgLSBwZXJmb3JtIG9wZXJhdGlvbnMgb24gYSBnaXZlbiBwYW5lbAogICogQGRpc2FibGU6
IGRpc2FibGUgcGFuZWwgKHR1cm4gb2ZmIGJhY2sgbGlnaHQsIGV0Yy4pCkBAIC0xOTcsMTEgKzE5
OSwxOCBAQCBpbnQgZHJtX3BhbmVsX2RldGFjaChzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbCk7CiAK
ICNpZiBkZWZpbmVkKENPTkZJR19PRikgJiYgZGVmaW5lZChDT05GSUdfRFJNX1BBTkVMKQogc3Ry
dWN0IGRybV9wYW5lbCAqb2ZfZHJtX2ZpbmRfcGFuZWwoY29uc3Qgc3RydWN0IGRldmljZV9ub2Rl
ICpucCk7CitpbnQgb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbihjb25zdCBzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wLAorCQkJCSBlbnVtIGRybV9wYW5lbF9vcmllbnRhdGlvbiAqb3JpZW50YXRp
b24pOwogI2Vsc2UKIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9wYW5lbCAqb2ZfZHJtX2ZpbmRf
cGFuZWwoY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICpucCkKIHsKIAlyZXR1cm4gRVJSX1BUUigt
RU5PREVWKTsKIH0KK2ludCBvZl9kcm1fZ2V0X3BhbmVsX29yaWVudGF0aW9uKGNvbnN0IHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAsCisJCQkJIGVudW0gZHJtX3BhbmVsX29yaWVudGF0aW9uICpvcmll
bnRhdGlvbikKK3sKKwlyZXR1cm4gLUVOT0RFVjsKK30KICNlbmRpZgogCiAjZW5kaWYKLS0gCjIu
MjIuMC40MTAuZ2Q4ZmRiZTIxYjUtZ29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
