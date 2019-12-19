Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D55E7126F54
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 22:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0FC6EB8F;
	Thu, 19 Dec 2019 21:04:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3E56EB8F
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 21:04:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19639208-1500050 for multiple; Thu, 19 Dec 2019 21:04:17 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191219180019.25562-9-tvrtko.ursulin@linux.intel.com>
Message-ID: <157678945519.6469.7475534643662969828@skylake-alporthouse-com>
Date: Thu, 19 Dec 2019 21:04:15 +0000
Subject: Re: [Intel-gfx] [RFC 8/8] drm/i915: Expose per-engine client
 busyness
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMi0xOSAxODowMDoxOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEV4cG9zZSBwZXItY2xp
ZW50IGFuZCBwZXItZW5naW5lIGJ1c3luZXNzIHVuZGVyIHRoZSBwcmV2aW91c2x5IGFkZGVkIHN5
c2ZzCj4gY2xpZW50IHJvb3QuCj4gCj4gVGhlIG5ldyBmaWxlcyBhcmUgb25lIHBlci1lbmdpbmUg
aW5zdGFuY2UgYW5kIGxvY2F0ZWQgdW5kZXIgdGhlICdidXN5Jwo+IGRpcmVjdG9yeS4gRWFjaCBj
b250YWlucyBhIG1vbm90b25pY2FsbHkgaW5jcmVhc2luZyBuYW5vLXNlY29uZCByZXNvbHV0aW9u
Cj4gdGltZXMgZWFjaCBjbGllbnQncyBqb2JzIHdlcmUgZXhlY3V0aW5nIG9uIHRoZSBHUFUuCj4g
Cj4gVGhpcyBlbmFibGVzIHVzZXJzcGFjZSB0byBjcmVhdGUgYSB0b3AtbGlrZSB0b29sIGZvciBH
UFUgdXRpbGl6YXRpb246Cj4gCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiBpbnRlbC1ncHUtdG9wIC0g
IDkzNS8gOTM1IE1IejsgICAgMCUgUkM2OyAxNC43MyBXYXR0czsgICAgIDEwOTcgaXJxcy9zCj4g
Cj4gICAgICAgSU1DIHJlYWRzOiAgICAgMTQwMSBNaUIvcwo+ICAgICAgSU1DIHdyaXRlczogICAg
ICAgIDQgTWlCL3MKPiAKPiAgICAgICAgICAgRU5HSU5FICAgICAgQlVTWSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIE1JX1NFTUEgTUlfV0FJVAo+ICAgICAgUmVuZGVyLzNELzAgICA2
My43MyUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiCAgICAgICAgICAgfCAgICAgIDMlICAgICAgMCUKPiAgICAgICAgQmxpdHRlci8wICAg
IDkuNTMlIHzilojilojiloogICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgNiUgICAg
ICAwJQo+ICAgICAgICAgIFZpZGVvLzAgICAzOS4zMiUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiiAgICAgICAgICAgICAgICAgIHwgICAgIDE2JSAgICAgIDAlCj4gICAgICAg
ICAgVmlkZW8vMSAgIDE1LjYyJSB84paI4paI4paI4paI4paLICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAgICAwJSAgICAgIDAlCj4gICBWaWRlb0VuaGFuY2UvMCAgICAwLjAwJSB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgIDAlICAgICAgMCUKPiAKPiAgIFBJRCAgICAg
ICAgICAgIE5BTUUgICAgIFJDUyAgICAgICAgICBCQ1MgICAgICAgICAgVkNTICAgICAgICAgVkVD
Uwo+ICA0MDg0ICAgICAgICBnZW1fd3NpbSB84paI4paI4paI4paI4paI4paMICAgICB8fOKWiCAg
ICAgICAgICB8fCAgICAgICAgICAgfHwgICAgICAgICAgIHwKPiAgNDA4NiAgICAgICAgZ2VtX3dz
aW0gfOKWiOKWjCAgICAgICAgIHx8ICAgICAgICAgICB8fOKWiOKWiOKWiCAgICAgICAgfHwgICAg
ICAgICAgIHwKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+IAo+IHYyOiBVc2UgaW50ZWxfY29udGV4dF9l
bmdpbmVfZ2V0X2J1c3lfdGltZS4KPiB2MzogTmV3IGRpcmVjdG9yeSBzdHJ1Y3R1cmUuCj4gdjQ6
IFJlYmFzZS4KPiB2NTogc3lzZnNfYXR0cl9pbml0Lgo+IHY2OiBTbWFsbCB0aWR5IGluIGk5MTVf
Z2VtX2FkZF9jbGllbnQuCj4gdjc6IFJlYmFzZSB0byBiZSBlbmdpbmUgY2xhc3MgYmFzZWQuCj4g
djg6Cj4gICogQWx3YXlzIGVuYWJsZSBzdGF0cy4KPiAgKiBXYWxrIGFsbCBjbGllbnQgY29udGV4
dHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KCk90aGVyIHRoYW4gc3BsaXR0aW5nIGl0IG91dCBpbnRvIGk5MTVfZHJtX2NsaWVu
dC5jIChldCBhbCkuIEl0CndvcmtzZm9ybWUuCgpIb3dldmVyLCBpdCdzIGFib3V0IGFzIHVzZWZ1
bCBhcyB0b3AsIGJ1dCB3aXRob3V0IGFueSBtZWFucyB0bwpraWxsL3N0b3AvcmVwcmlvcml0aXNl
IGNsaWVudHMgOigKClRvIGdpdmUgbWUgYWN0aW9uYWJsZSBkYXRhLCBkbyB3ZSBub3QgbmVlZCBt
b3JlIG9mIGEgcGVyZiBpbnRlcmZhY2UKd2hlcmUgZXZlbnRzIGFyZSBzZW50IGZvciBjbGllbnQg
c3RhcnQvc3RvcCBzbyB0aGF0IG9ic2VydmVycyBjYW4KcmVjb3JkIHRoZSBjb250ZXh0IHV0aWxp
c2F0aW9uIHdpdGhpbiB0aGVpciBzYW1wbGUgcGVyaW9kcz8gSSdtIHRoaW5raW5nCm9mIHRoZSAi
cGVyZiBzdGF0IHdzaW0uLi4iIHVzZSBjYXNlIHdoZXJlIGl0IGdpdmVzIG1lIGEgYnJlYWtkb3du
IG9mCmVhY2ggd29ya2xvYWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
