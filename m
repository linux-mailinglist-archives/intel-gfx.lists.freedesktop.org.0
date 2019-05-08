Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE473173B3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE17897FF;
	Wed,  8 May 2019 08:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B6089817
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:27:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16485912-1500050 
 for multiple; Wed, 08 May 2019 09:07:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 09:06:36 +0100
Message-Id: <20190508080704.24223-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508080704.24223-1-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/40] drm/i915: Re-expose SINGLE_TIMELINE flags
 for context creation
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

VGhlIFNJTkdMRV9USU1FTElORSBmbGFnIGNhbiBiZSB1c2VkIHRvIGNyZWF0ZSBhIGNvbnRleHQg
c3VjaCB0aGF0IGFsbAplbmdpbmUgaW5zdGFuY2VzIHdpdGhpbiB0aGF0IGNvbnRleHQgc2hhcmUg
YSBjb21tb24gdGltZWxpbmUuIFRoaXMgY2FuCmJlIHVzZWZ1bCBmb3IgbWl4aW5nIG9wZXJhdGlv
bnMgYmV0d2VlbiByZWFsIGFuZCB2aXJ0dWFsIGVuZ2luZXMsIG9yCndoZW4gdXNpbmcgYSBjb21w
b3NpdGUgY29udGV4dCBmb3IgYSBzaW5nbGUgY2xpZW50IEFQSSBjb250ZXh0LgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jIHwgNCAtLS0tCiBpbmNsdWRlL3VhcGkv
ZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgfCAzICsrLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Y29udGV4dC5jCmluZGV4IDVmZGI0NDcxNGE1Yy4uOWNkNjcxMjk4ZGFmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCkBAIC05Niw4ICs5Niw2IEBACiAjaW5jbHVkZSAi
aTkxNV90cmFjZS5oIgogI2luY2x1ZGUgImk5MTVfdXNlcl9leHRlbnNpb25zLmgiCiAKLSNkZWZp
bmUgSTkxNV9DT05URVhUX0NSRUFURV9GTEFHU19TSU5HTEVfVElNRUxJTkUgKDEgPDwgMSkKLQog
I2RlZmluZSBBTExfTDNfU0xJQ0VTKGRldikgKDEgPDwgTlVNX0wzX1NMSUNFUyhkZXYpKSAtIDEK
IAogc3RhdGljIHN0cnVjdCBpOTE1X2dsb2JhbF9nZW1fY29udGV4dCB7CkBAIC01MDUsOCArNTAz
LDYgQEAgaTkxNV9nZW1fY3JlYXRlX2NvbnRleHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZkZXZf
cHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKLQlCVUlMRF9CVUdfT04oSTkxNV9DT05URVhUX0NS
RUFURV9GTEFHU19TSU5HTEVfVElNRUxJTkUgJgotCQkgICAgIH5JOTE1X0NPTlRFWFRfQ1JFQVRF
X0ZMQUdTX1VOS05PV04pOwogCWlmIChmbGFncyAmIEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxBR1Nf
U0lOR0xFX1RJTUVMSU5FICYmCiAJICAgICFIQVNfRVhFQ0xJU1RTKGRldl9wcml2KSkKIAkJcmV0
dXJuIEVSUl9QVFIoLUVJTlZBTCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggODJiZDQ4OGVkMGQxLi45
NTdiYThlNjBlMDIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTE0NjksOCArMTQ2OSw5IEBAIHN0cnVj
dCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0IHsKIAlfX3UzMiBjdHhfaWQ7IC8qIG91
dHB1dDogaWQgb2YgbmV3IGNvbnRleHQqLwogCV9fdTMyIGZsYWdzOwogI2RlZmluZSBJOTE1X0NP
TlRFWFRfQ1JFQVRFX0ZMQUdTX1VTRV9FWFRFTlNJT05TCSgxdSA8PCAwKQorI2RlZmluZSBJOTE1
X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1NJTkdMRV9USU1FTElORQkoMXUgPDwgMSkKICNkZWZpbmUg
STkxNV9DT05URVhUX0NSRUFURV9GTEFHU19VTktOT1dOIFwKLQkoLShJOTE1X0NPTlRFWFRfQ1JF
QVRFX0ZMQUdTX1VTRV9FWFRFTlNJT05TIDw8IDEpKQorCSgtKEk5MTVfQ09OVEVYVF9DUkVBVEVf
RkxBR1NfU0lOR0xFX1RJTUVMSU5FIDw8IDEpKQogCV9fdTY0IGV4dGVuc2lvbnM7CiB9OwogCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
