Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27929F915D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD976E2DC;
	Tue, 12 Nov 2019 14:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4526E2DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:04:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19174209-1500050 for multiple; Tue, 12 Nov 2019 14:04:11 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191112090638.31692-1-chris@chris-wilson.co.uk>
 <5a7b2d59-2ede-3b09-dbc3-c575730a28a8@linux.intel.com>
In-Reply-To: <5a7b2d59-2ede-3b09-dbc3-c575730a28a8@linux.intel.com>
Message-ID: <157356744968.28106.5523493693138895354@skylake-alporthouse-com>
Date: Tue, 12 Nov 2019 14:04:09 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush context free work on cleanup
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xMiAxMzo1NTozNSkKPiAKPiBPbiAxMi8x
MS8yMDE5IDA5OjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaHJvdyBpbiBhIGZsdXNoX3dv
cmsoKSBhbmQgcmN1X2JhcnJpZXIoKSB0byBzcGVjaWZpY2FsbHkgZmx1c2ggdGhlCj4gPiBjb250
ZXh0IGNsZWFudXAgd29yay4KPiA+IAo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI0OAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gRml4ZXM6IGE0ZTdjY2RhYzM4
ZSAoImRybS9pOTE1OiBNb3ZlIGNvbnRleHQgbWFuYWdlbWVudCB1bmRlciBHRU0iKQo+IAo+ID8g
TWlnaHQgaGF2ZSBnb3R0ZW4gaXQgd3JvbmcuLiBvbmx5IGRpZCBhIHF1aWNrIGRpZy4KClNlZW1z
IHJlYXNvbmFibGUsIEkgd2FzIHRoaW5raW5nIHdpdGhvdXQgYW4gZXhwbGljaXQgZmx1c2ggd2Ug
YXJlIGF0IHRoZQptZXJjeSBvZiB0aGUgZmx1c2hfd29ya3F1ZXVlKCksIGhlbmNlIHdoeSB3ZSBo
YXZlIHNvIG1hbnkhIDopIEJ1dCB5ZXMsCnRoZSBzd2l0Y2ggZnJvbSBpOTE1LT53cSB0byBzeXN0
ZW1fd3EgZG9lcyBtZWFuIGEgbmV3IHJlcXVpcmVtZW50IGZvcgp0aGUgZ2xvYmFsIGZsdXNoIHdo
b3NlIG5hbWUgZXNjYXBlcyBtZSByaWdodCBub3cuCgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCAxICsKPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICB8IDEgKwo+ID4gICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMKPiA+IGluZGV4IDcyZDM4OWFmYTI4YS4uMTdmMzk1NjcyZTVlIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
Ywo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+
ID4gQEAgLTc3Niw2ICs3NzYsNyBAQCBpbnQgaTkxNV9nZW1faW5pdF9jb250ZXh0cyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+ICAgdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVsZWFz
ZV9fY29udGV4dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgIHsKPiA+ICAg
ICAgIGRlc3Ryb3lfa2VybmVsX2NvbnRleHQoJmk5MTUtPmtlcm5lbF9jb250ZXh0KTsKPiA+ICsg
ICAgIGZsdXNoX3dvcmsoJmk5MTUtPmdlbS5jb250ZXh0cy5mcmVlX3dvcmspOwo+ID4gICB9Cj4g
PiAgIAo+ID4gICBzdGF0aWMgaW50IGNvbnRleHRfaWRyX2NsZWFudXAoaW50IGlkLCB2b2lkICpw
LCB2b2lkICpkYXRhKQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKPiA+IGluZGV4IGI5NjEzZDA0NDM5My4uMWY2ODcwMGEyMzExIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gPiBAQCAtNDAyLDYgKzQwMiw3
IEBAIHZvaWQgaW50ZWxfZW5naW5lc19jbGVhbnVwKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gPiAg
ICAgICAgICAgICAgIGd0LT5lbmdpbmVbaWRdID0gTlVMTDsKPiA+ICAgICAgICAgICAgICAgZ3Qt
Pmk5MTUtPmVuZ2luZVtpZF0gPSBOVUxMOwo+ID4gICAgICAgfQo+ID4gKyAgICAgcmN1X2JhcnJp
ZXIoKTsKPiAKPiBXaHkgdGhpcz8KCkl0J3Mgc28gd2UgcGxheSBjYXRjaCB1cCB0aGUgUkNVIGZy
ZWVfd29yayBvZiB0aGUgcHBndHQgdGhhdCB3ZSB0cmlnZ2VyCmhlcmUgYW5kIHdlIG5lZWQgdG8g
YmUgY29uZmlkZW50IGhhcyBiZWVuIHF1ZXVlZCBiZWZvcmUgd2UgZG8gaXRzIGZpbmkuCgpJIHdh
cyBhY3Rpbmcgb24gYSBtZW1vcnkgb2YgYSBzaW1pbGFyIGRlYnVnb2JqZWN0IHNwbGF0LCBxdWl0
ZSBwb3NzaWJseQpvdmVyLXJlYWN0aW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
