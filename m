Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AECB36E8E9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 12:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCD66EE0A;
	Thu, 29 Apr 2021 10:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112006EE08;
 Thu, 29 Apr 2021 10:35:18 +0000 (UTC)
IronPort-SDR: +SEVRDttgEk7/BwF4BgKNl84C2A6vOP645tjB/hola6rKyKooBwCAan+4pGWa8V8/YN5e+3yOa
 L4VdoCEGn+ag==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="184449725"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="184449725"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 03:35:17 -0700
IronPort-SDR: sjlrzXmI+1kqUkG5HqqOEq2IVwEbOQ7dJ/yZtjaR8ZM4RTYfYT5zxlx6sxMimV4qe2ec5k9snE
 N0fIOC9aPr+Q==
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="458694241"
Received: from sbfennel-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.12.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 03:35:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 11:30:55 +0100
Message-Id: <20210429103056.407067-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210429103056.407067-1-matthew.auld@intel.com>
References: <20210429103056.407067-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/gem: clear userspace buffers
 for LMEM
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
Cc: Lionel Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 mesa-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsIHVzZXJzcGFjZSBvYmplY3RzIG11c3QgYmUgY2xlYXJlZCB3aGVuIGFsbG9jYXRpbmcgdGhl
IGJhY2tpbmcgc3RvcmUsCmJlZm9yZSB0aGV5IGFyZSBwb3RlbnRpYWxseSB2aXNpYmxlIHRvIHVz
ZXJzcGFjZS4gIEZvciBub3cgdXNlIHNpbXBsZQpDUFUgYmFzZWQgY2xlYXJpbmcgdG8gZG8gdGhp
cyBmb3IgZGV2aWNlIGxvY2FsLW1lbW9yeSBvYmplY3RzLCBub3RlIHRoYXQKaW4gdGhlIG5lYXIg
ZnV0dXJlIHRoaXMgd2lsbCBpbnN0ZWFkIHVzZSB0aGUgYmxpdHRlciBlbmdpbmUuCgpTaWduZWQt
b2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKb29uYXMg
TGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTGlvbmVs
IExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AbGludXguaW50ZWwuY29tPgpDYzogSm9u
IEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KQ2M6IEpvcmRhbiBKdXN0ZW4g
PGpvcmRhbi5sLmp1c3RlbkBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGludGVsLmNvbT4KQ2M6IEtlbm5ldGggR3JhdW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3Jn
PgpDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgpDYzogRGF2ZSBBaXJs
aWUgPGFpcmxpZWRAZ21haWwuY29tPgpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpDYzogbWVzYS1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnClJldmlld2VkLWJ5OiBLZW5uZXRo
IEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMgfCAxMiArKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NyZWF0ZS5jCmluZGV4IDk1N2Y3OTBjNjQ0Yi4uZjY3MjlmZWFlNTgyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jCkBAIC03MSw2ICs3
MSw3IEBAIHN0YXRpYyBpbnQKIGk5MTVfZ2VtX3NldHVwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosIHU2NCBzaXplKQogewogCXN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptciA9
IG9iai0+bW0ucGxhY2VtZW50c1swXTsKKwl1bnNpZ25lZCBpbnQgZmxhZ3M7CiAJaW50IHJldDsK
IAogCXNpemUgPSByb3VuZF91cChzaXplLCBvYmplY3RfbWF4X3BhZ2Vfc2l6ZShvYmopKTsKQEAg
LTgzLDcgKzg0LDE2IEBAIGk5MTVfZ2VtX3NldHVwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosIHU2NCBzaXplKQogCWlmIChpOTE1X2dlbV9vYmplY3Rfc2l6ZV8yYmlnKHNpemUpKQog
CQlyZXR1cm4gLUUyQklHOwogCi0JcmV0ID0gbXItPm9wcy0+aW5pdF9vYmplY3QobXIsIG9iaiwg
c2l6ZSwgMCk7CisJLyoKKwkgKiBGb3Igbm93IHJlc29ydCB0byBDUFUgYmFzZWQgY2xlYXJpbmcg
Zm9yIGRldmljZSBsb2NhbC1tZW1vcnksIGluIHRoZQorCSAqIG5lYXIgZnV0dXJlIHRoaXMgd2ls
bCB1c2UgdGhlIGJsaXR0ZXIgZW5naW5lIGZvciBhY2NlbGVyYXRlZCwgR1BVCisJICogYmFzZWQg
Y2xlYXJpbmcuCisJICovCisJZmxhZ3MgPSAwOworCWlmIChtci0+dHlwZSA9PSBJTlRFTF9NRU1P
UllfTE9DQUwpCisJCWZsYWdzID0gSTkxNV9CT19BTExPQ19DUFVfQ0xFQVI7CisKKwlyZXQgPSBt
ci0+b3BzLT5pbml0X29iamVjdChtciwgb2JqLCBzaXplLCBmbGFncyk7CiAJaWYgKHJldCkKIAkJ
cmV0dXJuIHJldDsKIAotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
