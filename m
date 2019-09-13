Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34674B1916
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 09:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBD66EEB7;
	Fri, 13 Sep 2019 07:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD4A6EEB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 07:43:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18472507-1500050 for multiple; Fri, 13 Sep 2019 08:41:58 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1575262.euYTv8qN2F@jkrzyszt-desk.ger.corp.intel.com>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190909225536.7037-2-chris@chris-wilson.co.uk>
 <1575262.euYTv8qN2F@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <156836051552.4926.10493891828250023568@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Sep 2019 08:41:55 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Only unwedge if we can
 reset first
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDktMTAgMDg6Mzk6NTEpCj4gSGkgQ2hy
aXMsCj4gCj4gT24gVHVlc2RheSwgU2VwdGVtYmVyIDEwLCAyMDE5IDEyOjU1OjM2IEFNIENFU1Qg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gQEAgLTg1NCw3ICs4NTUsMTEgQEAgc3RhdGljIGJvb2wg
X19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0IAo+ICpndCkKPiA+ICAgICAg
IH0KPiA+ICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxh
Z3MpOwo+ID4gIAo+ID4gLSAgICAgaW50ZWxfZ3Rfc2FuaXRpemUoZ3QsIGZhbHNlKTsKPiA+ICsg
ICAgIG9rID0gZmFsc2U7Cj4gPiArICAgICBpZiAoIXJlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkoZ3Qt
Pmk5MTUpKQo+ID4gKyAgICAgICAgICAgICBvayA9IF9faW50ZWxfZ3RfcmVzZXQoZ3QsIEFMTF9F
TkdJTkVTKSA9PSAwOwo+ID4gKyAgICAgaWYgKCFvaykKPiA+ICsgICAgICAgICAgICAgcmV0dXJu
IGZhbHNlOwo+IAo+IEJlZm9yZSB5b3VyIGNoYW5nZSwgdGhhdCBjb2RlIHdhcyBleGVjdXRlZCBp
bnNpZGUgaW50ZWxfZ3Rfc2FuaXRpemUoZ3QsIGZhbHNlKSAKPiB3aGljaCB1bmZvcnR1bmF0ZWx5
IGRpZG4ndCByZXR1cm4gYW55IHJlc3VsdC4gIFRoZSBzYW1lIG91dGNvbWUgY291bGQgYmUgCj4g
YWNoaWV2ZWQgYnkgcmVkZWZpbmluZyBpbnRlbF9ndF9zYW5pdGl6ZSgpIHRvIHJldHVybiB0aGF0
IHJlc3VsdCBhbmQgc2F5aW5nOgo+IAo+ICAgICAgICAgaWYgKCFpbnRlbF9ndF9zYW5pdGl6ZShn
dCwgZmFsc2UpCj4gICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiAKPiBJcyB0aGVyZSBh
bnkgc3BlY2lmaWMgcmVhc29uIGZvciBpbnRlbF9ndF9zYW5pdGl6ZSgpIHJldHVybmluZyB2b2lk
PwoKVGhlIGludGVudCBpcyB0aGF0IHNhbml0aXplIHNjcnVicyB0aGUgbGVmdG92ZXIgQklPUyBz
dGF0ZSwgZmFpbHVyZSBpcwpub3QgYW4gb3B0aW9uLiAgVGhlIGJpZ2dlc3QgY2hhbmdlIHdpdGgg
cmVzcGVjdCB0byBpbnRlbF9ndF9zYW5pdGl6ZSgpIGlzCnRoZSBnYW1lIHdlIHBsYXkgd2l0aCBy
ZXNldF9jbG9iYmVyc19kaXNwbGF5IC0tIHdlIG5lZWQgdGhlIHJlc2V0LAp3aGVyZWFzIGluIHNh
bml0aXplLCB0aGUgcmVzZXQgaXMgZ29vZCB0byBoYXZlIChidXQgcmVhbGlzdGljYWxseSB3ZSBk
bwpub3QgZXhwZWN0IHRoZXJlIHRvIGJlIGFueSBjb250ZXh0cyB0byBzY3J1YiBhbmQgc28gY2Fu
IHRha2UgdGhlIHJpc2spLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
