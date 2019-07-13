Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8286E679AC
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F5D56E3CB;
	Sat, 13 Jul 2019 10:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0350F6E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:32:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17266056-1500050 for multiple; Sat, 13 Jul 2019 11:32:07 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-7-chris@chris-wilson.co.uk>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-7-chris@chris-wilson.co.uk>
Message-ID: <156301392494.9436.5800087018978944382@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 13 Jul 2019 11:32:04 +0100
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/uc: move GuC/HuC inside
 intel_gt under a new intel_uc
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MTIpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBC
ZWluZyBwYXJ0IG9mIHRoZSBHVCBIVywgaXQgbWFrZSBzZW5zZSB0byBrZWVwIHRoZSBndWMvaHVj
IHN0cnVjdHVyZXMKPiBpbnNpZGUgdGhlIEdUIHN0cnVjdHVyZS4gVG8gaGVscCB3aXRoIHRoZSBl
bmNhcHN1bGF0aW9uIHdvcmsgZG9uZSBieSB0aGUKPiBmb2xsb3dpbmcgcGF0Y2hlcywgYm90aCBz
dHJ1Y3R1cmVzIGFyZSBwbGFjZWQgaW5zaWRlIGEgbmV3IGludGVsX3VjCj4gY29udGFpbmVyLiBB
bHRob3VnaCB0aGlzIHJlc3VsdHMgaW4gY29kZSB3aXRoIHVnbHkgbmVzdGVkIGRlcmVmZXJlbmNl
cwo+IChpOTE1LT5ndC51Yy5ndWMuLi4pLCBpdCBzYXZlcyB1cyB0aGUgZXh0cmEgd29yayByZXF1
aXJlZCBpbiBtb3ZpbmcKPiB0aGUgc3RydWN0dXJlcyB0d2ljZSAoaTkxNSAtPiBndCAtPiB1Yyku
IFRoZSBmb2xsb3dpbmcgcGF0Y2hlcyB3aWxsCj4gcmVkdWNlIHRoZSBudW1iZXIgb2YgcGxhY2Vz
IHdoZXJlIHdlIHRyeSB0byBhY2Nlc3MgdGhlIGd1Yy9odWMKPiBzdHJ1Y3R1cmVzIGRpcmVjdGx5
IGZyb20gaTkxNSBhbmQgcmVkdWNlIHRoZSB1Z2xpbmVzcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+
IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
