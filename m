Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4392EAE062
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 23:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0752689E5A;
	Mon,  9 Sep 2019 21:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04A289E5A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 21:48:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18431453-1500050 for multiple; Mon, 09 Sep 2019 22:48:44 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
References: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
 <b9c6a7df-9137-6be0-bc40-209f5c2cb17e@intel.com>
 <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
Message-ID: <156806572224.30942.3268138152609453265@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Sep 2019 22:48:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMDcgMDk6Mzk6NTIpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTA2IDIzOjI4OjA1KQo+ID4gCj4gPiAKPiA+IE9u
IDkvNS8xOSAyOjA5IEFNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPiA+IFdoZW4gdHJ5
aW5nIHRvIHJlc2V0IGEgZGV2aWNlIHdpdGggcmVzZXQgY2FwYWJpbGl0eSBkaXNhYmxlZCBvciBu
b3QKPiA+ID4gc3VwcG9ydGVkIHdoaWxlIHJpbmdzIGFyZSBmdWxsIG9mIHJlcXVlc3RzLCBpdCBo
YXMgYmVlbiBvYnNlcnZlZCB3aGVuCj4gPiA+IHJ1bm5pbmcgaW4gZXhlY2xpc3RzIHN1Ym1pc3Np
b24gbW9kZSB0aGF0IGNvbW1hbmQgc3RyZWFtIGJ1ZmZlciB0YWlsCj4gPiA+IHRlbmRzIHRvIGJl
IGluY3JlbWVudGVkIGJ5IGFwcGFyZW50bHkgc3RpbGwgcnVubmluZyBHUFUgcmVnYXJkbGVzcyBv
Zgo+ID4gPiBhbGwgcmVxdWVzdHMgYmVpbmcgYWxyZWFkeSBjYW5jZWxsZWQgYW5kIGNvbW1hbmQg
c3RyZWFtIGJ1ZmZlciBwb2ludGVycwo+ID4gPiByZXNldC4gIEFzIGEgcmVzdWx0LCBrZXJuZWwg
cGFuaWMgb24gTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9jY3Vycwo+ID4gPiB3aGVuIGEgdHJh
Y2VfcG9ydHMoKSBoZWxwZXIgaXMgY2FsbGVkIHdpdGggY29tbWFuZCBzdHJlYW0gYnVmZmVyIHRh
aWwKPiA+ID4gaW5jcmVtZW50ZWQgYnV0IHJlcXVlc3QgcG9pbnRlcnMgYmVpbmcgTlVMTCBkdXJp
bmcgZmluYWwKPiA+ID4gX19pbnRlbF9ndF9zZXRfd2VkZ2VkKCkgb3BlcmF0aW9uIGNhbGxlZCBm
cm9tIGludGVsX2d0X3Jlc2V0KCkuCj4gPiA+IAo+ID4gPiBTa2lwIGFjdHVhbCByZXNldCBwcm9j
ZWR1cmUgaWYgcmVzZXQgaXMgZGlzYWJsZWQgb3Igbm90IHN1cHBvcnRlZC4KPiA+IAo+ID4gVGhp
cyBsYXN0IHNlbnRlbmNlIGlzIGEgYml0IGNvbmZ1c2luZy4gWW91J3JlIG5vdCBza2lwcGluZyB0
aGUgcmVzZXQgCj4gPiBwcm9jZWR1cmUsIHlvdSdyZSBza2lwcGluZyB0aGUgYXR0ZW1wdCBvZiB1
bndlZGdpbmcgYW5kIHJlc2V0dGluZyBhZ2FpbiAKPiA+IGFmdGVyIGEgcmVzZXQgJiB3ZWRnZSBh
bHJlYWR5IGhhcHBlbmVkLgo+IAo+IExvc3Mgb2YgZW1haWwgb3ZlciB0aGUgbGFzdCB3ZWVrLCBz
byBqdW1waW5nIGluIGF0IHRoZSBlbmQuIE15IGd1dAo+IHJlc3BvbnNlIGlzIHRoYXQgdGhpcyBp
cyBzdGlsbCBqdXN0IHBhcGVyaW5nIG92ZXIgdGhlIGJ1ZywgYXMgd2hhdCB5b3UKPiBzYXkgYWJv
dmUgbWFrZXMgbm8gc2Vuc2UuCgpTbyBteSBndXQgcmVzcG9uc2Ugd2FzIHRvIHRoZSBydW4gb24g
c2VudGVuY2UsIHdoZW4gYWxsIHlvdSBuZWVkZWQgdG8Kc2F5IHRoYXQgd2l0aG91dCBhIHN1Y2Nl
c3NmdWwgcmVzZXQgcHJpb3IgdG8gY2FsbGluZwpyZXNldF9kZWZhdWx0X3N1Ym1pc3Npb24sIHRo
ZSBlbmdpbmUgbWF5IHN0aWxsIGdlbmVyYXRlIENTIGV2ZW50cyBvdXQgb2YKdGhlIGJsdWUuIEFu
ZCBJIHRoaW5rIHRoZSBwYXRjaCBzaG91bGQgYmUgd3JpdHRlbiB0byByZXF1aXJlIHRoZQpzdWNj
ZXNzZnVsIHJlc2V0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
