Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A683C1899F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 14:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC8E89C13;
	Thu,  9 May 2019 12:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F56A89C13
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 12:22:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 05:22:22 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 09 May 2019 05:22:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2019 15:22:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 15:21:57 +0300
Message-Id: <20190509122159.24376-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 6/8] drm/i915: Align dumb buffer stride to 4k
 to allow for gtt remapping
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFs
aWduIGR1bWIgYnVmZmVyIHN0cmlkZSB0byA0ayBpZiB0aGUgZmIgd2lsbCBiZSBiaWcgZW5vdWdo
IHRvCnJlcXVpcmUgZ3R0IHJlbWFwcGluZy4KCnYyOiBMZWF2ZSB0aGUgc3RyaWRlIGFsb25lIGZv
ciBidWZmZXJzIHRoYXQgbG9vayB0byBiZSBmb3IgdGhlIGN1cnNvcgp2MzogTWFrZSBpdCBub3Qg
YSBoYWNrIChEYW5pZWwpCgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgfCAyNiAr
KysrKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlz
cGxheS5jIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5oIHwgIDIg
KysKIDMgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA0ZTQ3NGJjZjRjMjIuLjdjYWZkNTYxMmY3MSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC01Miw2ICs1Miw3IEBACiAjaW5jbHVkZSAiaTkxNV90
cmFjZS5oIgogI2luY2x1ZGUgImk5MTVfdmdwdS5oIgogCisjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eS5oIgogI2luY2x1ZGUgImludGVsX2Rydi5oIgogI2luY2x1ZGUgImludGVsX2Zyb250YnVmZmVy
LmgiCiAjaW5jbHVkZSAiaW50ZWxfcG0uaCIKQEAgLTU2MCw4ICs1NjEsMzEgQEAgaTkxNV9nZW1f
ZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCQkgICAgIHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsCiAJCSAgICAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzKQogewor
CWludCBjcHAgPSBESVZfUk9VTkRfVVAoYXJncy0+YnBwLCA4KTsKKwl1MzIgZm9ybWF0OworCisJ
c3dpdGNoIChjcHApIHsKKwljYXNlIDE6CisJCWZvcm1hdCA9IERSTV9GT1JNQVRfQzg7CisJCWJy
ZWFrOworCWNhc2UgMjoKKwkJZm9ybWF0ID0gRFJNX0ZPUk1BVF9SR0I1NjU7CisJCWJyZWFrOwor
CWNhc2UgNDoKKwkJZm9ybWF0ID0gRFJNX0ZPUk1BVF9YUkdCODg4ODsKKwkJYnJlYWs7CisJZGVm
YXVsdDoKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCiAJLyogaGF2ZSB0byB3b3JrIG91dCBzaXpl
L3BpdGNoIGFuZCByZXR1cm4gdGhlbSAqLwotCWFyZ3MtPnBpdGNoID0gQUxJR04oYXJncy0+d2lk
dGggKiBESVZfUk9VTkRfVVAoYXJncy0+YnBwLCA4KSwgNjQpOworCWFyZ3MtPnBpdGNoID0gQUxJ
R04oYXJncy0+d2lkdGggKiBjcHAsIDY0KTsKKworCS8qIGFsaWduIHN0cmlkZSB0byBwYWdlIHNp
emUgc28gdGhhdCB3ZSBjYW4gcmVtYXAgKi8KKwlpZiAoYXJncy0+cGl0Y2ggPiBpbnRlbF9wbGFu
ZV9mYl9tYXhfc3RyaWRlKHRvX2k5MTUoZGV2KSwgZm9ybWF0LAorCQkJCQkJICAgIERSTV9GT1JN
QVRfTU9EX0xJTkVBUikpCisJCWFyZ3MtPnBpdGNoID0gQUxJR04oYXJncy0+cGl0Y2gsIDQwOTYp
OworCiAJYXJncy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0OwogCXJldHVybiBp
OTE1X2dlbV9jcmVhdGUoZmlsZSwgdG9faTkxNShkZXYpLAogCQkJICAgICAgICZhcmdzLT5zaXpl
LCAmYXJncy0+aGFuZGxlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCA5
NGZhYWM5ZTM2NjYuLmZhMzE3YzQwZDU0OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMjQ5OCw3ICsyNDk4LDYgQEAgYm9vbCBpc19jY3NfbW9kaWZpZXIodTY0IG1vZGlm
aWVyKQogCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOwog
fQogCi1zdGF0aWMKIHUzMiBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgIHUzMiBwaXhlbF9mb3JtYXQsIHU2NCBtb2Rp
ZmllcikKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaAppbmRleCA1MDBlZWM5MDky
OGQuLjFlNjUzM2ZiZDA2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaApAQCAt
NDM2LDYgKzQzNiw4IEBAIHZvaWQgaW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYnBwLCBpbnQg
bmxhbmVzLAogCQkJICAgIGJvb2wgY29uc3RhbnRfbik7CiBib29sIGlzX2Njc19tb2RpZmllcih1
NjQgbW9kaWZpZXIpOwogdm9pZCBscHRfZGlzYWJsZV9jbGtvdXRfZHAoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKK3UzMiBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCSAgICAgIHUzMiBwaXhlbF9mb3JtYXQs
IHU2NCBtb2RpZmllcik7CiBib29sIGludGVsX3BsYW5lX2Nhbl9yZW1hcChjb25zdCBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKIAogI2VuZGlmCi0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
