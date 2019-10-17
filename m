Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8B7DB14D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 17:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23626EAC0;
	Thu, 17 Oct 2019 15:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26B76EABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 15:42:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18871813-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 16:42:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 16:42:08 +0100
Message-Id: <20191017154208.20128-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017154208.20128-1-chris@chris-wilson.co.uk>
References: <20191017154208.20128-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Don't disable interrupts
 independently of the lock
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

RnJvbTogU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPgoK
VGhlIGxvY2tzIChhY3RpdmUubG9jayBhbmQgcnEtPmxvY2spIG5lZWQgdG8gYmUgdGFrZW4gd2l0
aCBkaXNhYmxlZAppbnRlcnJ1cHRzLiBUaGlzIGlzIGRvbmUgaW4gaTkxNV9yZXF1ZXN0X3JldGly
ZSgpIGJ5IGRpc2FibGluZyB0aGUKaW50ZXJydXB0cyBpbmRlcGVuZGVudGx5IG9mIHRoZSBsb2Nr
cyBpdHNlbGYuCldoaWxlIGxvY2FsX2lycV9kaXNhYmxlKCkrc3Bpbl9sb2NrKCkgZXF1YWxzIHNw
aW5fbG9ja19pcnEoKSBvbiB2YW5pbGxhCml0IGRvZXMgbm90IG9uIFBSRUVNUFRfUlQuCkNocmlz
IFdpbHNvbiBjb25maXJtZWQgdGhhdCBsb2NhbF9pcnFfZGlzYWJsZSgpIHdhcyBqdXN0IGludHJv
ZHVjZWQgYXMKYW4gb3B0aW1pc2F0aW9uIHRvIGF2b2lkIGVuYWJsaW5nL2Rpc2FibGluZyBpbnRl
cnJ1cHRzIGR1cmluZwpsb2NrL3VubG9jayBjb21iby4KCkVuYWJsZS9kaXNhYmxlIGludGVycnVw
dHMgYXMgcGFydCBvZiB0aGUgbG9ja2luZyBpbnN0cnVjdGlvbi4KCkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEFuZHJ6
ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMgfCAxMiArKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpp
bmRleCBmMWNhZGFkNGU4MWMuLjQ1NzVmMzY4NDU1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMKQEAgLTIwNiwxNCArMjA2LDE0IEBAIHN0YXRpYyB2b2lkIHJlbW92ZV9mcm9tX2Vu
Z2luZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAkgKiBjaGVjayB0aGF0IHRoZSBycSBzdGls
bCBiZWxvbmdzIHRvIHRoZSBuZXdseSBsb2NrZWQgZW5naW5lLgogCSAqLwogCWxvY2tlZCA9IFJF
QURfT05DRShycS0+ZW5naW5lKTsKLQlzcGluX2xvY2soJmxvY2tlZC0+YWN0aXZlLmxvY2spOwor
CXNwaW5fbG9ja19pcnEoJmxvY2tlZC0+YWN0aXZlLmxvY2spOwogCXdoaWxlICh1bmxpa2VseShs
b2NrZWQgIT0gKGVuZ2luZSA9IFJFQURfT05DRShycS0+ZW5naW5lKSkpKSB7CiAJCXNwaW5fdW5s
b2NrKCZsb2NrZWQtPmFjdGl2ZS5sb2NrKTsKIAkJc3Bpbl9sb2NrKCZlbmdpbmUtPmFjdGl2ZS5s
b2NrKTsKIAkJbG9ja2VkID0gZW5naW5lOwogCX0KIAlsaXN0X2RlbCgmcnEtPnNjaGVkLmxpbmsp
OwotCXNwaW5fdW5sb2NrKCZsb2NrZWQtPmFjdGl2ZS5sb2NrKTsKKwlzcGluX3VubG9ja19pcnEo
JmxvY2tlZC0+YWN0aXZlLmxvY2spOwogfQogCiBib29sIGk5MTVfcmVxdWVzdF9yZXRpcmUoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpCkBAIC0yNDIsOCArMjQyLDYgQEAgYm9vbCBpOTE1X3JlcXVl
c3RfcmV0aXJlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCQkJCSAgJmk5MTVfcmVxdWVzdF90
aW1lbGluZShycSktPnJlcXVlc3RzKSk7CiAJcnEtPnJpbmctPmhlYWQgPSBycS0+cG9zdGZpeDsK
IAotCWxvY2FsX2lycV9kaXNhYmxlKCk7Ci0KIAkvKgogCSAqIFdlIG9ubHkgbG9vc2VseSB0cmFj
ayBpbmZsaWdodCByZXF1ZXN0cyBhY3Jvc3MgcHJlZW1wdGlvbiwKIAkgKiBhbmQgc28gd2UgbWF5
IGZpbmQgb3Vyc2VsdmVzIGF0dGVtcHRpbmcgdG8gcmV0aXJlIGEgX2NvbXBsZXRlZF8KQEAgLTI1
Miw3ICsyNTAsNyBAQCBib29sIGk5MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCiAJICovCiAJcmVtb3ZlX2Zyb21fZW5naW5lKHJxKTsKIAotCXNwaW5fbG9jaygmcnEt
PmxvY2spOworCXNwaW5fbG9ja19pcnEoJnJxLT5sb2NrKTsKIAlpOTE1X3JlcXVlc3RfbWFya19j
b21wbGV0ZShycSk7CiAJaWYgKCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKQogCQlkbWFfZmVu
Y2Vfc2lnbmFsX2xvY2tlZCgmcnEtPmZlbmNlKTsKQEAgLTI2Nyw5ICsyNjUsNyBAQCBib29sIGk5
MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCV9fbm90aWZ5X2V4
ZWN1dGVfY2IocnEpOwogCX0KIAlHRU1fQlVHX09OKCFsaXN0X2VtcHR5KCZycS0+ZXhlY3V0ZV9j
YikpOwotCXNwaW5fdW5sb2NrKCZycS0+bG9jayk7Ci0KLQlsb2NhbF9pcnFfZW5hYmxlKCk7CisJ
c3Bpbl91bmxvY2tfaXJxKCZycS0+bG9jayk7CiAKIAlyZW1vdmVfZnJvbV9jbGllbnQocnEpOwog
CWxpc3RfZGVsKCZycS0+bGluayk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
