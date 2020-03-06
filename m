Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB5A17BF3E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 14:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2330C6ED11;
	Fri,  6 Mar 2020 13:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E056ED18
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 13:39:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20467746-1500050 
 for multiple; Fri, 06 Mar 2020 13:38:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:38:46 +0000
Message-Id: <20200306133852.3420322-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/17] dma-buf: Exercise dma-fence-chain under
 selftests
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

QSBmZXcgdmVyeSBzaW1wbGUgdGVzdGNhc2VzIHRvIGV4ZXJjaXNlIHRoZSBkbWEtZmVuY2UtY2hh
aW4gQVBJLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogZHJpdmVycy9kbWEtYnVmL01ha2VmaWxlICAgICAgICAgICAgIHwgICAzICst
CiBkcml2ZXJzL2RtYS1idWYvc2VsZnRlc3RzLmggICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9k
bWEtYnVmL3N0LWRtYS1mZW5jZS1jaGFpbi5jIHwgNzEzICsrKysrKysrKysrKysrKysrKysrKysr
KysrKwogMyBmaWxlcyBjaGFuZ2VkLCA3MTYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtY2hhaW4uYwoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9NYWtlZmlsZSBiL2RyaXZlcnMvZG1hLWJ1Zi9N
YWtlZmlsZQppbmRleCA5YzE5MDAyNmJmYWIuLjk5NWUwNWY2MDlmZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9kbWEtYnVmL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9NYWtlZmlsZQpAQCAt
OSw2ICs5LDcgQEAgb2JqLSQoQ09ORklHX1VETUFCVUYpCQkrPSB1ZG1hYnVmLm8KIAogZG1hYnVm
X3NlbGZ0ZXN0cy15IDo9IFwKIAlzZWxmdGVzdC5vIFwKLQlzdC1kbWEtZmVuY2UubworCXN0LWRt
YS1mZW5jZS5vIFwKKwlzdC1kbWEtZmVuY2UtY2hhaW4ubwogCiBvYmotJChDT05GSUdfRE1BQlVG
X1NFTEZURVNUUykJKz0gZG1hYnVmX3NlbGZ0ZXN0cy5vCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvc2VsZnRlc3RzLmggYi9kcml2ZXJzL2RtYS1idWYvc2VsZnRlc3RzLmgKaW5kZXggNTMy
MDM4NmYwMmU1Li41NTkxOGVmOWFkYWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zZWxm
dGVzdHMuaAorKysgYi9kcml2ZXJzL2RtYS1idWYvc2VsZnRlc3RzLmgKQEAgLTExLDMgKzExLDQg
QEAKICAqLwogc2VsZnRlc3Qoc2FuaXR5Y2hlY2ssIF9fc2FuaXR5Y2hlY2tfXykgLyoga2VlcCBm
aXJzdCAoaWd0IHNlbGZjaGVjaykgKi8KIHNlbGZ0ZXN0KGRtYV9mZW5jZSwgZG1hX2ZlbmNlKQor
c2VsZnRlc3QoZG1hX2ZlbmNlX2NoYWluLCBkbWFfZmVuY2VfY2hhaW4pCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLWNoYWluLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAw
Li5iZDA4YmE2N2IwM2IKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1h
LWZlbmNlLWNoYWluLmMKQEAgLTAsMCArMSw3MTMgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKKworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisg
Ki8KKworI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CisjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNl
Lmg+CisjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWNoYWluLmg+CisjaW5jbHVkZSA8bGludXgv
a2VybmVsLmg+CisjaW5jbHVkZSA8bGludXgva3RocmVhZC5oPgorI2luY2x1ZGUgPGxpbnV4L21t
Lmg+CisjaW5jbHVkZSA8bGludXgvc2NoZWQvc2lnbmFsLmg+CisjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgorI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+CisjaW5jbHVkZSA8bGludXgvcmFuZG9t
Lmg+CisKKyNpbmNsdWRlICJzZWxmdGVzdC5oIgorCitzdGF0aWMgc3RydWN0IGttZW1fY2FjaGUg
KnNsYWJfZmVuY2VzOworCitzdGF0aWMgaW5saW5lIHN0cnVjdCBtb2NrX2ZlbmNlIHsKKwlzdHJ1
Y3QgZG1hX2ZlbmNlIGJhc2U7CisJc3BpbmxvY2tfdCBsb2NrOworfSAqdG9fbW9ja19mZW5jZShz
dHJ1Y3QgZG1hX2ZlbmNlICpmKSB7CisJcmV0dXJuIGNvbnRhaW5lcl9vZihmLCBzdHJ1Y3QgbW9j
a19mZW5jZSwgYmFzZSk7Cit9CisKK3N0YXRpYyBjb25zdCBjaGFyICptb2NrX25hbWUoc3RydWN0
IGRtYV9mZW5jZSAqZikKK3sKKwlyZXR1cm4gIm1vY2siOworfQorCitzdGF0aWMgdm9pZCBtb2Nr
X2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZikKK3sKKwlrbWVtX2NhY2hlX2ZyZWUo
c2xhYl9mZW5jZXMsIHRvX21vY2tfZmVuY2UoZikpOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgbW9ja19vcHMgPSB7CisJLmdldF9kcml2ZXJfbmFtZSA9IG1vY2tfbmFt
ZSwKKwkuZ2V0X3RpbWVsaW5lX25hbWUgPSBtb2NrX25hbWUsCisJLnJlbGVhc2UgPSBtb2NrX2Zl
bmNlX3JlbGVhc2UsCit9OworCitzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19mZW5jZSh2
b2lkKQoreworCXN0cnVjdCBtb2NrX2ZlbmNlICpmOworCisJZiA9IGttZW1fY2FjaGVfYWxsb2Mo
c2xhYl9mZW5jZXMsIEdGUF9LRVJORUwpOworCWlmICghZikKKwkJcmV0dXJuIE5VTEw7CisKKwlz
cGluX2xvY2tfaW5pdCgmZi0+bG9jayk7CisJZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2UsICZtb2Nr
X29wcywgJmYtPmxvY2ssIDAsIDApOworCisJcmV0dXJuICZmLT5iYXNlOworfQorCitzdGF0aWMg
aW5saW5lIHN0cnVjdCBtb2NrX2NoYWluIHsKKwlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluIGJhc2U7
Cit9ICp0b19tb2NrX2NoYWluKHN0cnVjdCBkbWFfZmVuY2UgKmYpIHsKKwlyZXR1cm4gY29udGFp
bmVyX29mKGYsIHN0cnVjdCBtb2NrX2NoYWluLCBiYXNlLmJhc2UpOworfQorCitzdGF0aWMgc3Ry
dWN0IGRtYV9mZW5jZSAqbW9ja19jaGFpbihzdHJ1Y3QgZG1hX2ZlbmNlICpwcmV2LAorCQkJCSAg
ICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKKwkJCQkgICAgdTY0IHNlcW5vKQoreworCXN0cnVj
dCBtb2NrX2NoYWluICpmOworCisJZiA9IGttYWxsb2Moc2l6ZW9mKCpmKSwgR0ZQX0tFUk5FTCk7
CisJaWYgKCFmKQorCQlyZXR1cm4gTlVMTDsKKworCWRtYV9mZW5jZV9jaGFpbl9pbml0KCZmLT5i
YXNlLAorCQkJICAgICBkbWFfZmVuY2VfZ2V0KHByZXYpLAorCQkJICAgICBkbWFfZmVuY2VfZ2V0
KGZlbmNlKSwKKwkJCSAgICAgc2Vxbm8pOworCisJcmV0dXJuICZmLT5iYXNlLmJhc2U7Cit9CisK
K3N0YXRpYyBpbnQgc2FuaXR5Y2hlY2sodm9pZCAqYXJnKQoreworCXN0cnVjdCBkbWFfZmVuY2Ug
KmYsICpjaGFpbjsKKwlpbnQgZXJyID0gMDsKKworCWYgPSBtb2NrX2ZlbmNlKCk7CisJaWYgKCFm
KQorCQlyZXR1cm4gLUVOT01FTTsKKworCWNoYWluID0gbW9ja19jaGFpbihOVUxMLCBmLCAxKTsK
KwlpZiAoIWNoYWluKQorCQllcnIgPSAtRU5PTUVNOworCisJZG1hX2ZlbmNlX3NpZ25hbChmKTsK
KwlkbWFfZmVuY2VfcHV0KGYpOworCisJZG1hX2ZlbmNlX3B1dChjaGFpbik7CisKKwlyZXR1cm4g
ZXJyOworfQorCitzdHJ1Y3QgZmVuY2VfY2hhaW5zIHsKKwl1bnNpZ25lZCBpbnQgY2hhaW5fbGVu
Z3RoOworCXN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXM7CisJc3RydWN0IGRtYV9mZW5jZSAqKmNo
YWluczsKKworCXN0cnVjdCBkbWFfZmVuY2UgKnRhaWw7Cit9OworCitzdGF0aWMgdWludDY0X3Qg
c2Vxbm9faW5jKHVuc2lnbmVkIGludCBpKQoreworCXJldHVybiBpICsgMTsKK30KKworc3RhdGlj
IGludCBmZW5jZV9jaGFpbnNfaW5pdChzdHJ1Y3QgZmVuY2VfY2hhaW5zICpmYywgdW5zaWduZWQg
aW50IGNvdW50LAorCQkJICAgICB1aW50NjRfdCAoKnNlcW5vX2ZuKSh1bnNpZ25lZCBpbnQpKQor
eworCXVuc2lnbmVkIGludCBpOworCWludCBlcnIgPSAwOworCisJZmMtPmNoYWlucyA9IGt2bWFs
bG9jX2FycmF5KGNvdW50LCBzaXplb2YoKmZjLT5jaGFpbnMpLAorCQkJCSAgICBHRlBfS0VSTkVM
IHwgX19HRlBfWkVSTyk7CisJaWYgKCFmYy0+Y2hhaW5zKQorCQlyZXR1cm4gLUVOT01FTTsKKwor
CWZjLT5mZW5jZXMgPSBrdm1hbGxvY19hcnJheShjb3VudCwgc2l6ZW9mKCpmYy0+ZmVuY2VzKSwK
KwkJCQkgICAgR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8pOworCWlmICghZmMtPmZlbmNlcykgewor
CQllcnIgPSAtRU5PTUVNOworCQlnb3RvIGVycl9jaGFpbnM7CisJfQorCisJZmMtPnRhaWwgPSBO
VUxMOworCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7CisJCWZjLT5mZW5jZXNbaV0gPSBt
b2NrX2ZlbmNlKCk7CisJCWlmICghZmMtPmZlbmNlc1tpXSkgeworCQkJZXJyID0gLUVOT01FTTsK
KwkJCWdvdG8gdW53aW5kOworCQl9CisKKwkJZmMtPmNoYWluc1tpXSA9IG1vY2tfY2hhaW4oZmMt
PnRhaWwsCisJCQkJCSAgIGZjLT5mZW5jZXNbaV0sCisJCQkJCSAgIHNlcW5vX2ZuKGkpKTsKKwkJ
aWYgKCFmYy0+Y2hhaW5zW2ldKSB7CisJCQllcnIgPSAtRU5PTUVNOworCQkJZ290byB1bndpbmQ7
CisJCX0KKworCQlmYy0+dGFpbCA9IGZjLT5jaGFpbnNbaV07CisJfQorCisJZmMtPmNoYWluX2xl
bmd0aCA9IGk7CisJcmV0dXJuIDA7CisKK3Vud2luZDoKKwlmb3IgKGkgPSAwOyBpIDwgY291bnQ7
IGkrKykgeworCQlkbWFfZmVuY2VfcHV0KGZjLT5mZW5jZXNbaV0pOworCQlkbWFfZmVuY2VfcHV0
KGZjLT5jaGFpbnNbaV0pOworCX0KKwlrdmZyZWUoZmMtPmZlbmNlcyk7CitlcnJfY2hhaW5zOgor
CWt2ZnJlZShmYy0+Y2hhaW5zKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgdm9pZCBmZW5j
ZV9jaGFpbnNfZmluaShzdHJ1Y3QgZmVuY2VfY2hhaW5zICpmYykKK3sKKwl1bnNpZ25lZCBpbnQg
aTsKKworCWZvciAoaSA9IDA7IGkgPCBmYy0+Y2hhaW5fbGVuZ3RoOyBpKyspIHsKKwkJZG1hX2Zl
bmNlX3NpZ25hbChmYy0+ZmVuY2VzW2ldKTsKKwkJZG1hX2ZlbmNlX3B1dChmYy0+ZmVuY2VzW2ld
KTsKKwl9CisJa3ZmcmVlKGZjLT5mZW5jZXMpOworCisJZm9yIChpID0gMDsgaSA8IGZjLT5jaGFp
bl9sZW5ndGg7IGkrKykKKwkJZG1hX2ZlbmNlX3B1dChmYy0+Y2hhaW5zW2ldKTsKKwlrdmZyZWUo
ZmMtPmNoYWlucyk7Cit9CisKK3N0YXRpYyBpbnQgZmluZF9zZXFubyh2b2lkICphcmcpCit7CisJ
c3RydWN0IGZlbmNlX2NoYWlucyBmYzsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwlpbnQg
ZXJyOworCWludCBpOworCisJZXJyID0gZmVuY2VfY2hhaW5zX2luaXQoJmZjLCA2NCwgc2Vxbm9f
aW5jKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJZmVuY2UgPSBkbWFfZmVuY2VfZ2V0
KGZjLnRhaWwpOworCWVyciA9IGRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCZmZW5jZSwgMCk7
CisJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CisJaWYgKGVycikgeworCQlwcl9lcnIoIlJlcG9ydGVk
ICVkIGZvciBmaW5kX3NlcW5vKDApIVxuIiwgZXJyKTsKKwkJZ290byBlcnI7CisJfQorCisJZm9y
IChpID0gMDsgaSA8IGZjLmNoYWluX2xlbmd0aDsgaSsrKSB7CisJCWZlbmNlID0gZG1hX2ZlbmNl
X2dldChmYy50YWlsKTsKKwkJZXJyID0gZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8oJmZlbmNl
LCBpICsgMSk7CisJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCQlpZiAoZXJyKSB7CisJCQlwcl9l
cnIoIlJlcG9ydGVkICVkIGZvciBmaW5kX3NlcW5vKCVkOiVkKSFcbiIsCisJCQkgICAgICAgZXJy
LCBmYy5jaGFpbl9sZW5ndGggKyAxLCBpICsgMSk7CisJCQlnb3RvIGVycjsKKwkJfQorCQlpZiAo
ZmVuY2UgIT0gZmMuY2hhaW5zW2ldKSB7CisJCQlwcl9lcnIoIkluY29ycmVjdCBmZW5jZSByZXBv
cnRlZCBieSBmaW5kX3NlcW5vKCVkOiVkKVxuIiwKKwkJCSAgICAgICBmYy5jaGFpbl9sZW5ndGgg
KyAxLCBpICsgMSk7CisJCQllcnIgPSAtRUlOVkFMOworCQkJZ290byBlcnI7CisJCX0KKworCQlk
bWFfZmVuY2VfZ2V0KGZlbmNlKTsKKwkJZXJyID0gZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8o
JmZlbmNlLCBpICsgMSk7CisJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCQlpZiAoZXJyKSB7CisJ
CQlwcl9lcnIoIkVycm9yIHJlcG9ydGVkIGZvciBmaW5kaW5nIHNlbGZcbiIpOworCQkJZ290byBl
cnI7CisJCX0KKwkJaWYgKGZlbmNlICE9IGZjLmNoYWluc1tpXSkgeworCQkJcHJfZXJyKCJJbmNv
cnJlY3QgZmVuY2UgcmVwb3J0ZWQgYnkgZmluZCBzZWxmXG4iKTsKKwkJCWVyciA9IC1FSU5WQUw7
CisJCQlnb3RvIGVycjsKKwkJfQorCisJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOworCQllcnIgPSBk
bWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIGkgKyAyKTsKKwkJZG1hX2ZlbmNlX3B1
dChmZW5jZSk7CisJCWlmICghZXJyKSB7CisJCQlwcl9lcnIoIkVycm9yIG5vdCByZXBvcnRlZCBm
b3IgZnV0dXJlIGZlbmNlOiBmaW5kX3NlcW5vKCVkOiVkKSFcbiIsCisJCQkgICAgICAgaSArIDEs
IGkgKyAyKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlnb3RvIGVycjsKKwkJfQorCisJCWRtYV9m
ZW5jZV9nZXQoZmVuY2UpOworCQllcnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVu
Y2UsIGkpOworCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJaWYgKGVycikgeworCQkJcHJfZXJy
KCJFcnJvciByZXBvcnRlZCBmb3IgcHJldmlvdXMgZmVuY2UhXG4iKTsKKwkJCWdvdG8gZXJyOwor
CQl9CisJCWlmIChpID4gMCAmJiBmZW5jZSAhPSBmYy5jaGFpbnNbaSAtIDFdKSB7CisJCQlwcl9l
cnIoIkluY29ycmVjdCBmZW5jZSByZXBvcnRlZCBieSBmaW5kX3NlcW5vKCVkOiVkKVxuIiwKKwkJ
CSAgICAgICBpICsgMSwgaSk7CisJCQllcnIgPSAtRUlOVkFMOworCQkJZ290byBlcnI7CisJCX0K
Kwl9CisKK2VycjoKKwlmZW5jZV9jaGFpbnNfZmluaSgmZmMpOworCXJldHVybiBlcnI7Cit9CisK
K3N0YXRpYyBpbnQgZmluZF9zaWduYWxlZCh2b2lkICphcmcpCit7CisJc3RydWN0IGZlbmNlX2No
YWlucyBmYzsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwlpbnQgZXJyOworCisJZXJyID0g
ZmVuY2VfY2hhaW5zX2luaXQoJmZjLCAyLCBzZXFub19pbmMpOworCWlmIChlcnIpCisJCXJldHVy
biBlcnI7CisKKwlkbWFfZmVuY2Vfc2lnbmFsKGZjLmZlbmNlc1swXSk7CisKKwlmZW5jZSA9IGRt
YV9mZW5jZV9nZXQoZmMudGFpbCk7CisJZXJyID0gZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8o
JmZlbmNlLCAxKTsKKwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwlpZiAoZXJyKSB7CisJCXByX2Vy
cigiUmVwb3J0ZWQgJWQgZm9yIGZpbmRfc2Vxbm8oKSFcbiIsIGVycik7CisJCWdvdG8gZXJyOwor
CX0KKworCWlmIChmZW5jZSAmJiBmZW5jZSAhPSBmYy5jaGFpbnNbMF0pIHsKKwkJcHJfZXJyKCJJ
bmNvcnJlY3QgY2hhaW4tZmVuY2Uuc2Vxbm86JWxsZCByZXBvcnRlZCBmb3IgY29tcGxldGVkIHNl
cW5vOjFcbiIsCisJCSAgICAgICBmZW5jZS0+c2Vxbm8pOworCisJCWRtYV9mZW5jZV9nZXQoZmVu
Y2UpOworCQllcnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIDEpOworCQlk
bWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJaWYgKGVycikKKwkJCXByX2VycigiUmVwb3J0ZWQgJWQg
Zm9yIGZpbmRpbmcgc2VsZiFcbiIsIGVycik7CisKKwkJZXJyID0gLUVJTlZBTDsKKwl9CisKK2Vy
cjoKKwlmZW5jZV9jaGFpbnNfZmluaSgmZmMpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBp
bnQgZmluZF9vdXRfb2Zfb3JkZXIodm9pZCAqYXJnKQoreworCXN0cnVjdCBmZW5jZV9jaGFpbnMg
ZmM7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisJaW50IGVycjsKKworCWVyciA9IGZlbmNl
X2NoYWluc19pbml0KCZmYywgMywgc2Vxbm9faW5jKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJy
OworCisJZG1hX2ZlbmNlX3NpZ25hbChmYy5mZW5jZXNbMV0pOworCisJZmVuY2UgPSBkbWFfZmVu
Y2VfZ2V0KGZjLnRhaWwpOworCWVyciA9IGRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCZmZW5j
ZSwgMik7CisJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CisJaWYgKGVycikgeworCQlwcl9lcnIoIlJl
cG9ydGVkICVkIGZvciBmaW5kX3NlcW5vKCkhXG4iLCBlcnIpOworCQlnb3RvIGVycjsKKwl9CisK
KwlpZiAoZmVuY2UgJiYgZmVuY2UgIT0gZmMuY2hhaW5zWzFdKSB7CisJCXByX2VycigiSW5jb3Jy
ZWN0IGNoYWluLWZlbmNlLnNlcW5vOiVsbGQgcmVwb3J0ZWQgZm9yIGNvbXBsZXRlZCBzZXFubzoy
XG4iLAorCQkgICAgICAgZmVuY2UtPnNlcW5vKTsKKworCQlkbWFfZmVuY2VfZ2V0KGZlbmNlKTsK
KwkJZXJyID0gZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8oJmZlbmNlLCAyKTsKKwkJZG1hX2Zl
bmNlX3B1dChmZW5jZSk7CisJCWlmIChlcnIpCisJCQlwcl9lcnIoIlJlcG9ydGVkICVkIGZvciBm
aW5kaW5nIHNlbGYhXG4iLCBlcnIpOworCisJCWVyciA9IC1FSU5WQUw7CisJfQorCitlcnI6CisJ
ZmVuY2VfY2hhaW5zX2ZpbmkoJmZjKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgdWludDY0
X3Qgc2Vxbm9faW5jMih1bnNpZ25lZCBpbnQgaSkKK3sKKwlyZXR1cm4gMiAqIGkgKyAyOworfQor
CitzdGF0aWMgaW50IGZpbmRfZ2FwKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZmVuY2VfY2hhaW5z
IGZjOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCWludCBlcnI7CisJaW50IGk7CisKKwll
cnIgPSBmZW5jZV9jaGFpbnNfaW5pdCgmZmMsIDY0LCBzZXFub19pbmMyKTsKKwlpZiAoZXJyKQor
CQlyZXR1cm4gZXJyOworCisJZm9yIChpID0gMDsgaSA8IGZjLmNoYWluX2xlbmd0aDsgaSsrKSB7
CisJCWZlbmNlID0gZG1hX2ZlbmNlX2dldChmYy50YWlsKTsKKwkJZXJyID0gZG1hX2ZlbmNlX2No
YWluX2ZpbmRfc2Vxbm8oJmZlbmNlLCAyICogaSArIDEpOworCQlkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKKwkJaWYgKGVycikgeworCQkJcHJfZXJyKCJSZXBvcnRlZCAlZCBmb3IgZmluZF9zZXFubygl
ZDolZCkhXG4iLAorCQkJICAgICAgIGVyciwgZmMuY2hhaW5fbGVuZ3RoICsgMSwgMiAqIGkgKyAx
KTsKKwkJCWdvdG8gZXJyOworCQl9CisJCWlmIChmZW5jZSAhPSBmYy5jaGFpbnNbaV0pIHsKKwkJ
CXByX2VycigiSW5jb3JyZWN0IGZlbmNlLnNlcW5vOiVsbGQgcmVwb3J0ZWQgYnkgZmluZF9zZXFu
byglZDolZClcbiIsCisJCQkgICAgICAgZmVuY2UtPnNlcW5vLAorCQkJICAgICAgIGZjLmNoYWlu
X2xlbmd0aCArIDEsCisJCQkgICAgICAgMiAqIGkgKyAxKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJ
CQlnb3RvIGVycjsKKwkJfQorCisJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOworCQllcnIgPSBkbWFf
ZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIDIgKiBpICsgMik7CisJCWRtYV9mZW5jZV9w
dXQoZmVuY2UpOworCQlpZiAoZXJyKSB7CisJCQlwcl9lcnIoIkVycm9yIHJlcG9ydGVkIGZvciBm
aW5kaW5nIHNlbGZcbiIpOworCQkJZ290byBlcnI7CisJCX0KKwkJaWYgKGZlbmNlICE9IGZjLmNo
YWluc1tpXSkgeworCQkJcHJfZXJyKCJJbmNvcnJlY3QgZmVuY2UgcmVwb3J0ZWQgYnkgZmluZCBz
ZWxmXG4iKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlnb3RvIGVycjsKKwkJfQorCX0KKworZXJy
OgorCWZlbmNlX2NoYWluc19maW5pKCZmYyk7CisJcmV0dXJuIGVycjsKK30KKworc3RydWN0IGZp
bmRfcmFjZSB7CisJc3RydWN0IGZlbmNlX2NoYWlucyBmYzsKKwlhdG9taWNfdCBjaGlsZHJlbjsK
K307CisKK3N0YXRpYyBpbnQgX19maW5kX3JhY2Uodm9pZCAqYXJnKQoreworCXN0cnVjdCBmaW5k
X3JhY2UgKmRhdGEgPSBhcmc7CisJaW50IGVyciA9IDA7CisKKwl3aGlsZSAoIWt0aHJlYWRfc2hv
dWxkX3N0b3AoKSkgeworCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGRtYV9mZW5jZV9nZXQo
ZGF0YS0+ZmMudGFpbCk7CisJCWludCBzZXFubzsKKworCQlzZXFubyA9IHByYW5kb21fdTMyX21h
eChkYXRhLT5mYy5jaGFpbl9sZW5ndGgpICsgMTsKKworCQllcnIgPSBkbWFfZmVuY2VfY2hhaW5f
ZmluZF9zZXFubygmZmVuY2UsIHNlcW5vKTsKKwkJaWYgKGVycikgeworCQkJcHJfZXJyKCJGYWls
ZWQgdG8gZmluZCBmZW5jZSBzZXFubzolZFxuIiwKKwkJCSAgICAgICBzZXFubyk7CisJCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsKKwkJCWJyZWFrOworCQl9CisJCWlmICghZmVuY2UpCisJCQlnb3Rv
IHNpZ25hbDsKKworCQllcnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIHNl
cW5vKTsKKwkJaWYgKGVycikgeworCQkJcHJfZXJyKCJSZXBvcnRlZCBhbiBpbnZhbGlkIGZlbmNl
IGZvciBmaW5kLXNlbGY6JWRcbiIsCisJCQkgICAgICAgc2Vxbm8pOworCQkJZG1hX2ZlbmNlX3B1
dChmZW5jZSk7CisJCQlicmVhazsKKwkJfQorCisJCWlmIChmZW5jZS0+c2Vxbm8gPCBzZXFubykg
eworCQkJcHJfZXJyKCJSZXBvcnRlZCBhbiBlYXJsaWVyIGZlbmNlLnNlcW5vOiVsbGQgZm9yIHNl
cW5vOiVkXG4iLAorCQkJICAgICAgIGZlbmNlLT5zZXFubywgc2Vxbm8pOworCQkJZXJyID0gLUVJ
TlZBTDsKKwkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCQkJYnJlYWs7CisJCX0KKworCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsKKworc2lnbmFsOgorCQlzZXFubyA9IHByYW5kb21fdTMyX21heChk
YXRhLT5mYy5jaGFpbl9sZW5ndGggLSAxKTsKKwkJZG1hX2ZlbmNlX3NpZ25hbChkYXRhLT5mYy5m
ZW5jZXNbc2Vxbm9dKTsKKwkJY29uZF9yZXNjaGVkKCk7CisJfQorCisJaWYgKGF0b21pY19kZWNf
YW5kX3Rlc3QoJmRhdGEtPmNoaWxkcmVuKSkKKwkJd2FrZV91cF92YXIoJmRhdGEtPmNoaWxkcmVu
KTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IGZpbmRfcmFjZSh2b2lkICphcmcpCit7
CisJc3RydWN0IGZpbmRfcmFjZSBkYXRhOworCWludCBuY3B1cyA9IG51bV9vbmxpbmVfY3B1cygp
OworCXN0cnVjdCB0YXNrX3N0cnVjdCAqKnRocmVhZHM7CisJdW5zaWduZWQgbG9uZyBjb3VudDsK
KwlpbnQgZXJyOworCWludCBpOworCisJZXJyID0gZmVuY2VfY2hhaW5zX2luaXQoJmRhdGEuZmMs
IDY0IDw8IDEwLCBzZXFub19pbmMpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwl0aHJl
YWRzID0ga21hbGxvY19hcnJheShuY3B1cywgc2l6ZW9mKCp0aHJlYWRzKSwgR0ZQX0tFUk5FTCk7
CisJaWYgKCF0aHJlYWRzKSB7CisJCWVyciA9IC1FTk9NRU07CisJCWdvdG8gZXJyOworCX0KKwor
CWF0b21pY19zZXQoJmRhdGEuY2hpbGRyZW4sIDApOworCWZvciAoaSA9IDA7IGkgPCBuY3B1czsg
aSsrKSB7CisJCXRocmVhZHNbaV0gPSBrdGhyZWFkX3J1bihfX2ZpbmRfcmFjZSwgJmRhdGEsICJk
bWFidWYvJWQiLCBpKTsKKwkJaWYgKElTX0VSUih0aHJlYWRzW2ldKSkgeworCQkJbmNwdXMgPSBp
OworCQkJYnJlYWs7CisJCX0KKwkJYXRvbWljX2luYygmZGF0YS5jaGlsZHJlbik7CisJCWdldF90
YXNrX3N0cnVjdCh0aHJlYWRzW2ldKTsKKwl9CisKKwl3YWl0X3Zhcl9ldmVudF90aW1lb3V0KCZk
YXRhLmNoaWxkcmVuLAorCQkJICAgICAgICFhdG9taWNfcmVhZCgmZGF0YS5jaGlsZHJlbiksCisJ
CQkgICAgICAgNSAqIEhaKTsKKworCWZvciAoaSA9IDA7IGkgPCBuY3B1czsgaSsrKSB7CisJCWlu
dCByZXQ7CisKKwkJcmV0ID0ga3RocmVhZF9zdG9wKHRocmVhZHNbaV0pOworCQlpZiAocmV0ICYm
ICFlcnIpCisJCQllcnIgPSByZXQ7CisJCXB1dF90YXNrX3N0cnVjdCh0aHJlYWRzW2ldKTsKKwl9
CisJa2ZyZWUodGhyZWFkcyk7CisKKwljb3VudCA9IDA7CisJZm9yIChpID0gMDsgaSA8IGRhdGEu
ZmMuY2hhaW5fbGVuZ3RoOyBpKyspCisJCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZGF0YS5m
Yy5mZW5jZXNbaV0pKQorCQkJY291bnQrKzsKKwlwcl9pbmZvKCJDb21wbGV0ZWQgJWx1IGN5Y2xl
c1xuIiwgY291bnQpOworCitlcnI6CisJZmVuY2VfY2hhaW5zX2ZpbmkoJmRhdGEuZmMpOworCXJl
dHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgc2lnbmFsX2ZvcndhcmQodm9pZCAqYXJnKQorewor
CXN0cnVjdCBmZW5jZV9jaGFpbnMgZmM7CisJaW50IGVycjsKKwlpbnQgaTsKKworCWVyciA9IGZl
bmNlX2NoYWluc19pbml0KCZmYywgNjQsIHNlcW5vX2luYyk7CisJaWYgKGVycikKKwkJcmV0dXJu
IGVycjsKKworCWZvciAoaSA9IDA7IGkgPCBmYy5jaGFpbl9sZW5ndGg7IGkrKykgeworCQlkbWFf
ZmVuY2Vfc2lnbmFsKGZjLmZlbmNlc1tpXSk7CisKKwkJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFs
ZWQoZmMuY2hhaW5zW2ldKSkgeworCQkJcHJfZXJyKCJjaGFpblslZF0gbm90IHNpZ25hbGVkIVxu
IiwgaSk7CisJCQllcnIgPSAtRUlOVkFMOworCQkJZ290byBlcnI7CisJCX0KKworCQlpZiAoaSAr
IDEgPCBmYy5jaGFpbl9sZW5ndGggJiYKKwkJICAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChmYy5j
aGFpbnNbaSArIDFdKSkgeworCQkJcHJfZXJyKCJjaGFpblslZF0gaXMgc2lnbmFsZWQhXG4iLCBp
KTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlnb3RvIGVycjsKKwkJfQorCX0KKworZXJyOgorCWZl
bmNlX2NoYWluc19maW5pKCZmYyk7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBzaWdu
YWxfYmFja3dhcmQodm9pZCAqYXJnKQoreworCXN0cnVjdCBmZW5jZV9jaGFpbnMgZmM7CisJaW50
IGVycjsKKwlpbnQgaTsKKworCWVyciA9IGZlbmNlX2NoYWluc19pbml0KCZmYywgNjQsIHNlcW5v
X2luYyk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKworCWZvciAoaSA9IGZjLmNoYWluX2xl
bmd0aDsgaS0tOyApIHsKKwkJZG1hX2ZlbmNlX3NpZ25hbChmYy5mZW5jZXNbaV0pOworCisJCWlm
IChpID4gMCAmJiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmMuY2hhaW5zW2ldKSkgeworCQkJcHJf
ZXJyKCJjaGFpblslZF0gaXMgc2lnbmFsZWQhXG4iLCBpKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJ
CQlnb3RvIGVycjsKKwkJfQorCX0KKworCWZvciAoaSA9IDA7IGkgPCBmYy5jaGFpbl9sZW5ndGg7
IGkrKykgeworCQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChmYy5jaGFpbnNbaV0pKSB7CisJ
CQlwcl9lcnIoImNoYWluWyVkXSB3YXMgbm90IHNpZ25hbGVkIVxuIiwgaSk7CisJCQllcnIgPSAt
RUlOVkFMOworCQkJZ290byBlcnI7CisJCX0KKwl9CisKK2VycjoKKwlmZW5jZV9jaGFpbnNfZmlu
aSgmZmMpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgX193YWl0X2ZlbmNlX2NoYWlu
cyh2b2lkICphcmcpCit7CisJc3RydWN0IGZlbmNlX2NoYWlucyAqZmMgPSBhcmc7CisKKwlpZiAo
ZG1hX2ZlbmNlX3dhaXQoZmMtPnRhaWwsIGZhbHNlKSkKKwkJcmV0dXJuIC1FSU87CisKKwlyZXR1
cm4gMDsKK30KKworc3RhdGljIGludCB3YWl0X2ZvcndhcmQodm9pZCAqYXJnKQoreworCXN0cnVj
dCBmZW5jZV9jaGFpbnMgZmM7CisJc3RydWN0IHRhc2tfc3RydWN0ICp0c2s7CisJaW50IGVycjsK
KwlpbnQgaTsKKworCWVyciA9IGZlbmNlX2NoYWluc19pbml0KCZmYywgNjQgPDwgMTAsIHNlcW5v
X2luYyk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKworCXRzayA9IGt0aHJlYWRfcnVuKF9f
d2FpdF9mZW5jZV9jaGFpbnMsICZmYywgImRtYWJ1Zi93YWl0Iik7CisJaWYgKElTX0VSUih0c2sp
KSB7CisJCWVyciA9IFBUUl9FUlIodHNrKTsKKwkJZ290byBlcnI7CisJfQorCWdldF90YXNrX3N0
cnVjdCh0c2spOworCXlpZWxkX3RvKHRzaywgdHJ1ZSk7CisKKwlmb3IgKGkgPSAwOyBpIDwgZmMu
Y2hhaW5fbGVuZ3RoOyBpKyspCisJCWRtYV9mZW5jZV9zaWduYWwoZmMuZmVuY2VzW2ldKTsKKwor
CWVyciA9IGt0aHJlYWRfc3RvcCh0c2spOworCXB1dF90YXNrX3N0cnVjdCh0c2spOworCitlcnI6
CisJZmVuY2VfY2hhaW5zX2ZpbmkoJmZjKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50
IHdhaXRfYmFja3dhcmQodm9pZCAqYXJnKQoreworCXN0cnVjdCBmZW5jZV9jaGFpbnMgZmM7CisJ
c3RydWN0IHRhc2tfc3RydWN0ICp0c2s7CisJaW50IGVycjsKKwlpbnQgaTsKKworCWVyciA9IGZl
bmNlX2NoYWluc19pbml0KCZmYywgNjQgPDwgMTAsIHNlcW5vX2luYyk7CisJaWYgKGVycikKKwkJ
cmV0dXJuIGVycjsKKworCXRzayA9IGt0aHJlYWRfcnVuKF9fd2FpdF9mZW5jZV9jaGFpbnMsICZm
YywgImRtYWJ1Zi93YWl0Iik7CisJaWYgKElTX0VSUih0c2spKSB7CisJCWVyciA9IFBUUl9FUlIo
dHNrKTsKKwkJZ290byBlcnI7CisJfQorCWdldF90YXNrX3N0cnVjdCh0c2spOworCXlpZWxkX3Rv
KHRzaywgdHJ1ZSk7CisKKwlmb3IgKGkgPSBmYy5jaGFpbl9sZW5ndGg7IGktLTsgKQorCQlkbWFf
ZmVuY2Vfc2lnbmFsKGZjLmZlbmNlc1tpXSk7CisKKwllcnIgPSBrdGhyZWFkX3N0b3AodHNrKTsK
KwlwdXRfdGFza19zdHJ1Y3QodHNrKTsKKworZXJyOgorCWZlbmNlX2NoYWluc19maW5pKCZmYyk7
CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIHZvaWQgcmFuZG9taXNlX2ZlbmNlcyhzdHJ1Y3Qg
ZmVuY2VfY2hhaW5zICpmYykKK3sKKwl1bnNpZ25lZCBpbnQgY291bnQgPSBmYy0+Y2hhaW5fbGVu
Z3RoOworCisJLyogRmlzaGVyLVlhdGVzIHNodWZmbGUgY291cnRlc3kgb2YgS251dGggKi8KKwl3
aGlsZSAoLS1jb3VudCkgeworCQl1bnNpZ25lZCBpbnQgc3dwOworCisJCXN3cCA9IHByYW5kb21f
dTMyX21heChjb3VudCArIDEpOworCQlpZiAoc3dwID09IGNvdW50KQorCQkJY29udGludWU7CisK
KwkJc3dhcChmYy0+ZmVuY2VzW2NvdW50XSwgZmMtPmZlbmNlc1tzd3BdKTsKKwl9Cit9CisKK3N0
YXRpYyBpbnQgd2FpdF9yYW5kb20odm9pZCAqYXJnKQoreworCXN0cnVjdCBmZW5jZV9jaGFpbnMg
ZmM7CisJc3RydWN0IHRhc2tfc3RydWN0ICp0c2s7CisJaW50IGVycjsKKwlpbnQgaTsKKworCWVy
ciA9IGZlbmNlX2NoYWluc19pbml0KCZmYywgNjQgPDwgMTAsIHNlcW5vX2luYyk7CisJaWYgKGVy
cikKKwkJcmV0dXJuIGVycjsKKworCXJhbmRvbWlzZV9mZW5jZXMoJmZjKTsKKworCXRzayA9IGt0
aHJlYWRfcnVuKF9fd2FpdF9mZW5jZV9jaGFpbnMsICZmYywgImRtYWJ1Zi93YWl0Iik7CisJaWYg
KElTX0VSUih0c2spKSB7CisJCWVyciA9IFBUUl9FUlIodHNrKTsKKwkJZ290byBlcnI7CisJfQor
CWdldF90YXNrX3N0cnVjdCh0c2spOworCXlpZWxkX3RvKHRzaywgdHJ1ZSk7CisKKwlmb3IgKGkg
PSAwOyBpIDwgZmMuY2hhaW5fbGVuZ3RoOyBpKyspCisJCWRtYV9mZW5jZV9zaWduYWwoZmMuZmVu
Y2VzW2ldKTsKKworCWVyciA9IGt0aHJlYWRfc3RvcCh0c2spOworCXB1dF90YXNrX3N0cnVjdCh0
c2spOworCitlcnI6CisJZmVuY2VfY2hhaW5zX2ZpbmkoJmZjKTsKKwlyZXR1cm4gZXJyOworfQor
CitpbnQgZG1hX2ZlbmNlX2NoYWluKHZvaWQpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBzdWJ0
ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1Qoc2FuaXR5Y2hlY2spLAorCQlTVUJURVNUKGZpbmRf
c2Vxbm8pLAorCQlTVUJURVNUKGZpbmRfc2lnbmFsZWQpLAorCQlTVUJURVNUKGZpbmRfb3V0X29m
X29yZGVyKSwKKwkJU1VCVEVTVChmaW5kX2dhcCksCisJCVNVQlRFU1QoZmluZF9yYWNlKSwKKwkJ
U1VCVEVTVChzaWduYWxfZm9yd2FyZCksCisJCVNVQlRFU1Qoc2lnbmFsX2JhY2t3YXJkKSwKKwkJ
U1VCVEVTVCh3YWl0X2ZvcndhcmQpLAorCQlTVUJURVNUKHdhaXRfYmFja3dhcmQpLAorCQlTVUJU
RVNUKHdhaXRfcmFuZG9tKSwKKwl9OworCWludCByZXQ7CisKKwlwcl9pbmZvKCJzaXplb2YoZG1h
X2ZlbmNlX2NoYWluKT0lenVcbiIsCisJCXNpemVvZihzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluKSk7
CisKKwlzbGFiX2ZlbmNlcyA9IEtNRU1fQ0FDSEUobW9ja19mZW5jZSwKKwkJCQkgU0xBQl9UWVBF
U0FGRV9CWV9SQ1UgfAorCQkJCSBTTEFCX0hXQ0FDSEVfQUxJR04pOworCWlmICghc2xhYl9mZW5j
ZXMpCisJCXJldHVybiAtRU5PTUVNOworCisJcmV0ID0gc3VidGVzdHModGVzdHMsIE5VTEwpOwor
CisJa21lbV9jYWNoZV9kZXN0cm95KHNsYWJfZmVuY2VzKTsKKwlyZXR1cm4gcmV0OworfQotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
