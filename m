Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD585BD48
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A666D89939;
	Mon,  1 Jul 2019 13:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E261B89939
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:50:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085821-1500050 for multiple; Mon, 01 Jul 2019 14:50:19 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <875zom3rfn.fsf@gaia.fi.intel.com>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
 <20190701100502.15639-4-chris@chris-wilson.co.uk>
 <875zom3rfn.fsf@gaia.fi.intel.com>
Message-ID: <156198901580.1583.7337880635854674465@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 01 Jul 2019 14:50:15 +0100
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/execlists: Refactor CSB
 state machine
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTAxIDEyOjQ5OjQ4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBEYW5pZWxlIHBvaW50
ZWQgb3V0IHRoYXQgdGhlIENTQiBzdGF0dXMgaW5mb3JtYXRpb24gd2lsbCBjaGFuZ2Ugd2l0aAo+
ID4gVGlnZXJsYWtlIGFuZCBzdWdnZXN0ZWQgdGhhdCB3ZSBjb3VsZCByZWFycmFuZ2Ugb3VyIHN0
YXRlIG1hY2hpbmUgdG8KPiA+IGhpZGUgdGhlIGRpZmZlcmVuY2VzIGluIGdlbmVyYXRpb24uIGdj
YyBhbHNvIHByZWZlcnMgdGhlIGV4cGxpY2l0IHN0YXRlCj4gPiBtYWNoaW5lLCBzbyBtYWtlIGl0
IHNvOgo+ID4KPiA+IHByb2Nlc3NfY3NiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MTk4MCAgICAxOTY3ICAgICAtMTMKPiA+Cj4gPiBTdWdnZXN0ZWQtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4g
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4gPiBD
YzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDY0ICsrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyks
IDIwIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4g
PiBpbmRleCA0NzFlMTM0ZGUxODYuLjk1M2IzOTM4YTg1ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gQEAgLTEyNzksNiArMTI3OSwzMCBAQCByZXNldF9pbl9w
cm9ncmVzcyhjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzKQo+
ID4gICAgICAgcmV0dXJuIHVubGlrZWx5KCFfX3Rhc2tsZXRfaXNfZW5hYmxlZCgmZXhlY2xpc3Rz
LT50YXNrbGV0KSk7Cj4gPiAgfQo+ID4gIAo+ID4gK2VudW0gY3NiX3N0ZXAgewo+ID4gKyAgICAg
Q1NCX05PUCwKPiA+ICsgICAgIENTQl9QUk9NT1RFLAo+ID4gKyAgICAgQ1NCX1BSRUVNUFQsCj4g
PiArICAgICBDU0JfQ09NUExFVEUsCj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgaW5saW5lIGVu
dW0gY3NiX3N0ZXAKPiA+ICtjc2JfcGFyc2UoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVj
bGlzdHMgKmV4ZWNsaXN0cywgY29uc3QgdTMyICpjc2IpCj4gPiArewo+ID4gKyAgICAgdW5zaWdu
ZWQgaW50IHN0YXR1cyA9ICpjc2I7Cj4gCj4gQ291bGQgYmUgY29uc3QgdTMyIGFzd2VsbCAoc3R5
bGlzdGljKS4KCk5vIG5lZWQgdG8gc3BlY2lmeSBoZXJlLCBsb2NhbCByZWdpc3RlciBpcyBmaW5l
LCBzbyBsZWZ0IGl0IGFzIG5hdHVyYWwuCgo+IEp1c3QgbWFrZXMgbWUgcG9uZGVyIHdoeSB5b3Ug
d2FudCB0byByZWFkIGNzYiBpbiBoZXJlCj4gYW5kIG5vdCBpbiB0aGUgY2FsbHNpdGUuCgpXaGF0
ZXZlciBnY2MgcHJlZmVycyB3aGVuIHRoZXJlIGlzIG11bHRpcGxlIGNzYl9wYXJzZXJzLiA6KQot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
