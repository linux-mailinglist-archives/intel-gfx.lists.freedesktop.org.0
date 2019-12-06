Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AD1154D0
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 17:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFC06FA53;
	Fri,  6 Dec 2019 16:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0781A6FA51
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 16:04:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19486875-1500050 
 for multiple; Fri, 06 Dec 2019 16:04:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 16:04:27 +0000
Message-Id: <20191206160428.1503343-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
References: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Propagate errors on awaiting
 already signaled fences
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

SWYgd2Ugc2VlIGFuIGFscmVhZHkgc2lnbmFsZWQgZmVuY2UgdGhhdCB3ZSB3YW50IHRvIGF3YWl0
IG9uLCB3ZSBza2lwCmFkZGluZyB0byB0aGUgaTkxNV9zd19mZW5jZS4gSG93ZXZlciwgd2Ugc2hv
dWxkIHBheSBhdHRlbnRpb24gdG8gd2hldGhlcgp0aGVyZSB3YXMgYW4gZXJyb3Igb24gdGhhdCBm
ZW5jZSBhbmQgaWYgc28gcHJvcGFnYXRlIGl0IGZvciBvdXIgZnV0dXJlCnJlcXVlc3QuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDggKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYwppbmRleCBhNTU4ZjY0MTg2ZmEuLjNmYTE2NTA5NzViOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTk1OCw4ICs5NTgsMTAgQEAgaTkxNV9yZXF1ZXN0
X2F3YWl0X2RtYV9mZW5jZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpCiAKIAlkbyB7CiAJCWZlbmNlID0gKmNoaWxkKys7Ci0JCWlmICh0ZXN0X2JpdChE
TUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQorCQlpZiAodGVzdF9i
aXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkgeworCQkJaTkx
NV9zd19mZW5jZV9zZXRfZXJyb3Jfb25jZSgmcnEtPnN1Ym1pdCwgZmVuY2UtPmVycm9yKTsKIAkJ
CWNvbnRpbnVlOworCQl9CiAKIAkJLyoKIAkJICogUmVxdWVzdHMgb24gdGhlIHNhbWUgdGltZWxp
bmUgYXJlIGV4cGxpY2l0bHkgb3JkZXJlZCwgYWxvbmcKQEAgLTEwMTUsOCArMTAxNywxMCBAQCBp
OTE1X3JlcXVlc3RfYXdhaXRfZXhlY3V0aW9uKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCiAJ
ZG8gewogCQlmZW5jZSA9ICpjaGlsZCsrOwotCQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdf
U0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkKKwkJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9G
TEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykpIHsKKwkJCWk5MTVfc3dfZmVuY2Vfc2V0
X2Vycm9yX29uY2UoJnJxLT5zdWJtaXQsIGZlbmNlLT5lcnJvcik7CiAJCQljb250aW51ZTsKKwkJ
fQogCiAJCS8qCiAJCSAqIFdlIGRvbid0IHNxdWFzaCByZXBlYXRlZCBmZW5jZSBkZXBlbmRlbmNp
ZXMgaGVyZSBhcyB3ZQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
