Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E50D03FE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 01:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E8E6E8AD;
	Tue,  8 Oct 2019 23:19:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60306E8AD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 23:19:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 16:19:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="223393304"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga002.fm.intel.com with ESMTP; 08 Oct 2019 16:19:02 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.212]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.139]) with mapi id 14.03.0439.000;
 Tue, 8 Oct 2019 16:19:02 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 10/11] drm/framebuffer/tgl: Format modifier for
 Intel Gen 12 render compression with Clear Color
Thread-Index: AQHVcmtRyt40OjCVJUmgvSka6uCRXKdLslQAgAXGLIA=
Date: Tue, 8 Oct 2019 23:19:01 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E15F81E4A@ORSMSX101.amr.corp.intel.com>
References: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
 <20190924000328.29571-11-radhakrishna.sripada@intel.com>
 <bfbedcb02668ba8c2bfaaf0c2f10ccb79311b4db.camel@intel.com>
In-Reply-To: <bfbedcb02668ba8c2bfaaf0c2f10ccb79311b4db.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmQ3YmJlN2QtNGNiYi00ZDM2LTg2MTktNGJlZWExODM3YTAzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiekNOd1BKWFgySDFMRmFOZTFXS09FbThUK2N6NHlIKzNRbW0wdXNYREtBblFheE1cL29vXC9McVNxbHN4YUlHS3RGIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/framebuffer/tgl: Format
 modifier for Intel Gen 12 render compression with Clear Color
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
Cc: "Chery, Nanley G" <nanley.g.chery@intel.com>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGFuZGl5YW4sIERo
aW5ha2FyYW4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDQsIDIwMTkgNTowOCBQTQ0KPiBUbzog
U3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU3lyamFsYSwgVmlsbGUg
PHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPjsgU2hhcm1hLCBTaGFzaGFuaw0KPiA8c2hhc2hhbmsu
c2hhcm1hQGludGVsLmNvbT47IEFudG9nbm9sbGksIFJhZmFlbA0KPiA8cmFmYWVsLmFudG9nbm9s
bGlAaW50ZWwuY29tPjsgUm9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT47IENoZXJ5LCBOYW5sZXkgRw0KPiA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPjsgVmls
bGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ow0KPiBLb25kYXBhbGx5
LCBLYWx5YW4gPGthbHlhbi5rb25kYXBhbGx5QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQ
QVRDSCB2MiAxMC8xMV0gZHJtL2ZyYW1lYnVmZmVyL3RnbDogRm9ybWF0IG1vZGlmaWVyIGZvciBJ
bnRlbA0KPiBHZW4gMTIgcmVuZGVyIGNvbXByZXNzaW9uIHdpdGggQ2xlYXIgQ29sb3INCj4gDQo+
IE9uIE1vbiwgMjAxOS0wOS0yMyBhdCAxNzowMyAtMDcwMCwgUmFkaGFrcmlzaG5hIFNyaXBhZGEg
d3JvdGU6DQo+ID4gR2VuMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVz
c2VkIGJ5IHJlbmRlciBlbmdpbmUgd2l0aA0KPiA+IENsZWFyIENvbG9yLCBhZGQgYSBuZXcgbW9k
aWZpZXIgYXMgdGhlIGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSBzdXJmYWNlDQo+IHdhcyBjb21w
cmVzc2VkIGJ5IHJlbmRlciBlbmdpbmUuDQo+ID4NCj4gPiBWMjogRGVzY3JpcHRpb24gY2hhbmdl
cyBhcyBzdWdnZXN0ZWQgYnkgUmFmYWVsLg0KPiA+DQo+ID4gQ2M6IFZpbGxlIFN5cmphbGEgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBEaGluYWthcmFuIFBhbmRpeWFu
IDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gPiBDYzogS2FseWFuIEtvbmRhcGFs
bHkgPGthbHlhbi5rb25kYXBhbGx5QGludGVsLmNvbT4NCj4gPiBDYzogUmFmYWVsIEFudG9nbm9s
bGkgPHJhZmFlbC5hbnRvZ25vbGxpQGludGVsLmNvbT4NCj4gPiBDYzogTmFubGV5IENoZXJ5IDxu
YW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5h
IFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
aW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggfCAxMSArKysrKysrKysrKw0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oDQo+ID4gYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3Vy
Y2MuaCBpbmRleCBjNGE0ZTBmZGJlZTUuLjk5YzYxZWU5YjYxZg0KPiA+IDEwMDY0NA0KPiA+IC0t
LSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oDQo+ID4gKysrIGIvaW5jbHVkZS91YXBp
L2RybS9kcm1fZm91cmNjLmgNCj4gPiBAQCAtNDM0LDYgKzQzNCwxNyBAQCBleHRlcm4gIkMiIHsN
Cj4gPiAgICovDQo+ID4gICNkZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNf
Q0NTDQo+IGZvdXJjY19tb2RfY29kZShJTlRFTCwNCj4gPiA3KQ0KPiA+DQo+ID4gKy8qDQo+ID4g
KyAqIEludGVsIGNvbG9yIGNvbnRyb2wgc3VyZmFjZXMgQ2xlYXIgQ29sb3IoQ0NTX0NDKSBmb3Ig
R2VuLTEyIHJlbmRlcg0KPiBjb21wcmVzc2lvbi4NCj4gPiArICoNCj4gPiArICogVGhlIG1haW4g
c3VyZmFjZSBpcyBZLXRpbGVkIGFuZCBpcyBhdCBwbGFuZSBpbmRleCAwIHdoZXJlYXMgQ0NTX0ND
DQo+ID4gK2lzIGxpbmVhcg0KPiA+ICsgKiBhbmQgYXQgaW5kZXggMS4NCj4gDQo+IENsZWFyIGNv
bG9yIGRhdGEgaXMgZml4ZWQgc2l6ZSAtIDY0YiwgdGhhdCBzaG91bGQgYmUgaW4gdGhlIGRvY3Vt
ZW50YXRpb24gaGVyZS4NClN1cmUgd2lsbCB1cGRhdGUgdGhlIGRvY3VtZW50YXRpb24gaW4gbmV4
dCByZXYuDQoNClRoYW5rcywNClJhZGhha3Jpc2huYShSSykgU3JpcGFkYQ0KPiANCj4gDQo+ID4g
VGhlIGNsZWFyIGNvbG9yIGlzIHN0b3JlZCBhdCBpbmRleCAyLCBhbmQgdGhlIHBpdGNoIHNob3Vs
ZA0KPiA+ICsgKiBiZSBpZ25vcmVkLiBBIENDU19DQyBjYWNoZSBsaW5lIGNvcnJlc3BvbmRzIHRv
IGFuIGFyZWEgb2YgNHgxDQo+ID4gKyB0aWxlcyBpbiB0aGUNCj4gVGhhdCdzIGEgQ0NTIGNhY2hl
IGxpbmUsIG5vdCBhIENDU19DQyBjYWNoZSBsaW5lLCByaWdodD8NCj4gDQo+ID4gKyAqIG1haW4g
c3VyZmFjZS4gVGhlIG1haW4gc3VyZmFjZSBwaXRjaCBpcyByZXF1aXJlZCB0byBiZSBhIG11bHRp
cGxlDQo+ID4gK29mIDQgdGlsZQ0KPiA+ICsgKiB3aWR0aHMuDQo+ID4gKyAqLw0KPiA+ICsjZGVm
aW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQw0KPiA+ICtmb3VyY2Nf
bW9kX2NvZGUoSU5URUwsIDgpDQo+ID4gKw0KPiA+ICAvKg0KPiA+ICAgKiBUaWxlZCwgTlYxMk1U
LCBncm91cGVkIGluIDY0IChwaXhlbHMpIHggMzIgKGxpbmVzKSAtc2l6ZWQgbWFjcm9ibG9ja3MN
Cj4gPiAgICoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
