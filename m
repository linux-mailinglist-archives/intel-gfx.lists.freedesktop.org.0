Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CD8A77EC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 02:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71DA897BC;
	Wed,  4 Sep 2019 00:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E06E897BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 00:45:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 17:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="198900718"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 03 Sep 2019 17:45:36 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.251]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 17:45:36 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v3 3/7] drm/i915: protect access to DP_TP_* on non-dp
Thread-Index: AQHVXkvPYEVwVqV+RUCyW5S3H09e7KcSZGOAgAhLBoCAAH14gA==
Date: Wed, 4 Sep 2019 00:45:35 +0000
Message-ID: <c57b342b3dd3567cc070660bbbe519b387f4431b.camel@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-4-lucas.demarchi@intel.com>
 <20190829103754.GN7482@intel.com>
 <20190903171631.GH13677@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190903171631.GH13677@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <14D57FAD4EF36C4F8F36F59E9C8434B6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/7] drm/i915: protect access to DP_TP_*
 on non-dp
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA5LTAzIGF0IDEwOjE2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwMTozNzo1NVBNICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6DQo+ID4gT24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDI6MjU6NTBBTSAtMDcwMCwgTHVj
YXMgRGUgTWFyY2hpIHdyb3RlOg0KPiA+ID4gRFBfVFBfe0NUTCxTVEFUVVN9IHNob3VsZCBvbmx5
IGJlIHByb2dyYW1tZWQgd2hlbiB0aGUgZW5jb2RlciBpcw0KPiA+ID4gaW50ZWxfZHAuDQo+ID4g
PiBDaGVja2luZyBpdHMgY3VycmVudCB1c2FnZXMgaW50ZWxfZGlzYWJsZV9kZGlfYnVmKCkgaXMg
dGhlIG9ubHkNCj4gPiA+IG9mZmVuZGVyLCB3aXRoIG90aGVyIHBsYWNlcyBiZWluZyBwcm90ZWN0
ZWQgYnkgY2hlY2tzIGxpa2UNCj4gPiA+IHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlIHRoYXQgaXMg
b25seSBzZXQgYnkgaW50ZWxfZHAuDQo+ID4gPiANCj4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTAgKysrKysrLS0t
LQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
DQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gPiA+IGluZGV4IDMxODBkYWNiNWJlNC4uZGYzZTRmZTdlM2U5IDEwMDY0NA0KPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gQEAg
LTM0NjIsMTAgKzM0NjIsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGlzYWJsZV9kZGlfYnVmKHN0
cnVjdA0KPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ICAJCXdhaXQgPSB0cnVl
Ow0KPiA+ID4gIAl9DQo+ID4gPiAgDQo+ID4gPiAtCXZhbCA9IEk5MTVfUkVBRChEUF9UUF9DVEwo
cG9ydCkpOw0KPiA+ID4gLQl2YWwgJj0gfihEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBfQ1RMX0xJ
TktfVFJBSU5fTUFTSyk7DQo+ID4gPiAtCXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQx
Ow0KPiA+ID4gLQlJOTE1X1dSSVRFKERQX1RQX0NUTChwb3J0KSwgdmFsKTsNCj4gPiA+ICsJaWYg
KGludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpIHsNCj4gPiANCj4gPiBEb2Vzbid0IHJlYWxs
eSBtYWtlIHNlbnNlIHRvIG1lLiBFaXRoZXIgd2UganVzdCBkbyBpdCAoYmVjYXVzZSBhDQo+ID4g
RERJIGlzDQo+ID4ganVzdCBhIERESSBzbyBEUF9UUF9DVEwgZG9lcyBleGlzdCBhbHdheXMpLCBv
ciB3ZSBvbmx5IGRvIGl0IHdoZW4NCj4gPiBkcml2aW5nDQo+ID4gRFAgYW5kIG5vdCB3aGVuIGRy
aXZpbmcgSERNSS4NCj4gDQo+IEkgYWdyZWU7IEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhIG5lZWQg
dG8gYXZvaWQgcHJvZ3JhbSBwcm9ncmFtbWluZw0KPiB0aGUNCj4gcmVnaXN0ZXIganVzdCBiZWNh
dXNlIHdlIHdlcmVuJ3QgcHJldmlvdXNseSBpbiBEUCBtb2RlLg0KDQpUaGUgcHJvYmxlbSBvZiBh
bHdheXMgcHJvZ3JhbWluZyBEUF9UUF9DVEwgY29tZXMgd2l0aCBUR0wsIHdoZW4NCkRQX1RQX0NU
TCgpIG1vdmVzIHRvIHRyYW5zY29kZXIsIHNlZSBuZXh0IHBhdGNoOiBkcm0vaTkxNS90Z2w6IG1v
dmUNCkRQX1RQXyogdG8gdHJhbnNjb2Rlci4NCg0KV2UgYXJlIGFkZGluZyBpbnRlbF9kcC0+cmVn
cy5kcF90cF9jdGwgYW5kIGluaXRpYWxpemluZyh0aGlzIGlzDQpuZWNlc3NhcnkgZm9yIE1TVCBm
b3IgU1NUIHdlIGNvdWxkIGtlZXAgdGhlIGN1cnJlbnQgYXBwcm9hY2gpIGl0IGluIERQDQpwYXRo
cywgd2UgY291bGQgbW92ZSBpdCB0byBpbnRlbF9lbmNvZGVyIG9yIGludGVsX2RpZ2l0YWxfcG9y
dCBhbmQNCmluaXRpYWxpemVkIGl0IGZvciBIRE1JIHRvbyBidXQgaXQgd291bGQgbm90IG1ha2Ug
YW55IHNlbnNlIGZvciBzb21lb25lDQpyZWFkaW5nIEhETUkgc2VxdWVuY2VzLg0KDQpBbmQgdG8g
bW92ZSB0aGlzIHRvIGEgRFAgc3BlY2lmaWMgZnVuY3Rpb24gd291bGQgZm9yY2UgdXMgdG8gY3Jl
YXRlDQphbm90aGVyIGZ1bmN0aW9uIHRvIGV4ZWN1dGUgdGhlIGxhc3QgIndhaXQgRERJX0JVRl9D
VEwgdG8gaWRsZSIuDQoNCkJTcGVjOiA1MzMzOSBhbmQgMjIyNDMNCg0KUGVyc29uYWxseSBJIHBy
ZWZlciB0aGlzIHBhdGNoIHNvbHV0aW9uIGJ1dCBsZXQgbWUga25vdyB5b3VyIHRob3VnaHRzDQph
ZnRlciB0aGlzIGV4cGxhbmF0aW9uLg0KDQo+IA0KPiBCdXQgSSBkbyBxdWVzdGlvbiB3aGV0aGVy
IGEgUk1XIGlzIG5lY2Vzc2FyeTsgaXQgc2VlbXMgbGlrZSBqdXN0DQo+IHdyaXRpbmcNCj4gYSBj
b25zdGFudCAwIHRvIHRoaXMgcmVnaXN0ZXIgd291bGQgYmUgc3VmZmljaWVudCBmb3IgdGhlIGRp
c2FibGUNCj4gc2VxdWVuY2UuDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gPiBGb3IgdGhlIGxhdHRl
ciBJIHdvdWxkIHBlcmhhcHMgc3VnZ2VzdCBtb3ZpbmcgYWxsIHRoaXMgZXh0cmEganVuaw0KPiA+
IG91dA0KPiA+IGZyb20gaW50ZWxfZGlzYWJsZV9kZGlfYnVmKCkgaW50byB0aGUgRFAgc3BlY2lm
aWMgY29kZSBwYXRocywNCj4gPiBsZWF2aW5nDQo+ID4ganVzdCB0aGUgYWN0dWFsIERESV9CVUZf
Q1RMIGRpc2FibGUgaGVyZS4NCj4gPiANCj4gPiA+ICsJCXZhbCA9IEk5MTVfUkVBRChEUF9UUF9D
VEwocG9ydCkpOw0KPiA+ID4gKwkJdmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NU
TF9MSU5LX1RSQUlOX01BU0spOw0KPiA+ID4gKwkJdmFsIHw9IERQX1RQX0NUTF9MSU5LX1RSQUlO
X1BBVDE7DQo+ID4gPiArCQlJOTE1X1dSSVRFKERQX1RQX0NUTChwb3J0KSwgdmFsKTsNCj4gPiA+
ICsJfQ0KPiA+ID4gIA0KPiA+ID4gIAkvKiBEaXNhYmxlIEZFQyBpbiBEUCBTaW5rICovDQo+ID4g
PiAgCWludGVsX2RkaV9kaXNhYmxlX2ZlY19zdGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4g
PiA+IC0tIA0KPiA+ID4gMi4yMy4wDQo+ID4gDQo+ID4gLS0gDQo+ID4gVmlsbGUgU3lyasOkbMOk
DQo+ID4gSW50ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
