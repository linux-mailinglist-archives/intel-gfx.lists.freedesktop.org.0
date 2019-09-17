Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA35B5112
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 17:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530AC6ECA3;
	Tue, 17 Sep 2019 15:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F0F6ECA3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 15:09:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18521261-1500050 
 for multiple; Tue, 17 Sep 2019 16:09:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 16:09:12 +0100
Message-Id: <20190917150912.11215-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190917074312.12290-1-chris@chris-wilson.co.uk>
References: <20190917074312.12290-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Lock signaler timeline while
 navigating
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

QXMgd2UgbmVlZCB0byB0YWtlIGEgd2FsayBiYWNrIGFsb25nIHRoZSBzaWduYWxlciB0aW1lbGlu
ZSB0byBmaW5kIHRoZQpmZW5jZSBiZWZvcmUgdXBvbiB3aGljaCB3ZSB3YW50IHRvIHdhaXQsIHdl
IG5lZWQgdG8gbG9jayB0aGF0IHRpbWVsaW5lCnRvIHByZXZlbnQgaXQgYmVpbmcgbW9kaWZpZWQg
YXMgd2Ugd2Fsay4gU2ltaWxhcmx5LCB3ZSBhbHNvIG5lZWQgdG8KYWNxdWlyZSBhIHJlZmVyZW5j
ZSB0byB0aGUgZWFybGllciBmZW5jZSB3aGlsZSBpdCBzdGlsbCBleGlzdHMhCgpUaG91Z2ggd2Ug
bGFjayB0aGUgY29ycmVjdCBsb2NraW5nIHRvZGF5LCB3ZSBhcmUgc2F2ZWQgYnkgdGhlCm92ZXJh
cmNoaW5nIHN0cnVjdF9tdXRleCAtLSBidXQgdGhhdCBwcm90ZWN0aW9uIGlzIGJlaW5nIHJlbW92
ZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Ci0t
LQpBZGQgdGhlIGxvY2tkZXAgYXNzZXJ0IGFuZCBHRU1fQlVHX09OIHRvIG5vdGUgdGhlIG92ZXJs
YXBwaW5nIHRpbWVsaW5lcy4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3Qu
YyB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjUg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCmluZGV4IGYxMjM1ODE1MDA5Ny4uMzk2NmIzMzBiNWRlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYwpAQCAtNzY3LDE2ICs3NjcsMzUgQEAgaTkxNV9yZXF1ZXN0X2NyZWF0ZShz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiBzdGF0aWMgaW50CiBpOTE1X3JlcXVlc3RfYXdhaXRf
c3RhcnQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnNpZ25h
bCkKIHsKLQlpZiAobGlzdF9pc19maXJzdCgmc2lnbmFsLT5saW5rLCAmc2lnbmFsLT50aW1lbGlu
ZS0+cmVxdWVzdHMpKQorCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwgPSBzaWduYWwtPnRpbWVs
aW5lOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCWludCBlcnI7CisKKwlsb2NrZGVwX2Fz
c2VydF9oZWxkKCZycS0+dGltZWxpbmUtPm11dGV4KTsKKwlHRU1fQlVHX09OKHJxLT50aW1lbGlu
ZSA9PSBzaWduYWwtPnRpbWVsaW5lKTsKKworCWlmIChsaXN0X2lzX2ZpcnN0KCZzaWduYWwtPmxp
bmssICZ0bC0+cmVxdWVzdHMpKQogCQlyZXR1cm4gMDsKIAotCXNpZ25hbCA9IGxpc3RfcHJldl9l
bnRyeShzaWduYWwsIGxpbmspOwotCWlmIChpbnRlbF90aW1lbGluZV9zeW5jX2lzX2xhdGVyKHJx
LT50aW1lbGluZSwgJnNpZ25hbC0+ZmVuY2UpKQorCWlmIChtdXRleF9sb2NrX2ludGVycnVwdGli
bGVfbmVzdGVkKCZ0bC0+bXV0ZXgsIFNJTkdMRV9ERVBUSF9ORVNUSU5HKSkKKwkJcmV0dXJuIC1F
SU5UUjsKKworCWZlbmNlID0gTlVMTDsKKwlpZiAoIWxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+bGlu
aywgJnRsLT5yZXF1ZXN0cykpCisJCWZlbmNlID0gZG1hX2ZlbmNlX2dldCgmbGlzdF9wcmV2X2Vu
dHJ5KHNpZ25hbCwgbGluayktPmZlbmNlKTsKKworCW11dGV4X3VubG9jaygmdGwtPm11dGV4KTsK
KwlpZiAoIWZlbmNlKQogCQlyZXR1cm4gMDsKIAotCXJldHVybiBpOTE1X3N3X2ZlbmNlX2F3YWl0
X2RtYV9mZW5jZSgmcnEtPnN1Ym1pdCwKLQkJCQkJICAgICAmc2lnbmFsLT5mZW5jZSwgMCwKLQkJ
CQkJICAgICBJOTE1X0ZFTkNFX0dGUCk7CisJZXJyID0gMDsKKwlpZiAoIWludGVsX3RpbWVsaW5l
X3N5bmNfaXNfbGF0ZXIocnEtPnRpbWVsaW5lLCBmZW5jZSkpCisJCWVyciA9IGk5MTVfc3dfZmVu
Y2VfYXdhaXRfZG1hX2ZlbmNlKCZycS0+c3VibWl0LAorCQkJCQkJICAgIGZlbmNlLCAwLAorCQkJ
CQkJICAgIEk5MTVfRkVOQ0VfR0ZQKTsKKwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKworCXJldHVy
biBlcnI7CiB9CiAKIHN0YXRpYyBpbnRlbF9lbmdpbmVfbWFza190Ci0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
