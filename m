Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C3A10C889
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 13:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6B96E31A;
	Thu, 28 Nov 2019 12:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DED46E31A;
 Thu, 28 Nov 2019 12:19:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19375011-1500050 for multiple; Thu, 28 Nov 2019 12:19:10 +0000
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157494280535.21454.6724794091906810209@emeril.freedesktop.org>
References: <20191128092120.3783242-1-chris@chris-wilson.co.uk>
 <157494280535.21454.6724794091906810209@emeril.freedesktop.org>
Message-ID: <157494354802.7216.4668447017388970066@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 28 Nov 2019 12:19:08 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Drop_preemption_to_see_if_that_helps?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMTEtMjggMTI6MDY6NDUpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1L3RnbDogRHJvcCBwcmVlbXB0aW9uIHRvIHNlZSBp
ZiB0aGF0IGhlbHBzCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzcwMTUzLwo+IFN0YXRlIDogc3VjY2Vzcwo+IAo+ID09IFN1bW1hcnkgPT0KPiAKPiBD
SSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDM2IC0+IFBhdGNod29ya18xNTQ4Mwo+
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAK
PiBTdW1tYXJ5Cj4gLS0tLS0tLQo+IAo+ICAgKipTVUNDRVNTKioKPiAKPiAgIE5vIHJlZ3Jlc3Np
b25zIGZvdW5kLgo+IAo+ICAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ4My9pbmRleC5odG1sCgpOb3QgbWVudGlvbmVk
IGlzIHRoYXQgZmktdGdsLXUgZGllZCBpbiB0aGUgc2FtZSBwbGFjZSBvbgpnZW1fY3R4X2NyZWF0
ZUBiYXNpYy1maWxlcywgc28gcHJlZW1wdGlvbiBpcyBub3QgdGhlIGtleSB0byB1bmxvY2tpbmcK
dGhlIG15c3RlcnkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
