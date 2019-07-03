Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C37D5EFCC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 01:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A4B6E21E;
	Wed,  3 Jul 2019 23:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135526E21E
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 23:56:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 16:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,449,1557212400"; d="scan'208";a="172292307"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2019 16:56:18 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 16:56:18 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.146]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 16:56:17 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v4 0/5] EHL port programming
Thread-Index: AQHVMfhjiF721y6EpEujOUaCMBrBTaa6BzUA
Date: Wed, 3 Jul 2019 23:56:17 +0000
Message-ID: <73b6155c28cba82de58f5781104ee305a0d38784.camel@intel.com>
References: <20190703233736.5816-1-matthew.d.roper@intel.com>
In-Reply-To: <20190703233736.5816-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <8545DFF3B3EB084D9AE50B9AF8328FC8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 0/5] EHL port programming
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

T24gV2VkLCAyMDE5LTA3LTAzIGF0IDE2OjM3IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBQ
cmV2aW91cyBzZXJpZXMgcmV2aXNpb25zIHdlcmUgaGVyZToNCj4gICB2MzogDQo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2ludGVsLWdmeC8yMDE5LUp1bmUvMjAzMjg3
Lmh0bWwNCj4gICB2MS8yOiANCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2
ZXMvaW50ZWwtZ2Z4LzIwMTktSnVuZS8yMDI3NzYuaHRtbA0KPiANCj4gT25seSB0d28gcGF0Y2hl
cyBmcm9tIHRoZSBwcmV2aW91cyBzZXJpZXMgaGF2ZSB5ZXQgdG8gbGFuZDsgdGhpcw0KPiByZXZp
c2lvbiBzcGxpdHMgdXAgdGhlIGZpcnN0IG9mIHRob3NlIGludG8gZm91ciBzZXBhcmF0ZSBwYXRj
aGVzIHRvDQo+IGVhc2UNCj4gdGhlIHJldmlldyBwcm9jZXNzIGEgYml0Lg0KPiANCj4gVGhpcyBy
ZXZpc2lvbiBhbHNvIHVwZGF0ZXMgYSBoYW5kZnVsIG9mIGNvbWJvIFBIWSByZWdpc3RlcnMgdG8g
dXNlDQo+IHRoZQ0KPiBuZXcgbmFtZXNwYWNlIHRoYXQgd2VyZSBtaXNzZWQgaW4gdGhlIHByZXZp
b3VzIGl0ZXJhdGlvbiBhbmQgY2F1Z2h0DQo+IGJ5DQo+IEpvc2UuDQo+IA0KPiBBcyBiZWZvcmUs
IHRoaXMgc2VyaWVzIGRvZXNuJ3QgZXZlbiB0cnkgdG8gdG91Y2ggdGhlIFRDIGNvZGUgKGFzaWRl
DQo+IGZyb20NCj4gdGhlIHR5cGUgY2hlY2sgZnVuY3Rpb24pLiAgRUhMIGhhcyBubyBjb21ibyBQ
SFlzLCBzbyBpdCdzIHByb2JhYmx5DQoNCkVITCBoYXMgbm8gVEMgY29tYm8gcGh5cw0KDQo+IGJl
dHRlciB0byB3YWl0IHVudGlsIFRHTCBzdXBwb3J0IGxhbmRzIGluIHRoZSB0cmVlIGJlZm9yZSB0
YWNrbGluZw0KPiB0aGF0DQo+IHRvIGF2b2lkIGNhdXNpbmcgdW5uZWNlc3NhcnkgY29uZmxpY3Rz
LiAgRXZlbiBwYXRjaCAjNCBvZiB0aGlzIHNlcmllcw0KPiBtYXkgd2FudCB0byB3YWl0IHVudGls
IFRHTCBsYW5kcyBiZWZvcmUgYmVpbmcgbWVyZ2VkLg0KPiANCg0KQ2M6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KU2hvdWxkIGl0IHdhaXQ/IFRob3VnaHRzPw0K
DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
DQo+IE1hdHQgUm9wZXIgKDUpOg0KPiAgIGRybS9pOTE1L2dlbjExOiBTdGFydCBkaXN0aW5ndWlz
aGluZyAncGh5JyBmcm9tICdwb3J0Jw0KPiAgIGRybS9pOTE1L2dlbjExOiBQcm9ncmFtIERQQ0xL
QV9DRkdDUjBfSUNMIGFjY29yZGluZyB0byBQSFkNCj4gICBkcm0vaTkxNS9nZW4xMTogQ29udmVy
dCBjb21ibyBQSFkgbG9naWMgdG8gdXNlIG5ldyAnZW51bSBwaHknDQo+ICAgICBuYW1lc3BhY2UN
Cj4gICBkcm0vaTkxNTogVHJhbnNpdGlvbiBwb3J0IHR5cGUgY2hlY2tzIHRvIHBoeSBjaGVja3MN
Cj4gICBkcm0vaTkxNS9laGw6IEVuYWJsZSBEREktRA0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgICAgICB8IDEzNiArKysrKysrKy0tLS0tLQ0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8ICAgNCAr
LQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jICAgIHwgMTQz
ICsrKysrKysrKy0tLS0tLS0NCj4gLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb21ib19waHkuaCAgICB8ICAgMyArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICAgIHwgMTMwICsrKysrKysrKy0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAzOSArKystLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgIDIwICsrKw0KPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDIwICstLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDE1ICstDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAgMTEgKy0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmggICAgICB8ICAxMiAr
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDg2
ICsrKysrKy0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAgICAgICAg
ICAgICAgfCAgIDQgKy0NCj4gIDEzIGZpbGVzIGNoYW5nZWQsIDM0OCBpbnNlcnRpb25zKCspLCAy
NzUgZGVsZXRpb25zKC0pDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
