Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A1D8574E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 02:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9925A6E781;
	Thu,  8 Aug 2019 00:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564B46E77F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 00:49:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 17:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="193033753"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2019 17:49:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:49:34 -0700
Message-Id: <20190808004935.1787-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915: Get transcoder power domain
 before reading its register
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

V2hlbiBnZXR0aW5nIHRoZSBwaXBlcyBhdHRhY2hlZCB0byBlbmNvZGVyIGlmIGl0IGlzIG5vdCBh
IGVEUCBlbmNvZGVyCml0IGl0ZXJhdGVzIG92ZXIgYWxsIHBpcGVzIGFuZCByZWFkIGEgdHJhbnNj
b2RlciByZWdpc3Rlci4KQnV0IGl0IHNob3VsZCBub3QgcmVhZCBhIHRyYW5zY29kZXIgcmVnaXN0
ZXIgYmVmb3JlIGdldCBpdHMgcG93ZXIKZG9tYWluLgoKSXQgd2FzIG5vdCBhIGlzc3VlIGluIGdl
bnMgb2xkZXIgdGhhbiAxMiBiZWNhdXNlIGlmIGl0IG9ubHkgaGFkCnBvcnQgQSBjb25uZWN0ZWQg
aXQgd291bGQgYmUgYXR0YWNoZWQgdG8gRURQIGFuZCBpdCB3b3VsZCBza2lwIGFsbAp0aGUgdHJh
bnNjb2RlcnMgcmVhZG91dCwgaWYgaXQgaGFkIG1vcmUgdGhhbiBvbmUgcG9ydCBjb25uZWN0ZWQs
CnBpcGUgQiB3b3VsZCBjYXVzZSBQRzMgdG8gYmUgb24gYW5kIGl0IGNvbnRhaW5zIGFsbCBvdGhl
cgp0cmFuc2NvZGVycy4KCkJ1dCBvbiBnZW4gMTIgdGhlcmUgaXMgbm8gRURQIHRyYW5zY29kZXIg
c28gaXQgaXMgYWx3YXlzIGl0ZXJhdGluZwpvdmVyIGFsbCBwaXBlcyBhbmQgaWYgb25seSBvbmUg
c2luayBpcyBjb25uZWN0ZWQsIFBHMyBpcyBrZXB0IG9mZgphbmQgcmVhZGluZyBvdGhlciB0cmFu
c2NvZGVycyByZWdpc3RlcnMgd291bGQgY2F1c2UgYQp1bmNsYWltZWQgcmVhZCB3YXJuaW5nLgoK
U28gaGVyZSBnZXR0aW5nIHRoZSBwb3dlciBkb21haW4gb2YgdGhlIHRyYW5zY29kZXIgb25seSBp
ZiBpdCBpcwplbmFibGVkLCBvdGhlcndpc2UgaXQgaXMgbm90IGNvbm5lY3RlZCB0byB0aGUgRERJ
LgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA4ICsrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKaW5kZXggYWE1YjI0NDA1MTNjLi42NDdiYTUxNDA2NTYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMjAxNSw2ICsyMDE1LDEyIEBA
IHN0YXRpYyB2b2lkIGludGVsX2RkaV9nZXRfZW5jb2Rlcl9waXBlcyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAlmb3JfZWFjaF9waXBlKGRldl9wcml2LCBwKSB7CiAJCWVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IChlbnVtIHRyYW5zY29kZXIpcDsKIAkJdW5zaWduZWQg
aW50IHBvcnRfbWFzaywgZGRpX3NlbGVjdDsKKwkJaW50ZWxfd2FrZXJlZl90IHRyYW5zX3dha2Vy
ZWY7CisKKwkJdHJhbnNfd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0X2lmX2VuYWJs
ZWQoZGV2X3ByaXYsCisJCQkJCQkJCSAgIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSKGNwdV90cmFu
c2NvZGVyKSk7CisJCWlmICghdHJhbnNfd2FrZXJlZikKKwkJCWNvbnRpbnVlOwogCiAJCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CiAJCQlwb3J0X21hc2sgPSBUR0xfVFJBTlNfRERJ
X1BPUlRfTUFTSzsKQEAgLTIwMjUsNiArMjAzMSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9n
ZXRfZW5jb2Rlcl9waXBlcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJfQogCiAJ
CXRtcCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpKTsKKwkJ
aW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVS
KGNwdV90cmFuc2NvZGVyKSwKKwkJCQkJdHJhbnNfd2FrZXJlZik7CiAKIAkJaWYgKCh0bXAgJiBw
b3J0X21hc2spICE9IGRkaV9zZWxlY3QpCiAJCQljb250aW51ZTsKLS0gCjIuMjIuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
