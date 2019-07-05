Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB0560663
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 15:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E186E4A0;
	Fri,  5 Jul 2019 13:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE266E4A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 13:14:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17143345-1500050 for multiple; Fri, 05 Jul 2019 14:14:27 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3e0cc33a-e03e-ec97-4ff0-d1c892549cc1@intel.com>
References: <20190705123057.19346-1-chris@chris-wilson.co.uk>
 <0ff02900-acdb-12a2-84d4-8df69e2e08cf@intel.com>
 <156233129697.19568.10942173619589658148@skylake-alporthouse-com>
 <3e0cc33a-e03e-ec97-4ff0-d1c892549cc1@intel.com>
Message-ID: <156233246533.19568.14738338244075284987@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 05 Jul 2019 14:14:25 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/oa: Reconfigure contexts on the fly
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wNSAxNDowNjoyNSkKPiBPbiAwNS8w
Ny8yMDE5IDE1OjU0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA3LTA1IDEzOjQyOjUxKQo+ID4+IFdvdyBuaWNlLiBJIGRpZG4ndCBoYXZl
IHRoZSBjb3VyYWdlIHRvIGFjdHVhbGx5IHdyaXRlIGl0LCBrbm93aW5nIGhvdwo+ID4+IGVhc3kg
aXQgY291bGQgYmUgdG8gc2NyZXcgYW4gb2Zmc2V0IGFuZCB3cml0ZSBhdCByYW5kb20gaW4gR0dU
VC4uLgo+ID4+Cj4gPj4gSSBvbmx5IGhhdmUgb25lIGNvbmNlcm4gYmVsb3cuCj4gPj4KPiA+PiBU
aGFua3MgYSBsb3QsCj4gPj4KPiA+PiAtTGlvbmVsCj4gPj4KPiA+PiBPbiAwNS8wNy8yMDE5IDE1
OjMwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4+ICAgICAgICBDVFhfUkVHKHJlZ19zdGF0ZSwK
PiA+Pj4gQEAgLTE2OTIsNiArMTY5MywxNTAgQEAgZ2VuOF91cGRhdGVfcmVnX3N0YXRlX3VubG9j
a2VkKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiA+Pj4gICAgICAgICAgICAgICAgaW50ZWxf
c3NldV9tYWtlX3JwY3MoaTkxNSwgJmNlLT5zc2V1KSk7Cj4gPj4+ICAgIH0KPiA+Pj4gICAgCj4g
Pj4+ICtzdHJ1Y3QgZmxleCB7Cj4gPj4+ICsgICAgIGk5MTVfcmVnX3QgcmVnOwo+ID4+PiArICAg
ICB1MzIgb2Zmc2V0Owo+ID4+PiArICAgICB1MzIgdmFsdWU7Cj4gPj4+ICt9Owo+ID4+PiArCj4g
Pj4+ICtzdGF0aWMgaW50Cj4gPj4+ICtnZW44X3N0b3JlX2ZsZXgoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCj4gPj4+ICsgICAgICAgICAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ID4+
PiArICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBmbGV4ICpmbGV4LCB1bnNpZ25lZCBpbnQgY291
bnQpCj4gPj4+ICt7Cj4gPj4+ICsgICAgIHUzMiBvZmZzZXQ7Cj4gPj4+ICsgICAgIHUzMiAqY3M7
Cj4gPj4+ICsKPiA+Pj4gKyAgICAgY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA0ICogY291bnQp
Owo+ID4+PiArICAgICBpZiAoSVNfRVJSKGNzKSkKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm4g
UFRSX0VSUihjcyk7Cj4gPj4KPiA+PiBJcyB0aGUgcmlnaHQgb2YgdGhlIGtlcm5lbCBjb250ZXh0
IGxhcmdlIGVub3VnaCB0byBob2xkIHRoZSBNSV9TRElzIGZvcgo+ID4+IGFsbCB0aGUgY29udGV4
dHM/Cj4gPiBBdCB0aGUgbW9tZW50IHdlIGFyZSB1c2luZyA5IHJlZ2lzdGVycywgYWRkIGluIHNh
eSAxMjggYnl0ZXMgdG9wcyBmb3IKPiA+IHRoZSByZXF1ZXN0IG92ZXJoZWFkLCB0aGF0J3MgPDMw
MCBieXRlcy4gVGhlIGtlcm5lbCBjb250ZXh0IHVzZXMgNGsKPiA+IHJpbmdzLCBzbyBlbm91Z2gg
Zm9yIGEgZmV3IHVwZGF0ZXMgYmVmb3JlIHdlIGhhdmUgdG8gZmx1c2guIFdlIG1heSBoYXZlCj4g
PiB0byB3YWl0IGZvciBleHRlcm5hbCByaW5ncyB0byBpZGxlIGFuZCBiZSBpbnRlcnJ1cHQgLS0g
YnV0IHRoYXQncyB0aGUKPiA+IHNhbWUgYXMgYmVmb3JlLCBpbmNsdWRpbmcgdGhlIGNoYW5jZSB0
aGF0IHdlIG1heSBiZSBpbnRlcnJ1cHRlZCBpbiB0aGUKPiA+IG1pZGRsZSBvZiBjb252ZXJzaW9u
Lgo+ID4KPiA+IFRoZSB3b3JzdCBjYXNlIGlzIHRoYXQgd2Ugb3ZlcnJ1biB0aGUgcmluZyBhbmQg
d2Ugc2hvdWxkIGdldCBhIGp1aWN5Cj4gPiB3YXJuaW5nIChHRU1fQlVHX09OIG9yIC1FTk9TUEMp
IGluIHRoYXQgY2FzZS4gV2UgY2FuIGluY3JlYXNlIHRoZQo+ID4ga2VybmVsX2NvbnRleHQgcmlu
ZyBpZiB0aGF0J3MgYW4gaXNzdWUgb3IganVzdCBmYWxsYmFjayB0byBzdWJhbGxvY2F0aW5nCj4g
PiBhIGJhdGNoYnVmZmVyIGZvciB0aGUgdXBkYXRlcy4KPiAKPiAKPiBBaCwgdGhhbmtzLiBJIGRp
ZG4ndCBub3RpY2UgaXQgd2FzIG9uZSByZXF1ZXN0IHBlciBjb250ZXh0IHRvIHJlY29uZmlndXJl
Lgo+IAo+IFN0aWxsIEkgd291bGRuJ3Qgd2FudCB0byBoYXZlIHRoaXMgZmFpbCBzb21ld2hhdCBy
YW5kb21seSBiZWNhdXNlIAo+IHNvbWV0aGluZyBlbHNlIHN0YXllZCBvbiB0aGUgSFcganVzdCBh
IGJpdCB0b28gbG9uZy4KClNhbWUgcHJvYmxlbSB3ZSBoYXZlIG5vdywgc2luY2UgdGhlIHdhaXQt
Zm9yLWlkbGUgbWF5IHJhbmRvbWx5IGJlCmludGVycnVwdGVkIChhcyBtYXkgdGhlIG1hcHBpbmcg
b2YgdGhlIGNvbnRleHQgaW1hZ2VzKS4KCj4gTWF5YmUgY2hlY2tpbmcgdGhlIGF2YWlsYWJsZSBz
cGFjZSBpbiB0aGUgcmluZyBpbiAKPiBnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoKSBhbmQg
d2FpdCBvbiBsYXN0X3JlcXVlc3QgaWYgdGhlcmUgaXNuJ3QgCj4gZW5vdWdoPwoKVGhlIHdhaXQg
aXMgYXV0b21hdGljIGJ5IHZpcnR1ZSBvZiBpbnRlbF9yaW5nX2JlZ2luLiBUaGUgZXJyb3IgSSB3
YXMKYWxsdWRpbmcgdG8gYmVmb3JlIGlzIHRoYXQgaWYgd2UgdHJ5IGFuZCBjcmVhdGUgYSBwYWNr
ZXQKKGludGVsX3JpbmdfYmVnaW4pIHRvbyBsYXJnZSwgaXQgd2lsbCBmYWlsIGFuIGFzc2VydC4g
VGhlIG51bWJlciBvZgpyZWdpc3RlcnMgd2UgbmVlZCB0byB3cml0ZSBzaG91bGQgaGF2ZSBhbiB1
cHBlciBib3VuZCwgd2Ugc2hvdWxkIGJlIGFibGUKdG8gc3BvdCBhIHByb2JsZW0gYmVmb3JlIGl0
IGhhcHBlbnMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
