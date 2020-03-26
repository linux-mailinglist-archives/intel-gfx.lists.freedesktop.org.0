Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363CA19410D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 15:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E4B89740;
	Thu, 26 Mar 2020 14:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5087389740
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 14:14:04 +0000 (UTC)
IronPort-SDR: jpuCNVrdaqwlOtXtaWBmEbnVTPPqMlKGV9lvw3JNL2z88LD/kice6uZNXMHbewFor+kBnT1BUK
 PEpArb4TSqIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 07:14:03 -0700
IronPort-SDR: 3paXAgF+VHM4EPzTgmUNR1fpoBMzJYNztvh+TCgRDHhlH/gwZ0U2kzMZkdFkX0o0D5xC5vXMV5
 Y2YN3wWzVbTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="265878875"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2020 07:14:03 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 07:14:03 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 07:14:02 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 26 Mar 2020 07:14:01 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Thu, 26 Mar 2020 19:43:51 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v3] drm/i915/display: Fix mode private_flags comparison at
 atomic_check
Thread-Index: AQHWA2lrAMdZor+E+kKYk+9HieQhoaha6jwA
Date: Thu, 26 Mar 2020 14:13:51 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243CA32@BGSMSX104.gar.corp.intel.com>
References: <20200326125111.11081-1-uma.shankar@intel.com>
In-Reply-To: <20200326125111.11081-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: "Khor,
 Swee Aun" <swee.aun.khor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbmthciwgVW1hIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAyNiwgMjAyMCA2
OjIxIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTaGFu
a2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpA0KPiA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBNYWFydGVuIExhbmtob3JzdA0KPiA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPjsgS2FpIFZlaG1hbmVuDQo+IDxrYWkudmVobWFuZW5A
bGludXguaW50ZWwuY29tPjsgU291emE7IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNv
bT47DQo+IEtob3IsIFN3ZWUgQXVuIDxzd2VlLmF1bi5raG9yQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW3YzXSBkcm0vaTkxNS9kaXNwbGF5OiBGaXggbW9kZSBwcml2YXRlX2ZsYWdzIGNvbXBhcmlz
b24gYXQgYXRvbWljX2NoZWNrDQo+IA0KPiBUaGlzIHBhdGNoIGZpeGVzIHRoZSBwcml2YXRlX2Zs
YWdzIG9mIG1vZGUgdG8gYmUgY2hlY2tlZCBhbmQgY29tcGFyZWQgYWdhaW5zdA0KPiB1YXBpLm1v
ZGUgYW5kIG5vdCBmcm9tIGh3Lm1vZGUuIFRoaXMgaGVscHMgcHJvcGVybHkgdHJpZ2dlciBtb2Rl
c2V0IGF0IGJvb3QgaWYNCj4gZGVzaXJlZCBieSBkcml2ZXIuDQo+IA0KPiBJdCBoZWxwcyByZXNv
bHZlIGF1ZGlvX2NvZGVjIGluaXRpYWxpemF0aW9uIGlzc3VlcyBpZiBkaXNwbGF5IGlzIGNvbm5l
Y3RlZCBhdCBib290Lg0KPiBJbml0aWFsIGRpc2N1c3Npb24gb24gdGhpcyBpc3N1ZSBoYXMgaGFw
cGVuZWQgb24gYmVsb3cgdGhyZWFkOg0KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzc0ODI4Lw0KPiANCj4gdjI6IE5vIGZ1bmN0aW9uYWwgY2hhbmdlLiBGaXhlZCB0
aGUgQ2xvc2VzIHRhZyBhbmQgYWRkZWQgTWFhcnRlbidzIFJCLg0KPiANCj4gdjM6IEFkZGVkIEZp
eGVzIHRhZy4NCg0KUHVzaGVkIHRoZSBjaGFuZ2UgdG8gZGlucS4NCg0KVGhhbmtzIGFnYWluIFZp
bGxlIGFuZCBNYWFydGVuIGZvciBhbGwgeW91ciB2YWx1YWJsZSBmZWVkYmFjaywgc3VnZ2VzdGlv
bnMNCmFuZCByZXZpZXdzLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiBDYzogVmlsbGUg
U3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBLYWkgVmVo
bWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBTb3V6YSwgSm9zZSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IEZpeGVzOiA1OGQxMjRlYTI3MzkgKCJkcm0vaTkxNTog
Q29tcGxldGUgY3J0YyBody91YXBpIHNwbGl0LCB2Ni4iKQ0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEzNjMNCj4gU3VnZ2VzdGVkLWJ5
OiBWaWxsZSBTeXJqw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBTd2VlQXVuIEtob3IgPHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1i
eTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+IGluZGV4IGZlNTVjN2M3MTNmMS4uZTYzMDQyOWFmMmMwIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTQ3NDcsOCAr
MTQ3NDcsOCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LA0KPiAgCS8qIENhdGNoIEk5MTVfTU9ERV9GTEFHX0lOSEVSSVRFRCAqLw0KPiAgCWZv
cl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19z
dGF0ZSwNCj4gIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+IC0JCWlmIChuZXdfY3J0
Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzICE9DQo+IC0JCSAgICBvbGRfY3J0Y19zdGF0
ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzKQ0KPiArCQlpZiAobmV3X2NydGNfc3RhdGUtPnVhcGku
bW9kZS5wcml2YXRlX2ZsYWdzICE9DQo+ICsJCSAgICBvbGRfY3J0Y19zdGF0ZS0+dWFwaS5tb2Rl
LnByaXZhdGVfZmxhZ3MpDQo+ICAJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQg
PSB0cnVlOw0KPiAgCX0NCj4gDQo+IC0tDQo+IDIuMjIuMA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
