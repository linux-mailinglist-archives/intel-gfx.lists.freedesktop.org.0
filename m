Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7333BAADE9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 23:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5376E075;
	Thu,  5 Sep 2019 21:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3D66E075
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 21:38:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 14:38:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="184357785"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by fmsmga007.fm.intel.com with ESMTP; 05 Sep 2019 14:38:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:38:24 -0700
Message-Id: <20190905213824.638-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Account for CD2X divider in ICL+ vco
 calculation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBjYWxjdWxhdGluZyB0aGUgUExMIHJhdGlvIHdlIHdlcmUgc3RpbGwgYXNzdW1pbmcgdGhh
dCB0aGUgQ0QyWApkaXZpZGVyIGlzIGFsd2F5cyAvMS4gIEZvciB0aGUgbmV3IGZyZXF1ZW5jaWVz
IHRoYXQgdXNlIGEgLzIgZGl2aWRlcgp0aGF0IG5lZWRzIHRvIGJlIGFjY291bnRlZCBmb3IsIG90
aGVyd2lzZSBvdXIgVkNPIHJlc3VsdCB3aWxsIGJlIHR3aWNlCmFzIGxhcmdlIGFzIGl0IHNob3Vs
ZCBiZS4KCkZpeGVzOiAzZDFkYTkyYmFmZmUgKCJkcm0vaTkxNTogQWRkIDMyNG1oeiBhbmQgMzI2
LjRtaHogY2RjbGtzIGZvciBnZW4xMSsiKQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAx
NyArKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
CmluZGV4IDEzMjlkM2U2MGUyNi4uNTU4MDFhZWVmZDFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0xNzk0LDYgKzE3OTQsNyBAQCBzdGF0aWMgaW50
IGljbF9jYWxjX2NkY2xrKGludCBtaW5fY2RjbGssIHVuc2lnbmVkIGludCByZWYpCiAKIHN0YXRp
YyBpbnQgaWNsX2NhbGNfY2RjbGtfcGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGludCBjZGNsaykKIHsKKwlpbnQgY2QyeGRpdjsKIAlpbnQgcmF0aW87CiAKIAlpZiAo
Y2RjbGsgPT0gZGV2X3ByaXYtPmNkY2xrLmh3LmJ5cGFzcykKQEAgLTE4MDUsMjcgKzE4MDYsMzcg
QEAgc3RhdGljIGludCBpY2xfY2FsY19jZGNsa19wbGxfdmNvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgaW50IGNkY2xrKQogCQkvKiBmYWxsIHRocm91Z2ggKi8KIAljYXNlIDE3
MjgwMDoKIAljYXNlIDMwNzIwMDoKLQljYXNlIDMyNjQwMDoKIAljYXNlIDU1NjgwMDoKIAljYXNl
IDY1MjgwMDoKKwkJY2QyeGRpdiA9IDE7CiAJCVdBUk5fT04oZGV2X3ByaXYtPmNkY2xrLmh3LnJl
ZiAhPSAxOTIwMCAmJgogCQkJZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAzODQwMCk7CiAJCWJy
ZWFrOwogCWNhc2UgMTgwMDAwOgogCWNhc2UgMzEyMDAwOgotCWNhc2UgMzI0MDAwOgogCWNhc2Ug
NTUyMDAwOgogCWNhc2UgNjQ4MDAwOgorCQljZDJ4ZGl2ID0gMTsKIAkJV0FSTl9PTihkZXZfcHJp
di0+Y2RjbGsuaHcucmVmICE9IDI0MDAwKTsKIAkJYnJlYWs7CiAJY2FzZSAxOTIwMDA6CisJCWNk
MnhkaXYgPSAxOwogCQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMTkyMDAgJiYK
IAkJCWRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMzg0MDAgJiYKIAkJCWRldl9wcml2LT5jZGNs
ay5ody5yZWYgIT0gMjQwMDApOwogCQlicmVhazsKKwljYXNlIDMyNjQwMDoKKwkJY2QyeGRpdiA9
IDI7CisJCVdBUk5fT04oZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAxOTIwMCAmJgorCQkJZGV2
X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAzODQwMCk7CisJCWJyZWFrOworCWNhc2UgMzI0MDAwOgor
CQljZDJ4ZGl2ID0gMjsKKwkJV0FSTl9PTihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDI0MDAw
KTsKKwkJYnJlYWs7CiAJfQogCi0JcmF0aW8gPSBjZGNsayAvIChkZXZfcHJpdi0+Y2RjbGsuaHcu
cmVmIC8gMik7CisJcmF0aW8gPSBjZGNsayAvIChkZXZfcHJpdi0+Y2RjbGsuaHcucmVmIC8gY2Qy
eGRpdiAvIDIpOwogCiAJcmV0dXJuIGRldl9wcml2LT5jZGNsay5ody5yZWYgKiByYXRpbzsKIH0K
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
