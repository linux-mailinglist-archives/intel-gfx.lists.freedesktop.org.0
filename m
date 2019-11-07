Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFDDF3695
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 19:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114A96F776;
	Thu,  7 Nov 2019 18:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5E66F775
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 18:06:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19119453-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Nov 2019 18:06:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 18:05:57 +0000
Message-Id: <20191107180601.30815-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/5] drm: Move EXPORT_SYMBOL_FOR_TESTS_ONLY under a
 separate Kconfig
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5LCB3ZSBvbmx5IGV4cG9ydCBzeW1ib2xzIGZvciBkcm0tc2VsZnRlc3RzIHdoaWNo
IGFyZSBlaXRoZXIKY29tcGlsZWQgYXMgbW9kdWxlcyBvciBpbnRvIHRoZSBtYWluIGRybSBidWls
dGluLiBIb3dldmVyLCBpZiB3ZSB3YW50IHRvCmV4cG9ydCBzeW1ib2xzIGZyb20gZHJtLmtvIGZv
ciB0aGUgZHJpdmVycycgc2VsZnRlc3RzLCB3ZSByZXF1aXJlIGEKbWVhbnMgb2YgY29udHJvbGxp
bmcgdGhhdCBleHBvcnQgc2VwYXJhdGVseS4gU28gd2UgYWRkIGEgbmV3IEtjb25maWcgdG8KZGV0
ZXJtaW5lIHdoZXRoZXIgb3Igbm90IHRoZSBFWFBPUlRfU1lNQk9MX0ZPUl9URVNUU19PTkxZKCkg
dGFrZXMKZWZmZWN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpS
ZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vS2NvbmZpZyB8IDQgKysrKwogaW5jbHVkZS9kcm0vZHJtX3V0aWwuaCAg
fCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL0tj
b25maWcKaW5kZXggNjE3ZDljM2E4NmMzLi5kMzU2MGFmZTM0ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9LY29uZmlnCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnCkBAIC01NCw2
ICs1NCw5IEBAIGNvbmZpZyBEUk1fREVCVUdfTU0KIAogCSAgSWYgaW4gZG91YnQsIHNheSAiTiIu
CiAKK2NvbmZpZyBEUk1fRVhQT1JUX0ZPUl9URVNUUworCWJvb2wKKwogY29uZmlnIERSTV9ERUJV
R19TRUxGVEVTVAogCXRyaXN0YXRlICJrc2VsZnRlc3RzIGZvciBEUk0iCiAJZGVwZW5kcyBvbiBE
Uk0KQEAgLTYxLDYgKzY0LDcgQEAgY29uZmlnIERSTV9ERUJVR19TRUxGVEVTVAogCXNlbGVjdCBQ
UklNRV9OVU1CRVJTCiAJc2VsZWN0IERSTV9MSUJfUkFORE9NCiAJc2VsZWN0IERSTV9LTVNfSEVM
UEVSCisJc2VsZWN0IERSTV9FWFBPUlRfRk9SX1RFU1RTIGlmIG0KIAlkZWZhdWx0IG4KIAloZWxw
CiAJICBUaGlzIG9wdGlvbiBwcm92aWRlcyBrZXJuZWwgbW9kdWxlcyB0aGF0IGNhbiBiZSB1c2Vk
IHRvIHJ1bgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3V0aWwuaCBiL2luY2x1ZGUvZHJt
L2RybV91dGlsLmgKaW5kZXggMDdiOGU5ZjA0NTk5Li43OTk1MmQ4YzRiYmEgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvZHJtL2RybV91dGlsLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX3V0aWwuaApAQCAt
NDEsNyArNDEsNyBAQAogICogVXNlIEVYUE9SVF9TWU1CT0xfRk9SX1RFU1RTX09OTFkoKSBmb3Ig
ZnVuY3Rpb25zIHRoYXQgc2hhbGwKICAqIG9ubHkgYmUgdmlzaWJsZSBmb3IgZHJtc2VsZnRlc3Rz
LgogICovCi0jaWYgZGVmaW5lZChDT05GSUdfRFJNX0RFQlVHX1NFTEZURVNUX01PRFVMRSkKKyNp
ZiBkZWZpbmVkKENPTkZJR19EUk1fRVhQT1JUX0ZPUl9URVNUUykKICNkZWZpbmUgRVhQT1JUX1NZ
TUJPTF9GT1JfVEVTVFNfT05MWSh4KSBFWFBPUlRfU1lNQk9MKHgpCiAjZWxzZQogI2RlZmluZSBF
WFBPUlRfU1lNQk9MX0ZPUl9URVNUU19PTkxZKHgpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
