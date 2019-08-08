Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A39185B7E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 09:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1186E788;
	Thu,  8 Aug 2019 07:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09336E788
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 07:22:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17925884-1500050 
 for multiple; Thu, 08 Aug 2019 08:22:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 08:21:59 +0100
Message-Id: <20190808072159.22608-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190808071937.16435-1-chris@chris-wilson.co.uk>
References: <20190808071937.16435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix up the inverse mapping for
 default ctx->engines[]
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

VGhlIG9yZGVyIGluIHdoaWNoIHdlIHN0b3JlIHRoZSBlbmdpbmVzIGluc2lkZSBkZWZhdWx0X2Vu
Z2luZXMoKSBmb3IgdGhlCmxlZ2FjeSBjdHgtPmVuZ2luZXNbXSBoYXMgdG8gbWF0Y2ggdGhlIGxl
Z2FjeSBJOTE1X0VYRUNfUklORyBzZWxlY3RvcgptYXBwaW5nIGluIGV4ZWNidWY6OnVzZXJfbWFw
LiBJZiB3ZSBwcmVzZW50IFZDUzIgYXMgYmVpbmcgdGhlIHNlY29uZAppbnN0YW5jZSBvZiB0aGUg
dmlkZW8gZW5naW5lLCBsZWdhY3kgdXNlcnNwYWNlIGNhbGxzIHRoYXQgSTkxNV9FWEVDX0JTRDIK
YW5kIHNvIHdlIG5lZWQgdG8gaW5zZXJ0IGl0IGludG8gdGhlIHNlY29uZCB2aWRlbyBzbG90LgoK
Rml4ZXM6IDJlZGRhODBkYjNkMCAoImRybS9pOTE1OiBSZW5hbWUgZW5naW5lcyB0byBtYXRjaCB0
aGVpciB1c2VyIGludGVyZmFjZSIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQpDb250cmFjdCB0aGUgc3RhdGljIG1hcHBpbmcgdGFibGUuCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8ICA1ICsrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYyB8IDQ5ICsrKysrKysrKysr
KysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICB8
ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCAxYzVi
YzIxYTgwZmYuLmZhZThjYTcyZTI0MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCkBAIC0yNzksNiArMjc5LDcgQEAgc3RhdGljIHZvaWQgZnJlZV9lbmdp
bmVzX3JjdShzdHJ1Y3QgcmN1X2hlYWQgKnJjdSkKIAogc3RhdGljIHN0cnVjdCBpOTE1X2dlbV9l
bmdpbmVzICpkZWZhdWx0X2VuZ2luZXMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKIHsK
Kwljb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmN0eC0+aTkxNS0+Z3Q7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzICplOwogCWVu
dW0gaW50ZWxfZW5naW5lX2lkIGlkOwpAQCAtMjg4LDcgKzI4OSw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
aTkxNV9nZW1fZW5naW5lcyAqZGVmYXVsdF9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJaW5pdF9yY3VfaGVhZCgmZS0+
cmN1KTsKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBjdHgtPmk5MTUsIGlkKSB7CisJZm9yX2Vh
Y2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7CiAJCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsK
IAogCQljZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGN0eCwgZW5naW5lKTsKQEAgLTI5OCw4ICsy
OTksOCBAQCBzdGF0aWMgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmRlZmF1bHRfZW5naW5lcyhz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogCQl9CiAKIAkJZS0+ZW5naW5lc1tpZF0gPSBj
ZTsKKwkJZS0+bnVtX2VuZ2luZXMgPSBpZCArIDE7CiAJfQotCWUtPm51bV9lbmdpbmVzID0gaWQ7
CiAKIAlyZXR1cm4gZTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV91c2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
dXNlci5jCmluZGV4IGM0MWFlMDU5ODhhNS4uODNkYmM1NGMzZDJhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKQEAgLTE0Miw4ICsxNDIsNTQgQEAgY29u
c3QgY2hhciAqaW50ZWxfZW5naW5lX2NsYXNzX3JlcHIodTggY2xhc3MpCiAJcmV0dXJuIHVhYmlf
bmFtZXNbY2xhc3NdOwogfQogCitzdHJ1Y3QgbGVnYWN5X3JpbmcgeworCXN0cnVjdCBpbnRlbF9n
dCAqZ3Q7CisJdTggY2xhc3M7CisJdTggaW5zdGFuY2U7Cit9OworCitzdGF0aWMgaW50IGxlZ2Fj
eV9yaW5nX2lkKGNvbnN0IHN0cnVjdCBsZWdhY3lfcmluZyAqcmluZykKK3sKKwlzdGF0aWMgY29u
c3Qgc3RydWN0IHsKKwkJdTggYmFzZSwgbWF4OworCX0gbWFwW10gPSB7CisJCVtSRU5ERVJfQ0xB
U1NdID0geyBSQ1MwLCAxIH0sCisJCVtDT1BZX0VOR0lORV9DTEFTU10gPSB7IEJDUzAsIDEgfSwK
KwkJW1ZJREVPX0RFQ09ERV9DTEFTU10gPSB7IFZDUzAsIEk5MTVfTUFYX1ZDUyB9LAorCQlbVklE
RU9fRU5IQU5DRU1FTlRfQ0xBU1NdID0geyBWRUNTMCwgSTkxNV9NQVhfVkVDUyB9LAorCX07CisK
KwlpZiAoR0VNX0RFQlVHX1dBUk5fT04ocmluZy0+Y2xhc3MgPj0gQVJSQVlfU0laRShtYXApKSkK
KwkJcmV0dXJuIC0xOworCisJaWYgKEdFTV9ERUJVR19XQVJOX09OKHJpbmctPmluc3RhbmNlID49
IG1hcFtyaW5nLT5jbGFzc10ubWF4KSkKKwkJcmV0dXJuIC0xOworCisJcmV0dXJuIG1hcFtyaW5n
LT5jbGFzc10uYmFzZSArIHJpbmctPmluc3RhbmNlOworfQorCitzdGF0aWMgdm9pZCBhZGRfbGVn
YWN5X3Jpbmcoc3RydWN0IGxlZ2FjeV9yaW5nICpyaW5nLAorCQkJICAgIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlpbnQgaWQ7CisKKwlpZiAoZW5naW5lLT5ndCAhPSByaW5n
LT5ndCB8fCBlbmdpbmUtPmNsYXNzICE9IHJpbmctPmNsYXNzKSB7CisJCXJpbmctPmd0ID0gZW5n
aW5lLT5ndDsKKwkJcmluZy0+Y2xhc3MgPSBlbmdpbmUtPmNsYXNzOworCQlyaW5nLT5pbnN0YW5j
ZSA9IDA7CisJfQorCisJaWQgPSBsZWdhY3lfcmluZ19pZChyaW5nKTsKKwlpZiAodW5saWtlbHko
aWQgPT0gLTEpKQorCQlyZXR1cm47CisKKwlyaW5nLT5ndC0+ZW5naW5lW2lkXSA9IGVuZ2luZTsK
KwlyaW5nLT5pbnN0YW5jZSsrOworfQorCiB2b2lkIGludGVsX2VuZ2luZXNfZHJpdmVyX3JlZ2lz
dGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogeworCXN0cnVjdCBsZWdhY3lfcmlu
ZyByaW5nID0ge307CiAJdTggdWFiaV9pbnN0YW5jZXNbNF0gPSB7fTsKIAlzdHJ1Y3QgbGlzdF9o
ZWFkICppdCwgKm5leHQ7CiAJc3RydWN0IHJiX25vZGUgKipwLCAqcHJldjsKQEAgLTE3OSw2ICsy
MjUsOSBAQCB2b2lkIGludGVsX2VuZ2luZXNfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogCQkJCQkJICAgIGVuZ2luZS0+dWFiaV9jbGFzcywKIAkJCQkJCSAg
ICBlbmdpbmUtPnVhYmlfaW5zdGFuY2UpICE9IGVuZ2luZSk7CiAKKwkJLyogRml4IHVwIHRoZSBt
YXBwaW5nIHRvIG1hdGNoIGRlZmF1bHQgZXhlY2J1Zjo6dXNlcl9tYXBbXSAqLworCQlhZGRfbGVn
YWN5X3JpbmcoJnJpbmcsIGVuZ2luZSk7CisKIAkJcHJldiA9ICZlbmdpbmUtPnVhYmlfbm9kZTsK
IAkJcCA9ICZwcmV2LT5yYl9yaWdodDsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfdHlwZXMuaAppbmRleCA1ZmQxMWUzNjFkMDMuLjc4OTEwMmY0ZjQ2YiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCkBAIC03OCw2ICs3OCw3IEBAIHN0cnVjdCBp
bnRlbF9ndCB7CiAKIAl1MzIgcG1fZ3VjX2V2ZW50czsKIAorCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZVtJOTE1X05VTV9FTkdJTkVTXTsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmVfY2xhc3NbTUFYX0VOR0lORV9DTEFTUyArIDFdCiAJCQkJCSAgICBbTUFYX0VOR0lORV9J
TlNUQU5DRSArIDFdOwogfTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
