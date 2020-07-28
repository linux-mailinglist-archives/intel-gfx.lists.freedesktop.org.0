Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA640230D12
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116576E323;
	Tue, 28 Jul 2020 15:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7B96E323
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:08:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21959334-1500050 for multiple; Tue, 28 Jul 2020 16:08:02 +0100
MIME-Version: 1.0
In-Reply-To: <2a1088e1-17ba-24c8-7874-be89acac02e8@shipmail.org>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-22-chris@chris-wilson.co.uk>
 <2a1088e1-17ba-24c8-7874-be89acac02e8@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:08:02 +0100
Message-ID: <159594888288.665.8560577298791146731@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 22/66] drm/i915/gem: Bind the fence async
 for execbuf
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA3LTI3IDE5OjE5OjE5KQo+
IAo+IE9uIDcvMTUvMjAgMTo1MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gSXQgaXMgaWxs
ZWdhbCB0byB3YWl0IG9uIGFuIGFub3RoZXIgdm1hIHdoaWxlIGhvbGRpbmcgdGhlIHZtLT5tdXRl
eCwgYXMKPiA+IHRoYXQgZWFzaWx5IGxlYWRzIHRvIEFCQkEgZGVhZGxvY2tzICh3ZSB3YWl0IG9u
IGEgc2Vjb25kIHZtYSB0aGF0IHdhaXRzCj4gPiBvbiB1cyB0byByZWxlYXNlIHRoZSB2bS0+bXV0
ZXgpLiBTbyB3aGlsZSB0aGUgdm0tPm11dGV4IGV4aXN0cywgbW92ZSB0aGUKPiA+IHdhaXRpbmcg
b3V0c2lkZSBvZiB0aGUgbG9jayBpbnRvIHRoZSBhc3luYyBiaW5kaW5nIHBpcGVsaW5lLgo+IAo+
IFdoeSBpcyBpdCB3ZSBkb24ndCBqdXN0IG1vdmUgdGhlIGZlbmNlIGJpbmRpbmcgdG8gYSBzZXBh
cmF0ZSBsb29wIGFmdGVyIAo+IHVubG9ja2luZyB0aGUgdm0tPm11dGV4IGluIGViX3Jlc2VydmVf
dm0oKT8KClRoYXQgaXMgd2hhdCBpcyBkb25lLiBUaGUgd29yayBpcyBjYWxsZWQgaW1tZWRpYXRl
bHkgd2hlbiBwb3NzaWJsZS4gSnVzdAp0aGUgbG9vcCBtYXkgYmUgZGVmZXJyZWQgaWYgdGhlIHdo
YXQgd2UgbmVlZCB0byB1bmJpbmQgYXJlIHN0aWxsIGFjdGl2ZS4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
