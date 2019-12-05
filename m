Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3A9114141
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 14:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406816E0EB;
	Thu,  5 Dec 2019 13:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D00B6E0EB
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 13:11:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19470888-1500050 for multiple; Thu, 05 Dec 2019 13:11:32 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191205130240.GG25793@intel.com>
References: <20191202065458.9477-1-ramalingam.c@intel.com>
 <20191202065458.9477-2-ramalingam.c@intel.com>
 <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
 <157554841226.22727.12524170364084626029@skylake-alporthouse-com>
 <20191205130240.GG25793@intel.com>
Message-ID: <157555148978.22727.11669212602896257587@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 05 Dec 2019 13:11:29 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Create dumb buffer from
 LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTItMDUgMTM6MDI6NDApCj4gT24gMjAxOS0xMi0w
NSBhdCAxMjoyMDoxMiArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBNYXR0
aGV3IEF1bGQgKDIwMTktMTItMDUgMTI6MTI6MTkpCj4gPiA+IFdlIHdvdWxkIHN0aWxsIG5lZWQg
dG8gY2xlYXIgdGhlIG9iamVjdChtYXliZSBJOTE1X0JPX0FMTE9DX0NMRUFSRUQ/KQo+ID4gPiBp
biBvcmRlciB0byBwYXNzIHRoZSBJR1RzLiBXZSBhbHNvIG5lZWQgdG8gYWRqdXN0IGR1bWJfYnVm
ZmVyLmMsIHNpbmNlCj4gPiA+IHRoYXQgdXNlcyBnZXRfYXZhaWxfcmFtX21iKCkgZm9yIGFsd2F5
c19jbGVhciwgYnV0IG1heWJlIHdlIG5lZWQgdGhlCj4gPiA+IHF1ZXJ5IHJlZ2lvbiB1YXBpIGZv
ciB0aGF0Pwo+ID4gCj4gPiBIbW0uIFF1ZXN0aW9ucyBvdmVyIHRoZSBtYXhpbXVtIHNpemUgZm9y
IGR1bWIgYnVmZmVyLCBtYXhpbXVtIG51bWJlciBvZgo+ID4gZHVtYiBidWZmZXJzLCBldGMsIHNo
b3VsZCBiZSBhZGRyZXNzZWQgdG8gdGhlIGR1bWIgQVBJLiBTbyBzb21lIGZvcm0gb2YKPiA+IGRy
bUdldENhcCgpID8KPiBDaHJpcywgSXMgdGhpcyBzdWdnZXN0aW9uIHRvIGFkZCB0aGlzIGNhcGFi
aWxpdHkgcHJvYmluZyB0aHJvdWdoIGEgbmV3IElPQ1RMIGZvcgo+IGR1bWIgQVBJcz8gUGxlYXNl
IGNsYXJpZnkuCgpJIGRvbid0IHRoaW5rIHdlIG5lZWQgYSBuZXcgaW9jdGwsIGFzIGRybV9nZXRj
YXAgYWxyZWFkeSBjb3ZlcnMgdGhlIGR1bWIKYnVmZmVyIEFQSS4gV2UganVzdCBuZWVkIHRvIGV4
cG9zZSB0aGUgbGltaXRzIG9mIHRoZSBkdW1iIGJ1ZmZlciBBUEkKdGhyb3VnaCBpdC4KClRoZSAy
IHRoYXQgc3ByaW5nIHRvIG1pbmQgYXJlIG1heGltdW0gc2l6ZSBvZiBpbmRpdmlkdWFsIGJ1ZmZl
ciBhbmQKbWF4aW11bSBzaXplIG9mIHRvdGFsIGR1bWIgYnVmZmVycy4gKFRoZSBsYXR0ZXIgbWF5
IGJlIGluZmluaXRlIGZvcgpkcml2ZXJzIHRoYXQgYWxsb3cgc3dhcHBpbmcgb2YgaW5hY3RpdmUg
YnVmZmVycy4pIFRoZXJlIHdhcyBhIHJlcXVlc3Qgb24KaXJjIGZvciBzb21ldGhpbmcgbGlrZSB0
aGlzIGFzIHdlbGwsIGJ1dCBJJ20gbm90IGF3YXJlIG9mIHRoZSBjb250ZXh0LgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
