Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1031211CE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 18:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8309E6E844;
	Mon, 16 Dec 2019 17:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F79C6E844
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 17:35:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 09:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="212105975"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga007.fm.intel.com with ESMTP; 16 Dec 2019 09:35:10 -0800
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Dec 2019 09:35:10 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.70]) with mapi id 14.03.0439.000;
 Mon, 16 Dec 2019 09:35:10 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Navare, 
 Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [PATCH v2 rebased 10/11] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
Thread-Index: AQHVsFMthEZyMk6gMUS8Ok9aQ2Dd36e3i6gAgAADtoCABgRqgA==
Date: Mon, 16 Dec 2019 17:35:09 +0000
Message-ID: <33deb589802d9a490c2265b7389443f43b1a4996.camel@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-10-jose.souza@intel.com>
 <20191212212830.GW1208@intel.com> <20191212214147.GB24342@intel.com>
In-Reply-To: <20191212214147.GB24342@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.102.104]
Content-ID: <1D81CF85540A484D8D995533309CB605@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 rebased 10/11] drm/i915/display: Check if
 pipe fastset is allowed by external dependencies
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTEyLTEyIGF0IDEzOjQxIC0wODAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBPbiBUaHUsIERlYyAxMiwgMjAxOSBhdCAxMToyODozMFBNICswMjAwLCBWaWxsZSBTeXJqw6Rs
w6Qgd3JvdGU6DQo+ID4gT24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgMTA6NDU6MjVBTSAtMDgwMCwg
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YQ0KPiA+IHdyb3RlOg0KPiA+ID4gQ2hlY2sgaWYgZmFzdHNl
dCBpcyBhbGxvd2VkIGJ5IGV4dGVybmFsIGRlcGVuZGVuY2llcyBsaWtlIG90aGVyDQo+ID4gPiBw
aXBlcw0KPiA+ID4gYW5kIHRyYW5zY29kZXJzLg0KPiA+ID4gDQo+ID4gPiBSaWdodCBub3cgaXQg
b25seSBmb3JjZXMgYSBmdWxsbW9kZXNldCB3aGVuIHRoZSBNU1QgbWFzdGVyDQo+ID4gPiB0cmFu
c2NvZGVyDQo+ID4gPiBkaWQgbm90IGNoYW5nZWQgYnV0IHRoZSBwaXBlIG9mIHRoZSBtYXN0ZXIg
dHJhbnNjb2RlciBuZWVkcyBhDQo+ID4gPiBmdWxsbW9kZXNldCBzbyBhbGwgc2xhdmVzIGFsc28g
bmVlZHMgdG8gZG8gYSBmdWxsbW9kZXNldC4NCj4gPiA+IEJ1dCBpdCB3aWxsIHByb2JhYmx5IGJl
IG5lZWQgZm9yIHBvcnQgc3luYyBhcyB3ZWxsLg0KPiANCj4gQnV0IGluIGNhc2Ugb2YgcG9ydCBz
eW5jLCBub3cgSSBoYXZlIHRoaXMgZnVuY3Rpb24gaW4NCj4gaW50ZWxfYXRvbWljX2NoZWNrKCkN
Cj4gdGhhdCB3aWxsIGZvcmNlIGEgZnVsbCBtb2Rlc2V0IG9uIGFsbCB0aGUgY29ubmVjdG9ycyB3
aXRoIGhhc190aWxlIGlmDQo+IG9uZSBvZg0KPiB0aGUgdGlsZWQgY29ubmVjdG9ycyBuZWVkcyBh
IGZ1bGwgbW9kZXNldC4NCj4gU28gd2Ugd291bGRudCBuZWVkIHRvIHdvcnJ5IGFib3V0IGZhc3Rz
ZXQgaGFwcGVuaW5nIGZvciBvbmUgb2YgdGhlDQo+IHRpbGVzIGluIHBvcnQgc3luYy4NCj4gDQo+
IFRoaXMgcGF0Y2g6DQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8z
NDQ3NjYvP3Nlcmllcz03MDc4OCZyZXY9MQ0KDQpUaGlzIGlzIG5vdCBlbm91Z2gsIHRlc3QgaXQg
b3IgcmVhZCB0aGUgY29udGV4dCBvZg0KaW50ZWxfY3J0Y19jaGVja19mYXN0c2V0KCkNCg0KPiAN
Cj4gTWFuYXNpDQo+IA0KPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+DQo+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQxDQo+ID4gPiArKysrKysrKysr
KysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspDQo+ID4g
PiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+ID4gaW5kZXggMDkyNDEyYjEwZDdjLi4wYzI0ZDdkZmExNTIgMTAwNjQ0DQo+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiA+IEBAIC0xMzkzMCwxMSArMTM5MzAsNTIgQEAgc3RhdGljIGludCBjYWxjX3dhdGVybWFy
a19kYXRhKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiA+ICAJ
cmV0dXJuIDA7DQo+ID4gPiAgfQ0KPiA+ID4gIA0KPiA+ID4gKy8qKg0KPiA+ID4gKyAqIENoZWNr
IGlmIGZhc3RzZXQgaXMgYWxsb3dlZCBieSBleHRlcm5hbCBkZXBlbmRlbmNpZXMgbGlrZQ0KPiA+
ID4gb3RoZXIgcGlwZXMgYW5kDQo+ID4gPiArICogdHJhbnNjb2RlcnMuDQo+ID4gPiArICoNCj4g
PiA+ICsgKiBSaWdodCBub3cgaXQgb25seSBmb3JjZXMgYSBmdWxsbW9kZXNldCB3aGVuIHRoZSBN
U1QgbWFzdGVyDQo+ID4gPiB0cmFuc2NvZGVyIGRpZA0KPiA+ID4gKyAqIG5vdCBjaGFuZ2VkIGJ1
dCB0aGUgcGlwZSBvZiB0aGUgbWFzdGVyIHRyYW5zY29kZXIgbmVlZHMgYQ0KPiA+ID4gZnVsbG1v
ZGVzZXQgc28NCj4gPiA+ICsgKiBhbGwgc2xhdmVzIGFsc28gbmVlZHMgdG8gZG8gYSBmdWxsbW9k
ZXNldC4NCj4gPiA+ICsgKi8NCj4gPiA+ICtzdGF0aWMgYm9vbA0KPiA+ID4gK2ludGVsX2NydGNf
Y2hlY2tfZXh0ZXJuYWxfZGVwZW5kZW5jaWVzX2Zhc3RzZXQoY29uc3Qgc3RydWN0DQo+ID4gPiBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gPiA+ICsJCQkJCSAgICAgICBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKm5ld19jcnRjX3N0YXRlKQ0KPiA+ID4gK3sNCj4g
PiA+ICsJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPQ0KPiA+ID4gdG9faW50ZWxf
YXRvbWljX3N0YXRlKG5ld19jcnRjX3N0YXRlLT51YXBpLnN0YXRlKTsNCj4gPiA+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShuZXdfY3J0Y19zdGF0ZS0NCj4g
PiA+ID51YXBpLmNydGMtPmRldik7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpu
ZXdfY3J0Y19zdGF0ZV9pdGVyOw0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Y19pdGVy
Ow0KPiA+ID4gKwlpbnQgaTsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPCAxMikNCj4gPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoIWlu
dGVsX2NydGNfaGFzX3R5cGUob2xkX2NydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpDQo+
ID4gPiB8fA0KPiA+ID4gKwkgICAgaW50ZWxfZHBfbXN0X2lzX21hc3Rlcl90cmFucyhuZXdfY3J0
Y19zdGF0ZSkpDQo+ID4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiA+ICsNCj4gPiA+ICsJZm9yX2Vh
Y2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGNfaXRlciwNCj4gPiA+IG5ld19j
cnRjX3N0YXRlX2l0ZXIsIGkpIHsNCj4gPiA+ICsJCWlmIChuZXdfY3J0Y19zdGF0ZV9pdGVyLT5j
cHVfdHJhbnNjb2RlciAhPQ0KPiA+ID4gKwkJICAgIG5ld19jcnRjX3N0YXRlLT5tc3RfbWFzdGVy
X3RyYW5zY29kZXIpDQo+ID4gPiArCQkJY29udGludWU7DQo+ID4gPiArDQo+ID4gPiArCQlyZXR1
cm4gIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGVfaXRlcik7DQo+ID4gPiArCX0NCj4gPiA+
ICsNCj4gPiA+ICsJRFJNX0VSUk9SKCJNYXN0ZXIgTVNUIHRyYW5zY29kZXIgb2YgcGlwZSBub3Qg
Zm91bmRcbiIpOw0KPiA+ID4gKwlyZXR1cm4gZmFsc2U7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+
ID4gIHN0YXRpYyB2b2lkIGludGVsX2NydGNfY2hlY2tfZmFzdHNldChjb25zdCBzdHJ1Y3QNCj4g
PiA+IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiA+ID4gIAkJCQkgICAgIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiAqbmV3X2NydGNfc3RhdGUpDQo+ID4gPiAgew0K
PiA+ID4gIAlpZiAoIWludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUob2xkX2NydGNfc3RhdGUsIG5l
d19jcnRjX3N0YXRlLA0KPiA+ID4gdHJ1ZSkpDQo+ID4gPiAgCQlyZXR1cm47DQo+ID4gPiArCWlm
DQo+ID4gPiAoIWludGVsX2NydGNfY2hlY2tfZXh0ZXJuYWxfZGVwZW5kZW5jaWVzX2Zhc3RzZXQo
b2xkX2NydGNfc3RhdGUsDQo+ID4gPiArCQkJCQkJCSAgICBuZXdfY3J0Y19zdA0KPiA+ID4gYXRl
KSkNCj4gPiA+ICsJCXJldHVybjsNCj4gPiANCj4gPiBJIGRvbid0IHRoaW5rIHRoaXMgd2lsbCB3
b3JrLiBXZSd2ZSBub3QgeWV0IC5jb21wdXRlX2NvbmZpZygpJ2QNCj4gPiBldmVyeXRoaW5nIHNv
IHRoZSBtYXN0ZXIgYXNzaWdubWVudHMgYXJlIHN0aWxsIHVwIGluIHRoZSBhaXIuDQo+ID4gDQo+
ID4gSSB0aGluayB3ZSBuZWVkIHRoZSBsb2dpYyBoaWdoZXIgdXAgaW4gaW50ZWxfYXRvbWljX2No
ZWNrKCk6DQo+ID4gDQo+ID4gZm9yX2VhY2hfY3J0YygpDQo+ID4gCWNvbXB1dGVfY29uZmlnKCkN
Cj4gPiAJaWYgKGNhbl9mYXN0c2V0KCkpDQo+ID4gCQluZWVkc19tb2Rlc2V0PWZhbHNlDQo+ID4g
CQl1cGRhdGVfcGlwZT10cnVlOw0KPiA+IAl9DQo+ID4gfQ0KPiA+IA0KPiA+IGZvcl9lYWNoX2Ny
dGMoKQ0KPiA+IAlpZiAobXN0X3NsYXZlICYmIG1hc3Rlci5uZWVkc19tb2Rlc2V0KCkgew0KPiA+
IAkJbmVlZHNfbW9kZXNldD10cnVlOw0KPiA+IAkJdXBkYXRlX3BpcGU9ZmFsc2U7DQo+ID4gCX0N
Cj4gPiANCj4gPiBmb3JfZWFjaF9jcnRjKCkNCj4gPiAJaWYgKHVwZGF0ZV9waXBlKQ0KPiA+IAkJ
Y29weV9vdmVyX29sZF9zdGF0ZSgpOw0KPiA+IA0KPiA+IAkNCj4gPiArIHdlIHNob3VsZCBwcm9i
YWJseSByZW5hbWUvc3BsaXQgdXBkYXRlX3BpcGVzIG9yIGFkZCBzb21lDQo+ID4gbGtpbmQgb2Yg
bmVlZHNfZmFzdHNldCgpIHdyYXBwZXIgdG8gbWFrZSB0aGlzIGxlc3MgY29uZnVzaW5nLg0KPiA+
IA0KPiA+IA0KPiA+ID4gKw0KPiA+ID4gIA0KPiA+ID4gIAluZXdfY3J0Y19zdGF0ZS0+dWFwaS5t
b2RlX2NoYW5nZWQgPSBmYWxzZTsNCj4gPiA+ICAJbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9waXBl
ID0gdHJ1ZTsNCj4gPiA+IC0tIA0KPiA+ID4gMi4yNC4xDQo+ID4gDQo+ID4gLS0gDQo+ID4gVmls
bGUgU3lyasOkbMOkDQo+ID4gSW50ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
