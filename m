Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBE510A317
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117866E44C;
	Tue, 26 Nov 2019 17:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4945E6E44D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:09:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:09:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="211475158"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 26 Nov 2019 09:09:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Nov 2019 19:09:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 19:09:06 +0200
Message-Id: <20191126170911.23253-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
References: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/fbc: Make fence_id optional for
 i965gm
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmk5
NjVnbSBubyBsb25nZXIgbmVlZHMgdGhlIGZlbmNlIGZvciBzY2Fub3V0IHNvIHdlIHNob3VsZCBi
ZQpkbyB3aGF0IHdlIGRvIGZvciBjdGcrIGFuZCBvbmx5IGNvbmZpZ3VyZSBhIGZlbmNlIGZvciBG
QkMKd2hlbiB3ZSBoYXZlIG9uZS4KCkluIHRoZW9yeSB0aGlzIHNob3VsZCBkbyBub3RoaW5nIGF0
bSBvbiBhY2NvdW50IG9mCmludGVsX2ZiY19jYW5fYWN0aXZhdGUoKSByZXF1aXJpbmcgdGhlIGZl
bmNlLCBidXQgc2luY2UKd2UgZG8gdGhpcyBmb3IgZzR4KyBsZXQncyBkbyBpdCBmb3IgaTk2NWdt
IGFzIHdlbGwuIFdlCm1heSB3YW50IHRvIHJlbGF4IHRoZSByZXF1aXJlbWVudHMgYXQgc29tZSBw
b2ludCBhbmQgYWxsb3cKRkJDIHdpdGhvdXQgYSBmZW5jZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA3MDdiOWQwY2RjOWIuLjdiNTlhOThjYmQyMSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0xMzgsOCArMTM4LDEw
IEBAIHN0YXRpYyB2b2lkIGk4eHhfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAkJdTMyIGZiY19jdGwyOwogCiAJCS8qIFNldCBpdCB1cC4uLiAqLwotCQlm
YmNfY3RsMiA9IEZCQ19DVExfRkVOQ0VfREJMIHwgRkJDX0NUTF9JRExFX0lNTSB8IEZCQ19DVExf
Q1BVX0ZFTkNFOworCQlmYmNfY3RsMiA9IEZCQ19DVExfRkVOQ0VfREJMIHwgRkJDX0NUTF9JRExF
X0lNTTsKIAkJZmJjX2N0bDIgfD0gRkJDX0NUTF9QTEFORShwYXJhbXMtPmNydGMuaTl4eF9wbGFu
ZSk7CisJCWlmIChwYXJhbXMtPmZlbmNlX2lkID49IDApCisJCQlmYmNfY3RsMiB8PSBGQkNfQ1RM
X0NQVV9GRU5DRTsKIAkJSTkxNV9XUklURShGQkNfQ09OVFJPTDIsIGZiY19jdGwyKTsKIAkJSTkx
NV9XUklURShGQkNfRkVOQ0VfT0ZGLCBwYXJhbXMtPmNydGMuZmVuY2VfeV9vZmZzZXQpOwogCX0K
QEAgLTE1MSw3ICsxNTMsOCBAQCBzdGF0aWMgdm9pZCBpOHh4X2ZiY19hY3RpdmF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKElTX0k5NDVHTShkZXZfcHJpdikpCiAJ
CWZiY19jdGwgfD0gRkJDX0NUTF9DM19JRExFOyAvKiA5NDUgbmVlZHMgc3BlY2lhbCBTUiBoYW5k
bGluZyAqLwogCWZiY19jdGwgfD0gKGNmYl9waXRjaCAmIDB4ZmYpIDw8IEZCQ19DVExfU1RSSURF
X1NISUZUOwotCWZiY19jdGwgfD0gcGFyYW1zLT5mZW5jZV9pZDsKKwlpZiAocGFyYW1zLT5mZW5j
ZV9pZCA+PSAwKQorCQlmYmNfY3RsIHw9IHBhcmFtcy0+ZmVuY2VfaWQ7CiAJSTkxNV9XUklURShG
QkNfQ09OVFJPTCwgZmJjX2N0bCk7CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
