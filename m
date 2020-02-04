Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DC715204D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 19:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8689C6E8B2;
	Tue,  4 Feb 2020 18:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63C726E8B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 18:18:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 10:18:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="231458778"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 04 Feb 2020 10:18:10 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 10:18:10 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.199]) with mapi id 14.03.0439.000;
 Tue, 4 Feb 2020 10:18:10 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix the docs for
 intel_set_cdclk_post_plane_update()
Thread-Index: AQHV23KGh7rqXAp0MESLE+xGu7dkk6gL3h+A
Date: Tue, 4 Feb 2020 18:18:09 +0000
Message-ID: <b587253bd7d48edbce7b678a0d7fbf5958f2284a.camel@intel.com>
References: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.237]
Content-ID: <D558070F86A87843A6A3E6B781D522D1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the docs for
 intel_set_cdclk_post_plane_update()
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

T24gVHVlLCAyMDIwLTAyLTA0IGF0IDE3OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gcy9iZWZvcmUvYWZ0ZXIvIGFnYWluIGFmdGVyIGFjY2lkZW50YWxseSBjaGFuZ2luZyBp
dCB0aGUNCj4gb3RoZXIgd2F5IGluIGNvbW1pdCA1NjA0ZTljZWFlZDUgKCJkcm0vaTkxNTogU2lt
cGxpZnkNCj4gaW50ZWxfc2V0X2NkY2xrX3twcmUscG9zdH1fcGxhbmVfdXBkYXRlKCkgY2FsbGlu
ZyBjb252ZW50aW9uIikNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNzE1NGEyMjg4MzEwLi4zYWQ1ZjM2NDQ3ZTkgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gQEAg
LTE4OTUsNyArMTg5NSw3IEBAIGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVfdXBkYXRlKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgICogaW50ZWxfc2V0X2NkY2xrX3Bv
c3RfcGxhbmVfdXBkYXRlIC0gUHVzaCB0aGUgQ0RDTEsgc3RhdGUgdG8gdGhlDQo+IGhhcmR3YXJl
DQo+ICAgKiBAc3RhdGU6IGludGVsIGF0b21pYyBzdGF0ZQ0KPiAgICoNCj4gLSAqIFByb2dyYW0g
dGhlIGhhcmR3YXJlIGJlZm9yZSB1cGRhdGluZyB0aGUgSFcgcGxhbmUgc3RhdGUgYmFzZWQgb24N
Cj4gdGhlDQo+ICsgKiBQcm9ncmFtIHRoZSBoYXJkd2FyZSBhZnRlciB1cGRhdGluZyB0aGUgSFcg
cGxhbmUgc3RhdGUgYmFzZWQgb24NCj4gdGhlDQo+ICAgKiBuZXcgQ0RDTEsgc3RhdGUsIGlmIG5l
Y2Vzc2FyeS4NCg0KQnV0IHRoZSBIVyBwbGFuZSBzdGF0ZSB3aWxsIGJlIHVwZGF0ZWQgbGF0ZXIg
aW4gZGV2X3ByaXYtDQo+ZGlzcGxheS5jb21taXRfbW9kZXNldF9lbmFibGVzKCkuDQoNCj4gICAq
Lw0KPiAgdm9pZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
