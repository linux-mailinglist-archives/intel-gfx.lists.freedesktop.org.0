Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4946B212F74
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92BDE6E5A3;
	Thu,  2 Jul 2020 22:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4346E5A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:22:51 +0000 (UTC)
IronPort-SDR: rJ9dN3iyxICv84y3zFPUiCswBp6UZhn2sWcNA8ohnHlx7nWfUR1oVk6l/JWSgirW4RhSAervH/
 iCTAEJ17vSzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="126652562"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="126652562"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 15:22:51 -0700
IronPort-SDR: 1xQueag7TI5Tt2a+lrL08JO+dZ7hv2VkdYEY8A++5cEmt5z61VblIHmn5Dvg1fiD/TNWIHunbv
 rzHmqGY6i6SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="304384863"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 02 Jul 2020 15:22:51 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jul 2020 15:22:50 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.89]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 15:22:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/fbc: Allow FBC to recompress
 after a 3D workload on i85x/i865
Thread-Index: AQHWUIbBLSVZ7XmqQUawbmXG3DwEr6j1U2YA
Date: Thu, 2 Jul 2020 22:22:50 +0000
Message-ID: <fd39cf427dfdcfb65ab52ea938f810ee383321f1.camel@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20200702153723.24327-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <483CC6749F994C42B0C0CD1B12234A2A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/fbc: Allow FBC to recompress
 after a 3D workload on i85x/i865
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTA3LTAyIGF0IDE4OjM3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTm9ybWFsbHkgaTg1eC9pODY1IDNEIGFjdGl2aXR5IHdpbGwgYmxvY2sgRkJDIHVudGls
IGEgMkQgYmxpdA0KPiBvY2N1cnMuIEkgc3VwcG9zZSB0aGlzIHdhcyBtZWFudCB0byBhdm9pZCBy
ZWNvbXByZXNzaW9uIHdoaWxlDQo+IDNEIGFjdGl2aXR5IGlzIHN0aWxsIGdvaW5nIG9uIGJ1dCB0
aGUgZnJhbWUgaGFzbid0IHlldCBiZWVuDQo+IHByZXNlbnRlZC4gVW5mb3J0dW5hdGVseSB0aGF0
IGFsc28gbWVhbnMgdGhhdCBhIHBhZ2UgZmxpcHBlZA0KPiAzRCB3b3JrbG9hZCB3aWxsIHBlcm1h
bmVudGx5IGJsb2NrIEZCQyBldmVuIGlmIGl0IG9ubHkgcmVuZGVycw0KPiBhIHNpbmdsZSBmcmFt
ZSBhbmQgdGhlbiBkb2VzIG5vdGhpbmcuDQo+IA0KPiBTaW5jZSB3ZSBhcmUgdXNpbmcgc29mdHdh
cmUgcmVuZGVyIHRyYWNraW5nIGFueXdheSB3ZSBtaWdodCBhcw0KPiB3ZWxsIGZsaXAgdGhlIGNo
aWNrZW4gYml0IHNvIHRoYXQgM0QgZG9lcyBub3QgYmxvY2sgRkJDLiBUaGlzDQo+IHdpbGwgYXZv
aWQgdGhlIHBlcm1hbWVudCBGQkMgYmxvY2thZ2UgaW4gdGhlIGFmb3JlbWVudGlvbiB1c2UNCj4g
Y2FzZSwgYnV0IHRoYW5rcyB0byB0aGUgc29mdHdhcmUgdHJhY2tpbmcgdGhlIGNvbXByZXNzb3Ig
d2lsbA0KPiBub3QgZGlzdHVyYiAzRCByZW5kZXJpbmcgYWN0aXZpdHkuDQoNClJlZ2lzdGVyIGRv
ZXMgd2hhdCBpcyBkZXNjcmliZWQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyB8IDEwICsrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDlkNjUzNmFm
Yzk0Yi4uMDM1OTBkMmQ3NWY3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAg
LTI4MjcsNiArMjgyNyw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlk
KGk5MTVfcmVnX3QgcmVnKQ0KPiAgI2RlZmluZSBWTFZfR1VfQ1RMMAlfTU1JTyhWTFZfRElTUExB
WV9CQVNFICsgMHgyMDMwKQ0KPiAgI2RlZmluZSBWTFZfR1VfQ1RMMQlfTU1JTyhWTFZfRElTUExB
WV9CQVNFICsgMHgyMDM0KQ0KPiAgI2RlZmluZSBTQ1BEMAkJX01NSU8oMHgyMDljKSAvKiA5MTUr
IG9ubHkgKi8NCj4gKyNkZWZpbmUgIFNDUERfRkJDX0lHTk9SRV8zRAkJCSgxIDw8IDYpDQo+ICAj
ZGVmaW5lICBDU1RBVEVfUkVOREVSX0NMT0NLX0dBVEVfRElTQUJMRQkoMSA8PCA1KQ0KPiAgI2Rl
ZmluZSBHRU4yX0lFUglfTU1JTygweDIwYTApDQo+ICAjZGVmaW5lIEdFTjJfSUlSCV9NTUlPKDB4
MjBhNCkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGluZGV4IDU2NWEyYjlkYTNiMy4uMmQ5
ODBiODNhMWYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTc0NzEsNiAr
NzQ3MSwxNiBAQCBzdGF0aWMgdm9pZCBpODV4X2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIA0KPiAgCUk5MTVfV1JJVEUoTUVNX01PREUsDQo+
ICAJCSAgIF9NQVNLRURfQklUX0VOQUJMRShNRU1fRElTUExBWV9UUklDS0xFX0ZFRURfRElTQUJM
RSkpOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBIYXZlIEZCQyBpZ25vcmUgM0QgYWN0aXZpdHkgc2lu
Y2Ugd2UgdXNlIHNvZnR3YXJlDQo+ICsJICogcmVuZGVyIHRyYWNraW5nLCBhbmQgb3RoZXJ3aXNl
IGEgcHVyZSAzRCB3b3JrbG9hZA0KPiArCSAqIChldmVuIGlmIGl0IGp1c3QgcmVuZGVycyBhIHNp
bmdsZSBmcmFtZSBhbmQgdGhlbiBkb2VzDQo+ICsJICogYWJvc3VsdGVseSBub3RoaW5nKSB3b3Vs
ZCBub3QgYWxsb3cgRkJDIHRvIHJlY29tcHJlc3MNCj4gKwkgKiB1bnRpbCBhIDJEIGJsaXQgb2Nj
dXJzLg0KPiArCSAqLw0KPiArCUk5MTVfV1JJVEUoU0NQRDAsDQo+ICsJCSAgIF9NQVNLRURfQklU
X0VOQUJMRShTQ1BEX0ZCQ19JR05PUkVfM0QpKTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQg
aTgzMF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
