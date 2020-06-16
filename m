Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DD61FB409
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 16:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7C46E8C4;
	Tue, 16 Jun 2020 14:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89BE6E8C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 14:19:03 +0000 (UTC)
IronPort-SDR: ubc2J7D03dMOkuE+pUDuaBvSJ0ARWDkEcv3QOCde+2mo7FiZs/n6HzEtK37ubg1kMzJfKy6pyB
 mvmLLWtuP0Kw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 07:19:02 -0700
IronPort-SDR: LGCWtSkBk8fHAvnlfQZUXbL4yd91iiI1GqZebSyCjfZ3FwwH/i+1t3J+yGsKeTgvAQxgAK7C4d
 DKqZh4wIbudg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="273164996"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 07:19:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 17:18:50 +0300
Message-Id: <20200616141855.746-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/tgl+: Use the correct DP_TP_*
 register instances in MST encoders
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

TVNUIGVuY29kZXJzIG11c3QgdXNlIHRoZSBtYXN0ZXIgTVNUIHRyYW5zY29kZXIncyBEUF9UUF9T
VEFUVVMgYW5kCkRQX1RQX0NPTlRST0wgcmVnaXN0ZXJzLiBBdG0sIGR1cmluZyB0aGUgSFcgcmVh
ZG91dCBvZiBhIHNsYXZlCnRyYW5zY29kZXIncyBDUlRDIHN0YXRlIHdlIHJlc2V0IHRoZXNlIHJl
Z2lzdGVyIGFkZHJlc3NlcyBpbgppbnRlbF9kcDo6cmVncy5kcF90cF8qIHRvIHRoZSBzbGF2ZSB0
cmFuc2NvZGVyJ3MgRFBfVFBfKiByZWdpc3RlcgphZGRyZXNzZXMgaW5jb3JyZWN0bHk7IGZpeCB0
aGlzLgoKVGhpcyBpc3N1ZSBsZWQgYXQgbGVhc3QgdG8KJ1RpbWVkIG91dCB3YWl0aW5nIGZvciBB
Q1Qgc2VudCB3aGVuIGRpc2FibGluZycKZXJyb3JzIGR1cmluZyBvdXRwdXQgZGlzYWJsaW5nIGlu
IGEgbXVsdGlwbGUgTVNUIHN0cmVhbSBjb25maWcuCgpUaGlzIGNoYW5nZSByZXBsYWNlcwpodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzY5NTc3Lz9zZXJpZXM9NzgxOTMm
cmV2PTEKd2hpY2gganVzdCBwYXBlcmVkIG92ZXIgdGhlIHByb2JsZW0uCgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyB8IDE1ICsrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKaW5kZXggY2E3YmIyMjk0ZDJiLi43M2Q2Y2MyOTI5MWEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNDE5MywxMSArNDE5Myw2IEBAIHZvaWQg
aW50ZWxfZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaWYg
KGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCB0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNj
b2RlcikpKQogCQlyZXR1cm47CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewot
CQlpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwgPSBUR0xfRFBfVFBfQ1RMKGNwdV90cmFuc2NvZGVy
KTsKLQkJaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzID0gVEdMX0RQX1RQX1NUQVRVUyhjcHVf
dHJhbnNjb2Rlcik7Ci0JfQotCiAJaW50ZWxfZHNjX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9j
b25maWcpOwogCiAJdGVtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFRSQU5TX0RESV9GVU5D
X0NUTChjcHVfdHJhbnNjb2RlcikpOwpAQCAtNDI5OSw2ICs0Mjk0LDE2IEBAIHZvaWQgaW50ZWxf
ZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCWJyZWFrOwog
CX0KIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCWVudW0gdHJhbnNjb2Rl
ciB0cmFuc2NvZGVyID0KKwkJCWludGVsX2RwX21zdF9pc19zbGF2ZV90cmFucyhwaXBlX2NvbmZp
ZykgPworCQkJcGlwZV9jb25maWctPm1zdF9tYXN0ZXJfdHJhbnNjb2RlciA6CisJCQlwaXBlX2Nv
bmZpZy0+Y3B1X3RyYW5zY29kZXI7CisKKwkJaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsID0gVEdM
X0RQX1RQX0NUTCh0cmFuc2NvZGVyKTsKKwkJaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzID0g
VEdMX0RQX1RQX1NUQVRVUyh0cmFuc2NvZGVyKTsKKwl9CisKIAlwaXBlX2NvbmZpZy0+aGFzX2F1
ZGlvID0KIAkJaW50ZWxfZGRpX2lzX2F1ZGlvX2VuYWJsZWQoZGV2X3ByaXYsIGNwdV90cmFuc2Nv
ZGVyKTsKIAotLSAKMi4yMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
