Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A6A10791
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2E1890D3;
	Wed,  1 May 2019 11:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A191890D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 11:45:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16415742-1500050 
 for multiple; Wed, 01 May 2019 12:45:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 12:45:39 +0100
Message-Id: <20190501114541.10077-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Pass i915_sched_node around
 internally
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

VG8gc2ltcGxpZnkgdGhlIG5leHQgcGF0Y2gsIHVwZGF0ZSBidW1wX3ByaW9yaXR5IGFuZCBzY2hl
ZHVsZSB0byBhY2NlcHQKdGhlIGludGVybmFsIGk5MTVfc2NoZWRfbmRvZSBkaXJlY3RseSBhbmQg
bm90IGV4cGVjdCBhIHJlcXVlc3QgcG9pbnRlci4KCmFkZC9yZW1vdmU6IDAvMCBncm93L3Nocmlu
azogMi8xIHVwL2Rvd246IDgvLTE1ICgtNykKRnVuY3Rpb24gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgb2xkICAgICBuZXcgICBkZWx0YQppOTE1X3NjaGVkdWxlX2J1bXBfcHJp
b3JpdHkgICAgICAgICAgICAgICAgICAxMDkgICAgIDExMyAgICAgICs0Cmk5MTVfc2NoZWR1bGUg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA1MCAgICAgIDU0ICAgICAgKzQKX19pOTE1
X3NjaGVkdWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOTIyICAgICA5MDcgICAgIC0x
NQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyB8IDMzICsrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE1
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2No
ZWR1bGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCmluZGV4IDgz
NGIxMGFkNGNlMS4uMDVlYjUwNTU4YWJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3NjaGVkdWxlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1
bGVyLmMKQEAgLTE3OSw3ICsxNzksNyBAQCBzdGF0aWMgYm9vbCBraWNrX3Rhc2tsZXQoY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBpbnQgcHJpbykKIAlyZXR1cm4gaTkxNV9z
Y2hlZHVsZXJfbmVlZF9wcmVlbXB0KHByaW8sIHJxX3ByaW8oaW5mbGlnaHQpKTsKIH0KIAotc3Rh
dGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAorc3RhdGlj
IHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKnJxLAogCQkJICAg
IGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpCiB7CiAJc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lOwpAQCAtMTkzLDEzICsxOTMsMTMgQEAgc3RhdGljIHZvaWQgX19pOTE1
X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQo
JnNjaGVkdWxlX2xvY2spOwogCUdFTV9CVUdfT04ocHJpbyA9PSBJOTE1X1BSSU9SSVRZX0lOVkFM
SUQpOwogCi0JaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKQorCWlmIChwcmlvIDw9IFJF
QURfT05DRShycS0+YXR0ci5wcmlvcml0eSkpCiAJCXJldHVybjsKIAotCWlmIChwcmlvIDw9IFJF
QURfT05DRShycS0+c2NoZWQuYXR0ci5wcmlvcml0eSkpCisJaWYgKG5vZGVfc2lnbmFsZWQocnEp
KQogCQlyZXR1cm47CiAKLQlzdGFjay5zaWduYWxlciA9ICZycS0+c2NoZWQ7CisJc3RhY2suc2ln
bmFsZXIgPSBycTsKIAlsaXN0X2FkZCgmc3RhY2suZGZzX2xpbmssICZkZnMpOwogCiAJLyoKQEAg
LTI1MCw5ICsyNTAsOSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEsCiAJICogZXhlY2xpc3RzX3N1Ym1pdF9yZXF1ZXN0KCkpLCB3ZSBjYW4gc2V0
IG91ciBvd24gcHJpb3JpdHkgYW5kIHNraXAKIAkgKiBhY3F1aXJpbmcgdGhlIGVuZ2luZSBsb2Nr
cy4KIAkgKi8KLQlpZiAocnEtPnNjaGVkLmF0dHIucHJpb3JpdHkgPT0gSTkxNV9QUklPUklUWV9J
TlZBTElEKSB7Ci0JCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnJxLT5zY2hlZC5saW5rKSk7Ci0J
CXJxLT5zY2hlZC5hdHRyID0gKmF0dHI7CisJaWYgKHJxLT5hdHRyLnByaW9yaXR5ID09IEk5MTVf
UFJJT1JJVFlfSU5WQUxJRCkgeworCQlHRU1fQlVHX09OKCFsaXN0X2VtcHR5KCZycS0+bGluaykp
OworCQlycS0+YXR0ciA9ICphdHRyOwogCiAJCWlmIChzdGFjay5kZnNfbGluay5uZXh0ID09IHN0
YWNrLmRmc19saW5rLnByZXYpCiAJCQlyZXR1cm47CkBAIC0yNjEsNyArMjYxLDcgQEAgc3RhdGlj
IHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCX0KIAogCW1l
bXNldCgmY2FjaGUsIDAsIHNpemVvZihjYWNoZSkpOwotCWVuZ2luZSA9IHJxLT5lbmdpbmU7CisJ
ZW5naW5lID0gbm9kZV90b19yZXF1ZXN0KHJxKS0+ZW5naW5lOwogCXNwaW5fbG9jaygmZW5naW5l
LT50aW1lbGluZS5sb2NrKTsKIAogCS8qIEZpZm8gYW5kIGRlcHRoLWZpcnN0IHJlcGxhY2VtZW50
IGVuc3VyZSBvdXIgZGVwcyBleGVjdXRlIGJlZm9yZSB1cyAqLwpAQCAtMzE5LDEzICszMTksMjAg
QEAgc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAog
dm9pZCBpOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBjb25zdCBzdHJ1Y3Qg
aTkxNV9zY2hlZF9hdHRyICphdHRyKQogewogCXNwaW5fbG9ja19pcnEoJnNjaGVkdWxlX2xvY2sp
OwotCV9faTkxNV9zY2hlZHVsZShycSwgYXR0cik7CisJX19pOTE1X3NjaGVkdWxlKCZycS0+c2No
ZWQsIGF0dHIpOwogCXNwaW5fdW5sb2NrX2lycSgmc2NoZWR1bGVfbG9jayk7CiB9CiAKK3N0YXRp
YyB2b2lkIF9fYnVtcF9wcmlvcml0eShzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlICpub2RlLCB1bnNp
Z25lZCBpbnQgYnVtcCkKK3sKKwlzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyIGF0dHIgPSBub2RlLT5h
dHRyOworCisJYXR0ci5wcmlvcml0eSB8PSBidW1wOworCV9faTkxNV9zY2hlZHVsZShub2RlLCAm
YXR0cik7Cit9CisKIHZvaWQgaTkxNV9zY2hlZHVsZV9idW1wX3ByaW9yaXR5KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLCB1bnNpZ25lZCBpbnQgYnVtcCkKIHsKLQlzdHJ1Y3QgaTkxNV9zY2hlZF9h
dHRyIGF0dHI7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKIAogCUdFTV9CVUdfT04oYnVtcCAmIH5J
OTE1X1BSSU9SSVRZX01BU0spOwpAQCAtMzM0LDExICszNDEsNyBAQCB2b2lkIGk5MTVfc2NoZWR1
bGVfYnVtcF9wcmlvcml0eShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdW5zaWduZWQgaW50IGJ1
bXApCiAJCXJldHVybjsKIAogCXNwaW5fbG9ja19pcnFzYXZlKCZzY2hlZHVsZV9sb2NrLCBmbGFn
cyk7Ci0KLQlhdHRyID0gcnEtPnNjaGVkLmF0dHI7Ci0JYXR0ci5wcmlvcml0eSB8PSBidW1wOwot
CV9faTkxNV9zY2hlZHVsZShycSwgJmF0dHIpOwotCisJX19idW1wX3ByaW9yaXR5KCZycS0+c2No
ZWQsIGJ1bXApOwogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnNjaGVkdWxlX2xvY2ssIGZsYWdz
KTsKIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
