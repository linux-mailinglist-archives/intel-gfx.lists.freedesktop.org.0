Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CF4AB4E9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 11:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44556E203;
	Fri,  6 Sep 2019 09:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A8D6E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 09:33:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 02:33:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="185737712"
Received: from chlopez-mobl1.amr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.36.202])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2019 02:33:09 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:32:44 +0300
Message-Id: <20190906093256.26198-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
References: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 01/13] drm/i915: introduce a mechanism to
 extend execbuf2
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

V2UncmUgcGxhbm5pbmcgdG8gdXNlIHRoaXMgZm9yIGEgY291cGxlIG9mIG5ldyBmZWF0dXJlIHdo
ZXJlIHdlIG5lZWQKdG8gcHJvdmlkZSBhZGRpdGlvbmFsIHBhcmFtZXRlcnMgdG8gZXhlY2J1Zi4K
CnYyOiBDaGVjayBmb3IgaW52YWxpZCBmbGFncyBpbiBleGVjYnVmZmVyMiAoTGlvbmVsKQoKdjM6
IFJlbmFtZSBJOTE1X0VYRUNfRVhUIC0+IEk5MTVfRVhFQ19VU0VfRVhURU5TSU9OUyAoQ2hyaXMp
CgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4gKHYxKQotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YyAgICB8IDM5ICsrKysrKysrKysrKysrKysrKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aCAgICAgICAgICAgICAgICAgICB8IDI2ICsrKysrKysrKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwg
NjEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCAyN2RiY2I1MDgwNTUuLjRmNWZkOTQ2
YWIyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZl
ci5jCkBAIC0yNSw2ICsyNSw3IEBACiAjaW5jbHVkZSAiaTkxNV9nZW1fY29udGV4dC5oIgogI2lu
Y2x1ZGUgImk5MTVfZ2VtX2lvY3Rscy5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKKyNpbmNs
dWRlICJpOTE1X3VzZXJfZXh0ZW5zaW9ucy5oIgogCiBlbnVtIHsKIAlGT1JDRV9DUFVfUkVMT0Mg
PSAxLApAQCAtMjcyLDYgKzI3MywxMCBAQCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyIHsKIAkgKi8K
IAlpbnQgbHV0X3NpemU7CiAJc3RydWN0IGhsaXN0X2hlYWQgKmJ1Y2tldHM7IC8qKiBodCBmb3Ig
cmVsb2NhdGlvbiBoYW5kbGVzICovCisKKwlzdHJ1Y3QgeworCQl1NjQgZmxhZ3M7IC8qKiBBdmFp
bGFibGUgZXh0ZW5zaW9ucyBwYXJhbWV0ZXJzICovCisJfSBleHRlbnNpb25zOwogfTsKIAogI2Rl
ZmluZSBleGVjX2VudHJ5KEVCLCBWTUEpICgmKEVCKS0+ZXhlY1soVk1BKS0+ZXhlY19mbGFncyAt
IChFQiktPmZsYWdzXSkKQEAgLTE5NDAsNyArMTk0NSw4IEBAIHN0YXRpYyBib29sIGk5MTVfZ2Vt
X2NoZWNrX2V4ZWNidWZmZXIoc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqZXhlYykK
IAkJcmV0dXJuIGZhbHNlOwogCiAJLyogS2VybmVsIGNsaXBwaW5nIHdhcyBhIERSSTEgbWlzZmVh
dHVyZSAqLwotCWlmICghKGV4ZWMtPmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZKSkgewor
CWlmICghKGV4ZWMtPmZsYWdzICYgKEk5MTVfRVhFQ19GRU5DRV9BUlJBWSB8CisJCQkgICAgIEk5
MTVfRVhFQ19VU0VfRVhURU5TSU9OUykpKSB7CiAJCWlmIChleGVjLT5udW1fY2xpcHJlY3RzIHx8
IGV4ZWMtPmNsaXByZWN0c19wdHIpCiAJCQlyZXR1cm4gZmFsc2U7CiAJfQpAQCAtMjQ0Miw2ICsy
NDQ4LDMzIEBAIHNpZ25hbF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwK
IAl9CiB9CiAKK3N0YXRpYyBjb25zdCBpOTE1X3VzZXJfZXh0ZW5zaW9uX2ZuIGV4ZWNidWZfZXh0
ZW5zaW9uc1tdID0geworfTsKKworc3RhdGljIGludAorcGFyc2VfZXhlY2J1ZjJfZXh0ZW5zaW9u
cyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyICphcmdzLAorCQkJICBzdHJ1Y3QgaTkx
NV9leGVjYnVmZmVyICplYikKK3sKKwllYi0+ZXh0ZW5zaW9ucy5mbGFncyA9IDA7CisKKwlpZiAo
IShhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19VU0VfRVhURU5TSU9OUykpCisJCXJldHVybiAwOwor
CisJLyogVGhlIGV4ZWNidWYyIGV4dGVuc2lvbiBtZWNoYW5pc20gcmV1c2VzIGNsaXByZWN0c19w
dHIuIFNvIHdlIGNhbm5vdAorCSAqIGhhdmUgYW5vdGhlciBmbGFnIGFsc28gdXNpbmcgaXQgYXQg
dGhlIHNhbWUgdGltZS4KKwkgKi8KKwlpZiAoZWItPmFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0ZF
TkNFX0FSUkFZKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChhcmdzLT5udW1fY2xpcHJlY3Rz
ICE9IDApCisJCXJldHVybiAtRUlOVkFMOworCisJcmV0dXJuIGk5MTVfdXNlcl9leHRlbnNpb25z
KHU2NF90b191c2VyX3B0cihhcmdzLT5jbGlwcmVjdHNfcHRyKSwKKwkJCQkgICAgZXhlY2J1Zl9l
eHRlbnNpb25zLAorCQkJCSAgICBBUlJBWV9TSVpFKGV4ZWNidWZfZXh0ZW5zaW9ucyksCisJCQkJ
ICAgIGViKTsKK30KKwogc3RhdGljIGludAogaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAogCQkgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlLApAQCAtMjQ4
OCw2ICsyNTIxLDEwIEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKIAlpZiAoYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfSVNfUElOTkVEKQogCQllYi5iYXRj
aF9mbGFncyB8PSBJOTE1X0RJU1BBVENIX1BJTk5FRDsKIAorCWVyciA9IHBhcnNlX2V4ZWNidWYy
X2V4dGVuc2lvbnMoYXJncywgJmViKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCiAJaWYg
KGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX0lOKSB7CiAJCWluX2ZlbmNlID0gc3luY19m
aWxlX2dldF9mZW5jZShsb3dlcl8zMl9iaXRzKGFyZ3MtPnJzdmQyKSk7CiAJCWlmICghaW5fZmVu
Y2UpCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3Vh
cGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggNDY5ZGM1MTJjY2EzLi4wYTk5YzI2NzMwZTEgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmgKQEAgLTEwMDcsNiArMTAwNywxMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4
ZWNfZmVuY2UgewogCV9fdTMyIGZsYWdzOwogfTsKIAorZW51bSBkcm1faTkxNV9nZW1fZXhlY2J1
ZmZlcl9leHQgeworCURSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9NQVggLyogbm9uLUFCSSAq
LworfTsKKwogc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7CiAJLyoqCiAJICogTGlz
dCBvZiBnZW1fZXhlY19vYmplY3QyIHN0cnVjdHMKQEAgLTEwMjMsOCArMTAyNywxNSBAQCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyIHsKIAlfX3UzMiBudW1fY2xpcHJlY3RzOwogCS8q
KgogCSAqIFRoaXMgaXMgYSBzdHJ1Y3QgZHJtX2NsaXBfcmVjdCAqY2xpcHJlY3RzIGlmIEk5MTVf
RVhFQ19GRU5DRV9BUlJBWQotCSAqIGlzIG5vdCBzZXQuICBJZiBJOTE1X0VYRUNfRkVOQ0VfQVJS
QVkgaXMgc2V0LCB0aGVuIHRoaXMgaXMgYQotCSAqIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19m
ZW5jZSAqZmVuY2VzLgorCSAqICYgSTkxNV9FWEVDX1VTRV9FWFRFTlNJT05TIGFyZSBub3Qgc2V0
LgorCSAqCisJICogSWYgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZIGlzIHNldCwgdGhlbiB0aGlzIGlz
IGEgcG9pbnRlciB0byBhbiBhcnJheQorCSAqIG9mIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19m
ZW5jZSBhbmQgbnVtX2NsaXByZWN0cyBpcyB0aGUgbGVuZ3RoCisJICogb2YgdGhlIGFycmF5Lgor
CSAqCisJICogSWYgSTkxNV9FWEVDX1VTRV9FWFRFTlNJT05TIGlzIHNldCwgdGhlbiB0aGlzIGlz
IGEgcG9pbnRlciB0byBhCisJICogc2luZ2xlIHN0cnVjdCBkcm1faTkxNV9nZW1fYmFzZV9leGVj
YnVmZmVyX2V4dCBhbmQgbnVtX2NsaXByZWN0cyBpcworCSAqIDAuCiAJICovCiAJX191NjQgY2xp
cHJlY3RzX3B0cjsKICNkZWZpbmUgSTkxNV9FWEVDX1JJTkdfTUFTSyAgICAgICAgICAgICAgKDB4
M2YpCkBAIC0xMTQyLDcgKzExNTMsMTYgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVy
MiB7CiAgKi8KICNkZWZpbmUgSTkxNV9FWEVDX0ZFTkNFX1NVQk1JVAkJKDEgPDwgMjApCiAKLSNk
ZWZpbmUgX19JOTE1X0VYRUNfVU5LTk9XTl9GTEFHUyAoLShJOTE1X0VYRUNfRkVOQ0VfU1VCTUlU
IDw8IDEpKQorLyoKKyAqIFNldHRpbmcgSTkxNV9FWEVDX1VTRV9FWFRFTlNJT05TIGltcGxpZXMg
dGhhdAorICogZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyLmNsaXByZWN0c19wdHIgaXMgdHJlYXRl
ZCBhcyBhIHBvaW50ZXIgdG8gYW4gbGlua2VkCisgKiBsaXN0IG9mIGk5MTVfdXNlcl9leHRlbnNp
b24uIEVhY2ggaTkxNV91c2VyX2V4dGVuc2lvbiBub2RlIGlzIHRoZSBiYXNlIG9mIGEKKyAqIGxh
cmdlciBzdHJ1Y3R1cmUuIFRoZSBsaXN0IG9mIHN1cHBvcnRlZCBzdHJ1Y3R1cmVzIGFyZSBsaXN0
ZWQgaW4gdGhlCisgKiBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHQgZW51bS4KKyAqLworI2Rl
ZmluZSBJOTE1X0VYRUNfVVNFX0VYVEVOU0lPTlMJKDEgPDwgMjEpCisKKyNkZWZpbmUgX19JOTE1
X0VYRUNfVU5LTk9XTl9GTEFHUyAoLShJOTE1X0VYRUNfVVNFX0VYVEVOU0lPTlM8PDEpKQogCiAj
ZGVmaW5lIEk5MTVfRVhFQ19DT05URVhUX0lEX01BU0sJKDB4ZmZmZmZmZmYpCiAjZGVmaW5lIGk5
MTVfZXhlY2J1ZmZlcjJfc2V0X2NvbnRleHRfaWQoZWIyLCBjb250ZXh0KSBcCi0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
