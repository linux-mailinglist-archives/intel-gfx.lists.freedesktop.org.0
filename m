Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B94CB4BA
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 09:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE0F6EAA5;
	Fri,  4 Oct 2019 07:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4552E6EAA5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 07:02:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18717675-1500050 
 for multiple; Fri, 04 Oct 2019 08:02:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 08:02:03 +0100
Message-Id: <20191004070203.29496-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003185613.27484-1-chris@chris-wilson.co.uk>
References: <20191003185613.27484-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] TGL HAX drm/i915/tgl: Interrupts are overrated
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

V2h5IHNsZWVwIHdoZW4geW91IGNhbiBidXN5d2FpdCBmb3IgYW4gaW50ZXJydXB0PyBUaHJvdyBv
dXQgdGhlIG9sZCBpcnEKaGFuZGxlcnMsIGFuZCB1c2UgaXJxX3BvbGwgaW5zdGVhZC4KClJlZmVy
ZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTg4
MApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcgICAgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyAgICAgICAgICAgfCAgNSArKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDMgKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jICAgICAgIHwgMTAgKysrLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICB8IDM0ICsrKysrKysrKysrKysrKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICAzICsr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICB8IDE0ICsrKysr
Ky0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICB8ICAxIC0K
IDggZmlsZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZwppbmRleCAwZDIxNDAyOTQ1YWIuLmJmMmIyN2I2ZWJmMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9L
Y29uZmlnCkBAIC0xMyw2ICsxMyw3IEBAIGNvbmZpZyBEUk1fSTkxNQogCXNlbGVjdCBEUk1fUEFO
RUwKIAlzZWxlY3QgRFJNX01JUElfRFNJCiAJc2VsZWN0IFJFTEFZCisJc2VsZWN0IElSUV9QT0xM
CiAJc2VsZWN0IElSUV9XT1JLCiAJIyBpOTE1IGRlcGVuZHMgb24gQUNQSV9WSURFTyB3aGVuIEFD
UEkgaXMgZW5hYmxlZAogCSMgYnV0IGZvciBzZWxlY3QgdG8gd29yaywgbmVlZCB0byBzZWxlY3Qg
QUNQSV9WSURFTydzIGRlcGVuZGVuY2llcywgaWNrCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9LY29uZmlnLmRlYnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1
ZwppbmRleCA0YTgwMGZhYTI3NWMuLjRkMjNhODRhYzJjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29u
ZmlnLmRlYnVnCkBAIC00NCw2ICs0NCw3IEBAIGNvbmZpZyBEUk1fSTkxNV9ERUJVRwogCXNlbGVj
dCBEUk1fSTkxNV9TRUxGVEVTVAogCXNlbGVjdCBEUk1fSTkxNV9ERUJVR19SVU5USU1FX1BNCiAJ
c2VsZWN0IERSTV9JOTE1X0RFQlVHX01NSU8KKwlzZWxlY3QgVElHRVJMQUtFX0RFQlVHX0lSUQog
ICAgICAgICBkZWZhdWx0IG4KICAgICAgICAgaGVscAogICAgICAgICAgIENob29zZSB0aGlzIG9w
dGlvbiB0byB0dXJuIG9uIGV4dHJhIGRyaXZlciBkZWJ1Z2dpbmcgdGhhdCBtYXkgYWZmZWN0CkBA
IC0yMjAsMyArMjIxLDcgQEAgY29uZmlnIERSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0KIAkgIGRy
aXZlciBsb2FkaW5nLCBzdXNwZW5kIGFuZCByZXN1bWUgb3BlcmF0aW9ucy4KIAogCSAgSWYgaW4g
ZG91YnQsIHNheSAiTiIKKworY29uZmlnIFRJR0VSTEFLRV9ERUJVR19JUlEKKwlib29sICJbVEdM
XSBSZWR1Y2UgSVJRIGZ1bmN0aW9uYWxpdHkgZm9yIHN0YWJpbGl0eSIKKwlkZWZhdWx0IG4KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKaW5kZXggOTQzZjA2
NjM4MzdlLi41MzI2NWFkZDgxZWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV90eXBlcy5oCkBAIC04LDYgKzgsNyBAQAogI2RlZmluZSBfX0lOVEVMX0VOR0lORV9U
WVBFU19fCiAKICNpbmNsdWRlIDxsaW51eC9oYXNodGFibGUuaD4KKyNpbmNsdWRlIDxsaW51eC9p
cnFfcG9sbC5oPgogI2luY2x1ZGUgPGxpbnV4L2lycV93b3JrLmg+CiAjaW5jbHVkZSA8bGludXgv
a3JlZi5oPgogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KQEAgLTMzMCw2ICszMzEsOCBAQCBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZGVmYXVs
dF9zdGF0ZTsKIAl2b2lkICpwaW5uZWRfZGVmYXVsdF9zdGF0ZTsKIAorCXN0cnVjdCBpcnFfcG9s
bCBpcnFfcG9sbDsKKwogCXN0cnVjdCB7CiAJCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nOwogCQlz
dHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9pcnEuYwppbmRleCAzNGE0ZmI2MjRiZjcuLjkxYmE2MGNkOTkxZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMKQEAgLTIwOSwxMiArMjA5LDE0IEBAIHZvaWQgZ2Vu
MTFfZ3RfaXJxX3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAKIHZvaWQgZ2VuMTFfZ3RfaXJx
X3Bvc3RpbnN0YWxsKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0JY29uc3QgdTMyIGlycXMgPSBH
VF9SRU5ERVJfVVNFUl9JTlRFUlJVUFQgfCBHVF9DT05URVhUX1NXSVRDSF9JTlRFUlJVUFQ7CiAJ
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKLQljb25zdCB1MzIgZG1h
c2sgPSBpcnFzIDw8IDE2IHwgaXJxczsKLQljb25zdCB1MzIgc21hc2sgPSBpcnFzIDw8IDE2Owor
CXUzMiBpcnFzLCBkbWFzaywgc21hc2s7CiAKLQlCVUlMRF9CVUdfT04oaXJxcyAmIDB4ZmZmZjAw
MDApOworCWlycXMgPSBHVF9SRU5ERVJfVVNFUl9JTlRFUlJVUFQgfCBHVF9DT05URVhUX1NXSVRD
SF9JTlRFUlJVUFQ7CisJaWYgKFRJR0VSTEFLRV9OT19JUlEoZ3QtPmk5MTUpKQorCQlpcnFzID0g
MDsgLyogWFhYIGxhbGFsYWxhICovCisJc21hc2sgPSBpcnFzIDw8IDE2OworCWRtYXNrID0gc21h
c2sgfCBpcnFzOwogCiAJLyogRW5hYmxlIFJDUywgQkNTLCBWQ1MgYW5kIFZFQ1MgY2xhc3MgaW50
ZXJydXB0cy4gKi8KIAlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4xMV9SRU5ERVJfQ09Q
WV9JTlRSX0VOQUJMRSwgZG1hc2spOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRl
eCA0MzFkM2I4YzMzNzEuLjkwMGI0NzNlMjgwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKQEAgLTE5NDQsNiArMTk0NCw4IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCQkJR0VNX0JVR19PTihleGVjbGlzdHMtPmFj
dGl2ZSAtIGV4ZWNsaXN0cy0+aW5mbGlnaHQgPgogCQkJCSAgIGV4ZWNsaXN0c19udW1fcG9ydHMo
ZXhlY2xpc3RzKSk7CisKKwkJCWludGVsX2VuZ2luZV9xdWV1ZV9icmVhZGNydW1icyhlbmdpbmUp
OwogCQl9CiAJfSB3aGlsZSAoaGVhZCAhPSB0YWlsKTsKIApAQCAtMTk4Nyw2ICsxOTg5LDI3IEBA
IHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBk
YXRhKQogCX0KIH0KIAorc3RhdGljIGludCBpb3BfaGFuZGxlcihzdHJ1Y3QgaXJxX3BvbGwgKmlv
cCwgaW50IGJ1ZGdldCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPQorCQlj
b250YWluZXJfb2YoaW9wLCB0eXBlb2YoKmVuZ2luZSksIGlycV9wb2xsKTsKKwlzdHJ1Y3QgaW50
ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xpc3RzOworCXN0
cnVjdCB0YXNrbGV0X3N0cnVjdCAqdCA9ICZleGVjbGlzdHMtPnRhc2tsZXQ7CisKKwlpZiAoZXhl
Y2xpc3RzLT5jc2JfaGVhZCA9PSBSRUFEX09OQ0UoKmV4ZWNsaXN0cy0+Y3NiX3dyaXRlKSkKKwkJ
cmV0dXJuIDA7CisKKwlpZiAoIXRhc2tsZXRfdHJ5bG9jayh0KSkKKwkJcmV0dXJuIDA7CisKKwkv
KiBNdXN0IHdhaXQgZm9yIGFueSBHUFUgcmVzZXQgaW4gcHJvZ3Jlc3MuICovCisJaWYgKF9fdGFz
a2xldF9pc19lbmFibGVkKHQpKQorCQl0LT5mdW5jKHQtPmRhdGEpOworCisJdGFza2xldF91bmxv
Y2sodCk7CisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXNzaW9u
X3RpbWVyKHN0cnVjdCB0aW1lcl9saXN0ICp0aW1lcikKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUgPQpAQCAtMzQxNCw5ICszNDM3LDE2IEBAIGdlbjEyX2VtaXRfZmluaV9icmVh
ZGNydW1iX3JjcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIgKmNzKQogCXJldHVy
biBnZW4xMl9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9mb290ZXIocmVxdWVzdCwgY3MpOwogfQogCitz
dGF0aWMgdm9pZCB0Z2xfdW5wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sK
KwljbGVhcl9iaXQoSVJRX1BPTExfRl9ESVNBQkxFLCAmZW5naW5lLT5pcnFfcG9sbC5zdGF0ZSk7
CisJaXJxX3BvbGxfc2NoZWQoJmVuZ2luZS0+aXJxX3BvbGwpOworfQorCiBzdGF0aWMgdm9pZCBl
eGVjbGlzdHNfcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJZGVsX3Rp
bWVyKCZlbmdpbmUtPmV4ZWNsaXN0cy50aW1lcik7CisJc2V0X2JpdChJUlFfUE9MTF9GX0RJU0FC
TEUsICZlbmdpbmUtPmlycV9wb2xsLnN0YXRlKTsKIH0KIAogdm9pZCBpbnRlbF9leGVjbGlzdHNf
c2V0X2RlZmF1bHRfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCkBA
IC0zNDMyLDYgKzM0NjIsOCBAQCB2b2lkIGludGVsX2V4ZWNsaXN0c19zZXRfZGVmYXVsdF9zdWJt
aXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCWVuZ2luZS0+cGFyayA9
IGV4ZWNsaXN0c19wYXJrOwogCWVuZ2luZS0+dW5wYXJrID0gTlVMTDsKKwlpZiAoVElHRVJMQUtF
X05PX0lSUShlbmdpbmUtPmk5MTUpKQorCQllbmdpbmUtPnVucGFyayA9IHRnbF91bnBhcms7CiAK
IAllbmdpbmUtPmZsYWdzIHw9IEk5MTVfRU5HSU5FX1NVUFBPUlRTX1NUQVRTOwogCWlmICghaW50
ZWxfdmdwdV9hY3RpdmUoZW5naW5lLT5pOTE1KSkgewpAQCAtMzQ0Niw2ICszNDc4LDcgQEAgdm9p
ZCBpbnRlbF9leGVjbGlzdHNfc2V0X2RlZmF1bHRfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAKIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXN0cm95KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKKwlpcnFfcG9sbF9kaXNhYmxlKCZlbmdpbmUtPmly
cV9wb2xsKTsKIAlpbnRlbF9lbmdpbmVfY2xlYW51cF9jb21tb24oZW5naW5lKTsKIAlscmNfZGVz
dHJveV93YV9jdHgoZW5naW5lKTsKIAlrZnJlZShlbmdpbmUpOwpAQCAtMzUzMiw2ICszNTY1LDcg
QEAgc3RhdGljIHZvaWQgcmNzX3N1Ym1pc3Npb25fb3ZlcnJpZGUoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCiBpbnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb25fc2V0dXAoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogeworCWlycV9wb2xsX2luaXQoJmVuZ2luZS0+
aXJxX3BvbGwsIC0xLCBpb3BfaGFuZGxlcik7CiAJdGFza2xldF9pbml0KCZlbmdpbmUtPmV4ZWNs
aXN0cy50YXNrbGV0LAogCQkgICAgIGV4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQsICh1bnNp
Z25lZCBsb25nKWVuZ2luZSk7CiAJdGltZXJfc2V0dXAoJmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVy
LCBleGVjbGlzdHNfc3VibWlzc2lvbl90aW1lciwgMCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApp
bmRleCAzMzdkODMwNjQxNmEuLmM1MDVkOWUzOGU5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CkBAIC0yMDY5LDYgKzIwNjksOSBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKICNkZWZpbmUgSVNfR0VOOV9MUChkZXZfcHJpdikJKElTX0dFTihk
ZXZfcHJpdiwgOSkgJiYgSVNfTFAoZGV2X3ByaXYpKQogI2RlZmluZSBJU19HRU45X0JDKGRldl9w
cml2KQkoSVNfR0VOKGRldl9wcml2LCA5KSAmJiAhSVNfTFAoZGV2X3ByaXYpKQogCisjZGVmaW5l
IFRJR0VSTEFLRV9OT19JUlEoaTkxNSkgXAorCUlTX0VOQUJMRUQoQ09ORklHX1RJR0VSTEFLRV9E
RUJVR19JUlEpICYmIElTX1RJR0VSTEFLRShpOTE1KQorCiAjZGVmaW5lIEhBU19FTkdJTkUoZGV2
X3ByaXYsIGlkKSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmVuZ2luZV9tYXNrICYgQklUKGlkKSkK
IAogI2RlZmluZSBFTkdJTkVfSU5TVEFOQ0VTX01BU0soZGV2X3ByaXYsIGZpcnN0LCBjb3VudCkg
KHsJCVwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IGJjODNmMDk0MDY1YS4uMDUwNjBmODI5
OTgxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTM2MCw2ICszNjAsOSBAQCB2b2lkIGdl
bjZfZW5hYmxlX3Jwc19pbnRlcnJ1cHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAlpZiAoUkVBRF9PTkNFKHJwcy0+aW50ZXJydXB0c19lbmFibGVkKSkKIAkJcmV0dXJuOwog
CisJaWYgKCFkZXZfcHJpdi0+cG1fcnBzX2V2ZW50cykKKwkJcmV0dXJuOworCiAJc3Bpbl9sb2Nr
X2lycSgmZ3QtPmlycV9sb2NrKTsKIAlXQVJOX09OX09OQ0UocnBzLT5wbV9paXIpOwogCkBAIC0z
NzYsNyArMzc5LDEyIEBAIHZvaWQgZ2VuNl9lbmFibGVfcnBzX2ludGVycnVwdHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiB1MzIgZ2VuNl9zYW5pdGl6ZV9ycHNfcG1fbWFz
ayhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIG1hc2spCiB7Ci0JcmV0
dXJuIG1hc2sgJiB+aTkxNS0+Z3RfcG0ucnBzLnBtX2ludHJtc2tfbWJ6OworCWNvbnN0IHN0cnVj
dCBpbnRlbF9ycHMgKnJwcyA9ICZpOTE1LT5ndF9wbS5ycHM7CisKKwlpZiAoIXJwcy0+aW50ZXJy
dXB0c19lbmFibGVkKQorCQlyZXR1cm4gfjB1OworCisJcmV0dXJuIG1hc2sgJiB+cnBzLT5wbV9p
bnRybXNrX21iejsKIH0KIAogdm9pZCBnZW42X2Rpc2FibGVfcnBzX2ludGVycnVwdHMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtNDMxNCw3ICs0MzIyLDkgQEAgdm9pZCBp
bnRlbF9pcnFfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWRldl9w
cml2LT5ndC5wbV9ndWNfZXZlbnRzID0gR1VDX0lOVFJfR1VDMkhPU1QgPDwgMTY7CiAKIAkvKiBM
ZXQncyB0cmFjayB0aGUgZW5hYmxlZCBycHMgZXZlbnRzICovCi0JaWYgKElTX1ZBTExFWVZJRVco
ZGV2X3ByaXYpKQorCWlmIChUSUdFUkxBS0VfTk9fSVJRKGRldl9wcml2KSkKKwkJZGV2X3ByaXYt
PnBtX3Jwc19ldmVudHMgPSAwOworCWVsc2UgaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQog
CQkvKiBXYUdzdlJDMFJlc2lkZW5jeU1ldGhvZDp2bHYgKi8KIAkJZGV2X3ByaXYtPnBtX3Jwc19l
dmVudHMgPSBHRU42X1BNX1JQX1VQX0VJX0VYUElSRUQ7CiAJZWxzZQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMKaW5kZXggMWNiZjM5OThiMzYxLi44NmJlMTBjYzZhNzAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYwpAQCAtODA2LDcgKzgwNiw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2
aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJLmRpc3BsYXkuaGFzX21vZHVs
YXJfZmlhID0gMSwKIAkuZW5naW5lX21hc2sgPQogCQlCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBC
SVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAotCS5oYXNfcnBzID0gZmFsc2UsIC8q
IFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICovCiB9OwogCiAjdW5kZWYgR0VOCi0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
