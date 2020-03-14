Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D301854BE
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 06:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49F66E0F0;
	Sat, 14 Mar 2020 05:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944D56E0F0
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 05:18:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 22:18:20 -0700
IronPort-SDR: MS+F/HBdDhX7l0jDTv6pP2njVMYjY+HjN+Hba7yultMDLplAk0SAgnrTpInHxQ3eYPeTaEMqzT
 tb2yDdNzn2ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,551,1574150400"; d="scan'208";a="237454073"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 22:18:20 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Mar 2020 22:18:20 -0700
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Mar 2020 22:18:19 -0700
Received: from bgsmsx110.gar.corp.intel.com ([169.254.11.98]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.231]) with mapi id 14.03.0439.000;
 Sat, 14 Mar 2020 10:48:16 +0530
From: "S, Srinivasan" <srinivasan.s@intel.com>
To: "Navik, Ankit P" <ankit.p.navik@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3IgRHluYW1pYyBFVSBjb25m?=
 =?utf-8?Q?iguration_of_Slice/Sub-slice/EU_(rev6)?=
Thread-Index: AQHV+bmzXVQlEIBP6ECnE1keP1Dk/6hHjGlA
Date: Sat, 14 Mar 2020 05:18:15 +0000
Message-ID: <BFA53C78450B204BBCED0B0A62E9EAE7326618E5@BGSMSX110.gar.corp.intel.com>
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
 <158410822413.30352.216264034713118824@emeril.freedesktop.org>
 <2F886D5F95ED3A47BC8C177EADCD1CC7284C7DA9@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <2F886D5F95ED3A47BC8C177EADCD1CC7284C7DA9@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Dynamic_EU_configuration_of_Slice/Sub-slice/EU_=28rev6=29?=
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
Cc: "Chelladurai, Paul S" <paul.s.chelladurai@intel.com>, "Kumar,
 Purushotam" <purushotam.kumar@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF5IEkga25vdyBhbnkgc3BlY2lmaWMgdGltZWxpbmVzPw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IE5hdmlrLCBBbmtpdCBQIDxhbmtpdC5wLm5hdmlrQGludGVsLmNv
