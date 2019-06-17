Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 656D448549
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9118920F;
	Mon, 17 Jun 2019 14:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49388920F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 14:26:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16928376-1500050 for multiple; Mon, 17 Jun 2019 15:26:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190617100917.13110-1-chris@chris-wilson.co.uk>
 <85dae10c-428f-eabf-93ca-4eded1253f12@linux.intel.com>
In-Reply-To: <85dae10c-428f-eabf-93ca-4eded1253f12@linux.intel.com>
Message-ID: <156078157320.24545.11017348624396242804@skylake-alporthouse-com>
Date: Mon, 17 Jun 2019 15:26:13 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Reduce verbosity on log
 overflows
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNyAxNToyMTo1NCkKPiAKPiBPbiAxNy8w
Ni8yMDE5IDExOjA5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJZiB0aGUgdXNlciBpcyBjbGVh
cmluZyB0aGUgbG9nIGJ1ZmZlciB0b28gc2xvd2x5LCB3ZSBvdmVyZmxvdy4gQXMgdGhpcwo+ID4g
aXMgYW4gZXhwZWN0ZWQgY29uZGl0aW9uLCBhbmQgdGhlIGRyaXZlciB0cmllcyB0byBoYW5kbGUg
aXQsIHJlZHVjZSB0aGUKPiA+IGVycm9yIG1lc3NhZ2UgZG93biB0byBhIG5vdGljZS4KPiA+IAo+
ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMDgxNwo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgfCA0ICsr
Ky0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5jCj4gPiBpbmRleCBiZjE0NDY2
Mjk3MDMuLmUzYjgzZWNiOTBiNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d1Y19sb2cuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2xvZy5jCj4gPiBAQCAtMjA4LDcgKzIwOCw5IEBAIHN0YXRpYyBib29sIGd1Y19jaGVja19sb2df
YnVmX292ZXJmbG93KHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2csCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgLyogYnVmZmVyX2Z1bGxfY250IGlzIGEgNCBiaXQgY291bnRlciAqLwo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIGxvZy0+c3RhdHNbdHlwZV0uc2FtcGxlZF9vdmVyZmxvdyArPSAx
NjsKPiA+ICAgICAgICAgICAgICAgfQo+ID4gLSAgICAgICAgICAgICBEUk1fRVJST1JfUkFURUxJ
TUlURUQoIkd1QyBsb2cgYnVmZmVyIG92ZXJmbG93XG4iKTsKPiA+ICsKPiA+ICsgICAgICAgICAg
ICAgZGV2X25vdGljZV9yYXRlbGltaXRlZChndWNfdG9faTkxNShsb2dfdG9fZ3VjKGxvZykpLT5k
cm0uZGV2LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJHdUMgbG9n
IGJ1ZmZlciBvdmVyZmxvd1xuIik7Cj4gPiAgICAgICB9Cj4gPiAgIAo+ID4gICAgICAgcmV0dXJu
IG92ZXJmbG93Owo+ID4gCj4gCj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gCj4gTWF5YmUgd2UgY291bGQgZXZlbiBnbyBkZWJ1ZywgYWx0
aG91Z2ggSSBub3Qgc3VyZSBpZiB1c2Vyc3BhY2UgaXMgCj4gZXhwZWN0ZWQgdG8gbG9vayBhdCBk
bWVzZyB0byBkZXRlY3Qgb3ZlcmZsb3dzIG9yIGlmIHRoZSB0aGluZyBoYXMgc29tZSAKPiBtYXJr
ZXIgaXQgd3JpdGVzIGludG8gdGhlIGZpbGUgaW4gdGhhdCBjYXNlLiBJIGRvbid0IHNlZSBpdCBz
byB0aGF0J3MgCj4gcHJvYmFibHkgYSBzbGlnaHQgZmxhdy4KCkl0IHdhc24ndCBjb21wbGV0ZWx5
IGNsZWFyIHRvIG1lIGhvdyB3ZWxsIHVzZXJzcGFjZSBkaWQgaGFuZGxlIHRoaXMgKEkKaGF2ZW4n
dCBydW4gdGhlIGRlYnVnIHRvb2xzIG15c2VsZikgc28gc2V0dGxlZCBmb3IgbGVhdmluZyBhIGhp
bnQKdmlzaWJsZSBpbiBkbWVzZy4gSWRlYWxseSwgaWYgd2UgYXJlIGV4cGVjdGluZyB1c2Vyc3Bh
Y2UgdG8gYmUgaGFuZGxpbmcKdGhlIHJpbmdidWYgaW50ZXJmYWNlLCBpdCBzaG91bGQgYmUgY29w
aW5nIHdpdGggdGhlIG92ZXJmbG93cyB0aGVuIHRoaXMKaXMganVzdCBub2lzZSBhbmQgY2FuIGJl
IHJlbW92ZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
