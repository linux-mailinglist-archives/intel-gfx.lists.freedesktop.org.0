Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167F7100976
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9471A6E635;
	Mon, 18 Nov 2019 16:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF866E62E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:45:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:44:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="236987353"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 18 Nov 2019 08:44:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 18:44:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:44:27 +0200
Message-Id: <20191118164430.27265-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
References: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/10] drm/i915: Pass dev_priv to
 cpt_verify_modeset()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgdGhlIGxhc3QgJ2RldicgdXNhZ2UgaW4gaXJvbmxha2VfY3J0Y19lbmFibGUoKSBi
eQpwYXNzaW5nIGRldl9wcml2IHRvIGNwdF92ZXJpZnlfbW9kZXNldCgpLgoKUmV2aWV3ZWQtYnk6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKy0tLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDY4YTdlNWQ0NjdmZi4u
NTU2YjMxYmYyZmIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtNTQ3NCw5ICs1NDc0LDkgQEAgc3RhdGljIHZvaWQgbHB0X3BjaF9lbmFibGUo
Y29uc3Qgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJbHB0X2VuYWJsZV9wY2hf
dHJhbnNjb2RlcihkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIpOwogfQogCi1zdGF0aWMgdm9pZCBj
cHRfdmVyaWZ5X21vZGVzZXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgZW51bSBwaXBlIHBpcGUp
CitzdGF0aWMgdm9pZCBjcHRfdmVyaWZ5X21vZGVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAorCQkJICAgICAgIGVudW0gcGlwZSBwaXBlKQogewotCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAlpOTE1X3JlZ190IGRzbHJlZyA9
IFBJUEVEU0wocGlwZSk7CiAJdTMyIHRlbXA7CiAKQEAgLTY1NTAsNyArNjU1MCw3IEBAIHN0YXRp
YyB2b2lkIGlyb25sYWtlX2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBl
X2NvbmZpZywKIAlpbnRlbF9lbmNvZGVyc19lbmFibGUoc3RhdGUsIGludGVsX2NydGMpOwogCiAJ
aWYgKEhBU19QQ0hfQ1BUKGRldl9wcml2KSkKLQkJY3B0X3ZlcmlmeV9tb2Rlc2V0KGRldiwgaW50
ZWxfY3J0Yy0+cGlwZSk7CisJCWNwdF92ZXJpZnlfbW9kZXNldChkZXZfcHJpdiwgcGlwZSk7CiAK
IAkvKgogCSAqIE11c3Qgd2FpdCBmb3IgdmJsYW5rIHRvIGF2b2lkIHNwdXJpb3VzIFBDSCBGSUZP
IHVuZGVycnVucy4KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
