Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2B546AED
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34F189852;
	Fri, 14 Jun 2019 20:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F0C89852
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:27 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id e3so5196966edr.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x8GghTMCj6wvJSVvB8PXvgr/pYsWXgqm2kXHsMo+HB8=;
 b=OJKPPGiWzI7DfGNJ8/2qDU+PRU6KqzT7w8DdNvACxT0qzXKlNwuSqJIAyP6OwIDtZg
 yQPQ9Xw8eiw9W63KemY+77xj1ABkXMHlkxttaomK2JobZkjAJBZaMJAvCAy7f3dfYmCd
 wIFwChwowi2Mpfd4+issKfaLR9JE1kdYD07nbaWInfhaGLUlr6p0HmerMBa+rNi/UzTp
 63OtPB73Pr9HsgjDaex1AZoQ0639CozGQ+ttkaicGHwFlrSXURtBx/3pPAbx5QAiH7Lg
 wpB0yAJIYsfXn3yUeGjmVJw8cqytGUySi4Yizg4FLHzNYHlXoi4iQYuPcHThphjIZsBt
 F8/w==
X-Gm-Message-State: APjAAAVeua4vlFXfgxkgRDQCju3b///Vw53/1BInVmqSkoLo6Jm4HQhI
 8yg1unpnmDHinyfvsKiCc5BhnA==
X-Google-Smtp-Source: APXvYqxqSDXYVjHDnkWcz9+bqUuaitEQ/d3sJokLHSzoLFmRCmpCanuIcBL2GlVEur18SVgs+V7d+g==
X-Received: by 2002:a50:94d9:: with SMTP id t25mr68979897eda.32.1560544643912; 
 Fri, 14 Jun 2019 13:37:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:23 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:10 +0200
Message-Id: <20190614203615.12639-55-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x8GghTMCj6wvJSVvB8PXvgr/pYsWXgqm2kXHsMo+HB8=;
 b=eSaY9hOBKfcWbb1pvm/A416/HrjWdY5fVvnb2kBqi0HMimvxLtCSGTTvKJysRH1ENe
 HQeOTm/x62qn4znksZdjAERDmsArAph/XtDfddeG8EjeNR+pjuYh0/lYXKYkkY1Gu3z1
 aORpyO2nmPCfh/RfxeVPJ7q51DtF2pXHB7xpk=
Subject: [Intel-gfx] [PATCH 54/59] drm/prime: Ditch gem_prime_res_obj hook
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXZlcnlvbmUgaXMganVzdCB1c2luZyBnZW1fb2JqZWN0LT5yZXN2IG5vdy4KClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogRGF2aWQgQWly
bGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
PgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KQ2M6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+CkNjOiBTZWFu
IFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KLS0tCiBEb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdCAg
fCAgOSAtLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8ICAzIC0tLQogaW5j
bHVkZS9kcm0vZHJtX2Rydi5oICAgICAgIHwgMTIgLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5n
ZWQsIDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8u
cnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKaW5kZXggMjM1ODNmMGUzNzU1Li44MWZi
YjE1Yzk0YzYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CisrKyBiL0Rv
Y3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CkBAIC0xOTYsMTUgKzE5Niw2IEBAIE1pZ2h0IGJlIGdv
b2QgdG8gYWxzbyBoYXZlIHNvbWUgaWd0IHRlc3RjYXNlcyBmb3IgdGhpcy4KIAogQ29udGFjdDog
RGFuaWVsIFZldHRlciwgTm9yYWxmIFRyb25uZXMKIAotUmVtb3ZlIHRoZSAtPmdlbV9wcmltZV9y
ZXNfb2JqIGNhbGxiYWNrCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQotCi1UaGUgLT5nZW1fcHJpbWVfcmVzX29iaiBjYWxsYmFjayBjYW4gYmUgcmVtb3ZlZCBm
cm9tIGRyaXZlcnMgYnkgdXNpbmcgdGhlCi1yZXNlcnZhdGlvbl9vYmplY3QgaW4gdGhlIGRybV9n
ZW1fb2JqZWN0LiBJdCBtYXkgYWxzbyBiZSBwb3NzaWJsZSB0byB1c2UgdGhlCi1nZW5lcmljIGRy
bV9nZW1fcmVzZXJ2YXRpb25fb2JqZWN0X3dhaXQgaGVscGVyIGZvciB3YWl0aW5nIGZvciBhIGJv
LgotCi1Db250YWN0OiBEYW5pZWwgVmV0dGVyCi0KIGlkcl9pbml0X2Jhc2UoKQogLS0tLS0tLS0t
LS0tLS0tCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fcHJpbWUuYwppbmRleCA1OGQ1OTVmNGE0ZjUuLjY1ZTYxMTMzNzI1NCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYwpAQCAtODMyLDkgKzgzMiw2IEBAIHN0cnVjdCBkbWFfYnVmICpkcm1f
Z2VtX3ByaW1lX2V4cG9ydChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIAkJLnJlc3YgPSBv
YmotPnJlc3YsCiAJfTsKIAotCWlmIChkZXYtPmRyaXZlci0+Z2VtX3ByaW1lX3Jlc19vYmopCi0J
CWV4cF9pbmZvLnJlc3YgPSBkZXYtPmRyaXZlci0+Z2VtX3ByaW1lX3Jlc19vYmoob2JqKTsKLQog
CXJldHVybiBkcm1fZ2VtX2RtYWJ1Zl9leHBvcnQoZGV2LCAmZXhwX2luZm8pOwogfQogRVhQT1JU
X1NZTUJPTChkcm1fZ2VtX3ByaW1lX2V4cG9ydCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9k
cm1fZHJ2LmggYi9pbmNsdWRlL2RybS9kcm1fZHJ2LmgKaW5kZXggZWMxYzYzODkyN2IwLi5iMDFh
MzBjNjQwNzUgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcnYuaAorKysgYi9pbmNsdWRl
L2RybS9kcm1fZHJ2LmgKQEAgLTYxOCwxOCArNjE4LDYgQEAgc3RydWN0IGRybV9kcml2ZXIgewog
CSAqLwogCXN0cnVjdCBzZ190YWJsZSAqKCpnZW1fcHJpbWVfZ2V0X3NnX3RhYmxlKShzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9iaik7CiAKLQkvKioKLQkgKiBAZ2VtX3ByaW1lX3Jlc19vYmo6Ci0J
ICoKLQkgKiBPcHRpb25hbCBob29rIHRvIGxvb2sgdXAgdGhlICZyZXNlcnZhdGlvbl9vYmplY3Qg
Zm9yIGFuIGJ1ZmZlciB3aGVuCi0JICogZXhwb3J0aW5nIGl0LgotCSAqCi0JICogRklYTUU6IFRo
aXMgaG9vayBpcyBkZXByZWNhdGVkLiBVc2VyIG9mIHRoaXMgaG9vayBzaG91bGQgYmUgcmVwbGFj
ZWQKLQkgKiBieSBzZXR0aW5nICZkcm1fZ2VtX29iamVjdC5yZXN2IGluc3RlYWQuCi0JICovCi0J
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqICgqZ2VtX3ByaW1lX3Jlc19vYmopKAotCQkJCXN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsKLQogCS8qKgogCSAqIEBnZW1fcHJpbWVfaW1wb3J0
X3NnX3RhYmxlOgogCSAqCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
