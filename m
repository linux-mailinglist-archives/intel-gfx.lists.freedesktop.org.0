Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231922C3E19
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0446E92C;
	Wed, 25 Nov 2020 10:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621D26E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:29 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:45 +0100
Message-Id: <20201125104011.606641-38-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 37/63] drm/i915: Add ww locking to dma-buf
 ops.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dm1hcCBpcyB1c2luZyBwaW5fcGFnZXMsIGJ1dCBuZWVkcyB0byB1c2Ugd3cgbG9ja2luZywKYWRk
IHBpbl9wYWdlc191bmxvY2tlZCB0byBjb3JyZWN0bHkgbG9jayB0aGUgbWFwcGluZy4KCkFsc28g
YWRkIHd3IGxvY2tpbmcgdG8gYmVnaW4vZW5kIGNwdSBhY2Nlc3MuCgpTaWduZWQtb2ZmLWJ5OiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyB8IDYw
ICsrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCsp
LCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1h
YnVmLmMKaW5kZXggMzZlM2MyNzY1ZjRjLi5jNGIwMWU4MTk3ODYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTgyLDcgKzgyLDcgQEAgc3RhdGljIGlu
dCBpOTE1X2dlbV9kbWFidWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGRt
YV9idWZfbWFwICptYXAKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1
Zl90b19vYmooZG1hX2J1Zik7CiAJdm9pZCAqdmFkZHI7CiAKLQl2YWRkciA9IGk5MTVfZ2VtX29i
amVjdF9waW5fbWFwKG9iaiwgSTkxNV9NQVBfV0IpOworCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0
X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9XQik7CiAJaWYgKElTX0VSUih2YWRkcikp
CiAJCXJldHVybiBQVFJfRVJSKHZhZGRyKTsKIApAQCAtMTIzLDQyICsxMjMsNDggQEAgc3RhdGlj
IGludCBpOTE1X2dlbV9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBl
bnVtIGRtYV9kYXRhX2RpcmUKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0g
ZG1hX2J1Zl90b19vYmooZG1hX2J1Zik7CiAJYm9vbCB3cml0ZSA9IChkaXJlY3Rpb24gPT0gRE1B
X0JJRElSRUNUSU9OQUwgfHwgZGlyZWN0aW9uID09IERNQV9UT19ERVZJQ0UpOworCXN0cnVjdCBp
OTE1X2dlbV93d19jdHggd3c7CiAJaW50IGVycjsKIAotCWVyciA9IGk5MTVfZ2VtX29iamVjdF9w
aW5fcGFnZXMob2JqKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwotCi0JZXJyID0gaTkxNV9n
ZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOwotCWlmIChlcnIpCi0JCWdv
dG8gb3V0OwotCi0JZXJyID0gaTkxNV9nZW1fb2JqZWN0X3NldF90b19jcHVfZG9tYWluKG9iaiwg
d3JpdGUpOwotCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKLQotb3V0OgotCWk5MTVfZ2Vt
X29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywgdHJ1
ZSk7CityZXRyeToKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosICZ3dyk7CisJaWYg
KCFlcnIpCisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKKwlpZiAoIWVy
cikgeworCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2NwdV9kb21haW4ob2JqLCB3cml0
ZSk7CisJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCX0KKwlpZiAoZXJyID09
IC1FREVBRExLKSB7CisJCWVyciA9IGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCZ3dyk7CisJCWlm
ICghZXJyKQorCQkJZ290byByZXRyeTsKKwl9CisJaTkxNV9nZW1fd3dfY3R4X2ZpbmkoJnd3KTsK
IAlyZXR1cm4gZXJyOwogfQogCiBzdGF0aWMgaW50IGk5MTVfZ2VtX2VuZF9jcHVfYWNjZXNzKHN0
cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24p
CiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGRtYV9idWZfdG9fb2JqKGRt
YV9idWYpOworCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7CiAJaW50IGVycjsKIAotCWVyciA9
IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJy
OwotCi0JZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwp
OwotCWlmIChlcnIpCi0JCWdvdG8gb3V0OwotCi0JZXJyID0gaTkxNV9nZW1fb2JqZWN0X3NldF90
b19ndHRfZG9tYWluKG9iaiwgZmFsc2UpOwotCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsK
LQotb3V0OgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCWk5MTVfZ2VtX3d3
X2N0eF9pbml0KCZ3dywgdHJ1ZSk7CityZXRyeToKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9j
ayhvYmosICZ3dyk7CisJaWYgKCFlcnIpCisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFn
ZXMob2JqKTsKKwlpZiAoIWVycikgeworCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0
dF9kb21haW4ob2JqLCBmYWxzZSk7CisJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmop
OworCX0KKwlpZiAoZXJyID09IC1FREVBRExLKSB7CisJCWVyciA9IGk5MTVfZ2VtX3d3X2N0eF9i
YWNrb2ZmKCZ3dyk7CisJCWlmICghZXJyKQorCQkJZ290byByZXRyeTsKKwl9CisJaTkxNV9nZW1f
d3dfY3R4X2ZpbmkoJnd3KTsKIAlyZXR1cm4gZXJyOwogfQogCi0tIAoyLjI5LjIuMjIyLmc1ZDJh
OTJkMTBmOAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
