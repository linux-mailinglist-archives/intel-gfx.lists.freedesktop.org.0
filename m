Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49286095
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 13:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC4B6E826;
	Thu,  8 Aug 2019 11:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8E16E482
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 11:06:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17929168-1500050 
 for multiple; Thu, 08 Aug 2019 12:06:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 12:06:12 +0100
Message-Id: <20190808110612.23539-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190808110612.23539-1-chris@chris-wilson.co.uk>
References: <20190808110612.23539-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Fix up the inverse mapping for
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
djI6IFJlY29yZCB0aGUgbGVnYWN5IG1hcHBpbmcgKGhvcGVmdWxseSB3ZSBjYW4gcmVtb3ZlIHRo
aXMgbmVlZCBpbiB0aGUKZnV0dXJlKQoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOApGaXhlczogMmVkZGE4MGRiM2QwICgiZHJtL2k5
MTU6IFJlbmFtZSBlbmdpbmVzIHRvIG1hdGNoIHRoZWlyIHVzZXIgaW50ZXJmYWNlIikKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPiAjdjEKLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgfCAgNyArLS0KIC4uLi9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuYyAgICB8ICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgMyArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYyAgIHwgNTIgKysrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgICAgICAgIHwgIDIgKy0K
IC4uLi9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyAgICB8ICAyICstCiA3
IGZpbGVzIGNoYW5nZWQsIDYzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggMWM1YmMyMWE4MGZm
Li5iNDA3YmFhZjAwMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYwpAQCAtMTU5LDcgKzE1OSw3IEBAIGxvb2t1cF91c2VyX2VuZ2luZShzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4LAogCQlpZiAoIWVuZ2luZSkKIAkJCXJldHVybiBFUlJfUFRSKC1F
SU5WQUwpOwogCi0JCWlkeCA9IGVuZ2luZS0+aWQ7CisJCWlkeCA9IGVuZ2luZS0+bGVnYWN5X2lk
eDsKIAl9IGVsc2UgewogCQlpZHggPSBjaS0+ZW5naW5lX2luc3RhbmNlOwogCX0KQEAgLTI3OSw2
ICsyNzksNyBAQCBzdGF0aWMgdm9pZCBmcmVlX2VuZ2luZXNfcmN1KHN0cnVjdCByY3VfaGVhZCAq
cmN1KQogCiBzdGF0aWMgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmRlZmF1bHRfZW5naW5lcyhz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogeworCWNvbnN0IHN0cnVjdCBpbnRlbF9ndCAq
Z3QgPSAmY3R4LT5pOTE1LT5ndDsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJ
c3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmU7CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CkBA
IC0yODgsNyArMjg5LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzICpkZWZhdWx0
X2VuZ2luZXMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKIAkJcmV0dXJuIEVSUl9QVFIo
LUVOT01FTSk7CiAKIAlpbml0X3JjdV9oZWFkKCZlLT5yY3UpOwotCWZvcl9lYWNoX2VuZ2luZShl
bmdpbmUsIGN0eC0+aTkxNSwgaWQpIHsKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQp
IHsKIAkJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwogCiAJCWNlID0gaW50ZWxfY29udGV4dF9j
cmVhdGUoY3R4LCBlbmdpbmUpOwpAQCAtMjk4LDggKzI5OSw4IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9nZW1fZW5naW5lcyAqZGVmYXVsdF9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpj
dHgpCiAJCX0KIAogCQllLT5lbmdpbmVzW2lkXSA9IGNlOworCQllLT5udW1fZW5naW5lcyA9IGlk
ICsgMTsKIAl9Ci0JZS0+bnVtX2VuZ2luZXMgPSBpZDsKIAogCXJldHVybiBlOwogfQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuYwppbmRl
eCBiMjMyZTZkMmNkOTIuLjkzYzYzNmFlYWU3MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKQEAgLTIzLDcgKzIzLDcgQEAgaWd0
X3JlcXVlc3RfYWxsb2Moc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwgc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQogCSAqIEdHVFQgc3BhY2UsIHNvIGRvIHRoaXMgZmlyc3QgYmVm
b3JlIHdlIHJlc2VydmUgYSBzZXFubyBmb3IKIAkgKiBvdXJzZWx2ZXMuCiAJICovCi0JY2UgPSBp
OTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmlkKTsKKwljZSA9IGk5MTVf
Z2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVuZ2luZS0+bGVnYWN5X2lkeCk7CiAJaWYgKElT
X0VSUihjZSkpCiAJCXJldHVybiBFUlJfQ0FTVChjZSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKaW5kZXggZGFjYWE3MDdjNzk3Li5jNzlmZDFkYWZh
ODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBl
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCkBA
IC0yNjQsOCArMjY0LDExIEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCWNoYXIgbmFtZVtJ
TlRFTF9FTkdJTkVfQ1NfTUFYX05BTUVdOwogCiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJ
ZW51bSBpbnRlbF9lbmdpbmVfaWQgbGVnYWN5X2lkeDsKKwogCXVuc2lnbmVkIGludCBod19pZDsK
IAl1bnNpZ25lZCBpbnQgZ3VjX2lkOworCiAJaW50ZWxfZW5naW5lX21hc2tfdCBtYXNrOwogCiAJ
dTggY2xhc3M7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfdXNlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYwpp
bmRleCBjNDFhZTA1OTg4YTUuLjc3Y2Q1ZGU4MzkzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCkBAIC0xNDIsOCArMTQyLDU3IEBAIGNvbnN0IGNoYXIg
KmludGVsX2VuZ2luZV9jbGFzc19yZXByKHU4IGNsYXNzKQogCXJldHVybiB1YWJpX25hbWVzW2Ns
YXNzXTsKIH0KIAorc3RydWN0IGxlZ2FjeV9yaW5nIHsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Owor
CXU4IGNsYXNzOworCXU4IGluc3RhbmNlOworfTsKKworc3RhdGljIGludCBsZWdhY3lfcmluZ19p
ZHgoY29uc3Qgc3RydWN0IGxlZ2FjeV9yaW5nICpyaW5nKQoreworCXN0YXRpYyBjb25zdCBzdHJ1
Y3QgeworCQl1OCBiYXNlLCBtYXg7CisJfSBtYXBbXSA9IHsKKwkJW1JFTkRFUl9DTEFTU10gPSB7
IFJDUzAsIDEgfSwKKwkJW0NPUFlfRU5HSU5FX0NMQVNTXSA9IHsgQkNTMCwgMSB9LAorCQlbVklE
RU9fREVDT0RFX0NMQVNTXSA9IHsgVkNTMCwgSTkxNV9NQVhfVkNTIH0sCisJCVtWSURFT19FTkhB
TkNFTUVOVF9DTEFTU10gPSB7IFZFQ1MwLCBJOTE1X01BWF9WRUNTIH0sCisJfTsKKworCWlmIChH
RU1fREVCVUdfV0FSTl9PTihyaW5nLT5jbGFzcyA+PSBBUlJBWV9TSVpFKG1hcCkpKQorCQlyZXR1
cm4gLTE7CisKKwlpZiAoR0VNX0RFQlVHX1dBUk5fT04ocmluZy0+aW5zdGFuY2UgPj0gbWFwW3Jp
bmctPmNsYXNzXS5tYXgpKQorCQlyZXR1cm4gLTE7CisKKwlyZXR1cm4gbWFwW3JpbmctPmNsYXNz
XS5iYXNlICsgcmluZy0+aW5zdGFuY2U7Cit9CisKK3N0YXRpYyB2b2lkIGFkZF9sZWdhY3lfcmlu
ZyhzdHJ1Y3QgbGVnYWN5X3JpbmcgKnJpbmcsCisJCQkgICAgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQoreworCWludCBpZHg7CisKKwlpZiAoZW5naW5lLT5ndCAhPSByaW5nLT5ndCB8
fCBlbmdpbmUtPmNsYXNzICE9IHJpbmctPmNsYXNzKSB7CisJCXJpbmctPmd0ID0gZW5naW5lLT5n
dDsKKwkJcmluZy0+Y2xhc3MgPSBlbmdpbmUtPmNsYXNzOworCQlyaW5nLT5pbnN0YW5jZSA9IDA7
CisJfQorCisJaWR4ID0gbGVnYWN5X3JpbmdfaWR4KHJpbmcpOworCWlmICh1bmxpa2VseShpZHgg
PT0gLTEpKQorCQlyZXR1cm47CisKKwlHRU1fQlVHX09OKGlkeCA+PSBBUlJBWV9TSVpFKHJpbmct
Pmd0LT5lbmdpbmUpKTsKKwlyaW5nLT5ndC0+ZW5naW5lW2lkeF0gPSBlbmdpbmU7CisJcmluZy0+
aW5zdGFuY2UrKzsKKworCWVuZ2luZS0+bGVnYWN5X2lkeCA9IGlkeDsKK30KKwogdm9pZCBpbnRl
bF9lbmdpbmVzX2RyaXZlcl9yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IHsKKwlzdHJ1Y3QgbGVnYWN5X3JpbmcgcmluZyA9IHt9OwogCXU4IHVhYmlfaW5zdGFuY2VzWzRd
ID0ge307CiAJc3RydWN0IGxpc3RfaGVhZCAqaXQsICpuZXh0OwogCXN0cnVjdCByYl9ub2RlICoq
cCwgKnByZXY7CkBAIC0xNzksNiArMjI4LDkgQEAgdm9pZCBpbnRlbF9lbmdpbmVzX2RyaXZlcl9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJCQkJCSAgICBlbmdpbmUt
PnVhYmlfY2xhc3MsCiAJCQkJCQkgICAgZW5naW5lLT51YWJpX2luc3RhbmNlKSAhPSBlbmdpbmUp
OwogCisJCS8qIEZpeCB1cCB0aGUgbWFwcGluZyB0byBtYXRjaCBkZWZhdWx0IGV4ZWNidWY6OnVz
ZXJfbWFwW10gKi8KKwkJYWRkX2xlZ2FjeV9yaW5nKCZyaW5nLCBlbmdpbmUpOworCiAJCXByZXYg
PSAmZW5naW5lLT51YWJpX25vZGU7CiAJCXAgPSAmcHJldi0+cmJfcmlnaHQ7CiAJfQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKaW5kZXggNWZkMTFlMzYxZDAzLi43ODkx
MDJmNGY0NmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5
cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApAQCAt
NzgsNiArNzgsNyBAQCBzdHJ1Y3QgaW50ZWxfZ3QgewogCiAJdTMyIHBtX2d1Y19ldmVudHM7CiAK
KwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmVbSTkxNV9OVU1fRU5HSU5FU107CiAJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lX2NsYXNzW01BWF9FTkdJTkVfQ0xBU1MgKyAxXQog
CQkJCQkgICAgW01BWF9FTkdJTkVfSU5TVEFOQ0UgKyAxXTsKIH07CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IGIyNjIyNTc1MWE1NC4uOTFmMWM5MDEyNDg5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtNDkwLDcgKzQ5MCw3IEBAIHNw
aW5uZXJfY3JlYXRlX3JlcXVlc3Qoc3RydWN0IGlndF9zcGlubmVyICpzcGluLAogCXN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZTsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAotCWNlID0gaTkx
NV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0eCwgZW5naW5lLT5pZCk7CisJY2UgPSBpOTE1X2dl
bV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmxlZ2FjeV9pZHgpOwogCWlmIChJU19F
UlIoY2UpKQogCQlyZXR1cm4gRVJSX0NBU1QoY2UpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwppbmRleCA1ZWZkMmJiODlkNWYuLmViNWRhMDFk
MGEwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fy
b3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5k
cy5jCkBAIC0yNTAsNyArMjUwLDcgQEAgc3dpdGNoX3RvX3NjcmF0Y2hfY29udGV4dChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAKIAlHRU1fQlVHX09OKGk5MTVfZ2VtX2NvbnRleHRf
aXNfYmFubmFibGUoY3R4KSk7CiAKLQljZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShj
dHgsIGVuZ2luZS0+aWQpOworCWNlID0gaTkxNV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0eCwg
ZW5naW5lLT5sZWdhY3lfaWR4KTsKIAlHRU1fQlVHX09OKElTX0VSUihjZSkpOwogCiAJcnEgPSBF
UlJfUFRSKC1FTk9ERVYpOwotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
