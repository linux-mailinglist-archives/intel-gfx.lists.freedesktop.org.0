Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E51C63ABDF3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C466E372;
	Thu, 17 Jun 2021 21:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B276E1F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:26:36 +0000 (UTC)
IronPort-SDR: KIMK9kmuEX56PeJC3KdAzEldJZeNJErC+6CY1OoWnRbFTGr5999Q33vAWQuTdae++TGhr34W2T
 CbUAi2htFxqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="193583042"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="193583042"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:26:35 -0700
IronPort-SDR: NuBnzG0mSjn0j2Gz99y2K9nmnxH3/BANU+S/WKBZkLW9PBHhYwBX+En/flaGgInwsFTqwnKNHM
 4QrUYgcSizeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="416231498"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2021 14:26:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:26:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:26:33 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.008;
 Thu, 17 Jun 2021 14:26:33 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "Mun, Gwan-gyeong"
 <gwan-gyeong.mun@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/display: Limit disabling PSR
 around cdclk changes to ADL-P
Thread-Index: AQHXY72Ftpjb9vqFhkmnmueGU/IemKsZKl6A//+MdvA=
Date: Thu, 17 Jun 2021 21:26:33 +0000
Message-ID: <c7b156b9157042bbba5ca3eaadebc9d0@intel.com>
References: <20210617211225.13549-1-anusha.srivatsa@intel.com>
 <20210617211225.13549-2-anusha.srivatsa@intel.com>
 <7bc8fce7e8ac4f444ad927db7c9e177322eac10d.camel@intel.com>
