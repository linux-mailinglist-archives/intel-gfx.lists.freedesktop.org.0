Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 496DC71C29
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 17:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FD76E30E;
	Tue, 23 Jul 2019 15:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5896E2F9;
 Tue, 23 Jul 2019 15:49:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 08:49:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="177331109"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jul 2019 08:49:35 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 08:49:33 -0700
Message-Id: <20190723154934.26967-9-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190723154934.26967-1-stuart.summers@intel.com>
References: <20190723154934.26967-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Add new function to copy
 subslices for a slice
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
Cc: intel-gfx-trybot@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIGNvcHkgc3Vic2xpY2VzIGZvciBhIHNwZWNpZmllZCBzbGlj
ZQpiZXR3ZWVuIGludGVsX3NzZXUgc3RydWN0dXJlcyBmb3IgdGhlIHB1cnBvc2Ugb2YgZGV0ZXJt
aW5pbmcKcG93ZXItZ2F0ZSBzdGF0dXMuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jIHwgMjEgKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCmluZGV4IGE2MWQzMWZjNDgyZi4uN2Y4NDI1MDZiOWVhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwpAQCAtMzgwNiw2ICszODA2LDE1IEBAIGk5MTVfY2FjaGVfc2hhcmluZ19z
ZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQKK2lu
dGVsX3NzZXVfY29weV9zdWJzbGljZXMoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUs
IGludCBzbGljZSwKKwkJCSAgdTggKnRvX21hc2spCit7CisJaW50IG9mZnNldCA9IHNsaWNlICog
c3NldS0+c3Nfc3RyaWRlOworCisJbWVtY3B5KCZ0b19tYXNrW29mZnNldF0sICZzc2V1LT5zdWJz
bGljZV9tYXNrW29mZnNldF0sIHNzZXUtPnNzX3N0cmlkZSk7Cit9CisKIERFRklORV9TSU1QTEVf
QVRUUklCVVRFKGk5MTVfY2FjaGVfc2hhcmluZ19mb3BzLAogCQkJaTkxNV9jYWNoZV9zaGFyaW5n
X2dldCwgaTkxNV9jYWNoZV9zaGFyaW5nX3NldCwKIAkJCSIlbGx1XG4iKTsKQEAgLTM4NzksNyAr
Mzg4OCw3IEBAIHN0YXRpYyB2b2lkIGdlbjEwX3NzZXVfZGV2aWNlX3N0YXR1cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQljb250aW51ZTsKIAogCQlzc2V1LT5zbGljZV9t
YXNrIHw9IEJJVChzKTsKLQkJc3NldS0+c3Vic2xpY2VfbWFza1tzXSA9IGluZm8tPnNzZXUuc3Vi
c2xpY2VfbWFza1tzXTsKKwkJaW50ZWxfc3NldV9jb3B5X3N1YnNsaWNlcygmaW5mby0+c3NldSwg
cywgc3NldS0+c3Vic2xpY2VfbWFzayk7CiAKIAkJZm9yIChzcyA9IDA7IHNzIDwgaW5mby0+c3Nl
dS5tYXhfc3Vic2xpY2VzOyBzcysrKSB7CiAJCQl1bnNpZ25lZCBpbnQgZXVfY250OwpAQCAtMzkz
MCw3ICszOTM5LDggQEAgc3RhdGljIHZvaWQgZ2VuOV9zc2V1X2RldmljZV9zdGF0dXMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlzc2V1LT5zbGljZV9tYXNrIHw9IEJJVChz
KTsKIAogCQlpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpCi0JCQlzc2V1LT5zdWJzbGljZV9tYXNr
W3NdID0gaW5mby0+c3NldS5zdWJzbGljZV9tYXNrW3NdOworCQkJaW50ZWxfc3NldV9jb3B5X3N1
YnNsaWNlcygmaW5mby0+c3NldSwgcywKKwkJCQkJCSAgc3NldS0+c3Vic2xpY2VfbWFzayk7CiAK
IAkJZm9yIChzcyA9IDA7IHNzIDwgaW5mby0+c3NldS5tYXhfc3Vic2xpY2VzOyBzcysrKSB7CiAJ
CQl1bnNpZ25lZCBpbnQgZXVfY250OwpAQCAtMzk2NiwxMCArMzk3Niw5IEBAIHN0YXRpYyB2b2lk
IGJyb2Fkd2VsbF9zc2V1X2RldmljZV9zdGF0dXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWlmIChzc2V1LT5zbGljZV9tYXNrKSB7CiAJCXNzZXUtPmV1X3Blcl9zdWJzbGlj
ZSA9CiAJCQlpbmZvLT5zc2V1LmV1X3Blcl9zdWJzbGljZTsKLQkJZm9yIChzID0gMDsgcyA8IGZs
cyhzc2V1LT5zbGljZV9tYXNrKTsgcysrKSB7Ci0JCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0K
LQkJCQlpbmZvLT5zc2V1LnN1YnNsaWNlX21hc2tbc107Ci0JCX0KKwkJZm9yIChzID0gMDsgcyA8
IGZscyhzc2V1LT5zbGljZV9tYXNrKTsgcysrKQorCQkJaW50ZWxfc3NldV9jb3B5X3N1YnNsaWNl
cygmaW5mby0+c3NldSwgcywKKwkJCQkJCSAgc3NldS0+c3Vic2xpY2VfbWFzayk7CiAJCXNzZXUt
PmV1X3RvdGFsID0gc3NldS0+ZXVfcGVyX3N1YnNsaWNlICoKIAkJCQkgaW50ZWxfc3NldV9zdWJz
bGljZV90b3RhbChzc2V1KTsKIAotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
