Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C17BC94
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 11:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5F488E34;
	Wed, 31 Jul 2019 09:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FC2988E34
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 09:05:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17753591-1500050 for multiple; Wed, 31 Jul 2019 10:05:46 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
 <20190730230743.19542-2-daniele.ceraolospurio@intel.com>
 <op.z5sbbvfmxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z5sbbvfmxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156456394534.6373.2568753790875404194@skylake-alporthouse-com>
Date: Wed, 31 Jul 2019 10:05:45 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/uc: Move uC WOPCM setup in
 uc_init_hw
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDEwOjAwOjU3KQo+IE9uIFdlZCwg
MzEgSnVsIDIwMTkgMDE6MDc6NDAgKzAyMDAsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gIAo+IDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPiAKPiA+IFRoZSByZWdpc3Rl
ciB3ZSB3cml0ZSBhcmUgbm90IFdPUENNIHJlZ3MgYnV0IHVDIG9uZXMgcmVsYXRlZCB0byBob3cK
PiA+IEd1QyBhbmQgSHVDIGFyZSBnb2luZyB0byB1c2UgdGhlIFdPUENNLCBzbyBpdCBtYWtlcyBs
b2dpY2FsIHNlbnNlCj4gPiBmb3IgdGhlbSB0byBiZSBwcm9ncmFtbWVkIGFzIHBhcnQgb2YgdWNf
aW5pdF9ody4gVGhlIFdPUENNIG1hcCBvbiB0aGUKPiA+IG90aGVyIHNpZGUgaXMgbm90IHVDLXNw
ZWNpZmljIChhbHRob3VnaCB0aGF0IGlzIG91ciBtYWluIHVzZS1jYXNlKSwgc28KPiA+IGtlZXAg
dGhhdCBzZXBhcmF0ZS4KPiA+Cj4gPiB2MjogbW92ZSB3cml0ZV9hbmRfdmVyaWZ5IHRvIHVuY29y
ZSwgZml4IGxvZywgcmUtdXNlIGVycl9vdXQgdGFnLAo+ID4gICAgIGFkZCBpbnRlbF93b3BjbV9n
dWNfYmFzZSwgZml4IGxvZwo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBDYzogTWljaGFsIFdh
amRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiAKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91bmNvcmUuaAo+ID4gQEAgLTM5Myw2ICszOTMsMTggQEAgc3RhdGljIGlubGluZSB2
b2lkIGludGVsX3VuY29yZV9ybXdfZncoc3RydWN0ICAKPiA+IGludGVsX3VuY29yZSAqdW5jb3Jl
LAo+ID4gICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgcmVnLCB2YWwpOwo+ID4g
IH0KPiA+ICtzdGF0aWMgaW5saW5lIGludCBpbnRlbF91bmNvcmVfd3JpdGVfYW5kX3ZlcmlmeShz
dHJ1Y3QgaW50ZWxfdW5jb3JlICAKPiA+ICp1bmNvcmUsCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwsCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIG1hc2ssIHUz
MiBleHBlY3RlZF92YWwpCj4gPiArewo+ID4gKyAgICAgdTMyIHJlZ192YWw7Cj4gPiArCj4gPiAr
ICAgICBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCByZWcsIHZhbCk7Cj4gPiArICAgICByZWdf
dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCByZWcpOwo+ID4gKwo+ID4gKyAgICAgcmV0
dXJuIChyZWdfdmFsICYgbWFzaykgIT0gZXhwZWN0ZWRfdmFsID8gLUVJTlZBTCA6IDA7Cj4gPiAr
fQo+IAo+IG5pdDogSSdtIG5vdCBzdXJlIHRoYXQgLUVJTlZBTCBpcyB0aGUgYmVzdCBjaG9pY2Ug
KG5vdCBzdXJlIGFib3V0Cj4gLUVOT0RBVEEgb3IgLUVOT0tFWSBlaXRoZXIpIHRoYXQncyB3aHkg
SSB3YW50ZWQgdG8gdXNlIGJvb2wgOykKCkVOWElPPyBJdCdzIGEgYnJpZGdlIHdlIGNhbiBjcm9z
cyBsYXRlci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
