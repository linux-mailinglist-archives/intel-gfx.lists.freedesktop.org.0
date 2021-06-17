Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC173AAC3D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 08:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBEAD6E86E;
	Thu, 17 Jun 2021 06:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B786E86E;
 Thu, 17 Jun 2021 06:30:38 +0000 (UTC)
IronPort-SDR: +H7XHrUOVMaxWPKoU7/GnQ6M3iX1dIXxlHR5j7Zkp5S6Jv9QBYOfwaxtMjWDnxOb2ZzQnQLA8p
 JjyGgePJ52Jw==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="203287815"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="203287815"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 23:30:37 -0700
IronPort-SDR: ANp54UyJTfpC0h6mhXMyiipHKTdAdZr6+KLUTPEyKYeqhXF3qmuCC9n15umMym/T+a9wxfLOKV
 Ra+Ujef9uupQ==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="554302662"
Received: from vanderss-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.193])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 23:30:36 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 17 Jun 2021 08:30:09 +0200
Message-Id: <20210617063018.92802-4-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210617063018.92802-1-thomas.hellstrom@linux.intel.com>
References: <20210617063018.92802-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 03/12] drm/i915: Introduce a ww transaction
 helper
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
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW50cm9kdWNlIGEgZm9yX2k5MTVfZ2VtX3d3KCl7fSB1dGlsaXR5IHRvIGhlbHAgbWFrZSB0aGUg
Y29kZQphcm91bmQgYSB3dyB0cmFuc2FjdGlvbiBtb3JlIHJlYWRhYmxlLgoKU2lnbmVkLW9mZi1i
eTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmggfCAzMSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgKaW5kZXggZjJkODc2OWU0MTE4Li5mNmIx
YTc5NjY2N2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaApAQCAtMTEsMTEgKzExLDQw
IEBAIHN0cnVjdCBpOTE1X2dlbV93d19jdHggewogCXN0cnVjdCB3d19hY3F1aXJlX2N0eCBjdHg7
CiAJc3RydWN0IGxpc3RfaGVhZCBvYmpfbGlzdDsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqY29udGVuZGVkOwotCWJvb2wgaW50cjsKKwl1bnNpZ25lZCBzaG9ydCBpbnRyOworCXVuc2ln
bmVkIHNob3J0IGxvb3A7CiB9OwogCiB2b2lkIGk5MTVfZ2VtX3d3X2N0eF9pbml0KHN0cnVjdCBp
OTE1X2dlbV93d19jdHggKmN0eCwgYm9vbCBpbnRyKTsKIHZvaWQgaTkxNV9nZW1fd3dfY3R4X2Zp
bmkoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqY3R4KTsKIGludCBfX211c3RfY2hlY2sgaTkxNV9n
ZW1fd3dfY3R4X2JhY2tvZmYoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqY3R4KTsKIHZvaWQgaTkx
NV9nZW1fd3dfdW5sb2NrX3NpbmdsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsK
KworLyogSW50ZXJuYWwgZnVuY3Rpb25zIHVzZWQgYnkgdGhlIGlubGluZXMhIERvbid0IHVzZS4g
Ki8KK3N0YXRpYyBpbmxpbmUgaW50IF9faTkxNV9nZW1fd3dfZmluaShzdHJ1Y3QgaTkxNV9nZW1f
d3dfY3R4ICp3dywgaW50IGVycikKK3sKKwl3dy0+bG9vcCA9IDA7CisJaWYgKGVyciA9PSAtRURF
QURMSykgeworCQllcnIgPSBpOTE1X2dlbV93d19jdHhfYmFja29mZih3dyk7CisJCWlmICghZXJy
KQorCQkJd3ctPmxvb3AgPSAxOworCX0KKworCWlmICghd3ctPmxvb3ApCisJCWk5MTVfZ2VtX3d3
X2N0eF9maW5pKHd3KTsKKworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbmxpbmUgdm9pZAor
X19pOTE1X2dlbV93d19pbml0KHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LCBib29sIGludHIp
Cit7CisJaTkxNV9nZW1fd3dfY3R4X2luaXQod3csIGludHIpOworCXd3LT5sb29wID0gMTsKK30K
KworI2RlZmluZSBmb3JfaTkxNV9nZW1fd3coX3d3LCBfZXJyLCBfaW50cikJCQlcCisJZm9yIChf
X2k5MTVfZ2VtX3d3X2luaXQoX3d3LCBfaW50cik7IChfd3cpLT5sb29wOwlcCisJICAgICBfZXJy
ID0gX19pOTE1X2dlbV93d19maW5pKF93dywgX2VycikpCisKICNlbmRpZgotLSAKMi4zMS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
