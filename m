Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5D7B7A6C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 15:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3DF6F72B;
	Thu, 19 Sep 2019 13:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D8C6F733
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 13:26:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18546199-1500050 for multiple; Thu, 19 Sep 2019 14:26:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190919111912.21631-1-chris@chris-wilson.co.uk>
 <5202f44e-a251-f4e0-f27c-1f96fab24078@linux.intel.com>
In-Reply-To: <5202f44e-a251-f4e0-f27c-1f96fab24078@linux.intel.com>
Message-ID: <156889956418.31102.4110265390892262636@skylake-alporthouse-com>
Date: Thu, 19 Sep 2019 14:26:04 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Mark i915_request.timeline
 as a volatile, rcu pointer
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xOSAxNDowMjoxOSkKPiAKPiBPbiAxOS8w
OS8yMDE5IDEyOjE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArc3RhdGljIHN0cnVjdCBpbnRl
bF90aW1lbGluZSAqZ2V0X3RpbWVsaW5lKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ID4gK3sK
PiA+ICsgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4gPiArCj4gPiArICAgICAvKgo+
ID4gKyAgICAgICogRXZlbiB0aG91Z2ggd2UgYXJlIGhvbGRpbmcgdGhlIGVuZ2luZS0+YWN0aXZl
LmxvY2sgaGVyZSwgdGhlcmUKPiA+ICsgICAgICAqIGlzIG5vIGNvbnRyb2wgb3ZlciB0aGUgc3Vi
bWlzc2lvbiBxdWV1ZSBwZXItc2UgYW5kIHdlIGFyZQo+ID4gKyAgICAgICogaW5zcGVjdGluZyB0
aGUgYWN0aXZlIHN0YXRlIGF0IGEgcmFuZG9tIHBvaW50IGluIHRpbWUsIHdpdGggYW4KPiA+ICsg
ICAgICAqIHVua25vd24gcXVldWUuIFBsYXkgc2FmZSBhbmQgbWFrZSBzdXJlIHRoZSB0aW1lbGlu
ZSByZW1haW5zIHZhbGlkLgo+ID4gKyAgICAgICogKE9ubHkgYmVpbmcgdXNlZCBmb3IgcHJldHR5
IHByaW50aW5nLCBvbmUgZXh0cmEga3JlZiBzaG91bGRuJ3QKPiA+ICsgICAgICAqIGNhdXNlIGEg
Y2FtZWwgc3RhbXBlZGUhKQo+ID4gKyAgICAgICovCj4gPiArICAgICByY3VfcmVhZF9sb2NrKCk7
Cj4gPiArICAgICB0bCA9IHJjdV9kZXJlZmVyZW5jZShycS0+dGltZWxpbmUpOwo+ID4gKyAgICAg
aWYgKCFrcmVmX2dldF91bmxlc3NfemVybygmdGwtPmtyZWYpKQo+ID4gKyAgICAgICAgICAgICB0
bCA9IE5VTEw7Cj4gPiArICAgICByY3VfcmVhZF91bmxvY2soKTsKPiAKPiBIb3cgY2FuIGl0IGJl
IE5VTEwgdW5kZXIgdGhlIGFjdGl2ZSBsb2NrPyBJc24ndCB0aGF0IHRoZSBzYW1lIGFzc2VydGlv
biAKPiBmcm9tIGk5MTVfdGltZWxpbmVfZ2V0X2FjdGl2ZS4KCk5vdCBOVUxMLCBidXQgcmV0aXJl
ZC4gVGhlIGRpZmZlcmVuY2UgaXMgdGhhdCBkdXJpbmcgc3VibWlzc2lvbiB3ZSBrbm93CnRoYXQg
dGhpcyByZXF1ZXN0J3MgY29udGV4dC90aW1lbGluZSBtdXN0IGJlIGN1cnJlbnRseSBwaW5uZWQg
dW50aWwKYSBzdWJzZXF1ZW50IHJlcXVlc3QgKGNvbnRhaW5pbmcgdGhlIGlkbGUtYmFycmllcnMp
IGlzIHN1Ym1pdHRlZC4gVGhlCmRhbmdlciBJIHdvcnJ5IGFib3V0IGhlcmUgaXMgdGhhdCBzdWJz
ZXF1ZW50IGlkbGUgcmVxdWVzdCBtYXkgYmUgYWxyZWFkeQpzdWJtaXR0ZWQgYW5kIHNpbmNlIHRo
ZSBxdWV1ZWQgcmVxdWVzdHMgbWF5ICphbHJlYWR5KiBoYXZlIGJlZW4gcmV0aXJlZCwKdGhlIHRp
bWVsaW5lIG1heSBiZSB1bnBpbm5lZCBhbmQgaW5kZWVkIGRyb3BwZWQgaXQncyBsYXN0IHJlZmVy
ZW5jZS4KCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
Y29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4g
PiBpbmRleCA5ZDFlYTI2YzdhMmQuLjRjZTFlMjU0MzNkMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4gPiBAQCAtMTQsMjIgKzE0LDI4IEBA
Cj4gPiAgIAo+ID4gICBzdGF0aWMgaW50IHJlcXVlc3Rfc3luYyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKPiA+ICAgewo+ID4gKyAgICAgc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCA9IGk5MTVf
cmVxdWVzdF90aW1lbGluZShycSk7Cj4gPiAgICAgICBsb25nIHRpbWVvdXQ7Cj4gPiAgICAgICBp
bnQgZXJyID0gMDsKPiA+ICAgCj4gPiArICAgICBpbnRlbF90aW1lbGluZV9nZXQodGwpOwo+ID4g
ICAgICAgaTkxNV9yZXF1ZXN0X2dldChycSk7Cj4gPiAgIAo+ID4gLSAgICAgaTkxNV9yZXF1ZXN0
X2FkZChycSk7Cj4gPiArICAgICAvKiBPcGVuY29kZSBpOTE1X3JlcXVlc3RfYWRkKCkgc28gd2Ug
Y2FuIGtlZXAgdGhlIHRpbWVsaW5lIGxvY2tlZC4gKi8KPiA+ICsgICAgIF9faTkxNV9yZXF1ZXN0
X2NvbW1pdChycSk7Cj4gPiArICAgICBfX2k5MTVfcmVxdWVzdF9xdWV1ZShycSwgTlVMTCk7Cj4g
Cj4gTG9va2luZyBhdCBpOTE1X3JlcXVlc3RfYWRkIGhlcmUgd2UgYWxzbyBoYXZlIHRhc2tsZXQg
a2lja2luZyBidXQgSSAKPiBndWVzcyBmb3Igc2VsZnRlc3RzIGl0J3Mgbm90IGltcG9ydGFudC4K
Cll1cCwgYW5kIGltbWVkaWF0ZWx5IGJlZm9yZSBhIHdhaXQsIHRoYXQgdGFza2xldCBzaG91bGQg
YmUgc2NoZWR1bGVkCm5hdHVyYWxseSBpbiB0aGUgbmVhciBmdXR1cmUuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
