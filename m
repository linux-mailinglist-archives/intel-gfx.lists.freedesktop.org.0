Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCB59FBF1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 09:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B81889C27;
	Wed, 28 Aug 2019 07:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FFCA8985A;
 Wed, 28 Aug 2019 07:35:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 00:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,440,1559545200"; d="scan'208";a="380303127"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 00:35:15 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX108.ger.corp.intel.com (163.33.3.3) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 28 Aug 2019 08:35:15 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.21]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.248]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 08:35:14 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [igt-dev] [PATCH i-g-t] benchmarks: Use labs() for abs(long)
Thread-Index: AQHVXPKD7q+uw4HqgUu1TJvavLM0eKcQG+QA
Date: Wed, 28 Aug 2019 07:35:14 +0000
Message-ID: <60bd30c0794cbed3def009f789b2289faddf23c7.camel@intel.com>
References: <20190827161417.3330-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190827161417.3330-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.188]
Content-ID: <A04F20C4BB7D22408A38DAFEDDF37168@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] benchmarks: Use labs() for
 abs(long)
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA4LTI3IGF0IDE3OjE0ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IGUuZy4gYmVuY2htYXJrcy9nZW1fd3NpbS5jOjI5MzY6NDogd2FybmluZzogYWJzb2x1dGUgdmFs
dWUgZnVuY3Rpb24g4oCYYWJz4oCZIGdpdmVuIGFuIGFyZ3VtZW50IG9mIHR5cGUg4oCYbG9uZyBp
bnTigJkgYnV0IGhhcyBwYXJhbWV0ZXIgb2YgdHlwZSDigJhpbnTigJkgd2hpY2ggbWF5IGNhdXNl
IHRydW5jYXRpb24gb2YgdmFsdWUgWy1XYWJzb2x1dGUtdmFsdWVdDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCg0KUmV2aWV3ZWQt
Ynk6IFNpbW9uIFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGJlbmNobWFy
a3MvZ2VtX3N5c2xhdGVuY3kuYyB8IDIgKy0NCj4gIGJlbmNobWFya3MvZ2VtX3dzaW0uYyAgICAg
ICB8IDIgKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3N5c2xhdGVuY3kuYyBiL2Jl
bmNobWFya3MvZ2VtX3N5c2xhdGVuY3kuYw0KPiBpbmRleCA3NjcxZGM0M2UuLmQ3Y2YwZWQ0OSAx
MDA2NDQNCj4gLS0tIGEvYmVuY2htYXJrcy9nZW1fc3lzbGF0ZW5jeS5jDQo+ICsrKyBiL2JlbmNo
bWFya3MvZ2VtX3N5c2xhdGVuY3kuYw0KPiBAQCAtMzQzLDcgKzM0Myw3IEBAIHN0YXRpYyB1bnNp
Z25lZCBsb25nIGNhbGlicmF0ZV9ub3AodW5zaWduZWQgaW50IHRhcmdldF91cywNCj4gIAkJc3og
PSBsb29wcyAqIHN6IC8gZWxhcHNlZCgmdF9zdGFydCwgJnRfZW5kKSAqIDFlMyAqIHRhcmdldF91
czsNCj4gIAkJc3ogPSBBTElHTihzeiwgc2l6ZW9mKHVpbnQzMl90KSk7DQo+ICAJfSB3aGlsZSAo
ZWxhcHNlZCgmdF8wLCAmdF9lbmQpIDwgNSB8fA0KPiAtCQkgYWJzKHN6IC0gcHJldikgPiAoc3og
KiB0b2xlcmFuY2VfcGN0IC8gMTAwKSk7DQo+ICsJCSBsYWJzKHN6IC0gcHJldikgPiAoc3ogKiB0
b2xlcmFuY2VfcGN0IC8gMTAwKSk7DQo+ICANCj4gIAljbG9zZShmZCk7DQo+ICANCj4gZGlmZiAt
LWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYw0KPiBp
bmRleCBhNzZmZGJmZTIuLmI4ZTIyYjNmNiAxMDA2NDQNCj4gLS0tIGEvYmVuY2htYXJrcy9nZW1f
d3NpbS5jDQo+ICsrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYw0KPiBAQCAtMjkzMyw3ICsyOTMz
LDcgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgY2FsaWJyYXRlX25vcCh1bnNpZ25lZCBpbnQgdG9s
ZXJhbmNlX3BjdCkNCj4gIAkJc2l6ZSA9IGxvb3BzICogc2l6ZSAvIGVsYXBzZWQoJnRfc3RhcnQs
ICZ0X2VuZCkgLyAxZTYgKiB1c2VjczsNCj4gIAkJc2l6ZSA9IEFMSUdOKHNpemUsIHNpemVvZih1
aW50MzJfdCkpOw0KPiAgCX0gd2hpbGUgKGVsYXBzZWQoJnRfMCwgJnRfZW5kKSA8IDUgfHwNCj4g
LQkJIGFicyhzaXplIC0gbGFzdF9zaXplKSA+IChzaXplICogdG9sZXJhbmNlX3BjdCAvIDEwMCkp
Ow0KPiArCQkgbGFicyhzaXplIC0gbGFzdF9zaXplKSA+IChzaXplICogdG9sZXJhbmNlX3BjdCAv
IDEwMCkpOw0KPiAgDQo+ICAJcmV0dXJuIHNpemUgLyBzaXplb2YodWludDMyX3QpOw0KPiAgfQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
