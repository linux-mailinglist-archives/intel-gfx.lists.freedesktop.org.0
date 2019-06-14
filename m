Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C87456FA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 10:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFA0896C7;
	Fri, 14 Jun 2019 08:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEC289590;
 Fri, 14 Jun 2019 08:08:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 01:08:52 -0700
X-ExtLoop1: 1
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2019 01:08:51 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 IRSMSX103.ger.corp.intel.com ([169.254.3.112]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 09:08:50 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 2/4] gitlab-ci: add libatomic to
 docker images
Thread-Index: AQHVIe94YjXm5ALQREq/FcnrxAfvBKaavDuA
Date: Fri, 14 Jun 2019 08:08:49 +0000
Message-ID: <254abdace29cdf6d6c4757bd5b22cd618149bfe9.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
In-Reply-To: <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <8EE3A20960D28F42B8F999965E2C0CCE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 2/4] gitlab-ci: add
 libatomic to docker images
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

T24gVGh1LCAyMDE5LTA2LTEzIGF0IDE0OjUzICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBBZGQgbGliYXRvbWljIHRvIHRoZSBGZWRvcmEgZG9ja2VyIGltYWdlIHNvIGl0IGNhbiBs
aW5rIGJpbmFyaWVzIHRoYXQNCj4gdXNlIF9fYXRvbWljXyogZnVuY3Rpb25zLiAgQWxzbyBleHBs
aWNpdGx5IGFkZCBsaWJhdG9taWMxIHRvIERlYmlhbg0KPiBkb2NrZXIgaW1hZ2VzIGV2ZW4gdGhv
dWdoIGl0J3MgYWxyZWFkeSBpbnN0YWxsZWQgYXMgYSBkZXBlbmRlbmN5Lg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29t
Pg0KDQpSZXZpZXdlZC1ieTogU2ltb24gU2VyIDxzaW1vbi5zZXJAaW50ZWwuY29tPg0KDQo+IC0t
LQ0KPiAgRG9ja2VyZmlsZS5kZWJpYW4gICAgICAgfCAxICsNCj4gIERvY2tlcmZpbGUuZGViaWFu
LWFybTY0IHwgMSArDQo+ICBEb2NrZXJmaWxlLmRlYmlhbi1hcm1oZiB8IDEgKw0KPiAgRG9ja2Vy
ZmlsZS5mZWRvcmEgICAgICAgfCAyICstDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFu
IGIvRG9ja2VyZmlsZS5kZWJpYW4NCj4gaW5kZXggYjljM2JlMzk0NWUwLi5kMjM1OTE4NTBjNGUg
MTAwNjQ0DQo+IC0tLSBhL0RvY2tlcmZpbGUuZGViaWFuDQo+ICsrKyBiL0RvY2tlcmZpbGUuZGVi
aWFuDQo+IEBAIC02LDYgKzYsNyBAQCBSVU4gYXB0LWdldCBpbnN0YWxsIC15IFwNCj4gIAkJCWZs
ZXggXA0KPiAgCQkJYmlzb24gXA0KPiAgCQkJcGtnLWNvbmZpZyBcDQo+ICsJCQlsaWJhdG9taWMx
IFwNCj4gIAkJCWxpYnBjaWFjY2Vzcy1kZXYgXA0KPiAgCQkJbGlia21vZC1kZXYgXA0KPiAgCQkJ
bGlicHJvY3BzLWRldiBcDQo+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRlYmlhbi1hcm02NCBi
L0RvY2tlcmZpbGUuZGViaWFuLWFybTY0DQo+IGluZGV4IDdiM2EzYzdjYTgwMy4uMDAzYmIyMmIz
MjE1IDEwMDY0NA0KPiAtLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbi1hcm02NA0KPiArKysgYi9Eb2Nr
ZXJmaWxlLmRlYmlhbi1hcm02NA0KPiBAQCAtNSw2ICs1LDcgQEAgUlVOIGFwdC1nZXQgaW5zdGFs
bCAteSBcDQo+ICAJCQlmbGV4IFwNCj4gIAkJCWJpc29uIFwNCj4gIAkJCXBrZy1jb25maWcgXA0K
PiArCQkJbGliYXRvbWljMSBcDQo+ICAJCQl4MTFwcm90by1kcmkyLWRldiBcDQo+ICAJCQlweXRo
b24tZG9jdXRpbHMgXA0KPiAgCQkJdmFsZ3JpbmQgXA0KPiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmls
ZS5kZWJpYW4tYXJtaGYgYi9Eb2NrZXJmaWxlLmRlYmlhbi1hcm1oZg0KPiBpbmRleCBjNjdhMWUy
YWNmNmEuLjMxMzk5MjdjMTkzYSAxMDA2NDQNCj4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJt
aGYNCj4gKysrIGIvRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYNCj4gQEAgLTUsNiArNSw3IEBAIFJV
TiBhcHQtZ2V0IGluc3RhbGwgLXkgXA0KPiAgCQkJZmxleCBcDQo+ICAJCQliaXNvbiBcDQo+ICAJ
CQlwa2ctY29uZmlnIFwNCj4gKwkJCWxpYmF0b21pYzEgXA0KPiAgCQkJeDExcHJvdG8tZHJpMi1k
ZXYgXA0KPiAgCQkJcHl0aG9uLWRvY3V0aWxzIFwNCj4gIAkJCXZhbGdyaW5kIFwNCj4gZGlmZiAt
LWdpdCBhL0RvY2tlcmZpbGUuZmVkb3JhIGIvRG9ja2VyZmlsZS5mZWRvcmENCj4gaW5kZXggNjY4
NmU1ODc2MTNkLi5jODRiNDEyYjA3MjMgMTAwNjQ0DQo+IC0tLSBhL0RvY2tlcmZpbGUuZmVkb3Jh
DQo+ICsrKyBiL0RvY2tlcmZpbGUuZmVkb3JhDQo+IEBAIC0xLDcgKzEsNyBAQA0KPiAgRlJPTSBm
ZWRvcmE6MzANCj4gIA0KPiAgUlVOIGRuZiBpbnN0YWxsIC15IFwNCj4gLQlnY2MgZmxleCBiaXNv
biBtZXNvbiBuaW5qYS1idWlsZCB4ZG90b29sIFwNCj4gKwlnY2MgZmxleCBiaXNvbiBsaWJhdG9t
aWMgbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBcDQo+ICAJJ3BrZ2NvbmZpZyhsaWJkcm0pJyBc
DQo+ICAJJ3BrZ2NvbmZpZyhwY2lhY2Nlc3MpJyBcDQo+ICAJJ3BrZ2NvbmZpZyhsaWJrbW9kKScg
XA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
