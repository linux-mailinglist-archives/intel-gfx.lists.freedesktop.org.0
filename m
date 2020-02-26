Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0480F170651
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 18:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF806EB46;
	Wed, 26 Feb 2020 17:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23DEF6EB46
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 17:40:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 09:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,488,1574150400"; d="scan'208";a="271821809"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Feb 2020 09:40:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2020 19:40:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 19:40:38 +0200
Message-Id: <20200226174038.8391-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200226174038.8391-1-ville.syrjala@linux.intel.com>
References: <20200226174038.8391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Read out hrawclk on all gen3+
 platforms
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkn
dmUgY2hlY2tlZCBhIGJ1bmNoIG9mIGdlbjMvNCBtYWNoaW5lcyBhbmQgYWxsIHNlZW0gdG8gaGF2
ZQpjb25zaXN0ZW50IEZTQiBmcmVxdWVuY3kgaW5mb3JtYXRpb24gaW4gdGhlIENMS0NGRyByZWdp
c3Rlci4KU28gbGV0J3MgcmVhZCBvdXQgaHJhd2NsayBvbiBhbGwgZ2VuMysgbWFjaGluZXMuIEFs
dGhvdWdoCmFwYXJ0IGZyb20gZzR4L3BudiBhdXgvcHBzIGRpdmlkZXJzIHdlIG9ubHkgcmVhbGx5
IG5lZWQgdGhpcwpmb3IgZm9yIGk5NjVnL2dtIGNzIHRpbWVzdGFtcCBpbmNyZW1lbnQuCgpUaGUg
Q0xLQ0ZHIG1lbW9yeSBjbG9jayB2YWx1ZXMgc2VlbSBsZXNzIGNvbnNpc3RlbnQgYnV0IHdlCmRv
bid0IGNhcmUgYWJvdXQgdGhvc2UgaGVyZS4KCkZvciBwb3N0ZXJpdHkgaGVyZSdzIGEgbGlzdCBv
ZiBDTEtDRkcgdnMuIEZTQiBkdW1wcyBmcm9tCmEgYnVuY2ggb2YgbWFjaGluZXMgKG9ubHkgbWlz
c2luZyBscHQgZm9yIGEgZnVsbCBzZXQpOgptYWNoaW5lIENMS0NGRyAgICAgRlNCCmFsdiAgICAg
MHgwMDAwMTQxMSA1MzMKZ2RnMSAgICAweDIwMDAwMDIyIDgwMApnZGcyICAgIDB4MjAwMDAwMjIg
ODAwCmNzdCAgICAgMHgwMDAxMDA0MyA2NjYKYmxiICAgICAweDAwMDAyMDM0IDEzMzMKcG52MSAg
ICAweDAwMDAwNDIzIDY2NgpwbnYyICAgIDB4MDAwMDA0MzMgNjY2Cjk2NWdtICAgMHgwMDAwNDM0
MiA4MDAKOTQ2Z3ogICAweDAwMDAwMDIyIDgwMAo5NjVnICAgIDB4MDAwMDA0MjIgODAwCmczNSAg
ICAgMHgwMDAwMDQzMCAxMDY2CiAgICAgICAgMHgwMDAwMDQzNCAxMzMzCmN0ZzEgICAgMHgwMDY0
NDA1NiAxMDY2CmN0ZzIgICAgMHgwMDY0NDA2NiAxMDY2CmVsazEgICAgMHgwMDAxMjQyMCAxMDY2
CiAgICAgICAgMHgwMDAxMjQyNCAxMzMzCiAgICAgICAgMHgwMDAxMjQzNiAxNjAwCiAgICAgICAg
MHgwMDAxMjQyMiA4MDAKZWxrMiAgICAweDAwMDEyMDQwIDEwNjYKCkNjOiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IGE3MWU2NTMxMmJhMC4uYTAwOGFhMjVjYzky
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0yNjc4
LDcgKzI2NzgsNyBAQCBzdGF0aWMgaW50IHZsdl9ocmF3Y2xrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJCQkgICAgICBDQ0tfRElTUExBWV9SRUZfQ0xPQ0tfQ09OVFJPTCk7
CiB9CiAKLXN0YXRpYyBpbnQgZzR4X2hyYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQorc3RhdGljIGludCBpOXh4X2hyYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogewogCXUzMiBjbGtjZmc7CiAKQEAgLTI3MzUsOCArMjczNSw4IEBAIHUzMiBp
bnRlbF9yZWFkX3Jhd2NsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWZy
ZXEgPSBwY2hfcmF3Y2xrKGRldl9wcml2KTsKIAllbHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9w
cml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKIAkJZnJlcSA9IHZsdl9ocmF3Y2xrKGRl
dl9wcml2KTsKLQllbHNlIGlmIChJU19HNFgoZGV2X3ByaXYpIHx8IElTX1BJTkVWSUVXKGRldl9w
cml2KSkKLQkJZnJlcSA9IGc0eF9ocmF3Y2xrKGRldl9wcml2KTsKKwllbHNlIGlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDMpCisJCWZyZXEgPSBpOXh4X2hyYXdjbGsoZGV2X3ByaXYpOwogCWVs
c2UKIAkJLyogbm8gcmF3Y2xrIG9uIG90aGVyIHBsYXRmb3Jtcywgb3Igbm8gbmVlZCB0byBrbm93
IGl0ICovCiAJCXJldHVybiAwOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
