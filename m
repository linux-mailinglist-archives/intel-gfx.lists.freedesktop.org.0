Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FD5129969
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:33:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C66E6E30D;
	Mon, 23 Dec 2019 17:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7426E6E311
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 17:33:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 09:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="417324834"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 09:33:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 09:32:36 -0800
Message-Id: <20191223173244.30742-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223173244.30742-1-lucas.demarchi@intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/10] drm/i915: prefer 3-letter acronym for
 pineview
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

V2UgYXJlIGN1cnJlbnRseSB1c2luZyBhIG1peCBvZiBwbGF0Zm9ybSBuYW1lIGFuZCBhY3Jvbnlt
IHRvIG5hbWUgdGhlCmZ1bmN0aW9ucy4gTGV0J3MgcHJlZmVyIHRoZSBhY3JvbnltIGFzIGl0IHNo
b3VsZCBiZSBjbGVhciB3aGF0IHBsYXRmb3JtCml0J3MgYWJvdXQgYW5kIGl0J3Mgc2hvcnRlciwg
c28gaXQgZG9lc24ndCBnbyBvdmVyIDgwIGNvbHVtbnMgaW4gYSBmZXcKY2FzZXMuIFRoaXMgY29u
dmVydHMgcGluZXZpZXcgdG8gcG52IHdoZXJlIGFwcHJvcHJpYXRlLgoKU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkFja2VkLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgIHwgNCArKy0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDE4NjBkYTBhNDkzZS4uNWQ0MzAyNGYz
NWFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMzY5LDcgKzM2OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbGltaXQgaW50ZWxf
bGltaXRzX2c0eF9kdWFsX2NoYW5uZWxfbHZkcyA9IHsKIAl9LAogfTsKIAotc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9saW1pdCBpbnRlbF9saW1pdHNfcGluZXZpZXdfc2R2byA9IHsKK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfbGltaXQgcG52X2xpbWl0c19zZHZvID0gewogCS5kb3QgPSB7
IC5taW4gPSAyMDAwMCwgLm1heCA9IDQwMDAwMH0sCiAJLnZjbyA9IHsgLm1pbiA9IDE3MDAwMDAs
IC5tYXggPSAzNTAwMDAwIH0sCiAJLyogUGluZXZpZXcncyBOY291bnRlciBpcyBhIHJpbmcgY291
bnRlciAqLwpAQCAtMzg0LDcgKzM4NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbGlt
aXQgaW50ZWxfbGltaXRzX3BpbmV2aWV3X3Nkdm8gPSB7CiAJCS5wMl9zbG93ID0gMTAsIC5wMl9m
YXN0ID0gNSB9LAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9saW1pdCBpbnRlbF9s
aW1pdHNfcGluZXZpZXdfbHZkcyA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbGltaXQg
cG52X2xpbWl0c19sdmRzID0gewogCS5kb3QgPSB7IC5taW4gPSAyMDAwMCwgLm1heCA9IDQwMDAw
MCB9LAogCS52Y28gPSB7IC5taW4gPSAxNzAwMDAwLCAubWF4ID0gMzUwMDAwMCB9LAogCS5uID0g
eyAubWluID0gMywgLm1heCA9IDYgfSwKQEAgLTg3OTUsOSArODc5NSw5IEBAIHN0YXRpYyBpbnQg
cG52X2NydGNfY29tcHV0ZV9jbG9jayhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCURSTV9E
RUJVR19LTVMoInVzaW5nIFNTQyByZWZlcmVuY2UgY2xvY2sgb2YgJWQga0h6XG4iLCByZWZjbGsp
OwogCQl9CiAKLQkJbGltaXQgPSAmaW50ZWxfbGltaXRzX3BpbmV2aWV3X2x2ZHM7CisJCWxpbWl0
ID0gJnBudl9saW1pdHNfbHZkczsKIAl9IGVsc2UgewotCQlsaW1pdCA9ICZpbnRlbF9saW1pdHNf
cGluZXZpZXdfc2R2bzsKKwkJbGltaXQgPSAmcG52X2xpbWl0c19zZHZvOwogCX0KIAogCWlmICgh
Y3J0Y19zdGF0ZS0+Y2xvY2tfc2V0ICYmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAzMWVj
ODIzMzdlNGYuLmVhYjNiMDI5ZTk4YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0xNDAs
NyArMTQwLDcgQEAgc3RhdGljIHZvaWQgZ2xrX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogfQogCi1zdGF0aWMgdm9pZCBpOTE1X3BpbmV2aWV3
X2dldF9tZW1fZnJlcShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMg
dm9pZCBwbnZfZ2V0X21lbV9mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IHsKIAl1MzIgdG1wOwogCkBAIC03MTgwLDcgKzcxODAsNyBAQCB2b2lkIGludGVsX2luaXRfcG0o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCS8qIEZvciBjeHNyICovCiAJ
aWYgKElTX1BJTkVWSUVXKGRldl9wcml2KSkKLQkJaTkxNV9waW5ldmlld19nZXRfbWVtX2ZyZXEo
ZGV2X3ByaXYpOworCQlwbnZfZ2V0X21lbV9mcmVxKGRldl9wcml2KTsKIAllbHNlIGlmIChJU19H
RU4oZGV2X3ByaXYsIDUpKQogCQlpOTE1X2lyb25sYWtlX2dldF9tZW1fZnJlcShkZXZfcHJpdik7
CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
