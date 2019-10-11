Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5A1D471D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A166E420;
	Fri, 11 Oct 2019 18:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22AA06E420
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:02:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 11:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="369489760"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 11 Oct 2019 11:02:01 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.49]) with mapi id 14.03.0439.000;
 Fri, 11 Oct 2019 11:01:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915: simplify setting of
 ddi_io_power_domain
Thread-Index: AQHVf9CLacojMAB3DU+ju2viQDkPAadWMamA
Date: Fri, 11 Oct 2019 18:01:58 +0000
Message-ID: <20c5d7559664f8e7b8cf35e892b82b3be429ecb1.camel@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-2-lucas.demarchi@intel.com>
In-Reply-To: <20191011010907.103309-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.128]
Content-ID: <AD813F357273DA4BAE70D20A75B9EF9F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: simplify setting of
 ddi_io_power_domain
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

T24gVGh1LCAyMDE5LTEwLTEwIGF0IDE4OjA5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEluc3RlYWQgb2YgdGhlIGV2ZXIgZ3Jvd2luZyBzd2l0Y2gsIGp1c3QgY29tcHV0ZSB0aGUg
ZGRpIGlvIHBvd2VyDQo+IGRvbWFpbg0KPiBiYXNlZCBvbiB0aGUgcG9ydCBudW1iZXIuDQoNClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDQzICsrLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDZjMTMxNWM3YmNkZS4uYjI3NzZm
NjA0NGFlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gQEAgLTQ3NTAsNDYgKzQ3NTAsOSBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpDQo+ICAJCWludGVsX2Vu
Y29kZXItPnVwZGF0ZV9jb21wbGV0ZSA9DQo+IGludGVsX2RkaV91cGRhdGVfY29tcGxldGU7DQo+
ICAJfQ0KPiAgDQo+IC0Jc3dpdGNoIChwb3J0KSB7DQo+IC0JY2FzZSBQT1JUX0E6DQo+IC0JCWlu
dGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0NCj4gLQkJCVBPV0VSX0RPTUFJTl9Q
T1JUX0RESV9BX0lPOw0KPiAtCQlicmVhazsNCj4gLQljYXNlIFBPUlRfQjoNCj4gLQkJaW50ZWxf
ZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4gPQ0KPiAtCQkJUE9XRVJfRE9NQUlOX1BPUlRf
RERJX0JfSU87DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgUE9SVF9DOg0KPiAtCQlpbnRlbF9kaWdf
cG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9DQo+IC0JCQlQT1dFUl9ET01BSU5fUE9SVF9ERElf
Q19JTzsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSBQT1JUX0Q6DQo+IC0JCWludGVsX2RpZ19wb3J0
LT5kZGlfaW9fcG93ZXJfZG9tYWluID0NCj4gLQkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0lP
Ow0KPiAtCQlicmVhazsNCj4gLQljYXNlIFBPUlRfRToNCj4gLQkJaW50ZWxfZGlnX3BvcnQtPmRk
aV9pb19wb3dlcl9kb21haW4gPQ0KPiAtCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0VfSU87DQo+
IC0JCWJyZWFrOw0KPiAtCWNhc2UgUE9SVF9GOg0KPiAtCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lv
X3Bvd2VyX2RvbWFpbiA9DQo+IC0JCQlQT1dFUl9ET01BSU5fUE9SVF9ERElfRl9JTzsNCj4gLQkJ
YnJlYWs7DQo+IC0JY2FzZSBQT1JUX0c6DQo+IC0JCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93
ZXJfZG9tYWluID0NCj4gLQkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9HX0lPOw0KPiAtCQlicmVh
azsNCj4gLQljYXNlIFBPUlRfSDoNCj4gLQkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9k
b21haW4gPQ0KPiAtCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0hfSU87DQo+IC0JCWJyZWFrOw0K
PiAtCWNhc2UgUE9SVF9JOg0KPiAtCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFp
biA9DQo+IC0JCQlQT1dFUl9ET01BSU5fUE9SVF9ERElfSV9JTzsNCj4gLQkJYnJlYWs7DQo+IC0J
ZGVmYXVsdDoNCj4gLQkJTUlTU0lOR19DQVNFKHBvcnQpOw0KPiAtCX0NCj4gKwlXQVJOX09OKHBv
cnQgPiBQT1JUX0kpOw0KPiArCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0N
Cj4gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0FfSU8gKw0KPiArCQkJCQkgICAgICBwb3J0IC0gUE9S
VF9BOw0KPiAgDQo+ICAJaWYgKGluaXRfZHApIHsNCj4gIAkJaWYgKCFpbnRlbF9kZGlfaW5pdF9k
cF9jb25uZWN0b3IoaW50ZWxfZGlnX3BvcnQpKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
