Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA534CB5D9
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 10:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C256EAD5;
	Fri,  4 Oct 2019 08:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FEAF6EAD5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 08:18:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18718632-1500050 
 for multiple; Fri, 04 Oct 2019 09:17:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 09:17:50 +0100
Message-Id: <20191004081750.22413-1-chris@chris-wilson.co.uk>
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
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgMTUgKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMgICAgICAgfCAxMyArKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgIHwgNDcgKysrKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgIHwg
IDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgIHwgMTQg
KysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICB8ICAx
IC0KIDggZmlsZXMgY2hhbmdlZCwgOTAgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvS2NvbmZpZwppbmRleCAwZDIxNDAyOTQ1YWIuLmJmMmIyN2I2ZWJmMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9LY29uZmlnCkBAIC0xMyw2ICsxMyw3IEBAIGNvbmZpZyBEUk1fSTkxNQogCXNlbGVjdCBEUk1f
UEFORUwKIAlzZWxlY3QgRFJNX01JUElfRFNJCiAJc2VsZWN0IFJFTEFZCisJc2VsZWN0IElSUV9Q
T0xMCiAJc2VsZWN0IElSUV9XT1JLCiAJIyBpOTE1IGRlcGVuZHMgb24gQUNQSV9WSURFTyB3aGVu
IEFDUEkgaXMgZW5hYmxlZAogCSMgYnV0IGZvciBzZWxlY3QgdG8gd29yaywgbmVlZCB0byBzZWxl
Y3QgQUNQSV9WSURFTydzIGRlcGVuZGVuY2llcywgaWNrCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5k
ZWJ1ZwppbmRleCA0YTgwMGZhYTI3NWMuLjRkMjNhODRhYzJjNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9L
Y29uZmlnLmRlYnVnCkBAIC00NCw2ICs0NCw3IEBAIGNvbmZpZyBEUk1fSTkxNV9ERUJVRwogCXNl
bGVjdCBEUk1fSTkxNV9TRUxGVEVTVAogCXNlbGVjdCBEUk1fSTkxNV9ERUJVR19SVU5USU1FX1BN
CiAJc2VsZWN0IERSTV9JOTE1X0RFQlVHX01NSU8KKwlzZWxlY3QgVElHRVJMQUtFX0RFQlVHX0lS
UQogICAgICAgICBkZWZhdWx0IG4KICAgICAgICAgaGVscAogICAgICAgICAgIENob29zZSB0aGlz
IG9wdGlvbiB0byB0dXJuIG9uIGV4dHJhIGRyaXZlciBkZWJ1Z2dpbmcgdGhhdCBtYXkgYWZmZWN0
CkBAIC0yMjAsMyArMjIxLDcgQEAgY29uZmlnIERSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0KIAkg
IGRyaXZlciBsb2FkaW5nLCBzdXNwZW5kIGFuZCByZXN1bWUgb3BlcmF0aW9ucy4KIAogCSAgSWYg
aW4gZG91YnQsIHNheSAiTiIKKworY29uZmlnIFRJR0VSTEFLRV9ERUJVR19JUlEKKwlib29sICJb
VEdMXSBSZWR1Y2UgSVJRIGZ1bmN0aW9uYWxpdHkgZm9yIHN0YWJpbGl0eSIKKwlkZWZhdWx0IG4K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKaW5kZXggOTQz
ZjA2NjM4MzdlLi5kM2MzNmU1N2I4ODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oCkBAIC04LDYgKzgsNyBAQAogI2RlZmluZSBfX0lOVEVMX0VOR0lO
RV9UWVBFU19fCiAKICNpbmNsdWRlIDxsaW51eC9oYXNodGFibGUuaD4KKyNpbmNsdWRlIDxsaW51
eC9pcnFfcG9sbC5oPgogI2luY2x1ZGUgPGxpbnV4L2lycV93b3JrLmg+CiAjaW5jbHVkZSA8bGlu
dXgva3JlZi5oPgogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KQEAgLTMzMCw2ICszMzEsOSBAQCBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZGVm
YXVsdF9zdGF0ZTsKIAl2b2lkICpwaW5uZWRfZGVmYXVsdF9zdGF0ZTsKIAorCXN0cnVjdCBpcnFf
cG9sbCBpcnFfcG9sbDsKKwlhdG9taWNfdCBpcnFfY291bnQ7CisKIAlzdHJ1Y3QgewogCQlzdHJ1
Y3QgaW50ZWxfcmluZyAqcmluZzsKIAkJc3RydWN0IGludGVsX3RpbWVsaW5lICp0aW1lbGluZTsK
QEAgLTQ4MCw4ICs0ODQsOSBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzIHsKICNkZWZpbmUgSTkx
NV9FTkdJTkVfSEFTX1BSRUVNUFRJT04gICBCSVQoMikKICNkZWZpbmUgSTkxNV9FTkdJTkVfSEFT
X1NFTUFQSE9SRVMgICBCSVQoMykKICNkZWZpbmUgSTkxNV9FTkdJTkVfTkVFRFNfQlJFQURDUlVN
Ql9UQVNLTEVUIEJJVCg0KQotI2RlZmluZSBJOTE1X0VOR0lORV9JU19WSVJUVUFMICAgICAgIEJJ
VCg1KQotI2RlZmluZSBJOTE1X0VOR0lORV9IQVNfUkVMQVRJVkVfTU1JTyBCSVQoNikKKyNkZWZp
bmUgSTkxNV9FTkdJTkVfTkVFRFNfSVJRX1BPTEwgICBCSVQoNSkKKyNkZWZpbmUgSTkxNV9FTkdJ
TkVfSVNfVklSVFVBTCAgICAgICBCSVQoNikKKyNkZWZpbmUgSTkxNV9FTkdJTkVfSEFTX1JFTEFU
SVZFX01NSU8gQklUKDcpCiAJdW5zaWduZWQgaW50IGZsYWdzOwogCiAJLyoKQEAgLTU3MSw2ICs1
NzYsMTIgQEAgaW50ZWxfZW5naW5lX25lZWRzX2JyZWFkY3J1bWJfdGFza2xldChjb25zdCBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmV0dXJuIGVuZ2luZS0+ZmxhZ3MgJiBJOTE1
X0VOR0lORV9ORUVEU19CUkVBRENSVU1CX1RBU0tMRVQ7CiB9CiAKK3N0YXRpYyBpbmxpbmUgYm9v
bAoraW50ZWxfZW5naW5lX25lZWRzX2lycV9wb2xsKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKK3sKKwlyZXR1cm4gZW5naW5lLT5mbGFncyAmIEk5MTVfRU5HSU5FX05FRURT
X0lSUV9QT0xMOworfQorCiBzdGF0aWMgaW5saW5lIGJvb2wKIGludGVsX2VuZ2luZV9pc192aXJ0
dWFsKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMKaW5kZXggMzRhNGZiNjI0YmY3Li43ZDRjMmYxODU3NmUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jCkBAIC00NSw2ICs0NSw5IEBA
IGdlbjExX2d0X2VuZ2luZV9pZGVudGl0eShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogCiAJbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmZ3QtPmlycV9sb2NrKTsKIAorCWlmIChXQVJOX09OKFRJR0VSTEFLRV9O
T19JUlEoZ3QtPmk5MTUpKSkKKwkJcmV0dXJuIDA7CisKIAlyYXdfcmVnX3dyaXRlKHJlZ3MsIEdF
TjExX0lJUl9SRUdfU0VMRUNUT1IoYmFuayksIEJJVChiaXQpKTsKIAogCS8qCkBAIC0yMDksMTIg
KzIxMiwxNCBAQCB2b2lkIGdlbjExX2d0X2lycV9yZXNldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQog
CiB2b2lkIGdlbjExX2d0X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewot
CWNvbnN0IHUzMiBpcnFzID0gR1RfUkVOREVSX1VTRVJfSU5URVJSVVBUIHwgR1RfQ09OVEVYVF9T
V0lUQ0hfSU5URVJSVVBUOwogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNv
cmU7Ci0JY29uc3QgdTMyIGRtYXNrID0gaXJxcyA8PCAxNiB8IGlycXM7Ci0JY29uc3QgdTMyIHNt
YXNrID0gaXJxcyA8PCAxNjsKKwl1MzIgaXJxcywgZG1hc2ssIHNtYXNrOwogCi0JQlVJTERfQlVH
X09OKGlycXMgJiAweGZmZmYwMDAwKTsKKwlpcnFzID0gR1RfUkVOREVSX1VTRVJfSU5URVJSVVBU
IHwgR1RfQ09OVEVYVF9TV0lUQ0hfSU5URVJSVVBUOworCWlmIChUSUdFUkxBS0VfTk9fSVJRKGd0
LT5pOTE1KSkKKwkJaXJxcyA9IDA7IC8qIFhYWCBsYWxhbGFsYSAqLworCXNtYXNrID0gaXJxcyA8
PCAxNjsKKwlkbWFzayA9IHNtYXNrIHwgaXJxczsKIAogCS8qIEVuYWJsZSBSQ1MsIEJDUywgVkNT
IGFuZCBWRUNTIGNsYXNzIGludGVycnVwdHMuICovCiAJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29y
ZSwgR0VOMTFfUkVOREVSX0NPUFlfSU5UUl9FTkFCTEUsIGRtYXNrKTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKaW5kZXggNDMxZDNiOGMzMzcxLi4xYTc4NWU4NzZhMzIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC05ODksNiArOTg5LDkgQEAgX19leGVjbGlzdHNf
c2NoZWR1bGVfaW4oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJZXhlY2xpc3RzX2NvbnRleHRf
c3RhdHVzX2NoYW5nZShycSwgSU5URUxfQ09OVEVYVF9TQ0hFRFVMRV9JTik7CiAJaW50ZWxfZW5n
aW5lX2NvbnRleHRfaW4oZW5naW5lKTsKIAorCWlmIChpbnRlbF9lbmdpbmVfbmVlZHNfaXJxX3Bv
bGwoZW5naW5lKSkKKwkJYXRvbWljX2luYygmZW5naW5lLT5pcnFfY291bnQpOworCiAJcmV0dXJu
IGVuZ2luZTsKIH0KIApAQCAtMTAyOCw2ICsxMDMxLDEwIEBAIF9fZXhlY2xpc3RzX3NjaGVkdWxl
X291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKIHsKIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
IGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7CiAKKwlpZiAoaW50ZWxfZW5naW5lX25lZWRzX2ly
cV9wb2xsKGVuZ2luZSkgJiYKKwkgICAgYXRvbWljX2RlY19hbmRfdGVzdCgmZW5naW5lLT5pcnFf
Y291bnQpKQorCQlzZXRfYml0KElSUV9QT0xMX0ZfRElTQUJMRSwgJmVuZ2luZS0+aXJxX3BvbGwu
c3RhdGUpOworCiAJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KGVuZ2luZSk7CiAJZXhlY2xpc3Rz
X2NvbnRleHRfc3RhdHVzX2NoYW5nZShycSwgSU5URUxfQ09OVEVYVF9TQ0hFRFVMRV9PVVQpOwog
CWludGVsX2d0X3BtX3B1dChlbmdpbmUtPmd0KTsKQEAgLTExOTYsNiArMTIwMywxMSBAQCBzdGF0
aWMgdm9pZCBleGVjbGlzdHNfc3VibWl0X3BvcnRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKIAkvKiB3ZSBuZWVkIHRvIG1hbnVhbGx5IGxvYWQgdGhlIHN1Ym1pdCBxdWV1ZSAqLwog
CWlmIChleGVjbGlzdHMtPmN0cmxfcmVnKQogCQl3cml0ZWwoRUxfQ1RSTF9MT0FELCBleGVjbGlz
dHMtPmN0cmxfcmVnKTsKKworCWlmIChhdG9taWNfcmVhZCgmZW5naW5lLT5pcnFfY291bnQpKSB7
CisJCWNsZWFyX2JpdChJUlFfUE9MTF9GX0RJU0FCTEUsICZlbmdpbmUtPmlycV9wb2xsLnN0YXRl
KTsKKwkJaXJxX3BvbGxfc2NoZWQoJmVuZ2luZS0+aXJxX3BvbGwpOworCX0KIH0KIAogc3RhdGlj
IGJvb2wgY3R4X3NpbmdsZV9wb3J0X3N1Ym1pc3Npb24oY29uc3Qgc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlKQpAQCAtMTgzOCw2ICsxODUwLDExIEBAIGdlbjhfY3NiX3BhcnNlKGNvbnN0IHN0cnVj
dCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMsIGNvbnN0IHUzMiAqY3NiKQogCXJl
dHVybiAqY3NiICYgKEdFTjhfQ1RYX1NUQVRVU19JRExFX0FDVElWRSB8IEdFTjhfQ1RYX1NUQVRV
U19QUkVFTVBURUQpOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaGFzX2JyZWFkY3J1bWJzKHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXJldHVybiAhbGlzdF9lbXB0eSgmcnEtPmh3X2Nv
bnRleHQtPnNpZ25hbHMpOworfQorCiBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMg
KiBjb25zdCBleGVjbGlzdHMgPSAmZW5naW5lLT5leGVjbGlzdHM7CkBAIC0xOTQwLDYgKzE5NTcs
MTAgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogCQkJICovCiAJCQlHRU1fQlVHX09OKCFpOTE1X3JlcXVlc3RfY29tcGxldGVkKCpleGVj
bGlzdHMtPmFjdGl2ZSkgJiYKIAkJCQkgICAhcmVzZXRfaW5fcHJvZ3Jlc3MoZXhlY2xpc3RzKSk7
CisKKwkJCWlmIChoYXNfYnJlYWRjcnVtYnMoKmV4ZWNsaXN0cy0+YWN0aXZlKSkKKwkJCQlpbnRl
bF9lbmdpbmVfcXVldWVfYnJlYWRjcnVtYnMoZW5naW5lKTsKKwogCQkJZXhlY2xpc3RzX3NjaGVk
dWxlX291dCgqZXhlY2xpc3RzLT5hY3RpdmUrKyk7CiAKIAkJCUdFTV9CVUdfT04oZXhlY2xpc3Rz
LT5hY3RpdmUgLSBleGVjbGlzdHMtPmluZmxpZ2h0ID4KQEAgLTE5ODcsNiArMjAwOCwyNyBAQCBz
dGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90YXNrbGV0KHVuc2lnbmVkIGxvbmcgZGF0
YSkKIAl9CiB9CiAKK3N0YXRpYyBpbnQgaW9wX2hhbmRsZXIoc3RydWN0IGlycV9wb2xsICppb3As
IGludCBidWRnZXQpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0KKwkJY29u
dGFpbmVyX29mKGlvcCwgdHlwZW9mKCplbmdpbmUpLCBpcnFfcG9sbCk7CisJc3RydWN0IGludGVs
X2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cyA9ICZlbmdpbmUtPmV4ZWNsaXN0czsKKwlzdHJ1
Y3QgdGFza2xldF9zdHJ1Y3QgKnQgPSAmZXhlY2xpc3RzLT50YXNrbGV0OworCisJaWYgKGV4ZWNs
aXN0cy0+Y3NiX2hlYWQgPT0gUkVBRF9PTkNFKCpleGVjbGlzdHMtPmNzYl93cml0ZSkpCisJCXJl
dHVybiAwOworCisJaWYgKCF0YXNrbGV0X3RyeWxvY2sodCkpCisJCXJldHVybiAwOworCisJLyog
TXVzdCB3YWl0IGZvciBhbnkgR1BVIHJlc2V0IGluIHByb2dyZXNzLiAqLworCWlmIChfX3Rhc2ts
ZXRfaXNfZW5hYmxlZCh0KSkKKwkJdC0+ZnVuYyh0LT5kYXRhKTsKKworCXRhc2tsZXRfdW5sb2Nr
KHQpOworCXJldHVybiAwOworfQorCiBzdGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90
aW1lcihzdHJ1Y3QgdGltZXJfbGlzdCAqdGltZXIpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lID0KQEAgLTM0NDIsMTAgKzM0ODQsMTQgQEAgdm9pZCBpbnRlbF9leGVjbGlzdHNf
c2V0X2RlZmF1bHRfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAK
IAlpZiAoZW5naW5lLT5jbGFzcyAhPSBDT1BZX0VOR0lORV9DTEFTUyAmJiBJTlRFTF9HRU4oZW5n
aW5lLT5pOTE1KSA+PSAxMikKIAkJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfUkVM
QVRJVkVfTU1JTzsKKworCWlmIChUSUdFUkxBS0VfTk9fSVJRKGVuZ2luZS0+aTkxNSkpCisJCWVu
Z2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfTkVFRFNfSVJRX1BPTEw7CiB9CiAKIHN0YXRpYyB2
b2lkIGV4ZWNsaXN0c19kZXN0cm95KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsK
KwlpcnFfcG9sbF9kaXNhYmxlKCZlbmdpbmUtPmlycV9wb2xsKTsKIAlpbnRlbF9lbmdpbmVfY2xl
YW51cF9jb21tb24oZW5naW5lKTsKIAlscmNfZGVzdHJveV93YV9jdHgoZW5naW5lKTsKIAlrZnJl
ZShlbmdpbmUpOwpAQCAtMzUzMiw2ICszNTc4LDcgQEAgc3RhdGljIHZvaWQgcmNzX3N1Ym1pc3Np
b25fb3ZlcnJpZGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiBpbnQgaW50ZWxf
ZXhlY2xpc3RzX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogeworCWlycV9wb2xsX2luaXQoJmVuZ2luZS0+aXJxX3BvbGwsIC0xLCBpb3BfaGFuZGxlcik7
CiAJdGFza2xldF9pbml0KCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0LAogCQkgICAgIGV4ZWNs
aXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQsICh1bnNpZ25lZCBsb25nKWVuZ2luZSk7CiAJdGltZXJf
c2V0dXAoJmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyLCBleGVjbGlzdHNfc3VibWlzc2lvbl90aW1l
ciwgMCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAzMzdkODMwNjQxNmEuLmM1MDVkOWUz
OGU5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yMDY5LDYgKzIwNjksOSBAQCBJU19T
VUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICNkZWZpbmUg
SVNfR0VOOV9MUChkZXZfcHJpdikJKElTX0dFTihkZXZfcHJpdiwgOSkgJiYgSVNfTFAoZGV2X3By
aXYpKQogI2RlZmluZSBJU19HRU45X0JDKGRldl9wcml2KQkoSVNfR0VOKGRldl9wcml2LCA5KSAm
JiAhSVNfTFAoZGV2X3ByaXYpKQogCisjZGVmaW5lIFRJR0VSTEFLRV9OT19JUlEoaTkxNSkgXAor
CUlTX0VOQUJMRUQoQ09ORklHX1RJR0VSTEFLRV9ERUJVR19JUlEpICYmIElTX1RJR0VSTEFLRShp
OTE1KQorCiAjZGVmaW5lIEhBU19FTkdJTkUoZGV2X3ByaXYsIGlkKSAoSU5URUxfSU5GTyhkZXZf
cHJpdiktPmVuZ2luZV9tYXNrICYgQklUKGlkKSkKIAogI2RlZmluZSBFTkdJTkVfSU5TVEFOQ0VT
X01BU0soZGV2X3ByaXYsIGZpcnN0LCBjb3VudCkgKHsJCVwKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
CmluZGV4IGJjODNmMDk0MDY1YS4uMDUwNjBmODI5OTgxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKQEAgLTM2MCw2ICszNjAsOSBAQCB2b2lkIGdlbjZfZW5hYmxlX3Jwc19pbnRlcnJ1cHRzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoUkVBRF9PTkNFKHJwcy0+aW50
ZXJydXB0c19lbmFibGVkKSkKIAkJcmV0dXJuOwogCisJaWYgKCFkZXZfcHJpdi0+cG1fcnBzX2V2
ZW50cykKKwkJcmV0dXJuOworCiAJc3Bpbl9sb2NrX2lycSgmZ3QtPmlycV9sb2NrKTsKIAlXQVJO
X09OX09OQ0UocnBzLT5wbV9paXIpOwogCkBAIC0zNzYsNyArMzc5LDEyIEBAIHZvaWQgZ2VuNl9l
bmFibGVfcnBzX2ludGVycnVwdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CiB1MzIgZ2VuNl9zYW5pdGl6ZV9ycHNfcG1fbWFzayhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgdTMyIG1hc2spCiB7Ci0JcmV0dXJuIG1hc2sgJiB+aTkxNS0+Z3RfcG0ucnBz
LnBtX2ludHJtc2tfbWJ6OworCWNvbnN0IHN0cnVjdCBpbnRlbF9ycHMgKnJwcyA9ICZpOTE1LT5n
dF9wbS5ycHM7CisKKwlpZiAoIXJwcy0+aW50ZXJydXB0c19lbmFibGVkKQorCQlyZXR1cm4gfjB1
OworCisJcmV0dXJuIG1hc2sgJiB+cnBzLT5wbV9pbnRybXNrX21iejsKIH0KIAogdm9pZCBnZW42
X2Rpc2FibGVfcnBzX2ludGVycnVwdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQpAQCAtNDMxNCw3ICs0MzIyLDkgQEAgdm9pZCBpbnRlbF9pcnFfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWRldl9wcml2LT5ndC5wbV9ndWNfZXZlbnRzID0gR1VD
X0lOVFJfR1VDMkhPU1QgPDwgMTY7CiAKIAkvKiBMZXQncyB0cmFjayB0aGUgZW5hYmxlZCBycHMg
ZXZlbnRzICovCi0JaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQorCWlmIChUSUdFUkxBS0Vf
Tk9fSVJRKGRldl9wcml2KSkKKwkJZGV2X3ByaXYtPnBtX3Jwc19ldmVudHMgPSAwOworCWVsc2Ug
aWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQogCQkvKiBXYUdzdlJDMFJlc2lkZW5jeU1ldGhv
ZDp2bHYgKi8KIAkJZGV2X3ByaXYtPnBtX3Jwc19ldmVudHMgPSBHRU42X1BNX1JQX1VQX0VJX0VY
UElSRUQ7CiAJZWxzZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggMWNiZjM5OThiMzYxLi44
NmJlMTBjYzZhNzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtODA2LDcgKzgwNiw2IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtlXzEy
X2luZm8gPSB7CiAJLmRpc3BsYXkuaGFzX21vZHVsYXJfZmlhID0gMSwKIAkuZW5naW5lX21hc2sg
PQogCQlCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklU
KFZDUzIpLAotCS5oYXNfcnBzID0gZmFsc2UsIC8qIFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5n
ICovCiB9OwogCiAjdW5kZWYgR0VOCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
