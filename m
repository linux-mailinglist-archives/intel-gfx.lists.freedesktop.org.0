Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 854FCDA6A1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33286E461;
	Thu, 17 Oct 2019 07:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC526E461
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:46:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:46:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="397435183"
Received: from ksiamitx-mobl.ger.corp.intel.com (HELO [10.249.41.46])
 ([10.249.41.46])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2019 00:46:52 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191017072009.31539-1-umesh.nerlige.ramappa@intel.com>
 <20191017072009.31539-3-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6407bc80-c3ca-9c31-881d-df6bf4e71ae4@intel.com>
Date: Thu, 17 Oct 2019 10:46:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017072009.31539-3-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable OAR context
 save/restore of performance counters
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTcvMTAvMjAxOSAxMDoyMCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IEZyb206
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KCgpBbHNv
IHB1dCB5b3Vyc2VsZiBhcyB0aGUgYXV0aG9yIDspCgoKQW5kIGZpbmFsbHkgcHV0IHRoYXQgcGF0
Y2ggYmVmb3JlIHRoZSBvdGhlciBzbyB0aGF0IHdlIG9uY2UgcGVyZiBzdXBwb3J0IAppcyBlbmFi
bGVkLCBhbGwgdGhlIGZlYXR1cmVzIGFyZSB0aGVyZS4KCgpDaGVlcnMsCgotTGlvbmVsCgoKPgo+
IFdlIHdhbnQgdGhpcyBzbyB3ZSBjYW4gcHJlZW1wdCBwZXJmb3JtYW5jZSBxdWVyaWVzIGFuZCBr
ZWVwIHRoZSBzeXN0ZW0KPiByZXNwb25zaXZlIGV2ZW4gd2hlbiBsb25nIHJ1bm5pbmcgcXVlcmll
cyBhcmUgb25nb2luZy4gV2UgYXZvaWQgZG9pbmcKPiBpdCBmb3IgYWxsIGNvbnRleHRzLgo+Cj4g
djI6IHVzZSBMUkkgdG8gbW9kaWZ5IGNvbnRleHQgY29udHJvbCAoQ2hyaXMpCj4gdjM6IHVzZSBN
QVNLRURfRklFTEQgdG8gcHJvZ3JhbSBqdXN0IHRoZSBtYXNrZWQgYml0cyAoQ2hyaXMpCj4KPiBT
aWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJs
aWdlLnJhbWFwcGFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmggfCAgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAg
ICB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQs
IDQwIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCj4gaW5k
ZXggOTlkYzU3NmE0ZTI1Li5iNmRhYWM3MTJjOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuaAo+IEBAIC00Myw2ICs0Myw3IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7Cj4g
ICAjZGVmaW5lCSAgQ1RYX0NUUkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lOSElCSVQJKDEgPDwgMCkK
PiAgICNkZWZpbmUgICBDVFhfQ1RSTF9SU19DVFhfRU5BQkxFCQkoMSA8PCAxKQo+ICAgI2RlZmlu
ZQkgIENUWF9DVFJMX0VOR0lORV9DVFhfU0FWRV9JTkhJQklUCSgxIDw8IDIpCj4gKyNkZWZpbmUJ
ICBHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUJKDEgPDwgOCkKPiAgICNkZWZpbmUg
UklOR19DT05URVhUX1NUQVRVU19QVFIoYmFzZSkJCV9NTUlPKChiYXNlKSArIDB4M2EwKQo+ICAg
I2RlZmluZSBSSU5HX0VYRUNMSVNUX1NRX0NPTlRFTlRTKGJhc2UpCQlfTU1JTygoYmFzZSkgKyAw
eDUxMCkKPiAgICNkZWZpbmUgUklOR19FWEVDTElTVF9DT05UUk9MKGJhc2UpCQlfTU1JTygoYmFz
ZSkgKyAweDU1MCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJm
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IGFiYzJiN2E2ZGM5
Mi4uNDdhOGQ2MTBhZjZlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMjIx
MSw2ICsyMjExLDM2IEBAIHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfY29udGV4dChzdHJ1Y3Qg
aTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiArc3Rh
dGljIGludCBnZW4xMl9lbWl0X29hcl9jb25maWcoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBi
b29sIGVuYWJsZSkKPiArewo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gKwl1MzIgKmNz
Owo+ICsJaW50IGVyciA9IDA7Cj4gKwo+ICsJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsK
PiArCWlmIChJU19FUlIocnEpKQo+ICsJCXJldHVybiBQVFJfRVJSKHJxKTsKPiArCj4gKwljcyA9
IGludGVsX3JpbmdfYmVnaW4ocnEsIDQpOwo+ICsJaWYgKElTX0VSUihjcykpIHsKPiArCQllcnIg
PSBQVFJfRVJSKGNzKTsKPiArCQlnb3RvIG91dDsKPiArCX0KPiArCj4gKwkqY3MrKyA9IE1JX0xP
QURfUkVHSVNURVJfSU1NKDEpOwo+ICsJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChSSU5H
X0NPTlRFWFRfQ09OVFJPTChjZS0+ZW5naW5lLT5tbWlvX2Jhc2UpKTsKPiArCSpjcysrID0gX01B
U0tFRF9GSUVMRChHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUsCj4gKwkJCSAgICAg
IGVuYWJsZSA/IEdFTjEyX0NUWF9DVFJMX09BUl9DT05URVhUX0VOQUJMRSA6IDApOwo+ICsJKmNz
KysgPSBNSV9OT09QOwo+ICsKPiArCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwo+ICsKPiAr
b3V0Ogo+ICsJaTkxNV9yZXF1ZXN0X2FkZChycSk7Cj4gKwo+ICsJcmV0dXJuIGVycjsKPiArfQo+
ICsKPiAgIC8qCj4gICAgKiBNYW5hZ2VzIHVwZGF0aW5nIHRoZSBwZXItY29udGV4dCBhc3BlY3Rz
IG9mIHRoZSBPQSBzdHJlYW0KPiAgICAqIGNvbmZpZ3VyYXRpb24gYWNyb3NzIGFsbCBjb250ZXh0
cy4KPiBAQCAtMjQyNSw2ICsyNDU1LDE1IEBAIHN0YXRpYyBpbnQgZ2VuMTJfZW5hYmxlX21ldHJp
Y19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPiAgIAlpZiAocmV0KQo+ICAg
CQlyZXR1cm4gcmV0Owo+ICAgCj4gKwkvKgo+ICsJICogRm9yIEdlbjEyLCBwZXJmb3JtYW5jZSBj
b3VudGVycyBhcmUgY29udGV4dAo+ICsJICogc2F2ZWQvcmVzdG9yZWQuIE9ubHkgZW5hYmxlIGl0
IGZvciB0aGUgY29udGV4dCB0aGF0Cj4gKwkgKiByZXF1ZXN0ZWQgdGhpcy4KPiArCSAqLwo+ICsJ
cmV0ID0gZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cmVhbS0+cGlubmVkX2N0eCwgb2FfY29uZmln
ICE9IE5VTEwpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiAgIAlyZXR1cm4g
ZW1pdF9vYV9jb25maWcoc3RyZWFtLCBvYV9jb250ZXh0KHN0cmVhbSkpOwo+ICAgfQo+ICAgCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
