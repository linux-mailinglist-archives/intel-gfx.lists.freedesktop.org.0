Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D051921B98
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD91D898FA;
	Fri, 17 May 2019 16:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C38898FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:27:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16592077-1500050 for multiple; Fri, 17 May 2019 17:27:46 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517162227.6436-8-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-8-michal.wajdeczko@intel.com>
Message-ID: <155811046421.826.15844367297246569999@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 17:27:44 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/uc: Don't forget to prepare
 GuC for the reset
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE3OjIyOjI3KQo+IFdoZW4gd2Ug
cmVzZXQgZW5naW5lcyB1c2luZyBBTExfRU5HSU5FUyBtYXNrLCB3ZSB3aWxsIGRvCj4gZnVsbCBH
UFUgcmVzZXQgYW5kIEd1QyB3aWxsIGJlIGFsc28gYWZmZWN0ZWQuIExldCBHdUMgYmUKPiBwcmVw
YXJlZCBmb3IgdXBjb21pbmcgcmVzZXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBpbmRleCA0NjQz
NjliYzU1YWQuLmNhNmU0MGI2YjRlMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYwo+IEBAIC01NjQsNiArNTY0LDEwIEBAIHN0YXRpYyBpbnQgZ2VuOF9yZXNldF9lbmdp
bmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgICAgICAgICAgICAgICAgKi8K
PiAgICAgICAgIH0KPiAgCj4gKyAgICAgICAvKiBXZSBhcmUgYWJvdXQgdG8gZG8gZnVsbCBHUFUg
cmVzZXQsIGRvbid0IGZvcmdldCBhYm91dCBHdUMgKi8KPiArICAgICAgIGlmIChlbmdpbmVfbWFz
ayA9PSBBTExfRU5HSU5FUykKPiArICAgICAgICAgICAgICAgaW50ZWxfdWNfcmVzZXRfcHJlcGFy
ZShpOTE1KTsKCkVoLCB0aGlzIGlzIGRvbmUgaW4gcmVzZXRfcHJlcGFyZSBhbHJlYWR5LiBUaGUg
b25seSBvdGhlciBwYXRoIHRvIGNhbGwKaW50ZWxfZ3B1X3Jlc2V0KCkgZGlyZWN0bHkgaXMgYWxv
bmcgc2FuaXRpemF0aW9uLCB3aGljaCBzaG91bGQgYWxzbyBoYXZlCmFscmVhZHkgc2FuaXRpemVk
IHRoZSBndWMgYXMgd2VsbC4gTm8/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
