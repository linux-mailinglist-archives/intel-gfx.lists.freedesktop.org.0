Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B51FF8BB8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 10:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445376EAAF;
	Tue, 12 Nov 2019 09:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B7D89EB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:29:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19170026-1500050 
 for multiple; Tue, 12 Nov 2019 09:28:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 09:28:47 +0000
Message-Id: <20191112092854.869-20-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112092854.869-1-chris@chris-wilson.co.uk>
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/27] drm/i915/gt: Expose heartbeat interval
 via sysfs
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

V2UgbW9uaXRvciB0aGUgaGVhbHRoIG9mIHRoZSBzeXN0ZW0gdmlhIHBlcmlvZGljIGhlYXJ0YmVh
dCBwdWxzZXMuIFRoZQpwdWxzZXMgYWxzbyBwcm92aWRlIHRoZSBvcHBvcnR1bml0eSB0byBwZXJm
b3JtIGdhcmJhZ2UgY29sbGVjdGlvbi4KSG93ZXZlciwgd2UgaW50ZXJwcmV0IGFuIGluY29tcGxl
dGUgcHVsc2UgKGEgbWlzc2VkIGhlYXJ0YmVhdCkgYXMgYW4KaW5kaWNhdGlvbiB0aGF0IHRoZSBz
eXN0ZW0gaXMgbm8gbG9uZ2VyIHJlc3BvbnNpdmUsIGkuZS4gaHVuZywgYW5kCnBlcmZvcm0gYW4g
ZW5naW5lIG9yIGZ1bGwgR1BVIHJlc2V0LiBHaXZlbiB0aGF0IHRoZSBwcmVlbXB0aW9uCmdyYW51
bGFyaXR5IGNhbiBiZSB2ZXJ5IGNvYXJzZSBvbiBhIHN5c3RlbSwgd2UgbGV0IHRoZSBzeXNhZG1p
biBvdmVycmlkZQpvdXIgbGVnYWN5IHRpbWVvdXRzIHdoaWNoIHdlcmUgIm9wdGltaXNlZCIgZm9y
IGRlc2t0b3AgYXBwbGljYXRpb25zLgoKVGhlIGhlYXJ0YmVhdCBpbnRlcnZhbCBjYW4gYmUgYWRq
dXN0ZWQgcGVyLWVuZ2luZSB1c2luZywKCgkvc3lzL2NsYXNzL2RybS9jYXJkPy9lbmdpbmUvKi9o
ZWFydGJlYXRfaW50ZXJ2YWxfbXMKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJv
ZmlsZSAgICAgICAgIHwgIDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9zeXNmcy5jIHwgNDcgKysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNTAg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcu
cHJvZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZQppbmRleCAyMzNi
Y2RiNmE2Y2EuLmQyNWY1YzEzMTZjYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5wcm9maWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmls
ZQpAQCAtMjAsNiArMjAsOSBAQCBjb25maWcgRFJNX0k5MTVfSEVBUlRCRUFUX0lOVEVSVkFMCiAJ
ICBjaGVjayB0aGUgaGVhbHRoIG9mIHRoZSBHUFUgYW5kIHVuZGVydGFrZSByZWd1bGFyIGhvdXNl
LWtlZXBpbmcgb2YKIAkgIGludGVybmFsIGRyaXZlciBzdGF0ZS4KIAorCSAgVGhpcyBpcyBhZGp1
c3RhYmxlIHZpYQorCSAgL3N5cy9jbGFzcy9kcm0vY2FyZD8vZW5naW5lLyovaGVhcnRiZWF0X2lu
dGVydmFsX21zCisKIAkgIE1heSBiZSAwIHRvIGRpc2FibGUgaGVhcnRiZWF0cyBhbmQgdGhlcmVm
b3JlIGRpc2FibGUgYXV0b21hdGljIEdQVQogCSAgaGFuZyBkZXRlY3Rpb24uCiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMKaW5kZXggZDI5OWM2NmNmN2Vj
Li4zM2I0YzAwYjkzZjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9zeXNmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9zeXNmcy5jCkBAIC05LDYgKzksNyBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNs
dWRlICJpbnRlbF9lbmdpbmUuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfaGVhcnRiZWF0Lmgi
CiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3N5c2ZzLmgiCiAKIHN0cnVjdCBrb2JqX2VuZ2luZSB7
CkBAIC0zMTUsNiArMzE2LDQ5IEBAIHByZWVtcHRfdGltZW91dF9zaG93KHN0cnVjdCBrb2JqZWN0
ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsCiBzdGF0aWMgc3RydWN0IGtvYmpf
YXR0cmlidXRlIHByZWVtcHRfdGltZW91dF9hdHRyID0KIF9fQVRUUihwcmVlbXB0X3RpbWVvdXRf
bXMsIDA2NDQsIHByZWVtcHRfdGltZW91dF9zaG93LCBwcmVlbXB0X3RpbWVvdXRfc3RvcmUpOwog
CitzdGF0aWMgc3NpemVfdAoraGVhcnRiZWF0X3N0b3JlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBz
dHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsCisJCWNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNv
dW50KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtvYmpfdG9fZW5naW5l
KGtvYmopOworCXVuc2lnbmVkIGxvbmcgbG9uZyBkZWxheTsKKwlpbnQgZXJyOworCisJLyoKKwkg
KiBXZSBtb25pdG9yIHRoZSBoZWFsdGggb2YgdGhlIHN5c3RlbSB2aWEgcGVyaW9kaWMgaGVhcnRi
ZWF0IHB1bHNlcy4KKwkgKiBUaGUgcHVsc2VzIGFsc28gcHJvdmlkZSB0aGUgb3Bwb3J0dW5pdHkg
dG8gcGVyZm9ybSBnYXJiYWdlCisJICogY29sbGVjdGlvbi4gIEhvd2V2ZXIsIHdlIGludGVycHJl
dCBhbiBpbmNvbXBsZXRlIHB1bHNlIChhIG1pc3NlZAorCSAqIGhlYXJ0YmVhdCkgYXMgYW4gaW5k
aWNhdGlvbiB0aGF0IHRoZSBzeXN0ZW0gaXMgbm8gbG9uZ2VyIHJlc3BvbnNpdmUsCisJICogaS5l
LiBodW5nLCBhbmQgcGVyZm9ybSBhbiBlbmdpbmUgb3IgZnVsbCBHUFUgcmVzZXQuIEdpdmVuIHRo
YXQgdGhlCisJICogcHJlZW1wdGlvbiBncmFudWxhcml0eSBjYW4gYmUgdmVyeSBjb2Fyc2Ugb24g
YSBzeXN0ZW0sIHRoZSBvcHRpbWFsCisJICogdmFsdWUgZm9yIGFueSB3b3JrbG9hZCBpcyB1bmtu
b3dhYmxlIQorCSAqLworCisJZXJyID0ga3N0cnRvdWxsKGJ1ZiwgMCwgJmRlbGF5KTsKKwlpZiAo
ZXJyKQorCQlyZXR1cm4gZXJyOworCisJaWYgKGRlbGF5ID49IGppZmZpZXNfdG9fbXNlY3MoTUFY
X1NDSEVEVUxFX1RJTUVPVVQpKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWVyciA9IGludGVsX2Vu
Z2luZV9zZXRfaGVhcnRiZWF0KGVuZ2luZSwgZGVsYXkpOworCWlmIChlcnIpCisJCXJldHVybiBl
cnI7CisKKwlyZXR1cm4gY291bnQ7Cit9CisKK3N0YXRpYyBzc2l6ZV90CitoZWFydGJlYXRfc2hv
dyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFy
ICpidWYpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0ga29ial90b19lbmdp
bmUoa29iaik7CisKKwlyZXR1cm4gc3ByaW50ZihidWYsICIlbHVcbiIsIGVuZ2luZS0+cHJvcHMu
aGVhcnRiZWF0X2ludGVydmFsX21zKTsKK30KKworc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0
ZSBoZWFydGJlYXRfaW50ZXJ2YWxfYXR0ciA9CitfX0FUVFIoaGVhcnRiZWF0X2ludGVydmFsX21z
LCAwNjQ0LCBoZWFydGJlYXRfc2hvdywgaGVhcnRiZWF0X3N0b3JlKTsKKwogc3RhdGljIHZvaWQg
a29ial9lbmdpbmVfcmVsZWFzZShzdHJ1Y3Qga29iamVjdCAqa29iaikKIHsKIAlrZnJlZShrb2Jq
KTsKQEAgLTM1Nyw2ICs0MDEsOSBAQCB2b2lkIGludGVsX2VuZ2luZXNfYWRkX3N5c2ZzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQkmYWxsX2NhcHNfYXR0ci5hdHRyLAogCQkmbWF4
X3NwaW5fYXR0ci5hdHRyLAogCQkmc3RvcF90aW1lb3V0X2F0dHIuYXR0ciwKKyNpZiBDT05GSUdf
RFJNX0k5MTVfSEVBUlRCRUFUX0lOVEVSVkFMCisJCSZoZWFydGJlYXRfaW50ZXJ2YWxfYXR0ci5h
dHRyLAorI2VuZGlmCiAJCU5VTEwKIAl9OwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
