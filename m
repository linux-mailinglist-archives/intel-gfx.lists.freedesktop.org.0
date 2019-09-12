Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F99B0DCB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 13:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB85A6ECCD;
	Thu, 12 Sep 2019 11:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C616ECCD
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 11:29:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18463149-1500050 for multiple; Thu, 12 Sep 2019 12:29:31 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190912104131.4946-1-chris@chris-wilson.co.uk>
References: <20190911163815.11430-1-chris@chris-wilson.co.uk>
 <20190912104131.4946-1-chris@chris-wilson.co.uk>
Message-ID: <156828776865.4926.17505205659804552206@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Sep 2019 12:29:28 +0100
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915/pmu: Use GT parked for
 estimating RC6 while asleep
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTIgMTE6NDE6MzEpCj4gKyAgICAgICBzcGlu
X2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFncyk7Cj4gKyAgICAgICBpZiAoaW50ZWxfZ3Rf
cG1fZ2V0X2lmX2F3YWtlKGd0KSkgewo+ICsgICAgICAgICAgICAgICB2YWwgPSBfX2dldF9yYzYo
Z3QpOwo+ICsgICAgICAgICAgICAgICBpbnRlbF9ndF9wbV9wdXQoZ3QpOwoKQXMgZm9vZCBmb3Ig
dGhvdWdodCwgd2hhdCBhYm91dAoKdmFsID0gMDsKaWYgKGludGVsX2d0X3BtX2dldF9pZl9hd2Fr
ZShndCkpIHsKCXZhbCA9IF9fZ2V0X3JjNihndCk7CglpbnRlbF9ndF9wbV9wdXQoZ3QpOwp9Cgpz
cGluX2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFncyk7CmlmICh2YWwpIHsKPiArCj4gKyAg
ICAgICAgICAgICAgIC8qCj4gKyAgICAgICAgICAgICAgICAqIElmIHdlIGFyZSBjb21pbmcgYmFj
ayBmcm9tIGJlaW5nIHJ1bnRpbWUgc3VzcGVuZGVkIHdlIG11c3QKPiArICAgICAgICAgICAgICAg
ICogYmUgY2FyZWZ1bCBub3QgdG8gcmVwb3J0IGEgbGFyZ2VyIHZhbHVlIHRoYW4gcmV0dXJuZWQK
PiArICAgICAgICAgICAgICAgICogcHJldmlvdXNseS4KPiArICAgICAgICAgICAgICAgICovCj4g
KyAgICAgICAgICAgICAgIHZhbCA9IF9fcG11X3VwZGF0ZV9yYzYocG11LCB2YWwpOwo+ICsgICAg
ICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogV2Ug
YXJlIHJ1bnRpbWUgc3VzcGVuZGVkLgo+ICsgICAgICAgICAgICAgICAgKgo+ICsgICAgICAgICAg
ICAgICAgKiBSZXBvcnQgdGhlIGRlbHRhIGZyb20gd2hlbiB0aGUgZGV2aWNlIHdhcyBzdXNwZW5k
ZWQgdG8gbm93LAo+ICsgICAgICAgICAgICAgICAgKiBvbiB0b3Agb2YgdGhlIGxhc3Qga25vd24g
cmVhbCB2YWx1ZSwgYXMgdGhlIGFwcHJveGltYXRlZCBSQzYKPiArICAgICAgICAgICAgICAgICog
Y291bnRlciB2YWx1ZS4KPiArICAgICAgICAgICAgICAgICovCj4gKyAgICAgICAgICAgICAgIHZh
bCA9IF9fcG11X2VzdGltYXRlX3JjNihwbXUpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHNw
aW5fdW5sb2NrX2lycXJlc3RvcmUoJnBtdS0+bG9jaywgZmxhZ3MpOwo+ICsKPiArICAgICAgIHJl
dHVybiB2YWw7Cj4gK30KCkp1c3QgZmVlbHMgcmlza2llci4uLiBCdXQgd2UgY2FuIHRyeSBhbmQg
c2xlZXAgb24gaXQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
