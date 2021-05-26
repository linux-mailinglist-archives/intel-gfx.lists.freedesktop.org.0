Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B34391649
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508226ECA6;
	Wed, 26 May 2021 11:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D63B6ECAA;
 Wed, 26 May 2021 11:33:37 +0000 (UTC)
IronPort-SDR: wIyrACC1w+QaDCul7jxzHNwVKLAGLHQ13mU2ll5/7IKZ57hYG6X/rsBpCW/8jOKt+egOWAwS43
 dJlIDZsJA/6g==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627315"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627315"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:37 -0700
IronPort-SDR: JKnrPhDAYNQbq+QRsEuCo3Bfwi39kr8h5Vp0bFk762c22rxgKpiLtFWBRcEb8ycGr7DKERH4Fj
 qWi/str5x8og==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457966"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:35 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:56 +0200
Message-Id: <20210526113259.1661914-13-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 12/15] drm/i915/lmem: Verify checks for lmem
 residency
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugb2JqZWN0cyBjYW4gYmUgbWlncmF0ZWQgb3IgZXZpY3RlZCB3aGVuIG5vdCBwaW5uZWQg
b3IgbG9ja2VkLAp1cGRhdGUgdGhlIGNoZWNrcyBmb3IgbG1lbSByZXNpZGVuY3kgb3IgZnV0dXJl
IHJlc2lkZW5jeSBzbyB0aGF0CnRoZSB2YWx1ZSByZXR1cm5lZCBpcyBub3QgaW1tZWRpYXRlbHkg
c3RhbGUuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Ci0tLQp2MjogU2ltcGxpZnkgaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGFibGUo
KSAoUmVwb3J0ZWQgYnkgTWF0dGV3IEF1bGQpCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2xtZW0uYyAgICAgfCA0MiArKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgfCAxOCArKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgIHwgIDQgKysKIDQgZmlsZXMgY2hh
bmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDBiYjJlNTgyYzg3Zi4uMjZlNGRh
YWY0MDI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTE3MzMsNyArMTE3MzMsNyBAQCBpbnRlbF91c2VyX2ZyYW1lYnVmZmVyX2NyZWF0ZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCiAJLyogb2JqZWN0IGlzIGJhY2tlZCB3aXRoIExNRU0g
Zm9yIGRpc2NyZXRlICovCiAJaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Ci0JaWYgKEhB
U19MTUVNKGk5MTUpICYmICFpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopKSB7CisJaWYgKEhB
U19MTUVNKGk5MTUpICYmICFpOTE1X2dlbV9vYmplY3RfdmFsaWRhdGVzX3RvX2xtZW0ob2JqKSkg
ewogCQkvKiBvYmplY3QgaXMgInJlbW90ZSIsIG5vdCBpbiBsb2NhbCBtZW1vcnkgKi8KIAkJaTkx
NV9nZW1fb2JqZWN0X3B1dChvYmopOwogCQlyZXR1cm4gRVJSX1BUUigtRVJFTU9URSk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwppbmRleCAyYjhjZDE1ZGUxZDkuLmQ1
MzlkZmZhMTU1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2xtZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jCkBA
IC0yMywxMCArMjMsNTAgQEAgaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwKHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJcmV0dXJuIGlvX21hcHBpbmdfbWFwX3djKCZvYmotPm1t
LnJlZ2lvbi0+aW9tYXAsIG9mZnNldCwgc2l6ZSk7CiB9CiAKKy8qKgorICogaTkxNV9nZW1fb2Jq
ZWN0X3ZhbGlkYXRlc190b19sbWVtIC0gV2hldGhlciB0aGUgb2JqZWN0IGlzIHJlc2lkZW50IGlu
CisgKiBsbWVtIHdoZW4gcGFnZXMgYXJlIHByZXNlbnQuCisgKiBAb2JqOiBUaGUgb2JqZWN0IHRv
IGNoZWNrLgorICoKKyAqIE1pZ3JhdGFibGUgb2JqZWN0cyByZXNpZGVuY3kgbWF5IGNoYW5nZSBm
cm9tIHVuZGVyIHVzIGlmIHRoZSBvYmplY3QgaXMKKyAqIG5vdCBwaW5uZWQgb3IgbG9ja2VkLiBU
aGlzIGZ1bmN0aW9uIGlzIGludGVuZGVkIHRvIGJlIHVzZWQgdG8gY2hlY2sgd2hldGhlcgorICog
dGhlIG9iamVjdCBjYW4gb25seSByZXNpZGUgaW4gbG1lbSB3aGVuIHBhZ2VzIGFyZSBwcmVzZW50
LgorICoKKyAqIFJldHVybjogV2hldGhlciB0aGUgb2JqZWN0IGlzIGFsd2F5cyByZXNpZGVudCBp
biBsbWVtIHdoZW4gcGFnZXMgYXJlCisgKiBwcmVzZW50LgorICovCitib29sIGk5MTVfZ2VtX29i
amVjdF92YWxpZGF0ZXNfdG9fbG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQor
eworCXN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptciA9IFJFQURfT05DRShvYmotPm1tLnJl
Z2lvbik7CisKKwlyZXR1cm4gIWk5MTVfZ2VtX29iamVjdF9taWdyYXRhYmxlKG9iaikgJiYKKwkJ
bXIgJiYgKG1yLT50eXBlID09IElOVEVMX01FTU9SWV9MT0NBTCB8fAorCQkgICAgICAgbXItPnR5
cGUgPT0gSU5URUxfTUVNT1JZX1NUT0xFTl9MT0NBTCk7Cit9CisKKy8qKgorICogaTkxNV9nZW1f
b2JqZWN0X2lzX2xtZW0gLSBXaGV0aGVyIHRoZSBvYmplY3QgaXMgcmVzaWRlbnQgaW4KKyAqIGxt
ZW0KKyAqIEBvYmo6IFRoZSBvYmplY3QgdG8gY2hlY2suCisgKgorICogRXZlbiBpZiBhbiBvYmpl
Y3QgaXMgYWxsb3dlZCB0byBtaWdyYXRlIGFuZCBjaGFuZ2UgbWVtb3J5IHJlZ2lvbiwKKyAqIHRo
aXMgZnVuY3Rpb24gY2hlY2tzIHdoZXRoZXIgaXQgd2lsbCBhbHdheXMgYmUgcHJlc2VudCBpbiBs
bWVtIHdoZW4KKyAqIHZhbGlkICpvciogaWYgdGhhdCdzIG5vdCB0aGUgY2FzZSwgd2hldGhlciBp
dCdzIGN1cnJlbnRseSByZXNpZGVudCBpbiBsbWVtLgorICogRm9yIG1pZ3JhdGFibGUgYW5kIGV2
aWN0YWJsZSBvYmplY3RzLCB0aGUgbGF0dGVyIG9ubHkgbWFrZXMgc2Vuc2Ugd2hlbgorICogdGhl
IG9iamVjdCBpcyBsb2NrZWQuCisgKgorICogUmV0dXJuOiBXaGV0aGVyIHRoZSBvYmplY3QgbWln
cmF0YWJsZSBidXQgcmVzaWRlbnQgaW4gbG1lbSwgb3Igbm90CisgKiBtaWdyYXRhYmxlIGFuZCB3
aWxsIGJlIHByZXNlbnQgaW4gbG1lbSB3aGVuIHZhbGlkLgorICovCiBib29sIGk5MTVfZ2VtX29i
amVjdF9pc19sbWVtKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7Ci0Jc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gb2JqLT5tbS5yZWdpb247CisJc3RydWN0IGludGVs
X21lbW9yeV9yZWdpb24gKm1yID0gUkVBRF9PTkNFKG9iai0+bW0ucmVnaW9uKTsKIAorI2lmZGVm
IENPTkZJR19MT0NLREVQCisJaWYgKGk5MTVfZ2VtX29iamVjdF9taWdyYXRhYmxlKG9iaikgJiYK
KwkgICAgaTkxNV9nZW1fb2JqZWN0X2V2aWN0YWJsZShvYmopKQorCQlhc3NlcnRfb2JqZWN0X2hl
bGQob2JqKTsKKyNlbmRpZgogCXJldHVybiBtciAmJiAobXItPnR5cGUgPT0gSU5URUxfTUVNT1JZ
X0xPQ0FMIHx8CiAJCSAgICAgIG1yLT50eXBlID09IElOVEVMX01FTU9SWV9TVE9MRU5fTE9DQUwp
OwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCmluZGV4IGRm
MmI0ZTZiOWJjYy4uYzhiYjZmYjFkYmEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5jCkBAIC00NTgsNiArNDU4LDI0IEBAIGJvb2wgaTkxNV9nZW1fb2JqZWN0
X2V2aWN0YWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCXJldHVybiBwaW5f
Y291bnQgPT0gMDsKIH0KIAorLyoqCisgKiBpOTE1X2dlbV9vYmplY3RfbWlncmF0YWJsZSAtIFdo
ZXRoZXIgdGhlIG9iamVjdCBpcyBtaWdyYXRhYmxlIG91dCBvZiB0aGUKKyAqIGN1cnJlbnQgcmVn
aW9uLgorICogQG9iajogUG9pbnRlciB0byB0aGUgb2JqZWN0LgorICoKKyAqIFJldHVybjogV2hl
dGhlciB0aGUgb2JqZWN0IGlzIGFsbG93ZWQgdG8gYmUgcmVzaWRlbnQgaW4gb3RoZXIKKyAqIHJl
Z2lvbnMgdGhhbiB0aGUgY3VycmVudCB3aGlsZSBwYWdlcyBhcmUgcHJlc2VudC4KKyAqLworYm9v
bCBpOTE1X2dlbV9vYmplY3RfbWlncmF0YWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQoreworCXN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptciA9IFJFQURfT05DRShvYmot
Pm1tLnJlZ2lvbik7CisKKwlpZiAoIW1yKQorCQlyZXR1cm4gZmFsc2U7CisKKwlyZXR1cm4gb2Jq
LT5tbS5uX3BsYWNlbWVudHMgPiAxOworfQorCiB2b2lkIGk5MTVfZ2VtX2luaXRfX29iamVjdHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJSU5JVF9XT1JLKCZpOTE1LT5tbS5m
cmVlX3dvcmssIF9faTkxNV9nZW1fZnJlZV93b3JrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaAppbmRleCBhZTU5MzBlMzA3ZDUuLmEzYWQ4Y2Y0ZWVmZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtNTk2LDYgKzU5
NiwxMCBAQCB2b2lkIF9faTkxNV9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaik7CiAKIGJvb2wgaTkxNV9nZW1fb2JqZWN0X2V2aWN0YWJsZShzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKIAorYm9vbCBpOTE1X2dlbV9vYmplY3RfbWlncmF0YWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKKworYm9vbCBpOTE1X2dlbV9vYmpl
Y3RfdmFsaWRhdGVzX3RvX2xtZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CisK
ICNpZmRlZiBDT05GSUdfTU1VX05PVElGSUVSCiBzdGF0aWMgaW5saW5lIGJvb2wKIGk5MTVfZ2Vt
X29iamVjdF9pc191c2VycHRyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCi0tIAoy
LjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
