Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA18DC223
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 12:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561836EB14;
	Fri, 18 Oct 2019 10:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D666EB14
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 10:08:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 03:08:34 -0700
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="348036802"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 03:08:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 12:07:10 +0200
Message-ID: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/i915: Restore full symmetry in
 i915_driver_modeset_probe/remove
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDJkNmY2ZjM1OWZkOCAoImRybS9pOTE1OiBhZGQgaTkxNV9kcml2ZXJfbW9kZXNldF9y
ZW1vdmUoKSIpCmNsYWltZWQgcmVtb3ZhbCBvZiBhc3ltbWV0cnkgaW4gcHJvYmUoKSBhbmQgcmVt
b3ZlKCkgY2FsbHMsIGhvd2V2ZXIsIGl0CmRpZG4ndCB0YWtlIGNhcmUgb2YgY2FsbGluZyBpbnRl
bF9pcnFfdW5pbnN0YWxsKCkgb24gZHJpdmVyIHJlbW92ZS4KVGhhdCBkb2Vzbid0IGh1cnQgYXMg
bG9uZyBhcyB3ZSBzdGlsbCBjYWxsIGl0IGZyb20KaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3Zl
KCkgYnV0IGluIG9yZGVyIHRvIGhhdmUgZnVsbCBzeW1tZXRyeSB3ZQpzaG91bGQgY2FsbCBpdCBh
Z2FpbiBmcm9tIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKCkuCgpOb3RlIHRoYXQgaXQncyBz
YWZlIHRvIGNhbGwgaW50ZWxfaXJxX3VuaW5zdGFsbCgpIHR3aWNlIHRoYW5rcyB0bwpjb21taXQg
YjMxOGI4MjQ1NWJkICgiZHJtL2k5MTU6IE51a2UgZHJtX2RyaXZlciBpcnEgdmZ1bmNzIikuICBX
ZSBtYXkKb25seSB3YW50IHRvIG1lbnRpb24gdGhlIGNhc2Ugd2UgYXJlIGFkZGluZyBpbiBhIHJl
bGF0ZWQgRklYTUUgY29tbWVudApwcm92aWRlZCBieSB0aGF0IGNvbW1pdC4gIFdoaWxlIGJlaW5n
IGF0IGl0LCB1cGRhdGUgdGhlIG5hbWUgb2YKZnVuY3Rpb24gbWVudGlvbmVkIGFzIGNhbGxpbmcg
aXQgb3V0IG9mIHNlcXVlbmNlIGFzIHRoYXQgbmFtZSBoYXMgYmVlbgpjaGFuZ2VkIG1lYW53aGls
ZSBieSBjb21taXQgNzhkYWUxYWMzNWRkICgiZHJtL2k5MTU6IFByb3BhZ2F0ZQoiX3JlbW92ZSIg
ZnVuY3Rpb24gbmFtZSBzdWZmaXggZG93biIpLgoKU3VnZ2VzdGVkLWJ5OiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFudXN6IEty
enlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpDYzogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMgfCA4ICsrKystLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBkZDk2MTNlNDU3MjMuLjRhZTli
ZmE5NjI5MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC00NTIsNiArNDUyLDggQEAgc3Rh
dGljIHZvaWQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiAKIAlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAKKwlpbnRl
bF9pcnFfdW5pbnN0YWxsKGk5MTUpOworCiAJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5MTUp
OwogCiAJdmdhX3N3aXRjaGVyb29fdW5yZWdpc3Rlcl9jbGllbnQocGRldik7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYwppbmRleCBiYzgzZjA5NDA2NWEuLjAxNjAyODM4NjBhNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jCkBAIC00NTE1LDEwICs0NTE1LDEwIEBAIHZvaWQgaW50ZWxfaXJxX3VuaW5z
dGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaW50IGlycSA9IGRldl9w
cml2LT5kcm0ucGRldi0+aXJxOwogCiAJLyoKLQkgKiBGSVhNRSB3ZSBjYW4gZ2V0IGNhbGxlZCB0
d2ljZSBkdXJpbmcgZHJpdmVyIGxvYWQKLQkgKiBlcnJvciBoYW5kbGluZyBkdWUgdG8gaW50ZWxf
bW9kZXNldF9jbGVhbnVwKCkKLQkgKiBjYWxsaW5nIHVzIG91dCBvZiBzZXF1ZW5jZS4gV291bGQg
YmUgbmljZSBpZgotCSAqIGl0IGRpZG4ndCBkbyB0aGF0Li4uCisJICogRklYTUUgd2UgY2FuIGdl
dCBjYWxsZWQgdHdpY2UgZHVyaW5nIGRyaXZlciBwcm9iZQorCSAqIGVycm9yIGhhbmRsaW5nIGFz
IHdlbGwgYXMgZHVyaW5nIGRyaXZlciByZW1vdmUgZHVlIHRvCisJICogaW50ZWxfbW9kZXNldF9k
cml2ZXJfcmVtb3ZlKCkgY2FsbGluZyB1cyBvdXQgb2Ygc2VxdWVuY2UuCisJICogV291bGQgYmUg
bmljZSBpZiBpdCBkaWRuJ3QgZG8gdGhhdC4uLgogCSAqLwogCWlmICghZGV2X3ByaXYtPmRybS5p
cnFfZW5hYmxlZCkKIAkJcmV0dXJuOwotLSAKMi4yMS4wCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
