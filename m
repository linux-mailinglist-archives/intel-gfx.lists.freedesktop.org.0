Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65A21EBC47
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 15:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17DBC6E145;
	Tue,  2 Jun 2020 13:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463C56E145
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 13:02:49 +0000 (UTC)
IronPort-SDR: 0ogGujmpVB6D+tVNfkbA84b9nOUWMt9JhIjQgHhgqaZyb84UxvSSG/JFz/OsEah8hC2Rdp44VH
 c26kHTVT7g3w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 06:02:48 -0700
IronPort-SDR: ro1/VJeZ4ZM7/+42X0SkF+y5MJyVVHnn84OD9XqwKiqhzlZ/e2zLarquygWvV7qbQyBZS1KTri
 xqNtMyxX2GfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,464,1583222400"; d="scan'208";a="272355564"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 02 Jun 2020 06:02:48 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 06:02:48 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 2 Jun 2020 06:02:47 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 2 Jun 2020 06:02:47 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.125]) with mapi id 14.03.0439.000;
 Tue, 2 Jun 2020 18:32:45 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [RFC] drm/i915: lpsp with hdmi/dp outputs
Thread-Index: AQHWN/+DXwK47U+O70e74aNiXdDPH6jDtRGggAErQQCAAGqz8A==
Date: Tue, 2 Jun 2020 13:02:44 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82517BF6@BGSMSX104.gar.corp.intel.com>
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82516D51@BGSMSX104.gar.corp.intel.com>
 <20200602120633.GM4452@intel.com>
