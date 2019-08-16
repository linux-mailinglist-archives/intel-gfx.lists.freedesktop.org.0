Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14925907E8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 20:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810A36E980;
	Fri, 16 Aug 2019 18:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9D46E980
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 18:50:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18166990-1500050 for multiple; Fri, 16 Aug 2019 19:50:24 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190816175801.8215-1-chris@chris-wilson.co.uk>
 <c240e776-540d-3c07-0e9a-6e738d837e36@intel.com>
In-Reply-To: <c240e776-540d-3c07-0e9a-6e738d837e36@intel.com>
Message-ID: <156598142170.11610.3420050484007477053@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 19:50:21 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check the context size
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTE2IDE5OjQzOjQ3KQo+IAo+
IAo+IE9uIDgvMTYvMTkgMTA6NTggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IEFkZCBhIHJl
ZHpvbmUgdG8gb3VyIGNvbnRleHQgaW1hZ2UgYW5kIGNoZWNrIHRoZSBIVyBkb2VzIG5vdCB3cml0
ZSBpbnRvCj4gPiBhZnRlciBhIGNvbnRleHQgc2F2ZSwgdG8gdmVyaWZ5IHRoYXQgd2UgaGF2ZSB0
aGUgY29ycmVjdCBjb250ZXh0IHNpemUuCj4gPiAoVGhpcyBkb2VzIHZhcnkgd2l0aCBmZWF0dXJl
IGJpdHMsIHNvIHRlc3Qgd2l0aCBhIGxpdmUgc2V0dXAgdGhhdCBzaG91bGQKPiA+IG1hdGNoIGhv
dyB3ZSBydW4gdXNlcnNwYWNlLikKPiA+IAo+IAo+IE9uIG5ld2VyIGdlbnMgdGhlIGRhdGEgc2F2
ZWQgZHVyaW5nIHRoZSBjdHggc3dpdGNoIGlzIHZhcmlhYmxlLCBiYXNlZCBvbiAKPiB0aGUgdHlw
ZSBvZiBzd2l0Y2ggYW5kIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBIVywgZS5nLiBzb21lIHN0
YXRlIGlzIAo+IG9ubHkgc2F2ZWQgZHVyaW5nIGEgcHJlZW1wdGlvbiwgYW5kIHRoZSBjdHggbGF5
b3V0IGlzIGNvbXByZXNzZWQgCj4gYWNjb3JkaW5nbHkuIFdlJ2QgbmVlZCB0aGUgdGVzdCB0byBn
ZW5lcmF0ZSB0aGUgbWF4aW11bSBwb3NzaWJsZSBzaXplIAo+IChhbmQgSSBoYXZlIG5vIGlkZWEg
d2hpY2ggdXNhZ2UgY2FzZSBwcm9kdWNlcyB0aGF0KSwgYnV0IEkgZG9uJ3QgdGhpbmsgCj4gdGhh
dCdkIHNjYWxlIHdlbGwgZnJvbSBnZW4gdG8gZ2VuLgoKSSdkIHRha2UgdGhpcyBhcyBhIHN0YXJ0
aW5nIHBvaW50LCBhbmQgd2UgY2FuIGRlZmluaXRlbHkgZ2VuZXJhdGUKcHJlZW1wdGlvbiBldmVu
dHMgZWFzaWx5IGV0YyAtLSBpdCdzIG9ubHkgd2hlbiBpdCBzdGFydCBkZXBlbmRpbmcgb24gc3Rh
dGUKc2V0IGJ5IHVzZXJzcGFjZSBkbyB3ZSBydW4gaW50byBsb2dpc3RpY2FsIHByb2JsZW1zIChJ
IGNhbiBvbmx5IGRyZWFkCmVuY291bnRlcmluZyBzdWNoIGEgYnVnIGluIHRoZSB3aWxkKS4KClNv
IHYyLCBhZGQgYSByZWR6b25lIGV2ZXJ5d2hlcmUgYW5kIGNoZWNrIG9uIGNvbnRleHQgdW5waW5u
aW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
