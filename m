Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2714830882
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 08:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E1289267;
	Fri, 31 May 2019 06:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F13589267
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 06:28:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16742971-1500050 for multiple; Fri, 31 May 2019 07:28:12 +0100
MIME-Version: 1.0
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <43D4F724E12AB6478FC1572B3FBE89D07670DB5B@IRSMSX106.ger.corp.intel.com>
References: <20190530151622.31066-1-daniele.ceraolospurio@intel.com>
 <155922979200.21185.6454467757171635664@skylake-alporthouse-com>
 <43D4F724E12AB6478FC1572B3FBE89D07670DB5B@IRSMSX106.ger.corp.intel.com>
Message-ID: <155928408914.27302.9527597188306876463@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 May 2019 07:28:09 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove duplicated
 WaDisableBankHangMode:icl
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

UXVvdGluZyBTYWFyaW5lbiwgSmFuaSAoMjAxOS0wNS0zMSAwNzoyMDoxMCkKPiBIaSwgCj4gCj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIFttYWls
dG86Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrXQo+ID4gU2VudDogdG9yc3RhaSAzMC4gdG91a29r
dXV0YSAyMDE5IDE4LjIzCj4gPiBUbzogQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUgPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+OyBpbnRlbC0KPiA+IGdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiA+IENjOiBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pCj4gPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5j
b20+Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNTogcmVtb3ZlIGR1cGxpY2F0ZWQg
V2FEaXNhYmxlQmFua0hhbmdNb2RlOmljbAo+ID4gCj4gPiBRdW90aW5nIERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gKDIwMTktMDUtMzAgMTY6MTY6MjEpCj4gPiA+IEFjY2lkZW50YWxseSBhZGRlZCBk
dXJpbmcgdGhlIG1lcmdlIG9mIGRybS1uZXh0Lgo+ID4gCj4gPiBJdCdzIGEgZGltIGlzc3VlLiBB
IGRpbnEgcGF0Y2ggY2hlcnJ5LXBpY2tlZCBpbnRvIGRpZiB0aGF0IGdpdCBpc24ndCBlbGltaW5h
dGluZyB0aGUKPiA+IGR1cGxpY2F0aW9uIHdoZW4gZGltIGJ1aWxkIHRpcHMuCj4gPiBodHRwczov
L2RybS5wYWdlcy5mcmVlZGVza3RvcC5vcmcvbWFpbnRhaW5lci10b29scy9kcm0tdGlwLmh0bWwj
cmVzb2x2aW5nLQo+ID4gY29uZmxpY3RzLXdoZW4tcmVidWlsZGluZy1kcm0tdGlwCj4gPiBTZWUg
IkZpeGluZyBTaWxlbnQgQ29uZmxpY3RzIgo+ID4gCj4gPiBOb3RlIGFscmVhZHkgZml4ZWQgdXAu
Cj4gV2hlbiB0aGlzIGNhbiBiZSBzZWVuIGFsc28gaW4gQ0k/IAoKV2hlbiBzb21lYm9keSByZXN0
YXJ0cyBDSS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
