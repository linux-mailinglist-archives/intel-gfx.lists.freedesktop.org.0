Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC4AD5B4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 11:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EAE689A86;
	Mon,  9 Sep 2019 09:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108AB89A76
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 09:31:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 02:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="359433659"
Received: from hoernig-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.33.104])
 by orsmga005.jf.intel.com with ESMTP; 09 Sep 2019 02:31:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:31:06 +0300
Message-Id: <20190909093116.7747-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909093116.7747-1-lionel.g.landwerlin@intel.com>
References: <20190909093116.7747-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v16 03/13] drm/i915/perf: drop list of streams
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

QXQgc29tZSBwb2ludCBpbiB0aW1lIHRoZXJlIHdhcyB0aGUgaWRlYSB0aGF0IHdlIGNvdWxkIGhh
dmUgbXVsdGlwbGUKc3RyZWFtIGZyb20gdGhlIHNhbWUgcGllY2Ugb2YgSFcgYnV0IHRoYXQgbmV2
ZXIgbWF0ZXJpYWxpemVkIGFuZCBnaXZlbgp0aGUgaGFyZCB0aW1lIHdlIGFscmVhZHkgaGF2ZSBt
YWtpbmcgZXZlcnl0aGluZyB3b3JrIHdpdGggdGhlCnN1Ym1pc3Npb24gc2lkZSwgdGhlcmUgaXMg
bm8gcmVhbCBwb2ludCBoYXZpbmcgdGhpcyBsaXN0IG9mIDEgZWxlbWVudAphcm91bmQuCgpTaWdu
ZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgfCAgNiAtLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMTYgKy0tLS0tLS0tLS0tLS0tLQogMiBm
aWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggZGI3NDgwODMxZTUyLi43NTYwNzQ1MGJhMDAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtMTA4MiwxMSArMTA4Miw2IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtIHsKIAkgKi8KIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXY7CiAKLQkvKioK
LQkgKiBAbGluazogTGlua3MgdGhlIHN0cmVhbSBpbnRvIGBgJmRybV9pOTE1X3ByaXZhdGUtPnN0
cmVhbXNgYAotCSAqLwotCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKLQogCS8qKgogCSAqIEB3YWtl
cmVmOiBBcyB3ZSBrZWVwIHRoZSBkZXZpY2UgYXdha2Ugd2hpbGUgdGhlIHBlcmYgc3RyZWFtIGlz
CiAJICogYWN0aXZlLCB3ZSB0cmFjayBvdXIgcnVudGltZSBwbSByZWZlcmVuY2UgZm9yIGxhdGVy
IHJlbGVhc2UuCkBAIC0xNjcxLDcgKzE2NjYsNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7
CiAJCSAqIGV4Y2VwdCBleGNsdXNpdmVfc3RyZWFtLgogCQkgKi8KIAkJc3RydWN0IG11dGV4IGxv
Y2s7Ci0JCXN0cnVjdCBsaXN0X2hlYWQgc3RyZWFtczsKIAogCQkvKgogCQkgKiBUaGUgc3RyZWFt
IGN1cnJlbnRseSB1c2luZyB0aGUgT0EgdW5pdC4gSWYgYWNjZXNzZWQKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMKaW5kZXggYzFiNzY0MjMzNzYxLi5kMThjZDMzMmFmYjcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jCkBAIC0xNDM1LDkgKzE0MzUsNiBAQCBzdGF0aWMgdm9pZCBnZW43X2luaXRf
b2FfYnVmZmVyKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJICovCiAJbWVtc2V0
KHN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyLCAwLCBPQV9CVUZGRVJfU0laRSk7CiAKLQkvKiBNYXli
ZSBtYWtlIC0+cG9sbGluIHBlci1zdHJlYW0gc3RhdGUgaWYgd2Ugc3VwcG9ydCBtdWx0aXBsZQot
CSAqIGNvbmN1cnJlbnQgc3RyZWFtcyBpbiB0aGUgZnV0dXJlLgotCSAqLwogCXN0cmVhbS0+cG9s
bGluID0gZmFsc2U7CiB9CiAKQEAgLTE0OTQsMTAgKzE0OTEsNiBAQCBzdGF0aWMgdm9pZCBnZW44
X2luaXRfb2FfYnVmZmVyKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJICovCiAJ
bWVtc2V0KHN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyLCAwLCBPQV9CVUZGRVJfU0laRSk7CiAKLQkv
KgotCSAqIE1heWJlIG1ha2UgLT5wb2xsaW4gcGVyLXN0cmVhbSBzdGF0ZSBpZiB3ZSBzdXBwb3J0
IG11bHRpcGxlCi0JICogY29uY3VycmVudCBzdHJlYW1zIGluIHRoZSBmdXR1cmUuCi0JICovCiAJ
c3RyZWFtLT5wb2xsaW4gPSBmYWxzZTsKIH0KIApAQCAtMjYzMyw4ICsyNjI2LDYgQEAgc3RhdGlj
IHZvaWQgaTkxNV9wZXJmX2Rlc3Ryb3lfbG9ja2VkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpz
dHJlYW0pCiAJaWYgKHN0cmVhbS0+b3BzLT5kZXN0cm95KQogCQlzdHJlYW0tPm9wcy0+ZGVzdHJv
eShzdHJlYW0pOwogCi0JbGlzdF9kZWwoJnN0cmVhbS0+bGluayk7Ci0KIAlpZiAoc3RyZWFtLT5j
dHgpCiAJCWk5MTVfZ2VtX2NvbnRleHRfcHV0KHN0cmVhbS0+Y3R4KTsKIApAQCAtMjc4Myw4ICsy
Nzc0LDYgQEAgaTkxNV9wZXJmX29wZW5faW9jdGxfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJZ290byBlcnJfZmxhZ3M7CiAJfQogCi0JbGlzdF9hZGQoJnN0cmVh
bS0+bGluaywgJmRldl9wcml2LT5wZXJmLnN0cmVhbXMpOwotCiAJaWYgKHBhcmFtLT5mbGFncyAm
IEk5MTVfUEVSRl9GTEFHX0ZEX0NMT0VYRUMpCiAJCWZfZmxhZ3MgfD0gT19DTE9FWEVDOwogCWlm
IChwYXJhbS0+ZmxhZ3MgJiBJOTE1X1BFUkZfRkxBR19GRF9OT05CTE9DSykKQEAgLTI3OTMsNyAr
Mjc4Miw3IEBAIGk5MTVfcGVyZl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAJc3RyZWFtX2ZkID0gYW5vbl9pbm9kZV9nZXRmZCgiW2k5MTVfcGVy
Zl0iLCAmZm9wcywgc3RyZWFtLCBmX2ZsYWdzKTsKIAlpZiAoc3RyZWFtX2ZkIDwgMCkgewogCQly
ZXQgPSBzdHJlYW1fZmQ7Ci0JCWdvdG8gZXJyX29wZW47CisJCWdvdG8gZXJyX2ZsYWdzOwogCX0K
IAogCWlmICghKHBhcmFtLT5mbGFncyAmIEk5MTVfUEVSRl9GTEFHX0RJU0FCTEVEKSkKQEAgLTI4
MDYsOCArMjc5NSw2IEBAIGk5MTVfcGVyZl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlyZXR1cm4gc3RyZWFtX2ZkOwogCi1lcnJfb3BlbjoK
LQlsaXN0X2RlbCgmc3RyZWFtLT5saW5rKTsKIGVycl9mbGFnczoKIAlpZiAoc3RyZWFtLT5vcHMt
PmRlc3Ryb3kpCiAJCXN0cmVhbS0+b3BzLT5kZXN0cm95KHN0cmVhbSk7CkBAIC0zNjQzLDcgKzM2
MzAsNiBAQCB2b2lkIGk5MTVfcGVyZl9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAl9CiAKIAlpZiAoZGV2X3ByaXYtPnBlcmYub3BzLmVuYWJsZV9tZXRyaWNfc2V0KSB7
Ci0JCUlOSVRfTElTVF9IRUFEKCZkZXZfcHJpdi0+cGVyZi5zdHJlYW1zKTsKIAkJbXV0ZXhfaW5p
dCgmZGV2X3ByaXYtPnBlcmYubG9jayk7CiAKIAkJb2Ffc2FtcGxlX3JhdGVfaGFyZF9saW1pdCA9
IDEwMDAgKgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
