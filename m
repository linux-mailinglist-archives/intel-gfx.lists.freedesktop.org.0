Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B298610B740
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14866E373;
	Wed, 27 Nov 2019 20:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCE2897F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 20:12:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 12:12:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="199300175"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2019 12:12:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 22:12:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:12:17 +0200
Message-Id: <20191127201222.16669-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/14] drm/i915/fbc: s/gen9 && !glk/gen9_bc
 || bxt/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlICdnZW45ICYmICFnbGsnIHdpdGggdGhlIHNsaWdodGx5IG1vcmUgb2J2aW91cwon
Z2VuOV9iYyB8fCBieHQnLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmlu
ZGV4IGMyNWU5ZWNiODUwNi4uOWE1N2ViYzE2Yzc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMKQEAgLTI4MSw3ICsyODEsNyBAQCBzdGF0aWMgdm9pZCBnZW43X2Zi
Y19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaW50IHRocmVz
aG9sZCA9IGRldl9wcml2LT5mYmMudGhyZXNob2xkOwogCiAJLyogRGlzcGxheSBXQSAjMDUyOTog
c2tsLCBrYmwsIGJ4dC4gKi8KLQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSAmJiAhSVNfR0VNSU5J
TEFLRShkZXZfcHJpdikpIHsKKwlpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikgfHwgSVNfQlJPWFRP
TihkZXZfcHJpdikpIHsKIAkJdTMyIHZhbCA9IEk5MTVfUkVBRChDSElDS0VOX01JU0NfNCk7CiAK
IAkJdmFsICY9IH4oRkJDX1NUUklERV9PVkVSUklERSB8IEZCQ19TVFJJREVfTUFTSyk7CkBAIC0x
MDg5LDcgKzEwODksNyBAQCB2b2lkIGludGVsX2ZiY19lbmFibGUoc3RydWN0IGludGVsX2NydGMg
KmNydGMsCiAJCWdvdG8gb3V0OwogCX0KIAotCWlmIChJU19HRU4oZGV2X3ByaXYsIDkpICYmICFJ
U19HRU1JTklMQUtFKGRldl9wcml2KSAmJgorCWlmICgoSVNfR0VOOV9CQyhkZXZfcHJpdikgfHwg
SVNfQlJPWFRPTihkZXZfcHJpdikpICYmCiAJICAgIGZiLT5tb2RpZmllciAhPSBJOTE1X0ZPUk1B
VF9NT0RfWF9USUxFRCkKIAkJY2FjaGUtPmdlbjlfd2FfY2ZiX3N0cmlkZSA9CiAJCQlESVZfUk9V
TkRfVVAoY2FjaGUtPnBsYW5lLnNyY193LCAzMiAqIGZiYy0+dGhyZXNob2xkKSAqIDg7Ci0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
