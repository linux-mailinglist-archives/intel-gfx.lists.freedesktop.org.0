Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD2710297E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018CB6E999;
	Tue, 19 Nov 2019 16:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149936E9AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:35:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19260627-1500050 for multiple; Tue, 19 Nov 2019 16:35:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-9-chris@chris-wilson.co.uk>
 <87y2wbx2u5.fsf@gaia.fi.intel.com>
In-Reply-To: <87y2wbx2u5.fsf@gaia.fi.intel.com>
Message-ID: <157418132420.12093.5312750561162647145@skylake-alporthouse-com>
Date: Tue, 19 Nov 2019 16:35:24 +0000
Subject: Re: [Intel-gfx] [PATCH 09/17] drm/i915: Wait until the
 intel_wakeref idle callback is complete
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTE5IDE2OjEyOjE4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXaGVuIHdhaXRpbmcg
Zm9yIGlkbGUsIHNlcmlhbGlzZSB3aXRoIGFueSBvbmdvaW5nIGNhbGxiYWNrIHNvIHRoYXQgaXQK
PiA+IHdpbGwgaGF2ZSBjb21wbGV0ZWQgYmVmb3JlIGNvbXBsZXRpbmcgdGhlIHdhaXQuCj4gCj4g
TWlnaHQgYmUgY29tZSBhcHBhcmVudCBhbmQgZXZpZGVudCB3aGVuIHJlYWRpbmcgdGhlIHBhdGNo
Cj4gdGhhdCBpbnRyb2R1Y2UgdGhlIGludGVsX3dha2VyZWZfdW5sb2NrX3dhaXQoKSwKPiBidXQg
cmVhZGVyIGlzIHllYXJuaW5nIGZvciBhIHdoeSBwYXJ0Lgo+IAo+IFRoZSAnd2FpdF9mb3JfaWRs
ZScgaXMga2luZCBvZiByZXZhbGluZyBvZgo+IHdoeSB0aGUgbmVlZCBmb3Igc3luYyB0aG8uCgpJ
IGRvbid0IGhhdmUgYSBwYXJ0aWN1bGFyIGV4YW1wbGUgd2hlcmUgYnkgbm90IHdhaXRpbmcgZm9y
IHRoZSBjYWxsYmFjawp0byBmaW5pc2gsIHdlIGZvdW5kIG91cnNlbHZlcyBpbnNwZWN0aW5nIHN0
YWxlIHN0YXRlLiBCdXQgdGhhdCdzIHRoZQp3b3JyeSAtLSB0aGF0IGFueSBjYWxsZXIgcHJvY2Vl
ZHMgYXNzdW1pbmcgdGhlIHdha2VyZWYgbXV0ZXhlcyBhcmUgbm8KbG9uZ2VyIGluIHVzZSwgd2hl
biBpbiBmYWN0IHNvbWUgQ1BVIGlzIHN0aWxsIGFjY2Vzc2luZyB0aGF0IG1lbW9yeS4KVGVuZHMg
dG8gb25seSBiZSBhIHdvcnJ5IGJlZm9yZSBmcmVlLCB3aGljaCBpbiB0aGlzIGNhc2UgZW50YWls
cyBtb2R1bGUKdW5sb2FkLgoKSSBuZWVkZWQgdGhlICJ1bmxvY2tfd2FpdCIgZm9yIGVuZ2luZS1w
bSBpbiBvbmUgb2YgdGhlIHNlbGZ0ZXN0cywgYXMgSQp3YXMgYWRkaW5nIHRoYXQsIEkgc2F3IG5v
IGhhcm0gaW4gZG90dGluZyB0aGUgJ2knIGFuZCBjcm9zc2luZyB0aGUgJ3QnCmhlcmUgYXMgd2Vs
bC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
