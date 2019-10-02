Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC3FC8904
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 14:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BAF96E20A;
	Wed,  2 Oct 2019 12:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D9C6E20A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 12:48:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 05:48:54 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="221394721"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 05:48:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>
Date: Wed,  2 Oct 2019 14:48:20 +0200
Message-Id: <20191002124820.1862-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/i915/debugfs: Only wedge if we have
 reset available
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgcHJvY2VzcyBEUk9QX1JFU0VUX0FDVElWRSBhbmQgY2FuY2VsIGFsbCBvdXRzdGFuZGlu
ZyByZXF1ZXN0cyBieQpmb3JjaW5nIGEgR1BVIHJlc2V0IG9uIGEgaGFyZHdhcmUgd2l0aCByZXNl
dCBjYXBhYmlsaXRpZXMgZGlzYWJsZWQgb3IKbm90IHN1cHBvcnRlZCwgd2UgY2VydGFpbmx5IGVu
ZCB1cCB3aXRoIGEgdGVybWluYWxseSB3ZWRnZWQgR1BVLAppbXBvc3NpYmxlIHRvIHJlY292ZXIu
ICBUaGF0J3MgcHJvYmFibHkgbm90IHdoYXQgd2Ugd2FudC4KCkJlZm9yZSBzZXR0aW5nIHRoZSBH
UFUgd2VkZ2VkLCB2ZXJpZnkgaWYgd2UgaGF2ZSBHUFUgcmVzZXQgYXZhaWxhYmxlCmFuZCBmYWls
IHdpdGggLUVCVVNZIGlmIG5vdC4KClN1Z2dlc3RlZC1ieTogUGV0cmkgTGF0dmFsYSA8cGV0cmku
bGF0dmFsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFu
dXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1pY2hhxYIgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwu
d2luaWFyc2tpQGludGVsLmNvbT4KQ2M6IFBpb3RyIFBpw7Nya293c2tpIDxwaW90ci5waW9ya293
c2tpQGludGVsLmNvbT4KQ2M6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwuY29tPgpDYzog
UGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVy
ZXNAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBmZWM5ZmI3
Y2MzODQuLjA3NzRjYTZlMmEwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAg
LTM2MjcsOCArMzYyNywxNyBAQCBpOTE1X2Ryb3BfY2FjaGVzX3NldCh2b2lkICpkYXRhLCB1NjQg
dmFsKQogCiAJaWYgKHZhbCAmIERST1BfUkVTRVRfQUNUSVZFICYmCiAJICAgIHdhaXRfZm9yKGlu
dGVsX2VuZ2luZXNfYXJlX2lkbGUoJmk5MTUtPmd0KSwKLQkJICAgICBJOTE1X0lETEVfRU5HSU5F
U19USU1FT1VUKSkKKwkJICAgICBJOTE1X0lETEVfRU5HSU5FU19USU1FT1VUKSkgeworCQkvKgor
CQkgKiBPbmx5IHdlZGdlIGlmIHJlc2V0IGlzIHN1cHBvcnRlZCBhbmQgbm90IGRpc2FibGVkLCBv
dGhlcndpc2UKKwkJICogd2UgY2VydGFpbmx5IGVuZCB1cCB3aXRoIHRoZSBHUFUgdGVybWluYWxs
eSB3ZWRnZWQuICBJbmZvcm0KKwkJICogdXNlcnNwYWNlIGFib3V0IHRoZSBwcm9ibGVtIGluc3Rl
YWQuCisJCSAqLworCQlpZiAoIWludGVsX2hhc19ncHVfcmVzZXQoJmk5MTUtPmd0KSkKKwkJCXJl
dHVybiAtRUJVU1k7CisKIAkJaW50ZWxfZ3Rfc2V0X3dlZGdlZCgmaTkxNS0+Z3QpOworCX0KIAog
CS8qIE5vIG5lZWQgdG8gY2hlY2sgYW5kIHdhaXQgZm9yIGdwdSByZXNldHMsIG9ubHkgbGliZHJt
IGF1dG8tcmVzdGFydHMKIAkgKiBvbiBpb2N0bHMgb24gLUVBR0FJTi4gKi8KLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
