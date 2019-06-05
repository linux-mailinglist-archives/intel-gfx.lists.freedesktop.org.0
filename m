Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7702436346
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 20:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6395B89581;
	Wed,  5 Jun 2019 18:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1973D89581
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 18:22:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 11:22:07 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 05 Jun 2019 11:22:07 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190604231529.8332-1-daniele.ceraolospurio@intel.com>
 <op.z2w18ahdxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <012b3078-7cb7-e47d-21c2-4064839fd5c4@intel.com>
Date: Wed, 5 Jun 2019 11:21:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <op.z2w18ahdxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/wopcm: update default size for
 gen11+
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzUvMTkgNzo1MSBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBPbiBXZWQsIDA1
IEp1biAyMDE5IDAxOjE1OjI5ICswMjAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIAo+IDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPiAKPj4gVGhlIHNpemUgaGFzIGJl
ZW4gaW5jcmVhc2VkIHRvIDJNQiBzdGFydGluZyBmcm9tIGdlbjExLiBHdUMgYW5kIEh1QyBGV3MK
PiAKPiBuaXQ6IHMvZ2VuMTEvR2VuMTEKPiAKPj4gZml0IGluIDFNQiBzbyB3ZSB3ZXJlIGZpbmUg
ZXZlbiB3aXRoIHRoZSBsZWdhY3kgZGVmaW5lLCBidXQgbGV0J3Mgc3RpbGwKPj4gbW92ZSB0byB0
aGUgY29ycmVjdCBvbmUgYmVmb3JlIHRoZSBibG9icyBncm93IHRvIGF2b2lkIGJlaW5nIGNhdWdo
dCBvZmYKPj4gZ3VhcmQgaW4gdGhlIGZ1dHVyZS4KPj4KPj4gQnNwZWM6IDQ0OTgyCj4gCj4gSSB0
aGluayBmb3IgSUNMIHRoaXMgc2hvdWxkIGJlIDEyNjkwCj4gCj4+IFNpZ25lZC1vZmYtYnk6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+
IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gLS0t
Cj4+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyB8IDEwICsrKysrKystLS0K
Pj4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyAKPj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCj4+IGluZGV4IGY4MmE0MTVlYTJiYS4u
NmNiOTkzZWVhMjA2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93
b3BjbS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKPj4gQEAg
LTQxLDggKzQxLDkgQEAKPj4gwqAgKiBjb250ZXh0KS4KPj4gwqAgKi8KPj4gLS8qIERlZmF1bHQg
V09QQ00gc2l6ZSAxTUIuICovCj4+IC0jZGVmaW5lIEdFTjlfV09QQ01fU0laRcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKDEwMjQgKiAxMDI0KQo+PiArLyogRGVmYXVsdCBXT1BDTSBzaXplIGlzIDJN
QiBmcm9tIGdlbjExLCAxTUIgb24gcHJldmlvdXMgcGxhdGZvcm1zICovCj4gCj4gbml0OiBzL2dl
bjExL0dlbjExCj4gCj4+ICsjZGVmaW5lIEdFTjExX1dPUENNX1NJWkXCoMKgwqDCoMKgwqDCoCAo
U1pfMk0pCj4+ICsjZGVmaW5lIEdFTjlfV09QQ01fU0laRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KFNaXzFNKQo+PiDCoC8qIDE2S0IgV09QQ00gKFJTVkQgV09QQ00pIGlzIHJlc2VydmVkIGZyb20g
SHVDIGZpcm13YXJlIHRvcC4gKi8KPj4gwqAjZGVmaW5lIFdPUENNX1JFU0VSVkVEX1NJWkXCoMKg
wqDCoMKgwqDCoCAoMTYgKiAxMDI0KQo+PiBAQCAtNzEsNyArNzIsMTAgQEAKPj4gwqAgKi8KPj4g
wqB2b2lkIGludGVsX3dvcGNtX2luaXRfZWFybHkoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkK
Pj4gwqB7Cj4+IC3CoMKgwqAgd29wY20tPnNpemUgPSBHRU45X1dPUENNX1NJWkU7Cj4+ICvCoMKg
wqAgaWYgKElOVEVMX0dFTih3b3BjbV90b19pOTE1KHdvcGNtKSkgPj0gMTEpCj4+ICvCoMKgwqDC
oMKgwqDCoCB3b3BjbS0+c2l6ZSA9IEdFTjExX1dPUENNX1NJWkU7Cj4+ICvCoMKgwqAgZWxzZQo+
PiArwqDCoMKgwqDCoMKgwqAgd29wY20tPnNpemUgPSBHRU45X1dPUENNX1NJWkU7Cj4gCj4gV2hp
bGUgaGVyZSwgbWF5YmUgd2Ugc2hvdWxkIG5vdCB0cnkgdG8gc2V0dXAgV09QQ00gc2l6ZSBvbiBw
cmUtR2VuOQo+IHBsYXRmb3JtcyA/IFRoZW4gd2UgY2FuIGRyb3AgYmVsb3cgbG9nIGlmIFdPUENN
IGlzIHplcm8vbm90IGF2YWlsYWJsZS4KCkFyZSB5b3Ugb2sgaWYgSSBqdXN0IHJldHVybiBlYXJs
eSBpZiAhSEFTX0dVQygpLCB0byBtYWtlIGl0IG5vdCAKZ2VuLXNwZWNpZmljPwoKRGFuaWVsZQoK
PiAKPj4gwqDCoMKgwqBEUk1fREVCVUdfRFJJVkVSKCJXT1BDTSBzaXplOiAldUtpQlxuIiwgd29w
Y20tPnNpemUgLyAxMDI0KTsKPj4gwqB9Cj4gCj4gV2l0aCBhYm92ZSwKPiBSZXZpZXdlZC1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
