Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE91121C6D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF446E8B9;
	Mon, 16 Dec 2019 22:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E26F6E8B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 22:08:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:08:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="240188577"
Received: from gneiger-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.251.15.215])
 by fmsmga004.fm.intel.com with ESMTP; 16 Dec 2019 14:08:25 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 14:07:41 -0800
Message-Id: <20191216220742.34332-10-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191216220742.34332-1-jose.souza@intel.com>
References: <20191216220742.34332-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/11] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hlY2sgaWYgZmFzdHNldCBpcyBhbGxvd2VkIGJ5IGV4dGVybmFsIGRlcGVuZGVuY2llcyBsaWtl
IG90aGVyIHBpcGVzCmFuZCB0cmFuc2NvZGVycy4KClJpZ2h0IG5vdyB0aGlzIHBhdGNoIG9ubHkg
Zm9yY2VzIGEgZnVsbG1vZGVzZXQgaW4gTVNUIHNsYXZlcyBvZiBNU1QKbWFzdGVycyB0aGF0IG5l
ZWRzIGEgZnVsbG1vZGVzZXQgYnV0IGl0IHdpbGwgYmUgbmVlZGVkIGZvciBwb3J0IHN5bmMKYXMg
d2VsbC4KCnYzOgotIG1vdmVkIGhhbmRsaW5nIHRvIGludGVsX2F0b21pY19jaGVjaygpIHRoaXMg
d2F5IGlzIGd1YXJhbnRlZSB0aGF0CmFsbCBwaXBlcyB3aWxsIGhhdmUgaXRzIHN0YXRlIGNvbXB1
dGVkCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hbmFz
aSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNjMgKysrKysrKysrKysrKysrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGYxYzA2
ODdiZjY5Yi4uMjYyN2E3YmNiNDVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM5NDEsMTkgKzEzOTQxLDYgQEAgc3RhdGljIHZvaWQgaW50
ZWxfY3J0Y19jaGVja19mYXN0c2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGEKIAogCW5ld19jcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IGZhbHNlOwog
CW5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSA9IHRydWU7Ci0KLQkvKgotCSAqIElmIHdlJ3Jl
IG5vdCBkb2luZyB0aGUgZnVsbCBtb2Rlc2V0IHdlIHdhbnQgdG8KLQkgKiBrZWVwIHRoZSBjdXJy
ZW50IE0vTiB2YWx1ZXMgYXMgdGhleSBtYXkgYmUKLQkgKiBzdWZmaWNpZW50bHkgZGlmZmVyZW50
IHRvIHRoZSBjb21wdXRlZCB2YWx1ZXMKLQkgKiB0byBjYXVzZSBwcm9ibGVtcy4KLQkgKgotCSAq
IEZJWE1FOiBzaG91bGQgcmVhbGx5IGNvcHkgbW9yZSBmdXp6eSBzdGF0ZSBoZXJlCi0JICovCi0J
bmV3X2NydGNfc3RhdGUtPmZkaV9tX24gPSBvbGRfY3J0Y19zdGF0ZS0+ZmRpX21fbjsKLQluZXdf
Y3J0Y19zdGF0ZS0+ZHBfbV9uID0gb2xkX2NydGNfc3RhdGUtPmRwX21fbjsKLQluZXdfY3J0Y19z
dGF0ZS0+ZHBfbTJfbjIgPSBvbGRfY3J0Y19zdGF0ZS0+ZHBfbTJfbjI7Ci0JbmV3X2NydGNfc3Rh
dGUtPmhhc19kcnJzID0gb2xkX2NydGNfc3RhdGUtPmhhc19kcnJzOwogfQogCiBzdGF0aWMgaW50
IGludGVsX2NydGNfYWRkX3BsYW5lc190b19zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKQEAgLTE0MTIxLDYgKzE0MTA4LDU2IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWlj
X2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQlhbnlfbXMgPSB0cnVlOwogCX0KIAor
CS8qKgorCSAqIENoZWNrIGlmIGZhc3RzZXQgaXMgYWxsb3dlZCBieSBleHRlcm5hbCBkZXBlbmRl
bmNpZXMgbGlrZSBvdGhlcgorCSAqIHBpcGVzIGFuZCB0cmFuc2NvZGVycy4KKwkgKgorCSAqIFJp
Z2h0IG5vdyBpdCBvbmx5IGZvcmNlcyBhIGZ1bGxtb2Rlc2V0IHdoZW4gdGhlIE1TVCBtYXN0ZXIK
KwkgKiB0cmFuc2NvZGVyIGRpZCBub3QgY2hhbmdlZCBidXQgdGhlIHBpcGUgb2YgdGhlIG1hc3Rl
ciB0cmFuc2NvZGVyCisJICogbmVlZHMgYSBmdWxsbW9kZXNldCBzbyBhbGwgc2xhdmVzIGFsc28g
bmVlZHMgdG8gZG8gYSBmdWxsbW9kZXNldC4KKwkgKi8KKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0
Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlX2l0ZXI7CisJCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjX2l0ZXI7CisJCWludCBqOworCisJCWlmICghaW50ZWxfZHBfbXN0X2lzX3NsYXZlX3Ry
YW5zKG5ld19jcnRjX3N0YXRlKSB8fAorCQkgICAgbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0
ZSkpCisJCQljb250aW51ZTsKKworCQlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShz
dGF0ZSwgY3J0Y19pdGVyLAorCQkJCQkJIG5ld19jcnRjX3N0YXRlX2l0ZXIsIGopIHsKKwkJCWlm
IChuZXdfY3J0Y19zdGF0ZS0+bXN0X21hc3Rlcl90cmFuc2NvZGVyICE9CisJCQkgICAgbmV3X2Ny
dGNfc3RhdGVfaXRlci0+Y3B1X3RyYW5zY29kZXIpCisJCQkJY29udGludWU7CisKKwkJCWlmIChu
ZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlX2l0ZXIpKSB7CisJCQkJbmV3X2NydGNfc3RhdGUt
PnVhcGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsKKwkJCQluZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3Bp
cGUgPSBmYWxzZTsKKwkJCX0KKwkJCWJyZWFrOworCQl9CisJfQorCisJZm9yX2VhY2hfb2xkbmV3
X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkg
ICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJaWYgKG5lZWRzX21vZGVzZXQobmV3X2NydGNfc3Rh
dGUpKQorCQkJY29udGludWU7CisKKwkJLyoKKwkJICogSWYgd2UncmUgbm90IGRvaW5nIHRoZSBm
dWxsIG1vZGVzZXQgd2Ugd2FudCB0bworCQkgKiBrZWVwIHRoZSBjdXJyZW50IE0vTiB2YWx1ZXMg
YXMgdGhleSBtYXkgYmUKKwkJICogc3VmZmljaWVudGx5IGRpZmZlcmVudCB0byB0aGUgY29tcHV0
ZWQgdmFsdWVzCisJCSAqIHRvIGNhdXNlIHByb2JsZW1zLgorCQkgKgorCQkgKiBGSVhNRTogc2hv
dWxkIHJlYWxseSBjb3B5IG1vcmUgZnV6enkgc3RhdGUgaGVyZQorCQkgKi8KKwkJbmV3X2NydGNf
c3RhdGUtPmZkaV9tX24gPSBvbGRfY3J0Y19zdGF0ZS0+ZmRpX21fbjsKKwkJbmV3X2NydGNfc3Rh
dGUtPmRwX21fbiA9IG9sZF9jcnRjX3N0YXRlLT5kcF9tX247CisJCW5ld19jcnRjX3N0YXRlLT5k
cF9tMl9uMiA9IG9sZF9jcnRjX3N0YXRlLT5kcF9tMl9uMjsKKwkJbmV3X2NydGNfc3RhdGUtPmhh
c19kcnJzID0gb2xkX2NydGNfc3RhdGUtPmhhc19kcnJzOworCX0KKwogCWlmIChhbnlfbXMgJiYg
IWNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3RhdGUpKSB7CiAJCURSTV9ERUJVR19LTVMo
InJlamVjdGluZyBjb25mbGljdGluZyBkaWdpdGFsIHBvcnQgY29uZmlndXJhdGlvblxuIik7CiAJ
CXJldCA9IEVJTlZBTDsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
