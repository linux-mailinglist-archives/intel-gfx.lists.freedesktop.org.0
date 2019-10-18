Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB50ADC2B5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 12:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C666E0AB;
	Fri, 18 Oct 2019 10:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197AB6E0AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 10:22:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18880367-1500050 for multiple; Fri, 18 Oct 2019 11:22:40 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191016195251.17863-1-chris@chris-wilson.co.uk>
 <20191017095206.3954-1-chris@chris-wilson.co.uk>
 <a179fdd3-96c9-57cf-322d-74b997686a86@linux.intel.com>
In-Reply-To: <a179fdd3-96c9-57cf-322d-74b997686a86@linux.intel.com>
Message-ID: <157139415799.10597.2137903683966959185@skylake-alporthouse-com>
Date: Fri, 18 Oct 2019 11:22:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Don't merely skip
 submission if maybe timeslicing
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xOCAxMDo1MDo1NSkKPiAKPiBPbiAxNy8x
MC8yMDE5IDEwOjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBOb3JtYWxseSwgd2UgdHJ5IGFu
ZCBza2lwIHN1Ym1pc3Npb24gaWYgRUxTUFsxXSBpcyBmaWxsZWQuIEhvd2V2ZXIsIHdlCj4gPiBt
YXkgZGVzaXJlIHRvIGVuYWJsZSB0aW1lc2xpY2luZyBkdWUgdG8gdGhlIHF1ZXVlIHByaW9yaXR5
LCBldmVuIGlmCj4gPiBFTFNQWzFdIGl0c2VsZiBkb2VzIG5vdCByZXF1aXJlIHRpbWVzbGljaW5n
LiBUaGF0IGlzIHRoZSBxdWV1ZSBpcyBlcXVhbAo+ID4gcHJpb3JpdHkgdG8gRUxTUFswXSBhbmQg
aGlnaGVyIHByaW9yaXR5IHRoZW4gRUxTUFsxXS4gUHJldmlvdXNseSwgd2UKPiA+IHdvdWxkIHdh
aXQgdW50aWwgdGhlIGNvbnRleHQgc3dpdGNoIHRvIHByZWVtcHQgdGhlIGN1cnJlbnQgRUxTUFsx
XSwgYnV0Cj4gPiB3aXRoIHRpbWVzbGljaW5nLCB3ZSB3YW50IHRvIHByZWVtcHQgRUxTUFswXSBh
bmQgcmVwbGFjZSBpdCB3aXRoIHRoZQo+ID4gcXVldWUuCj4gCj4gV2h5IHdlIHdhbnQgdG8gcHJl
ZW1wdCBFTFNQWzBdIGlmIHRoZSBzdGF0ZW1lbnQgaXMgcXVldWUgaXMgbm90IGhpZ2hlciAKPiBw
cmlvcml0eSBmcm9tIGl0PwoKSXQgaXMgb2YgZXF1YWwgcHJpb3JpdHksIHRoZSBkZXNpcmUgaXMg
dG8gYWx0ZXJuYXRlLgoKRUxTUFsxXS5wcmlvIDwgRUxTUFswXS5wcmlvClEucHJpbyA9IEVMU1Bb
MF0ucHJpbyAoPT4gUS5wcmlvID4gRUxTUFsxXS5wcmlvKQoKRXJnbywgd2Ugd291bGQgbGlrZSB0
byByZXBsYWNlIEVMU1BbMV0gd2l0aCBRLCBhbmQgdGhlbiBhbHRlcm5hdGUgYmV0d2Vlbgp0aGUg
dHdvIEVMU1BbXS4gV2hhdCBhY3R1YWxseSBoYXBwZW5zIGlzIHdlIGVuYWJsZSB0aGUgdGltZXNs
aWNlIGFuZApwcm9tb3RlIFEgaW50byBFTFNQWzBdIHdpdGggRUxTUFsxXSB0YWtpbmcgdGhlIG5l
eHQgaGlnaGVzdCBwcmlvcml0eQp0YXNrIChtYXliZSB0aGUgb2xkIEVMU1BbMF0pLgogCj4gPiAr
c3RhdGljIGlubGluZSBib29sIG5lZWRfcHJlZW1wdChpbnQgcHJpbywgaW50IGFjdGl2ZSkKPiA+
ICt7Cj4gPiArICAgICAvKgo+ID4gKyAgICAgICogQWxsb3cgcHJlZW1wdGlvbiBvZiBsb3cgLT4g
bm9ybWFsIC0+IGhpZ2gsIGJ1dCB3ZSBkbwo+ID4gKyAgICAgICogbm90IGFsbG93IGxvdyBwcmlv
cml0eSB0YXNrcyB0byBwcmVlbXB0IG90aGVyIGxvdyBwcmlvcml0eQo+ID4gKyAgICAgICogdGFz
a3MgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhhdCBsYXRlbmN5IGZvciBsb3cgcHJpb3JpdHkKPiA+
ICsgICAgICAqIHRhc2tzIGRvZXMgbm90IG1hdHRlciAoYXMgbXVjaCBhcyBiYWNrZ3JvdW5kIHRo
cm91Z2hwdXQpLAo+ID4gKyAgICAgICogc28ga2lzcy4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAg
cmV0dXJuIHByaW8gPj0gbWF4KEk5MTVfUFJJT1JJVFlfTk9STUFMLCBhY3RpdmUpOwo+IAo+IElz
IHRoaXMgdGhlIHNhbWUgYXMgdGhlIGN1cnJlbnQ6Cj4gCj4gICAgcmV0dXJuIHByaW8gPiBtYXgo
STkxNV9QUklPUklUWV9OT1JNQUwgLSAxLCBhY3RpdmUpOwo+IAo+IEhtIG5vLCBpdCBub3cgYWxs
b3dzIGZvciBoaWdoIHByaW8gdGFza3MgdG8gcHJlZW1wdCBlcXVhbCBoaWdoIHByaW8uCj4gCj4g
U28gaXQgd2lsbCBraWNrIHRoZSB0YXNrbGV0IGFuZCBkZXF1ZXVlIHdpbGwgdGhlbiBkZWNpZGUg
bm8gdG8gCj4gbmVlZF9wcmVlbXB0IGFmdGVyIGFsbC4gV2hlcmUgaXQgaXMgdGhlIGNhdGNoPyBP
a2F5IGNhdGNoIGlzIGluIHRoZSAKPiBvdGhlciBleGVjbGlzdF9kZXF1ZXVlIGh1bmsgLSB0aGF0
IGl0IHdpbGwgbm93IGVuYWJsZSB0aGUgdGltZXNsaWNlIHRpbWVyLgo+IAo+IEkgaGF2ZSB0byBz
YXkgaXQgaXMgZ2V0dGluZyB2ZXJ5IGRpZmZpY3VsdCB0byB0aWUgZXZlcnl0aGluZyB0b2dldGhl
ci4gSSAKPiB3aXNoIGZvciBhIHNpbXBsZXIgZGVzaWduIHdpdGggbW9yZSBjZW50cmFsaXplZCAi
bWFnaWMiIG9uIGhhZGxpbmcgCj4gcHJpb3JpdGllcyBldGMuCgpIb3cgbW9yZSBjZW50cmFsIGNh
biB3ZSBnZXQ/IE5vdCBkbyB0aGUgdGFza2xldF9zY2hlZHVsZSBmaWx0ZXJpbmcgYXQKYWxsLiBU
aGF0J3MgdGhlIG9ubHkgcmVhbCB3YXJ0IGF0IHRoZSBtb21lbnQuIFRoZW4gaTkxNV9zY2hlZHVs
ZS5jIGlzCmp1c3QgREFHIG1haW50ZW5hbmNlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
