Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459C93A7D59
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 13:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D973F89B66;
	Tue, 15 Jun 2021 11:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C679489AE6;
 Tue, 15 Jun 2021 11:36:14 +0000 (UTC)
IronPort-SDR: FSryRWtpJB9cisFle0nBNMnbN+WTzvRq1344Y5qmES1Biu/TRYPY7VcsO8CqEiTuLt6GU2IjRO
 nW6jUoqXiBdw==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="205789708"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="205789708"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 04:36:14 -0700
IronPort-SDR: yLEj6n/IPDGnS9TnCV29xh9JXiodretEJJsRCifTlhX+FoqZloy+Fwp8Pc0Ky+3RIper0+mmJ8
 F41UTUy9+sJg==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="421095275"
Received: from vgribano-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.53])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 04:36:12 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 15 Jun 2021 13:36:00 +0200
Message-Id: <20210615113600.30660-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Perform execbuffer object locking as
 a separate step
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

VG8gaGVscCBhdm9pZCBldmljdGluZyBhbHJlYWR5IHJlc2lkZW50IGJ1ZmZlcnMgZnJvbSB0aGUg
YmF0Y2ggd2UncmUKcHJvY2Vzc2luZywgcGVyZm9ybSBsb2NraW5nIGFzIGEgc2VwYXJhdGUgc3Rl
cC4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgICAgfCAyNSArKysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCAyMDFmZWQxOWQxMjAuLjM5NGViNDBjOTViNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBA
IC05MjIsMjEgKzkyMiwzOCBAQCBzdGF0aWMgaW50IGViX2xvb2t1cF92bWFzKHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViKQogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBpbnQgZWJfdmFsaWRh
dGVfdm1hcyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3N0YXRpYyBpbnQgZWJfbG9ja192
bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogewogCXVuc2lnbmVkIGludCBpOwogCWlu
dCBlcnI7CiAKLQlJTklUX0xJU1RfSEVBRCgmZWItPnVuYm91bmQpOwotCiAJZm9yIChpID0gMDsg
aSA8IGViLT5idWZmZXJfY291bnQ7IGkrKykgewotCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNf
b2JqZWN0MiAqZW50cnkgPSAmZWItPmV4ZWNbaV07CiAJCXN0cnVjdCBlYl92bWEgKmV2ID0gJmVi
LT52bWFbaV07CiAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZXYtPnZtYTsKIAogCQllcnIgPSBp
OTE1X2dlbV9vYmplY3RfbG9jayh2bWEtPm9iaiwgJmViLT53dyk7CiAJCWlmIChlcnIpCiAJCQly
ZXR1cm4gZXJyOworCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGViX3ZhbGlkYXRl
X3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCit7CisJdW5zaWduZWQgaW50IGk7CisJ
aW50IGVycjsKKworCUlOSVRfTElTVF9IRUFEKCZlYi0+dW5ib3VuZCk7CisKKwllcnIgPSBlYl9s
b2NrX3ZtYXMoZWIpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlmb3IgKGkgPSAwOyBp
IDwgZWItPmJ1ZmZlcl9jb3VudDsgaSsrKSB7CisJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19v
YmplY3QyICplbnRyeSA9ICZlYi0+ZXhlY1tpXTsKKwkJc3RydWN0IGViX3ZtYSAqZXYgPSAmZWIt
PnZtYVtpXTsKKwkJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwogCiAJCWVyciA9IGVi
X3Bpbl92bWEoZWIsIGVudHJ5LCBldik7CiAJCWlmIChlcnIgPT0gLUVERUFETEspCi0tIAoyLjMx
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
