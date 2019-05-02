Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F3111B42
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E2E8924C;
	Thu,  2 May 2019 14:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907D48924C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:20:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:20:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140683098"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 07:20:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-6-chris@chris-wilson.co.uk>
 <6055093b-e46b-92f1-d8e6-02cbbb29a653@linux.intel.com>
 <155680398117.9023.3976794723243757249@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <607ddfc5-3519-55c4-0f8d-809fdbfcbc3e@linux.intel.com>
Date: Thu, 2 May 2019 15:20:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155680398117.9023.3976794723243757249@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915: Cancel retire_worker on
 parking
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

Ck9uIDAyLzA1LzIwMTkgMTQ6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAyIDE0OjI5OjUwKQo+Pgo+PiBPbiAwMS8wNS8yMDE5IDEyOjQ1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBSZXBsYWNlIHRoZSByYWN5IGNvbnRpbnVhdGlvbiBj
aGVjayB3aXRoaW4gcmV0aXJlX3dvcmsgd2l0aCBhIGRlZmluaXRlCj4+PiBraWxsLXN3aXRjaCBv
biBpZGxpbmcuIFRoZSByYWNlIHdhcyBiZWluZyBleHBvc2VkIGJ5IGdlbV9jb25jdXJyZW50X2Js
aXQKPj4+IHdoZXJlIHRoZSByZXRpcmVfd29ya2VyIHdvdWxkIGJlIHRlcm1pbmF0ZWQgdG9vIGVh
cmx5IGxlYXZpbmcgdXMKPj4+IHNwaW5uaW5nIGluIGRlYnVnZnMvaTkxNV9kcm9wX2NhY2hlcyB3
aXRoIG5vdGhpbmcgZmx1c2hpbmcgdGhlCj4+PiByZXRpcmVtZW50IHF1ZXVlLgo+Pj4KPj4+IEFs
dGhvdWdoIHRoYXQgdGhlIGlndCBpcyB0cnlpbmcgdG8gaWRsZSBmcm9tIG9uZSBjaGlsZCB3aGls
ZSBzdWJtaXR0aW5nCj4+PiBmcm9tIGFub3RoZXIgbWF5IGJlIGEgY29udHJpYnV0aW5nIGZhY3Rv
ciBhcyB0byB3aHkgIGl0IHJ1bnMgc28gc2xvd2x5Li4uCj4+Pgo+Pj4gVGVzdGNhc2U6IGlndC9n
ZW1fY29uY3VycmVudF9ibGl0Cj4+PiBGaXhlczogNzlmZmFjODU5OWM0ICgiZHJtL2k5MTU6IElu
dmVydCB0aGUgR0VNIHdha2VyZWYgaGllcmFyY2h5IikKPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX3BtLmMgICAgICAgICAgICAgfCAxOCArKysrKysrKysrKystLS0tLS0K
Pj4+ICAgIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jICAgfCAg
MSAtCj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3Bt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCj4+PiBpbmRleCBhZTkxYWQ3
Y2IzMWUuLmIyMzliNTVmODRjZCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX3BtLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3Bt
LmMKPj4+IEBAIC0zMCwxNSArMzAsMjMgQEAgc3RhdGljIHZvaWQgaWRsZV93b3JrX2hhbmRsZXIo
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+Pj4gICAgewo+Pj4gICAgICAgIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0KPj4+ICAgICAgICAgICAgICAgIGNvbnRhaW5lcl9vZih3b3Jr
LCB0eXBlb2YoKmk5MTUpLCBnZW0uaWRsZV93b3JrKTsKPj4+ICsgICAgIGJvb2wgcmVzdGFydCA9
IHRydWU7Cj4+PiAgICAKPj4+ICsgICAgIGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmaTkxNS0+
Z2VtLnJldGlyZV93b3JrKTsKPj4+ICAgICAgICBtdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKPj4+ICAgIAo+Pgo+PiBZb3UgZG9uJ3Qgd2FudCB0byBydW4gYW5vdGhlciByZXRp
cmUgaGVyZT8gU2luY2UgdGhlIHJldGlyZSB3b3JrZXIgbWlnaHQKPj4gaGF2ZSBqdXN0IGJlZW4g
Y2FuY2VsZWQgSSB0aG91Z2h0IHlvdSBzaG91bGQuCj4gCj4gV2h5IHRob3VnaD8gSWYgdGhlcmUg
YXJlIHJldGlyZXMgb3V0c3RhbmRpbmcsIHdlIHdvbid0IHNsZWVwIGFuZCB3YW50IHRvCj4gZGVm
ZXIgcGFya2luZyB1bnRpbCBhZnRlciB0aGUgbmV4dCBjeWNsZS4KCkluIHRoaXMgY2FzZSB3aGF0
IGlzIHRoZSBwb2ludCBvZiBjYW5jZWxfZGVsYXllZF93b3JrXypzeW5jKiBhbmQgbm90IApqdXN0
IHRoZSBhc3luYyBjYW5jZWw/CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