In-Reply-To: <7bc8fce7e8ac4f444ad927db7c9e177322eac10d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/display: Limit disabling PSR
 around cdclk changes to ADL-P
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSAxNywgMjAyMSAyOjE4
IFBNDQo+IFRvOiBNdW4sIEd3YW4tZ3llb25nIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPjsg
U3JpdmF0c2EsIEFudXNoYQ0KPiA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRD
SCAxLzVdIGRybS9pOTE1L2Rpc3BsYXk6IExpbWl0IGRpc2FibGluZyBQU1INCj4gYXJvdW5kIGNk
Y2xrIGNoYW5nZXMgdG8gQURMLVANCj4gDQo+IE9uIFRodSwgMjAyMS0wNi0xNyBhdCAxNDoxMiAt
MDcwMCwgQW51c2hhIFNyaXZhdHNhIHdyb3RlOg0KPiA+IEZyb206IEd3YW4tZ3llb25nIE11biA8
Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gPg0KPiA+IE9ubHkgQURMLVAgcGxhdGZvcm0g
cmVxdWlyZXMgYSB0ZW1wb3JhbCBkaXNhYmxpbmcgb2YgUFNSIGZvciBjaGFuZ2luZw0KPiA+IHRo
ZSBDRENMSyBQTEwgZnJlcXVlbmN5IHdpdGggY3Jhd2xpbmcuIENoYW5naW5nIHRoZSBDRENMSyBQ
TEwNCj4gPiBmcmVxdWVuY3kgb24gcHJpb3IgcGxhdGZvcm1zIG9mIEFETC1QIG9yIGNoYW5naW5n
IHRoZSBDRENMSyBQTEwNCj4gPiBmcmVxdWVuY3kgd2l0aG91dCBjcmF3bGluZyBvbiBBREwtUCBk
b24ndCBuZWVkIHRvIGRpc2FibGUgb2YgUFNSLg0KPiANCj4gVGhpcyBpcyBvbmx5IGhpZGluZyBh
IHBvc3NpYmxlIGJ1ZyBmb3VuZCBpbiBJQ0wgdW5kZXIgdGhlIElTX0FMREVSTEFLRV9QKCkNCj4g
Y2hlY2suDQo+IFRoZXJlIGlzIG5vIHJlYXNvbiB0byBub3QgcGF1c2UgUFNSIGluIG9sZGVyIHBs
YXRmb3JtcyBkdXJpbmcgY2RjbGNrIGNoYW5nZXMuDQoNCkFjY29yZGluZyB0byAxNTcyOSwgcGF1
c2luZyBQU1IgZHVyaW5nIGNkY2xrIGNoYW5nZXMgaXMgbm90IHZhbGlkLiANCg0KQW51c2hhIA0K
PiA+DQo+ID4gQnNwZWM6IDQ5MjA3DQo+ID4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+DQo+ID4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZh
dHNhQGludGVsLmNvbT4NCj4gPiBGaXhlczogMTdjMWE0YjdhYzZmICgiZHJtL2k5MTU6IERpc2Fi
bGUgUFNSIGFyb3VuZCBjZGNsayBjaGFuZ2UiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3ll
b25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjINCj4gPiArKysrKysrKysr
KysrKysrLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jDQo+ID4gaW5kZXggNjEzZmZjYzY4ZWJhLi42ZGE0MjZkMjZhYWMgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4g
QEAgLTE5NjIsMTAgKzE5NjIsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+DQo+ID4gIAlpbnRlbF9kdW1w
X2NkY2xrX2NvbmZpZyhjZGNsa19jb25maWcsICJDaGFuZ2luZyBDRENMSyB0byIpOw0KPiA+DQo+
ID4gLQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNv
ZGVyKSB7DQo+ID4gLQkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9k
cChlbmNvZGVyKTsNCj4gPiArCS8qDQo+ID4gKwkgKiBPbmx5IEFETC1QIHBsYXRmb3JtIHJlcXVp
cmVzIGEgdGVtcG9yYWwgZGlzYWJsaW5nIG9mIFBTUiBmb3INCj4gY2hhbmdpbmcNCj4gPiArCSAq
IHRoZSBDRENMSyBQTEwgZnJlcXVlbmN5IHdpdGggY3Jhd2xpbmcuDQo+ID4gKwkgKiBDaGFuZ2lu
ZyB0aGUgQ0RDTEsgUExMIGZyZXF1ZW5jeSBvbiBwcmlvciBwbGF0Zm9ybXMgb2YgQURMLVAgb3IN
Cj4gY2hhbmdpbmcNCj4gPiArCSAqIHRoZSBDRENMSyBQTEwgZnJlcXVlbmN5IHdpdGhvdXQgY3Jh
d2xpbmcgb24gQURMLVAgZG9uJ3QgbmVlZCB0bw0KPiBkaXNhYmxlIG9mIFBTUi4NCj4gPiArCSAq
Lw0KPiA+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiA+ICsJCWZvcl9lYWNo
X2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sDQo+IGVuY29kZXIpIHsNCj4g
PiArCQkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+IGVuY190b19pbnRlbF9kcChlbmNv
ZGVyKTsNCj4gPg0KPiA+IC0JCWludGVsX3Bzcl9wYXVzZShpbnRlbF9kcCk7DQo+ID4gKwkJCWlu
dGVsX3Bzcl9wYXVzZShpbnRlbF9kcCk7DQo+ID4gKwkJfQ0KPiA+ICAJfQ0KPiA+DQo+ID4gIAkv
Kg0KPiA+IEBAIC0xOTkwLDEwICsxOTk4LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNs
ayhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAl9DQo+ID4gIAlt
dXRleF91bmxvY2soJmRldl9wcml2LT5nbWJ1c19tdXRleCk7DQo+ID4NCj4gPiAtCWZvcl9lYWNo
X2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsNCj4gPiAt
CQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0K
PiA+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiA+ICsJCWZvcl9lYWNoX2lu
dGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sDQo+IGVuY29kZXIpIHsNCj4gPiAr
CQkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+IGVuY190b19pbnRlbF9kcChlbmNvZGVy
KTsNCj4gPg0KPiA+IC0JCWludGVsX3Bzcl9yZXN1bWUoaW50ZWxfZHApOw0KPiA+ICsJCQlpbnRl
bF9wc3JfcmVzdW1lKGludGVsX2RwKTsNCj4gPiArCQl9DQo+ID4gIAl9DQo+ID4NCj4gPiAgCWlm
IChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
