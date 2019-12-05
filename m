Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4D81142E3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 15:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827F56E122;
	Thu,  5 Dec 2019 14:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8527D6E122
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 14:44:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 06:44:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="263299406"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2019 06:44:15 -0800
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 06:44:13 -0800
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 06:44:13 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.141]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 20:14:08 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 11/13] drm/i915/dsi: use compressed pixel format
 with DSC
Thread-Index: AQHVpF+Ss5bgcnBZ1Em2x6wlL9y7zqerq/pA
Date: Thu, 5 Dec 2019 14:44:07 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809DA52F@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <728b5ba192a02dfa5143af9a7971e18cf3278541.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <728b5ba192a02dfa5143af9a7971e18cf3278541.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2NkN2NhMmQtMWZkZi00YjdjLWIyNGItZTAwZTNiMjkxNDgyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJFRmhXVnlDVVwvQ3lMd1RTSW1BeG9IdmxKKzBxVlZxTkdRdGRMXC9ReTdzR3NNTkhudWs3U3JnYVBjS2VSMU9CSFYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 11/13] drm/i915/dsi: use compressed pixel
 format with DSC
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhDQo+IDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAxMS8xM10gZHJtL2k5MTUvZHNp
OiB1c2UgY29tcHJlc3NlZCBwaXhlbCBmb3JtYXQgd2l0aA0KPiBEU0MNCj4gDQo+IFdoZW4gY29t
cHJlc3Npb24gaXMgZW5hYmxlZCwgY29uZmlndXJlIHRoZSBEU0kgdHJhbnNjb2RlciB0byB1c2UN
Cj4gY29tcHJlc3NlZCBmb3JtYXQuDQo+IA0KPiBTdWdnZXN0ZWQtYnk6IFZhbmRpdGEgS3Vsa2Fy
bmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBDYzogVmFuZGl0YSBLdWxrYXJuaSA8
dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpMb29rcyBnb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6
IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KDQpSZWdhcmRz
LA0KVmFuZGl0YQ0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2Rz
aS5jIHwgMzYgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
MCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IGluZGV4IDUxNDlhMjhhODc0Yi4uNDYwNzU5OTEzNzA4
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBAQCAtNjgy
LDIyICs2ODIsMjYgQEAgZ2VuMTFfZHNpX2NvbmZpZ3VyZV90cmFuc2NvZGVyKHN0cnVjdA0KPiBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiANCj4gIAkJLyogc2VsZWN0IHBpeGVsIGZvcm1hdCAq
Lw0KPiAgCQl0bXAgJj0gflBJWF9GTVRfTUFTSzsNCj4gLQkJc3dpdGNoIChpbnRlbF9kc2ktPnBp
eGVsX2Zvcm1hdCkgew0KPiAtCQlkZWZhdWx0Og0KPiAtCQkJTUlTU0lOR19DQVNFKGludGVsX2Rz
aS0+cGl4ZWxfZm9ybWF0KTsNCj4gLQkJCS8qIGZhbGx0aHJvdWdoICovDQo+IC0JCWNhc2UgTUlQ
SV9EU0lfRk1UX1JHQjU2NToNCj4gLQkJCXRtcCB8PSBQSVhfRk1UX1JHQjU2NTsNCj4gLQkJCWJy
ZWFrOw0KPiAtCQljYXNlIE1JUElfRFNJX0ZNVF9SR0I2NjZfUEFDS0VEOg0KPiAtCQkJdG1wIHw9
IFBJWF9GTVRfUkdCNjY2X1BBQ0tFRDsNCj4gLQkJCWJyZWFrOw0KPiAtCQljYXNlIE1JUElfRFNJ
X0ZNVF9SR0I2NjY6DQo+IC0JCQl0bXAgfD0gUElYX0ZNVF9SR0I2NjZfTE9PU0U7DQo+IC0JCQli
cmVhazsNCj4gLQkJY2FzZSBNSVBJX0RTSV9GTVRfUkdCODg4Og0KPiAtCQkJdG1wIHw9IFBJWF9G
TVRfUkdCODg4Ow0KPiAtCQkJYnJlYWs7DQo+ICsJCWlmIChwaXBlX2NvbmZpZy0+ZHNjLmNvbXBy
ZXNzaW9uX2VuYWJsZSkgew0KPiArCQkJdG1wIHw9IFBJWF9GTVRfQ09NUFJFU1NFRDsNCj4gKwkJ
fSBlbHNlIHsNCj4gKwkJCXN3aXRjaCAoaW50ZWxfZHNpLT5waXhlbF9mb3JtYXQpIHsNCj4gKwkJ
CWRlZmF1bHQ6DQo+ICsJCQkJTUlTU0lOR19DQVNFKGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsN
Cj4gKwkJCQkvKiBmYWxsdGhyb3VnaCAqLw0KPiArCQkJY2FzZSBNSVBJX0RTSV9GTVRfUkdCNTY1
Og0KPiArCQkJCXRtcCB8PSBQSVhfRk1UX1JHQjU2NTsNCj4gKwkJCQlicmVhazsNCj4gKwkJCWNh
c2UgTUlQSV9EU0lfRk1UX1JHQjY2Nl9QQUNLRUQ6DQo+ICsJCQkJdG1wIHw9IFBJWF9GTVRfUkdC
NjY2X1BBQ0tFRDsNCj4gKwkJCQlicmVhazsNCj4gKwkJCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2
NjoNCj4gKwkJCQl0bXAgfD0gUElYX0ZNVF9SR0I2NjZfTE9PU0U7DQo+ICsJCQkJYnJlYWs7DQo+
ICsJCQljYXNlIE1JUElfRFNJX0ZNVF9SR0I4ODg6DQo+ICsJCQkJdG1wIHw9IFBJWF9GTVRfUkdC
ODg4Ow0KPiArCQkJCWJyZWFrOw0KPiArCQkJfQ0KPiAgCQl9DQo+IA0KPiAgCQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMikgew0KPiAtLQ0KPiAyLjIwLjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
