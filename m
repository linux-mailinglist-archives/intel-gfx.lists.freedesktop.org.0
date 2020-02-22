Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAEC168BEE
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061186E393;
	Sat, 22 Feb 2020 02:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395BD6F5AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315527"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:32 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:09 -0800
Message-Id: <20200222020815.50599-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/tgl: Implement Wa_1409804808
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

VGhpcyB3b3JrYXJvdW5kIHRoZSBDUyBub3QgZG9uZSBpc3N1ZSBvbiBQSVBFX0NPTlRST0wuCgpC
U3BlYzogNTI4OTAKQlNwZWM6IDQ2MjE4CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgfCA1ICsrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpp
bmRleCA4ODdlMGRjNzAxZjcuLjU3YTVhMzllZTkwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMzY3LDYgKzEzNjcsMTIgQEAgcmNzX2VuZ2lu
ZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQogCQkJICAgICBHRU4xMl9ESVNBQkxFX0VBUkxZX1JFQUQpOwogCX0KIAorCWlm
IChJU19USUdFUkxBS0UoaTkxNSkpIHsKKwkJLyogV2FfMTQwOTgwNDgwODp0Z2wgKi8KKwkJd2Ff
bWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJQ0tFTjIsCisJCQkgICAgIEdFTjEyX1BVU0hfQ09O
U1RBTlRfREVSRUZFUkVOQ0VfSE9MRF9ESVNBQkxFKTsKKwl9CisKIAlpZiAoSVNfR0VOKGk5MTUs
IDExKSkgewogCQkvKiBUaGlzIGlzIG5vdCBhbiBXYS4gRW5hYmxlIGZvciBiZXR0ZXIgaW1hZ2Ug
cXVhbGl0eSAqLwogCQl3YV9tYXNrZWRfZW4od2FsLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5k
ZXggZjQ1YjVlODZlYzYzLi5jZmMyMzhmZmQ0YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApA
QCAtOTE0OSw4ICs5MTQ5LDkgQEAgZW51bSB7CiAjZGVmaW5lICAgVEhST1RUTEVfMTJfNQkJCQko
NyA8PCAyKQogI2RlZmluZSAgIERJU0FCTEVfRUFSTFlfRU9UCQkJKDEgPDwgMSkKIAotI2RlZmlu
ZSBHRU43X1JPV19DSElDS0VOMgkJX01NSU8oMHhlNGY0KQotI2RlZmluZSBHRU4xMl9ESVNBQkxF
X0VBUkxZX1JFQUQJQklUKDE0KQorI2RlZmluZSBHRU43X1JPV19DSElDS0VOMgkJCQlfTU1JTygw
eGU0ZjQpCisjZGVmaW5lIEdFTjEyX0RJU0FCTEVfRUFSTFlfUkVBRAkJCUJJVCgxNCkKKyNkZWZp
bmUgR0VOMTJfUFVTSF9DT05TVEFOVF9ERVJFRkVSRU5DRV9IT0xEX0RJU0FCTEUJQklUKDgpCiAK
ICNkZWZpbmUgR0VON19ST1dfQ0hJQ0tFTjJfR1QyCQlfTU1JTygweGY0ZjQpCiAjZGVmaW5lICAg
RE9QX0NMT0NLX0dBVElOR19ESVNBQkxFCSgxIDw8IDApCi0tIAoyLjI1LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
