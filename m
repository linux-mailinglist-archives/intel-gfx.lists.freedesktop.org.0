Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A28F3A7EE9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674E36E2E1;
	Tue, 15 Jun 2021 13:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD5E6E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 13:15:08 +0000 (UTC)
IronPort-SDR: inMYTqVzllxqymRr1/TGuPWwlnEMKhg4s1Zcvj/vuuTImzQuHwSmJEM3lcFYN5KIuvwWfvbcGT
 dfl9AvrDoNTQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="205804351"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="205804351"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 06:15:08 -0700
IronPort-SDR: euNh7YWgGjl0rty2T9P8Hn0WpScFlM4V93Lu2UJQms7e2XHgsWus6y9FWBSILfOCSa18JbjjNu
 t30CqrMoqqeg==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="554443315"
Received: from vgribano-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 06:15:06 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Jun 2021 15:14:41 +0200
Message-Id: <20210615131451.61023-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 02/12] drm/i915: Break out dma_resv ww
 locking utilities to separate files
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UncmUgYWJvdXQgdG8gYWRkIG1vcmUgd3ctcmVsYXRlZCBmdW5jdGlvbmFsaXR5LApicmVh
ayBvdXQgdGhlIGRtYV9yZXN2IHd3IGxvY2tpbmcgdXRpbGl0aWVzIHRvIHRoZWlyIG93biBmaWxl
cwoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgotLS0KdjI6Ci0gTWFrZSBzdXJlIGZpbGVuYW1lcyBhcmUgc29ydGVkIGluIGluY2x1
ZGUgZmlsZSBsaXN0cyBhbmQgTWFrZWZpbGUKICAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgfCAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggIHwgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuaCB8ICAxICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgfCA1NiAtLS0tLS0tLS0tLS0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggICAgICAgICAgICAgfCAxMiAtLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5jICAgICAgICAgIHwgNjMgKysrKysrKysr
KysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5oICAgICAgICAg
IHwgMjEgKysrKysrKwogNyBmaWxlcyBjaGFuZ2VkLCA4NyBpbnNlcnRpb25zKCspLCA2OCBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV93dy5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
d3cuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggZjU3ZGZjNzRkNmNlLi43ZTAxZWEyYzBmMDAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0xNjUsNiArMTY1LDcgQEAgaTkxNS15ICs9IFwKIAkg
IGk5MTVfY21kX3BhcnNlci5vIFwKIAkgIGk5MTVfZ2VtX2V2aWN0Lm8gXAogCSAgaTkxNV9nZW1f
Z3R0Lm8gXAorCSAgaTkxNV9nZW1fd3cubyBcCiAJICBpOTE1X2dlbS5vIFwKIAkgIGk5MTVfZ2xv
YmFscy5vIFwKIAkgIGk5MTVfcXVlcnkubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgKaW5kZXggMjQxNjY2OTMxOTQ1Li43YmY0ZGQ0NmQ4ZDIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTE0LDYgKzE0LDcgQEAK
ICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgiCiAjaW5jbHVkZSAiaTkxNV9n
ZW1fb2JqZWN0X3R5cGVzLmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fZ3R0LmgiCisjaW5jbHVkZSAi
aTkxNV9nZW1fd3cuaCIKICNpbmNsdWRlICJpOTE1X3ZtYV90eXBlcy5oIgogCiAvKgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlbmRlcnN0YXRlLmgKaW5kZXggNDhmMDA5MjAzOTE3
Li40ZGE0YzUyMzRlZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JlbmRlcnN0YXRlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVy
c3RhdGUuaApAQCAtOCw2ICs4LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5j
bHVkZSAiaTkxNV9nZW0uaCIKKyNpbmNsdWRlICJpOTE1X2dlbV93dy5oIgogCiBzdHJ1Y3QgaTkx
NV9yZXF1ZXN0Owogc3RydWN0IGludGVsX2NvbnRleHQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpp
bmRleCBjNjJkY2QwZTM0MWEuLmI3YmEzYzk1MWE1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CkBAIC0xMjA3LDYyICsxMjA3LDYgQEAgaW50IGk5MTVfZ2VtX29wZW4oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIAlyZXR1cm4gcmV0OwogfQog
Ci12b2lkIGk5MTVfZ2VtX3d3X2N0eF9pbml0KHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LCBi
b29sIGludHIpCi17Ci0Jd3dfYWNxdWlyZV9pbml0KCZ3dy0+Y3R4LCAmcmVzZXJ2YXRpb25fd3df
Y2xhc3MpOwotCUlOSVRfTElTVF9IRUFEKCZ3dy0+b2JqX2xpc3QpOwotCXd3LT5pbnRyID0gaW50
cjsKLQl3dy0+Y29udGVuZGVkID0gTlVMTDsKLX0KLQotc3RhdGljIHZvaWQgaTkxNV9nZW1fd3df
Y3R4X3VubG9ja19hbGwoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCi17Ci0Jc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQotCXdoaWxlICgob2JqID0gbGlzdF9maXJzdF9lbnRy
eV9vcl9udWxsKCZ3dy0+b2JqX2xpc3QsIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0LCBvYmpf
bGluaykpKSB7Ci0JCWxpc3RfZGVsKCZvYmotPm9ial9saW5rKTsKLQkJaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhvYmopOwotCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0JfQotfQotCi12b2lk
IGk5MTVfZ2VtX3d3X3VubG9ja19zaW5nbGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aikKLXsKLQlsaXN0X2RlbCgmb2JqLT5vYmpfbGluayk7Ci0JaTkxNV9nZW1fb2JqZWN0X3VubG9j
ayhvYmopOwotCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKLX0KLQotdm9pZCBpOTE1X2dlbV93
d19jdHhfZmluaShzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKLXsKLQlpOTE1X2dlbV93d19j
dHhfdW5sb2NrX2FsbCh3dyk7Ci0JV0FSTl9PTih3dy0+Y29udGVuZGVkKTsKLQl3d19hY3F1aXJl
X2ZpbmkoJnd3LT5jdHgpOwotfQotCi1pbnQgX19tdXN0X2NoZWNrIGk5MTVfZ2VtX3d3X2N0eF9i
YWNrb2ZmKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3KQotewotCWludCByZXQgPSAwOwotCi0J
aWYgKFdBUk5fT04oIXd3LT5jb250ZW5kZWQpKQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCWk5MTVf
Z2VtX3d3X2N0eF91bmxvY2tfYWxsKHd3KTsKLQlpZiAod3ctPmludHIpCi0JCXJldCA9IGRtYV9y
ZXN2X2xvY2tfc2xvd19pbnRlcnJ1cHRpYmxlKHd3LT5jb250ZW5kZWQtPmJhc2UucmVzdiwgJnd3
LT5jdHgpOwotCWVsc2UKLQkJZG1hX3Jlc3ZfbG9ja19zbG93KHd3LT5jb250ZW5kZWQtPmJhc2Uu
cmVzdiwgJnd3LT5jdHgpOwotCi0JaWYgKCFyZXQpCi0JCWxpc3RfYWRkX3RhaWwoJnd3LT5jb250
ZW5kZWQtPm9ial9saW5rLCAmd3ctPm9ial9saXN0KTsKLQllbHNlCi0JCWk5MTVfZ2VtX29iamVj
dF9wdXQod3ctPmNvbnRlbmRlZCk7Ci0KLQl3dy0+Y29udGVuZGVkID0gTlVMTDsKLQotCXJldHVy
biByZXQ7Ci19Ci0KICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKICNp
bmNsdWRlICJzZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMiCiAjaW5jbHVkZSAic2VsZnRlc3Rz
L2k5MTVfZ2VtLmMiCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaAppbmRleCA0NDBjMzVmMWFiYzkuLmQw
NzUyZTU1NTNkYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCkBAIC0xMjMsMTYgKzEyMyw0IEBA
IHN0YXRpYyBpbmxpbmUgYm9vbCBfX3Rhc2tsZXRfaXNfc2NoZWR1bGVkKHN0cnVjdCB0YXNrbGV0
X3N0cnVjdCAqdCkKIAlyZXR1cm4gdGVzdF9iaXQoVEFTS0xFVF9TVEFURV9TQ0hFRCwgJnQtPnN0
YXRlKTsKIH0KIAotc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCB7Ci0Jc3RydWN0IHd3X2FjcXVpcmVf
Y3R4IGN0eDsKLQlzdHJ1Y3QgbGlzdF9oZWFkIG9ial9saXN0OwotCWJvb2wgaW50cjsKLQlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqY29udGVuZGVkOwotfTsKLQotdm9pZCBpOTE1X2dlbV93
d19jdHhfaW5pdChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICpjdHgsIGJvb2wgaW50cik7Ci12b2lk
IGk5MTVfZ2VtX3d3X2N0eF9maW5pKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0eCk7Ci1pbnQg
X19tdXN0X2NoZWNrIGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKHN0cnVjdCBpOTE1X2dlbV93d19j
dHggKmN0eCk7Ci12b2lkIGk5MTVfZ2VtX3d3X3VubG9ja19zaW5nbGUoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaik7Ci0KICNlbmRpZiAvKiBfX0k5MTVfR0VNX0hfXyAqLwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX3d3LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi4zZjZmZjEzOTQ3OGUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV93dy5jCkBAIC0wLDAgKzEsNjMgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICov
CisjaW5jbHVkZSA8bGludXgvZG1hLXJlc3YuaD4KKyNpbmNsdWRlICJpOTE1X2dlbV93dy5oIgor
I2luY2x1ZGUgImdlbS9pOTE1X2dlbV9vYmplY3QuaCIKKwordm9pZCBpOTE1X2dlbV93d19jdHhf
aW5pdChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dywgYm9vbCBpbnRyKQoreworCXd3X2FjcXVp
cmVfaW5pdCgmd3ctPmN0eCwgJnJlc2VydmF0aW9uX3d3X2NsYXNzKTsKKwlJTklUX0xJU1RfSEVB
RCgmd3ctPm9ial9saXN0KTsKKwl3dy0+aW50ciA9IGludHI7CisJd3ctPmNvbnRlbmRlZCA9IE5V
TEw7Cit9CisKK3N0YXRpYyB2b2lkIGk5MTVfZ2VtX3d3X2N0eF91bmxvY2tfYWxsKHN0cnVjdCBp
OTE1X2dlbV93d19jdHggKnd3KQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7
CisKKwl3aGlsZSAoKG9iaiA9IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVsbCgmd3ctPm9ial9saXN0
LCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCwgb2JqX2xpbmspKSkgeworCQlsaXN0X2RlbCgm
b2JqLT5vYmpfbGluayk7CisJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKKwkJaTkxNV9n
ZW1fb2JqZWN0X3B1dChvYmopOworCX0KK30KKwordm9pZCBpOTE1X2dlbV93d191bmxvY2tfc2lu
Z2xlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJbGlzdF9kZWwoJm9iai0+
b2JqX2xpbmspOworCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKKwlpOTE1X2dlbV9vYmpl
Y3RfcHV0KG9iaik7Cit9CisKK3ZvaWQgaTkxNV9nZW1fd3dfY3R4X2Zpbmkoc3RydWN0IGk5MTVf
Z2VtX3d3X2N0eCAqd3cpCit7CisJaTkxNV9nZW1fd3dfY3R4X3VubG9ja19hbGwod3cpOworCVdB
Uk5fT04od3ctPmNvbnRlbmRlZCk7CisJd3dfYWNxdWlyZV9maW5pKCZ3dy0+Y3R4KTsKK30KKwor
aW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV93d19jdHhfYmFja29mZihzdHJ1Y3QgaTkxNV9nZW1f
d3dfY3R4ICp3dykKK3sKKwlpbnQgcmV0ID0gMDsKKworCWlmIChXQVJOX09OKCF3dy0+Y29udGVu
ZGVkKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpOTE1X2dlbV93d19jdHhfdW5sb2NrX2FsbCh3
dyk7CisJaWYgKHd3LT5pbnRyKQorCQlyZXQgPSBkbWFfcmVzdl9sb2NrX3Nsb3dfaW50ZXJydXB0
aWJsZSh3dy0+Y29udGVuZGVkLT5iYXNlLnJlc3YsICZ3dy0+Y3R4KTsKKwllbHNlCisJCWRtYV9y
ZXN2X2xvY2tfc2xvdyh3dy0+Y29udGVuZGVkLT5iYXNlLnJlc3YsICZ3dy0+Y3R4KTsKKworCWlm
ICghcmV0KQorCQlsaXN0X2FkZF90YWlsKCZ3dy0+Y29udGVuZGVkLT5vYmpfbGluaywgJnd3LT5v
YmpfbGlzdCk7CisJZWxzZQorCQlpOTE1X2dlbV9vYmplY3RfcHV0KHd3LT5jb250ZW5kZWQpOwor
CisJd3ctPmNvbnRlbmRlZCA9IE5VTEw7CisKKwlyZXR1cm4gcmV0OworfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX3d3LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5m
MmQ4NzY5ZTQxMTgKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV93dy5oCkBAIC0wLDAgKzEsMjEgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBN
SVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisj
aWZuZGVmIF9fSTkxNV9HRU1fV1dfSF9fCisjZGVmaW5lIF9fSTkxNV9HRU1fV1dfSF9fCisKKyNp
bmNsdWRlIDxkcm0vZHJtX2Rydi5oPgorCitzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHsKKwlzdHJ1
Y3Qgd3dfYWNxdWlyZV9jdHggY3R4OworCXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpc3Q7CisJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmNvbnRlbmRlZDsKKwlib29sIGludHI7Cit9OworCit2
b2lkIGk5MTVfZ2VtX3d3X2N0eF9pbml0KHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0eCwgYm9v
bCBpbnRyKTsKK3ZvaWQgaTkxNV9nZW1fd3dfY3R4X2Zpbmkoc3RydWN0IGk5MTVfZ2VtX3d3X2N0
eCAqY3R4KTsKK2ludCBfX211c3RfY2hlY2sgaTkxNV9nZW1fd3dfY3R4X2JhY2tvZmYoc3RydWN0
IGk5MTVfZ2VtX3d3X2N0eCAqY3R4KTsKK3ZvaWQgaTkxNV9nZW1fd3dfdW5sb2NrX3NpbmdsZShz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKKyNlbmRpZgotLSAKMi4zMS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
