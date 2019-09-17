Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC19DB4D37
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 13:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84FA08932A;
	Tue, 17 Sep 2019 11:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11578932A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 11:48:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18518587-1500050 for multiple; Tue, 17 Sep 2019 12:47:59 +0100
MIME-Version: 1.0
To: Martin Peres <martin.peres@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <22b62176-53bf-3dfa-08f9-ab120766e459@linux.intel.com>
References: <20190913164337.25829-1-chris@chris-wilson.co.uk>
 <22b62176-53bf-3dfa-08f9-ab120766e459@linux.intel.com>
Message-ID: <156872087786.5729.13829080421311243705@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 12:47:57 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable stolen for iommu on snb/ivb
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

UXVvdGluZyBNYXJ0aW4gUGVyZXMgKDIwMTktMDktMTcgMTI6Mzk6MTMpCj4gT24gMTMvMDkvMjAx
OSAxOTo0MywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gTm93IHRoYXQgd2UgaGF2ZSBDSSB0ZXN0
aW5nIG9mIGlvbW11LCBsZXQncyBlbmFibGUgc3RvbGVuICsgaW9tbXUgd2l0aCBhCj4gPiBsb3Qg
bW9yZSBjb25maWRlbmNlIHRoYXQgd2UgY2FuIGRpYWdub3NlIGFueSBwb3RlbnRpYWwgZXJvcnMu
Cj4gCj4gQUZBSUssIHdlIHN0aWxsIGhhdmVuJ3QgY2hlY2tlZCB0aGF0IHRoZXNlIG1hY2hpbmVz
IGluZGVlZCBoYXZlIHRoZQo+IElPTU1VIGVuYWJsZWQgeWV0LiBBbSBJIHdyb25nPwoKSG1tLCBs
ZXQncyBoYXZlIGEgcXVpY2sgbG9vaywKCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY5MDYvZmktc25iLTI2MDAvYm9vdDAudHh0Cmh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDcvZmktc25iLTI1MjBtL2Jvb3Qw
LnR4dApodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTA1
L3NoYXJkLXNuYjYvYm9vdDEudHh0Ck5vIGlvbW11CgpodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTA1L3NoYXJkLWhzdzgvYm9vdDEudHh0Cjw2PlsgICAg
MS41NDAzNDNdIHBjaSAwMDAwOjAwOjAyLjA6IEFkZGluZyB0byBpb21tdSBncm91cCAxCgpTbyBv
bmx5IGEgc21hdHRlcmluZyBvZiBjb3ZlcmFnZSBvbiBIYXN3ZWxsIChkaWRuJ3QgY2hlY2sgdGhl
IGZhcm0xCml2Yi9oc3cvYnl0KS4KClNvIGluZGVlZCBoYXJkIHRvIGRyYXcgYW55IGNvbmNsdXNp
b24gZnJvbSBvdXIgdGVzdCByZXN1bHRzIGF0IHByZXNlbnQuCkhvcGVmdWxseSwgVG9taSB3aWxs
IGhhdmUgc29tZSBzdWNjZXNzIGluIGZpZ2h0aW5nIHdpdGggdGhlIEJJT1MuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
