Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A13A8FC260
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 10:13:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8616E15F;
	Thu, 14 Nov 2019 09:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 055476E15F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 09:13:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19197335-1500050 for multiple; Thu, 14 Nov 2019 09:13:10 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191114085443.30676-1-chris@chris-wilson.co.uk>
References: <20191114083436.2261-1-chris@chris-wilson.co.uk>
 <20191114085443.30676-1-chris@chris-wilson.co.uk>
Message-ID: <157372278930.2850.2108641940943312231@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 14 Nov 2019 09:13:09 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise rc6 handling
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTQgMDg6NTQ6NDMpCj4gK3N0YXRpYyBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICoqCj4gK3JhbmRvbWlzZWRfZW5naW5lcyhzdHJ1Y3QgaW50ZWxf
Z3QgKmd0LAo+ICsgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgcm5kX3N0YXRlICpwcm5nLAo+ICsg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgKmNvdW50KQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsICoqZW5naW5lczsKPiArICAgICAgIGVudW0gaW50
ZWxfZW5naW5lX2lkIGlkOwo+ICsgICAgICAgaW50IG47Cj4gKwo+ICsgICAgICAgbiA9IDA7Cj4g
KyAgICAgICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpCj4gKyAgICAgICAgICAgICAg
IG4rKzsKPiArICAgICAgIGlmICghbikKPiArICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4g
Kwo+ICsgICAgICAgZW5naW5lcyA9IGttYWxsb2NfYXJyYXkobiwgc2l6ZW9mKCplbmdpbmVzKSwg
R0ZQX0tFUk5FTCk7Cj4gKyAgICAgICBpZiAoIWVuZ2luZXMpCj4gKyAgICAgICAgICAgICAgIHJl
dHVybiBOVUxMOwo+ICsKPiArICAgICAgIG4gPSAwOwo+ICsgICAgICAgZm9yX2VhY2hfZW5naW5l
KGVuZ2luZSwgZ3QsIGlkKQo+ICsgICAgICAgICAgICAgICBlbmdpbmVzW24rK10gPSBlbmdpbmU7
Cj4gKwo+ICsgICAgICAgaTkxNV9wcmFuZG9tX3NodWZmbGUoZW5naW5lcywgc2l6ZW9mKCplbmdp
bmVzKSwgbiwgcHJuZyk7Cj4gKwoqY291bnQgPSBuOwo+ICsgICAgICAgcmV0dXJuIGVuZ2luZXM7
Cj4gK30KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
