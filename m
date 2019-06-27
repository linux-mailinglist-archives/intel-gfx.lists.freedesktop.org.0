Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 246BF5840E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9786E424;
	Thu, 27 Jun 2019 14:01:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA1D6E415;
 Thu, 27 Jun 2019 14:01:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17045507-1500050 for multiple; Thu, 27 Jun 2019 15:01:38 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87v9wrp1rb.fsf@intel.com>
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
 <87v9wrp1rb.fsf@intel.com>
Message-ID: <156164409532.9225.7719846819180504258@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 15:01:35 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Silence Valgrind
 warning in synce_fence_status
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNyAxNDo1OTo1MikKPiBPbiBUaHUsIDI3IEp1
biAyMDE5LCBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPiB3
cm90ZToKPiA+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gPgo+ID4gTGV0IFZhbGdyaW5kIGtub3cgdGhlIGlvY3RsIGluaXRpYWxpemVzIHRoZSBwYXNz
ZWQgaW4gaW5mbyBibG9jayB0byByZWR1Y2UKPiA+IHRoZSBub2lzZSB3aGlsZSBkZWJ1Z2dpbmcu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiA+IC0tLQo+ID4gIGxpYi9zd19zeW5jLmMgfCAxMSArKysrKysrKysrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2xp
Yi9zd19zeW5jLmMgYi9saWIvc3dfc3luYy5jCj4gPiBpbmRleCBmMjA4NjAzMzEyYzIuLjczZjNm
NzAxNWQ5ZCAxMDA2NDQKPiA+IC0tLSBhL2xpYi9zd19zeW5jLmMKPiA+ICsrKyBiL2xpYi9zd19z
eW5jLmMKPiA+IEBAIC00MSw2ICs0MSwxNSBAQAo+ID4gICNpbmNsdWRlICJkcm10ZXN0LmgiCj4g
PiAgI2luY2x1ZGUgImlvY3RsX3dyYXBwZXJzLmgiCj4gPiAgCj4gPiArI2lmZGVmIEhBVkVfVkFM
R1JJTkQKPiA+ICsjaW5jbHVkZSA8dmFsZ3JpbmQvdmFsZ3JpbmQuaD4KPiA+ICsjaW5jbHVkZSA8
dmFsZ3JpbmQvbWVtY2hlY2suaD4KPiA+ICsKPiA+ICsjZGVmaW5lIFZHKHgpIHgKPiA+ICsjZWxz
ZQo+ID4gKyNkZWZpbmUgVkcoeCkgZG8ge30gd2hpbGUgKDApCj4gCj4gT09DLCB3aHkgbm90IGp1
c3QKPiAKPiAjZGVmaW5lIFZBTEdSSU5EX01BS0VfTUVNX0RFRklORUQoLi4uKQoKT25jZSB1cG9u
IGEgdGltZSwgaW4gYSBwcm9qZWN0IGZhciBmYXIgYXdheSwgVkcoKSB3YXMgdXNlZCB0bwpjb25k
aXRpb25hbGx5IGNvbXBpbGUgY29kZSBmb3IgZXh0cmEgZGVidWcgdW5kZXIgdmFsZ3JpbmQgYW5k
IHNvIHRoZQpwYXR0ZXJuIHRvb2sgcm9vdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
