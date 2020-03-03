Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29085177E6D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F0046E506;
	Tue,  3 Mar 2020 18:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AC66E506
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 18:29:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 10:29:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233725636"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 03 Mar 2020 10:29:24 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 10:29:04 -0800
Message-Id: <20200303182904.952445-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Check PHY type before reading
 DPLL frequency
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

aW50ZWxfZGRpX2Nsb2NrX2dldCgpIHRlc3RzIHRoZSBEUExMIElEIGFnYWluc3QgRFBMTF9JRF9J
Q0xfVEJUUExMICgyKQp0byBkZXRlcm1pbmUgd2hldGhlciB0byB0cnkgdG8gZGVzY2VuZCBpbnRv
IGEgVEJULXNwZWNpZmljIGhhbmRsZXIuCkhvd2V2ZXIgdGhpcyB0ZXN0IHdpbGwgYWxzbyBiZSB0
cnVlIHdoZW4gRFBMTDQgb24gRUhMIGlzIHVzZWQgc2luY2UgdGhhdApzaGFyZXMgdGhlIHNhbWUg
RFBMTCBJRCAoMikuCgpBZGQgYW4gZXh0cmEgY2hlY2sgdG8gZW5zdXJlIHRoZSBQSFkgaXMgYWN0
dWFsbHkgYSBUeXBlLUMgUEhZIGJlZm9yZQpkZXNjZW5kaW5nIGludG8gdGhlIFRCVCBoYW5kbGlu
Zy4gIFRoaXMgc2hvdWxkIGVuc3VyZSBFSEwgc3RpbGwgdGFrZXMKdGhlIGNvcnJlY3QgY29kZSBw
YXRoIGFuZCBzb21ld2hhdCBmdXR1cmUtcHJvb2YgdGhlIGNvZGUgYXMgd2VsbC4KCkNjOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2xvc2VzOiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMzY5ClNpZ25lZC1vZmYt
Ynk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKaW5kZXggMjg0MjE5ZGE3ZGY4Li5hYTNjYzQyYjBlYjkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTM3Niw4ICsxMzc2LDkgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsb2NrX2dldChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7CiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7CisJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXIt
PnBvcnQpOwogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYKKwlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMSAmJiBpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkgJiYK
IAkgICAgaW50ZWxfZ2V0X3NoYXJlZF9kcGxsX2lkKGRldl9wcml2LCBwaXBlX2NvbmZpZy0+c2hh
cmVkX2RwbGwpID09CiAJICAgIERQTExfSURfSUNMX1RCVFBMTCkKIAkJcGlwZV9jb25maWctPnBv
cnRfY2xvY2sgPSBpY2xfY2FsY190YnRfcGxsX2xpbmsoZGV2X3ByaXYsCi0tIAoyLjI0LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
