Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD1CAA6F0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 17:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1265C89DC5;
	Thu,  5 Sep 2019 15:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA63F89DC5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 15:07:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 08:07:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="177333216"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 05 Sep 2019 08:07:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 08:07:36 -0700
Message-Id: <20190905150737.26577-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Future-proof DDC pin mapping
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZ2VuZXJhbGx5IGFzc3VtZSBmdXR1cmUgcGxhdGZvcm1zIHdpbGwgaW5oZXJpdCB0aGUgYmVo
YXZpb3Igb2YgdGhlCm1vc3QgcmVjZW50IHBsYXRmb3Jtcywgc28gdXBkYXRlIG91ciBEREMgcGlu
IG1hcHBpbmcgZGVmYXVsdHMgdG8gbWF0Y2gKaG93IElDUC9UR1AgYmVoYXZlIChpLmUuLCBwaW5z
IHN0YXJ0aW5nIGZyb20gR01CVVNfUElOXzFfQlhUIGZvciBjb21ibwpQSFkncyBhbmQgcGlucyBz
dGFydGluZyBmcm9tIEdNQlVTX1BJTl85X1RDMV9JQ1AgZm9yIFRDIFBIWSdzKS4gIE1DQydzCm5v
bi1zdGFuZGFyZCBoYW5kbGluZyBvZiBjb21ibyBQSFkgQyBzZWVtcyBsaWtlIGEgcGxhdGZvcm0t
c3BlY2lmaWMKcXVpcmsgdGhhdCBpcyB1bmxpa2VseSB0byBiZSBkdXBsaWNhdGVkIG9uIGZ1dHVy
ZSBwbGF0Zm9ybXMsIHNvIGNvbnRpbnVlCmhhbmRsaW5nIGl0IGFzIGEgc3BlY2lhbCBjYXNlLgoK
V2l0aG91dCB0aGlzIGNoYW5nZSwgZnV0dXJlIHBsYXRmb3JtcyB3b3VsZCBkZWZhdWx0IHRvIGdl
bjQtc3R5bGUgcGluCm1hcHBpbmcgd2hpY2ggaXMgYWxtb3N0IGNlcnRhaW5seSBub3Qgd2hhdCB3
ZSdsbCB3YW50LgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCBjNTAwZmM5MTU0YzguLmI5ZDUz
ZWFlZTgwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKQEAg
LTMwMjksNyArMzAyOSw3IEBAIHN0YXRpYyB1OCBpbnRlbF9oZG1pX2RkY19waW4oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkK
IAkJZGRjX3BpbiA9IG1jY19wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwotCWVsc2Ug
aWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSB8fCBIQVNfUENIX0lDUChkZXZfcHJpdikpCisJZWxz
ZSBpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApCiAJCWRkY19waW4gPSBp
Y2xfcG9ydF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKIAllbHNlIGlmIChIQVNfUENIX0NO
UChkZXZfcHJpdikpCiAJCWRkY19waW4gPSBjbnBfcG9ydF90b19kZGNfcGluKGRldl9wcml2LCBw
b3J0KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
