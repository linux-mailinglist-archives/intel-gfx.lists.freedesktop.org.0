Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FCAA30F6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 09:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151356E280;
	Fri, 30 Aug 2019 07:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33086E233;
 Fri, 30 Aug 2019 07:27:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 00:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="210829346"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2019 00:27:46 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 08:27:46 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.21]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.248]) with mapi id 14.03.0439.000;
 Fri, 30 Aug 2019 08:27:46 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [igt-dev] [PATCH i-g-t] tests/kms_rotation_crc: Skip on
 platforms without atomic modesetting
Thread-Index: AQHVXolzIfxra+0Q+UmzfDA1Ssjot6cTO0aA
Date: Fri, 30 Aug 2019 07:27:45 +0000
Message-ID: <af4dba4e9b212257fd95c5cc4cbfe3358db095cb.camel@intel.com>
References: <20190829164707.30012-1-matthew.d.roper@intel.com>
In-Reply-To: <20190829164707.30012-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.188]
Content-ID: <A85396639AD49B4C94E8A2592971CE67@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/kms_rotation_crc:
 Skip on platforms without atomic modesetting
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

T24gVGh1LCAyMDE5LTA4LTI5IGF0IDA5OjQ3IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGlzIHRlc3QgcGVyZm9ybXMgZGlzcGxheSB1cGRhdGVzIHZpYSBDT01NSVRfQVRPTUlDLCBidXQg
ZmFpbHMgdG8gY2hlY2sNCj4gdGhhdCB0aGUgcGxhdGZvcm0gYmVpbmcgdGVzdGVkIGFjdHVhbGx5
IHN1cHBvcnRzIGF0b21pYy4gIFRoaXMgY2F1c2VzDQo+IGZhaWx1cmVzIG9uIHNvbWUgb2Ygb3Vy
IG9sZGVyIHByZS1nZW41IHBsYXRmb3Jtcy4NCj4gDQo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYwMTINCj4gU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFNp
bW9uIFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIHRlc3RzL2ttc19yb3Rh
dGlvbl9jcmMuYyB8IDEgKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvdGVzdHMva21zX3JvdGF0aW9uX2NyYy5jIGIvdGVzdHMva21zX3JvdGF0
aW9uX2NyYy5jDQo+IGluZGV4IGZlNDA0ODEwLi42NjhjMTczMiAxMDA2NDQNCj4gLS0tIGEvdGVz
dHMva21zX3JvdGF0aW9uX2NyYy5jDQo+ICsrKyBiL3Rlc3RzL2ttc19yb3RhdGlvbl9jcmMuYw0K
PiBAQCAtNzgwLDYgKzc4MCw3IEBAIGlndF9tYWluDQo+ICAJCWlndF9yZXF1aXJlX3BpcGVfY3Jj
KGRhdGEuZ2Z4X2ZkKTsNCj4gIA0KPiAgCQlpZ3RfZGlzcGxheV9yZXF1aXJlKCZkYXRhLmRpc3Bs
YXksIGRhdGEuZ2Z4X2ZkKTsNCj4gKwkJaWd0X3JlcXVpcmUoZGF0YS5kaXNwbGF5LmlzX2F0b21p
Yyk7DQo+ICAJfQ0KPiAgDQo+ICAJZm9yIChzdWJ0ZXN0ID0gc3VidGVzdHM7IHN1YnRlc3QtPnJv
dDsgc3VidGVzdCsrKSB7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
