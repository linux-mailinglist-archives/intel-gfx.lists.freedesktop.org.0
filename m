Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645A2E9263
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:51:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77A06EC5A;
	Tue, 29 Oct 2019 21:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601EF6EC5A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:51:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19012671-1500050 for multiple; Tue, 29 Oct 2019 21:51:39 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-6-matthew.auld@intel.com>
 <b5e6ac2b-2b3a-d6f8-5df7-7e8f3c870874@intel.com>
In-Reply-To: <b5e6ac2b-2b3a-d6f8-5df7-7e8f3c870874@intel.com>
Message-ID: <157238589643.2489.9037740977390135253@skylake-alporthouse-com>
Date: Tue, 29 Oct 2019 21:51:36 +0000
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: don't allocate the ring in
 stolen if we lack aperture
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTI5IDIxOjQ2OjQ2KQo+IAo+
IAo+IE9uIDEwLzI5LzE5IDI6NTggQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiA+IFNpbmNlIHdl
IGhhdmUgbm8gd2F5IGFjY2VzcyBpdCBmcm9tIHRoZSBDUFUuIEZvciBzdWNoIGNhc2VzIGp1c3QK
PiA+IGZhbGxiYWNrIHRvIGludGVybmFsIG9iamVjdHMuCj4gPiAKPiAKPiBTaW5jZSB0aGUgcHJv
YmxlbSBpcyBub3QgbGltaXRlZCB0byByaW5ncyBidXQgaXQgYXBwbGllcyB0byBhbGwgc3RvbGVu
IAo+IG9iamVjdHMsIHdvdWxkbid0IGl0IGJlIGJldHRlciB0byBqdXN0IHNraXAgdGhlIHN0b2xl
biBpbml0aWFsaXphdGlvbiBvciAKPiByZXR1cm4gYW4gZXJyb3IgZnJvbSBpOTE1X2dlbV9vYmpl
Y3RfY3JlYXRlX3N0b2xlbigpPwoKTm90IGFsbCBzdG9sZW4gb2JqZWN0cyBhcmUgYWNjZXNzZWQg
b24gdGhlIENQVSwgdGhlIHByb2JsZW0gZXhwcmVzc2VkCmhlcmUgaXMgbm90IHVuaXZlcnNhbC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
