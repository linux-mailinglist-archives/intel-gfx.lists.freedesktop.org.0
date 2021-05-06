Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4741D37585A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 18:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0106ECCD;
	Thu,  6 May 2021 16:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E0B6ECCB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 16:19:44 +0000 (UTC)
IronPort-SDR: qFG5RigRCb2Nl5TVs/w3dOK+YUBuXB4xBbnYA4+4AQgDhDzp4bnBFWXCzgGsTk0rsqq3kOeDPJ
 pIEcK4zO5s1A==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="195395935"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="195395935"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:44 -0700
IronPort-SDR: oAQ05Mm0mTn0VE87tT1y9HXMD8yHRpY7KQBkTzvP10I5kvOtBnF5I7IfIZzDabLosUpEJruOGK
 VB+buCosCmQw==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="407072182"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 May 2021 19:19:25 +0300
Message-Id: <20210506161930.309688-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210506161930.309688-1-imre.deak@intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/10] drm/i915/xelpd: Fallback to plane
 stride limitations when using DPT
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpHVFQg
cmVtYXBwaW5nIGFsbG93IHVzIHRvIGhhdmUgcGxhbmVzIHdpdGggc3RyaWRlcyBsYXJnZXIgdGhh
biBIVwpzdXBwb3J0cyBidXQgRFBUICsgR1RUIHJlbWFwcGluZyBpcyBzdGlsbCBub3QgcHJvcGVy
bHkgaGFuZGxlZCBzbwpmYWxsaW5nIGJhY2sgdG8gcGxhbmUgSFcgbGltaXRhdGlvbnMgZm9yIG5v
dy4KClRoaXMgcGF0Y2ggY2FuIGJlIGRyb3BwZWQgd2hlbiBEUFQgKyBHVFQgcmVtYXBwaW5nIGlz
IGNvcnJlY3RseQpoYW5kbGVkIGJ1dCB1bnRpbCB0aGVuIHdlIG5lZWQgdGhpcyBsaW1pdGF0aW9u
IGZvciBhbGwgZGlzcGxheTEzCnBsYXRmb3JtcyB0byBhdm9pZCBwaXBlIGZhdWx0cy4KCkNjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogQ2xpbnQg
VGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+ClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgICAgICB8IDE1ICsrKysrKystLS0tLS0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA4ICsrKysrKy0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOTlhOTIxZWEyZTgxYi4uMjkyMzk2
MDU4ZTc1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTE2MDcsMTQgKzE2MDcsMTMgQEAgdTMyIGludGVsX2ZiX21heF9zdHJpZGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCSAqCiAJICogVGhlIG5ldyBDQ1MgaGFzaCBt
b2RlIG1ha2VzIHJlbWFwcGluZyBpbXBvc3NpYmxlCiAJICovCi0JaWYgKCFpc19jY3NfbW9kaWZp
ZXIobW9kaWZpZXIpKSB7Ci0JCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gNykKLQkJCXJl
dHVybiAyNTYqMTAyNDsKLQkJZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDQpCi0J
CQlyZXR1cm4gMTI4KjEwMjQ7Ci0JfQotCi0JcmV0dXJuIGludGVsX3BsYW5lX2ZiX21heF9zdHJp
ZGUoZGV2X3ByaXYsIHBpeGVsX2Zvcm1hdCwgbW9kaWZpZXIpOworCWlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPCA0IHx8IGlzX2Njc19tb2RpZmllcihtb2RpZmllcikgfHwKKwkgICAgaW50ZWxf
bW9kaWZpZXJfdXNlc19kcHQoZGV2X3ByaXYsIG1vZGlmaWVyKSkKKwkJcmV0dXJuIGludGVsX3Bs
YW5lX2ZiX21heF9zdHJpZGUoZGV2X3ByaXYsIHBpeGVsX2Zvcm1hdCwgbW9kaWZpZXIpOworCWVs
c2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA3KQorCQlyZXR1cm4gMjU2ICogMTAyNDsK
KwllbHNlCisJCXJldHVybiAxMjggKiAxMDI0OwogfQogCiBzdGF0aWMgdTMyCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDdm
ZTk2Nzc3ZGM2NzEuLjVmNGMzZTViZWIyZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC0xOTc1LDEwICsxOTc1LDE0IEBA
IGludGVsX3dhaXRfZm9yX3ZibGFua19pZl9hY3RpdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHBpcGUgcGlwCiAJCWludGVsX3dhaXRfZm9yX3ZibGFuayhkZXZfcHJp
diwgcGlwZSk7CiB9CiAKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9tb2RpZmllcl91c2VzX2Rw
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IG1vZGlmaWVyKQoreworCXJldHVy
biBESVNQTEFZX1ZFUihpOTE1KSA+PSAxMyAmJiBtb2RpZmllciAhPSBEUk1fRk9STUFUX01PRF9M
SU5FQVI7Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9mYl91c2VzX2RwdChjb25zdCBz
dHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYikKIHsKLQlyZXR1cm4gZmIgJiYgRElTUExBWV9WRVIo
dG9faTkxNShmYi0+ZGV2KSkgPj0gMTMgJiYKLQkJZmItPm1vZGlmaWVyICE9IERSTV9GT1JNQVRf
TU9EX0xJTkVBUjsKKwlyZXR1cm4gZmIgJiYgaW50ZWxfbW9kaWZpZXJfdXNlc19kcHQodG9faTkx
NShmYi0+ZGV2KSwgZmItPm1vZGlmaWVyKTsKIH0KIAogc3RhdGljIGlubGluZSB1MzIgaW50ZWxf
cGxhbmVfZ2d0dF9vZmZzZXQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSkKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
