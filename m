Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F06D010A5C9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58398896F7;
	Tue, 26 Nov 2019 21:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A822D8967F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:07:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:07:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="211540651"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2019 13:07:40 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 13:07:31 -0800
Message-Id: <20191126210732.407496-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126210732.407496-1-matthew.d.roper@intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/ehl: Make
 icp_digital_port_connected() use phy instead of port
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

V2hlbiBsb29raW5nIGF0IFNERUlTUiB0byBkZXRlcm1pbmUgdGhlIGNvbm5lY3Rpb24gc3RhdHVz
IG9mIGNvbWJvCm91dHB1dHMsIHdlIHNob3VsZCB1c2UgdGhlIHBoeSBpbmRleCByYXRoZXIgdGhh
biB0aGUgcG9ydCBpbmRleC4KQWx0aG91Z2ggdGhleSdyZSB1c3VhbGx5IHRoZSBzYW1lIHRoaW5n
LCBFSEwncyBEREktRCAocG9ydCBEKSBpcwphdHRhY2hlZCB0byBQSFktQSBhbmQgU0RFSVNSIGRv
ZXNuJ3QgZXZlbiBoYXZlIGJpdHMgZm9yIGEgIkQiIG91dHB1dC4KSXQncyBhbHNvIHBvc3NpYmxl
IHRoYXQgZnV0dXJlIHBsYXRmb3JtcyBtYXkgbWFwIERESXMgKHRoZSBpbnRlcm5hbApkaXNwbGF5
IGVuZ2luZSBwcm9ncmFtbWluZyB1bml0cykgdG8gUEhZcyAodGhlIG91dHB1dCBoYW5kbGluZyBv
biB0aGUgSU8Kc2lkZSkgaW4gd2F5cyB3aGVyZSBwb3J0IT1waHksIHNvIGxldCdzIGxvb2sgYXQg
dGhlIFBIWSBpbmRleCBieQpkZWZhdWx0LgoKRml4ZXM6IDcxOWQyNDAwMjYwMiAoImRybS9pOTE1
L2VobDogRW5hYmxlIERESS1EIikKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTAgKysrKy0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggZGRmNWJhZDFiOTY5Li41
OWM1ZmQ3YmYyN2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTU0NzcsMTQgKzU0NzcsMTIgQEAgc3RhdGljIGJvb2wgYnh0X2RpZ2l0YWxfcG9ydF9jb25uZWN0
ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiB9CiAKIHN0YXRpYyBib29sIGljbF9j
b21ib19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0J
CQkJICAgICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKKwkJCQkg
ICAgIGVudW0gcGh5IHBoeSkKIHsKLQllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5i
YXNlLnBvcnQ7Ci0KLQlpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpICYmIHBvcnQgPT0gUE9SVF9D
KQorCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcGh5ID09IFBIWV9DKQogCQlyZXR1cm4g
STkxNV9SRUFEKFNERUlTUikgJiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOwogCi0JcmV0
dXJuIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX0RESV9IT1RQTFVHX0lDUChwb3J0KTsKKwlyZXR1
cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBoeSk7CiB9CiAKIHN0
YXRpYyBib29sIGljcF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKQpAQCAtNTQ5NCw3ICs1NDkyLDcgQEAgc3RhdGljIGJvb2wgaWNwX2RpZ2l0YWxf
cG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJZW51bSBwaHkg
cGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOwogCiAJaWYg
KGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkKLQkJcmV0dXJuIGljbF9jb21ib19w
b3J0X2Nvbm5lY3RlZChkZXZfcHJpdiwgZGlnX3BvcnQpOworCQlyZXR1cm4gaWNsX2NvbWJvX3Bv
cnRfY29ubmVjdGVkKGRldl9wcml2LCBwaHkpOwogCWVsc2UgaWYgKGludGVsX3BoeV9pc190Yyhk
ZXZfcHJpdiwgcGh5KSkKIAkJcmV0dXJuIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKGRpZ19wb3J0
KTsKIAllbHNlCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