bT4NCj4gU2VudDogU2F0dXJkYXksIE1hcmNoIDE0LCAyMDIwIDEwOjAzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTLCBTcmluaXZhc2FuIDxzcmluaXZh
c2FuLnNAaW50ZWwuY29tPjsgVXJzdWxpbiwgVHZydGtvDQo+IDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+OyBLdW1hciwgUHVydXNob3RhbQ0KPiA8cHVydXNob3RhbS5rdW1hckBpbnRlbC5jb20+
OyBDaGVsbGFkdXJhaSwgUGF1bCBTDQo+IDxwYXVsLnMuY2hlbGxhZHVyYWlAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSRTog4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3IgRHluYW1pYyBFVSBj
b25maWd1cmF0aW9uIG9mIFNsaWNlL1N1Yi0NCj4gc2xpY2UvRVUgKHJldjYpDQo+IA0KPiBIaSBT
cmluaXZhcywNCj4gDQo+IFRoaXMgd2lsbCBicmVhayBPQSBjb3VudGVyLg0KPiBJIGFtIGFscmVh
ZHkgd29ya2luZyB3aXRoIFR2cnRrbyB0byBtYWtlIHBhdGNoIHNjYWxhYmxlDQo+IGFuZCB0byBt
YWtlIGl0IGFzIHBlciB0aGUgZmxvdy4NCj4gS2luZGx5IHdhaXQgZm9yIHVwY29taW5nIHBhdGNo
Lg0KPiANCj4gUFM6IENvZGluZyBndWlkZWxpbmU6DQo+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcv
ZG9jL2h0bWwvdjQuMTcvcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbA0KPiANCj4gUmVn
YXJkcywNCj4gQW5raXQNCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBG
cm9tOiBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPg0KPiA+IFNl
bnQ6IEZyaWRheSwgTWFyY2ggMTMsIDIwMjAgNzozNCBQTQ0KPiA+IFRvOiBOYXZpaywgQW5raXQg
UCA8YW5raXQucC5uYXZpa0BpbnRlbC5jb20+DQo+ID4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiDinJcgRmkuQ0kuU1BBUlNFOiB3YXJuaW5nIGZvciBE
eW5hbWljIEVVIGNvbmZpZ3VyYXRpb24gb2YgU2xpY2UvU3ViLQ0KPiA+IHNsaWNlL0VVIChyZXY2
KQ0KPiA+DQo+ID4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gPg0KPiA+IFNlcmllczogRHluYW1p
YyBFVSBjb25maWd1cmF0aW9uIG9mIFNsaWNlL1N1Yi1zbGljZS9FVSAocmV2NikNCj4gPiBVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjk5ODAvDQo+ID4g
U3RhdGUgOiB3YXJuaW5nDQo+ID4NCj4gPiA9PSBTdW1tYXJ5ID09DQo+ID4NCj4gPiAkIGRpbSBz
cGFyc2Ugb3JpZ2luL2RybS10aXANCj4gPiBTcGFyc2UgdmVyc2lvbjogdjAuNi4wDQo+ID4gQ29t
bWl0OiBkcm0vaTkxNTogR2V0IGFjdGl2ZSBwZW5kaW5nIHJlcXVlc3QgZm9yIGdpdmVuIGNvbnRl
eHQNCj4gPiArZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MjE2Mjo2MTogICAg
ZXhwZWN0ZWQgc3RydWN0IGF0b21pY190DQo+IGNvbnN0DQo+ID4gW3VzZXJ0eXBlXSAqdg0KPiA+
ICtkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoyMTYyOjYxOiAgICBnb3Qgc3Ry
dWN0IGF0b21pY190IFtub2RlcmVmXQ0KPiA+IDxhc246ND4gKg0KPiA+ICtkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYzoyMTYyOjYxOiB3YXJuaW5nOiBpbmNvcnJlY3QgdHlwZSBp
bg0KPiA+IGFyZ3VtZW50IDEgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlcykNCj4gPiArZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MjE2Mzo2NDogICAgZXhwZWN0ZWQgc3RydWN0
IGF0b21pY190DQo+ID4gW3VzZXJ0eXBlXSAqdg0KPiA+ICtkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYzoyMTYzOjY0OiAgICBnb3Qgc3RydWN0IGF0b21pY190IFtub2RlcmVmXQ0K
PiA+IDxhc246ND4gKg0KPiA+ICtkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoy
MTYzOjY0OiB3YXJuaW5nOiBpbmNvcnJlY3QgdHlwZSBpbg0KPiA+ICthcmd1bWVudCAxIChkaWZm
ZXJlbnQgYWRkcmVzcyBzcGFjZXMpDQo+ID4NCj4gPiBDb21taXQ6IGRybS9pOTE1OiBzZXQgb3B0
aW11bSBldS9zbGljZS9zdWItc2xpY2UgY29uZmlndXJhdGlvbiBiYXNlZCBvbiBsb2FkDQo+ID4g
dHlwZQ0KPiA+ICtkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzozMDQ3OjU5OiAg
ICBleHBlY3RlZCBzdHJ1Y3QNCj4gPiBpOTE1X2dlbV9jb250ZXh0ICpjdHgNCj4gPiArZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MzA0Nzo1OTogICAgZ290IHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0DQo+ID4gW25vZGVyZWZdIDxhc246ND4gKmNvbnN0IGdlbV9jb250ZXh0DQo+
ID4gK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjMwNDc6NTk6IHdhcm5pbmc6
IGluY29ycmVjdCB0eXBlIGluDQo+ID4gK2FyZ3VtZW50IDEgKGRpZmZlcmVudCBhZGRyZXNzIHNw
YWNlcykNCj4gPiArZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MzA3NzoxNTog
d2FybmluZzogZGVyZWZlcmVuY2Ugb2YNCj4gPiArbm9kZXJlZiBleHByZXNzaW9uDQo+ID4gK2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjMwNzc6NDU6IHdhcm5pbmc6IGRlcmVm
ZXJlbmNlIG9mDQo+ID4gK25vZGVyZWYgZXhwcmVzc2lvbg0KPiA+ICtkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYzozMDc4OjE5OiB3YXJuaW5nOiBkZXJlZmVyZW5jZSBvZg0KPiA+
ICtub2RlcmVmIGV4cHJlc3Npb24NCj4gPiArZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmM6MzA3ODo0ODogd2FybmluZzogZGVyZWZlcmVuY2Ugb2YNCj4gPiArbm9kZXJlZiBleHBy
ZXNzaW9uDQo+ID4NCj4gPiBDb21taXQ6IGRybS9pOTE1OiBQcmVkaWN0aXZlIGdvdmVybm9yIHRv
IGNvbnRyb2wgc2xpY2Uvc3Vic2xpY2UvZXUgT2theSENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
