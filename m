Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 717747A13F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 08:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D86789A8B;
	Tue, 30 Jul 2019 06:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC0789A88
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 06:24:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 23:24:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,325,1559545200"; d="scan'208";a="200056272"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jul 2019 23:24:36 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 29 Jul 2019 23:24:32 -0700
Received: from bgsmsx104.gar.corp.intel.com (10.223.4.190) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 29 Jul 2019 23:24:32 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.155]) by
 BGSMSX104.gar.corp.intel.com ([169.254.5.156]) with mapi id 14.03.0439.000;
 Tue, 30 Jul 2019 11:54:31 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/tgl/dsi: Program TRANS_VBLANK register
Thread-Index: AQHVMJDVMW0lCyg1iUaFt2YLe9k4nKbMvLaAgBYgBZA=
Date: Tue, 30 Jul 2019 06:24:31 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B8091E7A2@BGSMSX108.gar.corp.intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
 <20190702041850.4293-2-vandita.kulkarni@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8212EC57@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8212EC57@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWQxYzk1NWYtOGMxZi00YmZlLTljYmYtMDA3YzliMWE0NDNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJMNXNRUFY4c3FQTkV2VjI3Z0Y4UXRwU05CUTNLcDVoMkI3TWpjXC9SOVlQMVwvbURLMUMrWW1UUVcreWczVERrbkkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/tgl/dsi: Program TRANS_VBLANK
 register
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogU2hhbmthciwgVW1hCj4gU2Vu
dDogVHVlc2RheSwgSnVseSAxNiwgMjAxOSAzOjI5IFBNCj4gVG86IEt1bGthcm5pLCBWYW5kaXRh
IDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT47IGludGVsLQo+IGdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IE5pa3VsYSwgSmFu
aSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggMS80XSBkcm0v
aTkxNS90Z2wvZHNpOiBQcm9ncmFtIFRSQU5TX1ZCTEFOSyByZWdpc3Rlcgo+IAo+IAo+IAo+ID4t
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBLdWxrYXJuaSwgVmFuZGl0YQo+ID5T
ZW50OiBUdWVzZGF5LCBKdWx5IDIsIDIwMTkgOTo0OSBBTQo+ID5UbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+ID5DYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IE5p
a3VsYSwgSmFuaQo+ID48amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgU2hhbmthciwgVW1hIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+Owo+ID5LdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+Cj4gPlN1YmplY3Q6IFtQQVRDSCAxLzRdIGRybS9pOTE1L3RnbC9kc2k6IFBy
b2dyYW0gVFJBTlNfVkJMQU5LIHJlZ2lzdGVyCj4gPgo+ID5Qcm9ncmFtIHZibGFuayByZWdpc3Rl
ciBmb3IgbWlwaSBkc2kgaW4gdmlkZW8gbW9kZSBvbiBUR0wuCj4gPgo+ID5TaWduZWQtb2ZmLWJ5
OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiA+LS0tCj4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDkgKysrKysrKysrCj4g
PiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gPgo+ID5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+Yi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+ID5pbmRleCBiODY3M2RlYmY5MzIuLjU1NmViYTI2MzZm
ZSAxMDA2NDQKPiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMK
PiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+QEAgLTg2
Niw2ICs4NjYsMTUgQEAgZ2VuMTFfZHNpX3NldF90cmFuc2NvZGVyX3RpbWluZ3Moc3RydWN0Cj4g
PmludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gPiAJCWRzaV90cmFucyA9IGRzaV9wb3J0X3RvX3Ry
YW5zY29kZXIocG9ydCk7Cj4gPiAJCUk5MTVfV1JJVEUoVlNZTkNTSElGVChkc2lfdHJhbnMpLCB2
c3luY19zaGlmdCk7Cj4gPiAJfQo+ID4rCj4gPisJLyogcHJvZ3JhbSBUUkFOU19WQkxBTksgcmVn
aXN0ZXIsIHNob3VsZCBiZSBzYW1lIGFzIHZ0b3RhbAo+IHByb2dhbW1lZAo+ID4rKi8KPiAKPiBU
eXBvIGhlcmUgaW4gcHJvZ3JhbW1lZC4KVGhhbmtzIGZvciB0aGUgcmV2aWV3LgpXaWxsIGZpeC4K
PiAKPiA+KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+ID4rCQlmb3JfZWFjaF9k
c2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Cj4gPisJCQlkc2lfdHJhbnMgPSBkc2lf
cG9ydF90b190cmFuc2NvZGVyKHBvcnQpOwo+ID4rCQkJSTkxNV9XUklURShWQkxBTksoZHNpX3Ry
YW5zKSwKPiA+KwkJCQkgICAodmFjdGl2ZSAtIDEpIHwgKCh2dG90YWwgLSAxKSA8PCAxNikpOwo+
IAo+IFdlIGNhbiBwdXQgdGhpcyBsaW5lIGFsb25nIHdpdGggVlRPVEFMIGFuZCBnZXQgcmlkIG9m
IHRoaXMgZXh0cmEgZm9yIGxvb3AuCkJ1dCBsb29rcyBsaWtlIHRoZSByZXN0IG9mIHRoZSBjb2Rl
IGlzIHdyaXR0ZW4gaW4gdGhlIHNpbWlsYXIgZmFzaGlvbi4gSXQgZ2l2ZXMgYmV0dGVyIHJlYWRh
YmlsaXR5IGFzIGl0IGhhcyBwbGF0Zm9ybSBjaGVjayB0b28uCkFsc28gaXQgaXMgY2FsbGVkIGR1
cmluZyBtb2Rlc2V0LCBpdCBpcyBub3QgdmVyeSBjbGVhciB0byBtZSBpZiBpdCBpcyBzaWduaWZp
Y2FudCBlbm91Z2guCgotVGhhbmtzClZhbmRpdGEKPiAKPiA+KwkJfQo+ID4rCX0KPiA+IH0KPiA+
Cj4gPiBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZW5hYmxlX3RyYW5zY29kZXIoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIpCj4gPi0tCj4gPjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
