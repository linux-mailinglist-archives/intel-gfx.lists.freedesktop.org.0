Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE44885012
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 17:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD886E72D;
	Wed,  7 Aug 2019 15:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554806E72D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 15:38:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17920554-1500050 for multiple; Wed, 07 Aug 2019 16:38:44 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3AAF08@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AAC60@fmsmsx120.amr.corp.intel.com>
 <156518725889.6198.287254944385716344@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AACF2@fmsmsx120.amr.corp.intel.com>
 <156519048120.6198.8160520723086584407@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AAF08@fmsmsx120.amr.corp.intel.com>
Message-ID: <156519232232.6198.4591129492894212637@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 07 Aug 2019 16:38:42 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDgtMDcgMTY6Mjk6NTUpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBTZW50OiBXZWRuZXNkYXksIEF1Z3VzdCA3LCAyMDE5IDg6MDggQU0K
PiA+IFRvOiBCbG9vbWZpZWxkLCBKb24gPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT47IGludGVs
LQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47IFdpbmlhcnNraSwgTWljaGFsCj4gPiA8
bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBSRTogW1BBVENIIDUvNV0g
ZHJtL2k5MTU6IENhbmNlbCBub24tcGVyc2lzdGVudCBjb250ZXh0cyBvbiBjbG9zZQo+ID4gCj4g
PiBRdW90aW5nIEJsb29tZmllbGQsIEpvbiAoMjAxOS0wOC0wNyAxNTozMzo1MSkKPiA+IFtza2lw
IHRvIGVuZF0KPiA+ID4gV2UgZGlkbid0IGV4cGxvcmUgdGhlIGlkZWEgb2YgdGVybWluYXRpbmcg
b3JwaGFuZWQgY29udGV4dHMgdGhvdWdoCj4gPiAod2hlcmUgbm9uZSBvZiB0aGVpciByZXNvdXJj
ZXMgYXJlIHJlZmVyZW5jZWQgYnkgYW55IG90aGVyIGNvbnRleHRzKS4gSXMKPiA+IHRoZXJlIGEg
cmVhc29uIHdoeSB0aGlzIGlzIG5vdCBmZWFzaWJsZT8gSW4gdGhlIGNhc2Ugb2YgY29tcHV0ZSAo
Y2VydGFpbmx5Cj4gPiBIUEMpIHdvcmtsb2FkcywgdGhlcmUgd291bGQgYmUgbm8gY29tcG9zaXRv
ciB0YWtpbmcgdGhlIG91dHB1dCBzbyB0aGlzCj4gPiBtaWdodCBiZSBhIHNvbHV0aW9uLgo+ID4g
Cj4gPiBTb3VuZHMgZWFzaWVyIHNhaWQgdGhhbiBkb25lLiBXZSBoYXZlIHRvIGdvIHRocm91Z2gg
ZWFjaCByZXF1ZXN0IGFuZAo+ID4gZGV0ZXJtaW5lIGl0IGlmIGhhcyBhbiBleHRlcm5hbCByZWZl
cmVuY2UgKG9yIGlmIHRoZSBvYmplY3QgaG9sZGluZyB0aGUKPiA+IHJlZmVyZW5jZSBoYXMgYW4g
ZXh0ZXJuYWwgcmVmZXJlbmNlKSB0byBzZWUgaWYgdGhlIG91dHB1dCB3b3VsZCBiZQo+ID4gdmlz
aWJsZSB0byBhIHRoaXJkIHBhcnR5LiBTb3VuZHMgbGlrZSBhIGNvbnNlcnZhdGl2ZSBHQyA6fAo+
ID4gKENvbWluZyB0byB0aGF0IGNvbmNsdXNpb24gc3VnZ2VzdHMgdGhhdCB3ZSBzaG91bGQgc3Ry
dWN0dXJlIHRoZSByZXF1ZXN0Cj4gPiB0cmFja2luZyB0byBtYWtlIHJlcGFyZW50aW5nIGVhc2ll
ci4pCj4gPiAKPiA+IFdlIGNvdWxkIHRha2UgYSBwaWQtMSBhcHByb2FjaCBhbmQgbW92ZSBhbGwg
dGhlIG9ycGhhbiB0aW1lbGluZXMgb3ZlciB0bwo+ID4gYSBuZXcgcGFyZW50IHB1cmVseSByZXNw
b25zaWJsZSBmb3IgdGhlbS4gVGhhdCBob25lc3RseSBkb2Vzbid0IHNlZW0gdG8KPiA+IGFjaGll
dmUgYW55dGhpbmcuIChXZSBhcmUgc3RpbGwgc3R1Y2sgd2l0aCB0YXNrcyBvbiB0aGUgR1BVIGFu
ZCBubyB3YXkKPiA+IHRvIGtpbGwgdGhlbS4pCj4gPiAKPiA+IEluIGNvbXBhcmlzb24sIHBlcnNp
c3RlbmNlIGlzIGEgcmFyZWx5IHVzZWQgImZlYXR1cmUiIGFuZCBjbGVhbmluZyB1cCBvbgo+ID4g
Y29udGV4dCBjbG9zZSBmaXRzIGluIG5pY2VseSB3aXRoIHRoZSBwcm9jZXNzIG1vZGVsLiBJdCBq
dXN0IHdvcmtzIGFzCj4gPiBtb3N0IHVzZXJzL2NsaWVudHMgd291bGQgZXhwZWN0LiAoQWx0aG91
Z2ggcnVubmluZyBpbiBub24tcGVyc2lzdGVudAo+ID4gYnkgZGVmYXVsdCBoYXNuJ3Qgc2hvdyBh
bnl0aGluZyB0byBleHBsb2RlIG9uIHRoZSBkZXNrdG9wLCBpdCdzIHRvbyBlYXN5Cj4gPiB0byBj
b25zdHJ1Y3Qgc2NlbmFyaW9zIHdoZXJlIHBlcnNpc3RlbmNlIHR1cm5zIG91dCB0byBiZSBhbiBh
ZHZhbnRhZ2UsCj4gPiBwYXJ0aWN1bGFybHkgd2l0aCBjaGFpbnMgb2YgY2xpZW50cyAodGhlIGNv
bXBvc2l0b3IgbW9kZWwpLikgQmV0d2VlbiB0aGUKPiA+IHR3byBtb2Rlcywgd2Ugc2hvdWxkIGhh
dmUgbW9zdCBiYXNlcyBjb3ZlcmVkLCBpdCdzIGhhcmQgdG8gYXJndWUgZm9yIGEKPiA+IHRoaXJk
IHdheSAodGhhdCBpcyB1bnRpbCBzb21lb25lIGhhcyBhIHVzZWNhc2UhKQo+ID4gLUNocmlzCj4g
Cj4gT2ssIG1ha2VzIHNlbnNlLiBUaGFua3MuCj4gCj4gQnV0IGhhdmUgd2UgY29udmVyZ2VkIG9u
IGEgZGVjaXNpb24gOi0pCj4gCj4gQXMgSSBzYWlkLCByZXF1aXJpbmcgY29tcHV0ZSB1bWQgb3B0
aW4gc2hvdWxkIGJlIG9rIGZvciB0aGUgaW1tZWRpYXRlIEhQQyBpc3N1ZSwgYnV0IEknZCBwZXJz
b25hbGx5IGFyZ3VlIHRoYXQgaXQncyB2YWxpZCB0byBjaGFuZ2UgdGhlIGNvbnRyYWN0IGZvciBo
YW5nY2hlY2s9MCBhbmQgc3dpdGNoIHRoZSBkZWZhdWx0IHRvIG5vbi1wZXJzaXN0ZW50LgoKSSBk
b24ndCBoYXZlIHRvIGxpa2UgaXQsIGJ1dCBJIHRoaW5rIHRoYXQncyB3aGF0IHdlIGhhdmUgdG8g
ZG8gZm9yIHRoZQppbnRlcmltIDEwIHllYXJzIG9yIHNvLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
