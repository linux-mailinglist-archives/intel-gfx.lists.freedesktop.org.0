Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C78C4E3095
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9386E2DE;
	Thu, 24 Oct 2019 11:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180926E287
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:40:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18948727-1500050 
 for multiple; Thu, 24 Oct 2019 12:40:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 12:40:18 +0100
Message-Id: <20191024114028.6170-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024114028.6170-1-chris@chris-wilson.co.uk>
References: <20191024114028.6170-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/11] drm/i915/gem: Make context persistence
 optional
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

T3VyIGV4aXN0aW5nIGJlaGF2aW91ciBpcyB0byBhbGxvdyBjb250ZXh0cyBhbmQgdGhlaXIgR1BV
IHJlcXVlc3RzIHRvCnBlcnNpc3QgcGFzdCB0aGUgcG9pbnQgb2YgY2xvc3VyZSB1bnRpbCB0aGUg
cmVxdWVzdHMgYXJlIGNvbXBsZXRlLiBUaGlzCmFsbG93cyBjbGllbnRzIHRvIG9wZXJhdGUgaW4g
YSAnZmlyZS1hbmQtZm9yZ2V0JyBtYW5uZXIgd2hlcmUgdGhleSBjYW4Kc2V0dXAgYSByZW5kZXJp
bmcgcGlwZWxpbmUgYW5kIGhhbmQgaXQgb3ZlciB0byB0aGUgZGlzcGxheSBzZXJ2ZXIgYW5kCmlt
bWVkaWF0ZWx5IGV4aXRpbmcuIEFzIHRoZSByZW5kZXJpbmcgcGlwZWxpbmUgaXMga2VwdCBhbGl2
ZSB1bnRpbApjb21wbGV0aW9uLCB0aGUgZGlzcGxheSBzZXJ2ZXIgKG9yIG90aGVyIGNvbnN1bWVy
KSBjYW4gdXNlIHRoZSByZXN1bHRzCmluIHRoZSBmdXR1cmUgYW5kIHByZXNlbnQgdGhlbSB0byB0
aGUgdXNlci4KCkhvd2V2ZXIsIG5vdCBhbGwgY2xpZW50cyB3YW50IHRoaXMgcGVyc2lzdGVudCBi
ZWhhdmlvdXIgYW5kIHdvdWxkIHByZWZlcgp0aGF0IHRoZSBjb250ZXh0cyBhcmUgY2xlYW5lZCB1
cCBpbW1lZGlhdGVseSB1cG9uIGNsb3N1cmUuIFRoaXMgZW5zdXJlcwp0aGF0IHdoZW4gY2xpZW50
cyBhcmUgcnVuIHdpdGhvdXQgaGFuZ2NoZWNraW5nLCBhbnkgR1BVIGhhbmcgaXMKdGVybWluYXRl
ZCB3aXRoIHRoZSBwcm9jZXNzIGFuZCBkb2VzIG5vdCBjb250aW51ZSB0byBob2cgcmVzb3VyY2Vz
LgoKQnkgZGVmaW5pbmcgYSBjb250ZXh0IHByb3BlcnR5IHRvIGFsbG93IGNsaWVudHMgdG8gY29u
dHJvbCBwZXJzaXN0ZW5jZQpleHBsaWNpdGx5LCB3ZSBjYW4gcmVtb3ZlIHRoZSBibGFua2V0IGFk
dmljZSB0byBkaXNhYmxlIGhhbmdjaGVja2luZwp0aGF0IHNlZW1zIHRvIGJlIGZhciB0b28gcHJl
dmFsZW50LgoKVGhlIGRlZmF1bHQgYmVoYXZpb3VyIGZvciBuZXcgY29udHJvbHMgaXMgdGhlIGxl
Z2FjeSBwZXJzaXN0ZW5jZSBtb2RlLgpOZXcgY2xpZW50cyB3aWxsIGhhdmUgdG8gb3B0IG91dCBm
b3IgaW1tZWRpYXRlIGNsZWFudXAgb24gY29udGV4dApjbG9zdXJlLiBJZiB0aGUgaGFuZ2NoZWNr
aW5nIG1vZHBhcmFtIGlzIGRpc2FibGVkLCBzbyBpcyBwZXJzaXN0ZW50CmNvbnRleHQgc3VwcG9y
dCAtLSBhbGwgY29udGV4dHMgd2lsbCBiZSB0ZXJtaW5hdGVkIG9uIGNsb3N1cmUuCgpUZXN0Y2Fz
ZTogaWd0L2dlbV9jdHhfcGVyc2lzdGVuY2UKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlh
cnNraUBpbnRlbC5jb20+CkNjOiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgNTAg
KysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuaCAgIHwgMTUgKysrKysrCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0X3R5cGVzLmggfCAgMSArCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19j
b250ZXh0LmMgfCAgMiArCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAg
ICAgICAgfCAxNSArKysrKysKIDUgZmlsZXMgY2hhbmdlZCwgODIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
CmluZGV4IDU1ZjFmOTNjMDkyNS4uMGYxYmJmNWQxYTExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTQzNywxMiArNDM3LDM5IEBAIHN0YXRpYyB2
b2lkIGNvbnRleHRfY2xvc2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKIAkgKiBjYXNl
IHdlIG9wdCB0byBmb3JjaWJseSBraWxsIG9mZiBhbGwgcmVtYWluaW5nIHJlcXVlc3RzIG9uCiAJ
ICogY29udGV4dCBjbG9zZS4KIAkgKi8KLQlpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5n
Y2hlY2spCisJaWYgKCFpOTE1X2dlbV9jb250ZXh0X2lzX3BlcnNpc3RlbnQoY3R4KSB8fAorCSAg
ICAhaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2hhbmdjaGVjaykKIAkJa2lsbF9jb250ZXh0KGN0eCk7
CiAKIAlpOTE1X2dlbV9jb250ZXh0X3B1dChjdHgpOwogfQogCitzdGF0aWMgaW50IF9fY29udGV4
dF9zZXRfcGVyc2lzdGVuY2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwgYm9vbCBzdGF0
ZSkKK3sKKwlpZiAoaTkxNV9nZW1fY29udGV4dF9pc19wZXJzaXN0ZW50KGN0eCkgPT0gc3RhdGUp
CisJCXJldHVybiAwOworCisJaWYgKHN0YXRlKSB7CisJCS8qCisJCSAqIE9ubHkgY29udGV4dHMg
dGhhdCBhcmUgc2hvcnQtbGl2ZWQgW3RoYXQgd2lsbCBleHBpcmUgb3IgYmUKKwkJICogcmVzZXRd
IGFyZSBhbGxvd2VkIHRvIHN1cnZpdmUgcGFzdCB0ZXJtaW5hdGlvbi4gV2UgcmVxdWlyZQorCQkg
KiBoYW5nY2hlY2sgdG8gZW5zdXJlIHRoYXQgdGhlIHBlcnNpc3RlbnQgcmVxdWVzdHMgYXJlIGhl
YWx0aHkuCisJCSAqLworCQlpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5nY2hlY2spCisJ
CQlyZXR1cm4gLUVJTlZBTDsKKworCQlpOTE1X2dlbV9jb250ZXh0X3NldF9wZXJzaXN0ZW5jZShj
dHgpOworCX0gZWxzZSB7CisJCS8qIFRvIGNhbmNlbCBhIGNvbnRleHQgd2UgdXNlICJwcmVlbXB0
LXRvLWlkbGUiICovCisJCWlmICghKGN0eC0+aTkxNS0+Y2Fwcy5zY2hlZHVsZXIgJiBJOTE1X1ND
SEVEVUxFUl9DQVBfUFJFRU1QVElPTikpCisJCQlyZXR1cm4gLUVOT0RFVjsKKworCQlpOTE1X2dl
bV9jb250ZXh0X2NsZWFyX3BlcnNpc3RlbmNlKGN0eCk7CisJfQorCisJcmV0dXJuIDA7Cit9CisK
IHN0YXRpYyBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqCiBfX2NyZWF0ZV9jb250ZXh0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewpAQCAtNDc3LDYgKzUwNCw3IEBAIF9fY3JlYXRl
X2NvbnRleHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlpOTE1X2dlbV9jb250
ZXh0X3NldF9iYW5uYWJsZShjdHgpOwogCWk5MTVfZ2VtX2NvbnRleHRfc2V0X3JlY292ZXJhYmxl
KGN0eCk7CisJX19jb250ZXh0X3NldF9wZXJzaXN0ZW5jZShjdHgsIHRydWUgLyogY2dyb3VwIGhv
b2s/ICovKTsKIAogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGN0eC0+aGFuZ190aW1lc3Rh
bXApOyBpKyspCiAJCWN0eC0+aGFuZ190aW1lc3RhbXBbaV0gPSBqaWZmaWVzIC0gQ09OVEVYVF9G
QVNUX0hBTkdfSklGRklFUzsKQEAgLTYzMyw2ICs2NjEsNyBAQCBpOTE1X2dlbV9jb250ZXh0X2Ny
ZWF0ZV9rZXJuZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBwcmlvKQogCQly
ZXR1cm4gY3R4OwogCiAJaTkxNV9nZW1fY29udGV4dF9jbGVhcl9iYW5uYWJsZShjdHgpOworCWk5
MTVfZ2VtX2NvbnRleHRfc2V0X3BlcnNpc3RlbmNlKGN0eCk7CiAJY3R4LT5zY2hlZC5wcmlvcml0
eSA9IEk5MTVfVVNFUl9QUklPUklUWShwcmlvKTsKIAogCUdFTV9CVUdfT04oIWk5MTVfZ2VtX2Nv
bnRleHRfaXNfa2VybmVsKGN0eCkpOwpAQCAtMTc0Myw2ICsxNzcyLDE2IEBAIGdldF9lbmdpbmVz
KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGlj
IGludAorc2V0X3BlcnNpc3RlbmNlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCisJCWNv
bnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSAqYXJncykKK3sKKwlpZiAoYXJn
cy0+c2l6ZSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlyZXR1cm4gX19jb250ZXh0X3NldF9wZXJz
aXN0ZW5jZShjdHgsIGFyZ3MtPnZhbHVlKTsKK30KKwogc3RhdGljIGludCBjdHhfc2V0cGFyYW0o
c3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZnByaXYsCiAJCQlzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4LAogCQkJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdz
KQpAQCAtMTgyMCw2ICsxODU5LDEwIEBAIHN0YXRpYyBpbnQgY3R4X3NldHBhcmFtKHN0cnVjdCBk
cm1faTkxNV9maWxlX3ByaXZhdGUgKmZwcml2LAogCQlyZXQgPSBzZXRfZW5naW5lcyhjdHgsIGFy
Z3MpOwogCQlicmVhazsKIAorCWNhc2UgSTkxNV9DT05URVhUX1BBUkFNX1BFUlNJU1RFTkNFOgor
CQlyZXQgPSBzZXRfcGVyc2lzdGVuY2UoY3R4LCBhcmdzKTsKKwkJYnJlYWs7CisKIAljYXNlIEk5
MTVfQ09OVEVYVF9QQVJBTV9CQU5fUEVSSU9EOgogCWRlZmF1bHQ6CiAJCXJldCA9IC1FSU5WQUw7
CkBAIC0yMjcyLDYgKzIzMTUsMTEgQEAgaW50IGk5MTVfZ2VtX2NvbnRleHRfZ2V0cGFyYW1faW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJcmV0ID0gZ2V0X2VuZ2lu
ZXMoY3R4LCBhcmdzKTsKIAkJYnJlYWs7CiAKKwljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9QRVJT
SVNURU5DRToKKwkJYXJncy0+c2l6ZSA9IDA7CisJCWFyZ3MtPnZhbHVlID0gaTkxNV9nZW1fY29u
dGV4dF9pc19wZXJzaXN0ZW50KGN0eCk7CisJCWJyZWFrOworCiAJY2FzZSBJOTE1X0NPTlRFWFRf
UEFSQU1fQkFOX1BFUklPRDoKIAlkZWZhdWx0OgogCQlyZXQgPSAtRUlOVkFMOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKaW5kZXggY2ZlODA1OTBmMGVkLi4x
OGU1MGE3NjlhNmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuaApAQCAtNzYsNiArNzYsMjEgQEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX2NvbnRl
eHRfY2xlYXJfcmVjb3ZlcmFibGUoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmMKIAljbGVhcl9i
aXQoVUNPTlRFWFRfUkVDT1ZFUkFCTEUsICZjdHgtPnVzZXJfZmxhZ3MpOwogfQogCitzdGF0aWMg
aW5saW5lIGJvb2wgaTkxNV9nZW1fY29udGV4dF9pc19wZXJzaXN0ZW50KGNvbnN0IHN0cnVjdCBp
OTE1X2dlbV9jb250ZXh0ICpjdHgpCit7CisJcmV0dXJuIHRlc3RfYml0KFVDT05URVhUX1BFUlNJ
U1RFTkNFLCAmY3R4LT51c2VyX2ZsYWdzKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIGk5MTVf
Z2VtX2NvbnRleHRfc2V0X3BlcnNpc3RlbmNlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgp
Cit7CisJc2V0X2JpdChVQ09OVEVYVF9QRVJTSVNURU5DRSwgJmN0eC0+dXNlcl9mbGFncyk7Cit9
CisKK3N0YXRpYyBpbmxpbmUgdm9pZCBpOTE1X2dlbV9jb250ZXh0X2NsZWFyX3BlcnNpc3RlbmNl
KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCit7CisJY2xlYXJfYml0KFVDT05URVhUX1BF
UlNJU1RFTkNFLCAmY3R4LT51c2VyX2ZsYWdzKTsKK30KKwogc3RhdGljIGlubGluZSBib29sIGk5
MTVfZ2VtX2NvbnRleHRfaXNfYmFubmVkKGNvbnN0IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpj
dHgpCiB7CiAJcmV0dXJuIHRlc3RfYml0KENPTlRFWFRfQkFOTkVELCAmY3R4LT5mbGFncyk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBl
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaApp
bmRleCBmZTk3YjhiYTRmZGEuLjg2MWQ3ZDkyZmU5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oCkBAIC0xMzcsNiArMTM3LDcgQEAg
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgewogI2RlZmluZSBVQ09OVEVYVF9OT19FUlJPUl9DQVBU
VVJFCTEKICNkZWZpbmUgVUNPTlRFWFRfQkFOTkFCTEUJCTIKICNkZWZpbmUgVUNPTlRFWFRfUkVD
T1ZFUkFCTEUJCTMKKyNkZWZpbmUgVUNPTlRFWFRfUEVSU0lTVEVOQ0UJCTQKIAogCS8qKgogCSAq
IEBmbGFnczogc21hbGwgc2V0IG9mIGJvb2xlYW5zCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuYwppbmRleCA3NGRkZDY4MmM5Y2QuLjI5Yjg5
ODRmMGU0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9t
b2NrX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21v
Y2tfY29udGV4dC5jCkBAIC0yMiw2ICsyMiw4IEBAIG1vY2tfY29udGV4dChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKIAlJTklUX0xJU1RfSEVBRCgmY3R4LT5saW5rKTsKIAljdHgtPmk5
MTUgPSBpOTE1OwogCisJaTkxNV9nZW1fY29udGV4dF9zZXRfcGVyc2lzdGVuY2UoY3R4KTsKKwog
CW11dGV4X2luaXQoJmN0eC0+ZW5naW5lc19tdXRleCk7CiAJZSA9IGRlZmF1bHRfZW5naW5lcyhj
dHgpOwogCWlmIChJU19FUlIoZSkpCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggNjNkNDBjYmE5N2UwLi5i
NWZkNWU0YmQxNmUgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTE1NzIsNiArMTU3MiwyMSBAQCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gewogICogICBpOTE1X2NvbnRleHRfZW5naW5l
c19ib25kIChJOTE1X0NPTlRFWFRfRU5HSU5FU19FWFRfQk9ORCkKICAqLwogI2RlZmluZSBJOTE1
X0NPTlRFWFRfUEFSQU1fRU5HSU5FUwkweGEKKworLyoKKyAqIEk5MTVfQ09OVEVYVF9QQVJBTV9Q
RVJTSVNURU5DRToKKyAqCisgKiBBbGxvdyB0aGUgY29udGV4dCBhbmQgYWN0aXZlIHJlbmRlcmlu
ZyB0byBzdXJ2aXZlIHRoZSBwcm9jZXNzIHVudGlsCisgKiBjb21wbGV0aW9uLiBQZXJzaXN0ZW5j
ZSBhbGxvd3MgZmlyZS1hbmQtZm9yZ2V0IGNsaWVudHMgdG8gcXVldWUgdXAgYQorICogYnVuY2gg
b2Ygd29yaywgaGFuZCB0aGUgb3V0cHV0IG92ZXIgdG8gYSBkaXNwbGF5IHNlcnZlciBhbmQgdGhl
IHF1aXQuCisgKiBJZiB0aGUgY29udGV4dCBpcyBub3QgbWFya2VkIGFzIHBlcnNpc3RlbnQsIHVw
b24gY2xvc2luZyAoZWl0aGVyIHZpYQorICogYW4gZXhwbGljaXQgRFJNX0k5MTVfR0VNX0NPTlRF
WFRfREVTVFJPWSBvciBpbXBsaWNpdGx5IGZyb20gZmlsZSBjbG9zdXJlCisgKiBvciBwcm9jZXNz
IHRlcm1pbmF0aW9uKSwgdGhlIGNvbnRleHQgYW5kIGFueSBvdXRzdGFuZGluZyByZXF1ZXN0cyB3
aWxsIGJlCisgKiBjYW5jZWxsZWQgKGFuZCBleHBvcnRlZCBmZW5jZXMgZm9yIGNhbmNlbGxlZCBy
ZXF1ZXN0cyBtYXJrZWQgYXMgLUVJTykuCisgKgorICogQnkgZGVmYXVsdCwgbmV3IGNvbnRleHRz
IGFsbG93IHBlcnNpc3RlbmNlLgorICovCisjZGVmaW5lIEk5MTVfQ09OVEVYVF9QQVJBTV9QRVJT
SVNURU5DRQkweGIKIC8qIE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFuZCB3ZWxs
IGRvY3VtZW50ZWQgKi8KIAogCV9fdTY0IHZhbHVlOwotLSAKMi4yNC4wLnJjMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
