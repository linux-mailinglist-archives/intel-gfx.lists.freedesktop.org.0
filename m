Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94796F7308
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:25:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53166E8B3;
	Mon, 11 Nov 2019 11:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8412C6E8B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:25:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:25:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="207088566"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 11 Nov 2019 03:25:30 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0A4985C1DF4; Mon, 11 Nov 2019 13:25:21 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157347027385.28106.12299078517436926628@skylake-alporthouse-com>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-7-chris@chris-wilson.co.uk>
 <878som65ux.fsf@gaia.fi.intel.com>
 <157347027385.28106.12299078517436926628@skylake-alporthouse-com>
Date: Mon, 11 Nov 2019 13:25:21 +0200
Message-ID: <87zhh24pum.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/25] drm/i915: Cancel context if it hangs
 after it is closed
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTExIDEwOjU0OjE0KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBJZiB3ZSBkZXRlY3QgYSBo
YW5nIGluIGEgY2xvc2VkIGNvbnRleHQsIGp1c3QgZmx1c2ggYWxsIG9mIGl0cyByZXF1ZXN0cwo+
PiA+IGFuZCBjYW5jZWwgYW55IHJlbWFpbmluZyBleGVjdXRpb24gYWxvbmcgdGhlIGNvbnRleHQu
IE5vdGUgdGhhdCBhZnRlcgo+PiA+IGNsb3NpbmcgdGhlIGNvbnRleHQsIHRoZSBsYXN0IHJlZmVy
ZW5jZSB0byB0aGUgY29udGV4dCBtYXkgYmUgZHJvcHBlZCwKPj4gPiBsZWF2aW5nIGl0IG9ubHkg
dmFsaWQgdW5kZXIgUkNVLgo+PiAKPj4gU291bmQgZ29vZC4gQnV0IGlzIHRoZXJlIGEgd2luZG93
IGZvciB1c2Vyc3BhY2UgdG8gc3RhcnQKPj4gdG8gc2VlIC1FSU8gaWYgaXQgcmVzdWJtaXRzIHRv
IGEgY2xvc2VkIGNvbnRleHQ/Cj4KPiBVc2Vyc3BhY2UgY2FuIG5vdCBzdWJtaXQgdG8gYSBjbG9z
ZWQgY29udGV4dCAoLUVOT0VOVCkgYXMgdGhhdCB3b3VsZCBiZQo+IHRhbnRhbW91bnQgdG8gYSB1
c2UtYWZ0ZXItZnJlZSBrZXJuZWwgYnVnLgo+ICAKPj4gSW4gb3RoZXIgd29yZHMsIGFmdGVyIHVz
ZXJzcGFjZSBkb2luZyBnZW1fY3R4X2Rlc3Ryb3koY3R4X2hhbmRsZSksCj4+IHdlIHdvdWxkIHJl
dHVybiAtRUlOVkFMIGR1ZSB0byBjdHhfaGFuZGxlIGJlaW5nIHN0YWxlCj4+IGVhcmxpZXIgdGhh
biB3ZSBjaGVjayBmb3IgYmFubmVkIHN0YXR1cyBhbmQgcmV0dXJuIC1FSU8/Cj4KPiBJdCdzIGFz
IHNpbXBsZSBhcyBpZiB0aGUgY29udGV4dCBpcyBjbG9zZWQsIGl0IGlzIHJlbW92ZWQgZnJvbSB0
aGUKPiBmaWxlLT5jb250ZXh0X2lkciBhbmQgdXNlcnNwYWNlIGNhbm5vdCBhY2Nlc3MgaXQuIElm
IHVzZXJzcGFjZSBpcyByYWNpbmcKPiB3aXRoIGl0c2VsZiwgdGhlcmUncyBub3QgbXVjaCB3ZSBj
YW4gZG8gb3RoZXIgdGhhbiBwcm90ZWN0IG91cgo+IHJlZmVyZW5jZXMuIElmIHVzZXJzcGFjZSBz
dWNjZWVkcyBpbiBzdWJtaXR0aW5nIHRvIHRoZSBjb250ZXh0IHByaW9yIHRvCj4gY2xvc2luZyBp
dCBpbiBhbm90aGVyIHRocmVhZCwgaXQgaGFzIHRoZSBjb250ZXh0IHRvIGNvbnRpbnVlIChhbmQg
aWYKPiB0aGVuIGhhbmdzLCBpdCB3aWxsIGJlIHNob3QgZG93biBpbW1lZGlhdGVseSkuIElmIGl0
IGxvc2VzIHRoYXQgcmFjZSwgaXQKPiBnZXRzIGFuIC1FTk9FTlQuIElmIGl0IGxvc2VzIHRoYXQg
cmFjZSBzbyBiYWRseSB0aGUgY29udGV4dCBpZCBpcwo+IHJlcGxhY2UgYnkgYSBuZXcgY29udGV4
dCwgaXQgc3VibWl0cyB0byB0aGF0IG5ldyBjb250ZXh0OyB3aGljaCBzdXJlbHkKPiB3aWxsIGVu
ZCBpbiB0ZWFycyBhbmQgR1BVIGhhbmdzLCBidXQgbm90IG91ciBmYXVsdCBhbmQgbm90aGluZyB3
ZSBjYW4gZG8KPiB0byBwcmV2ZW50IHRoYXQuCgpMZXQgdGhlbSBzaGVkIHRlYXJzIGlmIHRoZXkg
YnJpbmcgaXQgb24gdGhlbXNlbHZlcy4gSSB3YXMgY29uY2VybmVkCm9uIGEgYmVoYXZpb3VyYWwg
Y2hhbmdlIG9uIGNsb3NlL3Jlc3VibWl0IHJhY2UuIEJ1dCBhcyB5b3UgZXhwbGFpbmVkCnJhY2lu
ZyBvbiBhIGRpZmZlcmVudCBpZCwgdGhleSBkZXNlcnZlIHdoYXQgdGhleSBiZWdnZWQgZm9yLgoK
V2UgYXJlIGluIGEgYnVzaW5lc3Mgb2YgcHJvdGVjdGluZyB0aGUgc3RhdGUgb2YgYWxsIHRoZSBz
YW5lCm9uZXMuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
