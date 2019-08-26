Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B60ED9D540
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 19:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8E36E27F;
	Mon, 26 Aug 2019 17:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9513B6E27F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 17:57:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18268963-1500050 for multiple; Mon, 26 Aug 2019 18:57:04 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3D985E@fmsmsx120.amr.corp.intel.com>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
 <20190826072149.9447-28-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3D9198@fmsmsx120.amr.corp.intel.com>
 <156683859276.14306.6988350986402734188@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3D985E@fmsmsx120.amr.corp.intel.com>
Message-ID: <156684222154.15406.4110733966086836605@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 26 Aug 2019 18:57:01 +0100
Subject: Re: [Intel-gfx] [PATCH 28/28] drm/i915: Replace hangcheck by
 heartbeats
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDgtMjYgMTg6NTE6MzIpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2V0cGFyYW0uYwo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJh
bS5jCj4gPiA+ID4gaW5kZXggNWQ5MTAxMzc2YTNkLi5lNmMzNTEwODA1OTMgMTAwNjQ0Cj4gPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jCj4gPiA+ID4gQEAgLTc4LDgg
Kzc4LDcgQEAgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZAo+ID4gPiA+ICpkYXRhLAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
LUVOT0RFVjsKPiA+ID4gPiAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiA+ICAgICAgIGNhc2Ug
STkxNV9QQVJBTV9IQVNfR1BVX1JFU0VUOgo+ID4gPiA+IC0gICAgICAgICAgICAgdmFsdWUgPSBp
OTE1X21vZHBhcmFtcy5lbmFibGVfaGFuZ2NoZWNrICYmCj4gPiA+ID4gLSAgICAgICAgICAgICAg
ICAgICAgIGludGVsX2hhc19ncHVfcmVzZXQoaTkxNSk7Cj4gPiA+ID4gKyAgICAgICAgICAgICB2
YWx1ZSA9IGludGVsX2hhc19ncHVfcmVzZXQoaTkxNSk7Cj4gPiA+Cj4gPiA+IERvbid0IHVuZGVy
c3RhbmQgdGhpcyB0d2Vhay4gV2UgaGF2ZW4ndCByZWFsbHkgY2hhbmdlZCB0aGUgZXNzZW5jZSBv
Zgo+ID4gaGFuZ2NoZWNrLCBqdXN0IGltcHJvdmVkIGl0LCBzbyB3aHkgZG8gd2UgY2hhbmdlIHRo
aXMgZ2V0X3BhcmFtPwo+ID4gCj4gPiBJIGRlbGV0ZWQgdGhlIG1vZHBhcmFtIGluIGVhcmxpZXIg
cGF0Y2hlcy4gQnV0IGFudGljaXBhdGVkIHlvdSB3b3VsZAo+ID4gb2JqZWN0Li4uCj4gCj4gT2ss
IEkgc2VlLiBCdXQgdGhlbiBzaG91bGRuJ3Qgd2UganVzdCBiZSBjaGVja2luZyB0aGUgbmV3IHBh
cmFtIGZvciBhIG5vbi16ZXJvIHRpbWVvdXQ/IFRoYXQgd291bGQgdGhlbiBiZSBlcXVpdmFsZW50
Lgo+IE9yLCBpdCBzZWVtcyBmYWlyIHRvIGNvbmNsdWRlIHRoYXQgdGhpcyBuZXZlciBtYWRlIHNl
bnNlLCBidXQgdGhlbiBpdCByZWFsbHkgb3VnaHQgdG8gYmUgYSBzZXBhcmF0ZSBwYXRjaCB0byBy
ZW1vdmUgdGhlIGFzc29jaWF0aW9uIGJldHdlZW4gSEFTX0dQVV9SRVNFVCBhbmQgaGFuZ2NoZWNr
LgoKVGhlIGNodW5rIGlzIGdvbmUuIFF1ZXN0aW9ucyBmb3IgYW5vdGhlciBkYXkuIDotcAotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
