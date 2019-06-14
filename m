Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD8345D2C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 14:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506ED892B7;
	Fri, 14 Jun 2019 12:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B182892B7;
 Fri, 14 Jun 2019 12:53:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 05:53:26 -0700
X-ExtLoop1: 1
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jun 2019 05:53:25 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.167]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 13:53:24 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 2/4] gitlab-ci: add libatomic to
 docker images
Thread-Index: AQHVIe94YjXm5ALQREq/FcnrxAfvBKaa22EAgAAXoQCAABXHgIAAAvUA
Date: Fri, 14 Jun 2019 12:53:24 +0000
Message-ID: <94c02d20c62495655116ebc3379f9c68630d0574.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
 <20190614100034.GN22949@platvala-desk.ger.corp.intel.com>
 <99d089607f34ec04bbb57eec314dba00cc213927.camel@intel.com>
 <20190614124305.GQ22949@platvala-desk.ger.corp.intel.com>
In-Reply-To: <20190614124305.GQ22949@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <04DB68FDF86C364D90829C54929E0831@intel.com>
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

T24gRnJpLCAyMDE5LTA2LTE0IGF0IDE1OjQzICswMzAwLCBQZXRyaSBMYXR2YWxhIHdyb3RlOg0K
PiBPbiBGcmksIEp1biAxNCwgMjAxOSBhdCAwMjoyNDo1M1BNICswMzAwLCBTZXIsIFNpbW9uIHdy
b3RlOg0KPiA+IE9uIEZyaSwgMjAxOS0wNi0xNCBhdCAxMzowMCArMDMwMCwgUGV0cmkgTGF0dmFs
YSB3cm90ZToNCj4gPiA+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDAyOjUzOjIwUE0gKzAxMDAs
IEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6DQo+ID4gPiA+IEFkZCBsaWJhdG9taWMgdG8gdGhlIEZl
ZG9yYSBkb2NrZXIgaW1hZ2Ugc28gaXQgY2FuIGxpbmsgYmluYXJpZXMgdGhhdA0KPiA+ID4gPiB1
c2UgX19hdG9taWNfKiBmdW5jdGlvbnMuICBBbHNvIGV4cGxpY2l0bHkgYWRkIGxpYmF0b21pYzEg
dG8gRGViaWFuDQo+ID4gPiA+IGRvY2tlciBpbWFnZXMgZXZlbiB0aG91Z2ggaXQncyBhbHJlYWR5
IGluc3RhbGxlZCBhcyBhIGRlcGVuZGVuY3kuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+DQo+
ID4gPiA+IC0tLQ0KPiA+ID4gPiAgRG9ja2VyZmlsZS5kZWJpYW4gICAgICAgfCAxICsNCj4gPiA+
ID4gIERvY2tlcmZpbGUuZGViaWFuLWFybTY0IHwgMSArDQo+ID4gPiA+ICBEb2NrZXJmaWxlLmRl
Ymlhbi1hcm1oZiB8IDEgKw0KPiA+ID4gPiAgRG9ja2VyZmlsZS5mZWRvcmEgICAgICAgfCAyICst
DQo+ID4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuIGIvRG9j
a2VyZmlsZS5kZWJpYW4NCj4gPiA+ID4gaW5kZXggYjljM2JlMzk0NWUwLi5kMjM1OTE4NTBjNGUg
MTAwNjQ0DQo+ID4gPiA+IC0tLSBhL0RvY2tlcmZpbGUuZGViaWFuDQo+ID4gPiA+ICsrKyBiL0Rv
Y2tlcmZpbGUuZGViaWFuDQo+ID4gPiA+IEBAIC02LDYgKzYsNyBAQCBSVU4gYXB0LWdldCBpbnN0
YWxsIC15IFwNCj4gPiA+ID4gIAkJCWZsZXggXA0KPiA+ID4gPiAgCQkJYmlzb24gXA0KPiA+ID4g
PiAgCQkJcGtnLWNvbmZpZyBcDQo+ID4gPiA+ICsJCQlsaWJhdG9taWMxIFwNCj4gPiA+ID4gIAkJ
CWxpYnBjaWFjY2Vzcy1kZXYgXA0KPiA+ID4gPiAgCQkJbGlia21vZC1kZXYgXA0KPiA+ID4gPiAg
CQkJbGlicHJvY3BzLWRldiBcDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRlYmlh
bi1hcm02NCBiL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0DQo+ID4gPiA+IGluZGV4IDdiM2EzYzdj
YTgwMy4uMDAzYmIyMmIzMjE1IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9Eb2NrZXJmaWxlLmRlYmlh
bi1hcm02NA0KPiA+ID4gPiArKysgYi9Eb2NrZXJmaWxlLmRlYmlhbi1hcm02NA0KPiA+ID4gPiBA
QCAtNSw2ICs1LDcgQEAgUlVOIGFwdC1nZXQgaW5zdGFsbCAteSBcDQo+ID4gPiA+ICAJCQlmbGV4
IFwNCj4gPiA+ID4gIAkJCWJpc29uIFwNCj4gPiA+ID4gIAkJCXBrZy1jb25maWcgXA0KPiA+ID4g
PiArCQkJbGliYXRvbWljMSBcDQo+ID4gPiA+ICAJCQl4MTFwcm90by1kcmkyLWRldiBcDQo+ID4g
PiA+ICAJCQlweXRob24tZG9jdXRpbHMgXA0KPiA+ID4gPiAgCQkJdmFsZ3JpbmQgXA0KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYgYi9Eb2NrZXJmaWxlLmRlYmlh
bi1hcm1oZg0KPiA+ID4gPiBpbmRleCBjNjdhMWUyYWNmNmEuLjMxMzk5MjdjMTkzYSAxMDA2NDQN
Cj4gPiA+ID4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYNCj4gPiA+ID4gKysrIGIvRG9j
a2VyZmlsZS5kZWJpYW4tYXJtaGYNCj4gPiA+ID4gQEAgLTUsNiArNSw3IEBAIFJVTiBhcHQtZ2V0
IGluc3RhbGwgLXkgXA0KPiA+ID4gPiAgCQkJZmxleCBcDQo+ID4gPiA+ICAJCQliaXNvbiBcDQo+
ID4gPiA+ICAJCQlwa2ctY29uZmlnIFwNCj4gPiA+ID4gKwkJCWxpYmF0b21pYzEgXA0KPiA+ID4g
DQo+ID4gPiBsaWJhdG9taWMxIGlzIHRoZSBydW50aW1lIGxpYiwgZm9yIGxpbmtpbmcgeW91IG5l
ZWQgdGhlIHBhY2thZ2UgdGhhdA0KPiA+ID4gY29udGFpbnMgbGliYXRvbWljLnNvLiBUaGF0IGlz
ICpxdWljayBzZWFyY2gqDQo+ID4gPiBsaWJnY2MtJHZlcnNpb24tZGV2LiBUaGVyZSBkb2Vzbid0
IHNlZW0gdG8gYmUgYSBnZW5lcmljIG1ldGFwYWNrYWdlDQo+ID4gPiBmb3IgInRoZSBsYXRlc3Qg
bGliZ2NjLWRldiIsIG90aGVyIHRoYW4uLi4gJ2djYycuDQo+ID4gPiANCj4gPiA+IFNpbmNlIERl
YmlhbiBpcyBhY3RpbmcgYSBiaXQgc3Blc2h1bCBoZXJlIEknZCBqdXN0IGRyb3AgdGhlIGV4cGxp
Y2l0DQo+ID4gPiBsaWJhdG9taWMgaW5zdGFsbGF0aW9uLg0KPiA+IA0KPiA+IEhtbSwgSSBzZWUg
dGhlIC5zbyBpbiBsaWJhdG9taWMx4oCmDQo+ID4gDQo+ID4gaHR0cHM6Ly9wYWNrYWdlcy5kZWJp
YW4ub3JnL2plc3NpZS9hbWQ2NC9saWJhdG9taWMxL2ZpbGVsaXN0DQo+IA0KPiBXaGVyZT8gSSBv
bmx5IHNlZSB0aGUgLnNvLjEgYW5kIC5zby4xLjEuMA0KDQpCbGVoLCBpbmRlZWQNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
