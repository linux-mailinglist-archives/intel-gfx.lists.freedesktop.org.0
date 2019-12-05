Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75323113F2B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 11:15:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E616F641;
	Thu,  5 Dec 2019 10:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D106F641
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 10:15:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 02:15:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="236622393"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 05 Dec 2019 02:15:32 -0800
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 02:15:32 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.149]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 15:45:31 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 07/13] drm/i915/dsi: set pipe_bpp on ICL configure
 config
Thread-Index: AQHVpF+HdJ49m+/4skK5eZ88gajE+KerKqhA
Date: Thu, 5 Dec 2019 10:15:30 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809DA25C@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <0013df8e5c8e8443bd790bbc9e10ad5a05d8a2fd.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <0013df8e5c8e8443bd790bbc9e10ad5a05d8a2fd.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDNhNTcxNjMtYjYxOC00NTg2LTljMDItZjkxOWQ4OTM4Y2QzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ1bUtiZzBpbXVNcnFPeG5uNVwvN2tPUG9kSEVlVWNMT0VFUTNiaTh5NmxqSEh2STdBT1wvcUhNV09ZOENxVWE1aVYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 07/13] drm/i915/dsi: set pipe_bpp on ICL
 configure config
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
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAwNy8xM10gZHJtL2k5MTUvZHNp
OiBzZXQgcGlwZV9icHAgb24gSUNMIGNvbmZpZ3VyZSBjb25maWcNCj4gDQo+IFRoZSBJQ0wgRFNJ
IHBpcGVfYnBwIGN1cnJlbnRseSBjb21lcyBmcm9tIGNvbXB1dGVfYmFzZWxpbmVfcGlwZV9icHAo
KS4NCj4gRml4IGl0Lg0KPiANCj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2ku
YyB8IDUgKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IGluZGV4IGY2ODgyMDc5MzJl
MC4uZWY1M2VkNmQzZWNmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ljbF9kc2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYw0KPiBAQCAtMTI4Niw2ICsxMjg2LDExIEBAIHN0YXRpYyBpbnQgZ2VuMTFfZHNpX2NvbXB1
dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCWVsc2UNCj4g
IAkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyID0gVFJBTlNDT0RFUl9EU0lfMDsNCj4gDQoN
CkNhbiB3ZSB1c2UgbWlwaV9kc2lfcGl4ZWxfZm9ybWF0X3RvX2JwcD8NCg0KPiArCWlmIChpbnRl
bF9kc2ktPnBpeGVsX2Zvcm1hdCA9PSBNSVBJX0RTSV9GTVRfUkdCODg4KQ0KPiArCQlwaXBlX2Nv
bmZpZy0+cGlwZV9icHAgPSAyNDsNCj4gKwllbHNlDQo+ICsJCXBpcGVfY29uZmlnLT5waXBlX2Jw
cCA9IDE4Ow0KPiArDQpPdGhlcndpc2UgTEdUTS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGth
cm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCg0KVGhhbmtzLA0KVmFuZGl0YQ0KPiAg
CXBpcGVfY29uZmlnLT5jbG9ja19zZXQgPSB0cnVlOw0KPiAgCXBpcGVfY29uZmlnLT5wb3J0X2Ns
b2NrID0gaW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSAvIDU7DQo+IA0KPiAtLQ0KPiAyLjIw
LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
