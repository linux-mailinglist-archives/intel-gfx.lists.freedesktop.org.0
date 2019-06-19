Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5103F4C0B2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA0A6E44D;
	Wed, 19 Jun 2019 18:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F8F6E44D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:21:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16957148-1500050 for multiple; Wed, 19 Jun 2019 19:21:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
 <20190619180312.31817-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20190619180312.31817-5-ville.syrjala@linux.intel.com>
Message-ID: <156096850888.664.14223582224163086211@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 19:21:48 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/sdvo: Reduce the size of the
 on stack buffers
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE5IDE5OjAzOjExKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVGhlIHN0cmlu
Z3Mgd2Ugd2FudCB0byBwcmludCB0byB0aGUgb24gc3RhY2sgYnVmZmVycyBzaG91bGQKPiBiZSBu
byBtb3JlIHRoYW4KPiA4ICogMyArIHN0cmxlbigiKEdFVF9TQ0FMRURfSERUVl9SRVNPTFVUSU9O
X1NVUFBPUlQpIikgKyAxID0gNjEKPiBieXRlcy4gU28gbGV0J3Mgc2hyaW5rIHRoZSBidWZmZXJz
IGRvd24gdG8gNjQgYnl0ZXMuCj4gCgptYXggYXJnc19sZW4gZG9lcyBzZWVtIHRvIDgsIGFuZCBp
dCBnZXRzIHBhZGRlZCBvdXQgdG8gOC4KCj4gQWxzbyBzd2l0Y2ggdGhlIEJVR19PTigpcyB0byBX
QVJOX09OKClzIGlmIEkgbWFkZSBhIG1pc3Rha2UgaW4KPiBteSBhcml0aG1lbnRpYy4KCldpdGgg
dGhlIGNvbW1hbmQgbmFtZSBtYWNybywgY291bGQgaXQgbm90IGRvIHNvbWUgdGhpbmcgbGlrZQpC
VUlMRF9CVUdfT04oc2l6ZW9mKCNjbWQpID4gREJHX0xFTikgPwotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
