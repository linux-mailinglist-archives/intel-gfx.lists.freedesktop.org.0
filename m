Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F067111EB43
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 20:52:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7DC6EC44;
	Fri, 13 Dec 2019 19:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A886EC44
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 19:52:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 11:52:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="204419053"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2019 11:52:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 21:52:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 21:52:15 +0200
Message-Id: <20191213195217.15168-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
References: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Pass old crtc state to
 skylake_scaler_disable()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IG1ha2UgbGlmZSBlYXNpZXIgaW4gdGhlIGZ1dHVyZSBsZXQncyBwYXNzIHRoZSBvbGQgY3J0YyBz
dGF0ZQp0byBza3lsYWtlX3NjYWxlcl9kaXNhYmxlKCkganVzdCBsaWtlIHdlIGFscmVhZHkgZG8g
Zm9yCmZvciBpdHMgYW5jZXN0b3IgaXJvbmxha2VfcGZpdF9kaXNhYmxlKCkuCgpDYzogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJl
IDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDRhZGNkNzUxMzg0ZS4uMzBmMjc3YWEyMjhmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNTc2
OSw4ICs1NzY5LDkgQEAgc3RhdGljIGludCBza2xfdXBkYXRlX3NjYWxlcl9wbGFuZShzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHZv
aWQgc2t5bGFrZV9zY2FsZXJfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3N0YXRp
YyB2b2lkIHNreWxha2Vfc2NhbGVyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKm9sZF9jcnRjX3N0YXRlKQogeworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlpbnQgaTsKIAogCWZvciAoaSA9
IDA7IGkgPCBjcnRjLT5udW1fc2NhbGVyczsgaSsrKQpAQCAtNjc2Miw3ICs2NzYzLDcgQEAgc3Rh
dGljIHZvaWQgaGFzd2VsbF9jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAJaW50ZWxfZHNjX2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOwogCiAJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gOSkKLQkJc2t5bGFrZV9zY2FsZXJfZGlzYWJsZShjcnRjKTsKKwkJ
c2t5bGFrZV9zY2FsZXJfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7CiAJZWxzZQogCQlpcm9ubGFr
ZV9wZml0X2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
