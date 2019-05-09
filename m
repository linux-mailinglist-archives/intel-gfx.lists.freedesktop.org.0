Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 302D2189A0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 14:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D67589C17;
	Thu,  9 May 2019 12:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DFB189C16
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 12:22:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 05:22:26 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 09 May 2019 05:22:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2019 15:22:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 15:21:58 +0300
Message-Id: <20190509122159.24376-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 7/8] drm/i915: Bump fb stride limit to 128KiB
 for gen4+ and 256KiB for gen7+
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggZ3R0IHJlbWFwcGluZyBwbHVnZ2VkIGluIHdlIGNhbiBzaW1wbHkgcmFpc2UgdGhlIHN0cmlk
ZQpsaW1pdCBvbiBnZW40Ky4gTGV0J3MganVzdCBwaWNrIHRoZSBsaW1pdCB0byBtYXRjaCB0aGUg
cmVuZGVyCmVuZ2luZSBtYXggc3RyaWRlICgyNTZLaUIgb24gZ2VuNyssIDEyOEtpQiBvbiBnZW40
KykuCgpObyByZW1hcHBpbmcgQ0NTIGJlY2F1c2UgdGhlIHZpcnR1YWwgYWRkcmVzcyBvZiBlYWNo
IHBhZ2UgYWN0dWFsbHkKbWF0dGVycyBkdWUgdG8gdGhlIG5ldyBoYXNoIG1vZGUKKFdhQ29tcHJl
c3NlZFJlc291cmNlRGlzcGxheU5ld0hhc2hNb2RlOnNrbCxrYmwgZXRjLiksIGFuZCBubwpyZW1h
cHBpbmcgb24gZ2VuMi8zIGR1ZSBleHRyYSBjb21wbGljYXRpb25zIGZyb20gZmVuY2UgYWxpZ25t
ZW50CmFuZCBnZW4yIDJLaUIgR1RUIHRpbGUgc2l6ZS4gQWxzbyBubyByZWFsIGJlbmVmaXQgc2lu
Y2UgdGhlCmRpc3BsYXkgZW5naW5lIGxpbWl0cyBhbHJlYWR5IG1hdGNoIHRoZSBvdGhlciBsaW1p
dHMuCgp2MjogUmViYXNlIGR1ZSB0byBpc19jY3NfbW9kaWZpZXIoKQp2MzogVHdlYWsgdGhlIGNv
bW1lbnQgYW5kIGNvbW1pdCBtc2cKdjQ6IEZpeCBnZW40KyBzdHJpZGUgbGltaXQgdG8gYmUgMTI4
S2lCCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4g
I3YzClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgMTMg
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZmEzMTdjNDBkNTQ4Li5hMmU0ZWY5MzhkNTMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKQEAgLTI1MTksNiArMjUxOSwxOSBA
QCBzdGF0aWMKIHUzMiBpbnRlbF9mYl9tYXhfc3RyaWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAkJCXUzMiBwaXhlbF9mb3JtYXQsIHU2NCBtb2RpZmllcikKIHsKKwkvKgor
CSAqIEFyYml0cmFyeSBsaW1pdCBmb3IgZ2VuNCsgY2hvc2VuIHRvIG1hdGNoIHRoZQorCSAqIHJl
bmRlciBlbmdpbmUgbWF4IHN0cmlkZS4KKwkgKgorCSAqIFRoZSBuZXcgQ0NTIGhhc2ggbW9kZSBt
YWtlcyByZW1hcHBpbmcgaW1wb3NzaWJsZQorCSAqLworCWlmICghaXNfY2NzX21vZGlmaWVyKG1v
ZGlmaWVyKSkgeworCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3KQorCQkJcmV0dXJuIDI1
NioxMDI0OworCQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDQpCisJCQlyZXR1cm4g
MTI4KjEwMjQ7CisJfQorCiAJcmV0dXJuIGludGVsX3BsYW5lX2ZiX21heF9zdHJpZGUoZGV2X3By
aXYsIHBpeGVsX2Zvcm1hdCwgbW9kaWZpZXIpOwogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
