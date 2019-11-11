Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0E8F7993
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 18:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 546526E277;
	Mon, 11 Nov 2019 17:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26EE26E277
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 17:16:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19162958-1500050 for multiple; Mon, 11 Nov 2019 17:16:32 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOSyh0x9r78ap1iG-EENXyS3GBGSY9pQ9YWNOHc7v66=w@mail.gmail.com>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-15-chris@chris-wilson.co.uk>
 <CAM0jSHOSyh0x9r78ap1iG-EENXyS3GBGSY9pQ9YWNOHc7v66=w@mail.gmail.com>
Message-ID: <157349258982.28106.7818839510642728062@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 17:16:29 +0000
Subject: Re: [Intel-gfx] [PATCH 15/25] drm/i915/selftests: Perform some
 basic cycle counting of MI ops
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Anna Karas <anna.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTEtMTEgMTc6MTA6MzcpCj4gT24gU3VuLCAxMCBO
b3YgMjAxOSBhdCAxODo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4gK3N0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9lbXB0eV9iYXRjaChz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqOwo+ID4gKyAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiA+
ICsgICAgICAgdTMyICpjczsKPiA+ICsgICAgICAgaW50IGVycjsKPiA+ICsKPiA+ICsgICAgICAg
b2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChjZS0+ZW5naW5lLT5pOTE1LCBQ
QUdFX1NJWkUpOwo+ID4gKyAgICAgICBpZiAoSVNfRVJSKG9iaikpCj4gPiArICAgICAgICAgICAg
ICAgcmV0dXJuIEVSUl9DQVNUKG9iaik7Cj4gPiArCj4gPiArICAgICAgIGNzID0gaTkxNV9nZW1f
b2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7Cj4gPiArICAgICAgIGlmIChJU19FUlIo
Y3MpKSB7Cj4gPiArICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwo+ID4g
KyAgICAgICAgICAgICAgIHJldHVybiBFUlJfQ0FTVChjcyk7Cj4gPiArICAgICAgIH0KPiA+ICsK
PiA+ICsgICAgICAgY3NbMF0gPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwo+ID4gKwo+ID4gKyAgICAg
ICBpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9iaik7Cj4gPiArICAgICAgIGk5MTVfZ2VtX29i
amVjdF91bnBpbl9tYXAob2JqKTsKPiA+ICsKPiA+ICsgICAgICAgdm1hID0gaTkxNV92bWFfaW5z
dGFuY2Uob2JqLCBjZS0+dm0sIE5VTEwpOwo+ID4gKyAgICAgICBpZiAoSVNfRVJSKHZtYSkpIHsK
PiA+ICsgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gPiArICAgICAg
ICAgICAgICAgcmV0dXJuIHZtYTsKPiA+ICsgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICBlcnIg
PSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fVVNFUik7Cj4gPiArICAgICAgIGlmIChlcnIp
IHsKPiA+ICsgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gPiArICAg
ICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoZXJyKTsKPiA+ICsgICAgICAgfQo+IAo+IExpdmlu
ZyBkYW5nZXJvdXNseT8gT2JqZWN0IGlzIHZvbGF0aWxlLCBiZWxvdyBhbHNvLgoKV2hhdCdzIGEg
c2hyaW5rZXI/IDopCgo+ID4gKyAgICAgICAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9T
SVpFKGN5Y2xlcyk7IGkrKykgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnE7Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBycSA9IGk5
MTVfcmVxdWVzdF9jcmVhdGUoY2UpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKElT
X0VSUihycSkpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gUFRS
X0VSUihycSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZXJyID0gd3JpdGVfdGltZXN0YW1wKHJxLCAyKTsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGlmIChlcnIpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0
Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gcnEtPmVuZ2luZS0+ZW1p
dF9iYl9zdGFydChycSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYmFzZS0+bm9kZS5zdGFydCwgOCwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCk7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBnb3RvIG91dDsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IHdy
aXRlX3RpbWVzdGFtcChycSwgMyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoZXJy
KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ICsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IHJxLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQo
cnEsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG5vcC0+bm9kZS5zdGFydCwgNDA5NiwKPiAKPiBUaGF0IHNob3VsZCBiZSA2NEs/IENh
bid0IHdlIGp1c3QgbWFrZSB0aGVzZSBub2RlLnNpemU/CgpOb3QgbGlrZSB0aGUgdGVzdCBjYW4g
cnVuIG9uIGdlbjIgYW55d2F5IDopCgo+IEFsc28gd2h5IGRvIHdlIG1lYXN1cmUgYm90aCBlbXB0
eSArIG5vcCBoZXJlPwoKU28gdGhlIHRlc3QgaXMgc3RhbmRhbG9uZTsgd2Ugc3VidHJhY3QgdGhl
IG92ZXJoZWFkIG9mIHRoZSBNSV9CQl9TVEFSVApmcm9tIHRoZSBtZWFzdXJlbWVudCwgb3RoZXJ3
aXNlIHRoZSBvdmVyaGVhZCB3b3VsZCBkb21pbmF0ZS4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
