Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA37C105219
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 13:11:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7EF6EE38;
	Thu, 21 Nov 2019 12:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113316EE2F;
 Thu, 21 Nov 2019 12:11:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19284958-1500050 for multiple; Thu, 21 Nov 2019 12:11:17 +0000
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <9e91663f-584e-ff16-f314-e196f66f82d1@intel.com>
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
 <20191113125240.3781-4-chris@chris-wilson.co.uk>
 <9e91663f-584e-ff16-f314-e196f66f82d1@intel.com>
Message-ID: <157433827365.29262.646303708638576671@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 12:11:13 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/9] i915: Start putting the
 mmio_base to wider use
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMS0yMSAxMjowNDo0MikKPiBPbiAxMy8x
MS8yMDE5IDE0OjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTZXZlcmFsIHRlc3RzIGRlcGVu
ZCB1cG9uIHRoZSBpbXBsaWNpdCBlbmdpbmUtPm1taW9fYmFzZSBidXQgaGF2ZSBubwo+ID4gbWVh
bnMgb2YgZGV0ZXJtaW5pbmcgdGhlIHBoeXNpY2FsIGxheW91dC4gU2luY2UgdGhlIGtlcm5lbCBo
YXMgc3RhcnRlZAo+ID4gcHJvdmlkaW5nIHRoaXMgaW5mb3JtYXRpb24sIHN0YXJ0IHB1dHRpbmcg
aXQgdG8gdXNlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgIGxpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xv
Z3kuYyB8IDg0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAgbGliL2k5
MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5oIHwgIDUgKysKPiA+ICAgdGVzdHMvaTkxNS9nZW1fY3R4
X3NoYXJlZC5jICAgIHwgMzggKysrKystLS0tLS0tLS0tCj4gPiAgIHRlc3RzL2k5MTUvZ2VtX2V4
ZWNfbGF0ZW5jeS5jICB8IDE3ICsrKystLS0KPiA+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxMTEgaW5z
ZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2xpYi9pOTE1
L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwo+
ID4gaW5kZXggNzkwZDQ1NWZmLi5iZDIwMGE0YjkgMTAwNjQ0Cj4gPiAtLS0gYS9saWIvaTkxNS9n
ZW1fZW5naW5lX3RvcG9sb2d5LmMKPiA+ICsrKyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xv
Z3kuYwo+ID4gQEAgLTIxLDcgKzIxLDEyIEBACj4gPiAgICAqIElOIFRIRSBTT0ZUV0FSRS4KPiA+
ICAgICovCj4gPiAgIAo+ID4gKyNpbmNsdWRlIDxmY250bC5oPgo+ID4gKyNpbmNsdWRlIDx1bmlz
dGQuaD4KPiA+ICsKPiA+ICAgI2luY2x1ZGUgImRybXRlc3QuaCIKPiA+ICsjaW5jbHVkZSAiaWd0
X3N5c2ZzLmgiCj4gPiArI2luY2x1ZGUgImludGVsX2NoaXBzZXQuaCIKPiA+ICAgI2luY2x1ZGUg
ImlvY3RsX3dyYXBwZXJzLmgiCj4gPiAgIAo+ID4gICAjaW5jbHVkZSAiaTkxNS9nZW1fZW5naW5l
X3RvcG9sb2d5LmgiCj4gPiBAQCAtMzM3LDMgKzM0Miw4MiBAQCBib29sIGdlbV9lbmdpbmVfaXNf
ZXF1YWwoY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplMSwKPiA+ICAgewo+
ID4gICAgICAgcmV0dXJuIGUxLT5jbGFzcyA9PSBlMi0+Y2xhc3MgJiYgZTEtPmluc3RhbmNlID09
IGUyLT5pbnN0YW5jZTsKPiA+ICAgfQo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgZGVzY2VuZChpbnQg
ZGlyLCBjb25zdCBjaGFyICpwYXRoKQo+ID4gK3sKPiA+ICsgICAgIGludCBmZDsKPiA+ICsKPiA+
ICsgICAgIGZkID0gb3BlbmF0KGRpciwgcGF0aCwgT19SRE9OTFkpOwo+ID4gKyAgICAgY2xvc2Uo
ZGlyKTsKPiA+ICsKPiA+ICsgICAgIHJldHVybiBmZDsKPiA+ICt9Cj4gPiArCj4gCj4gCj4gTm90
IHN1cmUgSSB1bmRlcnN0YW5kIHdoYXQgZmlsZSB0aGUgZnVuY3Rpb24gYmVsb3cgaXMgc3VwcG9z
ZWQgdG8gcGFyc2UuCj4gCj4gSXMgdGhhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9pOTE1X2Vu
Z2luZV9pbmZvPwoKL3N5cy9jbGFzcy9kcm0vY2FyZDAvZW5naW5lLyovbW1pb19iYXNlCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
