Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E34C21A9A1F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406D06E947;
	Wed, 15 Apr 2020 10:11:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F96A6E94A
 for <Intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:11:48 +0000 (UTC)
IronPort-SDR: cc/Pngd6LRWV9OFr4QrP5vZKfbF9pD+Bdi5vINFw3NK3AzwUE3DeB91QbVMOuddoSuKp0XrBKi
 FVB0eEDSMh6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:11:48 -0700
IronPort-SDR: weXX9L6SJnwMc1RgDWNZzCJCnuAK2s2CL0IJUOiM21eROIGosImivYBiHwr5BaA0LBzb0Ql5U6
 INFAsVXrtMDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="427385448"
Received: from idodadon-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.240.154])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 03:11:45 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 11:11:30 +0100
Message-Id: <20200415101138.26126-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Expose list of clients in sysfs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkV4cG9zZSBh
IGxpc3Qgb2YgY2xpZW50cyB3aXRoIG9wZW4gZmlsZSBoYW5kbGVzIGluIHN5c2ZzLgoKVGhpcyB3
aWxsIGJlIGEgYmFzaXMgZm9yIGEgdG9wLWxpa2UgdXRpbGl0eSBzaG93aW5nIHBlci1jbGllbnQg
YW5kIHBlci0KZW5naW5lIEdQVSBsb2FkLgoKQ3VycmVudGx5IHdlIG9ubHkgZXhwb3NlIGVhY2gg
Y2xpZW50J3MgcGlkIGFuZCBuYW1lIHVuZGVyIG9wYXF1ZSBudW1iZXJlZApkaXJlY3RvcmllcyBp
biAvc3lzL2NsYXNzL2RybS9jYXJkMC9jbGllbnRzLy4KCkZvciBpbnN0YW5jZToKCi9zeXMvY2xh
c3MvZHJtL2NhcmQwL2NsaWVudHMvMy9uYW1lOiBYb3JnCi9zeXMvY2xhc3MvZHJtL2NhcmQwL2Ns
aWVudHMvMy9waWQ6IDU2NjQKCnYyOgogQ2hyaXMgV2lsc29uOgogKiBFbmNsb3NlIG5ldyBtZW1i
ZXJzIGludG8gZGVkaWNhdGVkIHN0cnVjdHMuCiAqIFByb3RlY3QgYWdhaW5zdCBmYWlsZWQgc3lz
ZnMgcmVnaXN0cmF0aW9uLgoKdjM6CiAqIHN5c2ZzX2F0dHJfaW5pdC4KCnY0OgogKiBGaXggZm9y
IGludGVybmFsIGNsaWVudHMuCgp2NToKICogVXNlIGN5Y2xpYyBpZGEgZm9yIGNsaWVudCBpZC4g
KENocmlzKQogKiBEbyBub3QgbGVhayBwaWQgcmVmZXJlbmNlLiAoQ2hyaXMpCiAqIFRpZHkgY29k
ZSB3aXRoIHNvbWUgbG9jYWxzLgoKdjY6CiAqIFVzZSB4YV9hbGxvY19jeWNsaWMgdG8gc2ltcGxp
ZnkgbG9ja2luZy4gKENocmlzKQogKiBObyBuZWVkIHRvIHVucmVnaXN0ZXIgaW5kaXZpZGlhbCBz
eXNmcyBmaWxlcy4gKENocmlzKQogKiBSZWJhc2Ugb24gdG9wIG9mIGZwcml2IGtyZWYuCiAqIFRy
YWNrIGNsaWVudCBjbG9zZWQgc3RhdHVzIGFuZCByZWZsZWN0IGluIHN5c2ZzLgoKdjc6CiAqIE1h
a2UgZHJtX2NsaWVudCBtb3JlIHN0YW5kYWxvbmUgY29uY2VwdC4KCnY4OgogKiBTaW1wbGlmeSBz
eXNmcyBzaG93LiAoQ2hyaXMpCiAqIEFsd2F5cyB0cmFjayBuYW1lIGFuZCBwaWQuCgp2OToKICog
Rml4IGN5Y2xpYyBpZCBhc3NpZ25tZW50LgoKdjEwOgogKiBObyBuZWVkIGZvciBhIG11dGV4IGFy
b3VuZCB4YV9hbGxvY19jeWNsaWMuCiAqIFJlZmFjdG9yIHN5c2ZzIGludG8gb3duIGZ1bmN0aW9u
LgogKiBVbnJlZ2lzdGVyIHN5c2ZzIGJlZm9yZSBmcmVlaW5nIHBpZCBhbmQgbmFtZS4KICogTW92
ZSBjbGllbnRzIHNldHVwIGludG8gb3duIGZ1bmN0aW9uLgoKdjExOgogKiBDYWxsIGNsaWVudHMg
aW5pdCBkaXJlY3RseSBmcm9tIGRyaXZlciBpbml0LiAoQ2hyaXMpCgpTaWduZWQtb2ZmLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJtX2NsaWVudC5jIHwgMTc5ICsrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJtX2NsaWVudC5oIHwgIDY0ICsrKysrKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyAgICAgICAgfCAgMjUgKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5j
ICAgICAgfCAgIDggKysKIDcgZmlsZXMgY2hhbmdlZCwgMjgzIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cm1fY2xpZW50LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RybV9jbGllbnQuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggNDRjNTA2YjdlMTE3Li5iMzBm
M2Q1MWM2NmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0zMyw3ICszMyw4IEBAIHN1YmRpci1j
Y2ZsYWdzLXkgKz0gLUkkKHNyY3RyZWUpLyQoc3JjKQogIyBQbGVhc2Uga2VlcCB0aGVzZSBidWls
ZCBsaXN0cyBzb3J0ZWQhCiAKICMgY29yZSBkcml2ZXIgY29kZQotaTkxNS15ICs9IGk5MTVfZHJ2
Lm8gXAoraTkxNS15ICs9IGk5MTVfZHJtX2NsaWVudC5vIFwKKwkgIGk5MTVfZHJ2Lm8gXAogCSAg
aTkxNV9pcnEubyBcCiAJICBpOTE1X2dldHBhcmFtLm8gXAogCSAgaTkxNV9wYXJhbXMubyBcCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJtX2NsaWVudC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uMjA2N2ZiY2RiNzk1Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcm1fY2xpZW50LmMKQEAgLTAsMCArMSwxNzkgQEAKKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRl
bCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KKyNpbmNsdWRl
IDxsaW51eC9zbGFiLmg+CisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKworI2luY2x1ZGUgImk5
MTVfZHJtX2NsaWVudC5oIgorI2luY2x1ZGUgImk5MTVfZ2VtLmgiCisjaW5jbHVkZSAiaTkxNV91
dGlscy5oIgorCit2b2lkIGk5MTVfZHJtX2NsaWVudHNfaW5pdChzdHJ1Y3QgaTkxNV9kcm1fY2xp
ZW50cyAqY2xpZW50cykKK3sKKwljbGllbnRzLT5uZXh0X2lkID0gMDsKKwl4YV9pbml0X2ZsYWdz
KCZjbGllbnRzLT54YXJyYXksIFhBX0ZMQUdTX0FMTE9DKTsKK30KKworc3RhdGljIHNzaXplX3QK
K3Nob3dfY2xpZW50X25hbWUoc3RydWN0IGRldmljZSAqa2Rldiwgc3RydWN0IGRldmljZV9hdHRy
aWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpjbGll
bnQgPQorCQljb250YWluZXJfb2YoYXR0ciwgdHlwZW9mKCpjbGllbnQpLCBhdHRyLm5hbWUpOwor
CisJcmV0dXJuIHNucHJpbnRmKGJ1ZiwgUEFHRV9TSVpFLAorCQkJUkVBRF9PTkNFKGNsaWVudC0+
Y2xvc2VkKSA/ICI8JXM+IiA6ICIlcyIsCisJCQljbGllbnQtPm5hbWUpOworfQorCitzdGF0aWMg
c3NpemVfdAorc2hvd19jbGllbnRfcGlkKHN0cnVjdCBkZXZpY2UgKmtkZXYsIHN0cnVjdCBkZXZp
Y2VfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJc3RydWN0IGk5MTVfZHJtX2NsaWVu
dCAqY2xpZW50ID0KKwkJY29udGFpbmVyX29mKGF0dHIsIHR5cGVvZigqY2xpZW50KSwgYXR0ci5w
aWQpOworCisJcmV0dXJuIHNucHJpbnRmKGJ1ZiwgUEFHRV9TSVpFLAorCQkJUkVBRF9PTkNFKGNs
aWVudC0+Y2xvc2VkKSA/ICI8JXU+IiA6ICIldSIsCisJCQlwaWRfbnIoY2xpZW50LT5waWQpKTsK
K30KKworc3RhdGljIGludAorX19jbGllbnRfcmVnaXN0ZXJfc3lzZnMoc3RydWN0IGk5MTVfZHJt
X2NsaWVudCAqY2xpZW50KQoreworCWNvbnN0IHN0cnVjdCB7CisJCWNvbnN0IGNoYXIgKm5hbWU7
CisJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyOworCQlzc2l6ZV90ICgqc2hvdykoc3Ry
dWN0IGRldmljZSAqZGV2LAorCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAorCQkJ
CWNoYXIgKmJ1Zik7CisJfSBmaWxlc1tdID0geworCQl7ICJuYW1lIiwgJmNsaWVudC0+YXR0ci5u
YW1lLCBzaG93X2NsaWVudF9uYW1lIH0sCisJCXsgInBpZCIsICZjbGllbnQtPmF0dHIucGlkLCBz
aG93X2NsaWVudF9waWQgfSwKKwl9OworCXVuc2lnbmVkIGludCBpOworCWNoYXIgYnVmWzE2XTsK
KwlpbnQgcmV0OworCisJcmV0ID0gc2NucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1ZiksICIldSIsIGNs
aWVudC0+aWQpOworCWlmIChyZXQgPT0gc2l6ZW9mKGJ1ZikpCisJCXJldHVybiAtRUlOVkFMOwor
CisJY2xpZW50LT5yb290ID0ga29iamVjdF9jcmVhdGVfYW5kX2FkZChidWYsIGNsaWVudC0+Y2xp
ZW50cy0+cm9vdCk7CisJaWYgKCFjbGllbnQtPnJvb3QpCisJCXJldHVybiAtRU5PTUVNOworCisJ
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZmlsZXMpOyBpKyspIHsKKwkJc3RydWN0IGRldmlj
ZV9hdHRyaWJ1dGUgKmF0dHIgPSBmaWxlc1tpXS5hdHRyOworCisJCXN5c2ZzX2F0dHJfaW5pdCgm
YXR0ci0+YXR0cik7CisKKwkJYXR0ci0+YXR0ci5uYW1lID0gZmlsZXNbaV0ubmFtZTsKKwkJYXR0
ci0+YXR0ci5tb2RlID0gMDQ0NDsKKwkJYXR0ci0+c2hvdyA9IGZpbGVzW2ldLnNob3c7CisKKwkJ
cmV0ID0gc3lzZnNfY3JlYXRlX2ZpbGUoY2xpZW50LT5yb290LCAoc3RydWN0IGF0dHJpYnV0ZSAq
KWF0dHIpOworCQlpZiAocmV0KQorCQkJYnJlYWs7CisJfQorCisJaWYgKHJldCkKKwkJa29iamVj
dF9wdXQoY2xpZW50LT5yb290KTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyB2b2lkIF9f
Y2xpZW50X3VucmVnaXN0ZXJfc3lzZnMoc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50KQor
eworCWtvYmplY3RfcHV0KGZldGNoX2FuZF96ZXJvKCZjbGllbnQtPnJvb3QpKTsKK30KKworc3Rh
dGljIGludAorX19pOTE1X2RybV9jbGllbnRfcmVnaXN0ZXIoc3RydWN0IGk5MTVfZHJtX2NsaWVu
dCAqY2xpZW50LAorCQkJICAgc3RydWN0IHRhc2tfc3RydWN0ICp0YXNrKQoreworCXN0cnVjdCBp
OTE1X2RybV9jbGllbnRzICpjbGllbnRzID0gY2xpZW50LT5jbGllbnRzOworCWNoYXIgKm5hbWU7
CisJaW50IHJldDsKKworCW5hbWUgPSBrc3RyZHVwKHRhc2stPmNvbW0sIEdGUF9LRVJORUwpOwor
CWlmICghbmFtZSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwljbGllbnQtPnBpZCA9IGdldF90YXNr
X3BpZCh0YXNrLCBQSURUWVBFX1BJRCk7CisJY2xpZW50LT5uYW1lID0gbmFtZTsKKworCWlmICgh
Y2xpZW50cy0+cm9vdCkKKwkJcmV0dXJuIDA7IC8qIGludGVsX2ZiZGV2X2luaXQgcmVnaXN0ZXJz
IGEgY2xpZW50IGJlZm9yZSBzeXNmcyAqLworCisJcmV0ID0gX19jbGllbnRfcmVnaXN0ZXJfc3lz
ZnMoY2xpZW50KTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9zeXNmczsKKworCXJldHVybiAwOwor
CitlcnJfc3lzZnM6CisJcHV0X3BpZChjbGllbnQtPnBpZCk7CisJa2ZyZWUoY2xpZW50LT5uYW1l
KTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyB2b2lkCitfX2k5MTVfZHJtX2NsaWVudF91
bnJlZ2lzdGVyKHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCkKK3sKKwlfX2NsaWVudF91
bnJlZ2lzdGVyX3N5c2ZzKGNsaWVudCk7CisKKwlwdXRfcGlkKGZldGNoX2FuZF96ZXJvKCZjbGll
bnQtPnBpZCkpOworCWtmcmVlKGZldGNoX2FuZF96ZXJvKCZjbGllbnQtPm5hbWUpKTsKK30KKwor
c3RydWN0IGk5MTVfZHJtX2NsaWVudCAqCitpOTE1X2RybV9jbGllbnRfYWRkKHN0cnVjdCBpOTE1
X2RybV9jbGllbnRzICpjbGllbnRzLCBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRhc2spCit7CisJc3Ry
dWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50OworCWludCByZXQ7CisKKwljbGllbnQgPSBremFs
bG9jKHNpemVvZigqY2xpZW50KSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFjbGllbnQpCisJCXJldHVy
biBFUlJfUFRSKC1FTk9NRU0pOworCisJa3JlZl9pbml0KCZjbGllbnQtPmtyZWYpOworCWNsaWVu
dC0+Y2xpZW50cyA9IGNsaWVudHM7CisKKwlyZXQgPSB4YV9hbGxvY19jeWNsaWMoJmNsaWVudHMt
PnhhcnJheSwgJmNsaWVudC0+aWQsIGNsaWVudCwKKwkJCSAgICAgIHhhX2xpbWl0XzMyYiwgJmNs
aWVudHMtPm5leHRfaWQsIEdGUF9LRVJORUwpOworCWlmIChyZXQpCisJCWdvdG8gZXJyX2lkOwor
CisJcmV0ID0gX19pOTE1X2RybV9jbGllbnRfcmVnaXN0ZXIoY2xpZW50LCB0YXNrKTsKKwlpZiAo
cmV0KQorCQlnb3RvIGVycl9yZWdpc3RlcjsKKworCXJldHVybiBjbGllbnQ7CisKK2Vycl9yZWdp
c3RlcjoKKwl4YV9lcmFzZSgmY2xpZW50cy0+eGFycmF5LCBjbGllbnQtPmlkKTsKK2Vycl9pZDoK
KwlrZnJlZShjbGllbnQpOworCisJcmV0dXJuIEVSUl9QVFIocmV0KTsKK30KKwordm9pZCBfX2k5
MTVfZHJtX2NsaWVudF9mcmVlKHN0cnVjdCBrcmVmICprcmVmKQoreworCXN0cnVjdCBpOTE1X2Ry
bV9jbGllbnQgKmNsaWVudCA9CisJCWNvbnRhaW5lcl9vZihrcmVmLCB0eXBlb2YoKmNsaWVudCks
IGtyZWYpOworCisJX19pOTE1X2RybV9jbGllbnRfdW5yZWdpc3RlcihjbGllbnQpOworCXhhX2Vy
YXNlKCZjbGllbnQtPmNsaWVudHMtPnhhcnJheSwgY2xpZW50LT5pZCk7CisJa2ZyZWVfcmN1KGNs
aWVudCwgcmN1KTsKK30KKwordm9pZCBpOTE1X2RybV9jbGllbnRfY2xvc2Uoc3RydWN0IGk5MTVf
ZHJtX2NsaWVudCAqY2xpZW50KQoreworCUdFTV9CVUdfT04oUkVBRF9PTkNFKGNsaWVudC0+Y2xv
c2VkKSk7CisJV1JJVEVfT05DRShjbGllbnQtPmNsb3NlZCwgdHJ1ZSk7CisJaTkxNV9kcm1fY2xp
ZW50X3B1dChjbGllbnQpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcm1fY2xpZW50LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQuaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmFmNjk5OGM3NGQ0YwotLS0g
L2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJtX2NsaWVudC5oCkBA
IC0wLDAgKzEsNjQgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBD
b3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgX19JOTE1
X0RSTV9DTElFTlRfSF9fCisjZGVmaW5lIF9fSTkxNV9EUk1fQ0xJRU5UX0hfXworCisjaW5jbHVk
ZSA8bGludXgvZGV2aWNlLmg+CisjaW5jbHVkZSA8bGludXgva29iamVjdC5oPgorI2luY2x1ZGUg
PGxpbnV4L2tyZWYuaD4KKyNpbmNsdWRlIDxsaW51eC9waWQuaD4KKyNpbmNsdWRlIDxsaW51eC9y
Y3VwZGF0ZS5oPgorI2luY2x1ZGUgPGxpbnV4L3NjaGVkLmg+CisjaW5jbHVkZSA8bGludXgveGFy
cmF5Lmg+CisKK3N0cnVjdCBpOTE1X2RybV9jbGllbnRzIHsKKwlzdHJ1Y3QgeGFycmF5IHhhcnJh
eTsKKwl1MzIgbmV4dF9pZDsKKworCXN0cnVjdCBrb2JqZWN0ICpyb290OworfTsKKworc3RydWN0
IGk5MTVfZHJtX2NsaWVudCB7CisJc3RydWN0IGtyZWYga3JlZjsKKworCXN0cnVjdCByY3VfaGVh
ZCByY3U7CisKKwl1bnNpZ25lZCBpbnQgaWQ7CisJc3RydWN0IHBpZCAqcGlkOworCWNoYXIgKm5h
bWU7CisJYm9vbCBjbG9zZWQ7CisKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50cyAqY2xpZW50czsK
KworCXN0cnVjdCBrb2JqZWN0ICpyb290OworCXN0cnVjdCB7CisJCXN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlIHBpZDsKKwkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgbmFtZTsKKwl9IGF0dHI7Cit9
OworCit2b2lkIGk5MTVfZHJtX2NsaWVudHNfaW5pdChzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50cyAq
Y2xpZW50cyk7CisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqCitpOTE1
X2RybV9jbGllbnRfZ2V0KHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCkKK3sKKwlrcmVm
X2dldCgmY2xpZW50LT5rcmVmKTsKKwlyZXR1cm4gY2xpZW50OworfQorCit2b2lkIF9faTkxNV9k
cm1fY2xpZW50X2ZyZWUoc3RydWN0IGtyZWYgKmtyZWYpOworCitzdGF0aWMgaW5saW5lIHZvaWQg
aTkxNV9kcm1fY2xpZW50X3B1dChzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpjbGllbnQpCit7CisJ
a3JlZl9wdXQoJmNsaWVudC0+a3JlZiwgX19pOTE1X2RybV9jbGllbnRfZnJlZSk7Cit9CisKK3Zv
aWQgaTkxNV9kcm1fY2xpZW50X2Nsb3NlKHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCk7
CisKK3N0cnVjdCBpOTE1X2RybV9jbGllbnQgKmk5MTVfZHJtX2NsaWVudF9hZGQoc3RydWN0IGk5
MTVfZHJtX2NsaWVudHMgKmNsaWVudHMsCisJCQkJCSAgICBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRh
c2spOworCisjZW5kaWYgLyogIV9fSTkxNV9EUk1fQ0xJRU5UX0hfXyAqLwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKaW5kZXggNjQxZjVlMDNiNjYxLi5kYWM4NGIxN2QyM2QgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwpAQCAtNzAsNiArNzAsNyBAQAogI2luY2x1ZGUgImd0L2ludGVsX3JjNi5oIgog
CiAjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzLmgiCisjaW5jbHVkZSAiaTkxNV9kcm1fY2xpZW50Lmgi
CiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2lvYzMyLmgiCiAjaW5jbHVk
ZSAiaTkxNV9pcnEuaCIKQEAgLTQ1Niw2ICs0NTcsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVy
X2Vhcmx5X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWk5MTVf
Z2VtX2luaXRfZWFybHkoZGV2X3ByaXYpOwogCisJaTkxNV9kcm1fY2xpZW50c19pbml0KCZkZXZf
cHJpdi0+Y2xpZW50cyk7CisKIAkvKiBUaGlzIG11c3QgYmUgY2FsbGVkIGJlZm9yZSBhbnkgY2Fs
bHMgdG8gSEFTX1BDSF8qICovCiAJaW50ZWxfZGV0ZWN0X3BjaChkZXZfcHJpdik7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IGU5ZWU0ZGFhOTMyMC4uZjlmMGMzYmE2ZTRhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTkxLDYgKzkxLDcgQEAKICNpbmNsdWRlICJpbnRlbF93YWtl
cmVmLmgiCiAjaW5jbHVkZSAiaW50ZWxfd29wY20uaCIKIAorI2luY2x1ZGUgImk5MTVfZHJtX2Ns
aWVudC5oIgogI2luY2x1ZGUgImk5MTVfZ2VtLmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fZ3R0Lmgi
CiAjaW5jbHVkZSAiaTkxNV9ncHVfZXJyb3IuaCIKQEAgLTIyNiw2ICsyMjcsOCBAQCBzdHJ1Y3Qg
ZHJtX2k5MTVfZmlsZV9wcml2YXRlIHsKIAkvKiogYmFuX3Njb3JlOiBBY2N1bXVsYXRlZCBzY29y
ZSBvZiBhbGwgY3R4IGJhbnMgYW5kIGZhc3QgaGFuZ3MuICovCiAJYXRvbWljX3QgYmFuX3Njb3Jl
OwogCXVuc2lnbmVkIGxvbmcgaGFuZ190aW1lc3RhbXA7CisKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xp
ZW50ICpjbGllbnQ7CiB9OwogCiAvKiBJbnRlcmZhY2UgaGlzdG9yeToKQEAgLTEyMDEsNiArMTIw
NCw4IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAogCXN0cnVjdCBpOTE1X3BtdSBwbXU7
CiAKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50cyBjbGllbnRzOworCiAJc3RydWN0IGk5MTVfaGRj
cF9jb21wX21hc3RlciAqaGRjcF9tYXN0ZXI7CiAJYm9vbCBoZGNwX2NvbXBfYWRkZWQ7CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDBjYmNiOWY1NGU3ZC4uNWEwYjVmYWU4YjkyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTEyMzQsNiArMTIzNCw4IEBAIHZvaWQgaTkxNV9nZW1f
Y2xlYW51cF9lYXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJR0VNX0JV
R19PTighbGxpc3RfZW1wdHkoJmRldl9wcml2LT5tbS5mcmVlX2xpc3QpKTsKIAlHRU1fQlVHX09O
KGF0b21pY19yZWFkKCZkZXZfcHJpdi0+bW0uZnJlZV9jb3VudCkpOwogCWRybV9XQVJOX09OKCZk
ZXZfcHJpdi0+ZHJtLCBkZXZfcHJpdi0+bW0uc2hyaW5rX2NvdW50KTsKKwlkcm1fV0FSTl9PTigm
ZGV2X3ByaXYtPmRybSwgIXhhX2VtcHR5KCZkZXZfcHJpdi0+Y2xpZW50cy54YXJyYXkpKTsKKwl4
YV9kZXN0cm95KCZkZXZfcHJpdi0+Y2xpZW50cy54YXJyYXkpOwogfQogCiBpbnQgaTkxNV9nZW1f
ZnJlZXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKQEAgLTEyODgsNiArMTI5
MCw4IEBAIHZvaWQgaTkxNV9nZW1fcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUpCiAJc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9w
cml2ID0gZmlsZS0+ZHJpdmVyX3ByaXY7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdDsK
IAorCWk5MTVfZHJtX2NsaWVudF9jbG9zZShmaWxlX3ByaXYtPmNsaWVudCk7CisKIAkvKiBDbGVh
biB1cCBvdXIgcmVxdWVzdCBsaXN0IHdoZW4gdGhlIGNsaWVudCBpcyBnb2luZyBhd2F5LCBzbyB0
aGF0CiAJICogbGF0ZXIgcmV0aXJlX3JlcXVlc3RzIHdvbid0IGRlcmVmZXJlbmNlIG91ciBzb29u
LXRvLWJlLWdvbmUKIAkgKiBmaWxlX3ByaXYuCkBAIC0xMzAxLDE3ICsxMzA1LDI1IEBAIHZvaWQg
aTkxNV9nZW1fcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGUpCiBpbnQgaTkxNV9nZW1fb3BlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
c3RydWN0IGRybV9maWxlICpmaWxlKQogewogCXN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUg
KmZpbGVfcHJpdjsKLQlpbnQgcmV0OworCXN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudDsK
KwlpbnQgcmV0ID0gLUVOT01FTTsKIAogCURSTV9ERUJVRygiXG4iKTsKIAogCWZpbGVfcHJpdiA9
IGt6YWxsb2Moc2l6ZW9mKCpmaWxlX3ByaXYpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIWZpbGVfcHJp
dikKLQkJcmV0dXJuIC1FTk9NRU07CisJCWdvdG8gZXJyX2FsbG9jOworCisJY2xpZW50ID0gaTkx
NV9kcm1fY2xpZW50X2FkZCgmaTkxNS0+Y2xpZW50cywgY3VycmVudCk7CisJaWYgKElTX0VSUihj
bGllbnQpKSB7CisJCXJldCA9IFBUUl9FUlIoY2xpZW50KTsKKwkJZ290byBlcnJfY2xpZW50Owor
CX0KIAogCWZpbGUtPmRyaXZlcl9wcml2ID0gZmlsZV9wcml2OwogCWZpbGVfcHJpdi0+ZGV2X3By
aXYgPSBpOTE1OwogCWZpbGVfcHJpdi0+ZmlsZSA9IGZpbGU7CisJZmlsZV9wcml2LT5jbGllbnQg
PSBjbGllbnQ7CiAKIAlzcGluX2xvY2tfaW5pdCgmZmlsZV9wcml2LT5tbS5sb2NrKTsKIAlJTklU
X0xJU1RfSEVBRCgmZmlsZV9wcml2LT5tbS5yZXF1ZXN0X2xpc3QpOwpAQCAtMTMyMSw4ICsxMzMz
LDE1IEBAIGludCBpOTE1X2dlbV9vcGVuKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiAKIAlyZXQgPSBpOTE1X2dlbV9jb250ZXh0X29wZW4oaTkx
NSwgZmlsZSk7CiAJaWYgKHJldCkKLQkJa2ZyZWUoZmlsZV9wcml2KTsKKwkJZ290byBlcnJfY29u
dGV4dDsKKworCXJldHVybiAwOwogCitlcnJfY29udGV4dDoKKwlpOTE1X2RybV9jbGllbnRfY2xv
c2UoY2xpZW50KTsKK2Vycl9jbGllbnQ6CisJa2ZyZWUoZmlsZV9wcml2KTsKK2Vycl9hbGxvYzoK
IAlyZXR1cm4gcmV0OwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3N5c2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKaW5kZXggNDVkMzJl
ZjQyNzg3Li5iN2Q0YTZkMmRkNWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3lzZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKQEAgLTU2
MCw2ICs1NjAsMTEgQEAgdm9pZCBpOTE1X3NldHVwX3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gZGV2X3ByaXYtPmRybS5wcmlt
YXJ5LT5rZGV2OwogCWludCByZXQ7CiAKKwlkZXZfcHJpdi0+Y2xpZW50cy5yb290ID0KKwkJa29i
amVjdF9jcmVhdGVfYW5kX2FkZCgiY2xpZW50cyIsICZrZGV2LT5rb2JqKTsKKwlpZiAoIWRldl9w
cml2LT5jbGllbnRzLnJvb3QpCisJCURSTV9FUlJPUigiUGVyLWNsaWVudCBzeXNmcyBzZXR1cCBm
YWlsZWRcbiIpOworCiAjaWZkZWYgQ09ORklHX1BNCiAJaWYgKEhBU19SQzYoZGV2X3ByaXYpKSB7
CiAJCXJldCA9IHN5c2ZzX21lcmdlX2dyb3VwKCZrZGV2LT5rb2JqLApAQCAtNjI3LDQgKzYzMiw3
IEBAIHZvaWQgaTkxNV90ZWFyZG93bl9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJc3lzZnNfdW5tZXJnZV9ncm91cCgma2Rldi0+a29iaiwgJnJjNl9hdHRyX2dyb3Vw
KTsKIAlzeXNmc191bm1lcmdlX2dyb3VwKCZrZGV2LT5rb2JqLCAmcmM2cF9hdHRyX2dyb3VwKTsK
ICNlbmRpZgorCisJaWYgKGRldl9wcml2LT5jbGllbnRzLnJvb3QpCisJCWtvYmplY3RfcHV0KGRl
dl9wcml2LT5jbGllbnRzLnJvb3QpOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
