Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FC24EE8B0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 09:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD0410FDBC;
	Fri,  1 Apr 2022 07:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8F210FDBB
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 07:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648796406; x=1680332406;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BlO3c8Gv46tRblYqXhTbb5ZDXZyudqzWe5PljlkZoEs=;
 b=FV+dN694nUsXPpNW/XMbTGow+6fariQ8Jx1x/o3EtZ8xRjs7K1plUv4N
 VTuw2HOIrkYeofVRh9A3jgXXxYqzwwXokOxXyd5ZO5VjEfaQ1yjF7tJEr
 88WhuxfI7yNb8dj2VaEZlKDdbR8TOHYJjHHUNzTBI9fL42S5TXQRbqrgs
 jyvhoFdrLCZTwqIiMNyBgIKQatLMBSUXKEfYGM7TLAFzrkfsN5a1MDl3H
 87PgwWAOE9VogDAzXsBXlCaI63xv/6y8xG6HyCSv4R159UL35DzM0407R
 2U1eTZYfmf4HciS51q6GQeoEY7tD+edwTOB3Pn47CnI2oTi1tljbii6C6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="284986608"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="284986608"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 00:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="522665105"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 01 Apr 2022 00:00:05 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 00:00:04 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 12:30:02 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 12:30:02 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Thread-Topic: [PATCH v2 12/12] drm/i915/dp: Disable DFP RGB->YCbCr conversion
 for now
