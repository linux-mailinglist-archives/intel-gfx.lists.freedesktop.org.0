Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3546AB5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB4289862;
	Fri, 14 Jun 2019 20:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C93089780
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:13 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id a14so5201168edv.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3IsGjxwvwjG/F125ELsNZLYmQyUuSqFRg2uUCFaIB6o=;
 b=QT17NtF6V2c8qWmL1upJIVs8WifVaxqS5Qhp7FAUFkiMpWVrIbro6gvt8tX4hyZG6K
 YSs5tWY3Drc1xLsEjERAfVZ0aGnZQL9l9Be+Zeduaz23KMbHZpTjJxNTk45i03akQULh
 O7GCg+OVKAsKWELQG+bQdY1Bb9Nz7WYqeHLBS/4sZjTrwat8HTeTEOxSFj+RZbvGfNZB
 2eG2om/CKQtYLDa5H658GJ66vKYf2t43+9XQrLskHa3r+79dmT11Vx/wDxtJmpIAMhQP
 OimMoDH4GuF6tMt7cgVf7MG3J9G17/CId67wvEodBt/deacBJd+pCwQvzk/3id1MychT
 iVHw==
X-Gm-Message-State: APjAAAVmXYFRTj4LJzb5USIZb5QJxa4yIAttXADcvH4UFZDhcBtnYpZ/
 jfQvqTgjTCDC8ppVI8vOP9P9gQ==
X-Google-Smtp-Source: APXvYqx4u48P7D0hPre5YEMGoaXfpZ8acovASUVVCyhr//cysNQMv+Ysps/0z7y+aCRmatNQNxbkkg==
X-Received: by 2002:a17:906:474a:: with SMTP id
 j10mr62322434ejs.104.1560544631399; 
 Fri, 14 Jun 2019 13:37:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:59 +0200
Message-Id: <20190614203615.12639-44-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3IsGjxwvwjG/F125ELsNZLYmQyUuSqFRg2uUCFaIB6o=;
 b=ks0QUHsL6EwBEnBclTbYrsG3tO/pK8G+RvqoqzmCDsqBEMP+HsQhkw2Yj0xOwK/TFA
 EY95HUrAEG65DB4TN+yotC1+bUv/QrMFUQ3iDM9qFNr9AIFxvPVvNroYJaKB8BRDm+0+
 eJaTp1+YntLXe9oM41YKQZsXvx/o/nJh8bdqA=
