Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 019533A16EC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 16:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2136E420;
	Wed,  9 Jun 2021 14:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933A26E3F4;
 Wed,  9 Jun 2021 14:17:43 +0000 (UTC)
IronPort-SDR: oyHcNkOYruIjsdF4JkUfYvGR1N34TYJ/Rj7bVR/wzMl4GsLSTS8hrBTIV3IcFE2HcS3zSmGIIC
 Ej+Mw10nGYgA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290710134"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="290710134"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:17:26 -0700
IronPort-SDR: tcGQOeHd54GHLL7QI0ZSmbVMyjuX2oCDBGlsHWMQYV+kNoWPWRBMRTQKy2NzrBSfYuxXPkHi1c
 gVF9zb0TxWQg==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="482401665"
Received: from mjkelly-mobl1.ger.corp.intel.com (HELO [10.213.215.68])
 ([10.213.215.68])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:17:24 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <20210609063436.284332-10-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <2cd884d8-b16c-d561-ada1-bf4af2ef9830@intel.com>
Date: Wed, 9 Jun 2021 15:17:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210609063436.284332-10-thomas.hellstrom@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915/gt: Setup a default
 migration context on the GT
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDYvMjAyMSAwNzozNCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gRnJvbTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gU2V0IHVwIGEgZGVmYXVs
dCBtaWdyYXRpb24gY29udGV4dCBvbiB0aGUgR1QgYW5kIHVzZSBpdCBmcm9tIHRoZQo+IHNlbGZ0
ZXN0cy4KPiBBZGQgYSBwZXJmIHNlbGZ0ZXN0IGFuZCBtYWtlIHN1cmUgd2UgZXhlcmNpc2UgTE1F
TSBpZiBhdmFpbGFibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAgICAgIHwgICA0ICsKPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggICAgICB8ICAgMyArCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMgICAgICAgfCAgIDQgKy0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21pZ3JhdGUuYyAgICB8IDIyNyAr
KysrKysrKysrKysrKysrKy0KPiAgIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmX3Nl
bGZ0ZXN0cy5oICB8ICAgMSArCj4gICA1IGZpbGVzIGNoYW5nZWQsIDIzMiBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+IGluZGV4
IDIxNjFiZjAxZWY4Yi4uNjdlZjA1N2FlOTE4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndC5jCj4gQEAgLTEzLDYgKzEzLDcgQEAKPiAgICNpbmNsdWRlICJpbnRlbF9ndF9jbG9ja191
dGlscy5oIgo+ICAgI2luY2x1ZGUgImludGVsX2d0X3BtLmgiCj4gICAjaW5jbHVkZSAiaW50ZWxf
Z3RfcmVxdWVzdHMuaCIKPiArI2luY2x1ZGUgImludGVsX21pZ3JhdGUuaCIKPiAgICNpbmNsdWRl
ICJpbnRlbF9tb2NzLmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfcmM2LmgiCj4gICAjaW5jbHVkZSAi
aW50ZWxfcmVuZGVyc3RhdGUuaCIKPiBAQCAtNjI2LDYgKzYyNyw4IEBAIGludCBpbnRlbF9ndF9p
bml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICAJaWYgKGVycikKPiAgIAkJZ290byBlcnJfZ3Q7
Cj4gICAKPiArCWludGVsX21pZ3JhdGVfaW5pdCgmZ3QtPm1pZ3JhdGUsIGd0KTsKPiArCj4gICAJ
Z290byBvdXRfZnc7Cj4gICBlcnJfZ3Q6Cj4gICAJX19pbnRlbF9ndF9kaXNhYmxlKGd0KTsKPiBA
QCAtNjQ5LDYgKzY1Miw3IEBAIHZvaWQgaW50ZWxfZ3RfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQo+ICAgewo+ICAgCV9faW50ZWxfZ3RfZGlzYWJsZShndCk7Cj4gICAKPiArCWlu
dGVsX21pZ3JhdGVfZmluaSgmZ3QtPm1pZ3JhdGUpOwo+ICAgCWludGVsX3VjX2RyaXZlcl9yZW1v
dmUoJmd0LT51Yyk7Cj4gICAKPiAgIAlpbnRlbF9lbmdpbmVzX3JlbGVhc2UoZ3QpOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+IGluZGV4IGZlY2ZhY2Y1NTFkNS4u
NzQ1MDkzNWYyY2E4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBl
cy5oCj4gQEAgLTI0LDYgKzI0LDcgQEAKPiAgICNpbmNsdWRlICJpbnRlbF9yZXNldF90eXBlcy5o
Igo+ICAgI2luY2x1ZGUgImludGVsX3JjNl90eXBlcy5oIgo+ICAgI2luY2x1ZGUgImludGVsX3Jw
c190eXBlcy5oIgo+ICsjaW5jbHVkZSAiaW50ZWxfbWlncmF0ZV90eXBlcy5oIgo+ICAgI2luY2x1
ZGUgImludGVsX3dha2VyZWYuaCIKPiAgIAo+ICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4g
QEAgLTE0NSw2ICsxNDYsOCBAQCBzdHJ1Y3QgaW50ZWxfZ3Qgewo+ICAgCj4gICAJc3RydWN0IGk5
MTVfdm1hICpzY3JhdGNoOwo+ICAgCj4gKwlzdHJ1Y3QgaW50ZWxfbWlncmF0ZSBtaWdyYXRlOwo+
ICsKPiAgIAlzdHJ1Y3QgaW50ZWxfZ3RfaW5mbyB7Cj4gICAJCWludGVsX2VuZ2luZV9tYXNrX3Qg
ZW5naW5lX21hc2s7Cj4gICAJCXU4IG51bV9lbmdpbmVzOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9taWdyYXRlLmMKPiBpbmRleCBmZGEwNWNlM2ViOWMuLjkzNWI1ZjE0ZmYyMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKPiBAQCAtNDE4LDEwICs0
MTgsOSBAQCBpbnRlbF9jb250ZXh0X21pZ3JhdGVfY29weShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsCj4gICAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gICAJaW50IGVycjsKPiAgIAo+ICsJ
R0VNX0JVR19PTihjZS0+dm0gIT0gY2UtPmVuZ2luZS0+Z3QtPm1pZ3JhdGUuY29udGV4dC0+dm0p
Owo+ICAgCSpvdXQgPSBOVUxMOwo+ICAgCj4gLQkvKiBHRU1fQlVHX09OKGNlLT52bSAhPSBtaWdy
YXRlX3ZtKTsgKi8KPiAtCj4gICAJR0VNX0JVR19PTihjZS0+cmluZy0+c2l6ZSA8IFNaXzY0Syk7
Cj4gICAKPiAgIAlkbyB7Cj4gQEAgLTUzNiw2ICs1MzUsNyBAQCBpbnRlbF9jb250ZXh0X21pZ3Jh
dGVfY2xlYXIoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICAgCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxOwo+ICAgCWludCBlcnI7Cj4gICAKPiArCUdFTV9CVUdfT04oY2UtPnZtICE9IGNlLT5l
bmdpbmUtPmd0LT5taWdyYXRlLmNvbnRleHQtPnZtKTsKPiAgIAkqb3V0ID0gTlVMTDsKPiAgIAo+
ICAgCUdFTV9CVUdfT04oY2UtPnJpbmctPnNpemUgPCBTWl82NEspOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRlLmMKPiBpbmRleCAxNTljODY1NmUxYjAuLjM5NmM4
MTM2NDM5OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9t
aWdyYXRlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRl
LmMKPiBAQCAtMyw2ICszLDggQEAKPiAgICAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBv
cmF0aW9uCj4gICAgKi8KPiAgIAo+ICsjaW5jbHVkZSA8bGludXgvc29ydC5oPgo+ICsKPiAgICNp
bmNsdWRlICJzZWxmdGVzdHMvaTkxNV9yYW5kb20uaCIKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGludCBzaXplc1tdID0gewo+IEBAIC00NDEsMTQgKzQ0MywyMjkgQEAgaW50IGludGVs
X21pZ3JhdGVfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4g
ICAJCVNVQlRFU1QodGhyZWFkX2dsb2JhbF9jb3B5KSwKPiAgIAkJU1VCVEVTVCh0aHJlYWRfZ2xv
YmFsX2NsZWFyKSwKPiAgIAl9Owo+IC0Jc3RydWN0IGludGVsX21pZ3JhdGUgbTsKPiArCXN0cnVj
dCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+Z3Q7Cj4gKwo+ICsJaWYgKCFndC0+bWlncmF0ZS5jb250
ZXh0KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCXJldHVybiBpOTE1X3N1YnRlc3RzKHRlc3RzLCAm
Z3QtPm1pZ3JhdGUpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKgo+ICtjcmVhdGVfaW5pdF9sbWVtX2ludGVybmFsKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHNp
emVfdCBzeiwgYm9vbCB0cnlfbG1lbSkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiA9IE5VTEw7Cj4gICAJaW50IGVycjsKPiAgIAo+IC0JaWYgKGludGVsX21pZ3JhdGVf
aW5pdCgmbSwgJmk5MTUtPmd0KSkKPiArCWlmICh0cnlfbG1lbSAmJiBIQVNfTE1FTShndC0+aTkx
NSkpCgpDb3VsZCBkcm9wIHRoZSBIQVNfTE1FTSgpCgpJdCdzIGVsc2V3aGVyZSBpbiB0aGUgZHJp
dmVyIG5vcm1hbCB0byBqdXN0IGRvOgpvYmogPSBjcmVhdGVfbG1lbSgpCmlmIChJU19FUlIob2Jq
KSkKICAgICAgICAgb2JqID0gY3JlYXRlX2ludGVybmFsKCkKClJldmlld2VkLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgoKPiArCQlvYmogPSBpOTE1X2dlbV9vYmpl
Y3RfY3JlYXRlX2xtZW0oZ3QtPmk5MTUsIHN6LCAwKTsKPiArCj4gKwlpZiAoSVNfRVJSX09SX05V
TEwob2JqKSkgewo+ICsJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoZ3Qt
Pmk5MTUsIHN6KTsKPiArCQlpZiAoSVNfRVJSKG9iaikpCj4gKwkJCXJldHVybiBvYmo7Cj4gKwl9
Cj4gKwo+ICsJaTkxNV9nZW1fb2JqZWN0X3RyeWxvY2sob2JqKTsKPiArCWVyciA9IGk5MTVfZ2Vt
X29iamVjdF9waW5fcGFnZXMob2JqKTsKPiArCWlmIChlcnIpIHsKPiArCQlpOTE1X2dlbV9vYmpl
Y3RfdW5sb2NrKG9iaik7Cj4gKwkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwo+ICsJCXJldHVy
biBFUlJfUFRSKGVycik7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIG9iajsKPiArfQo+ICsKPiArc3Rh
dGljIGludCB3cmFwX2t0aW1lX2NvbXBhcmUoY29uc3Qgdm9pZCAqQSwgY29uc3Qgdm9pZCAqQikK
PiArewo+ICsJY29uc3Qga3RpbWVfdCAqYSA9IEEsICpiID0gQjsKPiArCj4gKwlyZXR1cm4ga3Rp
bWVfY29tcGFyZSgqYSwgKmIpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9fcGVyZl9jbGVhcl9i
bHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICsJCQkgICAgc3RydWN0IHNjYXR0ZXJsaXN0
ICpzZywKPiArCQkJICAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKPiArCQkJ
ICAgIGJvb2wgaXNfbG1lbSwKPiArCQkJICAgIHNpemVfdCBzeikKPiArewo+ICsJa3RpbWVfdCB0
WzVdOwo+ICsJaW50IHBhc3M7Cj4gKwlpbnQgZXJyID0gMDsKPiArCj4gKwlmb3IgKHBhc3MgPSAw
OyBwYXNzIDwgQVJSQVlfU0laRSh0KTsgcGFzcysrKSB7Cj4gKwkJc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnE7Cj4gKwkJa3RpbWVfdCB0MCwgdDE7Cj4gKwo+ICsJCXQwID0ga3RpbWVfZ2V0KCk7Cj4g
Kwo+ICsJCWVyciA9IGludGVsX2NvbnRleHRfbWlncmF0ZV9jbGVhcihjZSwgTlVMTCwgc2csIGNh
Y2hlX2xldmVsLAo+ICsJCQkJCQkgIGlzX2xtZW0sIDAsICZycSk7Cj4gKwkJaWYgKHJxKSB7Cj4g
KwkJCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpIDwg
MCkKPiArCQkJCWVyciA9IC1FSU87Cj4gKwkJCWk5MTVfcmVxdWVzdF9wdXQocnEpOwo+ICsJCX0K
PiArCQlpZiAoZXJyKQo+ICsJCQlicmVhazsKPiArCj4gKwkJdDEgPSBrdGltZV9nZXQoKTsKPiAr
CQl0W3Bhc3NdID0ga3RpbWVfc3ViKHQxLCB0MCk7Cj4gKwl9Cj4gKwlpZiAoZXJyKQo+ICsJCXJl
dHVybiBlcnI7Cj4gKwo+ICsJc29ydCh0LCBBUlJBWV9TSVpFKHQpLCBzaXplb2YoKnQpLCB3cmFw
X2t0aW1lX2NvbXBhcmUsIE5VTEwpOwo+ICsJcHJfaW5mbygiJXM6ICV6ZCBLaUIgZmlsbDogJWxs
ZCBNaUIvc1xuIiwKPiArCQljZS0+ZW5naW5lLT5uYW1lLCBzeiA+PiAxMCwKPiArCQlkaXY2NF91
NjQobXVsX3UzMl91MzIoNCAqIHN6LAo+ICsJCQkJICAgICAgMTAwMCAqIDEwMDAgKiAxMDAwKSwK
PiArCQkJICB0WzFdICsgMiAqIHRbMl0gKyB0WzNdKSA+PiAyMCk7Cj4gKwlyZXR1cm4gMDsKPiAr
fQo+ICsKPiArc3RhdGljIGludCBwZXJmX2NsZWFyX2JsdCh2b2lkICphcmcpCj4gK3sKPiArCXN0
cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7Cj4gKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgbG9uZyBz
aXplc1tdID0gewo+ICsJCVNaXzRLLAo+ICsJCVNaXzY0SywKPiArCQlTWl8yTSwKPiArCQlTWl82
NE0KPiArCX07Cj4gKwlpbnQgaTsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShz
aXplcyk7IGkrKykgewo+ICsJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpkc3Q7Cj4gKwkJ
aW50IGVycjsKPiArCj4gKwkJZHN0ID0gY3JlYXRlX2luaXRfbG1lbV9pbnRlcm5hbChndCwgc2l6
ZXNbaV0sIHRydWUpOwo+ICsJCWlmIChJU19FUlIoZHN0KSkKPiArCQkJcmV0dXJuIFBUUl9FUlIo
ZHN0KTsKPiArCj4gKwkJZXJyID0gX19wZXJmX2NsZWFyX2JsdChndC0+bWlncmF0ZS5jb250ZXh0
LAo+ICsJCQkJICAgICAgIGRzdC0+bW0ucGFnZXMtPnNnbCwKPiArCQkJCSAgICAgICBJOTE1X0NB
Q0hFX05PTkUsCj4gKwkJCQkgICAgICAgaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0oZHN0KSwKPiAr
CQkJCSAgICAgICBzaXplc1tpXSk7Cj4gKwo+ICsJCWk5MTVfZ2VtX29iamVjdF91bmxvY2soZHN0
KTsKPiArCQlpOTE1X2dlbV9vYmplY3RfcHV0KGRzdCk7Cj4gKwkJaWYgKGVycikKPiArCQkJcmV0
dXJuIGVycjsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBf
X3BlcmZfY29weV9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICsJCQkgICBzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNyYywKPiArCQkJICAgZW51bSBpOTE1X2NhY2hlX2xldmVsIHNyY19jYWNo
ZV9sZXZlbCwKPiArCQkJICAgYm9vbCBzcmNfaXNfbG1lbSwKPiArCQkJICAgc3RydWN0IHNjYXR0
ZXJsaXN0ICpkc3QsCj4gKwkJCSAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBkc3RfY2FjaGVfbGV2
ZWwsCj4gKwkJCSAgIGJvb2wgZHN0X2lzX2xtZW0sCj4gKwkJCSAgIHNpemVfdCBzeikKPiArewo+
ICsJa3RpbWVfdCB0WzVdOwo+ICsJaW50IHBhc3M7Cj4gKwlpbnQgZXJyID0gMDsKPiArCj4gKwlm
b3IgKHBhc3MgPSAwOyBwYXNzIDwgQVJSQVlfU0laRSh0KTsgcGFzcysrKSB7Cj4gKwkJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnE7Cj4gKwkJa3RpbWVfdCB0MCwgdDE7Cj4gKwo+ICsJCXQwID0ga3Rp
bWVfZ2V0KCk7Cj4gKwo+ICsJCWVyciA9IGludGVsX2NvbnRleHRfbWlncmF0ZV9jb3B5KGNlLCBO
VUxMLAo+ICsJCQkJCQkgc3JjLCBzcmNfY2FjaGVfbGV2ZWwsCj4gKwkJCQkJCSBzcmNfaXNfbG1l
bSwKPiArCQkJCQkJIGRzdCwgZHN0X2NhY2hlX2xldmVsLAo+ICsJCQkJCQkgZHN0X2lzX2xtZW0s
Cj4gKwkJCQkJCSAmcnEpOwo+ICsJCWlmIChycSkgewo+ICsJCQlpZiAoaTkxNV9yZXF1ZXN0X3dh
aXQocnEsIDAsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKSA8IDApCj4gKwkJCQllcnIgPSAtRUlPOwo+
ICsJCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKPiArCQl9Cj4gKwkJaWYgKGVycikKPiArCQkJYnJl
YWs7Cj4gKwo+ICsJCXQxID0ga3RpbWVfZ2V0KCk7Cj4gKwkJdFtwYXNzXSA9IGt0aW1lX3N1Yih0
MSwgdDApOwo+ICsJfQo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiArCXNvcnQo
dCwgQVJSQVlfU0laRSh0KSwgc2l6ZW9mKCp0KSwgd3JhcF9rdGltZV9jb21wYXJlLCBOVUxMKTsK
PiArCXByX2luZm8oIiVzOiAlemQgS2lCIGNvcHk6ICVsbGQgTWlCL3NcbiIsCj4gKwkJY2UtPmVu
Z2luZS0+bmFtZSwgc3ogPj4gMTAsCj4gKwkJZGl2NjRfdTY0KG11bF91MzJfdTMyKDQgKiBzeiwK
PiArCQkJCSAgICAgIDEwMDAgKiAxMDAwICogMTAwMCksCj4gKwkJCSAgdFsxXSArIDIgKiB0WzJd
ICsgdFszXSkgPj4gMjApOwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgcGVy
Zl9jb3B5X2JsdCh2b2lkICphcmcpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7
Cj4gKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgbG9uZyBzaXplc1tdID0gewo+ICsJCVNaXzRLLAo+
ICsJCVNaXzY0SywKPiArCQlTWl8yTSwKPiArCQlTWl82NE0KPiArCX07Cj4gKwlpbnQgaTsKPiAr
Cj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShzaXplcyk7IGkrKykgewo+ICsJCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpzcmMsICpkc3Q7Cj4gKwkJaW50IGVycjsKPiArCj4gKwkJ
c3JjID0gY3JlYXRlX2luaXRfbG1lbV9pbnRlcm5hbChndCwgc2l6ZXNbaV0sIHRydWUpOwo+ICsJ
CWlmIChJU19FUlIoc3JjKSkKPiArCQkJcmV0dXJuIFBUUl9FUlIoc3JjKTsKPiArCj4gKwkJZHN0
ID0gY3JlYXRlX2luaXRfbG1lbV9pbnRlcm5hbChndCwgc2l6ZXNbaV0sIGZhbHNlKTsKPiArCQlp
ZiAoSVNfRVJSKGRzdCkpIHsKPiArCQkJZXJyID0gUFRSX0VSUihkc3QpOwo+ICsJCQlnb3RvIGVy
cl9zcmM7Cj4gKwkJfQo+ICsKPiArCQllcnIgPSBfX3BlcmZfY29weV9ibHQoZ3QtPm1pZ3JhdGUu
Y29udGV4dCwKPiArCQkJCSAgICAgIHNyYy0+bW0ucGFnZXMtPnNnbCwKPiArCQkJCSAgICAgIEk5
MTVfQ0FDSEVfTk9ORSwKPiArCQkJCSAgICAgIGk5MTVfZ2VtX29iamVjdF9pc19sbWVtKHNyYyks
Cj4gKwkJCQkgICAgICBkc3QtPm1tLnBhZ2VzLT5zZ2wsCj4gKwkJCQkgICAgICBJOTE1X0NBQ0hF
X05PTkUsCj4gKwkJCQkgICAgICBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShkc3QpLAo+ICsJCQkJ
ICAgICAgc2l6ZXNbaV0pOwo+ICsKPiArCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKGRzdCk7Cj4g
KwkJaTkxNV9nZW1fb2JqZWN0X3B1dChkc3QpOwo+ICtlcnJfc3JjOgo+ICsJCWk5MTVfZ2VtX29i
amVjdF91bmxvY2soc3JjKTsKPiArCQlpOTE1X2dlbV9vYmplY3RfcHV0KHNyYyk7Cj4gKwkJaWYg
KGVycikKPiArCQkJcmV0dXJuIGVycjsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsK
PiAraW50IGludGVsX21pZ3JhdGVfcGVyZl9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gK3sKPiArCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3Rz
W10gPSB7Cj4gKwkJU1VCVEVTVChwZXJmX2NsZWFyX2JsdCksCj4gKwkJU1VCVEVTVChwZXJmX2Nv
cHlfYmx0KSwKPiArCX07Cj4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0Owo+ICsK
PiArCWlmIChpbnRlbF9ndF9pc193ZWRnZWQoZ3QpKQo+ICAgCQlyZXR1cm4gMDsKPiAgIAo+IC0J
ZXJyID0gaTkxNV9zdWJ0ZXN0cyh0ZXN0cywgJm0pOwo+IC0JaW50ZWxfbWlncmF0ZV9maW5pKCZt
KTsKPiArCWlmICghZ3QtPm1pZ3JhdGUuY29udGV4dCkKPiArCQlyZXR1cm4gMDsKPiAgIAo+IC0J
cmV0dXJuIGVycjsKPiArCXJldHVybiBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCBndCk7
Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X3BlcmZfc2VsZnRlc3RzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9w
ZXJmX3NlbGZ0ZXN0cy5oCj4gaW5kZXggYzIzODlmOGEyNTdkLi41MDc3ZGMzYzNiOGMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZl9zZWxmdGVz
dHMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3BlcmZfc2Vs
ZnRlc3RzLmgKPiBAQCAtMTcsNSArMTcsNiBAQAo+ICAgICovCj4gICBzZWxmdGVzdChlbmdpbmVf
Y3MsIGludGVsX2VuZ2luZV9jc19wZXJmX3NlbGZ0ZXN0cykKPiAgIHNlbGZ0ZXN0KHJlcXVlc3Qs
IGk5MTVfcmVxdWVzdF9wZXJmX3NlbGZ0ZXN0cykKPiArc2VsZnRlc3QobWlncmF0ZSwgaW50ZWxf
bWlncmF0ZV9wZXJmX3NlbGZ0ZXN0cykKPiAgIHNlbGZ0ZXN0KGJsdCwgaTkxNV9nZW1fb2JqZWN0
X2JsdF9wZXJmX3NlbGZ0ZXN0cykKPiAgIHNlbGZ0ZXN0KHJlZ2lvbiwgaW50ZWxfbWVtb3J5X3Jl
Z2lvbl9wZXJmX3NlbGZ0ZXN0cykKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
