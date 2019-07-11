Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19239651DE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 08:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D1B89133;
	Thu, 11 Jul 2019 06:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE51E89133
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 06:30:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17214214-1500050 for multiple; Thu, 11 Jul 2019 07:30:00 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190710234321.GA3443@unerlige-desk.amr.corp.intel.com>
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-7-lionel.g.landwerlin@intel.com>
 <20190710234321.GA3443@unerlige-desk.amr.corp.intel.com>
Message-ID: <156282659660.12280.4199368775706498585@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 11 Jul 2019 07:29:56 +0100
Subject: Re: [Intel-gfx] [PATCH v8 06/13] drm/i915/perf: implement active
 wait for noa configurations
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

UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMDctMTEgMDA6NDM6MjEpCj4gT24g
VHVlLCBKdWwgMDksIDIwMTkgYXQgMDM6MzM6NDRQTSArMDMwMCwgTGlvbmVsIExhbmR3ZXJsaW4g
d3JvdGU6Cj4gPitzdGF0aWMgdTMyICpzYXZlX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCB1MzIgKmNzLAo+ID4rICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9yZWdf
dCByZWcsIHUzMiBvZmZzZXQsIHUzMiBkd29yZF9jb3VudCkKPiA+K3sKPiA+KyAgICAgIHVpbnQz
Ml90IGQ7Cj4gPisKPiA+KyAgICAgIGZvciAoZCA9IDA7IGQgPCBkd29yZF9jb3VudDsgZCsrKSB7
Cj4gPisgICAgICAgICAgICAgICpjcysrID0gSU5URUxfR0VOKGk5MTUpID49IDggPwo+ID4rICAg
ICAgICAgICAgICAgICAgICAgIE1JX1NUT1JFX1JFR0lTVEVSX01FTV9HRU44IDogTUlfU1RPUkVf
UkVHSVNURVJfTUVNOwo+ID4rICAgICAgICAgICAgICAqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zm
c2V0KHJlZykgKyA0ICogZDsKPiA+KyAgICAgICAgICAgICAgKmNzKysgPSBpbnRlbF9ndF9zY3Jh
dGNoX29mZnNldCgmaTkxNS0+Z3QsIG9mZnNldCkgKyA0ICogZDsKPiA+KyAgICAgICAgICAgICAg
KmNzKysgPSAwOwo+ID4rICAgICAgfQo+ID4rCj4gPisgICAgICByZXR1cm4gY3M7Cj4gPit9Cj4g
PisKPiA+K3N0YXRpYyB1MzIgKnJlc3RvcmVfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsIHUzMiAqY3MsCj4gPisgICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X3Jl
Z190IHJlZywgdTMyIG9mZnNldCwgdTMyIGR3b3JkX2NvdW50KQo+ID4rewo+ID4rICAgICAgdWlu
dDMyX3QgZDsKPiA+Kwo+ID4rICAgICAgZm9yIChkID0gMDsgZCA8IGR3b3JkX2NvdW50OyBkKysp
IHsKPiA+KyAgICAgICAgICAgICAgKmNzKysgPSBJTlRFTF9HRU4oaTkxNSkgPj0gOCA/Cj4gPisg
ICAgICAgICAgICAgICAgICAgICAgTUlfTE9BRF9SRUdJU1RFUl9NRU1fR0VOOCA6IE1JX0xPQURf
UkVHSVNURVJfTUVNOwo+ID4rICAgICAgICAgICAgICAqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zm
c2V0KHJlZyk7Cj4gPisgICAgICAgICAgICAgICpjcysrID0gaW50ZWxfZ3Rfc2NyYXRjaF9vZmZz
ZXQoJmk5MTUtPmd0LCBvZmZzZXQpOwo+IAo+IGFyZSB5b3UgbWlzc2luZyArIDQgKiBkIGluIHRo
ZSBhYm92ZSAyIGxpbmVzPwoKV2hvb3BzIGJhZCByZXZpZXdlci4gU2luY2UgdGhlc2UgYXJlIHRo
ZSBzYW1lIHR3byBsb29wcyBqdXN0IHdpdGggYQpkaWZmZXJlbnQgY21kLi4uCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
