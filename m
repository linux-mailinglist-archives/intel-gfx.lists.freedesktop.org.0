Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA2DE2BC1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 10:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D8A6E153;
	Thu, 24 Oct 2019 08:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276D66E153
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 08:07:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 01:07:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="228424869"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2019 01:07:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 01:07:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 01:07:30 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 24 Oct 2019 01:07:30 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.248]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 13:37:28 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/bios: add compression parameter block definition
Thread-Index: AQHViOFy3z7fUAxgnkeqEsLFTZbOHadpaSoQ//+sWACAAFxzEA==
Date: Thu, 24 Oct 2019 08:07:27 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80987C2F@BGSMSX108.gar.corp.intel.com>
References: <20191022140300.20872-1-jani.nikula@intel.com>
 <57510F3E2013164E925CD03ED7512A3B80987BB5@BGSMSX108.gar.corp.intel.com>
 <87y2xad0wh.fsf@intel.com>
In-Reply-To: <87y2xad0wh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWMyNWQyNmQtYTBiMS00OWZkLTliOWQtZGMwYzg4Nzg3MDYzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJLeldxVk1wTkIwQzJpYmlENXplem9ISUYxcU00ZEhPUnk1K002c0ltRStiNjhjNDFcL1YzdHJsS0JqS2c5OUtuMCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: add compression parameter
 block definition
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiBTZW50OiBUaHVyc2RheSwgT2N0b2JlciAyNCwgMjAxOSAxOjM1
IFBNCj4gVG86IEt1bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT47
IGludGVsLQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBTdWJqZWN0OiBSRTogW1BBVENI
XSBkcm0vaTkxNS9iaW9zOiBhZGQgY29tcHJlc3Npb24gcGFyYW1ldGVyIGJsb2NrCj4gZGVmaW5p
dGlvbgo+IAo+IE9uIFRodSwgMjQgT2N0IDIwMTksICJLdWxrYXJuaSwgVmFuZGl0YSIgPHZhbmRp
dGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IHdyb3RlOgo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPj4gRnJvbTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+
PiBTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDIyLCAyMDE5IDc6MzMgUE0KPiA+PiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhCj4gPj4gPHZhbmRpdGEua3Vsa2FybmlA
aW50ZWwuY29tPgo+ID4+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvYmlvczogYWRkIGNvbXBy
ZXNzaW9uIHBhcmFtZXRlciBibG9jawo+ID4+IGRlZmluaXRpb24KPiA+Pgo+ID4+IEFkZCBkZWZp
bml0aW9uIGZvciBibG9jayA1NiwgdGhlIGNvbXByZXNzaW9uIHBhcmFtZXRlcnMuCj4gPj4KPiA+
PiBDYzogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4gPj4g
U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+PiAt
LS0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwg
NTAKPiA+PiArKysrKysrKysrKysrKysrKysrCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNl
cnRpb25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZidF9kZWZzLmgKPiA+PiBpbmRleCBlMzA0NWNlZDRiZmUuLjdmMjIyMTk2ZDJkNSAx
MDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmgKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmgKPiA+PiBAQCAtMTE0LDYgKzExNCw3IEBAIGVudW0gYmRiX2Jsb2NrX2lkIHsKPiA+PiAg
CUJEQl9MVkRTX1BPV0VSCQkJPSA0NCwKPiA+PiAgCUJEQl9NSVBJX0NPTkZJRwkJCT0gNTIsCj4g
Pj4gIAlCREJfTUlQSV9TRVFVRU5DRQkJPSA1MywKPiA+PiArCUJEQl9DT01QUkVTU0lPTl9QQVJB
TUVURVJTCT0gNTYsCj4gPj4gIAlCREJfU0tJUAkJCT0gMjU0LCAvKiBWQklPUyBwcml2YXRlIGJs
b2NrLCBpZ25vcmUKPiA+PiAqLwo+ID4+ICB9Owo+ID4+Cj4gPj4gQEAgLTgxMSw0ICs4MTIsNTMg
QEAgc3RydWN0IGJkYl9taXBpX3NlcXVlbmNlIHsKPiA+PiAgCXU4IGRhdGFbMF07IC8qIHVwIHRv
IDYgdmFyaWFibGUgbGVuZ3RoIGJsb2NrcyAqLyAgfSBfX3BhY2tlZDsKPiA+Pgo+ID4+ICsvKgo+
ID4+ICsgKiBCbG9jayA1NiAtIENvbXByZXNzaW9uIFBhcmFtZXRlcnMgICovCj4gPj4gKwo+ID4+
ICsjZGVmaW5lIFZCVF9SQ19CVUZGRVJfQkxPQ0tfU0laRV8xS0IJMAo+ID4+ICsjZGVmaW5lIFZC
VF9SQ19CVUZGRVJfQkxPQ0tfU0laRV80S0IJMQo+ID4+ICsjZGVmaW5lIFZCVF9SQ19CVUZGRVJf
QkxPQ0tfU0laRV8xNktCCTIKPiA+PiArI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJWkVf
NjRLQgkzCj4gPj4gKwo+ID4+ICsjZGVmaW5lIFZCVF9EU0NfTElORV9CVUZGRVJfREVQVEgodmJ0
X3ZhbHVlKQkoKHZidF92YWx1ZSkgKyA4KSAvKgo+ID4+IGJpdHMgKi8KPiA+PiArI2RlZmluZSBW
QlRfRFNDX01BWF9CUFAodmJ0X3ZhbHVlKQkJKDYgKyAodmJ0X3ZhbHVlKSAqIDIpCj4gPj4gKwo+
ID4+ICtzdHJ1Y3QgZHNjX2NvbXByZXNzaW9uX3BhcmFtZXRlcnNfZW50cnkgewo+ID4+ICsJdTgg
dmVyc2lvbl9tYWpvcjo0Owo+ID4+ICsJdTggdmVyc2lvbl9taW5vcjo0Owo+ID4+ICsKPiA+PiAr
CXU4IHJjX2J1ZmZlcl9ibG9ja19zaXplOjI7Cj4gPj4gKwl1OCByZXNlcnZlZDE6NjsKPiA+PiAr
Cj4gPj4gKwkvKgo+ID4+ICsJICogQnVmZmVyIHNpemUgaW4gYnl0ZXM6Cj4gPj4gKwkgKgo+ID4+
ICsJICogNCBeIHJjX2J1ZmZlcl9ibG9ja19zaXplICogMTAyNCAqIChyY19idWZmZXJfc2l6ZSAr
IDEpIGJ5dGVzCj4gPj4gKwkgKi8KPiA+PiArCXU4IHJjX2J1ZmZlcl9zaXplOwo+ID4+ICsJdTMy
IHNsaWNlc19wZXJfbGluZTsKPiA+PiArCj4gPj4gKwl1OCBsaW5lX2J1ZmZlcl9kZXB0aDo0Owo+
ID4+ICsJdTggcmVzZXJ2ZWQyOjQ7Cj4gPj4gKwo+ID4+ICsJLyogRmxhZyBCaXRzIDEgKi8KPiA+
PiArCXU4IGJsb2NrX3ByZWRpY3Rpb25fZW5hYmxlOjE7Cj4gPj4gKwl1OCByZXNlcnZlZDM6NzsK
PiA+PiArCj4gPj4gKwl1OCBtYXhfYnBwOyAvKiBtYXBwaW5nICovCj4gPj4gKwo+ID4+ICsJLyog
Q29sb3IgZGVwdGggY2FwYWJpbGl0aWVzICovCj4gPgo+ID4gSSBkaWQgbm90IHVuZGVyc3RhbmQg
dGhlIHNwbGl0IGhlcmUsIHRoZSBzcGVjIHNheXMgQml0cyA3LTQgcmVzZXJ2ZWQuCj4gCj4gQml0
IDAgKmFuZCogYml0cyA3LTQgYXJlIHJlc2VydmVkLgpPaywgZ28gaXQuCgo+IAo+ID4+ICsJdTgg
cmVzZXJ2ZWQ0OjE7Cj4gPj4gKwl1OCBzdXBwb3J0XzhicGM6MTsKPiA+PiArCXU4IHN1cHBvcnRf
MTBicGM6MTsKPiA+PiArCXU4IHN1cHBvcnRfMTJicGM6MTsKPiA+PiArCXU4IHJlc2VydmVkNTo0
Owo+ID4KPiA+IERvIHdlIG5vdCBuZWVkIERTQyBzbGljZSBoZWlnaHQ/Cj4gCj4gV2hvb3BzLiBQ
b3N0ZWQgdjIuCgpUaGFua3MsClZhbmRpdGEuCj4gCj4gVGhhbmtzLAo+IEphbmkuCj4gCj4gCj4g
Pgo+ID4gUmVnYXJkcywKPiA+IC0gVmFuZGl0YQo+ID4+ICt9IF9fcGFja2VkOwo+ID4+ICsKPiA+
PiArc3RydWN0IGJkYl9jb21wcmVzc2lvbl9wYXJhbWV0ZXJzIHsKPiA+PiArCXUxNiBlbnRyeV9z
aXplOwo+ID4+ICsJc3RydWN0IGRzY19jb21wcmVzc2lvbl9wYXJhbWV0ZXJzX2VudHJ5IGRhdGFb
MTZdOyB9IF9fcGFja2VkOwo+ID4+ICsKPiA+PiAgI2VuZGlmIC8qIF9JTlRFTF9WQlRfREVGU19I
XyAqLwo+ID4+IC0tCj4gPj4gMi4yMC4xCj4gPgo+IAo+IC0tCj4gSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
