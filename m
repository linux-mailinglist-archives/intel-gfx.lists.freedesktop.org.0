Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9AA5058A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 11:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8442889337;
	Mon, 24 Jun 2019 09:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC6089337
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 09:20:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17002647-1500050 
 for multiple; Mon, 24 Jun 2019 10:20:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 10:20:09 +0100
Message-Id: <20190624092009.30189-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/execlists: Always clear ring_pause
 if we do not submit
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

SW4gdGhlIHVubGlrZWx5IGNhc2UgKHRoYW5rIHlvdSBDSSEpLCB3ZSBtYXkgZmluZCBvdXJzZWx2
ZXMgd2FudGluZyB0bwppc3N1ZSBhIHByZWVtcHRpb24gYnV0IGhhdmluZyBubyBydW5uYWJsZSBy
ZXF1ZXN0cyBsZWZ0LiBJbiB0aGlzIGNhc2UsCndlIHNldCB0aGUgc2VtYXBob3JlIGJlZm9yZSBj
b21wdXRpbmcgdGhlIHByZWVtcHRpb24gYW5kIHNvIG11c3QgdW5zZXQKaXQgYmVmb3JlIGZvcmdl
dHRpbmcgKG9yIGVsc2Ugd2UgbGVhdmUgdGhlIG1hY2hpbmUgYnVzeXdhaXRpbmcgdW50aWwgdGhl
Cm5leHQgcmVxdWVzdCBjb21lcyBhbG9uZyBhbmQgc28gbGlrZWx5IGhhbmcpLgoKdjI6IFJlcGxh
Y2UgcmVhZGJhY2sgd2l0aCBvbmx5IGEgd21iIGFmdGVyIGFzc2VydGluZyB0aGUgc2VtYXBob3Jl
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggODAxN2VmYjM2ZjdiLi5hMzkyMTg2Y2E0MGIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNDAsNyArMjQwLDggQEAgcmluZ19zZXRfcGF1c2VkKGNv
bnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgaW50IHN0YXRlKQogCSAqIHVudGls
IHRoZSBkd29yZCBpcyBmYWxzZS4KIAkgKi8KIAllbmdpbmUtPnN0YXR1c19wYWdlLmFkZHJbSTkx
NV9HRU1fSFdTX1BSRUVNUFRdID0gc3RhdGU7Ci0Jd21iKCk7CisJaWYgKHN0YXRlKQorCQl3bWIo
KTsKIH0KIAogc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9wcmlvbGlzdCAqdG9fcHJpb2xpc3Qo
c3RydWN0IHJiX25vZGUgKnJiKQpAQCAtMTI0OSw2ICsxMjUwLDggQEAgc3RhdGljIHZvaWQgZXhl
Y2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkqcG9ydCA9
IGV4ZWNsaXN0c19zY2hlZHVsZV9pbihsYXN0LCBwb3J0IC0gZXhlY2xpc3RzLT5wZW5kaW5nKTsK
IAkJbWVtc2V0KHBvcnQgKyAxLCAwLCAobGFzdF9wb3J0IC0gcG9ydCkgKiBzaXplb2YoKnBvcnQp
KTsKIAkJZXhlY2xpc3RzX3N1Ym1pdF9wb3J0cyhlbmdpbmUpOworCX0gZWxzZSB7CisJCXJpbmdf
c2V0X3BhdXNlZChlbmdpbmUsIDApOwogCX0KIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
