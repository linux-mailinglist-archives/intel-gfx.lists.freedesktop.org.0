Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDE1114308
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 15:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2871F6E12D;
	Thu,  5 Dec 2019 14:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694956E124
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 14:52:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19472192-1500050 
 for multiple; Thu, 05 Dec 2019 14:52:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 14:52:36 +0000
Message-Id: <20191205145238.635670-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191205145238.635670-1-chris@chris-wilson.co.uk>
References: <20191205145238.635670-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Remove direct invocation of
 breadcrumb signaling
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

T25seSBzaWduYWwgdGhlIGJyZWFkY3J1bWJzIGZyb20gaW5zaWRlIHRoZSBpcnFfd29yaywgc2lt
cGxpZnlpbmcgb3VyCmludGVyZmFjZSBhbmQgY2FsbGluZyBjb252ZW50aW9ucy4gVGhlIG1pY3Jv
LW9wdGltaXNhdGlvbiBoZXJlIGlzIHRoYXQKYnkgYWx3YXlzIHVzaW5nIHRoZSBpcnFfd29yayBp
bnRlcmZhY2UsIHdlIGtub3cgd2UgYXJlIGFsd2F5cyBpbnNpZGUgYW4KaXJxLW9mZiBjcml0aWNh
bCBzZWN0aW9uIGZvciB0aGUgYnJlYWRjcnVtYiBzaWduYWxpbmcgYW5kIGNhbiBlbGxpZGUKc2F2
ZS9yZXN0b3JlIG9mIHRoZSBpcnEgZmxhZ3MuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9icmVhZGNydW1icy5jICAgfCAyNyArKysrKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCAgICAgICAgfCAgNCArLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jICAgICAgICB8IDEyICsrKystLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgICB8ICA0ICstLQogLi4uL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgIHwgIDggKysrLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCAgMiArLQogMTAgZmlsZXMgY2hhbmdl
ZCwgMjcgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKaW5kZXggNTUzMTcwODFkNDhiLi42YWNmODIwOGJh
NzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwpAQCAt
MTI3LDE2ICsxMjcsMTUgQEAgX19kbWFfZmVuY2Vfc2lnbmFsX19ub3RpZnkoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsCiAJfQogfQogCi12b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQorc3RhdGljIHZvaWQgc2lnbmFsX2lycV93
b3JrKHN0cnVjdCBpcnFfd29yayAqd29yaykKIHsKLQlzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMg
KmIgPSAmZW5naW5lLT5icmVhZGNydW1iczsKKwlzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIg
PSBjb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpiKSwgaXJxX3dvcmspOwogCWNvbnN0IGt0aW1l
X3QgdGltZXN0YW1wID0ga3RpbWVfZ2V0KCk7CiAJc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCAq
Y247CiAJc3RydWN0IGxpc3RfaGVhZCAqcG9zLCAqbmV4dDsKLQl1bnNpZ25lZCBsb25nIGZsYWdz
OwogCUxJU1RfSEVBRChzaWduYWwpOwogCi0Jc3Bpbl9sb2NrX2lycXNhdmUoJmItPmlycV9sb2Nr
LCBmbGFncyk7CisJc3Bpbl9sb2NrKCZiLT5pcnFfbG9jayk7CiAKIAlpZiAoYi0+aXJxX2FybWVk
ICYmIGxpc3RfZW1wdHkoJmItPnNpZ25hbGVycykpCiAJCV9faW50ZWxfYnJlYWRjcnVtYnNfZGlz
YXJtX2lycShiKTsKQEAgLTE4MiwzMSArMTgxLDIzIEBAIHZvaWQgaW50ZWxfZW5naW5lX2JyZWFk
Y3J1bWJzX2lycShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCX0KIAl9CiAKLQlz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZiLT5pcnFfbG9jaywgZmxhZ3MpOworCXNwaW5fdW5sb2Nr
KCZiLT5pcnFfbG9jayk7CiAKIAlsaXN0X2Zvcl9lYWNoX3NhZmUocG9zLCBuZXh0LCAmc2lnbmFs
KSB7CiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxID0KIAkJCWxpc3RfZW50cnkocG9zLCB0eXBl
b2YoKnJxKSwgc2lnbmFsX2xpbmspOwogCQlzdHJ1Y3QgbGlzdF9oZWFkIGNiX2xpc3Q7CiAKLQkJ
c3Bpbl9sb2NrX2lycXNhdmUoJnJxLT5sb2NrLCBmbGFncyk7CisJCXNwaW5fbG9jaygmcnEtPmxv
Y2spOwogCQlsaXN0X3JlcGxhY2UoJnJxLT5mZW5jZS5jYl9saXN0LCAmY2JfbGlzdCk7CiAJCV9f
ZG1hX2ZlbmNlX3NpZ25hbF9fdGltZXN0YW1wKCZycS0+ZmVuY2UsIHRpbWVzdGFtcCk7CiAJCV9f
ZG1hX2ZlbmNlX3NpZ25hbF9fbm90aWZ5KCZycS0+ZmVuY2UsICZjYl9saXN0KTsKLQkJc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmcnEtPmxvY2ssIGZsYWdzKTsKKwkJc3Bpbl91bmxvY2soJnJxLT5s
b2NrKTsKIAogCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIHNp
Z25hbF9pcnFfd29yayhzdHJ1Y3QgaXJxX3dvcmsgKndvcmspCi17Ci0Jc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lID0KLQkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqZW5naW5lKSwg
YnJlYWRjcnVtYnMuaXJxX3dvcmspOwotCi0JaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShl
bmdpbmUpOwotfQotCiBzdGF0aWMgdm9pZCBfX2ludGVsX2JyZWFkY3J1bWJzX2FybV9pcnEoc3Ry
dWN0IGludGVsX2JyZWFkY3J1bWJzICpiKQogewogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSA9CkBAIC0yODEsOSArMjcyLDkgQEAgYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFk
Y3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAKIAkJLyoKIAkJICogV2Uga2VlcCB0aGUg
c2Vxbm8gaW4gcmV0aXJlbWVudCBvcmRlciwgc28gd2UgY2FuIGJyZWFrCi0JCSAqIGluc2lkZSBp
bnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxIGFzIHNvb24gYXMgd2UndmUgcGFzc2VkCi0JCSAq
IHRoZSBsYXN0IGNvbXBsZXRlZCByZXF1ZXN0IChvciBzZWVuIGEgcmVxdWVzdCB0aGF0IGhhc24n
dAotCQkgKiBldmVudCBzdGFydGVkKS4gV2UgY291bGQgaXRlcmF0ZSB0aGUgdGltZWxpbmUtPnJl
cXVlc3RzIGxpc3QsCisJCSAqIGluc2lkZSBpbnRlbF9lbmdpbmVfc2lnbmFsX2JyZWFkY3J1bWJz
IGFzIHNvb24gYXMgd2UndmUKKwkJICogcGFzc2VkIHRoZSBsYXN0IGNvbXBsZXRlZCByZXF1ZXN0
IChvciBzZWVuIGEgcmVxdWVzdCB0aGF0CisJCSAqIGhhc24ndCBldmVudCBzdGFydGVkKS4gV2Ug
Y291bGQgd2FsayB0aGUgdGltZWxpbmUtPnJlcXVlc3RzLAogCQkgKiBidXQga2VlcGluZyBhIHNl
cGFyYXRlIHNpZ25hbGVyc19saXN0IGhhcyB0aGUgYWR2YW50YWdlIG9mCiAJCSAqIGhvcGVmdWxs
eSBiZWluZyBtdWNoIHNtYWxsZXIgdGhhbiB0aGUgZnVsbCBsaXN0IGFuZCBzbwogCQkgKiBwcm92
aWRlcyBmYXN0ZXIgaXRlcmF0aW9uIGFuZCBkZXRlY3Rpb24gd2hlbiB0aGVyZSBhcmUgbm8KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5kZXggMDE3NjVhN2VjMThmLi5lMTc1
MGQwODNjOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCkBAIC0yMDYs
MTMgKzIwNiwxMSBAQCB2b2lkIGludGVsX2VuZ2luZV9maW5pX2JyZWFkY3J1bWJzKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiB2b2lkIGludGVsX2VuZ2luZV9kaXNhcm1fYnJlYWRj
cnVtYnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIAogc3RhdGljIGlubGluZSB2
b2lkCi1pbnRlbF9lbmdpbmVfcXVldWVfYnJlYWRjcnVtYnMoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQoraW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icyhzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCiB7CiAJaXJxX3dvcmtfcXVldWUoJmVuZ2luZS0+YnJlYWRjcnVt
YnMuaXJxX3dvcmspOwogfQogCi12b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKLQogdm9pZCBpbnRlbF9lbmdpbmVfcmVzZXRf
YnJlYWRjcnVtYnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIHZvaWQgaW50ZWxf
ZW5naW5lX2ZpbmlfYnJlYWRjcnVtYnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsK
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYwppbmRleCAzMzJiMTJhNTc0ZmIu
LmY3OTZiZGYxZWQzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMKQEAg
LTI4LDcgKzI4LDcgQEAgY3NfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLCB1MzIgaWlyKQogCQl0YXNrbGV0ID0gdHJ1ZTsKIAogCWlmIChpaXIgJiBHVF9SRU5ERVJf
VVNFUl9JTlRFUlJVUFQpIHsKLQkJaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2lu
ZSk7CisJCWludGVsX2VuZ2luZV9zaWduYWxfYnJlYWRjcnVtYnMoZW5naW5lKTsKIAkJdGFza2xl
dCB8PSBpbnRlbF9lbmdpbmVfbmVlZHNfYnJlYWRjcnVtYl90YXNrbGV0KGVuZ2luZSk7CiAJfQog
CkBAIC0yNDUsOSArMjQ1LDkgQEAgdm9pZCBnZW4xMV9ndF9pcnFfcG9zdGluc3RhbGwoc3RydWN0
IGludGVsX2d0ICpndCkKIHZvaWQgZ2VuNV9ndF9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCB1MzIgZ3RfaWlyKQogewogCWlmIChndF9paXIgJiBHVF9SRU5ERVJfVVNFUl9JTlRFUlJV
UFQpCi0JCWludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoZ3QtPmVuZ2luZV9jbGFzc1tSRU5E
RVJfQ0xBU1NdWzBdKTsKKwkJaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icyhndC0+ZW5n
aW5lX2NsYXNzW1JFTkRFUl9DTEFTU11bMF0pOwogCWlmIChndF9paXIgJiBJTEtfQlNEX1VTRVJf
SU5URVJSVVBUKQotCQlpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxKGd0LT5lbmdpbmVfY2xh
c3NbVklERU9fREVDT0RFX0NMQVNTXVswXSk7CisJCWludGVsX2VuZ2luZV9zaWduYWxfYnJlYWRj
cnVtYnMoZ3QtPmVuZ2luZV9jbGFzc1tWSURFT19ERUNPREVfQ0xBU1NdWzBdKTsKIH0KIAogc3Rh
dGljIHZvaWQgZ2VuN19wYXJpdHlfZXJyb3JfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2d0ICpn
dCwgdTMyIGlpcikKQEAgLTI3MSwxMSArMjcxLDExIEBAIHN0YXRpYyB2b2lkIGdlbjdfcGFyaXR5
X2Vycm9yX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHUzMiBpaXIpCiB2b2lkIGdl
bjZfZ3RfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2d0ICpndCwgdTMyIGd0X2lpcikKIHsKIAlp
ZiAoZ3RfaWlyICYgR1RfUkVOREVSX1VTRVJfSU5URVJSVVBUKQotCQlpbnRlbF9lbmdpbmVfYnJl
YWRjcnVtYnNfaXJxKGd0LT5lbmdpbmVfY2xhc3NbUkVOREVSX0NMQVNTXVswXSk7CisJCWludGVs
X2VuZ2luZV9zaWduYWxfYnJlYWRjcnVtYnMoZ3QtPmVuZ2luZV9jbGFzc1tSRU5ERVJfQ0xBU1Nd
WzBdKTsKIAlpZiAoZ3RfaWlyICYgR1RfQlNEX1VTRVJfSU5URVJSVVBUKQotCQlpbnRlbF9lbmdp
bmVfYnJlYWRjcnVtYnNfaXJxKGd0LT5lbmdpbmVfY2xhc3NbVklERU9fREVDT0RFX0NMQVNTXVsw
XSk7CisJCWludGVsX2VuZ2luZV9zaWduYWxfYnJlYWRjcnVtYnMoZ3QtPmVuZ2luZV9jbGFzc1tW
SURFT19ERUNPREVfQ0xBU1NdWzBdKTsKIAlpZiAoZ3RfaWlyICYgR1RfQkxUX1VTRVJfSU5URVJS
VVBUKQotCQlpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxKGd0LT5lbmdpbmVfY2xhc3NbQ09Q
WV9FTkdJTkVfQ0xBU1NdWzBdKTsKKwkJaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icyhn
dC0+ZW5naW5lX2NsYXNzW0NPUFlfRU5HSU5FX0NMQVNTXVswXSk7CiAKIAlpZiAoZ3RfaWlyICYg
KEdUX0JMVF9DU19FUlJPUl9JTlRFUlJVUFQgfAogCQkgICAgICBHVF9CU0RfQ1NfRVJST1JfSU5U
RVJSVVBUIHwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggYTc0Mzg3NjY0NTgz
Li4zYWIyYjdlMTgzNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xNDc4
LDcgKzE0NzgsNyBAQCBzdGF0aWMgdm9pZCB2aXJ0dWFsX3hmZXJfYnJlYWRjcnVtYnMoc3RydWN0
IHZpcnR1YWxfZW5naW5lICp2ZSwKIAlpZiAoIWxpc3RfZW1wdHkoJnZlLT5jb250ZXh0LnNpZ25h
bF9saW5rKSkgewogCQlsaXN0X21vdmVfdGFpbCgmdmUtPmNvbnRleHQuc2lnbmFsX2xpbmssCiAJ
CQkgICAgICAgJmVuZ2luZS0+YnJlYWRjcnVtYnMuc2lnbmFsZXJzKTsKLQkJaW50ZWxfZW5naW5l
X3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2luZSk7CisJCWludGVsX2VuZ2luZV9zaWduYWxfYnJlYWRj
cnVtYnMoZW5naW5lKTsKIAl9CiAJc3Bpbl91bmxvY2soJm9sZC0+YnJlYWRjcnVtYnMuaXJxX2xv
Y2spOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggMGU5NGI3MjBj
OTkzLi44ODUxNWM2MTc3M2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpA
QCAtNzQxLDcgKzc0MSw3IEBAIHN0YXRpYyB2b2lkIHJlc2V0X2ZpbmlzaF9lbmdpbmUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWVuZ2luZS0+cmVzZXQuZmluaXNoKGVuZ2luZSk7
CiAJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQoZW5naW5lLT51bmNvcmUsIEZPUkNFV0FLRV9B
TEwpOwogCi0JaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShlbmdpbmUpOworCWludGVsX2Vu
Z2luZV9zaWduYWxfYnJlYWRjcnVtYnMoZW5naW5lKTsKIH0KIAogc3RhdGljIHZvaWQgcmVzZXRf
ZmluaXNoKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGludGVsX2VuZ2luZV9tYXNrX3QgYXdha2UpCkBA
IC03NzAsNyArNzcwLDcgQEAgc3RhdGljIHZvaWQgbm9wX3N1Ym1pdF9yZXF1ZXN0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUocmVxdWVz
dCk7CiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5hY3RpdmUubG9jaywgZmxhZ3Mp
OwogCi0JaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2luZSk7CisJaW50ZWxfZW5n
aW5lX3NpZ25hbF9icmVhZGNydW1icyhlbmdpbmUpOwogfQogCiBzdGF0aWMgdm9pZCBfX2ludGVs
X2d0X3NldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKaW5kZXggOWYyNzI4OWI3MjQ5Li41Y2Ew
ODRiMzAyZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdf
c3VibWlzc2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3Vi
bWlzc2lvbi5jCkBAIC03MjIsNyArNzIyLDcgQEAgc3RhdGljIGludCB4Y3NfcmVzdW1lKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAl9CiAKIAkvKiBQYXBlcmluZyBvdmVyIGxvc3Qg
X2ludGVycnVwdHNfIGltbWVkaWF0ZWx5IGZvbGxvd2luZyB0aGUgcmVzdGFydCAqLwotCWludGVs
X2VuZ2luZV9xdWV1ZV9icmVhZGNydW1icyhlbmdpbmUpOworCWludGVsX2VuZ2luZV9zaWduYWxf
YnJlYWRjcnVtYnMoZW5naW5lKTsKIG91dDoKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dChl
bmdpbmUtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cnBzLmMKaW5kZXggMDhhMzhhM2I5MGIwLi44MzZiYmMyOTYxNTggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jwcy5jCkBAIC0xNTY2LDcgKzE1NjYsNyBAQCB2b2lkIGdlbjZfcnBzX2lycV9o
YW5kbGVyKHN0cnVjdCBpbnRlbF9ycHMgKnJwcywgdTMyIHBtX2lpcikKIAkJcmV0dXJuOwogCiAJ
aWYgKHBtX2lpciAmIFBNX1ZFQk9YX1VTRVJfSU5URVJSVVBUKQotCQlpbnRlbF9lbmdpbmVfYnJl
YWRjcnVtYnNfaXJxKGd0LT5lbmdpbmVbVkVDUzBdKTsKKwkJaW50ZWxfZW5naW5lX3NpZ25hbF9i
cmVhZGNydW1icyhndC0+ZW5naW5lW1ZFQ1MwXSk7CiAKIAlpZiAocG1faWlyICYgUE1fVkVCT1hf
Q1NfRVJST1JfSU5URVJSVVBUKQogCQlEUk1fREVCVUcoIkNvbW1hbmQgcGFyc2VyIGVycm9yLCBw
bV9paXIgMHglMDh4XG4iLCBwbV9paXIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvbW9ja19lbmdpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5l
LmMKaW5kZXggODNmNTQ5ZDIwM2EwLi4zOWRmOWQ0OWExMzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvbW9ja19lbmdpbmUuYwpAQCAtNzcsNyArNzcsNyBAQCBzdGF0aWMgdm9pZCBhZHZhbmNlKHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUo
cmVxdWVzdCk7CiAJR0VNX0JVR19PTighaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChyZXF1ZXN0KSk7
CiAKLQlpbnRlbF9lbmdpbmVfcXVldWVfYnJlYWRjcnVtYnMocmVxdWVzdC0+ZW5naW5lKTsKKwlp
bnRlbF9lbmdpbmVfc2lnbmFsX2JyZWFkY3J1bWJzKHJlcXVlc3QtPmVuZ2luZSk7CiB9CiAKIHN0
YXRpYyB2b2lkIGh3X2RlbGF5X2NvbXBsZXRlKHN0cnVjdCB0aW1lcl9saXN0ICp0KQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmMKaW5kZXggYTUzNDhmNzkxMTRmLi40MmI3OWY1Nzc1MDAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYwpAQCAtMzYxOSw3ICszNjE5LDcgQEAgc3RhdGljIGlycXJldHVybl90
IGk4eHhfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqYXJnKQogCQlpbnRlbF91bmNvcmVfd3Jp
dGUxNigmZGV2X3ByaXYtPnVuY29yZSwgR0VOMl9JSVIsIGlpcik7CiAKIAkJaWYgKGlpciAmIEk5
MTVfVVNFUl9JTlRFUlJVUFQpCi0JCQlpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxKGRldl9w
cml2LT5lbmdpbmVbUkNTMF0pOworCQkJaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icyhk
ZXZfcHJpdi0+ZW5naW5lW1JDUzBdKTsKIAogCQlpZiAoaWlyICYgSTkxNV9NQVNURVJfRVJST1Jf
SU5URVJSVVBUKQogCQkJaTh4eF9lcnJvcl9pcnFfaGFuZGxlcihkZXZfcHJpdiwgZWlyLCBlaXJf
c3R1Y2spOwpAQCAtMzcyNCw3ICszNzI0LDcgQEAgc3RhdGljIGlycXJldHVybl90IGk5MTVfaXJx
X2hhbmRsZXIoaW50IGlycSwgdm9pZCAqYXJnKQogCQlJOTE1X1dSSVRFKEdFTjJfSUlSLCBpaXIp
OwogCiAJCWlmIChpaXIgJiBJOTE1X1VTRVJfSU5URVJSVVBUKQotCQkJaW50ZWxfZW5naW5lX2Jy
ZWFkY3J1bWJzX2lycShkZXZfcHJpdi0+ZW5naW5lW1JDUzBdKTsKKwkJCWludGVsX2VuZ2luZV9z
aWduYWxfYnJlYWRjcnVtYnMoZGV2X3ByaXYtPmVuZ2luZVtSQ1MwXSk7CiAKIAkJaWYgKGlpciAm
IEk5MTVfTUFTVEVSX0VSUk9SX0lOVEVSUlVQVCkKIAkJCWk5eHhfZXJyb3JfaXJxX2hhbmRsZXIo
ZGV2X3ByaXYsIGVpciwgZWlyX3N0dWNrKTsKQEAgLTM4NjYsMTAgKzM4NjYsMTAgQEAgc3RhdGlj
IGlycXJldHVybl90IGk5NjVfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqYXJnKQogCQlJOTE1
X1dSSVRFKEdFTjJfSUlSLCBpaXIpOwogCiAJCWlmIChpaXIgJiBJOTE1X1VTRVJfSU5URVJSVVBU
KQotCQkJaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShkZXZfcHJpdi0+ZW5naW5lW1JDUzBd
KTsKKwkJCWludGVsX2VuZ2luZV9zaWduYWxfYnJlYWRjcnVtYnMoZGV2X3ByaXYtPmVuZ2luZVtS
Q1MwXSk7CiAKIAkJaWYgKGlpciAmIEk5MTVfQlNEX1VTRVJfSU5URVJSVVBUKQotCQkJaW50ZWxf
ZW5naW5lX2JyZWFkY3J1bWJzX2lycShkZXZfcHJpdi0+ZW5naW5lW1ZDUzBdKTsKKwkJCWludGVs
X2VuZ2luZV9zaWduYWxfYnJlYWRjcnVtYnMoZGV2X3ByaXYtPmVuZ2luZVtWQ1MwXSk7CiAKIAkJ
aWYgKGlpciAmIEk5MTVfTUFTVEVSX0VSUk9SX0lOVEVSUlVQVCkKIAkJCWk5eHhfZXJyb3JfaXJx
X2hhbmRsZXIoZGV2X3ByaXYsIGVpciwgZWlyX3N0dWNrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMKaW5kZXggYTU1OGY2NDE4NmZhLi4zMTA5YjhhNzliOWYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jCkBAIC00MTUsNyArNDE1LDcgQEAgYm9vbCBfX2k5MTVfcmVxdWVz
dF9zdWJtaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKIAlpZiAodGVzdF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsICZyZXF1ZXN0LT5mZW5jZS5mbGFncykgJiYK
IAkgICAgIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJnJlcXVlc3QtPmZl
bmNlLmZsYWdzKSAmJgogCSAgICAhaTkxNV9yZXF1ZXN0X2VuYWJsZV9icmVhZGNydW1iKHJlcXVl
c3QpKQotCQlpbnRlbF9lbmdpbmVfcXVldWVfYnJlYWRjcnVtYnMoZW5naW5lKTsKKwkJaW50ZWxf
ZW5naW5lX3NpZ25hbF9icmVhZGNydW1icyhlbmdpbmUpOwogCiAJX19ub3RpZnlfZXhlY3V0ZV9j
YihyZXF1ZXN0KTsKIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