Subject: [Intel-gfx] [PATCH 43/59] drm/lima: Drop resv argument from
 lima_bo_create_struct
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Qiang Yu <yuq825@gmail.com>, lima@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgd2FzIG9ubHkgdXNlZCBmb3IgcHJpbWUgaW1wb3J0LCB3aGljaCBpcyBub3cgaGFuZGxlZCBi
eQpkcm1fcHJpbWUuYy4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgpDYzogUWlhbmcgWXUgPHl1cTgyNUBnbWFpbC5jb20+CkNjOiBsaW1hQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMg
ICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbV9wcmltZS5jIHwgMyAr
LS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfb2JqZWN0LmMgICAgfCA5ICsrKy0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9vYmplY3QuaCAgICB8IDMgKy0tCiA0IGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
Z2VtLmMKaW5kZXggNDc3YzBmNzY2NjYzLi5mZDFhMDI0NzAzZDIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGlt
YV9nZW0uYwpAQCAtMjQsNyArMjQsNyBAQCBpbnQgbGltYV9nZW1fY3JlYXRlX2hhbmRsZShzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJc3RydWN0IGxpbWFf
Ym8gKmJvOwogCXN0cnVjdCBsaW1hX2RldmljZSAqbGRldiA9IHRvX2xpbWFfZGV2KGRldik7CiAK
LQlibyA9IGxpbWFfYm9fY3JlYXRlKGxkZXYsIHNpemUsIGZsYWdzLCBOVUxMLCBOVUxMKTsKKwli
byA9IGxpbWFfYm9fY3JlYXRlKGxkZXYsIHNpemUsIGZsYWdzLCBOVUxMKTsKIAlpZiAoSVNfRVJS
KGJvKSkKIAkJcmV0dXJuIFBUUl9FUlIoYm8pOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbGltYS9saW1hX2dlbV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW1f
cHJpbWUuYwppbmRleCA5YzZkOWYxZGJhNTUuLmUzZWIyNTFlMGExMiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW1fcHJpbWUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
bGltYS9saW1hX2dlbV9wcmltZS5jCkBAIC0xOCw4ICsxOCw3IEBAIHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqbGltYV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKAogCXN0cnVjdCBsaW1hX2Rldmlj
ZSAqbGRldiA9IHRvX2xpbWFfZGV2KGRldik7CiAJc3RydWN0IGxpbWFfYm8gKmJvOwogCi0JYm8g
PSBsaW1hX2JvX2NyZWF0ZShsZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSwgMCwgc2d0LAotCQkJ
ICAgIGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKKwlibyA9IGxpbWFfYm9fY3JlYXRlKGxkZXYsIGF0
dGFjaC0+ZG1hYnVmLT5zaXplLCAwLCBzZ3QpOwogCWlmIChJU19FUlIoYm8pKQogCQlyZXR1cm4g
RVJSX0NBU1QoYm8pOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX29i
amVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9vYmplY3QuYwppbmRleCA1YzQxZjg1
OWE3MmYuLjg3MTIzYjFkMDgzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGlt
YV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX29iamVjdC5jCkBAIC0z
Myw4ICszMyw3IEBAIHZvaWQgbGltYV9ib19kZXN0cm95KHN0cnVjdCBsaW1hX2JvICpibykKIAlr
ZnJlZShibyk7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgbGltYV9ibyAqbGltYV9ib19jcmVhdGVfc3Ry
dWN0KHN0cnVjdCBsaW1hX2RldmljZSAqZGV2LCB1MzIgc2l6ZSwgdTMyIGZsYWdzLAotCQkJCQkg
ICAgIHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKnJlc3YpCitzdGF0aWMgc3RydWN0IGxpbWFf
Ym8gKmxpbWFfYm9fY3JlYXRlX3N0cnVjdChzdHJ1Y3QgbGltYV9kZXZpY2UgKmRldiwgdTMyIHNp
emUsIHUzMiBmbGFncykKIHsKIAlzdHJ1Y3QgbGltYV9ibyAqYm87CiAJaW50IGVycjsKQEAgLTQ3
LDcgKzQ2LDYgQEAgc3RhdGljIHN0cnVjdCBsaW1hX2JvICpsaW1hX2JvX2NyZWF0ZV9zdHJ1Y3Qo
c3RydWN0IGxpbWFfZGV2aWNlICpkZXYsIHUzMiBzaXplLAogCiAJbXV0ZXhfaW5pdCgmYm8tPmxv
Y2spOwogCUlOSVRfTElTVF9IRUFEKCZiby0+dmEpOwotCWJvLT5nZW0ucmVzdiA9IHJlc3Y7CiAK
IAllcnIgPSBkcm1fZ2VtX29iamVjdF9pbml0KGRldi0+ZGRldiwgJmJvLT5nZW0sIHNpemUpOwog
CWlmIChlcnIpIHsKQEAgLTU5LDE0ICs1NywxMyBAQCBzdGF0aWMgc3RydWN0IGxpbWFfYm8gKmxp
bWFfYm9fY3JlYXRlX3N0cnVjdChzdHJ1Y3QgbGltYV9kZXZpY2UgKmRldiwgdTMyIHNpemUsCiB9
CiAKIHN0cnVjdCBsaW1hX2JvICpsaW1hX2JvX2NyZWF0ZShzdHJ1Y3QgbGltYV9kZXZpY2UgKmRl
diwgdTMyIHNpemUsCi0JCQkgICAgICAgdTMyIGZsYWdzLCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwK
LQkJCSAgICAgICBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpyZXN2KQorCQkJICAgICAgIHUz
MiBmbGFncywgc3RydWN0IHNnX3RhYmxlICpzZ3QpCiB7CiAJaW50IGksIGVycjsKIAlzaXplX3Qg
bnBhZ2VzOwogCXN0cnVjdCBsaW1hX2JvICpibywgKnJldDsKIAotCWJvID0gbGltYV9ib19jcmVh
dGVfc3RydWN0KGRldiwgc2l6ZSwgZmxhZ3MsIHJlc3YpOworCWJvID0gbGltYV9ib19jcmVhdGVf
c3RydWN0KGRldiwgc2l6ZSwgZmxhZ3MpOwogCWlmIChJU19FUlIoYm8pKQogCQlyZXR1cm4gYm87
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfb2JqZWN0LmggYi9kcml2
ZXJzL2dwdS9kcm0vbGltYS9saW1hX29iamVjdC5oCmluZGV4IDY3Mzg3MjRhZmI3Yi4uMzFjYTJk
OGRjMGExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX29iamVjdC5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfb2JqZWN0LmgKQEAgLTI3LDggKzI3LDcgQEAg
dG9fbGltYV9ibyhzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIH0KIAogc3RydWN0IGxpbWFf
Ym8gKmxpbWFfYm9fY3JlYXRlKHN0cnVjdCBsaW1hX2RldmljZSAqZGV2LCB1MzIgc2l6ZSwKLQkJ
CSAgICAgICB1MzIgZmxhZ3MsIHN0cnVjdCBzZ190YWJsZSAqc2d0LAotCQkJICAgICAgIHN0cnVj
dCByZXNlcnZhdGlvbl9vYmplY3QgKnJlc3YpOworCQkJICAgICAgIHUzMiBmbGFncywgc3RydWN0
IHNnX3RhYmxlICpzZ3QpOwogdm9pZCBsaW1hX2JvX2Rlc3Ryb3koc3RydWN0IGxpbWFfYm8gKmJv
KTsKIHZvaWQgKmxpbWFfYm9fdm1hcChzdHJ1Y3QgbGltYV9ibyAqYm8pOwogdm9pZCBsaW1hX2Jv
X3Z1bm1hcChzdHJ1Y3QgbGltYV9ibyAqYm8pOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
