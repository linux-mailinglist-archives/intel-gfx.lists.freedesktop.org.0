Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28A345495
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 08:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93744892FF;
	Fri, 14 Jun 2019 06:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCD8892B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 06:18:33 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id p26so1869658edr.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 23:18:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3C/qUXp8aczHmHtf8/5/PFxFflnNtEfB9brG9+Ex3bU=;
 b=J7vWDMwokn6C2V/TuoZZXwsPhxuJ8Kh3IQ3wTA74alQ0fn1wLnutwEO22+aU7FT63z
 U8xLfAGExDkkfPiFLhJw8WJN7ydpbIqoIHroW+hEDEm36X7wd59lT4d3+G4xSg1jPdfc
 uMePDP3rLI3mLnwXnOTQpskUX52XkzGo9pX3rVThmxRGjtUO3FEPxPyCRPRPtyPU4d6W
 jn/I3sWDqHPOT5U+UPnnPlAEDtHhJRqnL06YrKj2NRBT52C7ljD56DEgnvGM1n6QnNDN
 fYen7FLqkcw4AjePKtXOtyI6LvteOIqUGGFIEmtx3tgSWTyfOPDeErFIO6iKdZqX8Zb9
 Lr4A==
X-Gm-Message-State: APjAAAW67CeEs2hteUPRSNLnoiQrWDG/CZi2eQN+JG2RKsULiuQQS6cp
 ksqe3ucgZKWC+Cdz8fSzlHYt9Q==
X-Google-Smtp-Source: APXvYqxkVdkll9QjFd6tFY0aZxoRukIgkdwq8DHzIg/GYLU7EFMLsvwb1i6Apq4/QTxK8bUDlQhrMw==
X-Received: by 2002:a50:9107:: with SMTP id e7mr13817081eda.280.1560493112131; 
 Thu, 13 Jun 2019 23:18:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id s27sm576873eda.36.2019.06.13.23.18.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 23:18:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 08:17:23 +0200
Message-Id: <20190614061723.1173-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3C/qUXp8aczHmHtf8/5/PFxFflnNtEfB9brG9+Ex3bU=;
 b=E0RUy5xsqdQAaLwT747kPTnkJmPd2WRa8OFKVrhckgEHmxNYeP3/slvqo2oUBXBnhq
 wHI3Rr0P3CV4wWvjBpBRjkGD1Ek0DM2DgE9LMx9Ftsd0PHOJ+b9IiQO33/FwehNE7V8H
 UJTIsJS+YTCslqneojLNzq8zVamv1l62qOHSM=
