Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B252E2B3A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:36:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BD16E11C;
	Thu, 24 Oct 2019 07:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0156E11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:36:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,223,1569308400"; d="scan'208";a="349632686"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 24 Oct 2019 00:36:27 -0700
Received: from bgsmsx110.gar.corp.intel.com (10.223.4.212) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 00:36:18 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX110.gar.corp.intel.com ([169.254.11.93]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 13:06:15 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/bios: add compression parameter block definition
Thread-Index: AQHViOFy3z7fUAxgnkeqEsLFTZbOHadpaSoQ
Date: Thu, 24 Oct 2019 07:36:14 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80987BB5@BGSMSX108.gar.corp.intel.com>
References: <20191022140300.20872-1-jani.nikula@intel.com>
In-Reply-To: <20191022140300.20872-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGU3ODRlMWItMDg3Mi00ZGY1LWIzZjItZTU5NGUzNTExODdiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJVa2lDSkRXXC9tWWRpUExsYm5KVEVmR0dlbHYya0h6NFpOUDBoVmZyVHRoTDM4WCtmcU1vd0FtVUhFWHFtT2t0UyJ9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAyMiwgMjAxOSA3OjMzIFBN
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogTmlrdWxhLCBKYW5p
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YQo+IDx2YW5kaXRhLmt1
bGthcm5pQGludGVsLmNvbT4KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2Jpb3M6IGFkZCBj
b21wcmVzc2lvbiBwYXJhbWV0ZXIgYmxvY2sgZGVmaW5pdGlvbgo+IAo+IEFkZCBkZWZpbml0aW9u
IGZvciBibG9jayA1NiwgdGhlIGNvbXByZXNzaW9uIHBhcmFtZXRlcnMuCj4gCj4gQ2M6IFZhbmRp
dGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDUwICsrKysrKysrKysrKysrKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiBpbmRleCBlMzA0NWNlZDRi
ZmUuLjdmMjIyMTk2ZDJkNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ZidF9kZWZzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZidF9kZWZzLmgKPiBAQCAtMTE0LDYgKzExNCw3IEBAIGVudW0gYmRiX2Jsb2NrX2lk
IHsKPiAgCUJEQl9MVkRTX1BPV0VSCQkJPSA0NCwKPiAgCUJEQl9NSVBJX0NPTkZJRwkJCT0gNTIs
Cj4gIAlCREJfTUlQSV9TRVFVRU5DRQkJPSA1MywKPiArCUJEQl9DT01QUkVTU0lPTl9QQVJBTUVU
RVJTCT0gNTYsCj4gIAlCREJfU0tJUAkJCT0gMjU0LCAvKiBWQklPUyBwcml2YXRlIGJsb2NrLCBp
Z25vcmUKPiAqLwo+ICB9Owo+IAo+IEBAIC04MTEsNCArODEyLDUzIEBAIHN0cnVjdCBiZGJfbWlw
aV9zZXF1ZW5jZSB7Cj4gIAl1OCBkYXRhWzBdOyAvKiB1cCB0byA2IHZhcmlhYmxlIGxlbmd0aCBi
bG9ja3MgKi8gIH0gX19wYWNrZWQ7Cj4gCj4gKy8qCj4gKyAqIEJsb2NrIDU2IC0gQ29tcHJlc3Np
b24gUGFyYW1ldGVycwo+ICsgKi8KPiArCj4gKyNkZWZpbmUgVkJUX1JDX0JVRkZFUl9CTE9DS19T
SVpFXzFLQgkwCj4gKyNkZWZpbmUgVkJUX1JDX0JVRkZFUl9CTE9DS19TSVpFXzRLQgkxCj4gKyNk
ZWZpbmUgVkJUX1JDX0JVRkZFUl9CTE9DS19TSVpFXzE2S0IJMgo+ICsjZGVmaW5lIFZCVF9SQ19C
VUZGRVJfQkxPQ0tfU0laRV82NEtCCTMKPiArCj4gKyNkZWZpbmUgVkJUX0RTQ19MSU5FX0JVRkZF
Ul9ERVBUSCh2YnRfdmFsdWUpCSgodmJ0X3ZhbHVlKSArIDgpIC8qCj4gYml0cyAqLwo+ICsjZGVm
aW5lIFZCVF9EU0NfTUFYX0JQUCh2YnRfdmFsdWUpCQkoNiArICh2YnRfdmFsdWUpICogMikKPiAr
Cj4gK3N0cnVjdCBkc2NfY29tcHJlc3Npb25fcGFyYW1ldGVyc19lbnRyeSB7Cj4gKwl1OCB2ZXJz
aW9uX21ham9yOjQ7Cj4gKwl1OCB2ZXJzaW9uX21pbm9yOjQ7Cj4gKwo+ICsJdTggcmNfYnVmZmVy
X2Jsb2NrX3NpemU6MjsKPiArCXU4IHJlc2VydmVkMTo2Owo+ICsKPiArCS8qCj4gKwkgKiBCdWZm
ZXIgc2l6ZSBpbiBieXRlczoKPiArCSAqCj4gKwkgKiA0IF4gcmNfYnVmZmVyX2Jsb2NrX3NpemUg
KiAxMDI0ICogKHJjX2J1ZmZlcl9zaXplICsgMSkgYnl0ZXMKPiArCSAqLwo+ICsJdTggcmNfYnVm
ZmVyX3NpemU7Cj4gKwl1MzIgc2xpY2VzX3Blcl9saW5lOwo+ICsKPiArCXU4IGxpbmVfYnVmZmVy
X2RlcHRoOjQ7Cj4gKwl1OCByZXNlcnZlZDI6NDsKPiArCj4gKwkvKiBGbGFnIEJpdHMgMSAqLwo+
ICsJdTggYmxvY2tfcHJlZGljdGlvbl9lbmFibGU6MTsKPiArCXU4IHJlc2VydmVkMzo3Owo+ICsK
PiArCXU4IG1heF9icHA7IC8qIG1hcHBpbmcgKi8KPiArCj4gKwkvKiBDb2xvciBkZXB0aCBjYXBh
YmlsaXRpZXMgKi8KCkkgZGlkIG5vdCB1bmRlcnN0YW5kIHRoZSBzcGxpdCBoZXJlLCB0aGUgc3Bl
YyBzYXlzIEJpdHMgNy00IHJlc2VydmVkLgo+ICsJdTggcmVzZXJ2ZWQ0OjE7Cj4gKwl1OCBzdXBw
b3J0XzhicGM6MTsKPiArCXU4IHN1cHBvcnRfMTBicGM6MTsKPiArCXU4IHN1cHBvcnRfMTJicGM6
MTsKPiArCXU4IHJlc2VydmVkNTo0OwoKRG8gd2Ugbm90IG5lZWQgRFNDIHNsaWNlIGhlaWdodD8K
ClJlZ2FyZHMsCi0gVmFuZGl0YQo+ICt9IF9fcGFja2VkOwo+ICsKPiArc3RydWN0IGJkYl9jb21w
cmVzc2lvbl9wYXJhbWV0ZXJzIHsKPiArCXUxNiBlbnRyeV9zaXplOwo+ICsJc3RydWN0IGRzY19j
b21wcmVzc2lvbl9wYXJhbWV0ZXJzX2VudHJ5IGRhdGFbMTZdOyB9IF9fcGFja2VkOwo+ICsKPiAg
I2VuZGlmIC8qIF9JTlRFTF9WQlRfREVGU19IXyAqLwo+IC0tCj4gMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
