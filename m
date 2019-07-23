Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 437AF71418
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 10:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78C189F07;
	Tue, 23 Jul 2019 08:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56C889F07
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 08:39:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17527151-1500050 for multiple; Tue, 23 Jul 2019 09:39:52 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190722232048.9970-9-daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-9-daniele.ceraolospurio@intel.com>
Message-ID: <156387119051.31349.5299938688239890666@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 09:39:50 +0100
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/uc: Plumb the gt through
 fw_upload
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTIzIDAwOjIwOjQ3KQo+IFRo
ZSBndCBpcyBvdXIgbmV3IGNlbnRyYWwgc3RydWN0dXJlIGZvciB1Yy1yZWxhdGVkIGNvZGUsIHNv
IHdlIGNhbiB1c2UKPiB0aGF0IGluc3RlYWQgb2YganVtcGluZyBiYWNrIHRvIGk5MTUgdmlhIHRo
ZSBmdyBvYmplY3QuIFNpbmNlIHdlIGhhdmUgaXQKPiBpbiB0aGUgdXBsb2FkIGZ1bmN0aW9uIGl0
IGlzIGVhc3kgdG8gcGFzcyBpdCB0aHJvdWdoIHRoZSBsb3dlciBsZXZlbHMgb2YKPiB0aGUgeGZl
ciBwcm9jZXNzIGluc3RlYWQgb2YgY29udGludW9zbHkganVtcGluZyB2aWEgdWNfZnctPnVjLT5n
dCwgd2hpY2gKPiB3aWxsIGFsc28gbWFrZSB0aGluZ3MgYSBiaXQgY2xlYW5lciBmb3IgdGhlIG5l
eHQgcGF0Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWlj
aGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IC0tLQo+IEBAIC0xMDMsMTMgKzEwMSwxMyBAQCBzdGF0aWMgdm9pZCBn
dWNfcHJlcGFyZV94ZmVyKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgfQo+ICAKPiAgLyogQ29w
eSBSU0Egc2lnbmF0dXJlIGZyb20gdGhlIGZ3IGltYWdlIHRvIEhXIGZvciB2ZXJpZmljYXRpb24g
Ki8KPiAtc3RhdGljIHZvaWQgZ3VjX3hmZXJfcnNhKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAr
c3RhdGljIHZvaWQgZ3VjX3hmZXJfcnNhKHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3LAoKaW50
ZWxfdWNfZncgKmd1Y19mdyBpcyBydWJiaW5nIG1lIHRoZSB3cm9uZyB3YXkuIEkgd291bGQgaGF2
ZSBqdXN0IHVzZWQKZncgc2luY2UgdGhhdCBpcyB1bmFtYmlndW91cyBoZXJlLgoKUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
