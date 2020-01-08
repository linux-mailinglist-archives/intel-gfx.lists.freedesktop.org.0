Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A751D1344ED
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 15:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5496E2F3;
	Wed,  8 Jan 2020 14:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730D66E2F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 14:24:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 06:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="222943672"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 08 Jan 2020 06:24:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 16:24:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 16:24:47 +0200
Message-Id: <20200108142447.9952-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix MST disable sequence
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
ZW4gbW92aW5nIHRoZSBwaXBlIGRpc2FibGUgJiBjby4gZnVuY3Rpb24gY2FsbHMgZnJvbQpoYXN3
ZWxsX2NydGNfZGlzYWJsZSgpIGludG8gdGhlIGVuY29kZXIgLnBvc3RfZGlzYWJsZSgpIGhvb2tz
IEkKbmVnbGVjdGVkIHRvIGFjY291bnQgZm9yIHRoZSBNU1QgdnMuIERESSBpbnRlcmFjdGlvbnMg
cHJvcGVybHkuClRoaXMgbm93IGxlYWRzIHVzIHRvIGNhbGwgdGhlc2UgZnVuY3Rpb25zIHR3byB0
aW1lcyBmb3IgdGhlIGxhc3QKTVNUIHN0cmVhbSAob25jZSBmcm9tIHRoZSBNU1QgY29kZSBhbmQg
YSBzZWNvbmQgdGltZSBmcm9tIHRoZSBEREkKY29kZSkuIFRoZSBjYWxscyBmcm9tIHRoZSBEREkg
Y29kZSBzaG91bGQgb25seSBiZSBkb25lIGZvciBTU1QKYW5kIG5vdCBNU1QuIEFkZCB0aGUgcHJv
cGVyIGNoZWNrIGZvciB0aGF0LgoKVGhpcyByZXN1bHRzIGluIGFuIE1DRSBvbiBJQ0wuIE15IHZh
Z3VlIHRoZW9yeSBpcyB0aGF0IHdlIHR1cm4gb2ZmCnRoZSB0cmFuc2NvZGVyIGNsb2NrIGZyb20g
dGhlIE1TVCBjb2RlIGFuZCB0aGVuIHdlIHByb2NlZWQgdG8gdG91Y2gKc29tZXRoaW5nIGluIHRo
ZSBEREkgY29kZSB3aGljaCBzdGlsbCBkZXBlbmRzIG9uIHRoYXQgY2xvY2sgY2F1c2luZwp0aGUg
aGFyZHdhcmUgdG8gYmVjb21lIHVwc2V0LiBUaG91Z2ggSSBjYW4ndCByZWFsbHkgZXhwbGFpbiB3
aHkKU3RhbidzIGhhY2sgb2Ygb21pdHRpbmcgdGhlIHBpcGUgZGlzYWJsZSBpbiB0aGUgTVNUIGNv
ZGUgd291bGQgYXZvaWQKdGhlIE1DRSBzaW5jZSB3ZSBzaG91bGQgc3RpbGwgYmUgdHVybmluZyBv
ZmYgdGhlIHRyYW5zY29kZXIgY2xvY2suCkJ1dCBtYXliZSB0aGVyZSdzIHNvbWV0aGluZyBtYWdp
YyBpbiB0aGUgaHcgdGhhdCBrZWVwcyB0aGUgY2xvY2sgb24KYXMgbG9uZyBhcyB0aGUgcGlwZSBp
cyBvbi4gT3IgbWF5YmUgdGhlIGNsb2NrIGlzbid0IHRoZSBwcm9ibGVtIGFuZAp3ZSBub3cgdG91
Y2ggc29tZXRoaW5nIGluIHRoZSBEREkgZGlzYWJsZSBjb2RlIHRoYXQgcmVhbGx5IGRvZXMgbmVl
ZAp0aGUgcGlwZSB0byBiZSBzdGlsbCBlbmFibGVkLgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2
YXJlQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xh
di5saXNvdnNraXlAaW50ZWwuY29tPgpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzkwMQpGaXhlczogNzczYjRiNTQzNTFjICgiZHJtL2k5MTU6
IE1vdmUgc3R1ZmYgZnJvbSBoYXN3ZWxsX2NydGNfZGlzYWJsZSgpIGludG8gZW5jb2RlciAucG9z
dF9kaXNhYmxlKCkiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCAyMiArKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIg
aW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKaW5kZXggNzMwMTE4OTAzNjA4Li45MzBlODE0ZWI5NmUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzkwMCwyMSArMzkwMCwyMyBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBl
bmNvZGVyLT5wb3J0KTsKIAlib29sIGlzX3RjX3BvcnQgPSBpbnRlbF9waHlfaXNfdGMoZGV2X3By
aXYsIHBoeSk7CiAKLQlpbnRlbF9jcnRjX3ZibGFua19vZmYob2xkX2NydGNfc3RhdGUpOworCWlm
ICghaW50ZWxfY3J0Y19oYXNfdHlwZShvbGRfY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RQX01T
VCkpIHsKKwkJaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9jcnRjX3N0YXRlKTsKIAotCWludGVs
X2Rpc2FibGVfcGlwZShvbGRfY3J0Y19zdGF0ZSk7CisJCWludGVsX2Rpc2FibGVfcGlwZShvbGRf
Y3J0Y19zdGF0ZSk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKLQkJaWNsX2Rp
c2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5bmMob2xkX2NydGNfc3RhdGUpOworCQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMSkKKwkJCWljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5j
KG9sZF9jcnRjX3N0YXRlKTsKIAotCWludGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhv
bGRfY3J0Y19zdGF0ZSk7CisJCWludGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhvbGRf
Y3J0Y19zdGF0ZSk7CiAKLQlpbnRlbF9kc2NfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7CisJCWlu
dGVsX2RzY19kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDkpCi0JCXNreWxha2Vfc2NhbGVyX2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOwotCWVs
c2UKLQkJaXJvbmxha2VfcGZpdF9kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsKKwkJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gOSkKKwkJCXNreWxha2Vfc2NhbGVyX2Rpc2FibGUob2xkX2NydGNf
c3RhdGUpOworCQllbHNlCisJCQlpcm9ubGFrZV9wZml0X2Rpc2FibGUob2xkX2NydGNfc3RhdGUp
OworCX0KIAogCS8qCiAJICogV2hlbiBjYWxsZWQgZnJvbSBEUCBNU1QgY29kZToKLS0gCjIuMjQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
