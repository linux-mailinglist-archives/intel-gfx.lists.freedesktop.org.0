Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B9916898
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 18:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60FD6E7FD;
	Tue,  7 May 2019 16:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761796E7FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 16:59:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16480251-1500050 for multiple; Tue, 07 May 2019 17:59:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190425092004.9995-1-chris@chris-wilson.co.uk>
 <20190425092004.9995-20-chris@chris-wilson.co.uk>
 <c7f4a6c4-bc48-12bf-3161-d1133ef6688a@linux.intel.com>
In-Reply-To: <c7f4a6c4-bc48-12bf-3161-d1133ef6688a@linux.intel.com>
Message-ID: <155724839080.14384.3877831842632246771@skylake-alporthouse-com>
Date: Tue, 07 May 2019 17:59:50 +0100
Subject: Re: [Intel-gfx] [PATCH 20/45] drm/i915: Apply an execution_mask to
 the virtual_engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNC0yOSAxNToxMjoyMykKPiAKPiBPbiAyNS8w
NC8yMDE5IDEwOjE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiAgIHN0YXRpYyB2b2lkIHZpcnR1
YWxfc3VibWlzc2lvbl90YXNrbGV0KHVuc2lnbmVkIGxvbmcgZGF0YSkKPiA+ICAgewo+ID4gICAg
ICAgc3RydWN0IHZpcnR1YWxfZW5naW5lICogY29uc3QgdmUgPSAoc3RydWN0IHZpcnR1YWxfZW5n
aW5lICopZGF0YTsKPiA+ICAgICAgIGNvbnN0IGludCBwcmlvID0gdmUtPmJhc2UuZXhlY2xpc3Rz
LnF1ZXVlX3ByaW9yaXR5X2hpbnQ7Cj4gPiArICAgICBpbnRlbF9lbmdpbmVfbWFza190IG1hc2s7
Cj4gPiAgICAgICB1bnNpZ25lZCBpbnQgbjsKPiA+ICAgCj4gPiArICAgICByY3VfcmVhZF9sb2Nr
KCk7Cj4gPiArICAgICBtYXNrID0gdmlydHVhbF9zdWJtaXNzaW9uX21hc2sodmUpOwo+ID4gKyAg
ICAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gPiArICAgICBpZiAodW5saWtlbHkoIW1hc2spKQo+IAo+
IElzIHRoZSByY3VfbG9jayB0aGluayBzb2xlbHkgZm9yIHRoZSBzYW1lIHByb3RlY3Rpb24gYWdh
aW5zdCB3ZWRnaW5nIGluIAo+IHN1Ym1pdF9ub3RpZnk/CgpOby4gV2UgbWF5IHN0aWxsIGJlIGlu
IHRoZSByYnRyZWUgb2YgdGhlIHBoeXNpY2FsIGVuZ2luZXMgYW5kCnZlLT5yZXF1ZXN0IG1heSBi
ZSBwbHVja2VkIG91dCBmcm9tIHVuZGVybmVhdGggdXMgYXMgd2UgcmVhZCBpdC4gQW5kIGluCnRo
ZSB0aW1lIGl0IHRha2VzIHRvIHRyYWNlaywgdGhhdCByZXF1ZXN0IG1heSBoYXZlIGJlZW4gZXhl
Y3V0ZWQsCnJldGlyZWQgYW5kIGZyZWVkLiBUbyBwcmV2ZW50IHRoZSBkYW5nbGluZyBzdGFsZSBk
ZXJlZmVyZW5jZSwgd2UgdXNlCnJjdV9yZWFkX2xvY2soKSBoZXJlIGFzIHdlIHBlZWsgaW50byB0
aGUgcmVxdWVzdCwgYW5kIHNwaW5sb2NrcyBhcm91bmQKdGhlIGFjdHVhbCB0cmFuc2ZlciB0byB0
aGUgZXhlY3V0aW9uIGJhY2tlbmQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
