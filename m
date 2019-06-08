Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24016399D9
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 02:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3216891D1;
	Sat,  8 Jun 2019 00:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682EC891D1
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jun 2019 00:13:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 17:13:45 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 17:13:45 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 17:13:44 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.44]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 17:13:44 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 23/23] drm/i915: WARN about invalid lane reversal in
 TBT-alt/DP-alt modes
Thread-Index: AQHVGuYwekRth4ptIUeEpLRBDBYocqaRXZyA
Date: Sat, 8 Jun 2019 00:13:44 +0000
Message-ID: <bf7c00a293f0ffd333e22bbfd1112c114515657b.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-24-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-24-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <B74A391AC819AD408B9FB4D6DAE72F49@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 23/23] drm/i915: WARN about invalid lane
 reversal in TBT-alt/DP-alt modes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IExh
bmUgcmV2ZXJzYWwgaGFwcGVucyBvbmx5IGluIHRoZSBGSUEgbW9kdWxlIGZvciBUQlQtYWx0L0RQ
LWFsdCBtb2RlLA0KPiBzbw0KPiBXQVJOIGlmIGxhbmUgcmV2ZXJzYWwgaXMgYXR0ZW1wdGVkIGF0
IGEgZGlmZmVyZW50IGxldmVsLiBTZWUgdGhlDQo+IEJTcGVjIERESV9CVUZfQ1RMIHJlZ2lzdGVy
IGRlc2NyaXB0aW9uLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYyB8IDIgKysNCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5j
DQo+IGluZGV4IDljMTk4ZjFhM2E5MS4uNWY1MzVmMTdkN2IzIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZGkuYw0KPiBAQCAtMzU5MSw2ICszNTkxLDggQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZGRpX3NldF9maWFfbGFuZV9jb3VudChzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gIAl1MzIgdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUE1MRTEpOw0KPiAgCWJvb2wg
bGFuZV9yZXZlcnNhbCA9IGRpZ19wb3J0LT5zYXZlZF9wb3J0X2JpdHMgJg0KPiBERElfQlVGX1BP
UlRfUkVWRVJTQUw7DQo+ICANCj4gKwlXQVJOX09OKGxhbmVfcmV2ZXJzYWwgJiYgZGlnX3BvcnQt
PnRjX21vZGUgIT0gVENfUE9SVF9MRUdBQ1kpOw0KPiArDQo+ICAJdmFsICY9IH5ERkxFWERQTUxF
MV9EUE1MRVRDX01BU0sodGNfcG9ydCk7DQo+ICAJc3dpdGNoIChwaXBlX2NvbmZpZy0+bGFuZV9j
b3VudCkgew0KPiAgCWNhc2UgMToNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