Subject: [Intel-gfx] [PATCH] drm/kms: Catch mode_object lifetime errors
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25seSBkeW5hbWljIG1vZGUgb2JqZWN0cywgaS5lLiB0aG9zZSB3aGljaCBhcmUgcmVmY291bnRl
ZCBhbmQgaGF2ZSBhIGZyZWUKY2FsbGJhY2ssIGNhbiBiZSBhZGRlZCB3aGlsZSB0aGUgb3ZlcmFs
bCBkcm1fZGV2aWNlIGlzIHZpc2libGUgdG8KdXNlcnNwYWNlLiBBbGwgb3RoZXJzIG11c3QgYmUg
YWRkZWQgYmVmb3JlIGRybV9kZXZfcmVnaXN0ZXIgYW5kCnJlbW92ZWQgYWZ0ZXIgZHJtX2Rldl91
bnJlZ2lzdGVyLgoKU21hbGwgaXNzdWUgYXJvdW5kIGRyaXZlcnMgc3RpbGwgdXNpbmcgdGhlIGxv
YWQvdW5sb2FkIGNhbGxiYWNrcywgd2UKbmVlZCB0byBtYWtlIHN1cmUgd2Ugc2V0IGRldi0+cmVn
aXN0ZXJlZCBzbyB0aGF0IGxvYWQvdW5sb2FkIGNvZGUgaW4KdGhlc2UgY2FsbGJhY2tzIGRvZXNu
J3QgdHJpZ2dlciBmYWxzZSB3YXJuaW5ncy4gT25seSBhIHNtYWxsCmFkanVzdGVtZW50IGluIGRy
bV9kZXZfcmVnaXN0ZXIgd2FzIG5lZWRlZC4KCk1vdGl2YXRlZCBieSBzb21lIGlyYyBkaXNjdXNz
aW9ucyBhYm91dCBvYmplY3QgaWRzIG9mIGR5bmFtaWMgb2JqZWN0cwpsaWtlIGJsb2JzIGJlY29t
ZSBpbnZhbGlkLCBhbmQgbWUgZ29pbmcgb24gYSBiaXQgYW4gYXVkaXQgc3ByZWUuCgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX2Rydi5jICAgICAgICAgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fbW9kZV9vYmplY3QuYyB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHJ2LmMKaW5kZXggY2I2ZjAyNDVkZTdjLi40OGM4NGUz
ZTE5MzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHJ2LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9kcnYuYwpAQCAtOTk3LDE0ICs5OTcsMTQgQEAgaW50IGRybV9kZXZfcmVn
aXN0ZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgbG9uZyBmbGFncykKIAlpZiAo
cmV0KQogCQlnb3RvIGVycl9taW5vcnM7CiAKLQlkZXYtPnJlZ2lzdGVyZWQgPSB0cnVlOwotCiAJ
aWYgKGRldi0+ZHJpdmVyLT5sb2FkKSB7CiAJCXJldCA9IGRldi0+ZHJpdmVyLT5sb2FkKGRldiwg
ZmxhZ3MpOwogCQlpZiAocmV0KQogCQkJZ290byBlcnJfbWlub3JzOwogCX0KIAorCWRldi0+cmVn
aXN0ZXJlZCA9IHRydWU7CisKIAlpZiAoZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShkZXYsIERSSVZF
Ul9NT0RFU0VUKSkKIAkJZHJtX21vZGVzZXRfcmVnaXN0ZXJfYWxsKGRldik7CiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fbW9kZV9vYmplY3QuYwppbmRleCAxYzZlNTExMzU5NjIuLmMzNTViYThlNmQ1ZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fbW9kZV9vYmplY3QuYwpAQCAtNDIsNiArNDIsOCBAQCBpbnQgX19kcm1fbW9kZV9v
YmplY3RfYWRkKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fbW9kZV9vYmplY3Qg
Km9iaiwKIHsKIAlpbnQgcmV0OwogCisJV0FSTl9PTihkZXYtPnJlZ2lzdGVyZWQgJiYgIW9ial9m
cmVlX2NiKTsKKwogCW11dGV4X2xvY2soJmRldi0+bW9kZV9jb25maWcuaWRyX211dGV4KTsKIAly
ZXQgPSBpZHJfYWxsb2MoJmRldi0+bW9kZV9jb25maWcub2JqZWN0X2lkciwgcmVnaXN0ZXJfb2Jq
ID8gb2JqIDogTlVMTCwKIAkJCTEsIDAsIEdGUF9LRVJORUwpOwpAQCAtMTAyLDYgKzEwNCw4IEBA
IHZvaWQgZHJtX21vZGVfb2JqZWN0X3JlZ2lzdGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiB2
b2lkIGRybV9tb2RlX29iamVjdF91bnJlZ2lzdGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CQkJc3RydWN0IGRybV9tb2RlX29iamVjdCAqb2JqZWN0KQogeworCVdBUk5fT04oZGV2LT5yZWdp
c3RlcmVkICYmICFvYmplY3QtPmZyZWVfY2IpOworCiAJbXV0ZXhfbG9jaygmZGV2LT5tb2RlX2Nv
bmZpZy5pZHJfbXV0ZXgpOwogCWlmIChvYmplY3QtPmlkKSB7CiAJCWlkcl9yZW1vdmUoJmRldi0+
bW9kZV9jb25maWcub2JqZWN0X2lkciwgb2JqZWN0LT5pZCk7Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
