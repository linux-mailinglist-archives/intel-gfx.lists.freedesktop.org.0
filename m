Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 137A5105D58
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 00:44:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41D56E1D6;
	Thu, 21 Nov 2019 23:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DDB6E1CF;
 Thu, 21 Nov 2019 23:44:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19292853-1500050 for multiple; Thu, 21 Nov 2019 23:44:45 +0000
MIME-Version: 1.0
To: "Tang, CQ" <cq.tang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1D440B9B88E22A4ABEF89F9F1F81BC29E94A5E2E@FMSMSX106.amr.corp.intel.com>
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
 <20191113125240.3781-5-chris@chris-wilson.co.uk>
 <1D440B9B88E22A4ABEF89F9F1F81BC29E94A5E2E@FMSMSX106.amr.corp.intel.com>
Message-ID: <157437988036.2524.15103838845430811433@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 23:44:40 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/9] i915/gem_ctx_isolation: Check
 engine relative registers
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUYW5nLCBDUSAoMjAxOS0xMS0yMSAyMTowNzoxMykKPiAKPiAKPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2Vz
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj4gPiBDaHJpcyBXaWxzb24KPiA+
IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMTMsIDIwMTkgNDo1MyBBTQo+ID4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIGktZy10IDUvOV0gaTkxNS9n
ZW1fY3R4X2lzb2xhdGlvbjogQ2hlY2sgZW5naW5lCj4gPiBAQCAtMjQ4LDYgKzIzOCw3IEBAIHN0
YXRpYyB2b2lkIHRtcGxfcmVncyhpbnQgZmQsICB7Cj4gPiAgICAgICBjb25zdCB1bnNpZ25lZCBp
bnQgZ2VuX2JpdCA9IDEgPDwKPiA+IGludGVsX2dlbihpbnRlbF9nZXRfZHJtX2RldmlkKGZkKSk7
Cj4gPiAgICAgICBjb25zdCB1bnNpZ25lZCBpbnQgZW5naW5lX2JpdCA9IEVOR0lORShlLT5jbGFz
cywgZS0+aW5zdGFuY2UpOwo+ID4gKyAgICAgY29uc3QgdWludDMyX3QgbW1pb19iYXNlID0gZ2Vt
X2VuZ2luZV9tbWlvX2Jhc2UoZmQsIGUtPm5hbWUpOwo+IAo+IENocmlzLCBJIHRyaWVkIHRvIHRl
c3QgdGhpcyBwYXRjaCwgYnV0ICJnZW1fZW5naW5lX21taW9fYmFzZSgpIiBhYm92ZSBpcyBub3Qg
ZGVmaW5lZC4KPiBDYW4geW91IGNoZWNrPwoKRGlkIHlvdSBwZXJjaGFuY2UgbG9vayBhdCBwYXRj
aCA0PwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
