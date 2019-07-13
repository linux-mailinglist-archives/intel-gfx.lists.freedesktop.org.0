Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D7967B59
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 19:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A39589C2A;
	Sat, 13 Jul 2019 17:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346B289C2A
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 17:06:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17270602-1500050 for multiple; Sat, 13 Jul 2019 18:06:42 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-3-chris@chris-wilson.co.uk>
 <156301317852.9436.7496367591184040413@skylake-alporthouse-com>
 <82dacd5f-1da6-e174-5d4c-78fe049efd92@intel.com>
In-Reply-To: <82dacd5f-1da6-e174-5d4c-78fe049efd92@intel.com>
Message-ID: <156303760017.9436.10305715838572281353@skylake-alporthouse-com>
Date: Sat, 13 Jul 2019 18:06:40 +0100
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/uc: introduce
 intel_uc_fw_supported
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTEzIDE3OjUxOjAyKQo+IAo+
IAo+IE9uIDcvMTMvMjAxOSAzOjE5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5n
IENocmlzIFdpbHNvbiAoMjAxOS0wNy0xMyAxMTowMDowOCkKPiA+PiBGcm9tOiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4+Cj4gPj4g
SW5zdGVhZCBvZiBhbHdheXMgY2hlY2tpbmcgaW4gdGhlIGRldmljZSBjb25maWcgaXMgR3VDIGFu
ZCBIdUMgYXJlCj4gPj4gc3VwcG9ydGVkIG9yIG5vdCwgd2UgY2FuIHNhdmUgdGhlIHN0YXRlIGlu
IHRoZSB1Y19mdyBzdHJ1Y3R1cmUgYW5kCj4gPj4gYXZvaWQgZ29pbmcgdGhyb3VnaCBpOTE1IGV2
ZXJ5IHRpbWUgZnJvbSB0aGUgbG93LWxldmVsIHVjIG1hbmFnZW1lbnQKPiA+PiBjb2RlLiB3aGls
ZSBhdCBpdCBGSVJNV0FSRV9OT05FIGhhcyBiZWVuIHJlbmFtZWQgdG8gYmV0dGVyIGluZGljYXRl
IHRoYXQKPiA+PiB3ZSBoYXZlbid0IHN0YXJ0ZWQgdGhlIGZldGNoL2xvYWQgeWV0LCBidXQgd2Ug
bWlnaHQgaGF2ZSBhbHJlYWR5IHNlbGVjdGVkCj4gPj4gYSBibG9iLgo+ID4+Cj4gPj4gU2lnbmVk
LW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPiA+PiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gPiBPaywgYnV0IEknbSBub3QgcXVpdGUgZ2V0dGluZyB0aGUgZmVlbGluZyBvZiBh
IG5pY2UgZmxvdyB0aHJvdWdoIGEgc3RhdGUKPiA+IG1hY2hpbmUuCj4gPiBSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtQ2hyaXMKPiAKPiBX
ZSBoYWQgZGlzY3Vzc2VkIGEgY291cGxlIG9mIHBvc3NpYmxlIGRpZmZlcmVudCBhcHByb2FjaGVz
IHdpdGggTWljaGFsIAo+IG9uIHRoZSBvdGhlciB0aHJlYWQsIGluY2x1ZGluZyBhIGJldHRlciBz
dGF0ZSBtYWNoaW5lIHRoYXQgdW5pZmllcyB0aGUgCj4gZmV0Y2gvbG9hZCBjYXNlcywgSSBqdXN0
IGRpZG4ndCBoYXZlIHRpbWUgdG8gdHJ5IHRoZW0geWV0LiBTaW5jZSB0aGUgCj4gc2VyaWVzIGlz
IGZ1bGx5IHJldmlld2VkLCBpZiB5b3Ugd2FudCB0byBnZXQgaXQgaW4gd2hpbGUgaXQgc3RpbGwg
Cj4gYXBwbGllcyBJIHdpbGwgZm9sbG93IHVwIHdpdGggdGhhdCByZXdvcmsgb24gdG9wLgoKQXll
LCBtb3JlIHRoYW4gaGFwcHkgd2l0aCBpbmNyZW1lbnRhbCBpbXByb3ZlbWVudHMgOikKLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
