Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A3F5E829
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 17:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A311F6E16D;
	Wed,  3 Jul 2019 15:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A276E16D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 15:52:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17117752-1500050 
 for multiple; Wed, 03 Jul 2019 16:52:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 16:52:24 +0100
Message-Id: <20190703155225.9501-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703155225.9501-1-chris@chris-wilson.co.uk>
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Assume we hold forcewake for
 execlists resume
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

V2UgY2FuIGFzc3VtZSB0aGUgY2FsbGVyIGlzIGhvbGRpbmcgYSBibGFua2V0IGZvcmNld2FrZSBm
b3IgdGhlCnJlZ2lzdGVyIHdyaXRlcyBkdXJpbmcgcmVzdW1lLCBhbmQgc28gd2UgY2FuIHNraXAg
dGFraW5nIGluZGl2aWR1YWwKbG9ja3MgYXJvdW5kIGVhY2ggd3JpdGUgaW5zaWRlIGV4ZWNsaXN0
cyByZXN1bWUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAyMyArKysr
KysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEx
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMWU4NWUw
NGM1OGM0Li5mMDhhZmEyNmJhNDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBA
IC0yMDc2LDIyICsyMDc2LDIzIEBAIHN0YXRpYyBpbnQgaW50ZWxfaW5pdF93b3JrYXJvdW5kX2Ji
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogc3RhdGljIHZvaWQgZW5hYmxlX2V4
ZWNsaXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CisJdTMyIG1vZGU7CisK
Kwlhc3NlcnRfZm9yY2V3YWtlc19hY3RpdmUoZW5naW5lLT51bmNvcmUsIEZPUkNFV0FLRV9BTEwp
OworCiAJaW50ZWxfZW5naW5lX3NldF9od3NwX3dyaXRlbWFzayhlbmdpbmUsIH4wdSk7IC8qIEhX
U1RBTSAqLwogCiAJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpID49IDExKQotCQlFTkdJTkVf
V1JJVEUoZW5naW5lLAotCQkJICAgICBSSU5HX01PREVfR0VONywKLQkJCSAgICAgX01BU0tFRF9C
SVRfRU5BQkxFKEdFTjExX0dGWF9ESVNBQkxFX0xFR0FDWV9NT0RFKSk7CisJCW1vZGUgPSBfTUFT
S0VEX0JJVF9FTkFCTEUoR0VOMTFfR0ZYX0RJU0FCTEVfTEVHQUNZX01PREUpOwogCWVsc2UKLQkJ
RU5HSU5FX1dSSVRFKGVuZ2luZSwKLQkJCSAgICAgUklOR19NT0RFX0dFTjcsCi0JCQkgICAgIF9N
QVNLRURfQklUX0VOQUJMRShHRlhfUlVOX0xJU1RfRU5BQkxFKSk7CisJCW1vZGUgPSBfTUFTS0VE
X0JJVF9FTkFCTEUoR0ZYX1JVTl9MSVNUX0VOQUJMRSk7CisJRU5HSU5FX1dSSVRFX0ZXKGVuZ2lu
ZSwgUklOR19NT0RFX0dFTjcsIG1vZGUpOwogCi0JRU5HSU5FX1dSSVRFKGVuZ2luZSwgUklOR19N
SV9NT0RFLCBfTUFTS0VEX0JJVF9ESVNBQkxFKFNUT1BfUklORykpOworCUVOR0lORV9XUklURV9G
VyhlbmdpbmUsIFJJTkdfTUlfTU9ERSwgX01BU0tFRF9CSVRfRElTQUJMRShTVE9QX1JJTkcpKTsK
IAotCUVOR0lORV9XUklURShlbmdpbmUsCi0JCSAgICAgUklOR19IV1NfUEdBLAotCQkgICAgIGk5
MTVfZ2d0dF9vZmZzZXQoZW5naW5lLT5zdGF0dXNfcGFnZS52bWEpKTsKKwlFTkdJTkVfV1JJVEVf
RlcoZW5naW5lLAorCQkJUklOR19IV1NfUEdBLAorCQkJaTkxNV9nZ3R0X29mZnNldChlbmdpbmUt
PnN0YXR1c19wYWdlLnZtYSkpOwogCUVOR0lORV9QT1NUSU5HX1JFQUQoZW5naW5lLCBSSU5HX0hX
U19QR0EpOwogfQogCkBAIC0yMDk5LDcgKzIxMDAsNyBAQCBzdGF0aWMgYm9vbCB1bmV4cGVjdGVk
X3N0YXJ0aW5nX3N0YXRlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAlib29s
IHVuZXhwZWN0ZWQgPSBmYWxzZTsKIAotCWlmIChFTkdJTkVfUkVBRChlbmdpbmUsIFJJTkdfTUlf
TU9ERSkgJiBTVE9QX1JJTkcpIHsKKwlpZiAoRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5HX01J
X01PREUpICYgU1RPUF9SSU5HKSB7CiAJCURSTV9ERUJVR19EUklWRVIoIlNUT1BfUklORyBzdGls
bCBzZXQgaW4gUklOR19NSV9NT0RFXG4iKTsKIAkJdW5leHBlY3RlZCA9IHRydWU7CiAJfQotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
