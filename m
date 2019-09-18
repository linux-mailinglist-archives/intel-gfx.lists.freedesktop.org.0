Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F88B61EA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 12:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED246EEC9;
	Wed, 18 Sep 2019 10:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F336EEC9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 10:56:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18530535-1500050 for multiple; Wed, 18 Sep 2019 11:56:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190918092303.23078-1-chris@chris-wilson.co.uk>
 <a429e1fc-2956-070a-c870-c06c2697f2aa@linux.intel.com>
 <156880366951.5729.7998006857247916625@skylake-alporthouse-com>
In-Reply-To: <156880366951.5729.7998006857247916625@skylake-alporthouse-com>
Message-ID: <156880416166.5729.13649980539774338639@skylake-alporthouse-com>
Date: Wed, 18 Sep 2019 11:56:01 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expose engine properties via sysfs
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTggMTE6NDc6NDkpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wOS0xOCAxMToyNjo1NykKPiA+IAo+ID4gT24gMTgvMDkvMjAxOSAx
MDoyMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiArc3RhdGljIHN0cnVjdCBrb2JqZWN0ICoK
PiA+ID4gK2tvYmpfZW5naW5lKHN0cnVjdCBrb2JqZWN0ICpkaXIsIHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKPiA+ID4gK3sKPiA+ID4gKyAgICAgc3RydWN0IGtvYmpfZW5naW5lICpr
ZTsKPiA+ID4gKwo+ID4gPiArICAgICBrZSA9IGt6YWxsb2Moc2l6ZW9mKCprZSksIEdGUF9LRVJO
RUwpOwo+ID4gPiArICAgICBpZiAoIWtlKQo+ID4gPiArICAgICAgICAgICAgIHJldHVybiBOVUxM
Owo+ID4gCj4gPiBDb3VsZCBlbWJlZCBrb2JqIGludG8gdGhlIGVuZ2luZT8KPiAKPiBNeSB0aGlu
a2luZyB3YXMgaWYgd2UgZGlkIHRoYXQsIHRoZSBuYXR1cmFsIGhpZXJhcmNoeSB3b3VsZCBiZQo+
IGk5MTUtPmd0LT5lbmdpbmUsIGFuZCBJIHdhc24ndCByZWFkeSB0byBmdWxseSBjb21taXQgdG8g
dGhhdCBsZXZlbCBvZgo+IGRldGFpbC4KCklmIHdlIGRvIGFkZCBndC8gKGFuZCBJIGhvcGUgd2Ug
ZG8pLCB0aGVuIGVuZ2luZS8qIGNhbiBiZWNvbWUgc3ltbGlua3MuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
