Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DEE565BCA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB0710E979;
	Mon,  4 Jul 2022 16:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C422310E046
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 12:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656937661; x=1688473661;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WT6FsmidFeXra5yufXP3ld2DOiW6pC2fTMaatZmDtx0=;
 b=GNFJZ4g/IFwPuLXxEmWs8no2B+KUs3ulk9ifrlsfDP6akLyHxkg8m55B
 mYQGUo69ZlhfT+ElGGt7r889KAFLtH7BX/otztAeu0hm/x6C7gFOTzJKm
 IkCfiYdWkCn9Y+L2N0DDMhx9+5bzIloAsAEjB3dbPPt8e23HUoaUJL4Fr
 qoCDyduEeMr2MFwobNo4VRV31mrO50btD7a/YW9NzEIsHwDgirSO+gddJ
 Kbh9ODtm+S1DFsAUmDZMV3T4wAYE5/NZYGt4Rr3tgx73Od63HJr2Dtsxh
 ShxIO5BZfDykU/cIzbbn2f8n2fIjDayIsD6HXiH3amTny7shRZusN31CS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="266142308"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="266142308"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="734815304"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2022 05:27:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 05:27:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 05:27:36 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 4 Jul 2022 05:27:36 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYihUObgp6TCpwhUCQ9chkYp4RY61uTzQA///fV5A=