In-Reply-To: <20200602120633.GM4452@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC] drm/i915: lpsp with hdmi/dp outputs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3VwdGEsIEFuc2h1bWFu
IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMiwgMjAy
MCA1OjM3IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4g
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtSRkNdIGRybS9pOTE1OiBscHNwIHdpdGgg
aGRtaS9kcCBvdXRwdXRzDQo+IA0KPiBPbiAyMDIwLTA2LTAxIGF0IDE4OjE5OjQ0ICswNTMwLCBT
aGFua2FyLCBVbWEgd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4gPiA+IE9mIEFuc2h1bWFuIEd1cHRhDQo+ID4gPiBT
ZW50OiBNb25kYXksIEp1bmUgMSwgMjAyMCAzOjQ1IFBNDQo+ID4gPiBUbzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4g
PiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtSRkNdIGRybS9pOTE1OiBscHNwIHdpdGggaGRtaS9k
cCBvdXRwdXRzDQo+ID4gPg0KPiA+ID4gR2VuMTIgaHcgYXJlIGZhaWxpbmcgdG8gZW5hYmxlIGxw
c3AgY29uZmlndXJhdGlvbiBkdWUgdG8gUEczIHdhcw0KPiA+ID4gbGVmdCBvbiBkdWUgdG8gdmFs
aWQgdXNnYWUgY291bnQgb2YgUE9XRVJfRE9NQUlOX0FVRElPLg0KPiA+ID4gSXQgaXMgbm90IHJl
cXVpcmVkIHRvIGdldCBQT1dFUl9ET01BSU5fQVVESU8gcmVmLWNvdW50IHdoZW4gZW5hYmxpbmcN
Cj4gPiA+IGEgY3J0YywgaXQgc2hvdWxkIGJlIGFsd2F5cyBpOTE1X2F1ZGlvX2NvbXBvbmVudCBy
ZXF1ZXN0IHRvIGdldC9wdXQNCj4gPiA+IEFVRElPX1BPV0VSX0RPTUFJTi4NCj4gPiA+DQo+ID4g
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+ID4gPiAtLS0N
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYg
KysrKystDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gaW5kZXggNmMzYjExZGUyZGFmLi5mMzFhNTc5ZDdhNTIg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiA+IEBAIC03MzU2LDcgKzczNTYsMTEgQEAgc3RhdGljIHU2NCBnZXRfY3J0
Y19wb3dlcl9kb21haW5zKHN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gPiA+ICAJCW1hc2sgfD0gQklUX1VMTChpbnRlbF9lbmNvZGVyLT5wb3dlcl9kb21haW4p
Ow0KPiA+ID4gIAl9DQo+ID4gPg0KPiA+ID4gLQlpZiAoSEFTX0RESShkZXZfcHJpdikgJiYgY3J0
Y19zdGF0ZS0+aGFzX2F1ZGlvKQ0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBHZW4xMiBjYW4gZHJp
dmUgbHBzcCBvbiBoZG1pL2RwIG91dHB1cywgaXQgZG9lc24ndCByZXF1aXJlIHRvDQo+ID4gPiAr
CSAqIGVuYWJsZSBBVURJTyBwb3dlciBpbiBvcmRlciB0byBlbmFibGUgYSBjcnRjLg0KPiA+ID4g
KwkgKi8NCj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiAmJiBIQVNfRERJKGRl
dl9wcml2KSAmJg0KPiA+ID4gK2NydGNfc3RhdGUtPmhhc19hdWRpbykNCj4gPiA+ICAJCW1hc2sg
fD0gQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU8pOw0KPiA+DQo+ID4gQXMgcGFydCBvZiBkZGlf
Z2V0X2NvbmZpZyB3ZSBkZXRlcm1pbmUgaGFzX2F1ZGlvIHVzaW5nIHBvd2VyIHdlbGwgZW5hYmxl
ZDoNCj4gPiBwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0NCj4gPiAgICAgICAgICAgICAgICAgaW50
ZWxfZGRpX2lzX2F1ZGlvX2VuYWJsZWQoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKTsNCj4gSU1P
IEFVRElPIHBvd2VyIHdpbGwgYWxzbyBiZSByZXF1ZXN0ZWQgYnkgaTkxNV9hdWRpb19jb21wb25l
bnQgZ2V0IHJlcXVlc3QsDQo+IHdlIGNhbiBhbHdheXMgdXNlIEhETUkgZGlzcGxheSB3aXRob3V0
IGF1ZGlvIHBsYXliYWNrLCBBVURJTyBwb3dlciBzaG91bGQNCj4gYmUgZW5hYmxlZCB3aGVuIGF1
ZGlvIGRyaXZlciByZXF1ZXN0IGZvciBpdC4NCj4gaWYgd2UgZ2V0IEFVRElPX1BPV0VSX0RPTUFJ
TiB3aGlsZSBlbmFibGluZyBjcnRjIFBHMyB3aWxsIGFsd2F5cyBrZXB0IG9uIHRpbGwNCj4gQ1JU
QyBpcyBkaXNhYmxlZCwgdGhhdCBpcyB0aGUgaXNzdWUgcmVxdWlyZWQgdG8gYmUgYWRkcmVzc2Vk
IGhlcmUuDQoNClllcyBIRE1JIGNhbiBiZSBlbmFibGVkIHdpdGhvdXQgYXVkaW8sIGJ1dCBpZiB3
ZSB3YW50IGF1ZGlvIHdlIHdpbGwgbmVlZCB0byBub3RpZnkNCmF1ZGlvIGRyaXZlciB0aHJvdWdo
IEhTV19BVURfUElOX0VMRF9DUF9WTEQgYW5kIGFsc28gcHJlcGFyZSBhbmQgd3JpdGUgRUxEIGRh
dGENCmluIGhhcmR3YXJlIHJlZ2lzdGVyLiBJZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5IHRoaXMg
d2lsbCBuZWVkIHBvd2VyIGFuZCBieSB0aGlzIHRpbWUgYXVkaW8NCmRyaXZlciB3b3VsZCBub3Qg
aGF2ZSByZXF1ZXN0ZWQgZm9yIGl0LiBIZW5jZSB0aGlzIHdpbGwgZmFpbCBhdWRpbyBkZXRlY3Rp
b24uDQoNCj4gVGhpcyBpcyBqdXN0IFJGQyB0byBpbml0aWF0ZSBhIGRpc2N1c3Npb24gYXJvdW5k
IGl0Lg0KPiBUaGFua3MsDQo+IEFuc2h1bWFuIEd1cHRhLg0KPiA+DQo+ID4gSWYgYXVkaW8gcG93
ZXIgZG9tYWluIGlzIG5vdCBlbmFibGVkLCB3ZSBtYXkgZW5kIHVwIHdpdGggdGhpcyBhcyBmYWxz
ZS4NCj4gPiBMYXRlciB0aGlzIG1heSBnZXQgY2hlY2tlZCBpbiBpbnRlbF9lbmFibGVfZGRpX2hk
bWkgdG8gY2FsbCBhdWRpbw0KPiA+IGNvZGVjIGVuYWJsZQ0KPiA+DQo+ID4gaWYgKGNydGNfc3Rh
dGUtPmhhc19hdWRpbykNCj4gPiAgICAgICAgICAgICAgICAgaW50ZWxfYXVkaW9fY29kZWNfZW5h
YmxlKGVuY29kZXIsIGNydGNfc3RhdGUsDQo+ID4gY29ubl9zdGF0ZSk7DQo+ID4NCj4gPiBUaGlz
IG1heSBjYXVzZSBkZXRlY3Rpb24gdG8gZmFpbC4gUGxlYXNlIHZlcmlmeSB0aGlzIHVzZWNhc2Ug
b25jZSBhbmQgY29uZmlybS4NCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gVW1hIFNoYW5rYXINCj4g
Pg0KPiA+ID4gIAlpZiAoY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwpDQo+ID4gPiAtLQ0KPiA+ID4g
Mi4yNi4yDQo+ID4gPg0KPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiA+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
