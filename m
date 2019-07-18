Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DF6C90B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 08:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702BB6E30E;
	Thu, 18 Jul 2019 06:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FF96E30E
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 06:03:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 23:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,276,1559545200"; d="scan'208";a="158688082"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 23:03:27 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-17-lucas.demarchi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1518d0ab-38d6-c773-11b0-93490bcdc017@linux.intel.com>
Date: Thu, 18 Jul 2019 07:03:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190713010940.17711-17-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/22] drm/i915/tgl: Implement Wa_1604555607
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

Ck9uIDEzLzA3LzIwMTkgMDI6MDksIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBGcm9tOiBNaWNo
ZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IAo+IEltcGxlbWVudCBXYV8x
NjA0NTU1NjA3IChzZXQgdGhlIERTIHBhaXJpbmcgdGltZXIgdG8gMTI4IGN5Y2xlcykuCj4gRkZf
TU9ERTIgaXMgcGFydCBvZiB0aGUgcmVnaXN0ZXIgc3RhdGUgY29udGV4dCwgdGhhdCdzIHdoeSBp
dCBpcwo+IGltcGxlbWVudGVkIGhlcmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVy
cnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA4ICsrKysrKysrCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgNSArKysrKwo+ICAgMiBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggZWQ5MjczOGEwNzM1Li4zNDdiYTE2MzQ2ZDMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAt
NTg1LDYgKzU4NSwxNCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3Jr
YXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAkJCQkgICAg
IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgIHsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IGVuZ2luZS0+aTkxNTsKPiArCXUzMiB2YWw7Cj4gKwo+ICsJLyogV2Ff
MTYwNDU1NTYwNzp0Z2wgKi8KPiArCXZhbCA9IEk5MTVfUkVBRChGRl9NT0RFMik7CgpTdWdnZXN0
IHRvIHN3aXRjaCB0byB1bmNvcmUgbW1pbyBhbmQgZ2V0IGl0IGZyb20gdGhlIGVuZ2luZS4KClJl
Z2FyZHMsCgpUdnJ0a28KClAuUy4gUmVtb3ZlZCBNaWNoZWwgZnJvbSBDQy4KCj4gKwl2YWwgJj0g
fkZGX01PREUyX1REU19USU1FUl9NQVNLOwo+ICsJdmFsIHw9IEZGX01PREUyX1REU19USU1FUl8x
Mjg7Cj4gKwl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJ
TUVSX01BU0ssIHZhbCk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCj4gaW5kZXggMGEyNjU3Y2UyODRmLi5kMDQ4YzM0OWUwN2UgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNzc4OSw2ICs3Nzg5LDExIEBAIGVudW0gewo+ICAgI2Rl
ZmluZSAgIFBJWEVMX1JPVU5ESU5HX1RSVU5DX0ZCX1BBU1NUSFJVIAkoMSA8PCAxNSkKPiAgICNk
ZWZpbmUgICBQRVJfUElYRUxfQUxQSEFfQllQQVNTX0VOCQkoMSA8PCA3KQo+ICAgCj4gKyNkZWZp
bmUgRkZfTU9ERTIJCQlfTU1JTygweDY2MDQpCj4gKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElN
RVJfU0hJRlQJKDE2KQo+ICsjZGVmaW5lICAgRkZfTU9ERTJfVERTX1RJTUVSXzEyOAkoNCA8PCBG
Rl9NT0RFMl9URFNfVElNRVJfU0hJRlQpCj4gKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJf
TUFTSwkoMHhmZiA8PCBGRl9NT0RFMl9URFNfVElNRVJfU0hJRlQpCj4gKwo+ICAgLyogUENIICov
Cj4gICAKPiAgICNkZWZpbmUgUENIX0RJU1BMQVlfQkFTRQkweGMwMDAwdQo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
