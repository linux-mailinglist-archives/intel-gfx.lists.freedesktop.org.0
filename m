Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7AB10FDDE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 13:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8778B6E4B0;
	Tue,  3 Dec 2019 12:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196DE6E4B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 12:41:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19442017-1500050 for multiple; Tue, 03 Dec 2019 12:41:40 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191203123224.GB1254@intel.intel>
References: <20191203085312.3963-1-andi.shyti@intel.com>
 <157537088434.7230.17372944931773845755@skylake-alporthouse-com>
 <20191203115449.GA1254@intel.intel> <20191203123224.GB1254@intel.intel>
Message-ID: <157537690076.7230.1532928613484253382@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 03 Dec 2019 12:41:40 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/selftests: add basic selftests
 for rc6
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEyLTAzIDEyOjMyOjI0KQo+ID4gPiA+ICB9Cj4gPiA+
ID4gKwo+ID4gPiA+ICtzdGF0aWMgYm9vbCB0ZXN0X3JjNihzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYs
IGJvb2wgZW5hYmxlZCkKPiA+ID4gCj4gPiA+IEkga2VlcCBnZXR0aW5nIGNvbmZ1c2VkIGFzIHRv
IHRoZSBtZWFuaW5nIG9mIHRoZSByZXN1bHQsIGZvcmdldHRpbmcgaXQKPiA+ID4gY2hhbmdlcyBi
YXNlZCBvbiBib29sIGVuYWJsZWQuCj4gPiA+IAo+ID4gPiBNYXliZSB1MzIgbWVhc3VyZV9yYzYo
KSBhbmQgbGVhdmUgdGhlIHBhc3MvZmFpbCB0byB0aGUgY2FsbGVyPwo+IAo+IHRoaW5raW5nIGEg
Yml0IGJldHRlci4uLiB3aGF0IGV4YWN0bHkgd291bGQgSSByZXR1cm4/IHdoYXQgd291bGQKPiBt
ZWFzdXJlX3JjNiBtZWFzdXJlPyBUaGUgInNsZWVwaW5nIiBmdW5jdGlvbiBpcyBub3QgcHJlY2lz
ZSBieQo+IGRlZmluaXRpb24gKGFzIHlvdSBwb2ludGVkIG91dCBhcyB3ZWxsKSBhbmQgaXQgd291
bGQgYmUgb3V0IGZyb20KPiB0aGUgc2NvcGUgb2YgdGhpcyBmdW5jdGlvbiB0byBwcm92aWRlIGFu
IGV4YWN0IG1lYXN1cmUgb2YgdGhlCj4gaW50ZXJ2YWwgY291bnQuCj4gCj4gVGhlIHdheSBJIHdv
dWxkIHJhdGhlciBkbyBpdCB3b3VsZCBiZToKPiAKPiB1MzIgbWVhc3VyZV9yYzYodTMyIHRpbWVf
aW5fbXMpCj4gewo+ICAgICAgICAgLi4uCj4gfQo+IAo+IGJvb2wgdGVzdF9yYzYoYm9vbCBlbmFi
bGUpCj4gewo+ICAgICAgICAgLi4uCj4gICAgICAgICByZXR1cm4gZW5hYmxlIF4gZG9lc19yYzZf
d29yaygyICogaW50ZXJ2YWwpOwo+IH0KPiAKPiB3aGVyZSBtZWFzdXJlX3JjNiBwcm92aWRlcyB0
aGUgY291bnRlciBpbiBhIG1vcmUgcHJlY2lzZSB0aW1lCj4gcmFuZ2UgYW5kIGNhbiBiZSBhbHNv
IHVzZWQgZm9yIG90aGVyIHRlc3RzLCBsaWtlIGh5c3RlcmVzaXMgb3IKPiBkdXR5IGN5Y2xlIHRl
c3RzIHdoZXJlIEkgZ3Vlc3MgdGltZSBtZWFzdXJlbWVudCBpcyBtb3JlIGNyaXRpY2FsLgoKVGhh
dCdzIGhvdyBJIHRob3VnaHQgaXQgd291bGQgbG9vayBzaW5jZSBmb3IgdGhlIGZpcnN0IHRlc3Qs
CnRlc3RfcmM2KHJjNi0+ZW5hYmxlZCkgbWFrZXMgc2Vuc2UuIEJ1dCBJIHdvdWxkIGxpa2UgdG8g
a25vdyB0aGUgdmFsdWVzCm9mIEVJLCBUSFJFU0hPTEQsIHNsZXB0IGFuZCBtZWFzdXJlZCByYzYg
dG8gdW5kZXJzdGFuZCBmYWlsdXJlcyBiZXR0ZXIuCgpBbmQgd2hlbiB3ZSBkbyBnZXQgYmV0dGVy
IHVuZGVyc3RhbmRpbmcsIHRoZSBuZXh0IHdhdmUgb2YgdGVzdHMgSSBleHBlY3QKd2lsbCBiZSBt
b3JlIHRoYW4gc2ltcGxlIGJvb2xlYW5zLCBidXQgZGlkIHdlIGdldCB4IHJjNiBjeWNsZXMuIChU
aGF0CmRlcGVuZHMgb24gbXVjaCB3ZSBrZWVwIHNjcmF0Y2hpbmcgYXQgdGhlIHJjNiBwb3dlcnNh
dmluZyBzdXJmYWNlIDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
