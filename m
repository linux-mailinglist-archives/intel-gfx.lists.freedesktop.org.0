Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC08F0B8
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 08:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB84A89381;
	Tue, 30 Apr 2019 06:53:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B873589381
 for <Intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 06:53:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 23:53:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="342021464"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.88.66])
 by fmsmga005.fm.intel.com with ESMTP; 29 Apr 2019 23:53:03 -0700
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190418100634.984-1-tvrtko.ursulin@linux.intel.com>
References: <20190415114307.1356-1-tvrtko.ursulin@linux.intel.com>
 <20190418100634.984-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <155660718209.4262.16653554075363334160@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 30 Apr 2019 09:53:02 +0300
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Whitelist
 GEN9_SLICE_COMMON_ECO_CHICKEN1
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
Cc: kevin.ma@intel.com, xiaogang.li@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNC0xOCAxMzowNjozNCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFdhRW5hYmxlU3RhdGVD
YWNoZVJlZGlyZWN0VG9DUyBjb250ZXh0IHdvcmthcm91bmQgY29uZmlndXJlcyB0aGUgTDMgY2Fj
aGUKPiB0byBiZW5lZml0IDNkIHdvcmtsb2FkcyBidXQgbWVkaWEgaGFzIGRpZmZlcmVudCByZXF1
aXJlbWVudHMuCj4gCj4gUmVtb3ZlIHRoZSB3b3JrYXJvdW5kIGFuZCB3aGl0ZWxpc3QgdGhlIHJl
Z2lzdGVyIHRvIGFsbG93IGFueSB1c2Vyc3BhY2UKPiBjb25maWd1cmUgdGhlIGJlaGF2aW91ciB0
byB0aGVpciBsaWtpbmcuCj4gCj4gdjI6Cj4gICogUmVtb3ZlIHRoZSB3b3JrYXJvdW5kIGFwYXJ0
IGZyb20gYWRkaW5nIHRoZSB3aGl0ZWxpc3QuCgpQbGVhc2UgYWRkIHRoZSBpbmZvcm1hdGlvbiB0
aGF0IHJlbW92YWwgb2YgdGhlIHdvcmthcm91bmQgZG9lc24ndCBjYXVzZQphbnkgaWxsIGVmZmVj
dHMgd2l0aCBvbGQgTWVzYSBhbmQgYWRkIEZpeGVzOiwgc28gdGhpcyBnZXRzIHBpY2tlZCB1cCB0
bwo1LjIuIE5vIG5lZWQgZm9yIHN0YWJsZSBhcyBJY2VsYWtlIGlzIGFscGhhX3N1cHBvcnQgYmVm
b3JlIDUuMgoKV2l0aCB0aG9zZSBjaGFuZ2VzIHRoaXMgaXM6CgpSZXZpZXdlZC1ieTogSm9vbmFz
IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9v
bmFzCgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGlu
dGVsLmNvbT4KPiBDYzoga2V2aW4ubWFAaW50ZWwuY29tCj4gQ2M6IHhpYW9nYW5nLmxpQGludGVs
LmNvbQo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
NyArKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcmthcm91
bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXgg
YjNjYmVkMWVlMWM5Li5iYWVkMTg2NzI0ZDIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dvcmthcm91bmRzLmMKPiBAQCAtNTU2LDEwICs1NTYsNiBAQCBzdGF0aWMgdm9pZCBpY2xf
Y3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAg
ICAgICAgICAgICAgICBXQV9TRVRfQklUX01BU0tFRChHRU43X1JPV19DSElDS0VOMiwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VOMTFfVERMX0NMT0NLX0dBVElOR19GSVhf
RElTQUJMRSk7Cj4gIAo+IC0gICAgICAgLyogV2FFbmFibGVTdGF0ZUNhY2hlUmVkaXJlY3RUb0NT
OmljbCAqLwo+IC0gICAgICAgV0FfU0VUX0JJVF9NQVNLRUQoR0VOOV9TTElDRV9DT01NT05fRUNP
X0NISUNLRU4xLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgR0VOMTFfU1RBVEVfQ0FDSEVf
UkVESVJFQ1RfVE9fQ1MpOwo+IC0KPiAgICAgICAgIC8qIFdhXzIwMDY2NjUxNzM6aWNsIChwcmUt
cHJvZCkgKi8KPiAgICAgICAgIGlmIChJU19JQ0xfUkVWSUQoaTkxNSwgSUNMX1JFVklEX0EwLCBJ
Q0xfUkVWSURfQTApKQo+ICAgICAgICAgICAgICAgICBXQV9TRVRfQklUX01BU0tFRChHRU4xMV9D
T01NT05fU0xJQ0VfQ0hJQ0tFTjMsCj4gQEAgLTEwNzAsNiArMTA2Niw5IEBAIHN0YXRpYyB2b2lk
IGljbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGk5MTVfd2FfbGlzdCAqdykKPiAgCj4gICAgICAg
ICAvKiBXYUFsbG93VU1EVG9Nb2RpZnlTYW1wbGVyTW9kZTppY2wgKi8KPiAgICAgICAgIHdoaXRl
bGlzdF9yZWcodywgR0VOMTBfU0FNUExFUl9NT0RFKTsKPiArCj4gKyAgICAgICAvKiBXYUVuYWJs
ZVN0YXRlQ2FjaGVSZWRpcmVjdFRvQ1M6aWNsICovCj4gKyAgICAgICB3aGl0ZWxpc3RfcmVnKHcs
IEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSk7Cj4gIH0KPiAgCj4gIHZvaWQgaW50ZWxf
ZW5naW5lX2luaXRfd2hpdGVsaXN0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAt
LSAKPiAyLjE5LjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
