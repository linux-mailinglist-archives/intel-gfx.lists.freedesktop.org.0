Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D7FD3345
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 23:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FFF96EB8B;
	Thu, 10 Oct 2019 21:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49BB6EB8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 21:23:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18796752-1500050 
 for multiple; Thu, 10 Oct 2019 22:23:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 22:23:03 +0100
Message-Id: <20191010212303.16761-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010194851.26592-7-chris@chris-wilson.co.uk>
References: <20191010194851.26592-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Allow dynamic reconfiguration of
 the OA stream
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

SW50cm9kdWNlIGEgbmV3IHBlcmZfaW9jdGwgY29tbWFuZCB0byBjaGFuZ2UgdGhlIE9BIGNvbmZp
Z3VyYXRpb24gb2YgdGhlCmFjdGl2ZSBzdHJlYW0uIFRoaXMgYWxsb3dzIHRoZSBPQSBzdHJlYW0g
dG8gYmUgcmVjb25maWd1cmVkIGJldHdlZW4KYmF0Y2ggYnVmZmVycywgZ2l2aW5nIGdyZWF0ZXIg
ZmxleGliaWxpdHkgaW4gc2FtcGxpbmcuIFdlIGluamVjdCBhCnJlcXVlc3QgaW50byB0aGUgT0Eg
Y29udGV4dCB0byByZWNvbmZpZ3VyZSB0aGUgc3RyZWFtIGFzeW5jaHJvbm91c2x5IG9uCnRoZSBH
UFUgaW4gYmV0d2VlbiBhbmQgb3JkZXJlZCB3aXRoIGV4ZWNidWZmZXIgY2FsbHMuCgpPcmlnaW5h
bCBwYXRjaCBmb3IgZHluYW1pYyByZWNvbmZpZ3VyYXRpb24gYnkgTGlvbmVsIExhbmR3ZXJsaW4u
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
UmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDQ5ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKystCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAg
ICB8ICA5ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCBjMjQzMWI1YTFmNTUuLjVkYWFm
OGQwYmRjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTI4NjAsNiArMjg2MCw0MyBA
QCBzdGF0aWMgdm9pZCBpOTE1X3BlcmZfZGlzYWJsZV9sb2NrZWQoc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbSkKIAkJc3RyZWFtLT5vcHMtPmRpc2FibGUoc3RyZWFtKTsKIH0KIAorc3Rh
dGljIGxvbmcgaTkxNV9wZXJmX2NvbmZpZ19sb2NrZWQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0g
KnN0cmVhbSwKKwkJCQkgICAgdW5zaWduZWQgbG9uZyBtZXRyaWNzX3NldCkKK3sKKwlzdHJ1Y3Qg
aTkxNV9vYV9jb25maWcgKmNvbmZpZzsKKwlsb25nIHJldCA9IHN0cmVhbS0+b2FfY29uZmlnLT5p
ZDsKKworCWNvbmZpZyA9IGk5MTVfcGVyZl9nZXRfb2FfY29uZmlnKHN0cmVhbS0+cGVyZiwgbWV0
cmljc19zZXQpOworCWlmICghY29uZmlnKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChjb25m
aWcgIT0gc3RyZWFtLT5vYV9jb25maWcpIHsKKwkJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwor
CQlpbnQgZXJyOworCisJCS8qCisJCSAqIElmIE9BIGlzIGJvdW5kIHRvIGEgc3BlY2lmaWMgY29u
dGV4dCwgZW1pdCB0aGUKKwkJICogcmVjb25maWd1cmF0aW9uIGlubGluZSBmcm9tIHRoYXQgY29u
dGV4dC4gVGhlIHVwZGF0ZQorCQkgKiB3aWxsIHRoZW4gYmUgb3JkZXJlZCB3aXRoIHJlc3BlY3Qg
dG8gc3VibWlzc2lvbiBvbiB0aGF0CisJCSAqIGNvbnRleHQuCisJCSAqCisJCSAqIFdoZW4gc2V0
IGdsb2JhbGx5LCB3ZSB1c2UgYSBsb3cgcHJpb3JpdHkga2VybmVsIGNvbnRleHQsCisJCSAqIHNv
IGl0IHdpbGwgZWZmZWN0aXZlbHkgdGFrZSBlZmZlY3Qgd2hlbiBpZGxlLgorCQkgKi8KKwkJY2Ug
PSBzdHJlYW0tPnBpbm5lZF9jdHggPzogc3RyZWFtLT5lbmdpbmUtPmtlcm5lbF9jb250ZXh0Owor
CisJCWVyciA9IGVtaXRfb2FfY29uZmlnKHN0cmVhbSwgY2UpOworCQlpZiAoZXJyID09IDApCisJ
CQljb25maWcgPSB4Y2hnKCZzdHJlYW0tPm9hX2NvbmZpZywgY29uZmlnKTsKKwkJZWxzZQorCQkJ
cmV0ID0gZXJyOworCX0KKworCWk5MTVfb2FfY29uZmlnX3B1dChjb25maWcpOworCisJcmV0dXJu
IHJldDsKK30KKwogLyoqCiAgKiBpOTE1X3BlcmZfaW9jdGwgLSBzdXBwb3J0IGlvY3RsKCkgdXNh
Z2Ugd2l0aCBpOTE1IHBlcmYgc3RyZWFtIEZEcwogICogQHN0cmVhbTogQW4gaTkxNSBwZXJmIHN0
cmVhbQpAQCAtMjg4Myw2ICsyOTIwLDggQEAgc3RhdGljIGxvbmcgaTkxNV9wZXJmX2lvY3RsX2xv
Y2tlZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogCWNhc2UgSTkxNV9QRVJGX0lP
Q1RMX0RJU0FCTEU6CiAJCWk5MTVfcGVyZl9kaXNhYmxlX2xvY2tlZChzdHJlYW0pOwogCQlyZXR1
cm4gMDsKKwljYXNlIEk5MTVfUEVSRl9JT0NUTF9DT05GSUc6CisJCXJldHVybiBpOTE1X3BlcmZf
Y29uZmlnX2xvY2tlZChzdHJlYW0sIGFyZyk7CiAJfQogCiAJcmV0dXJuIC1FSU5WQUw7CkBAIC00
MDIwLDcgKzQwNTksMTUgQEAgdm9pZCBpOTE1X3BlcmZfZmluaShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKICAqLwogaW50IGk5MTVfcGVyZl9pb2N0bF92ZXJzaW9uKHZvaWQpCiB7Ci0J
cmV0dXJuIDE7CisJLyoKKwkgKiAxOiBJbml0aWFsIHZlcnNpb24KKwkgKiAgIEk5MTVfUEVSRl9J
T0NUTF9FTkFCTEUKKwkgKiAgIEk5MTVfUEVSRl9JT0NUTF9ESVNBQkxFCisJICoKKwkgKiAyOiBB
ZGRlZCBydW50aW1lIG1vZGlmaWNhdGlvbiBvZiBPQSBjb25maWcuCisJICogICBJOTE1X1BFUkZf
SU9DVExfQ09ORklHCisJICovCisJcmV0dXJuIDI7CiB9CiAKICNpZiBJU19FTkFCTEVEKENPTkZJ
R19EUk1fSTkxNV9TRUxGVEVTVCkKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9k
cm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAppbmRleCAwYzdiMjgxNWZiZjEuLjBh
NDQ0MzhjOGZiYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCisrKyBi
L2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaApAQCAtMTkzMiw2ICsxOTMyLDE1IEBAIHN0cnVj
dCBkcm1faTkxNV9wZXJmX29wZW5fcGFyYW0gewogICovCiAjZGVmaW5lIEk5MTVfUEVSRl9JT0NU
TF9ESVNBQkxFCV9JTygnaScsIDB4MSkKIAorLyoqCisgKiBDaGFuZ2UgbWV0cmljc19zZXQgY2Fw
dHVyZWQgYnkgYSBzdHJlYW0uCisgKgorICogUmV0dXJucyB0aGUgcHJldmlvdXNseSBib3VuZCBt
ZXRyaWNzIHNldCBpZCwgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlLgorICoKKyAqIFRoaXMgaW9j
dGwgaXMgYXZhaWxhYmxlIGluIHBlcmYgcmV2aXNpb24gMi4KKyAqLworI2RlZmluZSBJOTE1X1BF
UkZfSU9DVExfQ09ORklHCV9JTygnaScsIDB4MikKKwogLyoqCiAgKiBDb21tb24gdG8gYWxsIGk5
MTUgcGVyZiByZWNvcmRzCiAgKi8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
