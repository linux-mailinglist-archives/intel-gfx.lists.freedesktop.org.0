Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7473A9EFD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 17:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0506E53E;
	Wed, 16 Jun 2021 15:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE4689A0E;
 Wed, 16 Jun 2021 15:25:34 +0000 (UTC)
IronPort-SDR: V4zLw83E/puk1/WpoBL3yfGfsj8guuWk0ExwR91UUFyNgTbmRalg2IlCNEghFI7RDytmLdaSaI
 MckAq1pboRZg==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="203175182"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="203175182"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 08:25:34 -0700
IronPort-SDR: u0Vhzvyumv7ly7XYIGk76LM7Dj+BU50ub5jYeMjaVtmgU9jTwudR37XiptpeOzzQEOmBjVnO5e
 6Yu54NIo9ntw==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="479129925"
Received: from mrapopor-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.236.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 08:25:33 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 16:25:01 +0100
Message-Id: <20210616152501.394518-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210616152501.394518-1-matthew.auld@intel.com>
References: <20210616152501.394518-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 7/7] drm/i915/ttm: restore min_page_size
 behaviour
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugbm93IGhhdmUgYm8tPnBhZ2VfYWxpZ25tZW50IHdoaWNoIHBlcmZlY3RseSBkZXNjcmliZXMg
d2hhdCB3ZSBuZWVkIGlmCndlIGhhdmUgbWluIHBhZ2Ugc2l6ZSByZXN0cmljdGlvbnMgZm9yIGxt
ZW0uIFdlIGNhbiBhbHNvIGRyb3AgdGhlIGZsYWcKaGVyZSwgc2luY2UgdGhpcyBpcyB0aGUgZGVm
YXVsdCBiZWhhdmlvdXIgZm9yIGFsbCBvYmplY3RzLgoKdjIoVGhvbWFzKToKICAgIC0gYm8tPnBh
Z2VfYWxpZ25tZW50IGlzIGluIHBhZ2UgdW5pdHMKClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMu
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgICB8IDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgfCAzICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcmVnaW9uX3R0bS5jICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvbW9ja19yZWdpb24uYyB8IDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
YwppbmRleCBiODczOWYzZDM0NjIuLjkzNjZiMThkMWJjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYwpAQCAtNjcyLDkgKzY3Miw5IEBAIGludCBfX2k5MTVfZ2VtX3R0
bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCSAqLwogCW9i
ai0+YmFzZS52bWFfbm9kZS5kcml2ZXJfcHJpdmF0ZSA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOwog
CXJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5iZGV2LCBpOTE1X2dlbV90b190dG0ob2JqKSwgc2l6
ZSwKLQkJCSAgYm9fdHlwZSwgJmk5MTVfc3lzX3BsYWNlbWVudCwgMSwKKwkJCSAgYm9fdHlwZSwg
Jmk5MTVfc3lzX3BsYWNlbWVudCwKKwkJCSAgbWVtLT5taW5fcGFnZV9zaXplID4+IFBBR0VfU0hJ
RlQsCiAJCQkgIHRydWUsIE5VTEwsIE5VTEwsIGk5MTVfdHRtX2JvX2Rlc3Ryb3kpOwotCiAJaWYg
KCFyZXQpCiAJCW9iai0+dHRtLmNyZWF0ZWQgPSB0cnVlOwogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKaW5kZXggYjA0ZmIyMjcyNmQ5Li4yYmU4NDMzZDM3M2Eg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKQEAgLTQwLDgg
KzQwLDcgQEAgZW51bSBpbnRlbF9yZWdpb25faWQgewogI2RlZmluZSBSRUdJT05fU1RPTEVOX1NN
RU0gICBCSVQoSU5URUxfUkVHSU9OX1NUT0xFTl9TTUVNKQogI2RlZmluZSBSRUdJT05fU1RPTEVO
X0xNRU0gICBCSVQoSU5URUxfUkVHSU9OX1NUT0xFTl9MTUVNKQogCi0jZGVmaW5lIEk5MTVfQUxM
T0NfTUlOX1BBR0VfU0laRSAgQklUKDApCi0jZGVmaW5lIEk5MTVfQUxMT0NfQ09OVElHVU9VUyAg
ICAgQklUKDEpCisjZGVmaW5lIEk5MTVfQUxMT0NfQ09OVElHVU9VUyAgICAgQklUKDApCiAKICNk
ZWZpbmUgZm9yX2VhY2hfbWVtb3J5X3JlZ2lvbihtciwgaTkxNSwgaWQpIFwKIAlmb3IgKGlkID0g
MDsgaWQgPCBBUlJBWV9TSVpFKChpOTE1KS0+bW0ucmVnaW9ucyk7IGlkKyspIFwKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYwppbmRleCAwNTIyNTNjODFlOTguLmQ1M2Q3OGRl
YzJiZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYwpAQCAtMTY3LDcg
KzE2Nyw3IEBAIGludGVsX3JlZ2lvbl90dG1fcmVzb3VyY2VfYWxsb2Moc3RydWN0IGludGVsX21l
bW9yeV9yZWdpb24gKm1lbSwKIAlpbnQgcmV0OwogCiAJbW9ja19iby5iYXNlLnNpemUgPSBzaXpl
OwotCW1vY2tfYm8ucGFnZV9hbGlnbm1lbnQgPSAxOworCW1vY2tfYm8ucGFnZV9hbGlnbm1lbnQg
PSBtZW0tPm1pbl9wYWdlX3NpemUgPj4gUEFHRV9TSElGVDsKIAlwbGFjZS5mbGFncyA9IGZsYWdz
OwogCiAJcmV0ID0gbWFuLT5mdW5jLT5hbGxvYyhtYW4sICZtb2NrX2JvLCAmcGxhY2UsICZyZXMp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9u
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdpb24uYwppbmRleCAz
YjMyNjQzMTFjOTEuLmZhNzg2ZGVkZTYwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL21vY2tfcmVnaW9uLmMKQEAgLTI4LDcgKzI4LDcgQEAgc3RhdGljIGludCBtb2NrX3Jl
Z2lvbl9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlzdHJ1Y3Qg
c2dfdGFibGUgKnBhZ2VzOwogCWludCBlcnI7CiAKLQlmbGFncyA9IEk5MTVfQUxMT0NfTUlOX1BB
R0VfU0laRTsKKwlmbGFncyA9IDA7CiAJaWYgKG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NP
TlRJR1VPVVMpCiAJCWZsYWdzIHw9IFRUTV9QTF9GTEFHX0NPTlRJR1VPVVM7CiAKLS0gCjIuMjYu
MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
