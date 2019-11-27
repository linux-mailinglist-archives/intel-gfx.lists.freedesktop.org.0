Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A9D10B1A8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022B46E2CF;
	Wed, 27 Nov 2019 14:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0046E2CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:51:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19361215-1500050 for multiple; Wed, 27 Nov 2019 14:51:26 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
Message-ID: <157486628010.18552.7746102099058713275@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 27 Nov 2019 14:51:20 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Copy across scheduler behaviour
 flags across submit fences
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjcgMTE6MTc6NDIpCj4gV2Ugd2FudCB0aGUg
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
dWFsIGVuZ2luZSBib25kaW5nIikKVGVzdGNhc2U6IGlndC9nZW1fZXhlY19iYWxhbmNlci9ib25k
ZWQtY2hhaW4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
