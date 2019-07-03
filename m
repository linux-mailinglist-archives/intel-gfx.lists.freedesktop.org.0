Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2CB5E621
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 16:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C0516E149;
	Wed,  3 Jul 2019 14:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B2589F4F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 14:10:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 07:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184752995"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 07:10:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703135805.7310-1-chris@chris-wilson.co.uk>
 <20190703135805.7310-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0123f1a2-37ef-b94f-bfae-377636236c47@linux.intel.com>
Date: Wed, 3 Jul 2019 15:10:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703135805.7310-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Pull engine w/a
 initialisation into common
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

Ck9uIDAzLzA3LzIwMTkgMTQ6NTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBuZWVkIHRvIHNl
dHVwIHRoZSB3b3JrYXJvdW5kcyBvbiBhbGwgZW5naW5lcywgd2l0aCB0aGUga25vd2xlZGdlCj4g
YWJvdXQgd2hpY2ggcGxhdGZvcm1zIGVhY2ggd29ya2Fyb3VuZCBhcHBsaWVzIHRvIGtlcHQgdG9n
ZXRoZXIgaW4gdGhlCj4gd29ya2Fyb3VuZCBsaXN0LiBBcyBzdWNoLCB3ZSBjYW4gcHVsbCB0aGUg
dy9hIGluaXRpYWxpc2F0aW9uIGludG8gdGhlCj4gY29tbW9uIHNldHVwIGFuZCB0cnkgdG8gYXZv
aWQgZHVwbGljYXRpbmcga25vd2xlZGdlIGFib3V0IHdoZW4gdG8gc2V0dXAKPiB0aGUgd29ya2Fy
b3VuZHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwg
MSAtCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgIHwgNCAr
KysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgIHwgMyAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAyICst
Cj4gICA0IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCA4
YTk3ODdjZjBjZDAuLmUzNjdkY2UyYTY5NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IEBAIC02NTcsNyArNjU3LDYgQEAgaW50IGk5MTVfZ2Vt
X2NvbnRleHRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgCUdF
TV9CVUdfT04oZGV2X3ByaXYtPmtlcm5lbF9jb250ZXh0KTsKPiAgIAlHRU1fQlVHX09OKGRldl9w
cml2LT5wcmVlbXB0X2NvbnRleHQpOwo+ICAgCj4gLQlpbnRlbF9lbmdpbmVfaW5pdF9jdHhfd2Eo
ZGV2X3ByaXYtPmVuZ2luZVtSQ1MwXSk7Cj4gICAJaW5pdF9jb250ZXh0cyhkZXZfcHJpdik7Cj4g
ICAKPiAgIAkvKiBsb3dlc3QgcHJpb3JpdHk7IGlkbGUgdGFzayAqLwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gaW5kZXggYzFmYjVmYTM5NTJlLi4yNWMwMzdj
OGI1NTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+
IEBAIC02MzYsNiArNjM2LDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfZW5naW5lX3NldHVwX2NvbW1v
bihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAJZW5naW5lLT5zc2V1ID0KPiAg
IAkJaW50ZWxfc3NldV9mcm9tX2RldmljZV9pbmZvKCZSVU5USU1FX0lORk8oZW5naW5lLT5pOTE1
KS0+c3NldSk7Cj4gICAKPiArCWludGVsX2VuZ2luZV9pbml0X3dvcmthcm91bmRzKGVuZ2luZSk7
Cj4gKwlpbnRlbF9lbmdpbmVfaW5pdF93aGl0ZWxpc3QoZW5naW5lKTsKPiArCWludGVsX2VuZ2lu
ZV9pbml0X2N0eF93YShlbmdpbmUpOwo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggMWU4NWUwNGM1OGM0Li45ZWUzMjM2
NzNlNzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0yODA2LDkg
KzI4MDYsNiBAQCBpbnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb25faW5pdChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAJaWYgKHJldCkKPiAgIAkJcmV0dXJuIHJldDsKPiAg
IAo+IC0JaW50ZWxfZW5naW5lX2luaXRfd29ya2Fyb3VuZHMoZW5naW5lKTsKPiAtCWludGVsX2Vu
Z2luZV9pbml0X3doaXRlbGlzdChlbmdpbmUpOwo+IC0KPiAgIAlpZiAoaW50ZWxfaW5pdF93b3Jr
YXJvdW5kX2JiKGVuZ2luZSkpCj4gICAJCS8qCj4gICAJCSAqIFdlIGNvbnRpbnVlIGV2ZW4gaWYg
d2UgZmFpbCB0byBpbml0aWFsaXplIFdBIGJhdGNoCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggYTkwOGQ4MjlkNmJkLi5kN2RhMDk0MTcwYmUg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBA
QCAtMTM2NCw3ICsxMzY0LDcgQEAgdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF93b3JrYXJvdW5kcyhz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICB7Cj4gICAJc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsID0gJmVuZ2luZS0+d2FfbGlzdDsKPiAgIAo+IC0JaWYgKEdFTV9XQVJOX09OKElO
VEVMX0dFTihlbmdpbmUtPmk5MTUpIDwgOCkpCj4gKwlpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkx
NSkgPCA4KQo+ICAgCQlyZXR1cm47Cj4gICAKPiAgIAl3YV9pbml0X3N0YXJ0KHdhbCwgZW5naW5l
LT5uYW1lKTsKPiAKCk9uZSBsZXNzIGk5MTUtPmVuZ2luZXNbUkNTMF0sIGdvb2QuIDopCgpSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2Fy
ZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
