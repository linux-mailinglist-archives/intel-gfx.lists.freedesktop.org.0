Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9098B5945A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 08:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706B86E885;
	Fri, 28 Jun 2019 06:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818256E884;
 Fri, 28 Jun 2019 06:46:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 23:46:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="156484253"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 23:46:42 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.79]) with mapi id 14.03.0439.000;
 Fri, 28 Jun 2019 07:46:42 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [PATCH i-g-t] gitlab-ci: add tests for MIPS
Thread-Index: AQHVLOyxJ87ZZrz1dUifgV1Jds1Ue6awj+aA
Date: Fri, 28 Jun 2019 06:46:41 +0000
Message-ID: <3b172cc9bdb3c8b201516aa09c09efd8c84fe4e9.camel@intel.com>
References: <40326e43def140d19e0d57604e41aa10d1466f7a.1561642240.git.guillaume.tucker@collabora.com>
In-Reply-To: <40326e43def140d19e0d57604e41aa10d1466f7a.1561642240.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <F23B4EFB474065488CF4F98F03760870@intel.com>
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
ciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29tPg0KDQpBbmQgcHVzaGVkOg0KDQpUbyBn
aXRsYWIuZnJlZWRlc2t0b3Aub3JnOmRybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KICAgM2M0ZWRlYmEz
NWFjLi41ZjZjZjcwNzBiMjQgIG1hc3RlciAtPiBtYXN0ZXINCg0KVGhhbmtzIQ0KDQo+IC0tLQ0K
PiAgLmdpdGxhYi1jaS55bWwgICAgICAgICB8IDE0ICsrKysrKysrKysrKysrDQo+ICBEb2NrZXJm
aWxlLmRlYmlhbi1taXBzIHwgIDIgKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIv
LmdpdGxhYi1jaS55bWwNCj4gaW5kZXggMzcxODRiOThmNWRhLi42NjVmYmI3OWM1MjMgMTAwNjQ0
DQo+IC0tLSBhLy5naXRsYWItY2kueW1sDQo+ICsrKyBiLy5naXRsYWItY2kueW1sDQo+IEBAIC0x
NzMsNiArMTczLDIwIEBAIHRlc3Q6bmluamEtdGVzdC1hcm1oZjoNCj4gICAgICAgIC0gYnVpbGQN
Cj4gICAgICB3aGVuOiBvbl9mYWlsdXJlDQo+ICANCj4gK3Rlc3Q6bmluamEtdGVzdC1taXBzOg0K
PiArICBpbWFnZTogJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlhbi1taXBz
OmxhdGVzdA0KPiArICBkZXBlbmRlbmNpZXM6DQo+ICsgICAgLSBidWlsZDp0ZXN0cy1kZWJpYW4t
bWVzb24tbWlwcw0KPiArICBzdGFnZTogdGVzdA0KPiArICBzY3JpcHQ6DQo+ICsgICAgLSBleHBv
cnQgUEtHX0NPTkZJR19QQVRIPS91c3IvbGliL21pcHMtbGludXgtZ251L3BrZ2NvbmZpZy8NCj4g
KyAgICAtIGVudiA+IGJ1aWxkL2VudmR1bXAudHh0DQo+ICsgICAgLSBuaW5qYSAtQyBidWlsZCB0
ZXN0DQo+ICsgIGFydGlmYWN0czoNCj4gKyAgICBwYXRoczoNCj4gKyAgICAgIC0gYnVpbGQNCj4g
KyAgICB3aGVuOiBvbl9mYWlsdXJlDQo+ICsNCj4gIHRlc3Q6dGVzdC1saXN0LWRpZmY6DQo+ICAg
IGRlcGVuZGVuY2llczoNCj4gICAgICAtIGJ1aWxkOnRlc3RzLWRlYmlhbi1hdXRvdG9vbHMNCj4g
ZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuLW1pcHMgYi9Eb2NrZXJmaWxlLmRlYmlhbi1t
aXBzDQo+IGluZGV4IGViZTA4ZGI2NDRlYS4uZWUyOWY1ZjRjY2RhIDEwMDY0NA0KPiAtLS0gYS9E
b2NrZXJmaWxlLmRlYmlhbi1taXBzDQo+ICsrKyBiL0RvY2tlcmZpbGUuZGViaWFuLW1pcHMNCj4g
QEAgLTUsNyArNSw2IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkgXA0KPiAgCQkJZmxleCBcDQo+
ICAJCQliaXNvbiBcDQo+ICAJCQlwa2ctY29uZmlnIFwNCj4gLQkJCWxpYmF0b21pYzEgXA0KPiAg
CQkJeDExcHJvdG8tZHJpMi1kZXYgXA0KPiAgCQkJcHl0aG9uLWRvY3V0aWxzIFwNCj4gIAkJCXZh
bGdyaW5kIFwNCj4gQEAgLTE1LDYgKzE0LDcgQEAgUlVOIGRwa2cgLS1hZGQtYXJjaGl0ZWN0dXJl
IG1pcHMNCj4gIFJVTiBhcHQtZ2V0IHVwZGF0ZQ0KPiAgUlVOIGFwdC1nZXQgaW5zdGFsbCAteSBc
DQo+ICAJCQlnY2MtbWlwcy1saW51eC1nbnUgXA0KPiArCQkJbGliYXRvbWljMTptaXBzIFwNCj4g
IAkJCWxpYnBjaWFjY2Vzcy1kZXY6bWlwcyBcDQo+ICAJCQlsaWJrbW9kLWRldjptaXBzIFwNCj4g
IAkJCWxpYnByb2Nwcy1kZXY6bWlwcyBcDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
