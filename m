Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3152126D7F0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 11:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FAA76EB94;
	Thu, 17 Sep 2020 09:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D3D6EB9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 09:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id CA7923F27D;
 Thu, 17 Sep 2020 11:44:28 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=eegnGon/; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWqXGLDEf3Ol; Thu, 17 Sep 2020 11:44:28 +0200 (CEST)
Received: by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 7C2163F23E;
 Thu, 17 Sep 2020 11:44:27 +0200 (CEST)
Received: from thellstr-mobl2.intel.com (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 23742361CDA;
 Thu, 17 Sep 2020 11:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1600335867; bh=Msky95sIrmtD+//yynIhqc6+3ECMT5dIykHTfNHZloE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eegnGon/w3ZAgMZgp0W+SAlg4Qz9YmLlX+w3NlpAW8UsXeukCrao1GxZGhFFae0e9
 BYkQHGVgHokQqviz+5y2y9u3iGhWFOFE5z5y7OtJ4lsVnOTDxWKCPQfR6xRbB13vBX
 tw312eHn1+IxuMoOU/wiI3Kqa7RmE05CweMW0z70=
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28Intel=29?=
 <thomas_os@shipmail.org>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Sep 2020 11:44:08 +0200
Message-Id: <20200917094409.193697-2-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200917094409.193697-1-thomas_os@shipmail.org>
References: <20200917094409.193697-1-thomas_os@shipmail.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 1/2] drm/i915: Break out dma_resv ww locking
 utilities to separate files
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
Cc: maarten.lankhorst@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKQXMg
d2UncmUgYWJvdXQgdG8gYWRkIG1vcmUgd3ctcmVsYXRlZCBmdW5jdGlvbmFsaXR5LApicmVhayBv
dXQgdGhlIGRtYV9yZXN2IHd3IGxvY2tpbmcgdXRpbGl0aWVzIHRvIHRoZWlyIG93biBmaWxlcwoK
U2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgfCAg
MSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggIHwgIDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuaCB8ICAxICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgfCA2NCAtLS0tLS0tLS0tLS0t
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggICAgICAgICAgICAgfCAxNSAt
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYyAgICAgICAgICB8IDcyICsr
KysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaCAg
ICAgICAgICB8IDIzICsrKysrKysKIDcgZmlsZXMgY2hhbmdlZCwgOTggaW5zZXJ0aW9ucygrKSwg
NzkgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fd3cuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX3d3LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDU4ZDEyOWI1YTY1YS4uNzE1MDNi
YzI2ZDk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtNDUsNiArNDUsNyBAQCBpOTE1LXkgKz0g
aTkxNV9kcnYubyBcCiAJICBpOTE1X3N3aXRjaGVyb28ubyBcCiAJICBpOTE1X3N5c2ZzLm8gXAog
CSAgaTkxNV91dGlscy5vIFwKKwkgIGk5MTVfZ2VtX3d3Lm8gXAogCSAgaW50ZWxfZGV2aWNlX2lu
Zm8ubyBcCiAJICBpbnRlbF9kcmFtLm8gXAogCSAgaW50ZWxfbWVtb3J5X3JlZ2lvbi5vIFwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAppbmRleCBmMDg0YTI1YzUx
MjEuLmNkNjRiMWZkZjUzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuaApAQCAtMTUsNiArMTUsNyBAQAogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdF90eXBl
cy5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2d0dC5oIgogI2luY2x1ZGUgImk5MTVfdm1hX3R5cGVz
LmgiCisjaW5jbHVkZSAiaTkxNV9nZW1fd3cuaCIKIAogdm9pZCBpOTE1X2dlbV9pbml0X19vYmpl
Y3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JlbmRlcnN0YXRlLmgKaW5kZXggNzEzYWExZTg2YzgwLi5kOWRiODMzYjg3
M2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlbmRlcnN0YXRl
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuaApAQCAt
MjYsNiArMjYsNyBAQAogCiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KICNpbmNsdWRlICJpOTE1
X2dlbS5oIgorI2luY2x1ZGUgImk5MTVfZ2VtX3d3LmgiCiAKIHN0cnVjdCBpOTE1X3JlcXVlc3Q7
CiBzdHJ1Y3QgaW50ZWxfY29udGV4dDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDNmODNh
YzcyOTY0NC4uZmExYjc4NjFiOTU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTEzNjUs
NzAgKzEzNjUsNiBAQCBpbnQgaTkxNV9nZW1fb3BlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgc3RydWN0IGRybV9maWxlICpmaWxlKQogCXJldHVybiByZXQ7CiB9CiAKLXZvaWQgaTkx
NV9nZW1fd3dfY3R4X2luaXQoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3csIGJvb2wgaW50cikK
LXsKLQl3d19hY3F1aXJlX2luaXQoJnd3LT5jdHgsICZyZXNlcnZhdGlvbl93d19jbGFzcyk7Ci0J
SU5JVF9MSVNUX0hFQUQoJnd3LT5vYmpfbGlzdCk7Ci0Jd3ctPmludHIgPSBpbnRyOwotCXd3LT5j
b250ZW5kZWQgPSBOVUxMOwotfQotCi1zdGF0aWMgdm9pZCBpOTE1X2dlbV93d19jdHhfdW5sb2Nr
X2FsbChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqOwotCi0Jd2hpbGUgKChvYmogPSBsaXN0X2ZpcnN0X2VudHJ5X29yX251bGwo
Jnd3LT5vYmpfbGlzdCwgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QsIG9ial9saW5rKSkpIHsK
LQkJaWYgKFdBUk5fT04oIWtyZWZfcmVhZCgmb2JqLT5iYXNlLnJlZmNvdW50KSkpIHsKLQkJCXVu
c2lnbmVkIGxvbmcgKmVudHJpZXM7Ci0JCQl1bnNpZ25lZCBpbnQgbnJfZW50cmllczsKLQotCQkJ
bnJfZW50cmllcyA9IHN0YWNrX2RlcG90X2ZldGNoKG9iai0+YnQsICZlbnRyaWVzKTsKLQkJCXN0
YWNrX3RyYWNlX3ByaW50KGVudHJpZXMsIG5yX2VudHJpZXMsIDQpOwotCQl9Ci0KLQkJb2JqLT5i
dCA9IDA7Ci0JCWxpc3RfZGVsKCZvYmotPm9ial9saW5rKTsKLQkJaTkxNV9nZW1fb2JqZWN0X3Vu
bG9jayhvYmopOwotCX0KLX0KLQotdm9pZCBpOTE1X2dlbV93d191bmxvY2tfc2luZ2xlKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCi17Ci0JbGlzdF9kZWwoJm9iai0+b2JqX2xpbmsp
OwotCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKLX0KLQotdm9pZCBpOTE1X2dlbV93d19j
dHhfZmluaShzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKLXsKLQlpOTE1X2dlbV93d19jdHhf
dW5sb2NrX2FsbCh3dyk7Ci0JV0FSTl9PTih3dy0+Y29udGVuZGVkKTsKLQl3d19hY3F1aXJlX2Zp
bmkoJnd3LT5jdHgpOwotfQotCi1pbnQgX19tdXN0X2NoZWNrIGk5MTVfZ2VtX3d3X2N0eF9iYWNr
b2ZmKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3KQotewotCWludCByZXQgPSAwOwotCi0JaWYg
KFdBUk5fT04oIXd3LT5jb250ZW5kZWQpKQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCWk5MTVfZ2Vt
X3d3X2N0eF91bmxvY2tfYWxsKHd3KTsKLQlpZiAod3ctPmludHIpCi0JCXJldCA9IGRtYV9yZXN2
X2xvY2tfc2xvd19pbnRlcnJ1cHRpYmxlKHd3LT5jb250ZW5kZWQtPmJhc2UucmVzdiwgJnd3LT5j
dHgpOwotCWVsc2UKLQkJZG1hX3Jlc3ZfbG9ja19zbG93KHd3LT5jb250ZW5kZWQtPmJhc2UucmVz
diwgJnd3LT5jdHgpOwotCi0JaWYgKCFyZXQpIHsKLQkJbGlzdF9hZGRfdGFpbCgmd3ctPmNvbnRl
bmRlZC0+b2JqX2xpbmssICZ3dy0+b2JqX2xpc3QpOwotCQl3dy0+Y29udGVuZGVkLT5idCA9IHd3
LT5jb250ZW5kZWRfYnQ7Ci0JfQotCi0Jd3ctPmNvbnRlbmRlZCA9IE5VTEw7Ci0Jd3ctPmNvbnRl
bmRlZF9idCA9IDA7Ci0KLQlyZXR1cm4gcmV0OwotfQotCiAjaWYgSVNfRU5BQkxFRChDT05GSUdf
RFJNX0k5MTVfU0VMRlRFU1QpCiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5j
IgogI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X2dlbS5jIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgK
aW5kZXggNGQ1MGFmYWI0M2YyLi5kYjBiMjgzNTA5NWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
aApAQCAtMjcsOCArMjcsNiBAQAogCiAjaW5jbHVkZSA8bGludXgvYnVnLmg+CiAjaW5jbHVkZSA8
bGludXgvaW50ZXJydXB0Lmg+Ci0jaW5jbHVkZSA8bGludXgvc3RhY2tkZXBvdC5oPgotI2luY2x1
ZGUgPGxpbnV4L3N0YWNrdHJhY2UuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgogCiAjaW5j
bHVkZSAiaTkxNV91dGlscy5oIgpAQCAtMTE3LDE3ICsxMTUsNCBAQCBzdGF0aWMgaW5saW5lIGJv
b2wgX190YXNrbGV0X2lzX3NjaGVkdWxlZChzdHJ1Y3QgdGFza2xldF9zdHJ1Y3QgKnQpCiAJcmV0
dXJuIHRlc3RfYml0KFRBU0tMRVRfU1RBVEVfU0NIRUQsICZ0LT5zdGF0ZSk7CiB9CiAKLXN0cnVj
dCBpOTE1X2dlbV93d19jdHggewotCXN0cnVjdCB3d19hY3F1aXJlX2N0eCBjdHg7Ci0Jc3RydWN0
IGxpc3RfaGVhZCBvYmpfbGlzdDsKLQlib29sIGludHI7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKmNvbnRlbmRlZDsKLQlkZXBvdF9zdGFja19oYW5kbGVfdCBjb250ZW5kZWRfYnQ7Ci19
OwotCi12b2lkIGk5MTVfZ2VtX3d3X2N0eF9pbml0KHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0
eCwgYm9vbCBpbnRyKTsKLXZvaWQgaTkxNV9nZW1fd3dfY3R4X2Zpbmkoc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCAqY3R4KTsKLWludCBfX211c3RfY2hlY2sgaTkxNV9nZW1fd3dfY3R4X2JhY2tvZmYo
c3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqY3R4KTsKLXZvaWQgaTkxNV9nZW1fd3dfdW5sb2NrX3Np
bmdsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKLQogI2VuZGlmIC8qIF9fSTkx
NV9HRU1fSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93
dy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYwpuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjM0OTBiNzJjZjYxMwotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmMKQEAgLTAsMCArMSw3MiBAQAorLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIElu
dGVsIENvcnBvcmF0aW9uCisgKi8KKyNpbmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPgorI2luY2x1
ZGUgPGxpbnV4L3N0YWNrdHJhY2UuaD4KKyNpbmNsdWRlICJpOTE1X2dlbV93dy5oIgorI2luY2x1
ZGUgImdlbS9pOTE1X2dlbV9vYmplY3QuaCIKKwordm9pZCBpOTE1X2dlbV93d19jdHhfaW5pdChz
dHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dywgYm9vbCBpbnRyKQoreworCXd3X2FjcXVpcmVfaW5p
dCgmd3ctPmN0eCwgJnJlc2VydmF0aW9uX3d3X2NsYXNzKTsKKwlJTklUX0xJU1RfSEVBRCgmd3ct
Pm9ial9saXN0KTsKKwl3dy0+aW50ciA9IGludHI7CisJd3ctPmNvbnRlbmRlZCA9IE5VTEw7Cit9
CisKK3N0YXRpYyB2b2lkIGk5MTVfZ2VtX3d3X2N0eF91bmxvY2tfYWxsKHN0cnVjdCBpOTE1X2dl
bV93d19jdHggKnd3KQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisKKwl3
aGlsZSAoKG9iaiA9IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVsbCgmd3ctPm9ial9saXN0LCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCwgb2JqX2xpbmspKSkgeworCQlpZiAoV0FSTl9PTigha3Jl
Zl9yZWFkKCZvYmotPmJhc2UucmVmY291bnQpKSkgeworCQkJdW5zaWduZWQgbG9uZyAqZW50cmll
czsKKwkJCXVuc2lnbmVkIGludCBucl9lbnRyaWVzOworCisJCQlucl9lbnRyaWVzID0gc3RhY2tf
ZGVwb3RfZmV0Y2gob2JqLT5idCwgJmVudHJpZXMpOworCQkJc3RhY2tfdHJhY2VfcHJpbnQoZW50
cmllcywgbnJfZW50cmllcywgNCk7CisJCX0KKworCQlvYmotPmJ0ID0gMDsKKwkJbGlzdF9kZWwo
Jm9iai0+b2JqX2xpbmspOworCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJfQorfQor
Cit2b2lkIGk5MTVfZ2VtX3d3X3VubG9ja19zaW5nbGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKK3sKKwlsaXN0X2RlbCgmb2JqLT5vYmpfbGluayk7CisJaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhvYmopOworfQorCit2b2lkIGk5MTVfZ2VtX3d3X2N0eF9maW5pKHN0cnVjdCBpOTE1
X2dlbV93d19jdHggKnd3KQoreworCWk5MTVfZ2VtX3d3X2N0eF91bmxvY2tfYWxsKHd3KTsKKwlX
QVJOX09OKHd3LT5jb250ZW5kZWQpOworCXd3X2FjcXVpcmVfZmluaSgmd3ctPmN0eCk7Cit9CisK
K2ludCBfX211c3RfY2hlY2sgaTkxNV9nZW1fd3dfY3R4X2JhY2tvZmYoc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCAqd3cpCit7CisJaW50IHJldCA9IDA7CisKKwlpZiAoV0FSTl9PTighd3ctPmNvbnRl
bmRlZCkpCisJCXJldHVybiAtRUlOVkFMOworCisJaTkxNV9nZW1fd3dfY3R4X3VubG9ja19hbGwo
d3cpOworCWlmICh3dy0+aW50cikKKwkJcmV0ID0gZG1hX3Jlc3ZfbG9ja19zbG93X2ludGVycnVw
dGlibGUod3ctPmNvbnRlbmRlZC0+YmFzZS5yZXN2LCAmd3ctPmN0eCk7CisJZWxzZQorCQlkbWFf
cmVzdl9sb2NrX3Nsb3cod3ctPmNvbnRlbmRlZC0+YmFzZS5yZXN2LCAmd3ctPmN0eCk7CisKKwlp
ZiAoIXJldCkgeworCQlsaXN0X2FkZF90YWlsKCZ3dy0+Y29udGVuZGVkLT5vYmpfbGluaywgJnd3
LT5vYmpfbGlzdCk7CisJCXd3LT5jb250ZW5kZWQtPmJ0ID0gd3ctPmNvbnRlbmRlZF9idDsKKwl9
CisKKwl3dy0+Y29udGVuZGVkID0gTlVMTDsKKwl3dy0+Y29udGVuZGVkX2J0ID0gMDsKKworCXJl
dHVybiByZXQ7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93
dy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjk0ZmRmOGM1Zjg5YgotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgKQEAgLTAsMCArMSwyMyBAQAorLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDIw
IEludGVsIENvcnBvcmF0aW9uCisgKi8KKyNpZm5kZWYgX19JOTE1X0dFTV9XV19IX18KKyNkZWZp
bmUgX19JOTE1X0dFTV9XV19IX18KKworI2luY2x1ZGUgPGxpbnV4L3N0YWNrZGVwb3QuaD4KKyNp
bmNsdWRlIDxkcm0vZHJtX2Rydi5oPgorCitzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHsKKwlzdHJ1
Y3Qgd3dfYWNxdWlyZV9jdHggY3R4OworCXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpc3Q7CisJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmNvbnRlbmRlZDsKKwlkZXBvdF9zdGFja19oYW5kbGVf
dCBjb250ZW5kZWRfYnQ7CisJYm9vbCBpbnRyOworfTsKKwordm9pZCBpOTE1X2dlbV93d19jdHhf
aW5pdChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICpjdHgsIGJvb2wgaW50cik7Cit2b2lkIGk5MTVf
Z2VtX3d3X2N0eF9maW5pKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0eCk7CitpbnQgX19tdXN0
X2NoZWNrIGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0
eCk7Cit2b2lkIGk5MTVfZ2VtX3d3X3VubG9ja19zaW5nbGUoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaik7CisjZW5kaWYKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
