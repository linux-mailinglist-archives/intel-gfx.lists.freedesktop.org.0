Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F7E1AD3A2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 02:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F576E19B;
	Fri, 17 Apr 2020 00:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09A46E19B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 00:29:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20927417-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 01:29:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 01:29:41 +0100
Message-Id: <20200417002942.4394-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417002942.4394-1-chris@chris-wilson.co.uk>
References: <20200417002942.4394-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/5] drm/i915/selftests: Move gpu energy
 measurement into its own little lib
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSB0aGUgaGFuZHkgdXRpbGl0eSB0byBtZWFzdXJlIHRoZSBHUFUgZW5lcmd5IGNvbnN1bXB0
aW9uIHVzaW5nIFJBUEwKbXNyIGludG8gYSBjb21tb24gbGliIHNvIHRoYXQgaXQgY2FuIGJlIHJl
dXNlZCBlYXNpbHkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAg
IHwgIDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYyAgIHwgMjUg
KysrKystLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9s
aWJyYXBsLmMgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmggfCAxMyArKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdl
ZCwgNDYgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2xpYnJhcGwuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmgKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlCmluZGV4IDhmNmZiOTM2MGZiZS4uY2UyNGE0ZWU5NTkxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZQpAQCAtMjU4LDcgKzI1OCw4IEBAIGk5MTUtJChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1Qp
ICs9IFwKIAlzZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5vIFwKIAlzZWxmdGVzdHMvaWd0X21tYXAu
byBcCiAJc2VsZnRlc3RzL2lndF9yZXNldC5vIFwKLQlzZWxmdGVzdHMvaWd0X3NwaW5uZXIubwor
CXNlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5vIFwKKwlzZWxmdGVzdHMvbGlicmFwbC5vCiAKICMgdmly
dHVhbCBncHUgY29kZQogaTkxNS15ICs9IGk5MTVfdmdwdS5vCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3JjNi5jCmluZGV4IDA4YzNkYmQ0MWIxMi4uMmRjNDYwNjI0YmJjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYwpAQCAtMTEsMjIgKzExLDcgQEAKICNpbmNs
dWRlICJzZWxmdGVzdF9yYzYuaCIKIAogI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5o
IgotCi1zdGF0aWMgdTY0IGVuZXJneV91SihzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCi17Ci0JdW5z
aWduZWQgbG9uZyBsb25nIHBvd2VyOwotCXUzMiB1bml0czsKLQotCWlmIChyZG1zcmxfc2FmZShN
U1JfUkFQTF9QT1dFUl9VTklULCAmcG93ZXIpKQotCQlyZXR1cm4gMDsKLQotCXVuaXRzID0gKHBv
d2VyICYgMHgxZjAwKSA+PiA4OwotCi0JaWYgKHJkbXNybF9zYWZlKE1TUl9QUDFfRU5FUkdZX1NU
QVRVUywgJnBvd2VyKSkKLQkJcmV0dXJuIDA7Ci0KLQlyZXR1cm4gKDEwMDAwMDAgKiBwb3dlcikg
Pj4gdW5pdHM7IC8qIGNvbnZlcnQgdG8gdUogKi8KLX0KKyNpbmNsdWRlICJzZWxmdGVzdHMvbGli
cmFwbC5oIgogCiBzdGF0aWMgdTY0IHJjNl9yZXNpZGVuY3koc3RydWN0IGludGVsX3JjNiAqcmM2
KQogewpAQCAtNzQsOSArNTksOSBAQCBpbnQgbGl2ZV9yYzZfbWFudWFsKHZvaWQgKmFyZykKIAly
ZXNbMF0gPSByYzZfcmVzaWRlbmN5KHJjNik7CiAKIAlkdCA9IGt0aW1lX2dldCgpOwotCXJjMF9w
b3dlciA9IGVuZXJneV91SihyYzYpOworCXJjMF9wb3dlciA9IGxpYnJhcGxfZW5lcmd5X3VKKCk7
CiAJbXNsZWVwKDI1MCk7Ci0JcmMwX3Bvd2VyID0gZW5lcmd5X3VKKHJjNikgLSByYzBfcG93ZXI7
CisJcmMwX3Bvd2VyID0gbGlicmFwbF9lbmVyZ3lfdUooKSAtIHJjMF9wb3dlcjsKIAlkdCA9IGt0
aW1lX3N1YihrdGltZV9nZXQoKSwgZHQpOwogCXJlc1sxXSA9IHJjNl9yZXNpZGVuY3kocmM2KTsK
IAlpZiAoKHJlc1sxXSAtIHJlc1swXSkgPj4gMTApIHsKQEAgLTk5LDkgKzg0LDkgQEAgaW50IGxp
dmVfcmM2X21hbnVhbCh2b2lkICphcmcpCiAJcmVzWzBdID0gcmM2X3Jlc2lkZW5jeShyYzYpOwog
CWludGVsX3VuY29yZV9mb3JjZXdha2VfZmx1c2gocmM2X3RvX3VuY29yZShyYzYpLCBGT1JDRVdB
S0VfQUxMKTsKIAlkdCA9IGt0aW1lX2dldCgpOwotCXJjNl9wb3dlciA9IGVuZXJneV91SihyYzYp
OworCXJjNl9wb3dlciA9IGxpYnJhcGxfZW5lcmd5X3VKKCk7CiAJbXNsZWVwKDEwMCk7Ci0JcmM2
X3Bvd2VyID0gZW5lcmd5X3VKKHJjNikgLSByYzZfcG93ZXI7CisJcmM2X3Bvd2VyID0gbGlicmFw
bF9lbmVyZ3lfdUooKSAtIHJjNl9wb3dlcjsKIAlkdCA9IGt0aW1lX3N1YihrdGltZV9nZXQoKSwg
ZHQpOwogCXJlc1sxXSA9IHJjNl9yZXNpZGVuY3kocmM2KTsKIAlpZiAocmVzWzFdID09IHJlc1sw
XSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2xpYnJhcGwu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmMKbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi41ZTIxZTU1ZmFlOTEKLS0tIC9kZXYvbnVsbAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbGlicmFwbC5jCkBAIC0wLDAgKzEs
MjYgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQg
wqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlIDxhc20vbXNyLmg+CisK
KyNpbmNsdWRlICJsaWJyYXBsLmgiCisKK3U2NCBsaWJyYXBsX2VuZXJneV91Sih2b2lkKQorewor
CXVuc2lnbmVkIGxvbmcgbG9uZyBwb3dlcjsKKwl1MzIgdW5pdHM7CisKKwlpZiAocmRtc3JsX3Nh
ZmUoTVNSX1JBUExfUE9XRVJfVU5JVCwgJnBvd2VyKSkKKwkJcmV0dXJuIDA7CisKKwl1bml0cyA9
IChwb3dlciAmIDB4MWYwMCkgPj4gODsKKworCWlmIChyZG1zcmxfc2FmZShNU1JfUFAxX0VORVJH
WV9TVEFUVVMsICZwb3dlcikpCisJCXJldHVybiAwOworCisJcmV0dXJuICgxMDAwMDAwICogcG93
ZXIpID4+IHVuaXRzOyAvKiBjb252ZXJ0IHRvIHVKICovCit9CisKKwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2xpYnJhcGwuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi44ODdmM2U5MWRkMDUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbGlicmFwbC5oCkBAIC0wLDAgKzEsMTMgQEAKKy8qIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jw
b3JhdGlvbgorICovCisKKyNpZm5kZWYgU0VMRlRFU1RfTElCUkFQTF9ICisjZGVmaW5lIFNFTEZU
RVNUX0xJQlJBUExfSAorCisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKwordTY0IGxpYnJhcGxf
ZW5lcmd5X3VKKHZvaWQpOworCisjZW5kaWYgLyogU0VMRlRFU1RfTElCUkFQTF9IICovCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
