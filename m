Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB88232288D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 11:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FAB76E2B6;
	Tue, 23 Feb 2021 10:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440D26E2B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 10:08:42 +0000 (UTC)
IronPort-SDR: GRUeSpCtXR9jisQh5v6nVddioguIl/Vuie4daniqILlAf9seRJUto3iH0fWGdG49DUDNYcreQx
 NhaRryMuA2yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184867729"
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; d="scan'208";a="184867729"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 02:08:41 -0800
IronPort-SDR: HwBaM8lwV+KATQxGPtrwoO7p7TuKpT5RazGD6kl11381ZwsGWOl796RA0MJdRYXjtvtfe+iXx1
 CCHrKxZQnliw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; d="scan'208";a="499054316"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2021 02:08:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 02:08:40 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 02:08:39 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Tue, 23 Feb 2021 15:38:37 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/display: Do not allow DC3CO if PSR SF is
 enabled
Thread-Index: AQHXCWG+zf7SoyZdyUev33HlhGuZvqplgM+w
Date: Tue, 23 Feb 2021 10:08:37 +0000
Message-ID: <fdd0eaaad2f848038286b633d2540d3a@intel.com>
References: <20210222213006.1609085-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210222213006.1609085-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Do not allow DC3CO if
 PSR SF is enabled
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVuLCBHd2FuLWd5ZW9u
ZyA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgRmVicnVhcnkg
MjMsIDIwMjEgMzowMCBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+OyBTb3V6YSwg
Sm9zZQ0KPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2M10gZHJt
L2k5MTUvZGlzcGxheTogRG8gbm90IGFsbG93IERDM0NPIGlmIFBTUiBTRiBpcyBlbmFibGVkDQo+
IA0KPiBFdmVuIHRob3VnaCBHRU4xMisgSFcgc3VwcG9ydHMgUFNSICsgREMzQ08sIERNQydzIEhX
IERDM0NPIGV4aXQNCj4gbWVjaGFuaXNtIGhhcyBhbiBpc3N1ZSB3aXRoIHVzaW5nIG9mIFNlbGVj
dGl2ZSBGZWN0aCBhbmQgUFNSMiBtYW51YWwgdHJhY2tpbmcuDQo+IEFuZCBhcyBzb21lIEdFTjEy
KyBwbGF0Zm9ybXMgKFJLTCwgQURMLVMpIGRvbid0IHN1cHBvcnQgUFNSMiBIVyB0cmFja2luZywN
Cj4gU2VsZWN0aXZlIEZldGNoIHdpbGwgYmUgZW5hYmxlZCBieSBkZWZhdWx0IG9uIHRoYXQgcGxh
dGZvcm1zLg0KPiBUaGVyZWZvcmUgaWYgdGhlIHN5c3RlbSBlbmFibGVzIFBTUiBTZWxlY3RpdmUg
RmV0Y2ggLyBQU1IgbWFudWFsIHRyYWNraW5nLCBpdA0KPiBkb2VzIG5vdCBhbGxvdyBEQzNDTyBk
YyBzdGF0ZSwgaW4gdGhhdCBjYXNlLg0KPiANCj4gV2hlbiB0aGlzIERDM0NPIGV4aXQgaXNzdWUg
aXMgYWRkcmVzc2VkIHdoaWxlIFBTUiBTZWxlY3RpdmUgRmV0Y2ggaXMgZW5hYmxlZCwNCj4gdGhp
cyByZXN0cmljdGlvbiBzaG91bGQgYmUgcmVtb3ZlZC4NCj4gDQo+IHYyOiBBZGRyZXNzIEpvc2Un
cyByZXZpZXcgY29tbWVudC4NCj4gICAtIEZpeCB0eXBvDQo+ICAgLSBNb3ZlIGNoZWNrIHJvdXRp
bmUgb2YgREMzQ08gYWJpbGl0eSB0bw0KPiAgICAgdGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1dGVf
Y29uZmlnKCkNCj4gdjM6IENoYW5nZSB0aGUgY2hlY2sgcm91dGluZSBvZiBlbmFibGVtZW50IG9m
IHBzcjIgc2VsIGZldGNoLiAoSm9zZSkNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1n
eWVvbmcubXVuQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgNyArKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gaW5kZXggN2M2ZTU2MWY4NmMxLi5jZDQzNDI4NWUzYjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNjU0LDYgKzY1NCwxMyBAQCB0Z2xf
ZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCwNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsNCj4gIAl1MzIgZXhpdF9zY2FubGluZXM7DQo+IA0KPiArCS8qDQo+ICsJICogRE1D
J3MgREMzQ08gZXhpdCBtZWNoYW5pc20gaGFzIGFuIGlzc3VlIHdpdGggU2VsZWN0aXZlIEZlY3Ro
DQo+ICsJICogVE9ETzogd2hlbiB0aGUgaXNzdWUgaXMgYWRkcmVzc2VkLCB0aGlzIHJlc3RyaWN0
aW9uIHNob3VsZCBiZQ0KPiByZW1vdmVkLg0KPiArCSAqLw0KRWFybGllciB3aGVuIFBTUjIgSC9X
IHRyYWNraW5nIHdhcyBlbmFibGVkLCBEQzNDTyBleGl0IGFuZCBmcmFtZSB1cGRhdGVzIHdvcmtz
IG9uIGl0J3Mgb3duDQpTdXBwb3J0ZWQgYnkgREUgZW5naW5lIGFuZCBETUMgZmlybXdhcmUsIGJ1
dCB3aXRoIHNlbGVjdGl2ZSBmZXRjaCBlbmFibGUgIGFzIGl0IGRpc2FibGVzIHRoZSBQU1IyIEgv
Vw0KVHJhY2tpbmcuIEl0IHJlcXVpcmVzIHRvIGdldCBzZXF1ZW5jZSBvZiBEQzNDTyBleGl0IHdo
aWxlIFBTUjIgSC9XIHRyYWNraW5nIGRpc2FibGVkLg0KQnIsDQpBbnNodW1hbiBHdXB0YS4gIA0K
PiArCWlmIChjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ICsJCXJldHVybjsN
Cj4gKw0KPiAgCWlmICghKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVf
RU5fREMzQ08pKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtLQ0KPiAyLjMwLjANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
