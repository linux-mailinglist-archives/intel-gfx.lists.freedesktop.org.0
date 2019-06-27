Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB39A584E4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D836E040;
	Thu, 27 Jun 2019 14:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A6B56E03D;
 Thu, 27 Jun 2019 14:51:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="173156100"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by orsmga002.jf.intel.com with ESMTP; 27 Jun 2019 07:51:34 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.60]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 15:51:33 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [PATCH i-g-t] gitlab-ci: add tests for MIPS
Thread-Index: AQHVLOyxJ87ZZrz1dUifgV1Jds1Ue6avhQmA
Date: Thu, 27 Jun 2019 14:51:32 +0000
Message-ID: <3ce986da0837fd46ebf200e1bf5b63378f8a4448.camel@intel.com>
References: <40326e43def140d19e0d57604e41aa10d1466f7a.1561642240.git.guillaume.tucker@collabora.com>
In-Reply-To: <40326e43def140d19e0d57604e41aa10d1466f7a.1561642240.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <7011868960C83F47933520E92E1EBB1B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] gitlab-ci: add tests for MIPS
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTI3IGF0IDE0OjMwICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBVc2UgdGhlIGxpYmF0b21pYzE6bWlwcyBwYWNrYWdlIG9ubHkgaW4gdGhlIERlYmlhbiBT
dHJldGNoIERvY2tlcg0KPiBpbWFnZSBmb3IgTUlQUyBhbmQgYWRkIEdpdGxhYiBDSSBzdGVwIHRv
IHJ1biB0ZXN0cyBvbiBNSVBTLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tl
ciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29tPg0KDQpXaXRoIHRoaXMgdGFnIGFkZGVk
Og0KDQpGaXhlczogNDM5YTlmNWQ2MTVmICgiZ2l0bGFiLWNpOiBhZGQgYnVpbGQgZm9yIE1JUFMi
KQ0KDQpUaGlzIHBhdGNoIGlzOg0KDQpSZXZpZXdlZC1ieTogU2ltb24gU2VyIDxzaW1vbi5zZXJA
aW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgLmdpdGxhYi1jaS55bWwgICAgICAgICB8IDE0ICsrKysr
KysrKysrKysrDQo+ICBEb2NrZXJmaWxlLmRlYmlhbi1taXBzIHwgIDIgKy0NCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwNCj4gaW5kZXggMzcxODRiOThmNWRh
Li42NjVmYmI3OWM1MjMgMTAwNjQ0DQo+IC0tLSBhLy5naXRsYWItY2kueW1sDQo+ICsrKyBiLy5n
aXRsYWItY2kueW1sDQo+IEBAIC0xNzMsNiArMTczLDIwIEBAIHRlc3Q6bmluamEtdGVzdC1hcm1o
ZjoNCj4gICAgICAgIC0gYnVpbGQNCj4gICAgICB3aGVuOiBvbl9mYWlsdXJlDQo+ICANCj4gK3Rl
c3Q6bmluamEtdGVzdC1taXBzOg0KPiArICBpbWFnZTogJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNU
X1BBVEgvaWd0LWRlYmlhbi1taXBzOmxhdGVzdA0KPiArICBkZXBlbmRlbmNpZXM6DQo+ICsgICAg
LSBidWlsZDp0ZXN0cy1kZWJpYW4tbWVzb24tbWlwcw0KPiArICBzdGFnZTogdGVzdA0KPiArICBz
Y3JpcHQ6DQo+ICsgICAgLSBleHBvcnQgUEtHX0NPTkZJR19QQVRIPS91c3IvbGliL21pcHMtbGlu
dXgtZ251L3BrZ2NvbmZpZy8NCj4gKyAgICAtIGVudiA+IGJ1aWxkL2VudmR1bXAudHh0DQo+ICsg
ICAgLSBuaW5qYSAtQyBidWlsZCB0ZXN0DQo+ICsgIGFydGlmYWN0czoNCj4gKyAgICBwYXRoczoN
Cj4gKyAgICAgIC0gYnVpbGQNCj4gKyAgICB3aGVuOiBvbl9mYWlsdXJlDQo+ICsNCj4gIHRlc3Q6
dGVzdC1saXN0LWRpZmY6DQo+ICAgIGRlcGVuZGVuY2llczoNCj4gICAgICAtIGJ1aWxkOnRlc3Rz
LWRlYmlhbi1hdXRvdG9vbHMNCj4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuLW1pcHMg
Yi9Eb2NrZXJmaWxlLmRlYmlhbi1taXBzDQo+IGluZGV4IGViZTA4ZGI2NDRlYS4uZWUyOWY1ZjRj
Y2RhIDEwMDY0NA0KPiAtLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbi1taXBzDQo+ICsrKyBiL0RvY2tl
cmZpbGUuZGViaWFuLW1pcHMNCj4gQEAgLTUsNyArNSw2IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwg
LXkgXA0KPiAgCQkJZmxleCBcDQo+ICAJCQliaXNvbiBcDQo+ICAJCQlwa2ctY29uZmlnIFwNCj4g
LQkJCWxpYmF0b21pYzEgXA0KPiAgCQkJeDExcHJvdG8tZHJpMi1kZXYgXA0KPiAgCQkJcHl0aG9u
LWRvY3V0aWxzIFwNCj4gIAkJCXZhbGdyaW5kIFwNCj4gQEAgLTE1LDYgKzE0LDcgQEAgUlVOIGRw
a2cgLS1hZGQtYXJjaGl0ZWN0dXJlIG1pcHMNCj4gIFJVTiBhcHQtZ2V0IHVwZGF0ZQ0KPiAgUlVO
IGFwdC1nZXQgaW5zdGFsbCAteSBcDQo+ICAJCQlnY2MtbWlwcy1saW51eC1nbnUgXA0KPiArCQkJ
bGliYXRvbWljMTptaXBzIFwNCj4gIAkJCWxpYnBjaWFjY2Vzcy1kZXY6bWlwcyBcDQo+ICAJCQls
aWJrbW9kLWRldjptaXBzIFwNCj4gIAkJCWxpYnByb2Nwcy1kZXY6bWlwcyBcDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
