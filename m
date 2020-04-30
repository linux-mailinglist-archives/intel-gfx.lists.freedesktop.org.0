Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04951BF700
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 13:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DE56EB9D;
	Thu, 30 Apr 2020 11:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855E06EB9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:41:37 +0000 (UTC)
IronPort-SDR: PTj6l8MEy2o7qW/OGbKt/TCemgy0AafuofHCNp1cssruZPXUndl5X3Ck4J7QzE3YLAhkddkimD
 Rotf7uLGfpyQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 04:41:37 -0700
IronPort-SDR: LcZfMxTcFZnTt8QGo1U0p94HtF90lg0vSBwpT60VrL64EEXX4z42/wJQchVf9HUc77xB2Lyaez
 inkrep2cbWug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="293536744"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2020 04:41:37 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Apr 2020 04:41:36 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Apr 2020 04:41:36 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.58]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.106]) with mapi id 14.03.0439.000;
 Thu, 30 Apr 2020 17:11:33 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/3] drm/i915: Nuke mode.vrefresh usage
Thread-Index: AQHWHlez+Y9gPDZo2Ua4qddAO0wPRaiRi5xQ
Date: Thu, 30 Apr 2020 11:41:32 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824A0E4B@BGSMSX104.gar.corp.intel.com>
References: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke mode.vrefresh usage
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAz
MCwgMjAyMCAxMjoyNSBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+OyBTaGFua2Fy
LCBVbWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDEvM10g
ZHJtL2k5MTU6IE51a2UgbW9kZS52cmVmcmVzaCB1c2FnZQ0KPiANCj4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IG1vZGUudnJlZnJl
c2ggaXMgcm91bmRlZCB0byB0aGUgbmVhcmVzdCBpbnRlZ2VyLiBZb3UgZG9uJ3Qgd2FudCB0byB1
c2UgaXQgYW55d2hlcmUNCj4gdGhhdCByZXF1aXJlcyBwcmVjaXNpb24uIEFsc28gSSB3YW50IHRv
IG51a2UgaXQuDQo+IHZ0b3RhbCp2cmVmcmVzaCA9PSAxMDAwKmNsb2NrL2h0b3RhbCwgc28gbGV0
J3MgdXNlIHRoZSBsYXR0ZXIuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBDYzogQW5zaHVtYW4gR3VwdGEg
PGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdWRpby5jIHwgMTAgKysrLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMNCj4gaW5kZXggMzZhYWVlODUzNmYxLi5mNTY4NmU1
MDgzM2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXVkaW8uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMNCj4gQEAgLTUyNCwxNCArNTI0LDEyIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0X2hibGFu
a19lYXJseV9lbmFibGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyDQo+
ICAJdW5zaWduZWQgaW50IGxpbmtfY2xrc19hdmFpbGFibGUsIGxpbmtfY2xrc19yZXF1aXJlZDsN
Cj4gIAl1bnNpZ25lZCBpbnQgdHVfZGF0YSwgdHVfbGluZSwgbGlua19jbGtzX2FjdGl2ZTsNCj4g
IAl1bnNpZ25lZCBpbnQgaGJsYW5rX3Jpc2UsIGhibGFua19lYXJseV9wcm9nOw0KPiAtCXVuc2ln
bmVkIGludCBoX2FjdGl2ZSwgaF90b3RhbCwgaGJsYW5rX2RlbHRhLCBwaXhlbF9jbGssIHZfdG90
YWw7DQo+IC0JdW5zaWduZWQgaW50IGZlY19jb2VmZiwgcmVmcmVzaF9yYXRlLCBjZGNsaywgdmRz
Y19icHA7DQo+ICsJdW5zaWduZWQgaW50IGhfYWN0aXZlLCBoX3RvdGFsLCBoYmxhbmtfZGVsdGEs
IHBpeGVsX2NsazsNCj4gKwl1bnNpZ25lZCBpbnQgZmVjX2NvZWZmLCBjZGNsaywgdmRzY19icHA7
DQo+IA0KPiAgCWhfYWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hk
aXNwbGF5Ow0KPiAgCWhfdG90YWwgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
aHRvdGFsOw0KPiAtCXZfdG90YWwgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
dnRvdGFsOw0KPiAgCXBpeGVsX2NsayA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0
Y19jbG9jazsNCj4gLQlyZWZyZXNoX3JhdGUgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2Rl
LnZyZWZyZXNoOw0KPiAgCXZkc2NfYnBwID0gY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzZWRfYnBw
Ow0KPiAgCWNkY2xrID0gaTkxNS0+Y2RjbGsuaHcuY2RjbGs7DQo+ICAJLyogZmVjPSAwLjk3MjI2
MSwgdXNpbmcgcm91bmRpbmcgbXVsdGlwbGllciBvZiAxMDAwMDAwICovIEBAIC01NDksOQ0KPiAr
NTQ3LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBnZXRfaGJsYW5rX2Vhcmx5X2VuYWJsZV9jb25m
aWcoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXINCj4gIAlsaW5rX2Nsa3NfYXZhaWxh
YmxlID0gKCgoKGhfdG90YWwgLSBoX2FjdGl2ZSkgKg0KPiAgCQkJICAgICAgICgoY3J0Y19zdGF0
ZS0+cG9ydF9jbG9jayAqIFJPVU5ESU5HX0ZBQ1RPUikgLw0KPiAgCQkJCXBpeGVsX2NsaykpIC8g
Uk9VTkRJTkdfRkFDVE9SKSAtIDI4KTsNCj4gLQ0KPiAtCWxpbmtfY2xrc19yZXF1aXJlZCA9IERJ
Vl9ST1VORF9VUCgxOTIwMDAsIChyZWZyZXNoX3JhdGUgKg0KPiAtCQkJCQkgIHZfdG90YWwpKSAq
ICgoNDggLw0KPiArCWxpbmtfY2xrc19yZXF1aXJlZCA9IERJVl9ST1VORF9VUCgxOTIwMDAsICgx
MDAwICogcGl4ZWxfY2xrIC8NCj4gK2hfdG90YWwpKSAqICgoNDggLw0KPiAgCQkJCQkgIGNydGNf
c3RhdGUtPmxhbmVfY291bnQpICsgMik7DQo+IA0KPiAgCWlmIChsaW5rX2Nsa3NfYXZhaWxhYmxl
ID4gbGlua19jbGtzX3JlcXVpcmVkKQ0KPiAtLQ0KPiAyLjI0LjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
