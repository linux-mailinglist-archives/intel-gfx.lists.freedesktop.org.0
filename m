Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC162930B2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 23:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF976EB31;
	Mon, 19 Oct 2020 21:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA6166EB31
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 21:43:49 +0000 (UTC)
IronPort-SDR: PATXcFsMQi6tibFlMgAHg/r4AROQj2AhaKRRgijFwcs1sK2jjIaB+RoIK0VSq3nWXRm2qV+Bxe
 n/QtJ5C4jCLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154050229"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="154050229"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 14:43:49 -0700
IronPort-SDR: o5KzKaP78pE4gOSlaYAmoAsnJ8JNL8KxvgDHrrMizvsSJRWrhdVSOXCYdhsg+M+3pEZekXkTzk
 6prcSxEoSmTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="332023179"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Oct 2020 14:43:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 00:43:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 00:43:34 +0300
Message-Id: <20201019214337.19330-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
References: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Extract hsw_panel_transcoders()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgdGhlICJwYW5lbCB0cmFuc2NvZGVyIiBiaXRtYXNrIGludG8gYSBoZWxwZXIuIFdlJ2xs
CmhhdmUgYSBjb3VwbGUgb2YgdXNlcyBmb3IgdGhpcyBsYXRlci4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNiArKysrKysrKysrKy0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDMwMzAz
MDg4YTM0NC4uMjQyNmE0NTJiM2JiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTEwMzIsNiArMTEwMzIsMTYgQEAgc3RhdGljIHZvaWQgaHN3
X2dldF9kZGlfcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0
IHBvcnQsCiAJcGlwZV9jb25maWctPnNoYXJlZF9kcGxsID0gaW50ZWxfZ2V0X3NoYXJlZF9kcGxs
X2J5X2lkKGRldl9wcml2LCBpZCk7CiB9CiAKK3N0YXRpYyB1OCBoc3dfcGFuZWxfdHJhbnNjb2Rl
cnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJdTggcGFuZWxfdHJhbnNjb2Rl
cl9tYXNrID0gQklUKFRSQU5TQ09ERVJfRURQKTsKKworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0g
MTEpCisJCXBhbmVsX3RyYW5zY29kZXJfbWFzayB8PSBCSVQoVFJBTlNDT0RFUl9EU0lfMCkgfCBC
SVQoVFJBTlNDT0RFUl9EU0lfMSk7CisKKwlyZXR1cm4gcGFuZWxfdHJhbnNjb2Rlcl9tYXNrOwor
fQorCiBzdGF0aWMgYm9vbCBoc3dfZ2V0X3RyYW5zY29kZXJfc3RhdGUoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCiAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcs
CiAJCQkJICAgICB1NjQgKnBvd2VyX2RvbWFpbl9tYXNrLApAQCAtMTEwNDAsMTYgKzExMDUwLDEy
IEBAIHN0YXRpYyBib29sIGhzd19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwogCWVudW0gaW50
ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gcG93ZXJfZG9tYWluOwotCXVuc2lnbmVkIGxvbmcgcGFu
ZWxfdHJhbnNjb2Rlcl9tYXNrID0gQklUKFRSQU5TQ09ERVJfRURQKTsKKwl1OCBwYW5lbF90cmFu
c2NvZGVyX21hc2sgPSBoc3dfcGFuZWxfdHJhbnNjb2RlcnMoZGV2X3ByaXYpOwogCXVuc2lnbmVk
IGxvbmcgZW5hYmxlZF9wYW5lbF90cmFuc2NvZGVycyA9IDA7CiAJZW51bSB0cmFuc2NvZGVyIHBh
bmVsX3RyYW5zY29kZXI7CiAJaW50ZWxfd2FrZXJlZl90IHdmOwogCXUzMiB0bXA7CiAKLQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKLQkJcGFuZWxfdHJhbnNjb2Rlcl9tYXNrIHw9Ci0J
CQlCSVQoVFJBTlNDT0RFUl9EU0lfMCkgfCBCSVQoVFJBTlNDT0RFUl9EU0lfMSk7Ci0KIAkvKgog
CSAqIFRoZSBwaXBlLT50cmFuc2NvZGVyIG1hcHBpbmcgaXMgZml4ZWQgd2l0aCB0aGUgZXhjZXB0
aW9uIG9mIHRoZSBlRFAKIAkgKiBhbmQgRFNJIHRyYW5zY29kZXJzIGhhbmRsZWQgYmVsb3cuCi0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
