Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0269EB8C6B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 10:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F746F992;
	Fri, 20 Sep 2019 08:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093FE6F992
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 08:13:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18554755-1500050 
 for multiple; Fri, 20 Sep 2019 09:12:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 09:12:54 +0100
Message-Id: <20190920081254.18389-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/tgl: Implement Wa_1406941453"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3VyIHNhbml0eWNoZWNrcyBpbmRpY2F0ZSB0aGF0IHdoaWxlIHRoaXMgcmVnaXN0ZXIgaXMgY29u
dGV4dApzYXZlZC9yZXN0b3JlLCB0aGUgSFcgZG9lcyBub3QgcHJlc2VydmUgdGhpcyBiaXQgd2l0
aGluIHRoZSByZWdpc3RlciAtLQppdCBsaWtlbHkgZG9lc24ndCBleGlzdCwgb3Igb25lIG9mIHRo
b3NlIG15dGhpY2FsIGJpdHMgdGhhdCB0aGUKYXJjaGl0ZWN0cyBpbnNpc3QgZG9lcyBzb21ldGhp
bmcgZGVzcGl0ZSBhbGwgYXBwZWFyYW5jZXMgdG8gdGhlCmNvbnRyYXJ5LgoKRm9yIHJlZmVyZW5j
ZSwgU0FNUExFUl9NT0RFIGlzIGFscmVhZHkgaW4gaTkxNV9yZWcuaCBhcwpHRU4xMF9TQU1QTEVS
X01PREUgYW5kIGlzIGJlaW5nIHNldHVwIGluIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdCgpIGFz
Cm9wcG9zZWQgdG8gdGhlIGNob3NlbiBsb2NhdGlvbiBoZXJlIG9mIHJjc19lbmdpbmVfd2FfaW5p
dCkuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExNzU0CkZpeGVzOiA3ZjBjYzM0YjUzNDkgKCJkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBX
YV8xNDA2OTQxNDUzIikKVGVzdGNhc2U6IGlndC9pOTE1X3NlbGZ0ZXN0L2xpdmVfd29ya2Fyb3Vu
ZHMKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IFN0dWFy
dCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+CkNjOiBSYWRoYWtyaXNobmEgU3Jp
cGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIHwgNyAtLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgICAgIHwgMyAtLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggMjVh
ZTYwODQ2Mzk4Li5iYTY1ZTUwMTg5NzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTI2MCwxMyArMTI2MCw2IEBAIHJjc19lbmdpbmVfd2FfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKIAot
CWlmIChJU19HRU4oaTkxNSwgMTIpKSB7Ci0JCS8qIFdhXzE0MDY5NDE0NTM6dGdsICovCi0JCXdh
X21hc2tlZF9lbih3YWwsCi0JCQkgICAgIFNBTVBMRVJfTU9ERSwKLQkJCSAgICAgU0FNUExFUl9F
TkFCTEVfU01BTExfUEwpOwotCX0KLQogCWlmIChJU19HRU4oaTkxNSwgMTEpKSB7CiAJCS8qIFRo
aXMgaXMgbm90IGFuIFdhLiBFbmFibGUgZm9yIGJldHRlciBpbWFnZSBxdWFsaXR5ICovCiAJCXdh
X21hc2tlZF9lbih3YWwsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA1ZTNhNjE3OGFmZjQu
LmY4ZjUyYWU2Y2M2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04OTY1LDkgKzg5NjUs
NiBAQCBlbnVtIHsKICNkZWZpbmUgICBHRU45X0RHX01JUlJPUl9GSVhfRU5BQkxFCSgxIDw8IDUp
CiAjZGVmaW5lICAgR0VOOV9DQ1NfVExCX1BSRUZFVENIX0VOQUJMRQkoMSA8PCAzKQogCi0jZGVm
aW5lIFNBTVBMRVJfTU9ERQkJCV9NTUlPKDB4ZTE4YykKLSNkZWZpbmUgICBTQU1QTEVSX0VOQUJM
RV9TTUFMTF9QTAkoMSA8PCAxNSkKLQogI2RlZmluZSBHRU44X1JPV19DSElDS0VOCQlfTU1JTygw
eGU0ZjApCiAjZGVmaW5lICAgRkxPV19DT05UUk9MX0VOQUJMRQkJKDEgPDwgMTUpCiAjZGVmaW5l
ICAgUEFSVElBTF9JTlNUUlVDVElPTl9TSE9PVERPV05fRElTQUJMRQkoMSA8PCA4KQotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
