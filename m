Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA93177660
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 13:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111086EA58;
	Tue,  3 Mar 2020 12:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B846EA68
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 12:47:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 04:47:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="386776611"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 03 Mar 2020 04:47:40 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Mar 2020 04:47:13 -0800
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Mar 2020 04:47:12 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.165]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.119]) with mapi id 14.03.0439.000;
 Tue, 3 Mar 2020 18:17:10 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix kbuild test robot build error
Thread-Index: AQHV7ZfQ4a1fS4fW5kSWCdj055Chpqg21/xQ
Date: Tue, 3 Mar 2020 12:47:09 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F823F5A9A@BGSMSX104.gar.corp.intel.com>
References: <20200227175147.11362-1-anshuman.gupta@intel.com>
In-Reply-To: <20200227175147.11362-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix kbuild test robot build error
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBbnNodW1h
bg0KPiBHdXB0YQ0KPiBTZW50OiBUaHVyc2RheSwgRmVicnVhcnkgMjcsIDIwMjAgMTE6MjIgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFu
aSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hd
IGRybS9pOTE1OiBGaXgga2J1aWxkIHRlc3Qgcm9ib3QgYnVpbGQgZXJyb3INCj4gDQo+IEZpeGVz
OiBkNTRjMWE1MTNjNDggKCJkcm0vaTkxNTogRml4IGJyb2tlbiB0cmFuc2NvZGVyIGVyciBzdGF0
ZSIpDQo+IGhhc190cmFuc2NvZGVyKCkgd2FzIHVudXNlZCBiZWNhdXNlIGZ1bmN0aW9uIHdoaWNo
IHdhcyB1c2luZyBpdCwNCj4gaW50ZWxfZGlzcGxheV9jYXB0dXJlX2Vycm9yX3N0YXRlKCkgZGVm
aW5lZCB1bmRlcg0KPiBDT05GSUdfRFJNX0k5MTVfQ0FQVFVSRV9FUlJPUi4NCj4gTW92aW5nIGhh
c190cmFuc2NvZGVyKCkgdG8gdW5kZXIgQ09ORklHX0RSTV9JOTE1X0NBUFRVUkVfRVJST1IuDQo+
IE5vIGZ1bmN0aW9uYWwgY2hhbmdlLg0KDQpQdXNoZWQgdG8gZGlucS4gVGhhbmtzIGZvciB0aGUg
cGF0Y2ggYW5kIHJldmlldy4NClVwZGF0ZWQgdGhlICJGaXhlcyIgcGFydCB3aGlsZSBwdXNoaW5n
IHRoZSBjaGFuZ2UuDQoNCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVs
LmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAyZmQzY2NkMzNlMzAuLjI3ZWMyNDVlMGRk
MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gQEAgLTI0OSwxNSArMjQ5LDYgQEAgaW50ZWxfZmRpX2xpbmtfZnJlcShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJCXJldHVybiBkZXZfcHJpdi0+ZmRpX3BsbF9m
cmVxOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sDQo+IC1oYXNfdHJhbnNjb2RlcihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gdHJhbnNjb2Rlcg0KPiBjcHVfdHJhbnNj
b2RlcikgLXsNCj4gLQlpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApDQo+IC0J
CXJldHVybiBIQVNfVFJBTlNDT0RFUl9FRFAoZGV2X3ByaXYpOw0KPiAtCWVsc2UNCj4gLQkJcmV0
dXJuIElOVEVMX0lORk8oZGV2X3ByaXYpLT5waXBlX21hc2sgJiBCSVQoY3B1X3RyYW5zY29kZXIp
Ow0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2xpbWl0IGludGVsX2xp
bWl0c19pOHh4X2RhYyA9IHsNCj4gIAkuZG90ID0geyAubWluID0gMjUwMDAsIC5tYXggPSAzNTAw
MDAgfSwNCj4gIAkudmNvID0geyAubWluID0gOTA4MDAwLCAubWF4ID0gMTUxMjAwMCB9LCBAQCAt
MTg4MzgsNiArMTg4MjksMTUgQEAgdm9pZA0KPiBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmVf
bm9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IA0KPiAgI2lmIElTX0VOQUJM
RUQoQ09ORklHX0RSTV9JOTE1X0NBUFRVUkVfRVJST1IpDQo+IA0KPiArc3RhdGljIGJvb2wNCj4g
K2hhc190cmFuc2NvZGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSB0
cmFuc2NvZGVyDQo+ICtjcHVfdHJhbnNjb2Rlcikgew0KPiArCWlmIChjcHVfdHJhbnNjb2RlciA9
PSBUUkFOU0NPREVSX0VEUCkNCj4gKwkJcmV0dXJuIEhBU19UUkFOU0NPREVSX0VEUChkZXZfcHJp
dik7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4gSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVfbWFz
ayAmIEJJVChjcHVfdHJhbnNjb2Rlcik7IH0NCj4gKw0KPiAgc3RydWN0IGludGVsX2Rpc3BsYXlf
ZXJyb3Jfc3RhdGUgew0KPiANCj4gIAl1MzIgcG93ZXJfd2VsbF9kcml2ZXI7DQo+IC0tDQo+IDIu
MjUuMQ0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
