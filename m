Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B9524F67
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 14:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413B789362;
	Tue, 21 May 2019 12:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC4A89229
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 12:57:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16626948-1500050 
 for multiple; Tue, 21 May 2019 13:43:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2019 13:43:09 +0100
Message-Id: <20190521124318.26310-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 01/10] drm/i915: Restore control over ppgtt for
 context creation ABI
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

SGF2aW5nIGhpZCB0aGUgcGFydGlhbGx5IGV4cG9zZWQgbmV3IEFCSSBmcm9tIHRoZSBQUiwgcHV0
IGl0IGJhY2sgYWdhaW4KZm9yIGNvbXBsZXRpb24gb2YgY29udGV4dCByZWNvdmVyeS4gQSBzaWdu
aWZpY2FudCBwYXJ0IG9mIGNvbnRleHQKcmVjb3ZlcnkgaXMgdGhlIGFiaWxpdHkgdG8gcmV1c2Ug
YXMgbXVjaCBvZiB0aGUgb2xkIGNvbnRleHQgYXMgaXMKZmVhc2libGUgKHRvIGF2b2lkIGV4cGVu
c2l2ZSByZWNvbnN0cnVjdGlvbikuIFRoZSBiaWdnZXN0IGNodW5rIGtlcHQKaGlkZGVuIGF0IHRo
ZSBtb21lbnQgaXMgZmluZS1jb250cm9sIG92ZXIgdGhlIGN0eC0+cHBndHQgKHRoZSBHUFUgcGFn
ZQp0YWJsZXMgYW5kIGFzc29jaWF0ZWQgdHJhbnNsYXRpb24gdGFibGVzIGFuZCBrZXJuZWwgbWFw
cyksIHNvIG1ha2UKY29udHJvbCBvdmVyIHRoZSBjdHgtPnBwZ3R0IGV4cGxpY2l0LgoKVGhpcyBh
bGxvd3MgdXNlcnNwYWNlIHRvIGNyZWF0ZSBhbmQgc2hhcmUgdmlydHVhbCBtZW1vcnkgYWRkcmVz
cyBzcGFjZXMKKHdpdGhpbiB0aGUgbGltaXRzIG9mIGEgc2luZ2xlIGZkKSBiZXR3ZWVuIGNvbnRl
eHRzIHRoZXkgb3duLCBhbG9uZyB3aXRoCnRoZSBhYmlsaXR5IHRvIHF1ZXJ5IHRoZSBjb250ZXh0
cyBmb3IgdGhlIHZtIHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAg
ICAgICB8ICAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMgfCAg
NSAtLS0tLQogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgIHwgMTUgKysr
KysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMmM3YTQzMThkMTNjLi41MDYxY2Iz
Mjg1NmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMzE2NCw2ICszMTY0LDggQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1faW9jdGxfZGVzYyBpOTE1X2lvY3Rsc1tdID0gewogCURSTV9J
T0NUTF9ERUZfRFJWKEk5MTVfUEVSRl9BRERfQ09ORklHLCBpOTE1X3BlcmZfYWRkX2NvbmZpZ19p
b2N0bCwgRFJNX1VOTE9DS0VEfERSTV9SRU5ERVJfQUxMT1cpLAogCURSTV9JT0NUTF9ERUZfRFJW
KEk5MTVfUEVSRl9SRU1PVkVfQ09ORklHLCBpOTE1X3BlcmZfcmVtb3ZlX2NvbmZpZ19pb2N0bCwg
RFJNX1VOTE9DS0VEfERSTV9SRU5ERVJfQUxMT1cpLAogCURSTV9JT0NUTF9ERUZfRFJWKEk5MTVf
UVVFUlksIGk5MTVfcXVlcnlfaW9jdGwsIERSTV9VTkxPQ0tFRHxEUk1fUkVOREVSX0FMTE9XKSwK
KwlEUk1fSU9DVExfREVGX0RSVihJOTE1X0dFTV9WTV9DUkVBVEUsIGk5MTVfZ2VtX3ZtX2NyZWF0
ZV9pb2N0bCwgRFJNX1JFTkRFUl9BTExPVyksCisJRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9HRU1f
Vk1fREVTVFJPWSwgaTkxNV9nZW1fdm1fZGVzdHJveV9pb2N0bCwgRFJNX1JFTkRFUl9BTExPVyks
CiB9OwogCiBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0gewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDY1Y2VmYzUyMGU3OS4uNDEzYzQ1MjkxOTFk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCkBAIC05OCw3ICs5OCw2
IEBACiAjaW5jbHVkZSAiaTkxNV91c2VyX2V4dGVuc2lvbnMuaCIKIAogI2RlZmluZSBJOTE1X0NP
TlRFWFRfQ1JFQVRFX0ZMQUdTX1NJTkdMRV9USU1FTElORSAoMSA8PCAxKQotI2RlZmluZSBJOTE1
X0NPTlRFWFRfUEFSQU1fVk0gMHg5CiAKICNkZWZpbmUgQUxMX0wzX1NMSUNFUyhkZXYpICgxIDw8
IE5VTV9MM19TTElDRVMoZGV2KSkgLSAxCiAKQEAgLTk2Niw4ICs5NjUsNiBAQCBzdGF0aWMgaW50
IGdldF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYsCiAJc3Ry
dWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0OwogCWludCByZXQ7CiAKLQlyZXR1cm4gLUVJTlZBTDsg
Lyogbm90aGluZyB0byBzZWUgaGVyZTsgcGxlYXNlIG1vdmUgYWxvbmcgKi8KLQogCWlmICghY3R4
LT5wcGd0dCkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKQEAgLTEwNjYsOCArMTA2Myw2IEBAIHN0YXRp
YyBpbnQgc2V0X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwK
IAlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQsICpvbGQ7CiAJaW50IGVycjsKIAotCXJldHVy
biAtRUlOVkFMOyAvKiBub3RoaW5nIHRvIHNlZSBoZXJlOyBwbGVhc2UgbW92ZSBhbG9uZyAqLwot
CiAJaWYgKGFyZ3MtPnNpemUpCiAJCXJldHVybiAtRUlOVkFMOwogCmRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5k
ZXggM2E3M2Y1MzE2NzY2Li5kNmFkNGExNWIyYjkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9k
cm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTM1NSw2
ICszNTUsOCBAQCB0eXBlZGVmIHN0cnVjdCBfZHJtX2k5MTVfc2FyZWEgewogI2RlZmluZSBEUk1f
STkxNV9QRVJGX0FERF9DT05GSUcJMHgzNwogI2RlZmluZSBEUk1fSTkxNV9QRVJGX1JFTU9WRV9D
T05GSUcJMHgzOAogI2RlZmluZSBEUk1fSTkxNV9RVUVSWQkJCTB4MzkKKyNkZWZpbmUgRFJNX0k5
MTVfR0VNX1ZNX0NSRUFURQkJMHgzYQorI2RlZmluZSBEUk1fSTkxNV9HRU1fVk1fREVTVFJPWQkJ
MHgzYgogLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgKi8KIAogI2RlZmluZSBE
Uk1fSU9DVExfSTkxNV9JTklUCQlEUk1fSU9XKCBEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVf
SU5JVCwgZHJtX2k5MTVfaW5pdF90KQpAQCAtNDE1LDYgKzQxNyw4IEBAIHR5cGVkZWYgc3RydWN0
IF9kcm1faTkxNV9zYXJlYSB7CiAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X1BFUkZfQUREX0NPTkZJ
RwlEUk1fSU9XKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9QRVJGX0FERF9DT05GSUcsIHN0
cnVjdCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZykKICNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfUEVS
Rl9SRU1PVkVfQ09ORklHCURSTV9JT1coRFJNX0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X1BFUkZf
UkVNT1ZFX0NPTkZJRywgX191NjQpCiAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X1FVRVJZCQkJRFJN
X0lPV1IoRFJNX0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X1FVRVJZLCBzdHJ1Y3QgZHJtX2k5MTVf
cXVlcnkpCisjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9WTV9DUkVBVEUJRFJNX0lPV1IoRFJN
X0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9WTV9DUkVBVEUsIHN0cnVjdCBkcm1faTkxNV9n
ZW1fdm1fY29udHJvbCkKKyNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX1ZNX0RFU1RST1kJRFJN
X0lPVyAoRFJNX0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9WTV9ERVNUUk9ZLCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX3ZtX2NvbnRyb2wpCiAKIC8qIEFsbG93IGRyaXZlcnMgdG8gc3VibWl0IGJh
dGNoYnVmZmVycyBkaXJlY3RseSB0byBoYXJkd2FyZSwgcmVseWluZwogICogb24gdGhlIHNlY3Vy
aXR5IG1lY2hhbmlzbXMgcHJvdmlkZWQgYnkgaGFyZHdhcmUuCkBAIC0xNTA3LDYgKzE1MTEsMTcg
QEAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHsKICAqIE9uIGNyZWF0aW9uLCBh
bGwgbmV3IGNvbnRleHRzIGFyZSBtYXJrZWQgYXMgcmVjb3ZlcmFibGUuCiAgKi8KICNkZWZpbmUg
STkxNV9DT05URVhUX1BBUkFNX1JFQ09WRVJBQkxFCTB4OAorCisJLyoKKwkgKiBUaGUgaWQgb2Yg
dGhlIGFzc29jaWF0ZWQgdmlydHVhbCBtZW1vcnkgYWRkcmVzcyBzcGFjZSAocHBHVFQpIG9mCisJ
ICogdGhpcyBjb250ZXh0LiBDYW4gYmUgcmV0cmlldmVkIGFuZCBwYXNzZWQgdG8gYW5vdGhlciBj
b250ZXh0CisJICogKG9uIHRoZSBzYW1lIGZkKSBmb3IgYm90aCB0byB1c2UgdGhlIHNhbWUgcHBH
VFQgYW5kIHNvIHNoYXJlCisJICogYWRkcmVzcyBsYXlvdXRzLCBhbmQgYXZvaWQgcmVsb2FkaW5n
IHRoZSBwYWdlIHRhYmxlcyBvbiBjb250ZXh0CisJICogc3dpdGNoZXMgYmV0d2VlbiB0aGVtc2Vs
dmVzLgorCSAqCisJICogU2VlIERSTV9JOTE1X0dFTV9WTV9DUkVBVEUgYW5kIERSTV9JOTE1X0dF
TV9WTV9ERVNUUk9ZLgorCSAqLworI2RlZmluZSBJOTE1X0NPTlRFWFRfUEFSQU1fVk0JCTB4OQog
LyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgYW5kIHdlbGwgZG9jdW1lbnRlZCAq
LwogCiAJX191NjQgdmFsdWU7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
