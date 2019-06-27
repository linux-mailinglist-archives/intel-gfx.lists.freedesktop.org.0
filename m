Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1AA58C70
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 23:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5466E825;
	Thu, 27 Jun 2019 21:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D344B6E841
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 21:06:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050003-1500050 for multiple; Thu, 27 Jun 2019 22:06:10 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627203225.3427-1-daniele.ceraolospurio@intel.com>
References: <20190627203225.3427-1-daniele.ceraolospurio@intel.com>
Message-ID: <156166956835.9225.17421011327681238079@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 22:06:08 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Gen12 csb support
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTI3IDIxOjMyOjI1KQo+IFRo
ZSBDU0IgZm9ybWF0IGhhcyBiZWVuIHJld29ya2VkIGZvciBHZW4xMiB0byBpbmNsdWRlIGluZm9y
bWF0aW9uIG9uCj4gYm90aCB0aGUgY29udGV4dCB3ZSdyZSBzd2l0Y2hpbmcgYXdheSBmcm9tIGFu
ZCB0aGUgY29udGV4dCB3ZSdyZQo+IHN3aXRjaGluZyB0by4gQWZ0ZXIgdGhlIGNoYW5nZSwgc29t
ZSBvZiB0aGUgZXZlbnRzIGRvbid0IGhhdmUgdGhlaXIKPiBvd24gYml0IGFueW1vcmUgYW5kIG5l
ZWQgdG8gYmUgaW5mZXJyZWQgZnJvbSBvdGhlciB2YWx1ZXMgaW4gdGhlIGNzYi4KPiBPbmUgb2Yg
dGhlIGNvbnRleHQgSURzICgweDdGRikgaGFzIGFsc28gYmVlbiByZXNlcnZlZCB0byBpbmRpY2F0
ZQo+IHRoZSBpbnZhbGlkIGN0eCwgaS5lLiBlbmdpbmUgaWRsZS4KPiBUbyBrZWVwIHRoZSBsb2dp
YyBzaW1wbGUsIHdlIGNhbiBjb252ZXJ0IHRoZSBuZXcgZ2VuMTIgZm9ybWF0IHRvIHRoZQo+IGdl
bjExIGZvcm1hdCBhbmQgcmUtdXNlIHRoZSBsZWdhY3kgY3NiIGhhbmRsaW5nIGxvZ2ljLiBUaGlz
IHJlc3VsdAo+IGluIGEgc2xpZ2x0aGx5IHNsb3dlciBoYW5kbGluZyBmb3IgZ2VuMTIgYnV0IGFs
bG93cyB1cyB0byBnZXQgcnVubmluZwo+IHdpdGggYSByZWxhdGl2ZWx5IHNtYWxsIGNoYW5nZSBh
bmQgYXZvaWRzIGNvZGUgZHVwbGljYXRpb24uCj4gCj4gUkZDOiBiYXNlIFRHTCBzdXBwb3J0IFsx
XSBpcyBub3QgeWV0IGluIHRoZSB0cmVlLCBidXQgSSB3YW50ZWQgdG8gZ2V0Cj4gc29tZSBlYXJs
eSBjb21tZW50cyBvbiB0aGlzIGJlY2F1c2UgSSdtIG5vdCB0b3RhbGx5IGNvbnZpbmNlZCB0aGF0
IHRoZQo+IGNvbnZlcnNpb24gaXMgdGhlIGJlc3Qgd2F5IG9mIGRvaW5nIHRoaXMuIFRoaXMgd2F5
IGlmIGFub3RoZXIgYXBwcm9hY2gKPiBpcyBwcm9wb3NlZCBJIGNhbiBkbyB0aGUgd29yayB3aGls
ZSB0aGUgYmFzZSBzdXBwb3J0IGdldHMgcmV2aWV3ZWQuIElmCj4gd2Ugc3RpY2sgd2l0aCB0aGUg
Y29udmVyc2lvbiB3ZSBjYW4gcHJvYmFibHkgb3B0aW1pemUgYSBiaXQuCj4gVG91Z2h0cz8KCldl
IG9ubHkgcmVxdWlyZSBhIGZldyBzdGF0ZXMgYW5kIHNvIEkgd29uZGVyIGlmIHdlIHNob3VsZCB0
cnkgdG8gbWFwIHRvCnRoZSBjdXJyZW50IGludGVybmFsIHN0YXRlcwoKc3dpdGNoIChjc2JfcGFy
c2VfZm5bZ2VuXShidWYgKyBpKSkgewoJY2FzZSBQUkVFTVBUOgoJCS4uLgoJCS8qIGZhbGx0aHJv
dWdoICovCgljYXNlIFBST01PVEU6CgkJYnJlYWs7CgoJY2FzZSBDT01QTEVURToKCQlicmVhazsK
CglkZWZhdWx0OiAvKiBib3Jpbmcgbm9uLWV2ZW50ICovCgkJYnJlYWs7Cn0KCkkgaG9wZSBmdW5j
dGlvbiBwb2ludGVycyBsaWtlIHRoYXQgYXJlIG5vdCBzZXZlcmVseSBwZW5hbGl6ZWQgbm93YWRh
eXMuCgpCYXNpY2FsbHkgaW5zdGVhZCBvZiBjb21waWxpbmcgdGhlIG1hc2ssIHdlIGhhdmUgYSBz
ZXF1ZW5jZSBvZiBjaGVjawphbmQgcmV0dXJuLiBJZiB3ZSBrZWVwIG9uIGxvZ2dpbmcgdGhlIGZ1
bGwgQ1NCW10gdGhhdCBpcyBhdCBsZWFzdCB0aGUKaW5mb3JtYXRpb24gd2UgbmVlZCB0byB2ZXJp
ZnkgdGhlIGV2ZW50cyBhZ2FpbnN0IG91ciBzdGF0ZSB0cmFja2luZywKZXhjZXB0IHRoYXQgd2Ug
cHVzaCB0aGUgZWZmb3J0IG91dCB0byB0aGUgZGVidWdnZXIgdG8gcGFyc2UgdGhlIGV2ZW50CmRl
dGFpbHMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
