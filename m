Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DC413CCCC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 20:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D690B6EA88;
	Wed, 15 Jan 2020 19:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F896EA88
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 19:08:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 11:08:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="220108270"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 15 Jan 2020 11:08:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2020 21:08:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 21:08:13 +0200
Message-Id: <20200115190813.17971-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Move encoder variable to tighter
 scope
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIG5vdCBwb2xsdXRlIHRoZSBmdW5jdGlvbiBzY29wZSB3aXRoIHZhcmlhYmxlcyB3aGVuIHRo
ZXkncmUKb25seSBuZWVkZWQgaW5zaWRlIHNvbWUgbG9vcHMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDk3Y2Y4NDU3Yzk1Ni4u
NzZjMTczNDFkZjJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTMwNzAsNyArMTMwNzAsNiBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmln
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIHsKIAlzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMgPSBwaXBlX2NvbmZpZy0+dWFwaS5jcnRjOwogCXN0cnVjdCBkcm1fYXRvbWljX3N0
YXRlICpzdGF0ZSA9IHBpcGVfY29uZmlnLT51YXBpLnN0YXRlOwotCXN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyOwogCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7CiAJc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5lY3Rvcl9zdGF0ZTsKIAlpbnQgYmFzZV9icHAsIHJl
dDsKQEAgLTEzMTEzLDExICsxMzExMiwxMiBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIAkJCSAgICAgICAmcGlwZV9jb25m
aWctPnBpcGVfc3JjX2gpOwogCiAJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0
ZSwgY29ubmVjdG9yLCBjb25uZWN0b3Jfc3RhdGUsIGkpIHsKKwkJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIgPQorCQkJdG9faW50ZWxfZW5jb2Rlcihjb25uZWN0b3Jfc3RhdGUtPmJlc3Rf
ZW5jb2Rlcik7CisKIAkJaWYgKGNvbm5lY3Rvcl9zdGF0ZS0+Y3J0YyAhPSBjcnRjKQogCQkJY29u
dGludWU7CiAKLQkJZW5jb2RlciA9IHRvX2ludGVsX2VuY29kZXIoY29ubmVjdG9yX3N0YXRlLT5i
ZXN0X2VuY29kZXIpOwotCiAJCWlmICghY2hlY2tfc2luZ2xlX2VuY29kZXJfY2xvbmluZyhzdGF0
ZSwgdG9faW50ZWxfY3J0YyhjcnRjKSwgZW5jb2RlcikpIHsKIAkJCURSTV9ERUJVR19LTVMoInJl
amVjdGluZyBpbnZhbGlkIGNsb25pbmcgY29uZmlndXJhdGlvblxuIik7CiAJCQlyZXR1cm4gLUVJ
TlZBTDsKQEAgLTEzMTY3LDYgKzEzMTY3LDkgQEAgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiAJICogYSBjaGFuY2UgdG8gcmVq
ZWN0IHRoZSBtb2RlIGVudGlyZWx5LgogCSAqLwogCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5f
c3RhdGUoc3RhdGUsIGNvbm5lY3RvciwgY29ubmVjdG9yX3N0YXRlLCBpKSB7CisJCXN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyID0KKwkJCXRvX2ludGVsX2VuY29kZXIoY29ubmVjdG9yX3N0
YXRlLT5iZXN0X2VuY29kZXIpOworCiAJCWlmIChjb25uZWN0b3Jfc3RhdGUtPmNydGMgIT0gY3J0
YykKIAkJCWNvbnRpbnVlOwogCkBAIC0xMzE3OCw3ICsxMzE4MSw2IEBAIGludGVsX21vZGVzZXRf
cGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogCQkJcmV0
dXJuIHJldDsKIAkJfQogCi0JCWVuY29kZXIgPSB0b19pbnRlbF9lbmNvZGVyKGNvbm5lY3Rvcl9z
dGF0ZS0+YmVzdF9lbmNvZGVyKTsKIAkJcmV0ID0gZW5jb2Rlci0+Y29tcHV0ZV9jb25maWcoZW5j
b2RlciwgcGlwZV9jb25maWcsCiAJCQkJCSAgICAgIGNvbm5lY3Rvcl9zdGF0ZSk7CiAJCWlmIChy
ZXQgPCAwKSB7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
