Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A9A28DCF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81B66E08C;
	Thu, 23 May 2019 23:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196776E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:40 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 23 May 2019 16:31:39 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0l023503; Fri, 24 May 2019 00:31:38 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:41 +0000
Message-Id: <20190523233049.28020-15-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 14/22] drm/i915/guc: New GuC scratch
 registers for Gen11
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

R2VuMTEgYWRkcyBuZXcgc2V0IG9mIHNjcmF0Y2ggcmVnaXN0ZXJzIHRoYXQgY2FuIGJlIHVzZWQg
Zm9yIE1NSU8KYmFzZWQgSG9zdC10by1HdWMgY29tbXVuaWNhdGlvbi4gRHVlIHRvIGxpbWl0ZWQg
bnVtYmVyIG9mIHRoZXNlCnJlZ2lzdGVycyBpdCBpcyBleHBlY3RlZCB0aGF0IGhvc3Qgd2lsbCB1
c2UgdGhlbSBvbmx5IGZvciBjb21tYW5kCnRyYW5zcG9ydCBidWZmZXJzIChDVEIpIGNvbW11bmlj
YXRpb24gc2V0dXAgaWYgb25lIGlzIGF2YWlsYWJsZS4KCkJzcGVjOiAyMTA0NAoKU2lnbmVkLW9m
Zi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuYyAgICAgfCAxMiArKysrKysrKystLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCB8ICAzICsrKwogMiBmaWxlcyBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjLmMKaW5kZXggODg4YTFlOTk5YzhiLi41Mzg4NjhhMTAxNjggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Yy5jCkBAIC01Niw5ICs1NiwxNSBAQCB2b2lkIGludGVsX2d1Y19pbml0X3NlbmRfcmVn
cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiAJZW51bSBmb3JjZXdha2VfZG9tYWlucyBmd19kb21h
aW5zID0gMDsKIAl1bnNpZ25lZCBpbnQgaTsKIAotCWd1Yy0+c2VuZF9yZWdzLmJhc2UgPSBpOTE1
X21taW9fcmVnX29mZnNldChTT0ZUX1NDUkFUQ0goMCkpOwotCWd1Yy0+c2VuZF9yZWdzLmNvdW50
ID0gR1VDX01BWF9NTUlPX01TR19MRU47Ci0JQlVJTERfQlVHX09OKEdVQ19NQVhfTU1JT19NU0df
TEVOID4gU09GVF9TQ1JBVENIX0NPVU5UKTsKKwlpZiAoSEFTX0dVQ19DVChkZXZfcHJpdikgJiYg
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCQlndWMtPnNlbmRfcmVncy5iYXNlID0KKwkJ
CQlpOTE1X21taW9fcmVnX29mZnNldChHRU4xMV9TT0ZUX1NDUkFUQ0goMCkpOworCQlndWMtPnNl
bmRfcmVncy5jb3VudCA9IEdFTjExX1NPRlRfU0NSQVRDSF9DT1VOVDsKKwl9IGVsc2UgeworCQln
dWMtPnNlbmRfcmVncy5iYXNlID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoU09GVF9TQ1JBVENIKDAp
KTsKKwkJZ3VjLT5zZW5kX3JlZ3MuY291bnQgPSBHVUNfTUFYX01NSU9fTVNHX0xFTjsKKwkJQlVJ
TERfQlVHX09OKEdVQ19NQVhfTU1JT19NU0dfTEVOID4gU09GVF9TQ1JBVENIX0NPVU5UKTsKKwl9
CiAKIAlmb3IgKGkgPSAwOyBpIDwgZ3VjLT5zZW5kX3JlZ3MuY291bnQ7IGkrKykgewogCQlmd19k
b21haW5zIHw9IGludGVsX3VuY29yZV9mb3JjZXdha2VfZm9yX3JlZygmZGV2X3ByaXYtPnVuY29y
ZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAppbmRleCBhZWMwMmVkZGJhZWQuLmQy
NmRlNTE5MzU2OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaApAQCAtNTEsNiAr
NTEsOSBAQAogI2RlZmluZSBTT0ZUX1NDUkFUQ0gobikJCQlfTU1JTygweGMxODAgKyAobikgKiA0
KQogI2RlZmluZSBTT0ZUX1NDUkFUQ0hfQ09VTlQJCTE2CiAKKyNkZWZpbmUgR0VOMTFfU09GVF9T
Q1JBVENIKG4pCQlfTU1JTygweDE5MDI0MCArIChuKSAqIDQpCisjZGVmaW5lIEdFTjExX1NPRlRf
U0NSQVRDSF9DT1VOVAk0CisKICNkZWZpbmUgVU9TX1JTQV9TQ1JBVENIKGkpCQlfTU1JTygweGMy
MDAgKyAoaSkgKiA0KQogI2RlZmluZSBVT1NfUlNBX1NDUkFUQ0hfQ09VTlQJCTY0CiAKLS0gCjIu
MTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
