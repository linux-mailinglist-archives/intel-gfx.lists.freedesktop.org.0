Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 391943CB893
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 16:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D2D6E9A5;
	Fri, 16 Jul 2021 14:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37836E9A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 14:14:36 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id c197so10990086oib.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 07:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iwESnNdVb8Ql0T+r09B5hLFoFY4TsIMumU8Vn60f698=;
 b=vR+2D6eDT8yL3l+WGb2B0R9gPRTqbfdNRrFEPBcZ0AtwVHrvo4gIbmE78fLQGLUfAy
 mC+VW4oj54o1rX/qGxgbL2soI+6+aWB+OwumWJTUJhOx8ux0r6GC1dzeBp72rvLKisg3
 2oEcjN7AeHRiVUCAFJYm1DnimI/9euQr8GyNQXW2sc/aCBFDdGYbIzqI2+rxIsZGogTS
 KwRwRFJ2JjeMuXMBWcB0Od3qs22wIu0WvYvTAYGXSJ94uJc0X8ibg0rSkvIlJeGMzQVh
 7w/mJXSG2zoG50lR11NhFdl+4l22LbY3PFyIuitSeOqPTK6SfYz5+j5Ch/cXEdyn9Ndo
 KpGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iwESnNdVb8Ql0T+r09B5hLFoFY4TsIMumU8Vn60f698=;
 b=EnBnzej0vDB6S42N/se0lwWqlOKIDjzdf9X1GzunsPf+13NL4+UNnsUkA4dphXJhKk
 fjzNYEoSSMONISg3BpEWor1a8bXmdnFtiNQQmM6QS5TTkWMVWKVfBscsPDxrbiNygU0k
 utKQ3RlL6s+26f3pBGpdWpDZ0RQ9QKhKCOh+qmhm4v89IBaotURARJmyh6P6Mh8Axlnh
 LSdi+E85g915m04EdtykwqAOL/rUFCS2cxlA0GEJafYeYeQ5jMlCOH+0SLmN2AG67znN
 VKeFENIcCtYKBZBQvjPRwvttgZ1lrEhd/D1M10KuP2k91NQ017HqO7ddMAjThxzgCvHU
 ND3w==
X-Gm-Message-State: AOAM530+d3k0bjcOJN0KZcW3fC+fcFU8tWoYHgTDa77uMZQGWKnrW9TT
 xneOMs750zslf4qOSwmkDxoMHQqhv/AUjA==
X-Google-Smtp-Source: ABdhPJwF0zbCi/sMNX1FGANRLJiLGHHvLoNOWWNHG8I2wWswXkqMrViZbP5CpdSCLtZStbDieU94Kw==
X-Received: by 2002:aca:aaca:: with SMTP id t193mr12208413oie.94.1626444875876; 
 Fri, 16 Jul 2021 07:14:35 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id v42sm1852266ott.70.2021.07.16.07.14.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Jul 2021 07:14:35 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 16 Jul 2021 09:14:26 -0500
Message-Id: <20210716141426.1904528-8-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210716141426.1904528-1-jason@jlekstrand.net>
References: <20210716141426.1904528-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Migrate to system at dma-buf
 attach time (v6)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgoKVW50aWwgd2Ugc3VwcG9ydCBwMnAgZG1hIG9yIGFzIGEgY29tcGxlbWVudCB0byB0aGF0LCBt
