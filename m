Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38D612CED
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 13:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 080318958E;
	Fri,  3 May 2019 11:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA3D89CE2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 11:52:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16440753-1500050 
 for multiple; Fri, 03 May 2019 12:52:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 12:52:24 +0100
Message-Id: <20190503115225.30831-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503115225.30831-1-chris@chris-wilson.co.uk>
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/13] drm/i915: Bump signaler priority on
 adding a waiter
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

VGhlIGhhbmRsaW5nIG9mIHRoZSBuby1wcmVlbXB0aW9uIHByaW9yaXR5IGxldmVsIGltcG9zZXMg
dGhlIHJlc3RyaWN0aW9uCnRoYXQgd2UgbmVlZCB0byBtYWludGFpbiB0aGUgaW1wbGllZCBvcmRl
cmluZyBldmVuIHRob3VnaCBwcmVlbXB0aW9uIGlzCmRpc2FibGVkLiBPdGhlcndpc2Ugd2UgbWF5
IGVuZCB1cCB3aXRoIGFuIEFCLUJBIGRlYWRsb2NrIGFjcm9zcyBtdWx0aXBsZQplbmdpbmUgZHVl
IHRvIGEgcmVhbCBwcmVlbXB0aW9uIGV2ZW50IHJlb3JkZXJpbmcgdGhlIG5vLXByZWVtcHRpb24K
V0FJVHMuIFRvIHJlc29sdmUgdGhpcyBpc3N1ZSB3ZSBjdXJyZW50bHkgcHJvbW90ZSBhbGwgcmVx
dWVzdHMgdG8gV0FJVApvbiB1bnN1Ym1pc3Npb24sIGhvd2V2ZXIgdGhpcyBpbnRlcmZlcmVzIHdp
dGggdGhlIHRpbWVzbGljaW5nCnJlcXVpcmVtZW50IHRoYXQgd2UgZG8gbm90IGFwcGx5IGFueSBp
bXBsaWNpdCBwcm9tb3Rpb24gdGhhdCB3aWxsIGRlZmVhdAp0aGUgcm91bmQtcm9iaW4gdGltZXNs
aWNlIGxpc3QuIChJZiB3ZSBhdXRvbWF0aWNhbGx5IHByb21vdGUgdGhlIGFjdGl2ZQpyZXF1ZXN0
IGl0IHdpbGwgZ28gYmFjayB0byB0aGUgaGVhZCBvZiB0aGUgcXVldWUgYW5kIG5vdCB0aGUgdGFp
bCEpCgpTbyB3ZSBuZWVkIGltcGxpY2l0IHByb21vdGlvbiB0byBwcmV2ZW50IHJlb3JkZXJpbmcg
YXJvdW5kIHNlbWFwaG9yZXMKd2hlcmUgd2UgYXJlIG5vdCBhbGxvd2VkIHRvIHByZWVtcHQsIGFu
ZCB3ZSBtdXN0IGF2b2lkIGltcGxpY2l0CnByb21vdGlvbiBvbiB1bnN1Ym1pc3Npb24uIFNvIGlu
c3RlYWQgb2YgYXQgdW5zdWJtaXQsIGlmIHdlIGFwcGx5IHRoYXQKaW1wbGljaXQgcHJvbW90aW9u
IG9uIGFkZGluZyB0aGUgZGVwZW5kZW5jeSwgd2UgYXZvaWQgdGhlIHNlbWFwaG9yZQpkZWFkbG9j
ayBhbmQgd2UgYWxzbyByZWR1Y2UgdGhlIGdhaW5zIG1hZGUgYnkgdGhlIHByb21vdGlvbiBmb3Ig
dXNlcgpzcGFjZSB3YWl0aW5nLiBGdXJ0aGVybW9yZSwgYnkga2VlcGluZyB0aGUgZWFybGllciBk
ZXBlbmRlbmNpZXMgYXQgYQpoaWdoZXIgbGV2ZWwsIHdlIHJlZHVjZSB0aGUgc2VhcmNoIHNwYWNl
IGZvciB0aW1lc2xpY2luZyB3aXRob3V0CmFsdGVyaW5nIHJ1bnRpbWUgc2NoZWR1bGluZyB0b28g
YmFkbHkgKG5vIGRlcGVuZGVuY2llcyBhdCBhbGwgd2lsbCBiZQphc3NpZ25lZCBhIGhpZ2hlciBw
cmlvcml0eSBmb3IgcnJ1bCkuCgp2MjogTGltaXQgdGhlIGJ1bXAgdG8gZXh0ZXJuYWwgZWRnZXMg
KGFzIG9yaWdpbmFsbHkgaW50ZW5kZWQpIGkuZS4KYmV0d2VlbiBjb250ZXh0cyBhbmQgb3V0IHRv
IHRoZSB1c2VyLgoKVGVzdGNhc2U6IGlndC9nZW1fY29uY3VycmVudF9ibGl0ClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jICAgICAgfCAxMiArKysrKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgICAgfCAgOSAtLS0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgICAgICAgfCAxMSArKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlwZXMuaCB8ICAzICsr
LQogNCBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IDRiMDQyODkzZGMwZS4uNWIz
ZDhlMzNmMWNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9s
cmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtOTgs
MTIgKzk4LDE0IEBAIHN0YXRpYyBpbnQgbGl2ZV9idXN5d2FpdF9wcmVlbXB0KHZvaWQgKmFyZykK
IAljdHhfaGkgPSBrZXJuZWxfY29udGV4dChpOTE1KTsKIAlpZiAoIWN0eF9oaSkKIAkJZ290byBl
cnJfdW5sb2NrOwotCWN0eF9oaS0+c2NoZWQucHJpb3JpdHkgPSBJTlRfTUFYOworCWN0eF9oaS0+
c2NoZWQucHJpb3JpdHkgPQorCQlJOTE1X1VTRVJfUFJJT1JJVFkoSTkxNV9DT05URVhUX01BWF9V
U0VSX1BSSU9SSVRZKTsKIAogCWN0eF9sbyA9IGtlcm5lbF9jb250ZXh0KGk5MTUpOwogCWlmICgh
Y3R4X2xvKQogCQlnb3RvIGVycl9jdHhfaGk7Ci0JY3R4X2xvLT5zY2hlZC5wcmlvcml0eSA9IElO
VF9NSU47CisJY3R4X2xvLT5zY2hlZC5wcmlvcml0eSA9CisJCUk5MTVfVVNFUl9QUklPUklUWShJ
OTE1X0NPTlRFWFRfTUlOX1VTRVJfUFJJT1JJVFkpOwogCiAJb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBQQUdFX1NJWkUpOwogCWlmIChJU19FUlIob2JqKSkgewpA
QCAtOTU4LDEyICs5NjAsMTQgQEAgc3RhdGljIGludCBsaXZlX3ByZWVtcHRfaGFuZyh2b2lkICph
cmcpCiAJY3R4X2hpID0ga2VybmVsX2NvbnRleHQoaTkxNSk7CiAJaWYgKCFjdHhfaGkpCiAJCWdv
dG8gZXJyX3NwaW5fbG87Ci0JY3R4X2hpLT5zY2hlZC5wcmlvcml0eSA9IEk5MTVfQ09OVEVYVF9N
QVhfVVNFUl9QUklPUklUWTsKKwljdHhfaGktPnNjaGVkLnByaW9yaXR5ID0KKwkJSTkxNV9VU0VS
X1BSSU9SSVRZKEk5MTVfQ09OVEVYVF9NQVhfVVNFUl9QUklPUklUWSk7CiAKIAljdHhfbG8gPSBr
ZXJuZWxfY29udGV4dChpOTE1KTsKIAlpZiAoIWN0eF9sbykKIAkJZ290byBlcnJfY3R4X2hpOwot
CWN0eF9sby0+c2NoZWQucHJpb3JpdHkgPSBJOTE1X0NPTlRFWFRfTUlOX1VTRVJfUFJJT1JJVFk7
CisJY3R4X2xvLT5zY2hlZC5wcmlvcml0eSA9CisJCUk5MTVfVVNFUl9QUklPUklUWShJOTE1X0NP
TlRFWFRfTUlOX1VTRVJfUFJJT1JJVFkpOwogCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkx
NSwgaWQpIHsKIAkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jCmluZGV4IDhjYjNlZDU1MzFlMy4uMDY1ZGExYmNiYjRjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtNDY4LDE1ICs0NjgsNiBAQCB2b2lkIF9faTkxNV9yZXF1
ZXN0X3Vuc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJLyogV2UgbWF5IGJl
IHJlY3Vyc2luZyBmcm9tIHRoZSBzaWduYWwgY2FsbGJhY2sgb2YgYW5vdGhlciBpOTE1IGZlbmNl
ICovCiAJc3Bpbl9sb2NrX25lc3RlZCgmcmVxdWVzdC0+bG9jaywgU0lOR0xFX0RFUFRIX05FU1RJ
TkcpOwogCi0JLyoKLQkgKiBBcyB3ZSBkbyBub3QgYWxsb3cgV0FJVCB0byBwcmVlbXB0IGluZmxp
Z2h0IHJlcXVlc3RzLAotCSAqIG9uY2Ugd2UgaGF2ZSBleGVjdXRlZCBhIHJlcXVlc3QsIGFsb25n
IHdpdGggdHJpZ2dlcmluZwotCSAqIGFueSBleGVjdXRpb24gY2FsbGJhY2tzLCB3ZSBtdXN0IHBy
ZXNlcnZlIGl0cyBvcmRlcmluZwotCSAqIHdpdGhpbiB0aGUgbm9uLXByZWVtcHRpYmxlIEZJRk8u
Ci0JICovCi0JQlVJTERfQlVHX09OKF9fTk9fUFJFRU1QVElPTiAmIH5JOTE1X1BSSU9SSVRZX01B
U0spOyAvKiBvbmx5IGludGVybmFsICovCi0JcmVxdWVzdC0+c2NoZWQuYXR0ci5wcmlvcml0eSB8
PSBfX05PX1BSRUVNUFRJT047Ci0KIAlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxF
X1NJR05BTF9CSVQsICZyZXF1ZXN0LT5mZW5jZS5mbGFncykpCiAJCWk5MTVfcmVxdWVzdF9jYW5j
ZWxfYnJlYWRjcnVtYihyZXF1ZXN0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9zY2hlZHVsZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVy
LmMKaW5kZXggMzgwY2I3MzQzYTEwLi5mZjBjYTU3MThmOTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zY2hlZHVsZXIuYwpAQCAtMzkxLDYgKzM5MSwxNiBAQCBib29sIF9faTkxNV9zY2hlZF9u
b2RlX2FkZF9kZXBlbmRlbmN5KHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKm5vZGUsCiAJCSAgICAh
bm9kZV9zdGFydGVkKHNpZ25hbCkpCiAJCQlub2RlLT5mbGFncyB8PSBJOTE1X1NDSEVEX0hBU19T
RU1BUEhPUkVfQ0hBSU47CiAKKwkJLyoKKwkJICogQXMgd2UgZG8gbm90IGFsbG93IFdBSVQgdG8g
cHJlZW1wdCBpbmZsaWdodCByZXF1ZXN0cywKKwkJICogb25jZSB3ZSBoYXZlIGV4ZWN1dGVkIGEg
cmVxdWVzdCwgYWxvbmcgd2l0aCB0cmlnZ2VyaW5nCisJCSAqIGFueSBleGVjdXRpb24gY2FsbGJh
Y2tzLCB3ZSBtdXN0IHByZXNlcnZlIGl0cyBvcmRlcmluZworCQkgKiB3aXRoaW4gdGhlIG5vbi1w
cmVlbXB0aWJsZSBGSUZPLgorCQkgKi8KKwkJQlVJTERfQlVHX09OKF9fTk9fUFJFRU1QVElPTiAm
IH5JOTE1X1BSSU9SSVRZX01BU0spOworCQlpZiAoZmxhZ3MgJiBJOTE1X0RFUEVOREVOQ1lfRVhU
RVJOQUwpCisJCQlfX2J1bXBfcHJpb3JpdHkoc2lnbmFsLCBfX05PX1BSRUVNUFRJT04pOworCiAJ
CXJldCA9IHRydWU7CiAJfQogCkBAIC00MDksNiArNDE5LDcgQEAgaW50IGk5MTVfc2NoZWRfbm9k
ZV9hZGRfZGVwZW5kZW5jeShzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlICpub2RlLAogCQlyZXR1cm4g
LUVOT01FTTsKIAogCWlmICghX19pOTE1X3NjaGVkX25vZGVfYWRkX2RlcGVuZGVuY3kobm9kZSwg
c2lnbmFsLCBkZXAsCisJCQkJCSAgICAgIEk5MTVfREVQRU5ERU5DWV9FWFRFUk5BTCB8CiAJCQkJ
CSAgICAgIEk5MTVfREVQRU5ERU5DWV9BTExPQykpCiAJCWk5MTVfZGVwZW5kZW5jeV9mcmVlKGRl
cCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyX3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlcl90eXBlcy5oCmluZGV4
IDE2NmE0NTc4ODRiMi4uM2UzMDk2MzFiZDBiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3NjaGVkdWxlcl90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc2NoZWR1bGVyX3R5cGVzLmgKQEAgLTY2LDcgKzY2LDggQEAgc3RydWN0IGk5MTVfZGVwZW5k
ZW5jeSB7CiAJc3RydWN0IGxpc3RfaGVhZCB3YWl0X2xpbms7CiAJc3RydWN0IGxpc3RfaGVhZCBk
ZnNfbGluazsKIAl1bnNpZ25lZCBsb25nIGZsYWdzOwotI2RlZmluZSBJOTE1X0RFUEVOREVOQ1lf
QUxMT0MgQklUKDApCisjZGVmaW5lIEk5MTVfREVQRU5ERU5DWV9BTExPQwkJQklUKDApCisjZGVm
aW5lIEk5MTVfREVQRU5ERU5DWV9FWFRFUk5BTAlCSVQoMSkKIH07CiAKICNlbmRpZiAvKiBfSTkx
NV9TQ0hFRFVMRVJfVFlQRVNfSF8gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
