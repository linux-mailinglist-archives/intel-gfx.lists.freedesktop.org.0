Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B7AF917C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBBC6E9F4;
	Tue, 12 Nov 2019 14:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2FF6E9D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:06:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19174246-1500050 for multiple; Tue, 12 Nov 2019 14:06:46 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191111120957.17732-1-chris@chris-wilson.co.uk>
 <87sgmt42nn.fsf@gaia.fi.intel.com>
In-Reply-To: <87sgmt42nn.fsf@gaia.fi.intel.com>
Message-ID: <157356760461.28106.8816403440863489823@skylake-alporthouse-com>
Date: Tue, 12 Nov 2019 14:06:44 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Try an extra flush on the
 Haswell blitter
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEyIDEzOjU4OjM2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBPbiBnZW43LCBpbmNs
dWRpbmcgSGFzd2VsbCwgdGhlIE1JX0ZMVVNIX0RXIGNvbW1hbmQgaXMgbm90IHN5bmNocm9ub3Vz
Cj4gPiB3aXRoIHRoZSBjb21tYW5kIHN0cmVhbWVyIG5vciBpcyB0aGVyZSBhbiBvcHRpb24gdG8g
bWFrZSBpdCBzby4gVG8gaGlkZQo+ID4gdGhpcyB3ZSBhZGQgYSBsYXJnZSBkZWxheSBvbiB0aGUg
Q1Mgc28gdGhhdCB0aGUgYnJlYWRjcnVtYiBzaG91bGQgYWx3YXlzCj4gPiBiZSB2aXNpYmxlIGJl
Zm9yZSB0aGUgaW50ZXJydXB0LiBIb3dldmVyLCB0aGF0IGRvZXMgbm90IHNlZW0gdG8gYmUKPiA+
IGVub3VnaCB0byBlbnN1cmUgdGhlIG1lbW9yeSBpcyBhY3R1YWxseSBjb2hlcmVudCB3aXRoIHRo
ZSByZWFkIG9mIHRoZQo+ID4gYnJlYWRjcnVtYi4gVGhlIGJyZWFkY3J1bWIgdXBkYXRlIGlzIGEg
cG9zdC1zeW5jIG9wLi4uIFRocm93IGluIGEKPiA+IHByZWxpbWluYXJ5IE1JX0ZMVVNIX0RXIGJl
Zm9yZSB0aGUgYnJlYWRjcnVtYiB1cGRhdGUgaW4gdGhlIGhvcGUgdGhhdAo+ID4gaGVscHMuCj4g
Pgo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMjE0Nwo+IAo+IElmIHdlIGFyZSBub3Qgc3VyZSwgUmVmZXJlbmNlcwoKRWl0aGVyIHdh
eSwgSSdtIGNsb3NpbmcgdGhlIGJ1ZyA6KQoKPiA+IFRlc3RjYXNlOiBpZ3QvaTkxNV9zZWxmdGVz
dC9saXZlX2JsdAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
aW5nX3N1Ym1pc3Npb24uYyB8IDUgKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKPiA+IGluZGV4IGE0N2Q1YTdjMzJjOS4uZmMyOWRm
NzEyODEwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmlu
Z19zdWJtaXNzaW9uLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jp
bmdfc3VibWlzc2lvbi5jCj4gPiBAQCAtNDU0LDYgKzQ1NCwxMCBAQCBzdGF0aWMgdTMyICpnZW43
X3hjc19lbWl0X2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiAqY3MpCj4g
PiAgICAgICBHRU1fQlVHX09OKGk5MTVfcmVxdWVzdF9hY3RpdmVfdGltZWxpbmUocnEpLT5od3Nw
X2dndHQgIT0gcnEtPmVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKTsKPiA+ICAgICAgIEdFTV9CVUdf
T04ob2Zmc2V0X2luX3BhZ2UoaTkxNV9yZXF1ZXN0X2FjdGl2ZV90aW1lbGluZShycSktPmh3c3Bf
b2Zmc2V0KSAhPSBJOTE1X0dFTV9IV1NfU0VRTk9fQUREUik7Cj4gPiAgCj4gPiArICAgICAqY3Mr
KyA9IE1JX0ZMVVNIX0RXOwo+ID4gKyAgICAgKmNzKysgPSAwOwo+ID4gKyAgICAgKmNzKysgPSAw
Owo+IAo+IEkgc2VlIHRoaXMgYXMgd21iIHdydCBzZXFubyB3cml0ZS4KPiAKPiBNYXNzaXZlIGhh
bW1lciB3b3VsZCBiZSB0byBpbmNsdWRlIHRpbWVzdGFtcCB3cml0ZSBpbiBoZXJlIHdpdGggdGxi
Cj4gZmx1c2g/CgpJJ20gcHJldHR5IHN1cmUgaXQncyBtZWFudCB0byBiZSBhIHBvc3Qtc3luYyB3
cml0ZSBvcC4gSG93ZXZlciwgdGhlCmV2aWRlbmNlIEkgdGhpbmsgcG9pbnRzIHRvd2FyZHMgdGhp
cyBmbHVzaCBiZWluZyBvcmRlcmVkIGluY29ycmVjdCB3aXRoCnRoZSBicmVhZGNydW1iIHdyaXRl
LCBzbyBhbnl0aGluZyBnb2VzLgogCj4gQnV0IG9uZSBjYW4gYWx3YXlzIGhvcGUuCgpZZWFoLCBz
bWFsbCBjaGFuZ2VzIHVudGlsIHdlIGNhbiBkZWNsYXJlIHZpY3RvcnkgdGhlbiBnbyBiYWNrIHRv
IHNsZWVwLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
