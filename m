Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C94711378D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 23:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057C06E959;
	Wed,  4 Dec 2019 22:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AE16E959
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 22:25:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19463464-1500050 for multiple; Wed, 04 Dec 2019 22:24:44 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
References: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
Message-ID: <157549828440.22727.12876231381512554739@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 04 Dec 2019 22:24:44 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Copy across scheduler
 behaviour flags across submit fences
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDQgMjE6MTc6MDMpCj4gV2Ugd2FudCB0aGUg
Ym9uZGVkIHJlcXVlc3QgdG8gaGF2ZSB0aGUgc2FtZSBzY2hlZHVsZXIgcHJvcGVydGllcyBhcyBp
dHMKPiBtYXN0ZXIgc28gdGhhdCBpdCBpcyBwbGFjZWQgYXQgdGhlIHNhbWUgZGVwdGggaW4gdGhl
IHF1ZXVlLiBGb3IgZXhhbXBsZSwKPiBjb25zaWRlciB3ZSBoYXZlIHJlcXVlc3RzIEEsIEIgYW5k
IEInLCB3aGVyZSBCICYgQicgYXJlIGEgYm9uZGVkIHBhaXIgdG8KPiBydW4gaW4gcGFyYWxsZWwg
b24gdHdvIGVuZ2luZXMuCj4gCj4gICAgICAgICBBIC0+IEIKPiAgICAgICAgICAgICAgXC0gQicK
PiAKPiBCIHdpbGwgcnVuIGFmdGVyIEEgYW5kIHNvIG1heSBiZSBzY2hlZHVsZWQgb24gYW4gaWRs
ZSBlbmdpbmUgYW5kIHdhaXQgb24KPiBBIHVzaW5nIGEgc2VtYXBob3JlLiBCJyBzZWVzIEIgYmVp
bmcgZXhlY3V0ZWQgYW5kIHNvIGVudGVycyB0aGUgcXVldWUgb24KPiB0aGUgc2FtZSBlbmdpbmUg
YXMgQS4gQXMgQicgZGlkIG5vdCBpbmhlcml0IHRoZSBzZW1hcGhvcmUtY2hhaW4gZnJvbSBCLAo+
IGl0IG1heSBoYXZlIGhpZ2hlciBwcmVjZWRlbmNlIHRoYW4gQSBhbmQgc28gcHJlZW1wdHMgZXhl
Y3V0aW9uLiBIb3dldmVyLAo+IEInIHRoZW4gc2l0cyBvbiBhIHNlbWFwaG9yZSB3YWl0aW5nIGZv
ciBCLCB3aG8gaXMgd2FpdGluZyBmb3IgQSwgd2hvIGlzCj4gYmxvY2tlZCBieSBCLgo+IAo+IEVy
Z28gQicgbmVlZHMgdG8gaW5oZXJpdCB0aGUgc2NoZWR1bGVyIHByb3BlcnRpZXMgZnJvbSBCIChp
LmUuIHRoZQo+IHNlbWFwaG9yZSBjaGFpbikgc28gdGhhdCBpdCBpcyBzY2hlZHVsZWQgd2l0aCB0
aGUgc2FtZSBwcmlvcml0eSBhcyBCIGFuZAo+IHdpbGwgbm90IGJlIGV4ZWN1dGVkIGFoZWFkIG9m
IEJzIGRlcGVuZGVuY2llcy4KPiAKPiBGdXJ0aGVybW9yZSwgdG8gcHJldmVudCB0aGUgcHJpb3Jp
dGllcyBjaGFuZ2luZyB2aWEgdGhlIGV4cG9zZSBmZW5jZSBvbgo+IEInLCB3ZSBuZWVkIHRvIGNv
dXBsZSBpbiB0aGUgZGVwZW5kZW5jaWVzIGZvciBQSS4gVGhpcyByZXF1aXJlcyB1cyB0bwo+IHJl
bGF4IG91ciBzYW5pdHktY2hlY2tzIHRoYXQgZGVwZW5kZW5jaWVzIGFyZSBzdHJpY3RseSBpbiBv
cmRlci4KPiAKPiBGaXhlczogZWUxMTM2OTA4ZTliICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBWaXJ0
dWFsIGVuZ2luZSBib25kaW5nIikKPiBUZXN0Y2FzZTogaWd0L2dlbV9leGVjX2JhbGFuY2VyL2Jv
bmRlZC1jaGFpbgo+IFRlc3RjYXNlOiBpZ3QvZ2VtX2V4ZWNfYmFsYW5jZXIvYm9uZGVkLXNlbWFw
aG9yZQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDbG9z
ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ2NAot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
