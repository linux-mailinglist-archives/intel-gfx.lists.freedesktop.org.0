Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E7D35BF92
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50AF16E303;
	Mon, 12 Apr 2021 09:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C2D6E2ED;
 Mon, 12 Apr 2021 09:09:40 +0000 (UTC)
IronPort-SDR: 4edQMXX1su9XPu3WzHxkGq+diloNp81uClyR2jdHYdkIo1mSuHwaP93/zpgYnBooPr4TiJ9pwn
 wR5VLITHMr5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="193709744"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="193709744"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:40 -0700
IronPort-SDR: pRrLIw4/E2Q9/K5Um5lWo3bOfHejBQ4C4QZZBU21PbG/c4H2hA3lOG7kETBLWsp+vaC+1UUQrJ
 h2dgmW1HPjMQ==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="423712741"
Received: from tarynrox-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.5.30])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:38 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 10:05:20 +0100
Message-Id: <20210412090526.30547-14-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412090526.30547-1-matthew.auld@intel.com>
References: <20210412090526.30547-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/19] drm/i915/dg1: Read OPROM via SPI
 controller
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 Tomas Winkler <tomas.winkler@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KClJlYWQgT1BS
T00gU1BJIHRocm91Z2ggTU1JTyBhbmQgZmluZCBWQlQgZW50cnkgc2luY2Ugd2UgY2FuJ3QgdXNl
Ck9wUmVnaW9uIGFuZCBQQ0kgbWFwcGluZyBtYXkgbm90IHdvcmsgb24gc29tZSBzeXN0ZW1zIGR1
ZSB0byB0aGUgQklPUwpub3QgbGVhdmluZyB0aGUgT3B0aW9uIFJPTSBtYXBwZWQuCgp2MiBieSBK
YW5pOgotIHN3aXRjaCB0byBpbnRlbF91bmNvcmVfcmVhZC9pbnRlbF91bmNvcmVfd3JpdGUKCkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogVG9t
YXMgV2lua2xlciA8dG9tYXMud2lua2xlckBpbnRlbC5jb20+CkNjOiBKb24gQmxvb21maWVsZCA8
am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNs
aW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyB8IDgwICsrKysrKysrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICB8ICA4ICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA4MiBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMKaW5kZXggZWE0ODM3ZDQ4NWExLi5mOWRjNjUxZjE2NTIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0yMjM4LDYgKzIyMzgsNjYg
QEAgYm9vbCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidChjb25zdCB2b2lkICpidWYsIHNpemVfdCBz
aXplKQogCXJldHVybiB2YnQ7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgdmJ0X2hlYWRlciAqc3BpX29w
cm9tX2dldF92YnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJdTMyIGNvdW50
LCBkYXRhLCBmb3VuZCwgc3RvcmUgPSAwOworCXUzMiBzdGF0aWNfcmVnaW9uLCBvcHJvbV9vZmZz
ZXQ7CisJdTMyIG9wcm9tX3NpemUgPSAweDIwMDAwMDsKKwl1MTYgdmJ0X3NpemU7CisJdTMyICp2
YnQ7CisKKwlzdGF0aWNfcmVnaW9uID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwg
U1BJX1NUQVRJQ19SRUdJT05TKTsKKwlzdGF0aWNfcmVnaW9uICY9IE9QVElPTlJPTV9TUElfUkVH
SU9OSURfTUFTSzsKKwlpbnRlbF91bmNvcmVfd3JpdGUoJmk5MTUtPnVuY29yZSwgUFJJTUFSWV9T
UElfUkVHSU9OSUQsIHN0YXRpY19yZWdpb24pOworCisJb3Byb21fb2Zmc2V0ID0gaW50ZWxfdW5j
b3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgT1JPTV9PRkZTRVQpOworCW9wcm9tX29mZnNldCAmPSBP
Uk9NX09GRlNFVF9NQVNLOworCisJZm9yIChjb3VudCA9IDA7IGNvdW50IDwgb3Byb21fc2l6ZTsg
Y291bnQgKz0gNCkgeworCQlpbnRlbF91bmNvcmVfd3JpdGUoJmk5MTUtPnVuY29yZSwgUFJJTUFS
WV9TUElfQUREUkVTUywgb3Byb21fb2Zmc2V0ICsgY291bnQpOworCQlkYXRhID0gaW50ZWxfdW5j
b3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgUFJJTUFSWV9TUElfVFJJR0dFUik7CisKKwkJaWYgKGRh
dGEgPT0gKigoY29uc3QgdTMyICopIiRWQlQiKSkgeworCQkJZm91bmQgPSBvcHJvbV9vZmZzZXQg
KyBjb3VudDsKKwkJCWJyZWFrOworCQl9CisJfQorCisJaWYgKGNvdW50ID49IG9wcm9tX3NpemUp
CisJCWdvdG8gZXJyX25vdF9mb3VuZDsKKworCS8qIEdldCBWQlQgc2l6ZSBhbmQgYWxsb2NhdGUg
c3BhY2UgZm9yIHRoZSBWQlQgKi8KKwlpbnRlbF91bmNvcmVfd3JpdGUoJmk5MTUtPnVuY29yZSwg
UFJJTUFSWV9TUElfQUREUkVTUywgZm91bmQgKworCQkgICBvZmZzZXRvZihzdHJ1Y3QgdmJ0X2hl
YWRlciwgdmJ0X3NpemUpKTsKKwl2YnRfc2l6ZSA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51
bmNvcmUsIFBSSU1BUllfU1BJX1RSSUdHRVIpOworCXZidF9zaXplICY9IDB4ZmZmZjsKKworCXZi
dCA9IGt6YWxsb2ModmJ0X3NpemUsIEdGUF9LRVJORUwpOworCWlmICghdmJ0KSB7CisJCURSTV9F
UlJPUigiVW5hYmxlIHRvIGFsbG9jYXRlICV1IGJ5dGVzIGZvciBWQlQgc3RvcmFnZVxuIiwKKwkJ
CSAgdmJ0X3NpemUpOworCQlnb3RvIGVycl9ub3RfZm91bmQ7CisJfQorCisJZm9yIChjb3VudCA9
IDA7IGNvdW50IDwgdmJ0X3NpemU7IGNvdW50ICs9IDQpIHsKKwkJaW50ZWxfdW5jb3JlX3dyaXRl
KCZpOTE1LT51bmNvcmUsIFBSSU1BUllfU1BJX0FERFJFU1MsIGZvdW5kICsgY291bnQpOworCQlk
YXRhID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgUFJJTUFSWV9TUElfVFJJR0dF
Uik7CisJCSoodmJ0ICsgc3RvcmUrKykgPSBkYXRhOworCX0KKworCWlmICghaW50ZWxfYmlvc19p
c192YWxpZF92YnQodmJ0LCB2YnRfc2l6ZSkpCisJCWdvdG8gZXJyX2ZyZWVfdmJ0OworCisJRFJN
X0RFQlVHX0tNUygiRm91bmQgdmFsaWQgVkJUIGluIFNQSSBmbGFzaFxuIik7CisKKwlyZXR1cm4g
KHN0cnVjdCB2YnRfaGVhZGVyICopdmJ0OworCitlcnJfZnJlZV92YnQ6CisJa2ZyZWUodmJ0KTsK
K2Vycl9ub3RfZm91bmQ6CisJcmV0dXJuIE5VTEw7Cit9CisKIHN0YXRpYyBzdHJ1Y3QgdmJ0X2hl
YWRlciAqb3Byb21fZ2V0X3ZidChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoaTkxNS0+ZHJtLmRldik7CkBAIC0yMjg3
LDYgKzIzNDcsOCBAQCBzdGF0aWMgc3RydWN0IHZidF9oZWFkZXIgKm9wcm9tX2dldF92YnQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlwY2lfdW5tYXBfcm9tKHBkZXYsIG9wcm9t
KTsKIAorCURSTV9ERUJVR19LTVMoIkZvdW5kIHZhbGlkIFZCVCBpbiBQQ0kgUk9NXG4iKTsKKwog
CXJldHVybiB2YnQ7CiAKIGVycl9mcmVlX3ZidDoKQEAgLTIzMjEsMTcgKzIzODMsMjMgQEAgdm9p
ZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlpbml0
X3ZidF9kZWZhdWx0cyhpOTE1KTsKIAotCS8qIElmIHRoZSBPcFJlZ2lvbiBkb2VzIG5vdCBoYXZl
IFZCVCwgbG9vayBpbiBQQ0kgUk9NLiAqLworCS8qCisJICogSWYgdGhlIE9wUmVnaW9uIGRvZXMg
bm90IGhhdmUgVkJULCBsb29rIGluIFNQSSBmbGFzaCB0aHJvdWdoIE1NSU8gb3IKKwkgKiBQQ0kg
bWFwcGluZworCSAqLworCWlmICghdmJ0ICYmIElTX0RHRlgoaTkxNSkpIHsKKwkJb3Byb21fdmJ0
ID0gc3BpX29wcm9tX2dldF92YnQoaTkxNSk7CisJCXZidCA9IG9wcm9tX3ZidDsKKwl9CisKIAlp
ZiAoIXZidCkgewogCQlvcHJvbV92YnQgPSBvcHJvbV9nZXRfdmJ0KGk5MTUpOwotCQlpZiAoIW9w
cm9tX3ZidCkKLQkJCWdvdG8gb3V0OwotCiAJCXZidCA9IG9wcm9tX3ZidDsKLQotCQlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLCAiRm91bmQgdmFsaWQgVkJUIGluIFBDSSBST01cbiIpOwogCX0KIAor
CWlmICghdmJ0KQorCQlnb3RvIG91dDsKKwogCWJkYiA9IGdldF9iZGJfaGVhZGVyKHZidCk7CiAJ
aTkxNS0+dmJ0LnZlcnNpb24gPSBiZGItPnZlcnNpb247CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CmluZGV4IGRhNzNkYzkzOWU1OC4uNTRmZjYzYjg2ZGY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKQEAgLTEyNTQwLDYgKzEyNTQwLDE0IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmlu
ZSAgIERQX1BJTl9BU1NJR05NRU5UX01BU0soaWR4KQkJKDB4ZiA8PCAoKGlkeCkgKiA0KSkKICNk
ZWZpbmUgICBEUF9QSU5fQVNTSUdOTUVOVChpZHgsIHgpCQkoKHgpIDw8ICgoaWR4KSAqIDQpKQog
CisjZGVmaW5lIFBSSU1BUllfU1BJX1RSSUdHRVIJCQlfTU1JTygweDEwMjA0MCkKKyNkZWZpbmUg
UFJJTUFSWV9TUElfQUREUkVTUwkJCV9NTUlPKDB4MTAyMDgwKQorI2RlZmluZSBQUklNQVJZX1NQ
SV9SRUdJT05JRAkJCV9NTUlPKDB4MTAyMDg0KQorI2RlZmluZSBTUElfU1RBVElDX1JFR0lPTlMJ
CQlfTU1JTygweDEwMjA5MCkKKyNkZWZpbmUgICBPUFRJT05ST01fU1BJX1JFR0lPTklEX01BU0sJ
CVJFR19HRU5NQVNLKDcsIDApCisjZGVmaW5lIE9ST01fT0ZGU0VUCQkJCV9NTUlPKDB4MTAyMGMw
KQorI2RlZmluZSAgIE9ST01fT0ZGU0VUX01BU0sJCQlSRUdfR0VOTUFTSygyMCwgMTYpCisKIC8q
IFRoaXMgcmVnaXN0ZXIgY29udHJvbHMgdGhlIERpc3BsYXkgU3RhdGUgQnVmZmVyIChEU0IpIGVu
Z2luZXMuICovCiAjZGVmaW5lIF9EU0JTTF9JTlNUQU5DRV9CQVNFCQkweDcwQjAwCiAjZGVmaW5l
IERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKQkoX0RTQlNMX0lOU1RBTkNFX0JBU0UgKyBcCi0tIAoy
LjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
