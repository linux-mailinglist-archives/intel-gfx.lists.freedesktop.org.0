Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B04C0F598C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 22:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2080D6FA8A;
	Fri,  8 Nov 2019 21:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C7B6FA8A;
 Fri,  8 Nov 2019 21:22:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19134573-1500050 for multiple; Fri, 08 Nov 2019 21:22:05 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uFWVJYb0X4hN788sReL7QD1XcuDWEQKZD+TV5_Yjs9kXg@mail.gmail.com>
References: <20191108204932.6197-1-chris@chris-wilson.co.uk>
 <20191108204932.6197-3-chris@chris-wilson.co.uk>
 <CAKMK7uFWVJYb0X4hN788sReL7QD1XcuDWEQKZD+TV5_Yjs9kXg@mail.gmail.com>
Message-ID: <157324812305.9461.4190605913259419942@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 21:22:03 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/3]
 i915/gem_exec_scheduler: Exercise priority inversion from resource
 contention
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
Cc: IGT development <igt-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4IDIxOjEzOjEzKQo+IE9uIEZyaSwgTm92
IDgsIDIwMTkgYXQgOTo0OSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gd3JvdGU6Cj4gPgo+ID4gT25lIG9mIHRoZSBoYXJkZXN0IHByaW9yaXR5IGludmVyc2lvbiB0
YXNrcyB0byBib3RoIGhhbmRsZSBhbmQgdG8KPiA+IHNpbXVsYXRlIGluIHRlc3RpbmcgaXMgaW52
ZXJzaW9uIGR1ZSB0byByZXNvdXJjZSBjb250ZW50aW9uLiBUaGUKPiA+IGNoYWxsZW5nZSBpcyB0
aGF0IGEgaGlnaCBwcmlvcml0eSBjb250ZXh0IHNob3VsZCBuZXZlciBiZSBibG9ja2VkIGJ5IGEK
PiA+IGxvdyBwcmlvcml0eSBjb250ZXh0LCBldmVuIGlmIGJvdGggYXJlIHN0YXJ2aW5nIGZvciBy
ZXNvdXJjZXMgLS0KPiA+IGlkZWFsbHksIGF0IGxlYXN0IGZvciBzb21lIFJUIE9TZXMsIHRoZSBo
aWdoZXIgcHJpb3JpdHkgY29udGV4dCBoYXMKPiA+IGZpcnN0IHBpY2sgb2YgdGhlIG1lYWdyZSBy
ZXNvdXJjZXMgc28gdGhhdCBpdCBjYW4gYmUgZXhlY3V0ZWQgd2l0aAo+ID4gbWluaW11bSBsYXRl
bmN5Lgo+ID4KPiA+IHVzZXJmYXVsdGZkIGFsbG93cyB1cyB0byBoYW5kbGUgYSBwYWdlIGZhdWx0
IGluIHVzZXJzcGFjZSwgYW5kIHNvCj4gPiBhcmJpdHJhcnkgaW1wb3NlIGEgZGVsYXkgb24gdGhl
IGZhdWx0IGhhbmRsZXIsIGNyZWF0aW5nIGEgc2l0dWF0aW9uCj4gPiB3aGVyZSBhIGxvdyBwcmlv
cml0eSBjb250ZXh0IGlzIGJsb2NrZWQgd2FpdGluZyBmb3IgdGhlIGZhdWx0LiBUaGlzCj4gPiBi
bG9ja2VkIGNvbnRleHQgc2hvdWxkIG5vdCBwcmV2ZW50IGEgaGlnaCBwcmlvcml0eSBjb250ZXh0
IGZyb20gYmVpbmcKPiA+IGV4ZWN1dGVkLiBXaGlsZSB0aGUgdXNlcmZhdWx0IHRyaWVzIHRvIGVt
dWxhdGUgYSBzbG93IGZhdWx0IChlLmcuIGZyb20gYQo+ID4gZmFpbGluZyBzd2FwIGRldmljZSks
IGl0IGlzIHVuZm9ydHVuYXRlbHkgbGltaXRlZCB0byBhIHNpbmdsZSBvYmplY3QKPiA+IHR5cGU6
IHRoZSB1c2VycHRyLiBIb3BlZnVsbHksIHdlIHdpbGwgZmluZCBvdGhlciB3YXlzIHRvIGltcG9z
ZSBvdGhlcgo+ID4gc3RhcnZhdGlvbiBjb25kaXRpb25zIG9uIGdsb2JhbCByZXNvdXJjZXMuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
Cj4gU28gcnQtd3dfbXV0ZXhlcz8KPiAKPiBJIGRvbid0IHRoaW5rIHdlIHdhbnQvc2hvdWxkIGRv
IHRoYXQgb24gdGhlIGZpcnN0IHJvdW5kIG9mIHJvbGxpbmcgb3V0Cj4gd3dfbXV0ZXggaW4gaTkx
NS4KCkl0IHdvcmtzIHRvZGF5LiBBbmQgd2lsbCBjb250aW51ZSB3b3JraW5nIGFjcm9zcyBhbnkg
Y29udmVyc2lvbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
