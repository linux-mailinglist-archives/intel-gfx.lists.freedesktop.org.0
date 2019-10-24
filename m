Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB951E2C2D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 10:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368CE6E179;
	Thu, 24 Oct 2019 08:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A365F6E179
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 08:29:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 01:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192115353"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 24 Oct 2019 01:29:40 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 01:29:40 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 01:29:40 -0700
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 24 Oct 2019 01:29:39 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.250]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 13:59:37 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/bios: add compression parameter block
 definition
Thread-Index: AQHVikCInc4kGJ/pWkaVz7wrPIWCFadpdbBQ
Date: Thu, 24 Oct 2019 08:29:36 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80987CA0@BGSMSX108.gar.corp.intel.com>
References: <20191022140300.20872-1-jani.nikula@intel.com>
 <20191024075608.11511-1-jani.nikula@intel.com>
In-Reply-To: <20191024075608.11511-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGQ0MmUxZjUtMDRiOS00YzBjLTgxOGMtNzFmYTRkNTU4ZTAyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJsY0NrR0s5eEY4cHRNVUFaWDZCYUE4UnBtalM4NzZzMVZoUE5OYTAwN3ZZMUg3cHMxclBqQmRaUmx6djJTcXYyIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/bios: add compression parameter
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

Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDI0LCAyMDE5IDE6MjYg
UE0KPiBUbzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IEt1bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1
bGthcm5pQGludGVsLmNvbT4KPiBTdWJqZWN0OiBbUEFUQ0ggdjJdIGRybS9pOTE1L2Jpb3M6IGFk
ZCBjb21wcmVzc2lvbiBwYXJhbWV0ZXIgYmxvY2sKPiBkZWZpbml0aW9uCj4gCj4gQWRkIGRlZmlu
aXRpb24gZm9yIGJsb2NrIDU2LCB0aGUgY29tcHJlc3Npb24gcGFyYW1ldGVycy4KPiAKPiB2Mjog
YWRkIG1pc3Npbmcgc2xpY2VfaGVpZ2h0IChWYW5kaXRhKQo+IAo+IENjOiBWYW5kaXRhIEt1bGth
cm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQoKTG9va3MgZ29vZCB0byBtZS4KUmV2
aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgoK
VGhhbmtzLApWYW5kaXRhCgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zi
dF9kZWZzLmggfCA1MiArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MiBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmJ0X2RlZnMuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92YnRfZGVmcy5oCj4gaW5kZXggZTMwNDVjZWQ0YmZlLi42OWE3Y2IxZmExMjEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gQEAgLTEx
NCw2ICsxMTQsNyBAQCBlbnVtIGJkYl9ibG9ja19pZCB7Cj4gIAlCREJfTFZEU19QT1dFUgkJCT0g
NDQsCj4gIAlCREJfTUlQSV9DT05GSUcJCQk9IDUyLAo+ICAJQkRCX01JUElfU0VRVUVOQ0UJCT0g
NTMsCj4gKwlCREJfQ09NUFJFU1NJT05fUEFSQU1FVEVSUwk9IDU2LAo+ICAJQkRCX1NLSVAJCQk9
IDI1NCwgLyogVkJJT1MgcHJpdmF0ZSBibG9jaywgaWdub3JlCj4gKi8KPiAgfTsKPiAKPiBAQCAt
ODExLDQgKzgxMiw1NSBAQCBzdHJ1Y3QgYmRiX21pcGlfc2VxdWVuY2Ugewo+ICAJdTggZGF0YVsw
XTsgLyogdXAgdG8gNiB2YXJpYWJsZSBsZW5ndGggYmxvY2tzICovICB9IF9fcGFja2VkOwo+IAo+
ICsvKgo+ICsgKiBCbG9jayA1NiAtIENvbXByZXNzaW9uIFBhcmFtZXRlcnMKPiArICovCj4gKwo+
ICsjZGVmaW5lIFZCVF9SQ19CVUZGRVJfQkxPQ0tfU0laRV8xS0IJMAo+ICsjZGVmaW5lIFZCVF9S
Q19CVUZGRVJfQkxPQ0tfU0laRV80S0IJMQo+ICsjZGVmaW5lIFZCVF9SQ19CVUZGRVJfQkxPQ0tf
U0laRV8xNktCCTIKPiArI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJWkVfNjRLQgkzCj4g
Kwo+ICsjZGVmaW5lIFZCVF9EU0NfTElORV9CVUZGRVJfREVQVEgodmJ0X3ZhbHVlKQkoKHZidF92
YWx1ZSkgKyA4KSAvKgo+IGJpdHMgKi8KPiArI2RlZmluZSBWQlRfRFNDX01BWF9CUFAodmJ0X3Zh
bHVlKQkJKDYgKyAodmJ0X3ZhbHVlKSAqIDIpCj4gKwo+ICtzdHJ1Y3QgZHNjX2NvbXByZXNzaW9u
X3BhcmFtZXRlcnNfZW50cnkgewo+ICsJdTggdmVyc2lvbl9tYWpvcjo0Owo+ICsJdTggdmVyc2lv
bl9taW5vcjo0Owo+ICsKPiArCXU4IHJjX2J1ZmZlcl9ibG9ja19zaXplOjI7Cj4gKwl1OCByZXNl
cnZlZDE6NjsKPiArCj4gKwkvKgo+ICsJICogQnVmZmVyIHNpemUgaW4gYnl0ZXM6Cj4gKwkgKgo+
ICsJICogNCBeIHJjX2J1ZmZlcl9ibG9ja19zaXplICogMTAyNCAqIChyY19idWZmZXJfc2l6ZSAr
IDEpIGJ5dGVzCj4gKwkgKi8KPiArCXU4IHJjX2J1ZmZlcl9zaXplOwo+ICsJdTMyIHNsaWNlc19w
ZXJfbGluZTsKPiArCj4gKwl1OCBsaW5lX2J1ZmZlcl9kZXB0aDo0Owo+ICsJdTggcmVzZXJ2ZWQy
OjQ7Cj4gKwo+ICsJLyogRmxhZyBCaXRzIDEgKi8KPiArCXU4IGJsb2NrX3ByZWRpY3Rpb25fZW5h
YmxlOjE7Cj4gKwl1OCByZXNlcnZlZDM6NzsKPiArCj4gKwl1OCBtYXhfYnBwOyAvKiBtYXBwaW5n
ICovCj4gKwo+ICsJLyogQ29sb3IgZGVwdGggY2FwYWJpbGl0aWVzICovCj4gKwl1OCByZXNlcnZl
ZDQ6MTsKPiArCXU4IHN1cHBvcnRfOGJwYzoxOwo+ICsJdTggc3VwcG9ydF8xMGJwYzoxOwo+ICsJ
dTggc3VwcG9ydF8xMmJwYzoxOwo+ICsJdTggcmVzZXJ2ZWQ1OjQ7Cj4gKwo+ICsJdTE2IHNsaWNl
X2hlaWdodDsKPiArfSBfX3BhY2tlZDsKPiArCj4gK3N0cnVjdCBiZGJfY29tcHJlc3Npb25fcGFy
YW1ldGVycyB7Cj4gKwl1MTYgZW50cnlfc2l6ZTsKPiArCXN0cnVjdCBkc2NfY29tcHJlc3Npb25f
cGFyYW1ldGVyc19lbnRyeSBkYXRhWzE2XTsgfSBfX3BhY2tlZDsKPiArCj4gICNlbmRpZiAvKiBf
SU5URUxfVkJUX0RFRlNfSF8gKi8KPiAtLQo+IDIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
