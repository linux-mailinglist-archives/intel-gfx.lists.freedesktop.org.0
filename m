Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E4211EB4C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 20:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA50B6EC47;
	Fri, 13 Dec 2019 19:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144AB6EC47
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 19:52:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 11:52:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="211537796"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Dec 2019 11:52:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 21:52:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 21:52:16 +0200
Message-Id: <20191213195217.15168-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
References: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Pass old crtc state to
 intel_crtc_vblank_off()
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
dGF0ZQp0byBpbnRlbF9jcnRjX3ZibGFua19vZmYoKSBqdXN0IGxpa2Ugd2UgYWxyZWFkeSBkbyBm
b3IgaXRzCmNvdW50ZXJwYXJ0IGludGVsX2NydGNfdmJsYW5rX29uKCkuCgpDYzogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxt
YW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDMwZjI3N2FhMjI4Zi4uZGY2OWU0Y2Q0NzA3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MTgyNSw4ICsxODI1LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfdmJsYW5rX29uKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWRybV9jcnRjX3ZibGFua19v
bigmY3J0Yy0+YmFzZSk7CiB9CiAKLXN0YXRpYyB2b2lkIGludGVsX2NydGNfdmJsYW5rX29mZihz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3N0YXRpYyB2b2lkIGludGVsX2NydGNfdmJsYW5rX29m
Zihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsK
KwogCWRybV9jcnRjX3ZibGFua19vZmYoJmNydGMtPmJhc2UpOwogCWFzc2VydF92YmxhbmtfZGlz
YWJsZWQoJmNydGMtPmJhc2UpOwogfQpAQCAtNjY5OSw3ICs2NzAxLDcgQEAgc3RhdGljIHZvaWQg
aXJvbmxha2VfY3J0Y19kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CiAJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZShzdGF0ZSwgY3J0Yyk7CiAKLQlpbnRlbF9jcnRjX3Zi
bGFua19vZmYoY3J0Yyk7CisJaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9jcnRjX3N0YXRlKTsK
IAogCWludGVsX2Rpc2FibGVfcGlwZShvbGRfY3J0Y19zdGF0ZSk7CiAKQEAgLTY3NDgsNyArNjc1
MCw3IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfY3J0Y19kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLAogCiAJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZShzdGF0ZSwgY3J0Yyk7
CiAKLQlpbnRlbF9jcnRjX3ZibGFua19vZmYoY3J0Yyk7CisJaW50ZWxfY3J0Y192Ymxhbmtfb2Zm
KG9sZF9jcnRjX3N0YXRlKTsKIAogCS8qIFhYWDogRG8gdGhlIHBpcGUgYXNzZXJ0aW9ucyBhdCB0
aGUgcmlnaHQgcGxhY2UgZm9yIEJYVCBEU0kuICovCiAJaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShj
cHVfdHJhbnNjb2RlcikpCkBAIC03MTEzLDcgKzcxMTUsNyBAQCBzdGF0aWMgdm9pZCBpOXh4X2Ny
dGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCWludGVsX2Vu
Y29kZXJzX2Rpc2FibGUoc3RhdGUsIGNydGMpOwogCi0JaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKGNy
dGMpOworCWludGVsX2NydGNfdmJsYW5rX29mZihvbGRfY3J0Y19zdGF0ZSk7CiAKIAlpbnRlbF9k
aXNhYmxlX3BpcGUob2xkX2NydGNfc3RhdGUpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
