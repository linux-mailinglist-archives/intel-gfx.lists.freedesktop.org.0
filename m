Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6A52CAABA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 19:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF266E842;
	Tue,  1 Dec 2020 18:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF36B6E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 18:30:31 +0000 (UTC)
IronPort-SDR: nYjJ34m4WsPnADzlD8LprdMsO8/YwB5CJ89vh365jMxgjurGdDan3PCqmGGaCAkn5+Xrt24k6M
 YOMgXtakDP7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234487933"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234487933"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 10:30:30 -0800
IronPort-SDR: 0JLYCgVEOywSQ8JItMS/L3Fj7NiFTydTQRMyxhIYYV6sLtF8xVQ6QrU7nFI441aJ5TX/Bv1++L
 0viy89cxQigA==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="405220272"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 10:30:28 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 00:34:05 +0530
Message-Id: <20201201190406.1752-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201201190406.1752-1-uma.shankar@intel.com>
References: <20201201190406.1752-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

VGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVuYWJsZQpG
QkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRpb24gZnJvbSBoYXJkd2FyZSBpcyB0bwpr
ZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQuCgpCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2
MDAwMgoKdjI6IEFkZGVkIHBzcjIgZW5hYmxlZCBjaGVjayBmcm9tIGNydGNfc3RhdGUgKEFuc2h1
bWFuKQpBZGRlZCBCc3BlYyBsaW5rIGFuZCBIU0QgcmVmZXJuZWNlcyAoSm9zZSkKCnYzOiBNb3Zl
ZCB0aGUgbG9naWMgdG8gZGlzYWJsZSBmYmMgdG8gaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNo
ZQphbmQgcmVtb3ZlZCB0aGUgY3J0Yy0+Y29uZmlnIHVzYWdlcywgYXMgcGVyIFZpbGxlJ3MgcmVj
b21tZW5kYXRpb24uCgp2NDogSW50cm9kdWNlZCBhIHZhcmlhYmxlIGluIGZiYyBzdGF0ZV9jYWNo
ZSBpbnN0ZWFkIG9mIHRoZSBlYXJsaWVyCnBsYW5lLnZpc2libGUgV0EsIGFzIHN1Z2dlc3RlZCBi
eSBKb3NlLgoKdjU6IERyb3BwZWQgYW4gZXh0cmEgY2hlY2sgZm9yIGZiYyBpbiBpbnRlbF9mYmNf
ZW5hYmxlIGFuZCBhZGRyZXNzZWQKcmV2aWV3IGNvbW1lbnRzIGJ5IEpvc2UuCgp2NjogTW92ZSBX
QSB0byBlbmQgb2YgZnVuY3Rpb24gYW5kIGFkZGVkIEpvc2UncyBSQi4KClNpZ25lZC1vZmYtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTIgKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMK
aW5kZXggYTViMDcyODE2YTdiLi5mNWQ1YTY0OGNiMjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtNzQyLDYgKzc0Miw4IEBAIHN0YXRpYyB2b2lkIGludGVs
X2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCWNhY2hl
LT5mZW5jZV9pZCA9IHBsYW5lX3N0YXRlLT52bWEtPmZlbmNlLT5pZDsKIAllbHNlCiAJCWNhY2hl
LT5mZW5jZV9pZCA9IC0xOworCisJY2FjaGUtPnBzcjJfYWN0aXZlID0gY3J0Y19zdGF0ZS0+aGFz
X3BzcjI7CiB9CiAKIHN0YXRpYyBib29sIGludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKQEAgLTkxNCw2ICs5MTYsMTYgQEAgc3RhdGlj
IGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJ
cmV0dXJuIGZhbHNlOwogCX0KIAorCS8qCisJICogVGlnZXJsYWtlIGlzIG5vdCBzdXBwb3J0aW5n
IEZCQyB3aXRoIFBTUjIuCisJICogUmVjb21tZW5kYXRpb24gaXMgdG8ga2VlcCB0aGlzIGNvbWJp
bmF0aW9uIGRpc2FibGVkCisJICogQnNwZWM6IDUwNDIyIEhTRDogMTQwMTAyNjAwMDIKKwkgKi8K
KwlpZiAoZmJjLT5zdGF0ZV9jYWNoZS5wc3IyX2FjdGl2ZSAmJiBJU19USUdFUkxBS0UoZGV2X3By
aXYpKSB7CisJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7
CisJCXJldHVybiBmYWxzZTsKKwl9CisKIAlyZXR1cm4gdHJ1ZTsKIH0KIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKaW5kZXggMTViZThkZWJhZTU0Li5mNGUwOGMxYTU4NjcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaApAQCAtNDE2LDYgKzQxNiw3IEBAIHN0cnVjdCBpbnRlbF9mYmMgewogCQl1MTYg
Z2VuOV93YV9jZmJfc3RyaWRlOwogCQl1MTYgaW50ZXJ2YWw7CiAJCXM4IGZlbmNlX2lkOworCQli
b29sIHBzcjJfYWN0aXZlOwogCX0gc3RhdGVfY2FjaGU7CiAKIAkvKgotLSAKMi4yNi4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
