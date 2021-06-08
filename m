Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CC939F13E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ACE26EB3E;
	Tue,  8 Jun 2021 08:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9766EB48;
 Tue,  8 Jun 2021 08:45:19 +0000 (UTC)
IronPort-SDR: V14RiMqfVVP7ABw2fbYSY/8bS9ffaCM9NDeHXHQkxVeyOLg6UPS9P8BtmZp9Uq9FOQN/ALhehU
 Nwf8ghJDBdJA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="202943849"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="202943849"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:45:18 -0700
IronPort-SDR: vNj5El4Mvna+gapAihrK01WM5/ADopvvf4yu7LmpXEjlWUipD6KUudxenOVKTtd0ga7bCksQsW
 ACd5+dLgFldA==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="440382112"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.215.170.251])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:45:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 09:44:28 +0100
Message-Id: <20210608084428.142676-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210608084428.142676-1-matthew.auld@intel.com>
References: <20210608084428.142676-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/ttm: restore min_page_size
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
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdHRtLmMgICAgICB8IDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5oICAgfCAzICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVn
aW9uX3R0bS5jICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9j
a19yZWdpb24uYyB8IDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwppbmRleCA1
YmYxZDE5NDVkZDYuLjNkZjczYzc5YWExOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90dG0uYwpAQCAtNjgwLDkgKzY4MCw5IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3Rf
aW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCSAqLwogCW9iai0+YmFzZS52
bWFfbm9kZS5kcml2ZXJfcHJpdmF0ZSA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOwogCXJldCA9IHR0
bV9ib19pbml0KCZpOTE1LT5iZGV2LCBpOTE1X2dlbV90b190dG0ob2JqKSwgc2l6ZSwKLQkJCSAg
Ym9fdHlwZSwgJmk5MTVfc3lzX3BsYWNlbWVudCwgMSwKKwkJCSAgYm9fdHlwZSwgJmk5MTVfc3lz
X3BsYWNlbWVudCwKKwkJCSAgbWVtLT5taW5fcGFnZV9zaXplID4+IFBBR0VfU0hJRlQsCiAJCQkg
IHRydWUsIE5VTEwsIE5VTEwsIGk5MTVfdHRtX2JvX2Rlc3Ryb3kpOwotCiAJaWYgKCFyZXQpCiAJ
CW9iai0+dHRtLmNyZWF0ZWQgPSB0cnVlOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmgKaW5kZXggYjA0ZmIyMjcyNmQ5Li4yYmU4NDMzZDM3M2EgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKQEAgLTQwLDggKzQwLDcgQEAg
ZW51bSBpbnRlbF9yZWdpb25faWQgewogI2RlZmluZSBSRUdJT05fU1RPTEVOX1NNRU0gICBCSVQo
SU5URUxfUkVHSU9OX1NUT0xFTl9TTUVNKQogI2RlZmluZSBSRUdJT05fU1RPTEVOX0xNRU0gICBC
SVQoSU5URUxfUkVHSU9OX1NUT0xFTl9MTUVNKQogCi0jZGVmaW5lIEk5MTVfQUxMT0NfTUlOX1BB
R0VfU0laRSAgQklUKDApCi0jZGVmaW5lIEk5MTVfQUxMT0NfQ09OVElHVU9VUyAgICAgQklUKDEp
CisjZGVmaW5lIEk5MTVfQUxMT0NfQ09OVElHVU9VUyAgICAgQklUKDApCiAKICNkZWZpbmUgZm9y
X2VhY2hfbWVtb3J5X3JlZ2lvbihtciwgaTkxNSwgaWQpIFwKIAlmb3IgKGlkID0gMDsgaWQgPCBB
UlJBWV9TSVpFKChpOTE1KS0+bW0ucmVnaW9ucyk7IGlkKyspIFwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3JlZ2lvbl90dG0uYwppbmRleCAyM2ExMzM2ZDIzMzUuLmFkNDNjYTkwYTQ2YiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYwpAQCAtMTUzLDcgKzE1Myw3IEBA
IGludGVsX3JlZ2lvbl90dG1fbm9kZV9hbGxvYyhzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAq
bWVtLAogCWludCByZXQ7CiAKIAltb2NrX2JvLmJhc2Uuc2l6ZSA9IHNpemU7Ci0JbW9ja19iby5w
YWdlX2FsaWdubWVudCA9IDE7CisJbW9ja19iby5wYWdlX2FsaWdubWVudCA9IG1lbS0+bWluX3Bh
Z2Vfc2l6ZSA+PiBQQUdFX1NISUZUOwogCXBsYWNlLmZsYWdzID0gZmxhZ3M7CiAKIAlyZXQgPSBt
YW4tPmZ1bmMtPmFsbG9jKG1hbiwgJm1vY2tfYm8sICZwbGFjZSwgJnJlcyk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdpb24uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3JlZ2lvbi5jCmluZGV4IGQzZTRlNjU3M2NiOS4u
NmNlMGY5ZGFjYWQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19yZWdpb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19y
ZWdpb24uYwpAQCAtMjgsNyArMjgsNyBAQCBzdGF0aWMgaW50IG1vY2tfcmVnaW9uX2dldF9wYWdl
cyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCXN0cnVjdCBzZ190YWJsZSAqcGFn
ZXM7CiAJaW50IGVycjsKIAotCWZsYWdzID0gSTkxNV9BTExPQ19NSU5fUEFHRV9TSVpFOworCWZs
YWdzID0gMDsKIAlpZiAob2JqLT5mbGFncyAmIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUykKIAkJ
ZmxhZ3MgfD0gVFRNX1BMX0ZMQUdfQ09OVElHVU9VUzsKIAotLSAKMi4yNi4zCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
