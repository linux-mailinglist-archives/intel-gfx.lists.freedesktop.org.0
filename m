Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A288CDB5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 10:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73896E2F6;
	Wed, 14 Aug 2019 08:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20F56E2BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 08:11:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18071565-1500050 for multiple; Wed, 14 Aug 2019 09:10:58 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156576961818.2301.17142069883437447929@skylake-alporthouse-com>
References: <20190814002145.29056-1-daniele.ceraolospurio@intel.com>
 <156576961818.2301.17142069883437447929@skylake-alporthouse-com>
Message-ID: <156577025687.2301.8617564335056735171@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 09:10:56 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Remove client->submissions
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTQgMDk6MDA6MTgpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTE0IDAxOjIxOjQ1KQo+ID4gVGhlIGVuZ2luZS0+
Z3VjX2lkIGlzIEd1QyBGVyBkZWZpbmVkIGFuZCBpdCBpcyBub3QgZ3VhcmFudGVlZCB0byBiZQo+
ID4gYmVsb3cgSTkxNV9OVU1fRU5HSU5FUywgc28gd2Ugc2hvdWxkbid0IHVzZSBpdCB3aXRoIHRo
ZSBpOTE1LWRlZmluZWQKPiA+IGNsaWVudC0+c3VibWlzc2lvbnMsIGFzIHdlIG1pZ2h0IG92ZXJm
bG93Lgo+ID4gSW5zdGVhZCBvZiBmaXhpbmcgaXQsIGp1c3QgZ2V0IHJpZCBvZiBjbGllbnQtPnN1
Ym1pc3Npb25zLCBiZWNhdXNlIHRoZQo+ID4gaW5mb3JtYXRpb24gd2UgZ2V0IGZyb20gaXQgaXMg
bm90IGludGVyZXN0aW5nIGFueW1vcmUgbm93IHRoYXQgd2Ugb25seQo+ID4gaGF2ZSAxIGNsaWVu
dC4KPiAKPiBJdCB3YXMgZXZlciB1c2VmdWw/IFVtcHRlZW4gYmlsbGlvbiBzdWJtaXNzaW9ucyBo
ZXJlLCB1bXB0ZWVuIGJpbGxpb24KPiBzdWJtaXNzaW9ucyB0aGVyZS4gT3IgdGhlIG90aGVyIGV4
dHJlbWUsIDEuIE5vIG1vcmUsIG5vIGxlc3MgOikKPiAgCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4g
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkFuZCBwdXNoZWQuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
