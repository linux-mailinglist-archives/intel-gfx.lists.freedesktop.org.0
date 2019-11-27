Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D28B10C00C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 23:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2628929F;
	Wed, 27 Nov 2019 22:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A5D89321
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:13:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 14:13:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="383633836"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2019 14:13:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 14:13:13 -0800
Message-Id: <20191127221314.575575-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127221314.575575-1-matthew.d.roper@intel.com>
References: <20191127221314.575575-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/ehl: Make
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
dGhlIFBIWSBpbmRleCBieQpkZWZhdWx0LgoKdjI6IFJlbmFtZSB0byBpbnRlbF9jb21ib19waHlf
Y29ubmVjdGVkLiAgKEx1Y2FzKQoKRml4ZXM6IDcxOWQyNDAwMjYwMiAoImRybS9pOTE1L2VobDog
RW5hYmxlIERESS1EIikKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEyICsrKysrLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNzc3YWRiODc1YmEyLi41YzQw
NmEwZmQwNDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTU0
ODcsMTUgKzU0ODcsMTMgQEAgc3RhdGljIGJvb2wgYnh0X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJcmV0dXJuIEk5MTVfUkVBRChHRU44X0RF
X1BPUlRfSVNSKSAmIGJpdDsKIH0KIAotc3RhdGljIGJvb2wgaWNsX2NvbWJvX3BvcnRfY29ubmVj
dGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkgICAgIHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQorc3RhdGljIGJvb2wgaW50ZWxfY29t
Ym9fcGh5X2Nvbm5lY3RlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJ
ICAgICAgZW51bSBwaHkgcGh5KQogewotCWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQt
PmJhc2UucG9ydDsKLQotCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JU
X0MpCisJaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSAmJiBwaHkgPT0gUEhZX0MpCiAJCXJldHVy
biBJOTE1X1JFQUQoU0RFSVNSKSAmIFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RDMSk7CiAKLQly
ZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBvcnQpOworCXJl
dHVybiBJOTE1X1JFQUQoU0RFSVNSKSAmIFNERV9ERElfSE9UUExVR19JQ1AocGh5KTsKIH0KIAog
c3RhdGljIGJvb2wgaWNwX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIpCkBAIC01NTA1LDcgKzU1MDMsNyBAQCBzdGF0aWMgYm9vbCBpY3BfZGlnaXRh
bF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAllbnVtIHBo
eSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7CiAKIAlp
ZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKQotCQlyZXR1cm4gaWNsX2NvbWJv
X3BvcnRfY29ubmVjdGVkKGRldl9wcml2LCBkaWdfcG9ydCk7CisJCXJldHVybiBpbnRlbF9jb21i
b19waHlfY29ubmVjdGVkKGRldl9wcml2LCBwaHkpOwogCWVsc2UgaWYgKGludGVsX3BoeV9pc190
YyhkZXZfcHJpdiwgcGh5KSkKIAkJcmV0dXJuIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKGRpZ19w
b3J0KTsKIAllbHNlCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