Date: Mon, 4 Jul 2022 12:27:36 +0000
Message-ID: <248516b5125c4a109497bfe7ad506da4@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220704072352.1331682-1-arun.r.murthy@intel.com>
In-Reply-To: <20220704072352.1331682-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Zanoni, 
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEp1bHkgNCwgMjAyMiAx
Mjo1NCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IFphbm9uaSwgUGF1bG8gUiA8cGF1bG8uci56YW5v
bmlAaW50ZWwuY29tPjsNCj4gdHByZXZpdGVAZ21haWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5z
aGFua2FyQGludGVsLmNvbT47IE5pa3VsYSwgSmFuaQ0KPiA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PjsgTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0hdIGRybS9pOTE1L2RwOiB3YWl0IG9uIHRpbWVvdXQgYmVmb3JlIHJldHJ5DQo+IA0KPiBP
biBsaW5rdHJhaW5pbmcgZXJyb3IvdGltZW91dCBiZWZvcmUgcmV0cnkgbmVlZCB0byB3YWl0IGZv
ciA0MDB1c2VjIGFzIHBlciB0aGUgRFANCj4gQ1RTIHNwZWMxLjIgVW5kZXIgc2VjdGlvbiAyLjcu
MiBBVVggVHJhbnNhY3Rpb24gUmVzcG9uc2UvUmVwbHkgVGltZS1vdXRzIEFVWA0KPiBSZXBsaWVy
ICh0aGUgdVBhY2tldCBSWCkgbXVzdCBzdGFydCBzZW5kaW5nIHRoZSByZXBseSBiYWNrIHRvIHRo
ZSBBVVggcmVxdWVzdGVyICh0aGUNCj4gdVBhY2tldCBUWCkgd2l0aGluIHRoZSByZXNwb25zZSBw
ZXJpb2Qgb2YgMzAwzrxzLiBUaGUgdGltZXIgZm9yIFJlc3BvbnNlIFRpbWUtb3V0DQo+IHN0YXJ0
cyB0aWNraW5nIGFmdGVyIHRoZSB1UGFja2V0IFJYIGhhcyBmaW5pc2hlZCByZWNlaXZpbmcgdGhl
IEFVWCBTVE9QIGNvbmRpdGlvbg0KPiB3aGljaCBlbmRzIHRoZSBBVVggUmVxdWVzdCB0cmFuc2Fj
dGlvbi4NCj4gVGhlIHRpbWVyIGlzIHJlc2V0IGVpdGhlciB3aGVuIHRoZSBSZXNwb25zZSBUaW1l
LW91dCBwZXJpb2QgaGFzIGVsYXBzZWQgb3Igd2hlbg0KPiB0aGUgdVBhY2tldCBSWCBoYXMgc3Rh
cnRlZCB0byBzZW5kIHRoZSBBVVggU3luYyBwYXR0ZXJuICh3aGljaCBmb2xsb3dzDQo+IDEwIHRv
IDE2IGFjdGl2ZSBwcmUtY2hhcmdlIHB1bHNlcykgZm9yIHRoZSBSZXBseSB0cmFuc2FjdGlvbi4g
SWYgdGhlIHVQYWNrZXQgVFggZG9lcw0KPiBub3QgcmVjZWl2ZSBhIHJlcGx5IGZyb20gdGhlIHVQ
YWNrZXQgUlggaXQgbXVzdCB3YWl0IGZvciBhIFJlcGx5IFRpbWUtb3V0IHBlcmlvZCBvZg0KPiA0
MDB1cyBiZWZvcmUgaW5pdGlhdGluZyB0aGUgbmV4dCBBVVggUmVxdWVzdCB0cmFuc2FjdGlvbi4g
VGhlIHRpbWVyIGZvciB0aGUgUmVwbHkNCj4gVGltZS1vdXQgc3RhcnRzIHRpY2tpbmcgYWZ0ZXIg
dGhlIHVQYWNrZXQgVFggaGFzIGZpbmlzaGVkIHNlbmRpbmcgdGhlIEFVWCBTVE9QDQo+IGNvbmRp
dGlvbi4NCj4gDQo+IFRoZSBwYXRjaCB3aXRoIGNvbW1pdCA3NGViZjI5NGExZGQgKCJkcm0vaTkx
NTogQWRkIGEgZGVsYXkgaW4gRGlzcGxheXBvcnQgQVVYDQo+IHRyYW5zYWN0aW9ucyBmb3IgY29t
cGxpYW5jZSB0ZXN0aW5nIikgcmVtb3ZlcyB0aGlzIGRlbGF5IG1lbnRpb25pbmcgdGhlIGhhcmR3
YXJlDQo+IGFscmVhZHkgbWVldHMgdGhpcyByZXF1aXJlbWVudCwgYnV0IGFzIHBlciB0aGUgc3Bl
YyB0aGUgZGVsYXkgbWVudGlvbmVkIGluIHRoZSBzcGVjDQo+IHNwZWNpZmllcyBob3cgbG9uZyB0
byB3YWl0IGZvciB0aGUgcmVjZWl2ZXIgcmVzcG9uc2UgYmVmb3JlIHRpbWVvdXQuIFNvIHRoZSBk
ZWxheQ0KPiBoZXJlIHRvIHdhaXQgZm9yIHRpbWVvdXQgYW5kIG5vdCBhIGRlbGF5IGFmdGVyIHRp
bWVvdXQuIFRoZSBEUCBzcGVjIHNwZWNpZmllcyBhIGRlbGF5DQo+IGFmdGVyIHRpbWVvdXQgYW5k
IGhlbmNlIGFkZGluZyB0aGlzIGRlbGF5Lg0KPiANCj4gdjI6IGZpeGVkIGNoZWNrcGF0Y2ggd2Fy
bmluZyBhbmQgZXJyb3INCj4gdjM6IHVzZWQgcHJvcGVyIGluZGVudGF0aW9uDQo+IHY0OiBhZGRl
ZCBEUCBDRUEgMS4yIHNwZWMgZGV0YWlscyBpbiBwYXRjaCBjb21taXQgbXNnDQoNCkxvb2tzIEdv
b2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVs
LmNvbT4NCj4gQWNrZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYyB8IDgg
KystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9hdXguYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
LmMNCj4gaW5kZXggMmJjMTE5Mzc0NTU1Li43MjJjOWYyMTA2OTAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiBAQCAtMjg2LDEzICsyODYs
OSBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJ
LyoNCj4gIAkJCSAqIERQIENUUyAxLjIgQ29yZSBSZXYgMS4xLCA0LjIuMS4xICYgNC4yLjEuMg0K
PiAgCQkJICogICA0MDB1cyBkZWxheSByZXF1aXJlZCBmb3IgZXJyb3JzIGFuZCB0aW1lb3V0cw0K
PiAtCQkJICogICBUaW1lb3V0IGVycm9ycyBmcm9tIHRoZSBIVyBhbHJlYWR5IG1lZXQgdGhpcw0K
PiAtCQkJICogICByZXF1aXJlbWVudCBzbyBza2lwIHRvIG5leHQgaXRlcmF0aW9uDQo+ICAJCQkg
Ki8NCj4gLQkJCWlmIChzdGF0dXMgJiBEUF9BVVhfQ0hfQ1RMX1RJTUVfT1VUX0VSUk9SKQ0KPiAt
CQkJCWNvbnRpbnVlOw0KPiAtDQo+IC0JCQlpZiAoc3RhdHVzICYgRFBfQVVYX0NIX0NUTF9SRUNF
SVZFX0VSUk9SKSB7DQo+ICsJCQlpZiAoc3RhdHVzICYgKERQX0FVWF9DSF9DVExfUkVDRUlWRV9F
UlJPUiB8DQo+ICsJCQkJICAgICAgRFBfQVVYX0NIX0NUTF9USU1FX09VVF9FUlJPUikpIHsNCj4g
IAkJCQl1c2xlZXBfcmFuZ2UoNDAwLCA1MDApOw0KPiAgCQkJCWNvbnRpbnVlOw0KPiAgCQkJfQ0K
PiAtLQ0KPiAyLjI1LjENCg0K
