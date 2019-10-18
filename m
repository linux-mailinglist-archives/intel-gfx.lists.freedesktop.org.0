Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EF5DBF06
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 09:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A636EADA;
	Fri, 18 Oct 2019 07:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6889C6EADA
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 07:54:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 00:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,310,1566889200"; d="scan'208";a="199634307"
Received: from maentels-mobl2.ger.corp.intel.com (HELO [10.249.41.74])
 ([10.249.41.74])
 by orsmga003.jf.intel.com with ESMTP; 18 Oct 2019 00:54:27 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191018005028.47441-1-umesh.nerlige.ramappa@intel.com>
 <20191018005028.47441-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <351066f9-d627-a141-3587-e94758297b50@intel.com>
Date: Fri, 18 Oct 2019 10:54:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018005028.47441-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/perf: enable OAR context
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

T24gMTgvMTAvMjAxOSAwMzo1MCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IEZyb206
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPgo+IFdl
IHdhbnQgdGhpcyBzbyB3ZSBjYW4gcHJlZW1wdCBwZXJmb3JtYW5jZSBxdWVyaWVzIGFuZCBrZWVw
IHRoZSBzeXN0ZW0KPiByZXNwb25zaXZlIGV2ZW4gd2hlbiBsb25nIHJ1bm5pbmcgcXVlcmllcyBh
cmUgb25nb2luZy4gV2UgYXZvaWQgZG9pbmcKPiBpdCBmb3IgYWxsIGNvbnRleHRzLgo+Cj4gdjI6
IHVzZSBMUkkgdG8gbW9kaWZ5IGNvbnRleHQgY29udHJvbCAoQ2hyaXMpCj4gdjM6IHVzZSBNQVNL
RURfRklFTEQgdG8gcHJvZ3JhbSBqdXN0IHRoZSBtYXNrZWQgYml0cyAoQ2hyaXMpCj4gdjQ6IHJl
dXNlIHJlcXVlc3QgY3JlYXRlZCBkdXJpbmcgZW1pdF9vYV9jb25maWcgKExpb25lbCkKPgo+IFNp
Z25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxp
Z2UucmFtYXBwYUBpbnRlbC5jb20+CgoKTG9va3MgZ29vZCA6CgoKUmV2aWV3ZWQtYnk6IExpb25l
bCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KCgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmggfCAgMSArCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KystCj4gICAyIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCj4gaW5kZXggOTlkYzU3NmE0ZTI1Li5i
NmRhYWM3MTJjOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaAo+IEBAIC00
Myw2ICs0Myw3IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7Cj4gICAjZGVmaW5lCSAgQ1RYX0NU
UkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lOSElCSVQJKDEgPDwgMCkKPiAgICNkZWZpbmUgICBDVFhf
Q1RSTF9SU19DVFhfRU5BQkxFCQkoMSA8PCAxKQo+ICAgI2RlZmluZQkgIENUWF9DVFJMX0VOR0lO
RV9DVFhfU0FWRV9JTkhJQklUCSgxIDw8IDIpCj4gKyNkZWZpbmUJICBHRU4xMl9DVFhfQ1RSTF9P
QVJfQ09OVEVYVF9FTkFCTEUJKDEgPDwgOCkKPiAgICNkZWZpbmUgUklOR19DT05URVhUX1NUQVRV
U19QVFIoYmFzZSkJCV9NTUlPKChiYXNlKSArIDB4M2EwKQo+ICAgI2RlZmluZSBSSU5HX0VYRUNM
SVNUX1NRX0NPTlRFTlRTKGJhc2UpCQlfTU1JTygoYmFzZSkgKyAweDUxMCkKPiAgICNkZWZpbmUg
UklOR19FWEVDTElTVF9DT05UUk9MKGJhc2UpCQlfTU1JTygoYmFzZSkgKyAweDU1MCkKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IDkxNzA3NTU4YTBmNS4uY2U5N2FmNDg0YTMyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMTg2MiwxNCArMTg2MiwzNiBAQCBn
ZXRfb2Ffdm1hKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sIHN0cnVjdCBpOTE1X29h
X2NvbmZpZyAqb2FfY29uZmlnKQo+ICAgCXJldHVybiBpOTE1X3ZtYV9nZXQob2FfYm8tPnZtYSk7
Cj4gICB9Cj4gICAKPiArc3RhdGljIGludCBnZW4xMl9lbWl0X29hcl9jb25maWcoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsCj4gKwkJCQkgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICsJCQkJ
IGJvb2wgZW5hYmxlKQo+ICt7Cj4gKwl1MzIgKmNzOwo+ICsKPiArCWNzID0gaW50ZWxfcmluZ19i
ZWdpbihycSwgNCk7Cj4gKwlpZiAoSVNfRVJSKGNzKSkKPiArCQlyZXR1cm4gUFRSX0VSUihjcyk7
Cj4gKwo+ICsJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKPiArCSpjcysrID0gaTkx
NV9tbWlvX3JlZ19vZmZzZXQoUklOR19DT05URVhUX0NPTlRST0woY2UtPmVuZ2luZS0+bW1pb19i
YXNlKSk7Cj4gKwkqY3MrKyA9IF9NQVNLRURfRklFTEQoR0VOMTJfQ1RYX0NUUkxfT0FSX0NPTlRF
WFRfRU5BQkxFLAo+ICsJCQkgICAgICBlbmFibGUgPyBHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVY
VF9FTkFCTEUgOiAwKTsKPiArCSpjcysrID0gTUlfTk9PUDsKPiArCj4gKwlpbnRlbF9yaW5nX2Fk
dmFuY2UocnEsIGNzKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQg
ZW1pdF9vYV9jb25maWcoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKPiAgIAkJCSAg
c3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICAgewo+ICsJc3RydWN0IGk5MTVfb2FfY29uZmln
ICpvYV9jb25maWcgPSBzdHJlYW0tPm9hX2NvbmZpZzsKPiAgIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycTsKPiAgIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAgIAlpbnQgZXJyOwo+ICAgCj4gLQl2
bWEgPSBnZXRfb2Ffdm1hKHN0cmVhbSwgc3RyZWFtLT5vYV9jb25maWcpOwo+ICsJdm1hID0gZ2V0
X29hX3ZtYShzdHJlYW0sIG9hX2NvbmZpZyk7Cj4gICAJaWYgKElTX0VSUih2bWEpKQo+ICAgCQly
ZXR1cm4gUFRSX0VSUih2bWEpOwo+ICAgCj4gQEAgLTE4OTEsNiArMTkxMywxNyBAQCBzdGF0aWMg
aW50IGVtaXRfb2FfY29uZmlnKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gICAJ
aWYgKGVycikKPiAgIAkJZ290byBlcnJfYWRkX3JlcXVlc3Q7Cj4gICAKPiArCS8qCj4gKwkgKiBG
b3IgR2VuMTIsIHBlcmZvcm1hbmNlIGNvdW50ZXJzIGFyZSBjb250ZXh0IHNhdmVkL3Jlc3RvcmVk
Lgo+ICsJICogT25seSBlbmFibGUgaXQgZm9yIHRoZSBjb250ZXh0IHRoYXQgcmVxdWVzdGVkIHRo
aXMuCj4gKwkgKi8KPiArCWlmIChjZSA9PSBzdHJlYW0tPnBpbm5lZF9jdHggJiYgSVNfR0VOKHN0
cmVhbS0+cGVyZi0+aTkxNSwgMTIpKSB7Cj4gKwkJZXJyID0gZ2VuMTJfZW1pdF9vYXJfY29uZmln
KHJxLCBjZSwgb2FfY29uZmlnICE9IE5VTEwpOwo+ICsJCWlmIChlcnIpCj4gKwkJCWdvdG8gZXJy
X2FkZF9yZXF1ZXN0Owo+ICsKPiArCX0KPiArCj4gICAJZXJyID0gcnEtPmVuZ2luZS0+ZW1pdF9i
Yl9zdGFydChycSwKPiAgIAkJCQkJdm1hLT5ub2RlLnN0YXJ0LCAwLAo+ICAgCQkJCQlJOTE1X0RJ
U1BBVENIX1NFQ1VSRSk7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
