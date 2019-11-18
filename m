Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7746F100970
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:44:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFC66E61D;
	Mon, 18 Nov 2019 16:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD8B6E620
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:44:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="217935951"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 18 Nov 2019 08:44:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 18:44:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:44:23 +0200
Message-Id: <20191118164430.27265-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
References: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/10] drm/i915: Move
 assert_vblank_disabled() into intel_crtc_vblank_on()
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
IGRvIGFueXdheSB0byBtYWtlIHN1cmUKdGhlIHJlc2V0IGFjdHVhbGx5IGhhcHBlbmVkLgoKUmV2
aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1ICst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBiZjdmYWFm
MDYxYTMuLjg1NGNjY2EyYmY2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTE4MzgsNiArMTgzOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Ny
dGNfdmJsYW5rX29uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
ewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51
YXBpLmNydGMpOwogCisJYXNzZXJ0X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7CiAJZHJt
X2NydGNfc2V0X21heF92YmxhbmtfY291bnQoJmNydGMtPmJhc2UsCiAJCQkJICAgICAgaW50ZWxf
Y3J0Y19tYXhfdmJsYW5rX2NvdW50KGNydGNfc3RhdGUpKTsKIAlkcm1fY3J0Y192Ymxhbmtfb24o
JmNydGMtPmJhc2UpOwpAQCAtNjU0Nyw3ICs2NTQ4LDYgQEAgc3RhdGljIHZvaWQgaXJvbmxha2Vf
Y3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCWlmIChw
aXBlX2NvbmZpZy0+aGFzX3BjaF9lbmNvZGVyKQogCQlpcm9ubGFrZV9wY2hfZW5hYmxlKHN0YXRl
LCBwaXBlX2NvbmZpZyk7CiAKLQlhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKGNydGMpOwogCWludGVs
X2NydGNfdmJsYW5rX29uKHBpcGVfY29uZmlnKTsKIAogCWludGVsX2VuY29kZXJzX2VuYWJsZShz
dGF0ZSwgaW50ZWxfY3J0Yyk7CkBAIC02NzEzLDcgKzY3MTMsNiBAQCBzdGF0aWMgdm9pZCBoYXN3
ZWxsX2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAlp
ZiAocGlwZV9jb25maWctPmhhc19wY2hfZW5jb2RlcikKIAkJbHB0X3BjaF9lbmFibGUoc3RhdGUs
IHBpcGVfY29uZmlnKTsKIAotCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7CiAJaW50ZWxf
Y3J0Y192Ymxhbmtfb24ocGlwZV9jb25maWcpOwogCiAJaW50ZWxfZW5jb2RlcnNfZW5hYmxlKHN0
YXRlLCBpbnRlbF9jcnRjKTsKQEAgLTcwODksNyArNzA4OCw2IEBAIHN0YXRpYyB2b2lkIHZhbGxl
eXZpZXdfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAog
CWRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcyhzdGF0ZSwgcGlwZV9jb25maWcp
OwogCWludGVsX2VuYWJsZV9waXBlKHBpcGVfY29uZmlnKTsKIAotCWFzc2VydF92YmxhbmtfZGlz
YWJsZWQoY3J0Yyk7CiAJaW50ZWxfY3J0Y192Ymxhbmtfb24ocGlwZV9jb25maWcpOwogCiAJaW50
ZWxfZW5jb2RlcnNfZW5hYmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKQEAgLTcxNDksNyArNzE0Nyw2
IEBAIHN0YXRpYyB2b2lkIGk5eHhfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KnBpcGVfY29uZmlnLAogCQlpbnRlbF91cGRhdGVfd2F0ZXJtYXJrcyhpbnRlbF9jcnRjKTsKIAlp
bnRlbF9lbmFibGVfcGlwZShwaXBlX2NvbmZpZyk7CiAKLQlhc3NlcnRfdmJsYW5rX2Rpc2FibGVk
KGNydGMpOwogCWludGVsX2NydGNfdmJsYW5rX29uKHBpcGVfY29uZmlnKTsKIAogCWludGVsX2Vu
Y29kZXJzX2VuYWJsZShzdGF0ZSwgaW50ZWxfY3J0Yyk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