aWdyYXRlIGRhdGEKdG8gc3lzdGVtIG1lbW9yeSBhdCBkbWEtYnVmIGF0dGFjaCB0aW1lIGlmIHBv
c3NpYmxlLgoKdjI6Ci0gUmViYXNlIG9uIGR5bmFtaWMgZXhwb3J0ZXIuIFVwZGF0ZSB0aGUgaWd0
X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIKICBzZWxmdGVzdCB0byBtaWdyYXRlIGlmIHdlIGFy
ZSBMTUVNIGNhcGFibGUuCnYzOgotIE1pZ3JhdGUgYWxzbyBpbiB0aGUgcGluKCkgY2FsbGJhY2su
CnY0OgotIE1pZ3JhdGUgaW4gYXR0YWNoCnY1OiAoamFzb24pCi0gTG9jayBhcm91bmQgdGhlIG1p
Z3JhdGlvbgp2NjogKGphc29uKQotIE1vdmUgdGhlIGNhbl9taWdyYXRlIGNoZWNrIG91dHNpZGUg
dGhlIGxvY2sKLSBSZXdvcmsgdGhlIHNlbGZ0ZXN0cyB0byB0ZXN0IG1vcmUgbWlncmF0aW9uIGNv
bmRpdGlvbnMuICBJbgogIHBhcnRpY3VsYXIsIFNNRU0sIExNRU0sIGFuZCBMTUVNK1NNRU0gYXJl
IGFsbCBjaGVja2VkLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIEouIFJ1aGwg
PG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90
IDxsa3BAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxl
a3N0cmFuZC5uZXQ+ClJldmlld2VkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFu
ZC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jICAg
IHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICB8
IDIzICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAg
fCAgNCArCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYyAgfCA4
OSArKysrKysrKysrKysrKysrKystCiA0IGZpbGVzIGNoYW5nZWQsIDExMiBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jcmVhdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jcmVh
dGUuYwppbmRleCAwMzllNGYzYjM5Yzc5Li40MWM0Y2QzZTFlYTAxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jCkBAIC04Miw3ICs4Miw3IEBAIHN0YXRpYyBp
bnQgaTkxNV9nZW1fcHVibGlzaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCXJl
dHVybiAwOwogfQogCi1zdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgorc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKgogaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV91c2VyKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgc2l6ZSwKIAkJCSAgICBzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbiAqKnBsYWNlbWVudHMsCiAJCQkgICAgdW5zaWduZWQgaW50IG5fcGxhY2Vt
ZW50cykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFi
dWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwppbmRleCA5
YTY1NWY2OWEwNjcxLi41ZDQzOGI5NTgyNmI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC0xNzAsOCArMTcwLDI5IEBAIHN0YXRpYyBpbnQgaTkxNV9n
ZW1fZG1hYnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCQkJCSAgc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmogPSBkbWFfYnVmX3RvX29iaihkbWFidWYpOworCXN0cnVjdCBpOTE1X2dlbV93d19jdHgg
d3c7CisJaW50IGVycjsKKworCWlmICghaTkxNV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRlKG9iaiwg
SU5URUxfUkVHSU9OX1NNRU0pKQorCQlyZXR1cm4gLUVPUE5PVFNVUFA7CisKKwlmb3JfaTkxNV9n
ZW1fd3coJnd3LCBlcnIsIHRydWUpIHsKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xvY2sob2Jq
LCAmd3cpOworCQlpZiAoZXJyKQorCQkJY29udGludWU7CisKKwkJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X21pZ3JhdGUob2JqLCAmd3csIElOVEVMX1JFR0lPTl9TTUVNKTsKKwkJaWYgKGVycikKKwkJ
CWNvbnRpbnVlOwogCi0JcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfdW5sb2NrZWQo
b2JqKTsKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfbWlncmF0aW9uKG9iaiwgMCk7CisJ
CWlmIChlcnIpCisJCQljb250aW51ZTsKKworCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3Bh
Z2VzKG9iaik7CisJfQorCisJcmV0dXJuIGVycjsKIH0KIAogc3RhdGljIHZvaWQgaTkxNV9nZW1f
ZG1hYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IDhiZTRmYWRlZWU0ODcuLmZiYWU1M2JkNDYz
ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTYx
LDYgKzYxLDEwIEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCiBpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX3NobWVtX2Zyb21fZGF0YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKIAkJCQkgICAgICAgY29uc3Qgdm9pZCAqZGF0YSwgcmVzb3VyY2Vfc2l6ZV90IHNpemUpOwor
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgoraTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV91c2Vy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgc2l6ZSwKKwkJCSAgICBzdHJ1Y3Qg
aW50ZWxfbWVtb3J5X3JlZ2lvbiAqKnBsYWNlbWVudHMsCisJCQkgICAgdW5zaWduZWQgaW50IG5f
cGxhY2VtZW50cyk7CiAKIGV4dGVybiBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9v
cHMgaTkxNV9nZW1fc2htZW1fb3BzOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYwppbmRleCA0NDUxYmJiNDkxN2U0Li43Yjc2
NDdlN2UyMjBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX2RtYWJ1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTg1LDkgKzg1LDYyIEBAIHN0YXRpYyBpbnQgaWd0X2Rt
YWJ1Zl9pbXBvcnRfc2VsZih2b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAotc3RhdGljIGlu
dCBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcih2b2lkICphcmcpCitzdGF0aWMgaW50IGln
dF9kbWFidWZfaW1wb3J0X3NhbWVfZHJpdmVyX2xtZW0odm9pZCAqYXJnKQogewogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9u
ICpsbWVtID0gaTkxNS0+bW0ucmVnaW9uc1tJTlRFTF9SRUdJT05fTE1FTV07CisJc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmltcG9ydDsK
KwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOworCWludCBlcnI7CisKKwlpZiAoIWk5MTUtPm1tLnJl
Z2lvbnNbSU5URUxfUkVHSU9OX0xNRU1dKQorCQlyZXR1cm4gMDsKKworCWZvcmNlX2RpZmZlcmVu
dF9kZXZpY2VzID0gdHJ1ZTsKKworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfdXNlcihp
OTE1LCBQQUdFX1NJWkUsICZsbWVtLCAxKTsKKwlpZiAoSVNfRVJSKG9iaikpIHsKKwkJcHJfZXJy
KCJpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3VzZXIgZmFpbGVkIHdpdGggZXJyPSVkXG4iLAorCQkg
ICAgICAgKGludClQVFJfRVJSKGRtYWJ1ZikpOworCQllcnIgPSBQVFJfRVJSKG9iaik7CisJCWdv
dG8gb3V0X3JldDsKKwl9CisKKwlkbWFidWYgPSBpOTE1X2dlbV9wcmltZV9leHBvcnQoJm9iai0+
YmFzZSwgMCk7CisJaWYgKElTX0VSUihkbWFidWYpKSB7CisJCXByX2VycigiaTkxNV9nZW1fcHJp
bWVfZXhwb3J0IGZhaWxlZCB3aXRoIGVycj0lZFxuIiwKKwkJICAgICAgIChpbnQpUFRSX0VSUihk
bWFidWYpKTsKKwkJZXJyID0gUFRSX0VSUihkbWFidWYpOworCQlnb3RvIG91dDsKKwl9CisKKwkv
KiBXZSBleHBlY3QgYW4gaW1wb3J0IG9mIGFuIExNRU0tb25seSBvYmplY3QgdG8gZmFpbCB3aXRo
CisJICogLUVPUE5PVFNVUFAgYmVjYXVzZSBpdCBjYW4ndCBiZSBtaWdyYXRlZCB0byBTTUVNLgor
CSAqLworCWltcG9ydCA9IGk5MTVfZ2VtX3ByaW1lX2ltcG9ydCgmaTkxNS0+ZHJtLCBkbWFidWYp
OworCWlmICghSVNfRVJSKGltcG9ydCkpIHsKKwkJZHJtX2dlbV9vYmplY3RfcHV0KGltcG9ydCk7
CisJCXByX2VycigiaTkxNV9nZW1fcHJpbWVfaW1wb3J0IHN1Y2NlZWRlZCB3aGVuIGl0IHNob3Vs
ZG4ndCBoYXZlXG4iKTsKKwkJZXJyID0gLUVJTlZBTDsKKwl9IGVsc2UgaWYgKFBUUl9FUlIoaW1w
b3J0KSAhPSAtRU9QTk9UU1VQUCkgeworCQlwcl9lcnIoImk5MTVfZ2VtX3ByaW1lX2ltcG9ydCBm
YWlsZWQgd2l0aCB0aGUgd3JvbmcgZXJyPSVkXG4iLAorCQkgICAgICAgKGludClQVFJfRVJSKGlt
cG9ydCkpOworCQllcnIgPSBQVFJfRVJSKGltcG9ydCk7CisJfQorCisJZG1hX2J1Zl9wdXQoZG1h
YnVmKTsKK291dDoKKwlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CitvdXRfcmV0OgorCWZvcmNl
X2RpZmZlcmVudF9kZXZpY2VzID0gZmFsc2U7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGlu
dCBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKKwkJCQkJIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICoqcmVnaW9ucywKKwkJCQkJ
IHVuc2lnbmVkIGludCBudW1fcmVnaW9ucykKK3sKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqLCAqaW1wb3J0X29iajsKIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmltcG9ydDsKIAlz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOwpAQCAtOTcsOSArMTUwLDE1IEBAIHN0YXRpYyBpbnQgaWd0
X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIodm9pZCAqYXJnKQogCWludCBlcnI7CiAKIAlmb3Jj
ZV9kaWZmZXJlbnRfZGV2aWNlcyA9IHRydWU7Ci0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9zaG1lbShpOTE1LCBQQUdFX1NJWkUpOwotCWlmIChJU19FUlIob2JqKSkKKworCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfdXNlcihpOTE1LCBQQUdFX1NJWkUsCisJCQkJCSAgcmVnaW9u
cywgbnVtX3JlZ2lvbnMpOworCWlmIChJU19FUlIob2JqKSkgeworCQlwcl9lcnIoImk5MTVfZ2Vt
X29iamVjdF9jcmVhdGVfdXNlciBmYWlsZWQgd2l0aCBlcnI9JWRcbiIsCisJCSAgICAgICAoaW50
KVBUUl9FUlIoZG1hYnVmKSk7CisJCWVyciA9IFBUUl9FUlIob2JqKTsKIAkJZ290byBvdXRfcmV0
OworCX0KIAogCWRtYWJ1ZiA9IGk5MTVfZ2VtX3ByaW1lX2V4cG9ydCgmb2JqLT5iYXNlLCAwKTsK
IAlpZiAoSVNfRVJSKGRtYWJ1ZikpIHsKQEAgLTE3NCw2ICsyMzMsMjYgQEAgc3RhdGljIGludCBp
Z3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcih2b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0K
IAorc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcl9zbWVtKHZvaWQgKmFy
ZykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKKwlzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqc21lbSA9IGk5MTUtPm1tLnJlZ2lvbnNbSU5URUxfUkVHSU9OX1NN
RU1dOworCXJldHVybiBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcihpOTE1LCAmc21lbSwg
MSk7Cit9CisKK3N0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXJfbG1lbV9z
bWVtKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsK
KwlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqcmVnaW9uc1syXTsKKworCWlmICghaTkxNS0+
bW0ucmVnaW9uc1tJTlRFTF9SRUdJT05fTE1FTV0pCisJCXJldHVybiAwOworCisJcmVnaW9uc1sw
XSA9IGk5MTUtPm1tLnJlZ2lvbnNbSU5URUxfUkVHSU9OX0xNRU1dOworCXJlZ2lvbnNbMV0gPSBp
OTE1LT5tbS5yZWdpb25zW0lOVEVMX1JFR0lPTl9TTUVNXTsKKwlyZXR1cm4gaWd0X2RtYWJ1Zl9p
bXBvcnRfc2FtZV9kcml2ZXIoaTkxNSwgcmVnaW9ucywgMik7Cit9CisKIHN0YXRpYyBpbnQgaWd0
X2RtYWJ1Zl9pbXBvcnQodm9pZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gYXJnOwpAQCAtMzg0LDcgKzQ2Myw5IEBAIGludCBpOTE1X2dlbV9kbWFidWZfbGl2ZV9z
ZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RhdGljIGNvbnN0
IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKIAkJU1VCVEVTVChpZ3RfZG1hYnVmX2V4
cG9ydCksCi0JCVNVQlRFU1QoaWd0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIpLAorCQlTVUJU
RVNUKGlndF9kbWFidWZfaW1wb3J0X3NhbWVfZHJpdmVyX2xtZW0pLAorCQlTVUJURVNUKGlndF9k
bWFidWZfaW1wb3J0X3NhbWVfZHJpdmVyX3NtZW0pLAorCQlTVUJURVNUKGlndF9kbWFidWZfaW1w
b3J0X3NhbWVfZHJpdmVyX2xtZW1fc21lbSksCiAJfTsKIAogCXJldHVybiBpOTE1X3N1YnRlc3Rz
KHRlc3RzLCBpOTE1KTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
