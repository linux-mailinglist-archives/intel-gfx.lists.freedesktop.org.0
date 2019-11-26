Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D98F10A03A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:26:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD126E111;
	Tue, 26 Nov 2019 14:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25F76E111;
 Tue, 26 Nov 2019 14:26:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:26:33 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202733983"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:26:23 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:25:48 +0100
Message-Id: <20191126142548.22696-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t] tests/prime_vgem: Skip MMAP_GTT based
 subtests if no mappable GGTT
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
Cc: =?UTF-8?q?Micha=C5=82=20Czapli=C5=84ski?= <michal.czaplinski@intel.com>,
 Jari Tahvanainen <jari.tahvanainen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UndmUgYWdyZWVkIHRoYXQgdXNpbmcgR0VNX01NQVAqIElPQ1RMcyBvbiBkbWEtYnVmIG9i
amVjdHMgd2l0aG91dAphIENQVSBhY2Nlc3NpYmxlIEdBUlQgaXMgdmVyeSBxdWVzdGlvbmFibGUs
IHdlIGFyZSBwcm9iYWJseSBub3QgZ29pbmcKdG8gZXh0ZW5kIG91ciBNTUFQX09GRlNFVCBoYW5k
bGVyIHdpdGggYW4gZXh0cmEgcHJvY2Vzc2luZyBwYXRoCnJlcXVpcmVkIGZvciBpdCB0byB3b3Jr
IGNvcnJlY3RseSBvbiBkbWEtYnVmIG9iamVjdHMuICBBcyBhCmNvbnNlcXVlbmNlLCBvbiBmdXR1
cmUgaGFyZHdhcmUgd2l0aCBubyBtYXBwYWJsZSBhcGVydHVyZSB3ZSB3b24ndCBiZQphYmxlIHRv
IHVzZSBNTUFQX09GRlNFVCBhcyBhIHJlcGxhY2VtZW50IG9mIE1NQVBfR1RUIGluIHRlc3RzIHdo
aWNoCmV4YW1pbmUgUFJJTUUgaW1wb3J0IGludGVyZmFjZS4gIFdoZW4gcnVubmluZyBvbiB0aGF0
IGtpbmQgb2YgaGFyZHdhcmUsCmp1c3Qgc2tpcCBzdWJ0ZXN0cyB3aGljaCBkZXBlbmQgb24gZ2Vt
X21tYXBfX2d0dCgpLgoKQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiB0ZXN0
cy9wcmltZV92Z2VtLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvdGVzdHMvcHJpbWVfdmdlbS5jIGIvdGVzdHMvcHJpbWVfdmdlbS5jCmlu
ZGV4IDA0Y2M5MTNkLi5iOTJjZjRmNyAxMDA2NDQKLS0tIGEvdGVzdHMvcHJpbWVfdmdlbS5jCisr
KyBiL3Rlc3RzL3ByaW1lX3ZnZW0uYwpAQCAtMTI2LDYgKzEyNiw4IEBAIHN0YXRpYyB2b2lkIHRl
c3RfZmVuY2VfbW1hcChpbnQgaTkxNSwgaW50IHZnZW0pCiAJaW50IGRtYWJ1ZiwgaTsKIAlpbnQg
bWFzdGVyWzJdLCBzbGF2ZVsyXTsKIAorCWdlbV9yZXF1aXJlX21hcHBhYmxlX2dndHQoaTkxNSk7
CisKIAlpZ3RfYXNzZXJ0KHBpcGUobWFzdGVyKSA9PSAwKTsKIAlpZ3RfYXNzZXJ0KHBpcGUoc2xh
dmUpID09IDApOwogCkBAIC0yMTAsNiArMjEyLDggQEAgc3RhdGljIHZvaWQgdGVzdF9ndHQoaW50
IHZnZW0sIGludCBpOTE1KQogCXVpbnQzMl90ICpwdHI7CiAJaW50IGRtYWJ1ZiwgaTsKIAorCWdl
bV9yZXF1aXJlX21hcHBhYmxlX2dndHQoaTkxNSk7CisKIAlzY3JhdGNoLndpZHRoID0gMTAyNDsK
IAlzY3JhdGNoLmhlaWdodCA9IDEwMjQ7CiAJc2NyYXRjaC5icHAgPSAzMjsKQEAgLTI4NSw2ICsy
ODksNyBAQCBzdGF0aWMgdm9pZCB0ZXN0X2d0dF9pbnRlcmxlYXZlZChpbnQgdmdlbSwgaW50IGk5
MTUpCiAJdWludDMyX3QgKnB0ciwgKmd0dDsKIAlpbnQgZG1hYnVmLCBpOwogCisJZ2VtX3JlcXVp
cmVfbWFwcGFibGVfZ2d0dChpOTE1KTsKIAlpZ3RfcmVxdWlyZShpc19jb2hlcmVudChpOTE1KSk7
CiAKIAlzY3JhdGNoLndpZHRoID0gMTAyNDsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
