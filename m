Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A38AFD076D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 08:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665516E8E8;
	Wed,  9 Oct 2019 06:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48736E8E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 06:42:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18772587-1500050 
 for multiple; Wed, 09 Oct 2019 07:42:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 07:42:20 +0100
Message-Id: <20191009064224.25348-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191009064224.25348-1-chris@chris-wilson.co.uk>
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915/perf: implement active wait for
 noa configurations
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

RnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
Tk9BIGNvbmZpZ3VyYXRpb24gdGFrZSBzb21lIGFtb3VudCBvZiB0aW1lIHRvIGFwcGx5LiBUaGF0
IGFtb3VudCBvZgp0aW1lIGRlcGVuZHMgb24gdGhlIHNpemUgb2YgdGhlIEdULiBUaGVyZSBpcyBu
byBkb2N1bWVudGVkIHRpbWUgZm9yCnRoaXMuIEZvciBleGFtcGxlLCBwYXN0IGV4cGVyaW1lbnRh
dGlvbnMgd2l0aCBwb3dlcmdhdGluZwpjb25maWd1cmF0aW9uIGNoYW5nZXMgc2VlbSB0byBpbmRp
Y2F0ZSBhIDYwfjcwdXMgZGVsYXkuIFdlIGdvIHdpdGgKNTAwdXMgYXMgZGVmYXVsdCBmb3Igbm93
IHdoaWNoIHNob3VsZCBiZSBvdmVyIHRoZSByZXF1aXJlZCBhbW91bnQgb2YKdGltZSAoYWNjb3Jk
aW5nIHRvIEhXIGFyY2hpdGVjdHMpLgoKdjI6IERvbid0IGZvcmdldCB0byBzYXZlL3Jlc3RvcmUg
cmVnaXN0ZXJzIHVzZWQgZm9yIHRoZSB3YWl0IChDaHJpcykKCnYzOiBOYW1lIHVzZWQgQ1NfR1BS
IHJlZ2lzdGVycyAoQ2hyaXMpCiAgICBGaXggY29tcGlsZSBpc3N1ZSBkdWUgdG8gcmViYXNlIChM
aW9uZWwpCgp2NDogRml4IHNhdmUvcmVzdG9yZSBoZWxwZXJzIChVbWVzaCkKCnY1OiBNb3ZlIG5v
YV93YWl0IGZyb20gZHJtX2k5MTVfcHJpdmF0ZSB0byBpOTE1X3BlcmZfc3RyZWFtIChMaW9uZWwp
Cgp2NjogQWRkIG1pc3Npbmcgc3RydWN0IGRlY2xhcmF0aW9ucyBpbiBpOTE1X3BlcmYuaAoKU2ln
bmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
ICh2NCkKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAg
fCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggICAgICB8
ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAg
MzIgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgfCAy
MzIgKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlw
ZXMuaCAgICAgICAgfCAgIDggKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICAgIHwgICA0ICstCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxm
dGVzdHMuaCAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVy
Zi5jICAgIHwgMjEyICsrKysrKysrKysrKysrKysKIDggZmlsZXMgY2hhbmdlZCwgNDk0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ncHVfY29tbWFuZHMuaAppbmRleCAwOTg3MTAwYzc4NmIuLjhlNjNjZmZjYWJlMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKQEAgLTE2
Myw3ICsxNjMsOCBAQAogI2RlZmluZSBNSV9CQVRDSF9CVUZGRVJfU1RBUlQJTUlfSU5TVFIoMHgz
MSwgMCkKICNkZWZpbmUgICBNSV9CQVRDSF9HVFQJCSAgICAoMjw8NikgLyogYWxpYXNlZCB3aXRo
ICgxPDw3KSBvbiBnZW40ICovCiAjZGVmaW5lIE1JX0JBVENIX0JVRkZFUl9TVEFSVF9HRU44CU1J
X0lOU1RSKDB4MzEsIDEpCi0jZGVmaW5lICAgTUlfQkFUQ0hfUkVTT1VSQ0VfU1RSRUFNRVIgKDE8
PDEwKQorI2RlZmluZSAgIE1JX0JBVENIX1JFU09VUkNFX1NUUkVBTUVSIFJFR19CSVQoMTApCisj
ZGVmaW5lICAgTUlfQkFUQ0hfUFJFRElDQVRFICAgICAgICAgUkVHX0JJVCgxNSkgLyogSFNXKyBv
biBSQ1Mgb25seSovCiAKIC8qCiAgKiAzRCBpbnN0cnVjdGlvbnMgdXNlZCBieSB0aGUga2VybmVs
CkBAIC0yMjQsNiArMjI1LDcgQEAKICNkZWZpbmUgICBQSVBFX0NPTlRST0xfQ1NfU1RBTEwJCQkJ
KDE8PDIwKQogI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9UTEJfSU5WQUxJREFURQkJCSgxPDwxOCkK
ICNkZWZpbmUgICBQSVBFX0NPTlRST0xfTUVESUFfU1RBVEVfQ0xFQVIJCSgxPDwxNikKKyNkZWZp
bmUgICBQSVBFX0NPTlRST0xfV1JJVEVfVElNRVNUQU1QCQkJKDM8PDE0KQogI2RlZmluZSAgIFBJ
UEVfQ09OVFJPTF9RV19XUklURQkJCQkoMTw8MTQpCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX1BP
U1RfU1lOQ19PUF9NQVNLICAgICAgICAgICAgICAgICgzPDwxNCkKICNkZWZpbmUgICBQSVBFX0NP
TlRST0xfREVQVEhfU1RBTEwJCQkoMTw8MTMpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfdHlwZXMuaAppbmRleCA4MDJmNTE2YTM0MzAuLmJlNGIyNjM2MjFjOCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCkBAIC0xMDksNiArMTA5LDExIEBAIGVudW0g
aW50ZWxfZ3Rfc2NyYXRjaF9maWVsZCB7CiAJLyogOCBieXRlcyAqLwogCUlOVEVMX0dUX1NDUkFU
Q0hfRklFTERfQ09IRVJFTlRMM19XQSA9IDI1NiwKIAorCS8qIDYgKiA4IGJ5dGVzICovCisJSU5U
RUxfR1RfU0NSQVRDSF9GSUVMRF9QRVJGX0NTX0dQUiA9IDIwNDgsCisKKwkvKiA0IGJ5dGVzICov
CisJSU5URUxfR1RfU0NSQVRDSF9GSUVMRF9QRVJGX1BSRURJQ0FURV9SRVNVTFRfMSA9IDIwOTYs
CiB9OwogCiAjZW5kaWYgLyogX19JTlRFTF9HVF9UWVBFU19IX18gKi8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMKaW5kZXggMjc3ZjMxMjk3ZjI5Li5kNDYzYTI4Yjc0NzUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0zNTkwLDYgKzM1OTAsMzcgQEAgREVGSU5FX1NJ
TVBMRV9BVFRSSUJVVEUoaTkxNV93ZWRnZWRfZm9wcywKIAkJCWk5MTVfd2VkZ2VkX2dldCwgaTkx
NV93ZWRnZWRfc2V0LAogCQkJIiVsbHVcbiIpOwogCitzdGF0aWMgaW50CitpOTE1X3BlcmZfbm9h
X2RlbGF5X3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gZGF0YTsKKwljb25zdCB1MzIgY2xrID0gUlVOVElNRV9JTkZPKGk5MTUpLT5j
c190aW1lc3RhbXBfZnJlcXVlbmN5X2toejsKKworCS8qCisJICogVGhpcyB3b3VsZCBsZWFkIHRv
IGluZmluaXRlIHdhaXRzIGFzIHdlJ3JlIGRvaW5nIHRpbWVzdGFtcAorCSAqIGRpZmZlcmVuY2Ug
b24gdGhlIENTIHdpdGggb25seSAzMmJpdHMuCisJICovCisJaWYgKHZhbCA+IG11bF91MzJfdTMy
KFUzMl9NQVgsIGNsaykpCisJCXJldHVybiAtRUlOVkFMOworCisJYXRvbWljNjRfc2V0KCZpOTE1
LT5wZXJmLm5vYV9wcm9ncmFtbWluZ19kZWxheSwgdmFsKTsKKwlyZXR1cm4gMDsKK30KKworc3Rh
dGljIGludAoraTkxNV9wZXJmX25vYV9kZWxheV9nZXQodm9pZCAqZGF0YSwgdTY0ICp2YWwpCit7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkYXRhOworCisJKnZhbCA9IGF0b21p
YzY0X3JlYWQoJmk5MTUtPnBlcmYubm9hX3Byb2dyYW1taW5nX2RlbGF5KTsKKwlyZXR1cm4gMDsK
K30KKworREVGSU5FX1NJTVBMRV9BVFRSSUJVVEUoaTkxNV9wZXJmX25vYV9kZWxheV9mb3BzLAor
CQkJaTkxNV9wZXJmX25vYV9kZWxheV9nZXQsCisJCQlpOTE1X3BlcmZfbm9hX2RlbGF5X3NldCwK
KwkJCSIlbGx1XG4iKTsKKwogI2RlZmluZSBEUk9QX1VOQk9VTkQJQklUKDApCiAjZGVmaW5lIERS
T1BfQk9VTkQJQklUKDEpCiAjZGVmaW5lIERST1BfUkVUSVJFCUJJVCgyKQpAQCAtNDM0MCw2ICs0
MzcxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X2RlYnVnZnNfZmlsZXMgewogCWNvbnN0
IGNoYXIgKm5hbWU7CiAJY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyAqZm9wczsKIH0gaTkx
NV9kZWJ1Z2ZzX2ZpbGVzW10gPSB7CisJeyJpOTE1X3BlcmZfbm9hX2RlbGF5IiwgJmk5MTVfcGVy
Zl9ub2FfZGVsYXlfZm9wc30sCiAJeyJpOTE1X3dlZGdlZCIsICZpOTE1X3dlZGdlZF9mb3BzfSwK
IAl7Imk5MTVfY2FjaGVfc2hhcmluZyIsICZpOTE1X2NhY2hlX3NoYXJpbmdfZm9wc30sCiAJeyJp
OTE1X2dlbV9kcm9wX2NhY2hlcyIsICZpOTE1X2Ryb3BfY2FjaGVzX2ZvcHN9LApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYwppbmRleCA4YTlmZTQ0ZGZjNzYuLjExNzA0YTEzMGJjYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE5OCw2ICsxOTgsNyBAQAogI2luY2x1ZGUgImdlbS9pOTE1
X2dlbV9jb250ZXh0LmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCiAjaW5jbHVkZSAi
Z3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1
ZGUgImd0L2ludGVsX2xyY19yZWcuaCIKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCkBAIC00NjAs
NyArNDYxLDcgQEAgYWxsb2Nfb2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVh
bSAqc3RyZWFtLAogCWNvbmZpZ19sZW5ndGggKz0gbnVtX2xyaV9kd29yZHMob2FfY29uZmlnLT5t
dXhfcmVnc19sZW4pOwogCWNvbmZpZ19sZW5ndGggKz0gbnVtX2xyaV9kd29yZHMob2FfY29uZmln
LT5iX2NvdW50ZXJfcmVnc19sZW4pOwogCWNvbmZpZ19sZW5ndGggKz0gbnVtX2xyaV9kd29yZHMo
b2FfY29uZmlnLT5mbGV4X3JlZ3NfbGVuKTsKLQljb25maWdfbGVuZ3RoKys7IC8qIE1JX0JBVENI
X0JVRkZFUl9FTkQgKi8KKwljb25maWdfbGVuZ3RoICs9IDM7IC8qIE1JX0JBVENIX0JVRkZFUl9T
VEFSVCBpbnRvIG5vYV93YWl0IGxvb3AgKi8KIAljb25maWdfbGVuZ3RoID0gQUxJR04oc2l6ZW9m
KHUzMikgKiBjb25maWdfbGVuZ3RoLCBJOTE1X0dUVF9QQUdFX1NJWkUpOwogCiAJb2JqID0gaTkx
NV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShzdHJlYW0tPnBlcmYtPmk5MTUsIGNvbmZpZ19sZW5n
dGgpOwpAQCAtNDg1LDcgKzQ4NiwxMiBAQCBhbGxvY19vYV9jb25maWdfYnVmZmVyKHN0cnVjdCBp
OTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJCQkgICAgIG9hX2NvbmZpZy0+ZmxleF9yZWdzLAog
CQkJICAgICBvYV9jb25maWctPmZsZXhfcmVnc19sZW4pOwogCi0JKmNzKysgPSBNSV9CQVRDSF9C
VUZGRVJfRU5EOworCS8qIEp1bXAgaW50byB0aGUgTk9BIHdhaXQgYnVzeSBsb29wLiAqLworCSpj
cysrID0gSU5URUxfR0VOKHN0cmVhbS0+cGVyZi0+aTkxNSkgPCA4ID8KKwkJTUlfQkFUQ0hfQlVG
RkVSX1NUQVJUIDoKKwkJTUlfQkFUQ0hfQlVGRkVSX1NUQVJUX0dFTjg7CisJKmNzKysgPSBpOTE1
X2dndHRfb2Zmc2V0KHN0cmVhbS0+bm9hX3dhaXQpOworCSpjcysrID0gMDsKIAogCWk5MTVfZ2Vt
X29iamVjdF9mbHVzaF9tYXAob2JqKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7
CkBAIC0xNDYxLDYgKzE0NjcsMTIgQEAgZnJlZV9vYV9idWZmZXIoc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbSkKIAlzdHJlYW0tPm9hX2J1ZmZlci52YWRkciA9IE5VTEw7CiB9CiAKK3N0
YXRpYyB2b2lkCitmcmVlX25vYV93YWl0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0p
Cit7CisJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJnN0cmVhbS0+bm9hX3dhaXQsIDApOwor
fQorCiBzdGF0aWMgdm9pZAogZnJlZV9vYV9jb25maWdzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFt
ICpzdHJlYW0pCiB7CkBAIC0xNDg1LDYgKzE0OTcsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X29hX3N0
cmVhbV9kZXN0cm95KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJcGVyZi0+b3Bz
LmRpc2FibGVfbWV0cmljX3NldChzdHJlYW0pOwogCiAJZnJlZV9vYV9idWZmZXIoc3RyZWFtKTsK
KwlmcmVlX25vYV93YWl0KHN0cmVhbSk7CiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dChz
dHJlYW0tPmd0LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCWludGVsX3J1bnRpbWVfcG1fcHV0
KHN0cmVhbS0+Z3QtPnVuY29yZS0+cnBtLCBzdHJlYW0tPndha2VyZWYpOwpAQCAtMTY1Myw2ICsx
NjY2LDIwNSBAQCBzdGF0aWMgaW50IGFsbG9jX29hX2J1ZmZlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0
cmVhbSAqc3RyZWFtKQogCXJldHVybiByZXQ7CiB9CiAKK3N0YXRpYyB1MzIgKnNhdmVfcmVzdG9y
ZV9yZWdpc3RlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLCB1MzIgKmNzLAorCQkJ
CSAgYm9vbCBzYXZlLCBpOTE1X3JlZ190IHJlZywgdTMyIG9mZnNldCwKKwkJCQkgIHUzMiBkd29y
ZF9jb3VudCkKK3sKKwl1MzIgY21kOworCXUzMiBkOworCisJY21kID0gc2F2ZSA/IE1JX1NUT1JF
X1JFR0lTVEVSX01FTSA6IE1JX0xPQURfUkVHSVNURVJfTUVNOworCWlmIChJTlRFTF9HRU4oc3Ry
ZWFtLT5wZXJmLT5pOTE1KSA+PSA4KQorCQljbWQrKzsKKworCWZvciAoZCA9IDA7IGQgPCBkd29y
ZF9jb3VudDsgZCsrKSB7CisJCSpjcysrID0gY21kOworCQkqY3MrKyA9IGk5MTVfbW1pb19yZWdf
b2Zmc2V0KHJlZykgKyA0ICogZDsKKwkJKmNzKysgPSBpbnRlbF9ndF9zY3JhdGNoX29mZnNldChz
dHJlYW0tPmd0LCBvZmZzZXQpICsgNCAqIGQ7CisJCSpjcysrID0gMDsKKwl9CisKKwlyZXR1cm4g
Y3M7Cit9CisKK3N0YXRpYyBpbnQgYWxsb2Nfbm9hX3dhaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHN0cmVhbS0+
cGVyZi0+aTkxNTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqYm87CisJc3RydWN0IGk5
MTVfdm1hICp2bWE7CisJY29uc3QgdTY0IGRlbGF5X3RpY2tzID0gMHhmZmZmZmZmZmZmZmZmZmZm
IC0KKwkJRElWNjRfVTY0X1JPVU5EX1VQKAorCQkJYXRvbWljNjRfcmVhZCgmc3RyZWFtLT5wZXJm
LT5ub2FfcHJvZ3JhbW1pbmdfZGVsYXkpICoKKwkJCVJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGlt
ZXN0YW1wX2ZyZXF1ZW5jeV9raHosCisJCQkxMDAwMDAwdWxsKTsKKwljb25zdCB1MzIgYmFzZSA9
IHN0cmVhbS0+ZW5naW5lLT5tbWlvX2Jhc2U7CisjZGVmaW5lIENTX0dQUih4KSBHRU44X1JJTkdf
Q1NfR1BSKGJhc2UsIHgpCisJdTMyICpiYXRjaCwgKnRzMCwgKmNzLCAqanVtcDsKKwlpbnQgcmV0
LCBpOworCWVudW0geworCQlTVEFSVF9UUywKKwkJTk9XX1RTLAorCQlERUxUQV9UUywKKwkJSlVN
UF9QUkVESUNBVEUsCisJCURFTFRBX1RBUkdFVCwKKwkJTl9DU19HUFIKKwl9OworCisJYm8gPSBp
OTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIDQwOTYpOworCWlmIChJU19FUlIo
Ym8pKSB7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIGFsbG9jYXRlIE5PQSB3YWl0IGJhdGNoYnVm
ZmVyXG4iKTsKKwkJcmV0dXJuIFBUUl9FUlIoYm8pOworCX0KKworCS8qCisJICogV2UgcGluIGlu
IEdHVFQgYmVjYXVzZSB3ZSBqdW1wIGludG8gdGhpcyBidWZmZXIgbm93IGJlY2F1c2UKKwkgKiBt
dWx0aXBsZSBPQSBjb25maWcgQk9zIHdpbGwgaGF2ZSBhIGp1bXAgdG8gdGhpcyBhZGRyZXNzIGFu
ZCBpdAorCSAqIG5lZWRzIHRvIGJlIGZpeGVkIGR1cmluZyB0aGUgbGlmZXRpbWUgb2YgdGhlIGk5
MTUvcGVyZiBzdHJlYW0uCisJICovCisJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKGJv
LCBOVUxMLCAwLCAwLCBQSU5fSElHSCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJCXJldCA9IFBU
Ul9FUlIodm1hKTsKKwkJZ290byBlcnJfdW5yZWY7CisJfQorCisJYmF0Y2ggPSBjcyA9IGk5MTVf
Z2VtX29iamVjdF9waW5fbWFwKGJvLCBJOTE1X01BUF9XQik7CisJaWYgKElTX0VSUihiYXRjaCkp
IHsKKwkJcmV0ID0gUFRSX0VSUihiYXRjaCk7CisJCWdvdG8gZXJyX3VucGluOworCX0KKworCS8q
IFNhdmUgcmVnaXN0ZXJzLiAqLworCWZvciAoaSA9IDA7IGkgPCBOX0NTX0dQUjsgaSsrKQorCQlj
cyA9IHNhdmVfcmVzdG9yZV9yZWdpc3RlcigKKwkJCXN0cmVhbSwgY3MsIHRydWUgLyogc2F2ZSAq
LywgQ1NfR1BSKGkpLAorCQkJSU5URUxfR1RfU0NSQVRDSF9GSUVMRF9QRVJGX0NTX0dQUiArIDgg
KiBpLCAyKTsKKwljcyA9IHNhdmVfcmVzdG9yZV9yZWdpc3RlcigKKwkJc3RyZWFtLCBjcywgdHJ1
ZSAvKiBzYXZlICovLCBNSV9QUkVESUNBVEVfUkVTVUxUXzEsCisJCUlOVEVMX0dUX1NDUkFUQ0hf
RklFTERfUEVSRl9QUkVESUNBVEVfUkVTVUxUXzEsIDEpOworCisJLyogRmlyc3QgdGltZXN0YW1w
IHNuYXBzaG90IGxvY2F0aW9uLiAqLworCXRzMCA9IGNzOworCisJLyoKKwkgKiBJbml0aWFsIHNu
YXBzaG90IG9mIHRoZSB0aW1lc3RhbXAgcmVnaXN0ZXIgdG8gaW1wbGVtZW50IHRoZSB3YWl0Lgor
CSAqIFdlIHdvcmsgd2l0aCAzMmIgdmFsdWVzLCBzbyBjbGVhciBvdXQgdGhlIHRvcCAzMmIgYml0
cyBvZiB0aGUKKwkgKiByZWdpc3RlciBiZWNhdXNlIHRoZSBBTFUgd29ya3MgNjRiaXRzLgorCSAq
LworCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMSk7CisJKmNzKysgPSBpOTE1X21taW9f
cmVnX29mZnNldChDU19HUFIoU1RBUlRfVFMpKSArIDQ7CisJKmNzKysgPSAwOworCSpjcysrID0g
TUlfTE9BRF9SRUdJU1RFUl9SRUcgfCAoMyAtIDIpOworCSpjcysrID0gaTkxNV9tbWlvX3JlZ19v
ZmZzZXQoUklOR19USU1FU1RBTVAoYmFzZSkpOworCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZz
ZXQoQ1NfR1BSKFNUQVJUX1RTKSk7CisKKwkvKgorCSAqIFRoaXMgaXMgdGhlIGxvY2F0aW9uIHdl
J3JlIGdvaW5nIHRvIGp1bXAgYmFjayBpbnRvIHVudGlsIHRoZQorCSAqIHJlcXVpcmVkIGFtb3Vu
dCBvZiB0aW1lIGhhcyBwYXNzZWQuCisJICovCisJanVtcCA9IGNzOworCisJLyoKKwkgKiBUYWtl
IGFub3RoZXIgc25hcHNob3Qgb2YgdGhlIHRpbWVzdGFtcCByZWdpc3Rlci4gVGFrZSBjYXJlIHRv
IGNsZWFyCisJICogdXAgdGhlIHRvcCAzMmJpdHMgb2YgQ1NfR1BSKDEpIGFzIHdlJ3JlIHVzaW5n
IGl0IGZvciBvdGhlcgorCSAqIG9wZXJhdGlvbnMgYmVsb3cuCisJICovCisJKmNzKysgPSBNSV9M
T0FEX1JFR0lTVEVSX0lNTSgxKTsKKwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KENTX0dQ
UihOT1dfVFMpKSArIDQ7CisJKmNzKysgPSAwOworCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9S
RUcgfCAoMyAtIDIpOworCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19USU1FU1RB
TVAoYmFzZSkpOworCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoQ1NfR1BSKE5PV19UUykp
OworCisJLyoKKwkgKiBEbyBhIGRpZmYgYmV0d2VlbiB0aGUgMiB0aW1lc3RhbXBzIGFuZCBzdG9y
ZSB0aGUgcmVzdWx0IGJhY2sgaW50bworCSAqIENTX0dQUigxKS4KKwkgKi8KKwkqY3MrKyA9IE1J
X01BVEgoNSk7CisJKmNzKysgPSBNSV9NQVRIX0xPQUQoTUlfTUFUSF9SRUdfU1JDQSwgTUlfTUFU
SF9SRUcoTk9XX1RTKSk7CisJKmNzKysgPSBNSV9NQVRIX0xPQUQoTUlfTUFUSF9SRUdfU1JDQiwg
TUlfTUFUSF9SRUcoU1RBUlRfVFMpKTsKKwkqY3MrKyA9IE1JX01BVEhfU1VCOworCSpjcysrID0g
TUlfTUFUSF9TVE9SRShNSV9NQVRIX1JFRyhERUxUQV9UUyksIE1JX01BVEhfUkVHX0FDQ1UpOwor
CSpjcysrID0gTUlfTUFUSF9TVE9SRShNSV9NQVRIX1JFRyhKVU1QX1BSRURJQ0FURSksIE1JX01B
VEhfUkVHX0NGKTsKKworCS8qCisJICogVHJhbnNmZXIgdGhlIGNhcnJ5IGZsYWcgKHNldCB0byAx
IGlmIHRzMSA8IHRzMCwgbWVhbmluZyB0aGUKKwkgKiB0aW1lc3RhbXAgaGF2ZSByb2xsZWQgb3Zl
ciB0aGUgMzJiaXRzKSBpbnRvIHRoZSBwcmVkaWNhdGUgcmVnaXN0ZXIKKwkgKiB0byBiZSB1c2Vk
IGZvciB0aGUgcHJlZGljYXRlZCBqdW1wLgorCSAqLworCSpjcysrID0gTUlfTE9BRF9SRUdJU1RF
Ul9SRUcgfCAoMyAtIDIpOworCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoQ1NfR1BSKEpV
TVBfUFJFRElDQVRFKSk7CisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChNSV9QUkVESUNB
VEVfUkVTVUxUXzEpOworCisJLyogUmVzdGFydCBmcm9tIHRoZSBiZWdpbm5pbmcgaWYgd2UgaGFk
IHRpbWVzdGFtcHMgcm9sbCBvdmVyLiAqLworCSpjcysrID0gKElOVEVMX0dFTihpOTE1KSA8IDgg
PworCQkgTUlfQkFUQ0hfQlVGRkVSX1NUQVJUIDoKKwkJIE1JX0JBVENIX0JVRkZFUl9TVEFSVF9H
RU44KSB8CisJCU1JX0JBVENIX1BSRURJQ0FURTsKKwkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQo
dm1hKSArICh0czAgLSBiYXRjaCkgKiA0OworCSpjcysrID0gMDsKKworCS8qCisJICogTm93IGFk
ZCB0aGUgZGlmZiBiZXR3ZWVuIHRvIHByZXZpb3VzIHRpbWVzdGFtcHMgYW5kIGFkZCBpdCB0byA6
CisJICogICAgICAoKCgxICogPDwgNjQpIC0gMSkgLSBkZWxheV9ucykKKwkgKgorCSAqIFdoZW4g
dGhlIENhcnJ5IEZsYWcgY29udGFpbnMgMSB0aGlzIG1lYW5zIHRoZSBlbGFwc2VkIHRpbWUgaXMK
KwkgKiBsb25nZXIgdGhhbiB0aGUgZXhwZWN0ZWQgZGVsYXksIGFuZCB3ZSBjYW4gZXhpdCB0aGUg
d2FpdCBsb29wLgorCSAqLworCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMik7CisJKmNz
KysgPSBpOTE1X21taW9fcmVnX29mZnNldChDU19HUFIoREVMVEFfVEFSR0VUKSk7CisJKmNzKysg
PSBsb3dlcl8zMl9iaXRzKGRlbGF5X3RpY2tzKTsKKwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zm
c2V0KENTX0dQUihERUxUQV9UQVJHRVQpKSArIDQ7CisJKmNzKysgPSB1cHBlcl8zMl9iaXRzKGRl
bGF5X3RpY2tzKTsKKworCSpjcysrID0gTUlfTUFUSCg0KTsKKwkqY3MrKyA9IE1JX01BVEhfTE9B
RChNSV9NQVRIX1JFR19TUkNBLCBNSV9NQVRIX1JFRyhERUxUQV9UUykpOworCSpjcysrID0gTUlf
TUFUSF9MT0FEKE1JX01BVEhfUkVHX1NSQ0IsIE1JX01BVEhfUkVHKERFTFRBX1RBUkdFVCkpOwor
CSpjcysrID0gTUlfTUFUSF9BREQ7CisJKmNzKysgPSBNSV9NQVRIX1NUT1JFSU5WKE1JX01BVEhf
UkVHKEpVTVBfUFJFRElDQVRFKSwgTUlfTUFUSF9SRUdfQ0YpOworCisJLyoKKwkgKiBUcmFuc2Zl
ciB0aGUgcmVzdWx0IGludG8gdGhlIHByZWRpY2F0ZSByZWdpc3RlciB0byBiZSB1c2VkIGZvciB0
aGUKKwkgKiBwcmVkaWNhdGVkIGp1bXAuCisJICovCisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVS
X1JFRyB8ICgzIC0gMik7CisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChDU19HUFIoSlVN
UF9QUkVESUNBVEUpKTsKKwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KE1JX1BSRURJQ0FU
RV9SRVNVTFRfMSk7CisKKwkvKiBQcmVkaWNhdGUgdGhlIGp1bXAuICAqLworCSpjcysrID0gKElO
VEVMX0dFTihpOTE1KSA8IDggPworCQkgTUlfQkFUQ0hfQlVGRkVSX1NUQVJUIDoKKwkJIE1JX0JB
VENIX0JVRkZFUl9TVEFSVF9HRU44KSB8CisJCU1JX0JBVENIX1BSRURJQ0FURTsKKwkqY3MrKyA9
IGk5MTVfZ2d0dF9vZmZzZXQodm1hKSArIChqdW1wIC0gYmF0Y2gpICogNDsKKwkqY3MrKyA9IDA7
CisKKwkvKiBSZXN0b3JlIHJlZ2lzdGVycy4gKi8KKwlmb3IgKGkgPSAwOyBpIDwgTl9DU19HUFI7
IGkrKykKKwkJY3MgPSBzYXZlX3Jlc3RvcmVfcmVnaXN0ZXIoCisJCQlzdHJlYW0sIGNzLCBmYWxz
ZSAvKiByZXN0b3JlICovLCBDU19HUFIoaSksCisJCQlJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BF
UkZfQ1NfR1BSICsgOCAqIGksIDIpOworCWNzID0gc2F2ZV9yZXN0b3JlX3JlZ2lzdGVyKAorCQlz
dHJlYW0sIGNzLCBmYWxzZSAvKiByZXN0b3JlICovLCBNSV9QUkVESUNBVEVfUkVTVUxUXzEsCisJ
CUlOVEVMX0dUX1NDUkFUQ0hfRklFTERfUEVSRl9QUkVESUNBVEVfUkVTVUxUXzEsIDEpOworCisJ
LyogQW5kIHJldHVybiB0byB0aGUgcmluZy4gKi8KKwkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9F
TkQ7CisKKwlHRU1fQlVHX09OKGNzIC0gYmF0Y2ggPiBQQUdFX1NJWkUgLyBzaXplb2YoKmJhdGNo
KSk7CisKKwlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKGJvKTsKKwlpOTE1X2dlbV9vYmplY3Rf
dW5waW5fbWFwKGJvKTsKKworCXN0cmVhbS0+bm9hX3dhaXQgPSB2bWE7CisJcmV0dXJuIDA7CisK
K2Vycl91bnBpbjoKKwlfX2k5MTVfdm1hX3VucGluKHZtYSk7CitlcnJfdW5yZWY6CisJaTkxNV9n
ZW1fb2JqZWN0X3B1dChibyk7CisJcmV0dXJuIHJldDsKK30KKwogc3RhdGljIHZvaWQgY29uZmln
X29hX3JlZ3Moc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAogCQkJICAgY29uc3Qgc3RydWN0
IGk5MTVfb2FfcmVnICpyZWdzLAogCQkJICAgdTMyIG5fcmVncykKQEAgLTIzMjksNiArMjU0MSwx
MiBAQCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSwKIAkJfQogCX0KIAorCXJldCA9IGFsbG9jX25vYV93YWl0KHN0cmVhbSk7CisJ
aWYgKHJldCkgeworCQlEUk1fREVCVUcoIlVuYWJsZSB0byBhbGxvY2F0ZSBOT0Egd2FpdCBiYXRj
aCBidWZmZXJcbiIpOworCQlnb3RvIGVycl9ub2Ffd2FpdF9hbGxvYzsKKwl9CisKIAlzdHJlYW0t
Pm9hX2NvbmZpZyA9IGk5MTVfcGVyZl9nZXRfb2FfY29uZmlnKHBlcmYsIHByb3BzLT5tZXRyaWNz
X3NldCk7CiAJaWYgKCFzdHJlYW0tPm9hX2NvbmZpZykgewogCQlEUk1fREVCVUcoIkludmFsaWQg
T0EgY29uZmlnIGlkPSVpXG4iLCBwcm9wcy0+bWV0cmljc19zZXQpOwpAQCAtMjM4OSw2ICsyNjA3
LDkgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0sCiAJZnJlZV9vYV9jb25maWdzKHN0cmVhbSk7CiAKIGVycl9jb25maWc6CisJ
ZnJlZV9ub2Ffd2FpdChzdHJlYW0pOworCitlcnJfbm9hX3dhaXRfYWxsb2M6CiAJaWYgKHN0cmVh
bS0+Y3R4KQogCQlvYV9wdXRfcmVuZGVyX2N0eF9pZChzdHJlYW0pOwogCkBAIC0zNzg0LDYgKzQw
MDUsOSBAQCB2b2lkIGk5MTVfcGVyZl9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCQlyYXRlbGltaXRfc2V0X2ZsYWdzKCZwZXJmLT5zcHVyaW91c19yZXBvcnRfcnMsCiAJCQkJ
ICAgIFJBVEVMSU1JVF9NU0dfT05fUkVMRUFTRSk7CiAKKwkJYXRvbWljNjRfc2V0KCZwZXJmLT5u
b2FfcHJvZ3JhbW1pbmdfZGVsYXksCisJCQkgICAgIDUwMCAqIDEwMDAgLyogNTAwdXMgKi8pOwor
CiAJCXBlcmYtPmk5MTUgPSBpOTE1OwogCX0KIH0KQEAgLTM4MjAsMyArNDA0NCw3IEBAIGludCBp
OTE1X3BlcmZfaW9jdGxfdmVyc2lvbih2b2lkKQogewogCXJldHVybiAxOwogfQorCisjaWYgSVNf
RU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCisjaW5jbHVkZSAic2VsZnRlc3RzL2k5
MTVfcGVyZi5jIgorI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmZfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oCmlu
ZGV4IDdhZmVhMjY3ZmYzZi4uZWI1MDY1MDIzYzkzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmZfdHlwZXMuaApAQCAtMjcyLDYgKzI3MiwxMiBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVh
bSB7CiAJCSAqLwogCQl1MzIgaGVhZDsKIAl9IG9hX2J1ZmZlcjsKKworCS8qKgorCSAqIEEgYmF0
Y2ggYnVmZmVyIGRvaW5nIGEgd2FpdCBvbiB0aGUgR1BVIGZvciB0aGUgTk9BIGxvZ2ljIHRvIGJl
CisJICogcmVwcm9ncmFtbWVkLgorCSAqLworCXN0cnVjdCBpOTE1X3ZtYSAqbm9hX3dhaXQ7CiB9
OwogCiAvKioKQEAgLTM5MSw2ICszOTcsOCBAQCBzdHJ1Y3QgaTkxNV9wZXJmIHsKIAogCXN0cnVj
dCBpOTE1X29hX29wcyBvcHM7CiAJY29uc3Qgc3RydWN0IGk5MTVfb2FfZm9ybWF0ICpvYV9mb3Jt
YXRzOworCisJYXRvbWljNjRfdCBub2FfcHJvZ3JhbW1pbmdfZGVsYXk7CiB9OwogCiAjZW5kaWYg
LyogX0k5MTVfUEVSRl9UWVBFU19IXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMWRj
MDY3ZmM1N2FiLi45OWY4YTA4ZGMyYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNTQ1
LDcgKzU0NSw5IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVf
cmVnX3QgcmVnKQogI2RlZmluZSBNSV9QUkVESUNBVEVfU1JDMF9VRFcJX01NSU8oMHgyNDAwICsg
NCkKICNkZWZpbmUgTUlfUFJFRElDQVRFX1NSQzEJX01NSU8oMHgyNDA4KQogI2RlZmluZSBNSV9Q
UkVESUNBVEVfU1JDMV9VRFcJX01NSU8oMHgyNDA4ICsgNCkKLQorI2RlZmluZSBNSV9QUkVESUNB
VEVfREFUQSAgICAgICBfTU1JTygweDI0MTApCisjZGVmaW5lIE1JX1BSRURJQ0FURV9SRVNVTFQg
ICAgIF9NTUlPKDB4MjQxOCkKKyNkZWZpbmUgTUlfUFJFRElDQVRFX1JFU1VMVF8xICAgX01NSU8o
MHgyNDFjKQogI2RlZmluZSBNSV9QUkVESUNBVEVfUkVTVUxUXzIJX01NSU8oMHgyMjE0KQogI2Rl
ZmluZSAgTE9XRVJfU0xJQ0VfRU5BQkxFRAkoMSA8PCAwKQogI2RlZmluZSAgTE9XRVJfU0xJQ0Vf
RElTQUJMRUQJKDAgPDwgMCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCmluZGV4IDY3MTNlZmVhMzUwYi4uNmRhZjY1OTllYzc5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3Nl
bGZ0ZXN0cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVf
c2VsZnRlc3RzLmgKQEAgLTM1LDMgKzM1LDQgQEAgc2VsZnRlc3QocmVzZXQsIGludGVsX3Jlc2V0
X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoaGFuZ2NoZWNrLCBpbnRlbF9oYW5nY2hlY2tfbGl2
ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChleGVjbGlzdHMsIGludGVsX2V4ZWNsaXN0c19saXZlX3Nl
bGZ0ZXN0cykKIHNlbGZ0ZXN0KGd1YywgaW50ZWxfZ3VjX2xpdmVfc2VsZnRlc3QpCitzZWxmdGVz
dChwZXJmLCBpOTE1X3BlcmZfbGl2ZV9zZWxmdGVzdHMpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9wZXJmLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi5mYTc3ZDI4MDFiNjgKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMKQEAgLTAsMCArMSwyMTIgQEAKKy8qCisgKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29y
cG9yYXRpb24KKyAqLworCisjaW5jbHVkZSA8bGludXgva3JlZi5oPgorCisjaW5jbHVkZSAiZ2Vt
L2k5MTVfZ2VtX3BtLmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKKworI2luY2x1ZGUgImk5
MTVfc2VsZnRlc3QuaCIKKworI2luY2x1ZGUgImlndF9mbHVzaF90ZXN0LmgiCisjaW5jbHVkZSAi
bGliX3N3X2ZlbmNlLmgiCisKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqCit0ZXN0
X3N0cmVhbShzdHJ1Y3QgaTkxNV9wZXJmICpwZXJmKQoreworCXN0cnVjdCBkcm1faTkxNV9wZXJm
X29wZW5fcGFyYW0gcGFyYW0gPSB7fTsKKwlzdHJ1Y3QgcGVyZl9vcGVuX3Byb3BlcnRpZXMgcHJv
cHMgPSB7CisJCS5lbmdpbmUgPSBpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIocGVyZi0+aTkxNSwK
KwkJCQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX1JFTkRFUiwKKwkJCQkJCSAgIDApLAorCQkuc2Ft
cGxlX2ZsYWdzID0gU0FNUExFX09BX1JFUE9SVCwKKwkJLm9hX2Zvcm1hdCA9IEk5MTVfT0FfRk9S
TUFUX0M0X0I4LAorCQkubWV0cmljc19zZXQgPSAxLAorCX07CisJc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbTsKKworCXN0cmVhbSA9IGt6YWxsb2Moc2l6ZW9mKCpzdHJlYW0pLCBHRlBf
S0VSTkVMKTsKKwlpZiAoIXN0cmVhbSkKKwkJcmV0dXJuIE5VTEw7CisKKwlzdHJlYW0tPnBlcmYg
PSBwZXJmOworCXN0cmVhbS0+Z3QgPSAmcGVyZi0+aTkxNS0+Z3Q7CisKKwltdXRleF9sb2NrKCZw
ZXJmLT5sb2NrKTsKKwlpZiAoaTkxNV9vYV9zdHJlYW1faW5pdChzdHJlYW0sICZwYXJhbSwgJnBy
b3BzKSkgeworCQlrZnJlZShzdHJlYW0pOworCQlzdHJlYW0gPSAgTlVMTDsKKwl9CisJbXV0ZXhf
dW5sb2NrKCZwZXJmLT5sb2NrKTsKKworCXJldHVybiBzdHJlYW07Cit9CisKK3N0YXRpYyB2b2lk
IHN0cmVhbV9kZXN0cm95KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCit7CisJc3Ry
dWN0IGk5MTVfcGVyZiAqcGVyZiA9IHN0cmVhbS0+cGVyZjsKKworCW11dGV4X2xvY2soJnBlcmYt
PmxvY2spOworCWk5MTVfcGVyZl9kZXN0cm95X2xvY2tlZChzdHJlYW0pOworCW11dGV4X3VubG9j
aygmcGVyZi0+bG9jayk7Cit9CisKK3N0YXRpYyBpbnQgbGl2ZV9zYW5pdHljaGVjayh2b2lkICph
cmcpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7CisJc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbTsKKworCS8qIFF1aWNrIGNoZWNrIHdlIGNhbiBjcmVhdGUg
YSBwZXJmIHN0cmVhbSAqLworCisJc3RyZWFtID0gdGVzdF9zdHJlYW0oJmk5MTUtPnBlcmYpOwor
CWlmICghc3RyZWFtKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCXN0cmVhbV9kZXN0cm95KHN0cmVh
bSk7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgd3JpdGVfdGltZXN0YW1wKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCBpbnQgc2xvdCkKK3sKKwl1MzIgKmNzOworCisJY3MgPSBpbnRlbF9y
aW5nX2JlZ2luKHJxLCA2KTsKKwlpZiAoSVNfRVJSKGNzKSkKKwkJcmV0dXJuIFBUUl9FUlIoY3Mp
OworCisJKmNzKysgPSBHRlhfT1BfUElQRV9DT05UUk9MKDUgKyBJTlRFTF9HRU4ocnEtPmk5MTUp
ID49IDgpOworCSpjcysrID0gUElQRV9DT05UUk9MX0dMT0JBTF9HVFRfSVZCIHwKKwkJUElQRV9D
T05UUk9MX1NUT1JFX0RBVEFfSU5ERVggfAorCQlQSVBFX0NPTlRST0xfV1JJVEVfVElNRVNUQU1Q
OworCSpjcysrID0gc2xvdCAqIHNpemVvZih1MzIpOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7
CisJKmNzKysgPSAwOworCisJaW50ZWxfcmluZ19hZHZhbmNlKHJxLCBjcyk7CisKKwlyZXR1cm4g
MDsKK30KKworc3RhdGljIGt0aW1lX3QgcG9sbF9zdGF0dXMoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEsIGludCBzbG90KQoreworCXdoaWxlICghaW50ZWxfcmVhZF9zdGF0dXNfcGFnZShycS0+ZW5n
aW5lLCBzbG90KSAmJgorCSAgICAgICAhaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCisJCWNw
dV9yZWxheCgpOworCisJcmV0dXJuIGt0aW1lX2dldCgpOworfQorCitzdGF0aWMgaW50IGxpdmVf
bm9hX2RlbGF5KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGFyZzsKKwlzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtOworCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxOworCWt0aW1lX3QgdDAsIHQxOworCXU2NCBleHBlY3RlZDsKKwl1MzIgZGVsYXk7
CisJaW50IGVycjsKKwlpbnQgaTsKKworCS8qIENoZWNrIHRoYXQgdGhlIEdQVSBkZWxheXMgbWF0
Y2hlcyBleHBlY3RhdGlvbnMgKi8KKworCXN0cmVhbSA9IHRlc3Rfc3RyZWFtKCZpOTE1LT5wZXJm
KTsKKwlpZiAoIXN0cmVhbSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlleHBlY3RlZCA9IGF0b21p
YzY0X3JlYWQoJnN0cmVhbS0+cGVyZi0+bm9hX3Byb2dyYW1taW5nX2RlbGF5KTsKKworCWlmIChz
dHJlYW0tPmVuZ2luZS0+Y2xhc3MgIT0gUkVOREVSX0NMQVNTKSB7CisJCWVyciA9IC1FTk9ERVY7
CisJCWdvdG8gb3V0OworCX0KKworCWZvciAoaSA9IDA7IGkgPCA0OyBpKyspCisJCWludGVsX3dy
aXRlX3N0YXR1c19wYWdlKHN0cmVhbS0+ZW5naW5lLCAweDEwMCArIGksIDApOworCisJcnEgPSBp
OTE1X3JlcXVlc3RfY3JlYXRlKHN0cmVhbS0+ZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CisJaWYg
KElTX0VSUihycSkpIHsKKwkJZXJyID0gUFRSX0VSUihycSk7CisJCWdvdG8gb3V0OworCX0KKwor
CWlmIChycS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYiAmJgorCSAgICBpOTE1X3JlcXVl
c3RfdGltZWxpbmUocnEpLT5oYXNfaW5pdGlhbF9icmVhZGNydW1iKSB7CisJCWVyciA9IHJxLT5l
bmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsKKwkJaWYgKGVycikgeworCQkJaTkxNV9y
ZXF1ZXN0X2FkZChycSk7CisJCQlnb3RvIG91dDsKKwkJfQorCX0KKworCWVyciA9IHdyaXRlX3Rp
bWVzdGFtcChycSwgMHgxMDApOworCWlmIChlcnIpIHsKKwkJaTkxNV9yZXF1ZXN0X2FkZChycSk7
CisJCWdvdG8gb3V0OworCX0KKworCWVyciA9IHJxLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEs
CisJCQkJCWk5MTVfZ2d0dF9vZmZzZXQoc3RyZWFtLT5ub2Ffd2FpdCksIDAsCisJCQkJCUk5MTVf
RElTUEFUQ0hfU0VDVVJFKTsKKwlpZiAoZXJyKSB7CisJCWk5MTVfcmVxdWVzdF9hZGQocnEpOwor
CQlnb3RvIG91dDsKKwl9CisKKwllcnIgPSB3cml0ZV90aW1lc3RhbXAocnEsIDB4MTAyKTsKKwlp
ZiAoZXJyKSB7CisJCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCQlnb3RvIG91dDsKKwl9CisKKwlp
OTE1X3JlcXVlc3RfZ2V0KHJxKTsKKwlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKKworCXByZWVtcHRf
ZGlzYWJsZSgpOworCXQwID0gcG9sbF9zdGF0dXMocnEsIDB4MTAwKTsKKwl0MSA9IHBvbGxfc3Rh
dHVzKHJxLCAweDEwMik7CisJcHJlZW1wdF9lbmFibGUoKTsKKworCXByX2luZm8oIkNQVSBkZWxh
eTogJWxsdW5zLCBleHBlY3RlZCAlbGx1bnNcbiIsCisJCWt0aW1lX3N1Yih0MSwgdDApLCBleHBl
Y3RlZCk7CisKKwlkZWxheSA9IGludGVsX3JlYWRfc3RhdHVzX3BhZ2Uoc3RyZWFtLT5lbmdpbmUs
IDB4MTAyKTsKKwlkZWxheSAtPSBpbnRlbF9yZWFkX3N0YXR1c19wYWdlKHN0cmVhbS0+ZW5naW5l
LCAweDEwMCk7CisJZGVsYXkgPSBkaXZfdTY0KG11bF91MzJfdTMyKGRlbGF5LCAxMDAwICogMTAw
MCksCisJCQlSVU5USU1FX0lORk8oaTkxNSktPmNzX3RpbWVzdGFtcF9mcmVxdWVuY3lfa2h6KTsK
Kwlwcl9pbmZvKCJHUFUgZGVsYXk6ICV1bnMsIGV4cGVjdGVkICVsbHVuc1xuIiwKKwkJZGVsYXks
IGV4cGVjdGVkKTsKKworCWlmICg0ICogZGVsYXkgPCAzICogZXhwZWN0ZWQgfHwgMiAqIGRlbGF5
ID4gMyAqIGV4cGVjdGVkKSB7CisJCXByX2VycigiR1BVIGRlbGF5IFsldXVzXSBvdXRzaWRlIG9m
IGV4cGVjdGVkIHRocmVzaG9sZCEgWyVsbHV1cywgJWxsdXVzXVxuIiwKKwkJICAgICAgIGRlbGF5
IC8gMTAwMCwKKwkJICAgICAgIGRpdl91NjQoMyAqIGV4cGVjdGVkLCA0MDAwKSwKKwkJICAgICAg
IGRpdl91NjQoMyAqIGV4cGVjdGVkLCAyMDAwKSk7CisJCWVyciA9IC1FSU5WQUw7CisJfQorCisJ
aTkxNV9yZXF1ZXN0X3B1dChycSk7CitvdXQ6CisJc3RyZWFtX2Rlc3Ryb3koc3RyZWFtKTsKKwly
ZXR1cm4gZXJyOworfQorCitpbnQgaTkxNV9wZXJmX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQoreworCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0
IHRlc3RzW10gPSB7CisJCVNVQlRFU1QobGl2ZV9zYW5pdHljaGVjayksCisJCVNVQlRFU1QobGl2
ZV9ub2FfZGVsYXkpLAorCX07CisJc3RydWN0IGk5MTVfcGVyZiAqcGVyZiA9ICZpOTE1LT5wZXJm
OworCisJaWYgKCFwZXJmLT5tZXRyaWNzX2tvYmogfHwgIXBlcmYtPm9wcy5lbmFibGVfbWV0cmlj
X3NldCkKKwkJcmV0dXJuIDA7CisKKwlpZiAoaW50ZWxfZ3RfaXNfd2VkZ2VkKCZpOTE1LT5ndCkp
CisJCXJldHVybiAwOworCisJcmV0dXJuIGk5MTVfc3VidGVzdHModGVzdHMsIGk5MTUpOworfQot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
