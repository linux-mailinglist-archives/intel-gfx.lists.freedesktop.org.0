Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5C8F28DF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D3A6EEDC;
	Thu,  7 Nov 2019 08:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F266EECD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 08:13:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19110663-1500050 
 for multiple; Thu, 07 Nov 2019 08:12:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 08:12:30 +0000
Message-Id: <20191107081252.10542-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107081252.10542-1-chris@chris-wilson.co.uk>
References: <20191107081252.10542-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/28] drm/i915/selftests: Verify mmap_gtt
 revocation on unbinding
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

V2hlbmV2ZXIsIHdlIHVuYmluZCAob3IgY2hhbmdlIGZlbmNlIHJlZ2lzdGVycykgb24gYW4gb2Jq
ZWN0LCB3ZSBtdXN0CnJldm9rZSBhbnkgYW5kIGFsbCBtbWFwX2d0dCB1c2luZyB0aGUgcHJldmlv
dXMgYmluZGluZ3MuIFRob3NlIHVzZXIgUFRFcwpwb2ludCBhdCB0aGUgR0dUVCB3aGljaCBrbm93
IHBvaW50cyBpbnRvIGEgbmV3IG9iamVjdCwgdGhlIHdyb25nIG9iamVjdC4KRXJnbywgdGhvc2Ug
UFRFcyBtdXN0IGJlIGNsZWFyZWQgc28gdGhhdCBhbnkgdXNlciBhY2Nlc3MgcHJvdm9rZXMgYSBu
ZXcKcGFnZSBmYXVsdC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXgu
aW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4u
YyAgICB8IDExMCArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMTAgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9tbWFuLmMKaW5kZXggZDVhZTQ5MWEwMzY3Li4xOTA2MGZkYzgzZjYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCkBAIC03
OTMsNiArNzkzLDExNSBAQCBzdGF0aWMgaW50IGlndF9tbWFwX2d0dCh2b2lkICphcmcpCiAJcmV0
dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBjaGVja19wcmVzZW50X3B0ZShwdGVfdCAqcHRlLCB1
bnNpZ25lZCBsb25nIGFkZHIsIHZvaWQgKmRhdGEpCit7CisJaWYgKCFwdGVfcHJlc2VudCgqcHRl
KSB8fCBwdGVfbm9uZSgqcHRlKSkgeworCQlwcl9lcnIoIm1pc3NpbmcgUFRFOiVseFxuIiwKKwkJ
ICAgICAgIChhZGRyIC0gKHVuc2lnbmVkIGxvbmcpZGF0YSkgPj4gUEFHRV9TSElGVCk7CisJCXJl
dHVybiAtRUlOVkFMOworCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGNoZWNrX2Fi
c2VudF9wdGUocHRlX3QgKnB0ZSwgdW5zaWduZWQgbG9uZyBhZGRyLCB2b2lkICpkYXRhKQorewor
CWlmIChwdGVfcHJlc2VudCgqcHRlKSAmJiAhcHRlX25vbmUoKnB0ZSkpIHsKKwkJcHJfZXJyKCJw
cmVzZW50IFBURTolbHg7IGV4cGVjdGVkIHRvIGJlIHJldm9rZWRcbiIsCisJCSAgICAgICAoYWRk
ciAtICh1bnNpZ25lZCBsb25nKWRhdGEpID4+IFBBR0VfU0hJRlQpOworCQlyZXR1cm4gLUVJTlZB
TDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBjaGVja19wcmVzZW50KHVuc2ln
bmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBsZW4pCit7CisJcmV0dXJuIGFwcGx5X3RvX3Bh
Z2VfcmFuZ2UoY3VycmVudC0+bW0sIGFkZHIsIGxlbiwKKwkJCQkgICBjaGVja19wcmVzZW50X3B0
ZSwgKHZvaWQgKilhZGRyKTsKK30KKworc3RhdGljIGludCBjaGVja19hYnNlbnQodW5zaWduZWQg
bG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIGxlbikKK3sKKwlyZXR1cm4gYXBwbHlfdG9fcGFnZV9y
YW5nZShjdXJyZW50LT5tbSwgYWRkciwgbGVuLAorCQkJCSAgIGNoZWNrX2Fic2VudF9wdGUsICh2
b2lkICopYWRkcik7Cit9CisKK3N0YXRpYyBpbnQgcHJlZmF1bHRfcmFuZ2UodTY0IHN0YXJ0LCB1
NjQgbGVuKQoreworCWNvbnN0IGNoYXIgX191c2VyICphZGRyLCAqZW5kOworCWNoYXIgX19tYXli
ZV91bnVzZWQgYzsKKworCWFkZHIgPSB1NjRfdG9fdXNlcl9wdHIoc3RhcnQpOworCWVuZCA9IGFk
ZHIgKyBsZW47CisKKwlmb3IgKDsgYWRkciA8IGVuZDsgYWRkciArPSBQQUdFX1NJWkUpIHsKKwkJ
aW50IGVyciA9IF9fZ2V0X3VzZXIoYywgYWRkcik7CisJCWlmIChlcnIpCisJCQlyZXR1cm4gZXJy
OworCX0KKworCXJldHVybiBfX2dldF91c2VyKGMsIGVuZCAtIDEpOworfQorCitzdGF0aWMgaW50
IGlndF9tbWFwX2d0dF9yZXZva2Uodm9pZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJdW5z
aWduZWQgbG9uZyBhZGRyOworCWludCBlcnI7CisKKwlpZiAoIWk5MTVfZ2d0dF9oYXNfYXBlcnR1
cmUoJmk5MTUtPmdndHQpKQorCQlyZXR1cm4gMDsKKworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9j
cmVhdGVfaW50ZXJuYWwoaTkxNSwgU1pfNE0pOworCWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJu
IFBUUl9FUlIob2JqKTsKKworCWVyciA9IGNyZWF0ZV9tbWFwX29mZnNldChvYmopOworCWlmIChl
cnIpCisJCWdvdG8gb3V0OworCisJYWRkciA9IGlndF9tbWFwX25vZGUoaTkxNSwgJm9iai0+YmFz
ZS52bWFfbm9kZSwKKwkJCSAgICAgMCwgUFJPVF9XUklURSwgTUFQX1NIQVJFRCk7CisJaWYgKElT
X0VSUl9WQUxVRShhZGRyKSkgeworCQllcnIgPSBhZGRyOworCQlnb3RvIG91dDsKKwl9CisKKwll
cnIgPSBwcmVmYXVsdF9yYW5nZShhZGRyLCBvYmotPmJhc2Uuc2l6ZSk7CisJaWYgKGVycikKKwkJ
Z290byBvdXRfdW5tYXA7CisKKwlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2Nv
dW50KSk7CisKKwllcnIgPSBjaGVja19wcmVzZW50KGFkZHIsIG9iai0+YmFzZS5zaXplKTsKKwlp
ZiAoZXJyKQorCQlnb3RvIG91dF91bm1hcDsKKworCS8qCisJICogQWZ0ZXIgdW5iaW5kaW5nIHRo
ZSBvYmplY3QgZnJvbSB0aGUgR0dUVCwgaXRzIGFkZHJlc3MgbWF5IGJlIHJldXNlZAorCSAqIGZv
ciBvdGhlciBvYmplY3RzLiBFcmdvIHdlIGhhdmUgdG8gcmV2b2tlIHRoZSBwcmV2aW91cyBtbWFw
IFBURQorCSAqIGFjY2VzcyBhcyBpdCBubyBsb25nZXIgcG9pbnRzIHRvIHRoZSBzYW1lIG9iamVj
dC4KKwkgKi8KKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfdW5iaW5kKG9iaiwgSTkxNV9HRU1fT0JK
RUNUX1VOQklORF9BQ1RJVkUpOworCWlmIChlcnIpIHsKKwkJcHJfZXJyKCJGYWlsZWQgdG8gdW5i
aW5kIG9iamVjdCFcbiIpOworCQlnb3RvIG91dF91bm1hcDsKKwl9CisJR0VNX0JVR19PTihhdG9t
aWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50KSk7CisKKwllcnIgPSBjaGVja19hYnNlbnQoYWRkciwg
b2JqLT5iYXNlLnNpemUpOworCWlmIChlcnIpCisJCWdvdG8gb3V0X3VubWFwOworCitvdXRfdW5t
YXA6CisJdm1fbXVubWFwKGFkZHIsIG9iai0+YmFzZS5zaXplKTsKK291dDoKKwlpOTE1X2dlbV9v
YmplY3RfcHV0KG9iaik7CisJcmV0dXJuIGVycjsKK30KKwogaW50IGk5MTVfZ2VtX21tYW5fbGl2
ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RhdGljIGNv
bnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKQEAgLTgwMCw2ICs5MDksNyBAQCBp
bnQgaTkxNV9nZW1fbW1hbl9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKIAkJU1VCVEVTVChpZ3Rfc21va2VfdGlsaW5nKSwKIAkJU1VCVEVTVChpZ3RfbW1hcF9v
ZmZzZXRfZXhoYXVzdGlvbiksCiAJCVNVQlRFU1QoaWd0X21tYXBfZ3R0KSwKKwkJU1VCVEVTVChp
Z3RfbW1hcF9ndHRfcmV2b2tlKSwKIAl9OwogCiAJcmV0dXJuIGk5MTVfc3VidGVzdHModGVzdHMs
IGk5MTUpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
