Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B5310481C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 02:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B096EAAE;
	Thu, 21 Nov 2019 01:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46EA36EAA6;
 Thu, 21 Nov 2019 01:34:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 17:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="408342683"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2019 17:34:27 -0800
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 Nov 2019 17:34:27 -0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 Nov 2019 17:34:26 -0800
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.213]) by
 SHSMSX151.ccr.corp.intel.com ([169.254.3.149]) with mapi id 14.03.0439.000;
 Thu, 21 Nov 2019 09:34:25 +0800
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "igt-dev@lists.freedesktop.org"
 <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t v2] i915/pm_rps: install SIGTERM
 handler for load_helper process
Thread-Index: AQHVn2vl8CQGGEsOK0Srqkass8j5CKeTd6oAgAFc30A=
Date: Thu, 21 Nov 2019 01:34:24 +0000
Message-ID: <27240C0AC20F114CBF8149A2696CBE4A615D8A40@SHSMSX101.ccr.corp.intel.com>
References: <20191120062912.10853-1-chuansheng.liu@intel.com>
 <157425303636.13839.5788530893723789852@skylake-alporthouse-com>
In-Reply-To: <157425303636.13839.5788530893723789852@skylake-alporthouse-com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTVlNTUwM2QtMjRmMi00OThhLThlNWItY2JiZTYzOTcwMTQ4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYU1SWFJTYXNGY21kSm1FTjUzRXpDMnp0RXQ4bFhEOVp6eVV2VTl1djVBWDIxRW5CSGVcL0FnNStLcFBWbzA1blcifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/pm_rps: install SIGTERM
 handler for load_helper process
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciByZXZpZXdpbmcgdGhlIHBhdGNoLCBwbGVhc2Ugc2VlIGJlbG93IGNvbW1lbnRz
Lg0KDQo+ID4gU28gaGVyZSB3ZSBpbnN0YWxsIHRoZSBwcm9wZXIgaGFuZGxlciBmb3Igc2lnbmFs
IFNJR1RFUk0gaW4gdGhlDQo+ID4gc2ltaWxhciB3YXkuIFdpdGhvdXQgdGhpcyBwYXRjaCwgdGhl
IEdUIG1heSBrZWVwIGJ1c3kgYWZ0ZXINCj4gPiBydW5uaW5nIHRoaXMgc3VidGVzdC4gRW5hYmxp
bmcgcnBzIHNob3VsZCBiZSB0cmFja2VkIG9uIHRoZQ0KPiA+IG90aGVyIHNpZGUuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHVhbnNoZW5nIExpdSA8Y2h1YW5zaGVuZy5saXVAaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+ICB0ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMgfCAxICsNCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMv
aTkxNS9pOTE1X3BtX3Jwcy5jIGIvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jDQo+ID4gaW5kZXgg
ZWY2MjdjMGIuLjhjNzFjMWExIDEwMDY0NA0KPiA+IC0tLSBhL3Rlc3RzL2k5MTUvaTkxNV9wbV9y
cHMuYw0KPiA+ICsrKyBiL3Rlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYw0KPiA+IEBAIC0yNTIsNiAr
MjUyLDcgQEAgc3RhdGljIHZvaWQgbG9hZF9oZWxwZXJfcnVuKGVudW0gbG9hZCBsb2FkKQ0KPiA+
DQo+ID4gICAgICAgICAgICAgICAgIHNpZ25hbChTSUdVU1IxLCBsb2FkX2hlbHBlcl9zaWduYWxf
aGFuZGxlcik7DQo+ID4gICAgICAgICAgICAgICAgIHNpZ25hbChTSUdVU1IyLCBsb2FkX2hlbHBl
cl9zaWduYWxfaGFuZGxlcik7DQo+ID4gKyAgICAgICAgICAgICAgIHNpZ25hbChTSUdURVJNLCBs
b2FkX2hlbHBlcl9zaWduYWxfaGFuZGxlcik7DQo+IA0KPiBJIGRvbid0IHNlZSBhbnkgYmVoYXZp
b3VyIGNoYW5nZXMgdG8gaWd0IHRvIGNhdXNlIGl0IHRvIHNlbmQgU0lHVEVSTSBvbg0KPiBleGl0
X3N1YnRlc3QuDQoNClllcywgZXhpdF9zdWJ0ZXN0KCkgd2lsbCBub3Qgc2VuZCBTSUdURVJNIG91
dC4gQnV0IHdoZW4gbWFpbiBwcm9jZXNzIGNhbGxzDQppZ3RfZXhpdCgpIHRvIGV4aXQsIGl0IGhp
dHMgdGhlIGJlbG93IGFzc2VydGlvbiwgdGhlbiBnb2VzIHRvIGZhdGFsX3NpZ19oYW5kbGVyKCkg
d2l0aCBTSUdBQk9SVC4NCihpOTE1X3BtX3JwczoxNjgwKSBpZ3RfY29yZS1DUklUSUNBTDogRXhp
dGluZyB3aXRoIHN0YXR1cyBjb2RlIDk4DQppOTE1X3BtX3JwczogLi4vbGliL2lndF9jb3JlLmM6
MTc3NTogaWd0X2V4aXQ6IEFzc2VydGlvbiBgd2FpdHBpZCgtMSwgJnRtcCwgV05PSEFORykgPT0g
LTEgJiYgZXJybm8gPT0gRUNISUxEJyBmYWlsZWQuDQpSZWNlaXZlZCBzaWduYWwgU0lHQUJSVC4N
Cg0KSW4gZmF0YWxfc2lnX2hhbmRsZXIoKSwgdGhlIGluc3RhbGxlZCBleGl0IGhhbmRsZXIgZm9y
a19oZWxwZXJfZXhpdF9oYW5kbGVyKCkNCndpbGwgc2VuZCBvdXQgdGhlIFNJR1RFUk0gdG8gYWxs
IGNoaWxkcmVuIHByb2Nlc3MuDQoNCj4gDQo+IEJ1dCB5b3UgbWlnaHQgYXMgd2VsbCBqdXN0IHMv
U0lHVVNSMi9TSUdURVJNLyBmb3IgY2xlYXJlciBhbmQgY29tbW9uDQo+IGludGVudGlvbnMuDQpE
b24ndCBnZXQgeW91ciByZWFsIHBvaW50LCBTSUdVU1IxIGlzIGZvciBhY3RpdmVseSBzdG9wcGlu
ZyBsb2FkX2hlbHBlciwgU0lHVVNSMiBpcyBmb3INCnN3aXRjaGluZyBoaWdoIGFuZCBsb3cgbG9h
ZCwgdGhlIFNJR1RFUk0gaXMgZm9yIHBhc3NpdmVseSBleGl0aW5nLg0KDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
