Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9BB64114
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 08:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1F689388;
	Wed, 10 Jul 2019 06:21:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF3189388
 for <Intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 06:21:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 23:21:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,473,1557212400"; d="scan'208";a="165979704"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by fmsmga008.fm.intel.com with ESMTP; 09 Jul 2019 23:21:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
 <20190709210620.15805-2-tvrtko.ursulin@linux.intel.com>
 <156270659276.11940.12155160842593062182@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <53e16003-66d0-ecea-1ecf-7964d2d59227@linux.intel.com>
Date: Wed, 10 Jul 2019 07:21:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156270659276.11940.12155160842593062182@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Fix GEN8_MCR_SELECTOR
 programming
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

Ck9uIDA5LzA3LzIwMTkgMjI6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTA5IDIyOjA2OjE3KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBmbHMgcmV0dXJucyBiaXQgcG9zaXRpb25z
IHN0YXJ0aW5nIGZyb20gb25lIGZvciB0aGUgbHNiIGFuZCB0aGUgTUNSCj4+IHJlZ2lzdGVyIGV4
cGVjdHMgemVybyBiYXNlZCAoc3ViKXNsaWNlIGFkZHJlc3NpbmcuCj4+Cj4+IEluY29ycmVudCBN
Q1IgcHJvZ3JhbW1pbmcgY2FuIGhhdmUgdGhlIGVmZmVjdCBvZiBkaXJlY3RpbmcgTU1JTyByZWFk
cyBvZgo+PiByZWdpc3RlcnMgaW4gdGhlIDB4YjEwMC0weGIzZmYgcmFuZ2UgdG8gaW52YWxpZCBz
dWJzbGljZSByZXR1cm5pbmcgemVyb2VzCj4+IGluc3RlYWQgb2YgYWN0dWFsIGNvbnRlbnQuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4+IEZpeGVzOiAxZTQwZDRhZWE1N2IgKCJkcm0vaTkxNS9jbmw6IEltcGxlbWVudCBXYVBy
b2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lmaWNNbWlvUmVhZHMiKQo+IAo+IE1ha2VzIHNl
bnNlIHRvIG1lLCBqdXN0IGZyb20gbXkgbWVhZ3JlIHVuZGVyc3RhbmRpbmcgb2YgYXJyYXlzCj4g
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IAo+
PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDkg
KysrKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4g
aW5kZXggYmRmMjc5ZmEzYjJlLi5lZTE1ZDE5MzQ0ODYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4+IEBAIC05NzUsOSArOTc1LDE0IEBAIGNvbnN0
IGNoYXIgKmk5MTVfY2FjaGVfbGV2ZWxfc3RyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCBpbnQgdHlwZSkKPj4gICB1MzIgaW50ZWxfY2FsY3VsYXRlX21jcl9zX3NzX3NlbGVjdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAgewo+PiAgICAgICAgICBjb25zdCBz
dHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1
Owo+PiArICAgICAgIHVuc2lnbmVkIGludCBzbGljZSA9IGZscyhzc2V1LT5zbGljZV9tYXNrKSAt
IDE7Cj4gCj4gSSdkIHZvdGUgZm9yIF9fZmxzKCkgaGVyZSBpbnN0ZWFkIG9mIGZscygpIC0gMS4K
CldpdGggZmxzKCkgSSBnZXQgemVybyBzbGljZSBtYXNrIGNoZWNrIGZvciBmcmVlLCBpbiB0aGUg
YXJyYXkgb3V0IG9mIApib3VuZHMgY2hlY2sgYmVsb3cuCgo+IAo+PiArICAgICAgIHVuc2lnbmVk
IGludCBzdWJzbGljZTsKPj4gICAgICAgICAgdTMyIG1jcl9zX3NzX3NlbGVjdDsKPj4gLSAgICAg
ICB1MzIgc2xpY2UgPSBmbHMoc3NldS0+c2xpY2VfbWFzayk7Cj4+IC0gICAgICAgdTMyIHN1YnNs
aWNlID0gZmxzKHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdKTsKPj4gKwo+PiArICAgICAgIEdF
TV9CVUdfT04oc2xpY2UgPj0gQVJSQVlfU0laRShzc2V1LT5zdWJzbGljZV9tYXNrKSk7Cj4+ICsg
ICAgICAgc3Vic2xpY2UgPSBmbHMoc3NldS0+c3Vic2xpY2VfbWFza1tzbGljZV0pOwo+PiArICAg
ICAgIEdFTV9CVUdfT04oIXN1YnNsaWNlKTsKPj4gKyAgICAgICBzdWJzbGljZS0tOwo+IAo+IEFu
ZCBJIHRoaW5rIHdlJ3JlIGEgYml0IGxhdGUgb24gdGhlIEJVR19PTiBoZXJlIChpdCdzIHNob3Vs
ZG4ndCBjaGFuZ2UKPiBhZnRlciBwcm9iaW5nKSBzbyBjb3VsZCBiZSBoYXBwaWx5IHJlZHVjZWQg
dG8gX19mbHMoKS4KCldoeSBsYXRlPyBUaGlzIG9uZSBpcyBub3QgY2hlY2tpbmcgdGhlIGFycmF5
IGZvciBvdXQgb2YgYm91bmRzLCBqdXN0IGlmIAp6ZXJvIHN1YnNsaWNlIG1hc2sgaGFwcGVucyB0
byBiZSBpbiBhIHZhbGlkIHNsb3QuIFRvbyBwYXJhbm9pZD8KClJlZ2FyZHMsCgpUdnJ0a28KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
