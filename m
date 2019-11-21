Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3401052C8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 14:18:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE836EE3F;
	Thu, 21 Nov 2019 13:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A109E6EE3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 13:18:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 05:18:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="197239442"
Received: from fbielich-mobl2.ger.corp.intel.com (HELO [10.249.33.14])
 ([10.249.33.14])
 by orsmga007.jf.intel.com with ESMTP; 21 Nov 2019 05:18:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
 <20191112092854.869-15-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ac7b3a9a-f3e7-740f-aa26-7d05987a0c00@intel.com>
Date: Thu, 21 Nov 2019 15:18:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191112092854.869-15-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 15/27] drm/i915/gt: Expose engine->mmio_base
 via sysfs
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

T24gMTIvMTEvMjAxOSAxMToyOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFVzZSB0aGUgcGVyLWVu
Z2luZSBzeXNmcyBkaXJlY3RvcnkgdG8gbGV0IHVzZXJzcGFjZSBkaXNjb3ZlciB0aGUKPiBtbWlv
X2Jhc2Ugb2YgZWFjaCBlbmdpbmUuIFByaW9yIHRvIHJlY2VudCBnZW5lcmF0aW9ucywgdGhlIHVz
ZXIKPiBhY2Nlc3NpYmxlIHJlZ2lzdGVycyBvbiBlYWNoIGVuZ2luZSBhcmUgYXQgYSBmaXhlZCBv
ZmZzZXQgcmVsYXRpdmUgdG8KPiBlYWNoIGVuZ2luZSAtLSBidXQgcmVxdWlyZSBhYnNvbHV0ZSBh
ZGRyZXNzaW5nLiBBcyB0aGUgYWJzb2x1dGUgYWRkcmVzcwo+IGRlcGVuZHMgb24gdGhlIGFjdHVh
bCBwaHlzaWNhbCBlbmdpbmUsIHRoaXMgaXMgbm90IGFsd2F5cyBwb3NzaWJsZSB0bwo+IGRldGVy
bWluZSBmcm9tIHVzZXJzcGFjZSAoZm9yIGV4YW1wbGUgaWNsIG1heSBleHBvc2UgdmNzMSBvciB2
Y3MyIGFzIHRoZQo+IHNlY29uZCB2Y3MgZW5naW5lKS4gTWFrZSB0aGlzIGVhc3kgZm9yIHVzZXJz
cGFjZSB0byBkaXNjb3ZlciBieQo+IHByb3ZpZGluZyB0aGUgbW1pb19iYXNlIGluIHN5c2ZzLgo+
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CgoKU291bmRzIGxpa2UgYSBnb29kIGlkZWEgOgoKCkFja2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CgoKSSBndWVzcyB0aGlzIGJlaW5nIHVu
ZGVyIHVuc3RhYmxlIG1ha2UgdGhpcyB1bnN1aXRhYmxlIHRvIGV4cG9zZSB0aHJvdWdoIAppOTE1
X3F1ZXJ5PwoKCi1MaW9uZWwKCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3N5c2ZzLmMgfCAxMCArKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3N5c2ZzLmMKPiBpbmRleCBkZjI2M2FmM2E5ZWEuLmFiZGRkOGQwZjlhZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jCj4gQEAgLTQ4LDYgKzQ4
LDE1IEBAIGluc3Rfc2hvdyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmli
dXRlICphdHRyLCBjaGFyICpidWYpCj4gICBzdGF0aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIGlu
c3RfYXR0ciA9Cj4gICBfX0FUVFIoaW5zdGFuY2UsIDA0NDQsIGluc3Rfc2hvdywgTlVMTCk7Cj4g
ICAKPiArc3RhdGljIHNzaXplX3QKPiArbW1pb19zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBz
dHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKPiArewo+ICsJcmV0dXJuIHNw
cmludGYoYnVmLCAiMHgleFxuIiwga29ial90b19lbmdpbmUoa29iaiktPm1taW9fYmFzZSk7Cj4g
K30KPiArCj4gK3N0YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgbW1pb19hdHRyID0KPiArX19B
VFRSKG1taW9fYmFzZSwgMDQ0NCwgbW1pb19zaG93LCBOVUxMKTsKPiArCj4gICBzdGF0aWMgY29u
c3QgY2hhciAqIGNvbnN0IHZjc19jYXBzW10gPSB7Cj4gICAJW2lsb2cyKEk5MTVfVklERU9fQ0xB
U1NfQ0FQQUJJTElUWV9IRVZDKV0gPSAiaGV2YyIsCj4gICAJW2lsb2cyKEk5MTVfVklERU9fQU5E
X0VOSEFOQ0VfQ0xBU1NfQ0FQQUJJTElUWV9TRkMpXSA9ICJzZmMiLAo+IEBAIC0xNzAsNiArMTc5
LDcgQEAgdm9pZCBpbnRlbF9lbmdpbmVzX2FkZF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKPiAgIAkJJm5hbWVfYXR0ci5hdHRyLAo+ICAgCQkmY2xhc3NfYXR0ci5hdHRyLAo+
ICAgCQkmaW5zdF9hdHRyLmF0dHIsCj4gKwkJJm1taW9fYXR0ci5hdHRyLAo+ICAgCQkmY2Fwc19h
dHRyLmF0dHIsCj4gICAJCSZhbGxfY2Fwc19hdHRyLmF0dHIsCj4gICAJCU5VTEwKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
