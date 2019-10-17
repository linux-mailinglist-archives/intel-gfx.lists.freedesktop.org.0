Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F289CDA69F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D9E6E45D;
	Thu, 17 Oct 2019 07:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7306E45D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:45:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="397434958"
Received: from ksiamitx-mobl.ger.corp.intel.com (HELO [10.249.41.46])
 ([10.249.41.46])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2019 00:45:33 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191017072009.31539-1-umesh.nerlige.ramappa@intel.com>
 <20191017072009.31539-3-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <35f8dd01-7538-b060-609a-f6d4c7e9eb9b@intel.com>
Date: Thu, 17 Oct 2019 10:45:32 +0300
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
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPgo+IFdl
IHdhbnQgdGhpcyBzbyB3ZSBjYW4gcHJlZW1wdCBwZXJmb3JtYW5jZSBxdWVyaWVzIGFuZCBrZWVw
IHRoZSBzeXN0ZW0KPiByZXNwb25zaXZlIGV2ZW4gd2hlbiBsb25nIHJ1bm5pbmcgcXVlcmllcyBh
cmUgb25nb2luZy4gV2UgYXZvaWQgZG9pbmcKPiBpdCBmb3IgYWxsIGNvbnRleHRzLgo+Cj4gdjI6
IHVzZSBMUkkgdG8gbW9kaWZ5IGNvbnRleHQgY29udHJvbCAoQ2hyaXMpCj4gdjM6IHVzZSBNQVNL
RURfRklFTEQgdG8gcHJvZ3JhbSBqdXN0IHRoZSBtYXNrZWQgYml0cyAoQ2hyaXMpCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdl
LnJhbWFwcGFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmggfCAgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICB8
IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDQw
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCj4gaW5kZXgg
OTlkYzU3NmE0ZTI1Li5iNmRhYWM3MTJjOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuaAo+IEBAIC00Myw2ICs0Myw3IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7Cj4gICAj
ZGVmaW5lCSAgQ1RYX0NUUkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lOSElCSVQJKDEgPDwgMCkKPiAg
ICNkZWZpbmUgICBDVFhfQ1RSTF9SU19DVFhfRU5BQkxFCQkoMSA8PCAxKQo+ICAgI2RlZmluZQkg
IENUWF9DVFJMX0VOR0lORV9DVFhfU0FWRV9JTkhJQklUCSgxIDw8IDIpCj4gKyNkZWZpbmUJICBH
RU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUJKDEgPDwgOCkKPiAgICNkZWZpbmUgUklO
R19DT05URVhUX1NUQVRVU19QVFIoYmFzZSkJCV9NTUlPKChiYXNlKSArIDB4M2EwKQo+ICAgI2Rl
ZmluZSBSSU5HX0VYRUNMSVNUX1NRX0NPTlRFTlRTKGJhc2UpCQlfTU1JTygoYmFzZSkgKyAweDUx
MCkKPiAgICNkZWZpbmUgUklOR19FWEVDTElTVF9DT05UUk9MKGJhc2UpCQlfTU1JTygoYmFzZSkg
KyAweDU1MCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IGFiYzJiN2E2ZGM5Mi4u
NDdhOGQ2MTBhZjZlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMjIxMSw2
ICsyMjExLDM2IEBAIHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfY29udGV4dChzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4LAo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiArc3RhdGlj
IGludCBnZW4xMl9lbWl0X29hcl9jb25maWcoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBib29s
IGVuYWJsZSkKPiArewo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gKwl1MzIgKmNzOwo+
ICsJaW50IGVyciA9IDA7Cj4gKwo+ICsJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsKPiAr
CWlmIChJU19FUlIocnEpKQo+ICsJCXJldHVybiBQVFJfRVJSKHJxKTsKPiArCj4gKwljcyA9IGlu
dGVsX3JpbmdfYmVnaW4ocnEsIDQpOwo+ICsJaWYgKElTX0VSUihjcykpIHsKPiArCQllcnIgPSBQ
VFJfRVJSKGNzKTsKPiArCQlnb3RvIG91dDsKPiArCX0KPiArCj4gKwkqY3MrKyA9IE1JX0xPQURf
UkVHSVNURVJfSU1NKDEpOwo+ICsJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChSSU5HX0NP
TlRFWFRfQ09OVFJPTChjZS0+ZW5naW5lLT5tbWlvX2Jhc2UpKTsKPiArCSpjcysrID0gX01BU0tF
RF9GSUVMRChHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUsCj4gKwkJCSAgICAgIGVu
YWJsZSA/IEdFTjEyX0NUWF9DVFJMX09BUl9DT05URVhUX0VOQUJMRSA6IDApOwo+ICsJKmNzKysg
PSBNSV9OT09QOwo+ICsKPiArCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwo+ICsKPiArb3V0
Ogo+ICsJaTkxNV9yZXF1ZXN0X2FkZChycSk7Cj4gKwo+ICsJcmV0dXJuIGVycjsKPiArfQo+ICsK
PiAgIC8qCj4gICAgKiBNYW5hZ2VzIHVwZGF0aW5nIHRoZSBwZXItY29udGV4dCBhc3BlY3RzIG9m
IHRoZSBPQSBzdHJlYW0KPiAgICAqIGNvbmZpZ3VyYXRpb24gYWNyb3NzIGFsbCBjb250ZXh0cy4K
PiBAQCAtMjQyNSw2ICsyNDU1LDE1IEBAIHN0YXRpYyBpbnQgZ2VuMTJfZW5hYmxlX21ldHJpY19z
ZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPiAgIAlpZiAocmV0KQo+ICAgCQly
ZXR1cm4gcmV0Owo+ICAgCj4gKwkvKgo+ICsJICogRm9yIEdlbjEyLCBwZXJmb3JtYW5jZSBjb3Vu
dGVycyBhcmUgY29udGV4dAo+ICsJICogc2F2ZWQvcmVzdG9yZWQuIE9ubHkgZW5hYmxlIGl0IGZv
ciB0aGUgY29udGV4dCB0aGF0Cj4gKwkgKiByZXF1ZXN0ZWQgdGhpcy4KPiArCSAqLwo+ICsJcmV0
ID0gZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cmVhbS0+cGlubmVkX2N0eCwgb2FfY29uZmlnICE9
IE5VTEwpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0OwoKCllvdSBjb3VsZCBjYWxsIHRo
aXMgZnJvbSBlbWl0X29hX2NvbmZpZygpLgoKVGhlcmUgeW91IGhhdmUgYSByZXF1ZXN0IGNyZWF0
ZWQgYWxyZWFkeS4KCkFsbCB5b3UgbmVlZCB0byBjaGVjayBpcyBpZiAoc3RyZWFtLT5waW5uZWRf
Y3R4ID09IGNlKS4KClRoZW4gZ2VuMTJfZW1pdF9vYXJfY29uZmlnKCkgd29uJ3QgZXZlbiBuZWVk
IHRvIGNyZWF0ZSB0aGUgcmVxdWVzdC4KCgotTGlvbmVsCgoKPiArCj4gICAJcmV0dXJuIGVtaXRf
b2FfY29uZmlnKHN0cmVhbSwgb2FfY29udGV4dChzdHJlYW0pKTsKPiAgIH0KPiAgIAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
