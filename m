Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E70F91B2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4E76E9F2;
	Tue, 12 Nov 2019 14:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30456E999
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="202701841"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 12 Nov 2019 06:15:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:14:56 +0200
Message-Id: <20191112141503.1116-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: Move assert_vblank_disabled()
 into intel_crtc_vblank_on()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIGFzc2VydF92YmxhbmtfZGlzYWJsZWQoKSBpbnRvIGludGVsX2NydGNfdmJsYW5rX29u
KCkKc28gdGhhdCB3ZSBkb24ndCBoYXZlIHRvIGlubGluZSBpdCBhbGwgb3Zlci4KClRoaXMgZG9l
cyBtZWFuIHdlIG5vdyBhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKCkgZHVyaW5nIHJlYWRvdXQgYXMg
d2VsbApidXQgdGhhdCBpcyB0b3RhbGx5IGZpbmUgYXMgaXQgaGFwcGVucyBhZnRlciBkcm1fY3J0
Y192YmxhbmtfcmVzZXQoKS4KT25lIGNhbiBldmVuIGFyZ3VlIGl0J3Mgd2hhdCB3ZSB3YW50IHRv
IGRvIGFueXdheSB0byBtYWtlIHN1cmUKdGhlIHJlc2V0IGFjdHVhbGx5IGhhcHBlbmVkLgoKU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDUg
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDE5NDAy
OWZmODYxNy4uODlkMTUwYjQ1NTIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTgyNiw2ICsxODI2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxf
Y3J0Y192Ymxhbmtfb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PnVhcGkuY3J0Yyk7CiAKKwlhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKCZjcnRjLT5iYXNlKTsKIAlk
cm1fY3J0Y19zZXRfbWF4X3ZibGFua19jb3VudCgmY3J0Yy0+YmFzZSwKIAkJCQkgICAgICBpbnRl
bF9jcnRjX21heF92YmxhbmtfY291bnQoY3J0Y19zdGF0ZSkpOwogCWRybV9jcnRjX3ZibGFua19v
bigmY3J0Yy0+YmFzZSk7CkBAIC02NTM1LDcgKzY1MzYsNiBAQCBzdGF0aWMgdm9pZCBpcm9ubGFr
ZV9jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCiAJaWYg
KHBpcGVfY29uZmlnLT5oYXNfcGNoX2VuY29kZXIpCiAJCWlyb25sYWtlX3BjaF9lbmFibGUoc3Rh
dGUsIHBpcGVfY29uZmlnKTsKIAotCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7CiAJaW50
ZWxfY3J0Y192Ymxhbmtfb24ocGlwZV9jb25maWcpOwogCiAJaW50ZWxfZW5jb2RlcnNfZW5hYmxl
KHN0YXRlLCBpbnRlbF9jcnRjKTsKQEAgLTY2ODksNyArNjY4OSw2IEBAIHN0YXRpYyB2b2lkIGhh
c3dlbGxfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAog
CWlmIChpbnRlbF9jcnRjX2hhc190eXBlKHBpcGVfY29uZmlnLCBJTlRFTF9PVVRQVVRfRFBfTVNU
KSkKIAkJaW50ZWxfZGRpX3NldF92Y19wYXlsb2FkX2FsbG9jKHBpcGVfY29uZmlnLCB0cnVlKTsK
IAotCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7CiAJaW50ZWxfY3J0Y192Ymxhbmtfb24o
cGlwZV9jb25maWcpOwogCiAJaW50ZWxfZW5jb2RlcnNfZW5hYmxlKHN0YXRlLCBpbnRlbF9jcnRj
KTsKQEAgLTcwNjgsNyArNzA2Nyw2IEBAIHN0YXRpYyB2b2lkIHZhbGxleXZpZXdfY3J0Y19lbmFi
bGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCWRldl9wcml2LT5kaXNw
bGF5LmluaXRpYWxfd2F0ZXJtYXJrcyhzdGF0ZSwgcGlwZV9jb25maWcpOwogCWludGVsX2VuYWJs
ZV9waXBlKHBpcGVfY29uZmlnKTsKIAotCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7CiAJ
aW50ZWxfY3J0Y192Ymxhbmtfb24ocGlwZV9jb25maWcpOwogCiAJaW50ZWxfZW5jb2RlcnNfZW5h
YmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKQEAgLTcxMjgsNyArNzEyNiw2IEBAIHN0YXRpYyB2b2lk
IGk5eHhfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAog
CQlpbnRlbF91cGRhdGVfd2F0ZXJtYXJrcyhpbnRlbF9jcnRjKTsKIAlpbnRlbF9lbmFibGVfcGlw
ZShwaXBlX2NvbmZpZyk7CiAKLQlhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKGNydGMpOwogCWludGVs
X2NydGNfdmJsYW5rX29uKHBpcGVfY29uZmlnKTsKIAogCWludGVsX2VuY29kZXJzX2VuYWJsZShz
dGF0ZSwgaW50ZWxfY3J0Yyk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
