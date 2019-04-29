Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2D3E9A0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 20:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A0789308;
	Mon, 29 Apr 2019 18:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6DFC89308
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 18:00:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16399166-1500050 
 for multiple; Mon, 29 Apr 2019 19:00:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 19:00:18 +0100
Message-Id: <20190429180020.27274-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429180020.27274-1-chris@chris-wilson.co.uk>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Delay semaphore submission until
 the start of the signaler
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

Q3VycmVudGx5IHdlIHN1Ym1pdCB0aGUgc2VtYXBob3JlIGJ1c3l3YWl0IGFzIHNvb24gYXMgdGhl
IHNpZ25hbGVyIGlzCnN1Ym1pdHRlZCB0byBIVy4gSG93ZXZlciwgd2UgbWF5IHN1Ym1pdCB0aGUg
c2lnbmFsZXIgYXMgdGhlIHRhaWwgb2YgYQpiYXRjaCBvZiByZXF1ZXN0cywgYW5kIGV2ZW4gbm90
IGFzIHRoZSBmaXJzdCBjb250ZXh0IGluIHRoZSBIVyBsaXN0LAppLmUuIHRoZSBidXN5d2FpdCBt
YXkgc3RhcnQgc3Bpbm5pbmcgZmFyIGluIGFkdmFuY2Ugb2YgdGhlIHNpZ25hbGVyIGV2ZW4Kc3Rh
cnRpbmcuCgpJZiB3ZSB3YWl0IHVudGlsIHRoZSByZXF1ZXN0IGJlZm9yZSB0aGUgc2lnbmFsZXIg
aXMgY29tcGxldGVkIGJlZm9yZQpzdWJtaXR0aW5nIHRoZSBidXN5d2FpdCwgd2UgcHJldmVudCB0
aGUgYnVzeXdhaXQgZnJvbSBzdGFydGluZyB0b28KZWFybHksIGlmIHRoZSBzaWduYWxlciBpcyBu
b3QgZmlyc3QgaW4gc3VibWlzc2lvbiBwb3J0LgoKVG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIHRo
ZSBzaWduYWxlciBpcyBhdCB0aGUgc3RhcnQgb2YgdGhlIHNlY29uZCAob3IKbGF0ZXIpIHN1Ym1p
c3Npb24gcG9ydCwgd2Ugd2lsbCBuZWVkIHRvIGRlbGF5IHRoZSBleGVjdXRpb24gY2FsbGJhY2sK
dW50aWwgd2Uga25vdyB0aGUgY29udGV4dCBpcyBwcm9tb3RlZCB0byBwb3J0MC4gQSBjaGFsbGVu
Z2UgZm9yIGxhdGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMTkgKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IDJlMjJkYTY2YTU2Yy4uOGNiM2VkNTUzMWUzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtNzcwLDYgKzc3MCwyMSBAQCBpOTE1X3Jl
cXVlc3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAlyZXR1cm4gcnE7CiB9CiAK
K3N0YXRpYyBpbnQKK2k5MTVfcmVxdWVzdF9hd2FpdF9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSwgc3RydWN0IGk5MTVfcmVxdWVzdCAqc2lnbmFsKQoreworCWlmIChsaXN0X2lzX2ZpcnN0
KCZzaWduYWwtPnJpbmdfbGluaywgJnNpZ25hbC0+cmluZy0+cmVxdWVzdF9saXN0KSkKKwkJcmV0
dXJuIDA7CisKKwlzaWduYWwgPSBsaXN0X3ByZXZfZW50cnkoc2lnbmFsLCByaW5nX2xpbmspOwor
CWlmIChpOTE1X3RpbWVsaW5lX3N5bmNfaXNfbGF0ZXIocnEtPnRpbWVsaW5lLCAmc2lnbmFsLT5m
ZW5jZSkpCisJCXJldHVybiAwOworCisJcmV0dXJuIGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1hX2Zl
bmNlKCZycS0+c3VibWl0LAorCQkJCQkgICAgICZzaWduYWwtPmZlbmNlLCAwLAorCQkJCQkgICAg
IEk5MTVfRkVOQ0VfR0ZQKTsKK30KKwogc3RhdGljIGludAogZW1pdF9zZW1hcGhvcmVfd2FpdChz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0bywKIAkJICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKmZyb20s
CkBAIC03ODgsNiArODAzLDEwIEBAIGVtaXRfc2VtYXBob3JlX3dhaXQoc3RydWN0IGk5MTVfcmVx
dWVzdCAqdG8sCiAJCQkJCQkgICAgICZmcm9tLT5mZW5jZSwgMCwKIAkJCQkJCSAgICAgSTkxNV9G
RU5DRV9HRlApOwogCisJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X3N0YXJ0KHRvLCBmcm9tKTsK
KwlpZiAoZXJyIDwgMCkKKwkJcmV0dXJuIGVycjsKKwogCWVyciA9IGk5MTVfc3dfZmVuY2VfYXdh
aXRfZG1hX2ZlbmNlKCZ0by0+c2VtYXBob3JlLAogCQkJCQkgICAgJmZyb20tPmZlbmNlLCAwLAog
CQkJCQkgICAgSTkxNV9GRU5DRV9HRlApOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
