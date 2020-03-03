Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8770178363
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 20:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478C689E1A;
	Tue,  3 Mar 2020 19:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0CF89D3E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 19:50:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 11:50:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="240187300"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga003.jf.intel.com with ESMTP; 03 Mar 2020 11:50:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 11:50:43 -0800
Message-Id: <20200303195043.959913-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200303190648.GA20591@ideak-desk.fi.intel.com>
References: <20200303190648.GA20591@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/ehl: Check PHY type before reading
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
YXRoIGFuZCBzb21ld2hhdCBmdXR1cmUtcHJvb2YgdGhlIGNvZGUgYXMgd2VsbC4KCnYyOiBEcm9w
IHRoZSBnZW4rIGNoZWNrIHNpbmNlIG9ubHkgZ2VuMTErIHBsYXRmb3JtcyBjYW4gaGF2ZSBUeXBl
LUMKICAgIG91dHB1dHMuICAoSW1yZSkKCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy8xMzY5ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDMg
KystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMjg0MjE5ZGE3ZGY4Li43
M2M5ZDRmZGE2ZjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpA
QCAtMTM3Niw4ICsxMzc2LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsb2NrX2dldChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
cGlwZV9jb25maWcpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19w
aHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOwogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEgJiYKKwlpZiAoaW50ZWxfcGh5X2lzX3RjKGRldl9wcml2LCBwaHkpICYmCiAJICAgIGlu
dGVsX2dldF9zaGFyZWRfZHBsbF9pZChkZXZfcHJpdiwgcGlwZV9jb25maWctPnNoYXJlZF9kcGxs
KSA9PQogCSAgICBEUExMX0lEX0lDTF9UQlRQTEwpCiAJCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2Nr
ID0gaWNsX2NhbGNfdGJ0X3BsbF9saW5rKGRldl9wcml2LAotLSAKMi4yNC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
