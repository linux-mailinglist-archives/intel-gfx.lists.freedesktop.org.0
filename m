Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B53ED1DCB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 03:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CB06E29A;
	Thu, 10 Oct 2019 01:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2F26E29A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 01:02:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 18:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,278,1566889200"; d="scan'208";a="193845524"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 09 Oct 2019 18:02:14 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 18:02:12 -0700
Message-Id: <20191010010214.11591-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Add microcontrollers
 documentation section
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

VG8gYmV0dGVyIG9yZ2FuaXplIHRoZSBpbmZvcm1hdGlvbiwgYWRkIGEgbWljcm9jb250cm9sbGVy
cyBzZWN0aW9uIGFuZAptb3ZlL2xpbmsgdGhlIEd1QywgSHVDIGFuZCBETUMgZG9jdW1lbnRhdGlv
biB1bmRlciBpdC4gQWxzbyBhZGQgYSBzbWFsbAppbnRyby4KClNpZ25lZC1vZmYtYnk6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQWNrZWQtYnk6IEFu
bmEgS2FyYXMgPGFubmEua2FyYXNAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWFydGluIFBlcmVz
IDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZ3B1L2k5
MTUucnN0IHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IGIvRG9jdW1l
bnRhdGlvbi9ncHUvaTkxNS5yc3QKaW5kZXggNDY1Nzc5NjcwZmQ0Li5mMWJhZTc4NjcwNDUgMTAw
NjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CisrKyBiL0RvY3VtZW50YXRpb24v
Z3B1L2k5MTUucnN0CkBAIC00MTUsNiArNDE1LDE1IEBAIE9iamVjdCBUaWxpbmcgSU9DVExzCiAu
LiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5j
CiAgICA6ZG9jOiBidWZmZXIgb2JqZWN0IHRpbGluZwogCitNaWNyb2NvbnRyb2xsZXJzCis9PT09
PT09PT09PT09PT09CisKK1N0YXJ0aW5nIGZyb20gZ2VuOSwgdGhyZWUgbWljcm9jb250cm9sbGVy
cyBhcmUgYXZhaWxhYmxlIG9uIHRoZSBIVzogdGhlCitncmFwaGljcyBtaWNyb2NvbnRyb2xsZXIg
KEd1QyksIHRoZSBIRVZDL0guMjY1IG1pY3JvY29udHJvbGxlciAoSHVDKSBhbmQgdGhlCitkaXNw
bGF5IG1pY3JvY29udHJvbGxlciAoRE1DKS4gVGhlIGRyaXZlciBpcyByZXNwb25zaWJsZSBmb3Ig
bG9hZGluZyB0aGUKK2Zpcm13YXJlcyBvbiB0aGUgbWljcm9jb250cm9sbGVyczsgdGhlIEd1QyBh
bmQgSHVDIGZpcm13YXJlcyBhcmUgdHJhbnNmZXJyZWQKK3RvIFdPUENNIHVzaW5nIHRoZSBETUEg
ZW5naW5lLCB3aGlsZSB0aGUgRE1DIGZpcm13YXJlIGlzIHdyaXR0ZW4gdGhyb3VnaCBNTUlPLgor
CiBXT1BDTQogLS0tLS0KIApAQCAtNDU0LDYgKzQ2MywxNSBAQCBHdUMgQWRkcmVzcyBTcGFjZQog
Li4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCiAg
ICA6ZG9jOiBHdUMgQWRkcmVzcyBTcGFjZQogCitIdUMKKy0tLQorLi4ga2VybmVsLWRvYzo6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCisgICA6ZG9jOiBIdUMgRmly
bXdhcmUKKworRE1DCistLS0KK1NlZSBgQ1NSIGZpcm13YXJlIHN1cHBvcnQgZm9yIERNQ2BfCisK
IFRyYWNpbmcKID09PT09PT0KIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