Thread-Index: AQHYPeR8DEKjONXPl0667BxweGXye6zar55A
Date: Fri, 1 Apr 2022 07:00:02 +0000
Message-ID: <d56c9f3127a5499da87d2759ccd78496@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ankit.k.nautiyal@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 12/12] drm/i915/dp: Disable DFP
 RGB->YCbCr conversion for now
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIy
LCAyMDIyIDU6MzAgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IFNoYW5r
YXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MTIvMTJdIGRybS9pOTE1L2RwOiBEaXNhYmxlIERGUCBSR0ItPllDYkNyIGNvbnZlcnNpb24gZm9y
DQo+IG5vdw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IFdlIGxhY2sgc3VmZmljaWVudCBzdGF0ZSB0cmFja2luZyB0byBm
aWd1cmUgb3V0IHdoZXRoZXIgd2Ugd2FudCB0aGUgREZQIHRvIHBlcmZvcm0NCj4gdGhlIFJHQi0+
WUNiQ3IgY29udmVyc2lvbiBmb3IgdXMgb3Igbm90LiBTbyBjdXJyZW50bHkgd2UgYXJlIGJsaW5k
bHkganVzdCBlbmFibGluZw0KPiB0aGF0IGFsbCB0aGUgdGltZSB3aGVuIHN1cHBvcnRlZCBieSB0
aGUgREZQLiBUaGF0IGlzIG5vbnNlbnNlLiBTbyB1bnRpbCB3ZSBpbXBvcnZlDQo+IG91ciBzdGF0
ZSB0cmFja2luZyBmb3IgdGhpcyBqdXN0IGRpc2FibGUgdGhlIGZlYXR1cmUuDQo+IA0KPiBDYzog
QW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBDYzogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMCArKysrKysrKysrDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBkM2Q0NThiMzI2N2QuLmE1NzU4MTE5OGE0NyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMTE4
MCw2ICsxMTgwLDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc3VwcG9ydHNfZHNjKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHAsICBzdGF0aWMgYm9vbCBpbnRlbF9kcF9pc195Y2JjcjQyMChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gKwkvKiBGSVhNRSBzZWUgaW50ZWxfZHBfdXBkYXRl
XzQyMCgpIHJlZ2FyZGluZyByZ2JfdG9feWNiY3IgKi8NCj4gIAlyZXR1cm4gY3J0Y19zdGF0ZS0+
b3V0cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwDQo+IHx8DQo+ICAJ
CShjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID09DQo+IElOVEVMX09VVFBVVF9GT1JNQVRfWUNC
Q1I0NDQgJiYNCj4gIAkJIGludGVsX2RwLT5kZnAueWNiY3JfNDQ0X3RvXzQyMCk7DQo+IEBAIC0y
NTc0LDYgKzI1NzUsNyBAQCB2b2lkIGludGVsX2RwX2NvbmZpZ3VyZV9wcm90b2NvbF9jb252ZXJ0
ZXIoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAgICAiRmFpbGVkIHRvICVz
IHByb3RvY29sIGNvbnZlcnRlciBZQ2JDciA0OjI6MCBjb252ZXJzaW9uDQo+IG1vZGVcbiIsDQo+
ICAJCQkgICAgc3RyX2VuYWJsZV9kaXNhYmxlKGludGVsX2RwLT5kZnAueWNiY3JfNDQ0X3RvXzQy
MCkpOw0KPiANCj4gKwkvKiBGSVhNRSBzZWUgaW50ZWxfZHBfdXBkYXRlXzQyMCgpIHJlZ2FyZGlu
ZyByZ2JfdG9feWNiY3IgKi8NCj4gIAl0bXAgPSBpbnRlbF9kcC0+ZGZwLnJnYl90b195Y2JjciA/
DQo+ICAJCURQX0NPTlZFUlNJT05fQlQ3MDlfUkdCX1lDQkNSX0VOQUJMRSA6IDA7DQo+IA0KPiBA
QCAtNDQzMCw2ICs0NDMyLDE0IEBAIGludGVsX2RwX3VwZGF0ZV80MjAoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gIAlyZ2JfdG9feWNiY3IgPSBkcm1fZHBfZG93bnN0cmVhbV9yZ2JfdG9f
eWNiY3JfY29udmVyc2lvbihpbnRlbF9kcC0NCj4gPmRwY2QsDQo+ICAJCQkJCQkJCSBpbnRlbF9k
cC0NCj4gPmRvd25zdHJlYW1fcG9ydHMsDQo+IA0KPiBEUF9EU19IRE1JX0JUNzA5X1JHQl9ZQ0JD
Ul9DT05WKTsNCj4gKwkvKg0KPiArCSAqIEZJWE1FIG5lZWQgdG8gYWN0dWFsbHkgdHJhY2sgd2hl
dGhlciB3ZSdyZSByZWFsbHkNCj4gKwkgKiBnb2luZyB0byBiZSBkb2luZyB0aGUgUkdCLT5ZQ2JD
ciBjb25udmVyc2lvbiBvciBub3QuDQo+ICsJICogV2UgY2FuJ3QgdGVsbCBieSBzaW1wbHkgbG9v
a2luZyBhdCBpbnRlbF9kcC0+ZGZwLnJnYl90b195Y2Jjci4NCj4gKwkgKiBSZWFkb3V0IGlzIGdv
aW5nIHRvIGFubm95aW5nIGR1ZSB0byBoYXZpbmcgdG8gcmVhZCB0aGF0DQo+ICsJICogc3RhdGUg
ZnJvbSBleHRlcm5hbCBoYXJkd2FyZSB0aGF0IG1heSB2YW5pc2ggYXQgYW55IHRpbWUgOigNCj4g
KwkgKi8NCj4gKwlyZ2JfdG9feWNiY3IgPSBmYWxzZTsNCg0KSSB0aGluayB0aGlzIHdpbGwgYnJl
YWsgOGsgeXV2IHBjb24gY2FzZSBhcyBvZiBub3cuDQpATmF1dGl5YWwsIEFua2l0IEsgQ2FuIHdl
IGdldCB0aGF0IGZpeGVkLiBXZSB3aWxsIG5lZWQgOGsgWVVWIGZyb20gc291cmNlIGR1ZSB0bw0K
YmFuZHdpZHRoIGNvbnN0cmFpbnRzLg0KDQpSZXN0IG9mIHRoZSBzZXJpZXMgYWxsIGxvb2tzIG5p
Y2UgYW5kIGdvb2QuDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+ICAJaWYgKERJU1BMQVlf
VkVSKGk5MTUpID49IDExKSB7DQo+ICAJCS8qIExldCBQQ09OIGNvbnZlcnQgZnJvbSBSR0ItPllD
YkNyIGlmIHBvc3NpYmxlICovDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
