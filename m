Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A05FC97D1D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB7C89DB7;
	Wed, 21 Aug 2019 14:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87D989DB7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:34:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 07:34:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="207752088"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2019 07:34:33 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.73]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.61]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 15:34:15 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 37/40] drm/framebuffer/tgl: Format
 modifier for Intel Gen-12 render compression
Thread-Index: AQHVVN/f0i+WtClRxEyzz914oy3896cFn+8A
Date: Wed, 21 Aug 2019 14:34:14 +0000
Message-ID: <ff56d07c50d07f7bb381b2c4a08e0744ffa4d665.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-38-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-38-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.154]
Content-ID: <C3BA5029AA29664DBDB1557CB91BB43E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 37/40] drm/framebuffer/tgl: Format
 modifier for Intel Gen-12 render compression
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwu
Y29tPg0KPiANCj4gR2VuLTEyIGhhcyBhIG5ldyBjb21wcmVzc2lvbiBmb3JtYXQsIGFkZCBhIG5l
dyBtb2RpZmllciBmb3IgdXNlcnNwYWNlDQo+IHRvDQo+IGluZGljYXRlIHRoYXQuDQo+IA0KPiBD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggfCAxMCArKysrKysrKysr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oDQo+IGIvaW5jbHVkZS91YXBpL2RybS9kcm1f
Zm91cmNjLmgNCj4gaW5kZXggM2ZlZWFhM2Y5ODdhLi5mYjcyNzBiZjk2NzAgMTAwNjQ0DQo+IC0t
LSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oDQo+ICsrKyBiL2luY2x1ZGUvdWFwaS9k
cm0vZHJtX2ZvdXJjYy5oDQo+IEBAIC00MTAsNiArNDEwLDE2IEBAIGV4dGVybiAiQyIgew0KPiAg
I2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1MJZm91cmNjX21vZF9jb2RlKElOVEVM
LCA0KQ0KPiAgI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTCWZvdXJjY19tb2Rf
Y29kZShJTlRFTCwgNSkNCj4gIA0KPiArLyoNCj4gKyAqIEludGVsIGNvbG9yIGNvbnRyb2wgc3Vy
ZmFjZXMgKENDUykgZm9yIEdlbi0xMiByZW5kZXIgY29tcHJlc3Npb24uDQo+ICsgKg0KPiArICog
VGhlIG1haW4gc3VyZmFjZSBpcyBZLXRpbGVkIGFuZCBpcyBhdCBwbGFuZSBpbmRleCAwIHdoZXJl
YXMgQ0NTDQo+IGlzIGxpbmVhciBhbmQNCj4gKyAqIGF0IGluZGV4IDEuIEEgQ0NTIGNhY2hlIGxp
bmUgY29ycmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0eDEgdGlsZXMNCj4gaW4gdGhlIG1haW4NCj4g
KyAqIHN1cmZhY2UuIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBt
dWx0aXBsZSBvZiA0DQo+IHRpbGUNCj4gKyAqIHdpZHRocy4NCj4gKyAqLw0KPiArI2RlZmluZSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgZm91cmNjX21vZF9jb2RlKElOVEVM
LA0KPiA2KQ0KPiArDQo+ICAvKg0KPiAgICogVGlsZWQsIE5WMTJNVCwgZ3JvdXBlZCBpbiA2NCAo
cGl4ZWxzKSB4IDMyIChsaW5lcykgLXNpemVkDQo+IG1hY3JvYmxvY2tzDQo+ICAgKg0KDQpSZXZp
ZXdlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5j
b20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
