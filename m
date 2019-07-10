Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622BC648EB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBBE6E0F6;
	Wed, 10 Jul 2019 15:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0134A6E0F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 15:03:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17201071-1500050 for multiple; Wed, 10 Jul 2019 16:03:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
 <8736je1ey0.fsf@gaia.fi.intel.com>
 <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
 <87imsaq84d.fsf@gaia.fi.intel.com>
 <156276934120.4055.6617596785630747488@skylake-alporthouse-com>
 <87ftneq6yq.fsf@gaia.fi.intel.com>
In-Reply-To: <87ftneq6yq.fsf@gaia.fi.intel.com>
Message-ID: <156277098644.4055.9478781514508583714@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 16:03:06 +0100
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE1OjUwOjM3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDctMTAgMTU6MjU6MzgpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IFF1b3RpbmcgTWlrYSBLdW9w
cGFsYSAoMjAxOS0wNy0xMCAwOToxNzoyNykKPiA+PiA+PiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+ID4+ID4+IAo+ID4+ID4+ID4gVGhpcyB3aWxsIGJl
IHVzZWZ1bCB0byBjb25zb2xpZGF0ZSByZWN1cnNpdmUgY29kZS4KPiA+PiA+PiA+Cj4gPj4gPj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+PiA+PiA+IC0tLQo+ID4+ID4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIHwgMyArKysKPiA+PiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
aCB8IDEgKwo+ID4+ID4+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPj4g
Pj4gPgo+ID4+ID4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+PiA+PiA+IGlu
ZGV4IGRhNGRiNzZjZTA1NC4uMmZjNjBlOGFjZDlhIDEwMDY0NAo+ID4+ID4+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+PiA+PiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4gPj4gPiBAQCAtMTUzNyw2ICsxNTM3LDgg
QEAgc3RhdGljIHZvaWQgcHBndHRfaW5pdChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQsIHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCj4gPj4gPj4gPiAgICAgICBwcGd0dC0+dm0udm1hX29wcy51bmJpbmRf
dm1hICA9IHBwZ3R0X3VuYmluZF92bWE7Cj4gPj4gPj4gPiAgICAgICBwcGd0dC0+dm0udm1hX29w
cy5zZXRfcGFnZXMgICA9IHBwZ3R0X3NldF9wYWdlczsKPiA+PiA+PiA+ICAgICAgIHBwZ3R0LT52
bS52bWFfb3BzLmNsZWFyX3BhZ2VzID0gY2xlYXJfcGFnZXM7Cj4gPj4gPj4gPiArCj4gPj4gPj4g
PiArICAgICBwcGd0dC0+dm0udG9wID0gaTkxNV92bV9pc180bHZsKCZwcGd0dC0+dm0pID8gMyA6
IDI7Cj4gPj4gPj4gCj4gPj4gPj4gUGVyaGFwcyBpdCBiZWNvbWVzIGV2aWRlbnQgbGF0ZXIgaW4g
dGhlIHNlcmllcyB3aHkgdG9wIGFuZAo+ID4+ID4+IG5vdCBsZXZlbCwgc28gdGhlc2Ugd291bGQg
YmUgNCBhbmQgMyBoZXJlLgo+ID4+ID4KPiA+PiA+IEJlY2F1c2Ugd2UgdXNlIHRvcCBhbmQgbm90
IGxldmVsIDopCj4gPj4gCj4gPj4gWW91IG1ha2UgbWUgc3Vic3RyYWN0IG9uZSB3aXRoIG15IGJp
b2xvZ2ljYWwgcHJvY2Vzc29yLgo+ID4+IEl0IGlzIGhhcmQuCj4gPj4gCj4gPj4gUGxlYXNlIGRv
IHJlbWFrZSB0aGUgaTkxNV92bV9pc180bHZsKCkgYW5kIGluY2x1ZGUuCj4gPgo+ID4gSSdtIHRl
bXB0ZWQgdG8gcHV0IHRoZSBndHRfZGVwdGggaW4gdGhlIGRldmljZSBpbmZvLgo+ID4KPiA+IEhv
dyBkbyB5b3Ugd2FudCBpOTE1X3ZtX2lzXzRsdmwoKSByZW1hZGU/IFRoZSBzcGVjaWFsIGNhc2Ug
Z29pbmcKPiA+IGZvcndhcmQgaXMgcmVhbGx5IGlzXzNsdmw/Cj4gCj4gTm8gc3Ryb25nIGZlZWxp
bmdzIGhlcmUuIEhvdyBhYm91dCBpOTE1X3ZtX2dldF9sdmwodm0pCj4geyByZXR1cm4gdG9wICsg
MTsgfSA/CgpXaG8ncyBnb2luZyB0byBiZSBjYWxsaW5nIGdldF9sdmwoKSB0aG91Z2g/IFRoZSBv
bmUgdGltZSB3aGVyZSBpdCBtaWdodApiZSB1c2VmdWwsIHdlIGp1c3QgdXNlICI8PSB0b3AiIGlu
c3RlYWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
