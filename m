Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEED3A3331
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBC06EDD0;
	Thu, 10 Jun 2021 18:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5168F6EDD0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:33:17 +0000 (UTC)
IronPort-SDR: t4STgpPWbqhgt/CWJ6yqjFBRkOrWXRgKf0/KdHhtMO2f/pHBSmH4hG0MlgIjgaaOfXgtp445cr
 HUKZNIj+g67A==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="192683898"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="192683898"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:33:14 -0700
IronPort-SDR: 5efK2of9BrYtAyq3yYZc0UtxExEvn9YBqyhslwVRyfmIQbdA5SNKg96FHPQftwRtvZrboKyCXi
 2gBGI7jMMjEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448825959"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 10 Jun 2021 11:33:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:33:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:37 +0300
Message-Id: <20210610183237.3920-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/fbc: Allocate llb before cfb
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIHRoZSBsbGIgYWxsb2NhdGlvbiBoYXMgYSBmaXhlZCBzaXplLCBsZXQncyBncmFiIGl0IGJl
Zm9yZQp0aGUgcG90ZW50aWFsbHkgdmFyaWFibGUgc2l6ZWQgY2ZiLiBUaGF0IHNob3VsZCBhdm9p
ZCBzb21lIGFsbG9jYXRpb24KZmFpbHVyZSBjYXNlcyBvbmNlIHdlIGFsbG93IGRpZmZlcmVudCBj
b21wcmVzc2lvbiByYXRpb3MgZm9yIEZCQzEuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxOCArKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggYjZiZmI0NDM5YThiLi43ZGM3MmU0YTQ2NTYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtNDkyLDYgKzQ5
MiwxMyBAQCBzdGF0aWMgaW50IGludGVsX2ZiY19hbGxvY19jZmIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLAogCQkgICAgZHJt
X21tX25vZGVfYWxsb2NhdGVkKCZmYmMtPmNvbXByZXNzZWRfbGxiKSk7CiAKKwlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpIDwgNSAmJiAhSVNfRzRYKGRldl9wcml2KSkgeworCQlyZXQgPSBpOTE1
X2dlbV9zdG9sZW5faW5zZXJ0X25vZGUoZGV2X3ByaXYsICZmYmMtPmNvbXByZXNzZWRfbGxiLAor
CQkJCQkJICA0MDk2LCA0MDk2KTsKKwkJaWYgKHJldCkKKwkJCWdvdG8gZXJyOworCX0KKwogCXJl
dCA9IGZpbmRfY29tcHJlc3Npb25fbGltaXQoZGV2X3ByaXYsIHNpemUsIGZiX2NwcCk7CiAJaWYg
KCFyZXQpCiAJCWdvdG8gZXJyX2xsYjsKQEAgLTUwMiwyMiArNTA5LDE1IEBAIHN0YXRpYyBpbnQg
aW50ZWxfZmJjX2FsbG9jX2NmYihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAK
IAlmYmMtPmxpbWl0ID0gcmV0OwogCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDUgJiYg
IUlTX0c0WChkZXZfcHJpdikpIHsKLQkJcmV0ID0gaTkxNV9nZW1fc3RvbGVuX2luc2VydF9ub2Rl
KGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2xsYiwKLQkJCQkJCSAgNDA5NiwgNDA5Nik7Ci0J
CWlmIChyZXQpCi0JCQlnb3RvIGVycl9mYjsKLQl9Ci0KIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwKIAkJICAgICJyZXNlcnZlZCAlbGx1IGJ5dGVzIG9mIGNvbnRpZ3VvdXMgc3RvbGVuIHNw
YWNlIGZvciBGQkMsIGxpbWl0OiAlZFxuIiwKIAkJICAgIGZiYy0+Y29tcHJlc3NlZF9mYi5zaXpl
LCBmYmMtPmxpbWl0KTsKIAogCXJldHVybiAwOwogCi1lcnJfZmI6Ci0JaTkxNV9nZW1fc3RvbGVu
X3JlbW92ZV9ub2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2ZiKTsKIGVycl9sbGI6CisJ
aTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2xs
Yik7CitlcnI6CiAJaWYgKGRybV9tbV9pbml0aWFsaXplZCgmZGV2X3ByaXYtPm1tLnN0b2xlbikp
CiAJCWRybV9pbmZvX29uY2UoJmRldl9wcml2LT5kcm0sICJub3QgZW5vdWdoIHN0b2xlbiBzcGFj
ZSBmb3IgY29tcHJlc3NlZCBidWZmZXIgKG5lZWQgJWQgbW9yZSBieXRlcyksIGRpc2FibGluZy4g
SGludDogeW91IG1heSBiZSBhYmxlIHRvIGluY3JlYXNlIHN0b2xlbiBtZW1vcnkgc2l6ZSBpbiB0
aGUgQklPUyB0byBhdm9pZCB0aGlzLlxuIiwgc2l6ZSk7CiAJcmV0dXJuIC1FTk9TUEM7Ci0tIAoy
LjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
