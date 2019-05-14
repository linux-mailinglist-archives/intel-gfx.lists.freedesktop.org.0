Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719DB1C7DA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 13:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130F38828E;
	Tue, 14 May 2019 11:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439BC8828E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 11:35:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16551288-1500050 for multiple; Tue, 14 May 2019 12:35:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
 <20190514110450.8449-1-chris@chris-wilson.co.uk>
 <5888c658-4b83-07c8-126f-7aeb342f6895@linux.intel.com>
In-Reply-To: <5888c658-4b83-07c8-126f-7aeb342f6895@linux.intel.com>
Message-ID: <155783370635.12558.1956615658240215602@skylake-alporthouse-com>
Date: Tue, 14 May 2019 12:35:06 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t v3] benchmarks/gem_wsim: Perturb
 static_vcs selection across clients
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNCAxMjozMDoxMCkKPiAKPiBPbiAxNC8w
NS8yMDE5IDEyOjA0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBVc2UgdGhlIGNsaWVudCBpZCB0
byBhbHRlcm5hdGUgdGhlIHN0YXRpY192Y3MgYmFsYW5jZXIgKC1iIGNvbnRleHQpCj4gPiBhY3Jv
c3MgY2xpZW50cyB3aXRoIHRoZSByb3VuZCByb2JpbiBmbGFnICgtUikgLSBvdGhlcndpc2UgYWxs
IGNsaWVudHMKPiA+IGVuZCB1cCBvbiB2Y3MwIGFuZCBkbyBub3QgbWF0Y2ggdGhlIGNvbnRleHQg
YmFsYW5jaW5nIGVtcGxveWVkIGJ5Cj4gPiBtZWRpYS1kcml2ZXIuCj4gPiAKPiA+IHYyOiBQdXQg
aXQgYmVoaW5kIHRoZSAtUiBmbGFnLgo+ID4gdjM6IERvbid0IHNraXAgLVIgZmxhZyBmb3IgLWIg
Y29udGV4dCBpbiBzY3JpcHRzL21lZGlhLWJlbmNoLnBsCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgYmVuY2htYXJr
cy9nZW1fd3NpbS5jICB8IDYgKysrKy0tCj4gPiAgIHNjcmlwdHMvbWVkaWEtYmVuY2gucGwgfCAy
ICstCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJr
cy9nZW1fd3NpbS5jCj4gPiBpbmRleCBhZmI5NjQ0ZGQuLjQ4NTY4Y2U0MCAxMDA2NDQKPiA+IC0t
LSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+ID4gKysrIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5j
Cj4gPiBAQCAtOTM5LDcgKzkzOSw3IEBAIGFsbG9jX3N0ZXBfYmF0Y2goc3RydWN0IHdvcmtsb2Fk
ICp3cmssIHN0cnVjdCB3X3N0ZXAgKncsIHVuc2lnbmVkIGludCBmbGFncykKPiA+ICAgc3RhdGlj
IHZvaWQKPiA+ICAgcHJlcGFyZV93b3JrbG9hZCh1bnNpZ25lZCBpbnQgaWQsIHN0cnVjdCB3b3Jr
bG9hZCAqd3JrLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gPiAgIHsKPiA+IC0gICAgIHVuc2lnbmVk
IGludCBjdHhfdmNzID0gMDsKPiA+ICsgICAgIHVuc2lnbmVkIGludCBjdHhfdmNzOwo+ID4gICAg
ICAgaW50IG1heF9jdHggPSAtMTsKPiA+ICAgICAgIHN0cnVjdCB3X3N0ZXAgKnc7Cj4gPiAgICAg
ICBpbnQgaTsKPiA+IEBAIC05NDgsOCArOTQ4LDEwIEBAIHByZXBhcmVfd29ya2xvYWQodW5zaWdu
ZWQgaW50IGlkLCBzdHJ1Y3Qgd29ya2xvYWQgKndyaywgdW5zaWduZWQgaW50IGZsYWdzKQo+ID4g
ICAgICAgd3JrLT5wcm5nID0gcmFuZCgpOwo+ID4gICAgICAgd3JrLT5ydW4gPSB0cnVlOwo+ID4g
ICAKPiA+ICsgICAgIGN0eF92Y3MgPSAgMDsKPiA+ICAgICAgIGlmIChmbGFncyAmIElOSVRWQ1NS
UikKPiA+IC0gICAgICAgICAgICAgd3JrLT52Y3NfcnIgPSBpZCAmIDE7Cj4gPiArICAgICAgICAg
ICAgIGN0eF92Y3MgPSBpZCAmIDE7Cj4gPiArICAgICB3cmstPnZjc19yciA9IGN0eF92Y3M7Cj4g
PiAgIAo+ID4gICAgICAgaWYgKGZsYWdzICYgR0xPQkFMX0JBTEFOQ0UpIHsKPiA+ICAgICAgICAg
ICAgICAgaW50IHJldCA9IHB0aHJlYWRfbXV0ZXhfaW5pdCgmd3JrLT5tdXRleCwgTlVMTCk7Cj4g
PiBkaWZmIC0tZ2l0IGEvc2NyaXB0cy9tZWRpYS1iZW5jaC5wbCBiL3NjcmlwdHMvbWVkaWEtYmVu
Y2gucGwKPiA+IGluZGV4IDA2NmI1NDJmOS4uZjFjZDU5YTI1IDEwMDc1NQo+ID4gLS0tIGEvc2Ny
aXB0cy9tZWRpYS1iZW5jaC5wbAo+ID4gKysrIGIvc2NyaXB0cy9tZWRpYS1iZW5jaC5wbAo+ID4g
QEAgLTUyLDcgKzUyLDcgQEAgbXkgQGJhbGFuY2VycyA9ICggJ3JyJywgJ3JhbmQnLCAncWQnLCAn
cWRyJywgJ3FkYXZnJywgJ3J0JywgJ3J0cicsICdydGF2ZycsCj4gPiAgICAgICAgICAgICAgICAg
J2NvbnRleHQnLCAnYnVzeScsICdidXN5LWF2ZycgKTsKPiA+ICAgbXkgJWJhbF9za2lwX0ggPSAo
ICdycicgPT4gMSwgJ3JhbmQnID0+IDEsICdjb250ZXh0JyA9PiAxLCAsICdidXN5JyA9PiAxLAo+
ID4gICAgICAgICAgICAgICAgICAnYnVzeS1hdmcnID0+IDEgKTsKPiA+IC1teSAlYmFsX3NraXBf
UiA9ICggJ2NvbnRleHQnID0+IDEgKTsKPiA+ICtteSAlYmFsX3NraXBfUiA9ICgpOwo+ID4gICAK
PiA+ICAgbXkgQHdvcmtsb2FkcyA9ICgKPiA+ICAgICAgICdtZWRpYV9sb2FkX2JhbGFuY2VfMTdp
Ny53c2ltJywKPiA+IAo+IAo+IFRoaXMgcHJvYmFibHkgbWVhbnMgSSB3YXMgdGhpbmtpbmcgLUcg
Y292ZXJzIHRoaXMgZm9yIC1iIGNvbnRleHQsIHdoaWNoIAo+IGl0IGRvZXMuIERpZmZlcmVuY2Ug
YmV0d2VlbiAtUiBhbmQgLUcgdGhlcmUgc2VlbXMgcHVyZWx5IGluIHdvcmRpbmcgCj4gc2luY2Ug
Y2xpZW50cyBhcmUgaW5pdGlhbGl6ZWQgc2VxdWVudGlhbGx5IGFuZCBpbiBkZXRlcm1pbmlzdGlj
IG9yZGVyLiAKPiBIbSBJIGd1ZXNzIGZvciBoZXRlcm9nZW5lb3VzIGNsaWVudHMgdGhleSB3b3Vs
ZCBiZSBkaWZmZXJlbnQuIE9rYXksIAo+IG1ha2VzIHNlbnNlIHRoZW4uCgpIbW0sIHJpZ2h0IHRo
ZXJlIGlzIGEgc3VidGxlIGRpZmZlcmVuY2UgYmV0d2VlbiBjb250ZXh0X3Zjc19yciBhbmQKY3R4
X3ZjcyBoZXJlLiBJZiBhIGNsaWVudCBjcmVhdGVzIGFuIG9kZCBudW1iZXIgb2YgY29udGV4dHMs
IGJ1dCBkb2Vzbid0CnVzZSBhbGwgdGhlIFZDUyBlbmdpbmVzLCBpdCBpcyBzdGlsbCBwb3NzaWJs
ZSBmb3IgLUcgdG8gZW5kIHVwIHdpdGggYWxsCmFjdGl2ZSB3b3JrbG9hZHMgb24gVkNTMCBhbmQg
LVIgYXZvaWRzIHRoYXQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
