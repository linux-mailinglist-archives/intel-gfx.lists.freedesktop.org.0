Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C86EB172C7B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 00:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D6E6ED92;
	Thu, 27 Feb 2020 23:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68BC6ED92
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 23:46:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 15:46:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="232046653"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 27 Feb 2020 15:46:29 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Feb 2020 15:46:29 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.233]) with mapi id 14.03.0439.000;
 Thu, 27 Feb 2020 15:46:29 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/huc: update TGL HuC to v7.0.12
Thread-Index: AQHV7b950ub3uYdP0k2D24yN+o5IqKgwOxyA
Date: Thu, 27 Feb 2020 23:46:28 +0000
Message-ID: <03f2f4885b082f25c5ed8d6ced046c63c2a4bb07.camel@intel.com>
References: <20200227224413.19460-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200227224413.19460-1-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <EEFEC8122CF053409FA87E6B653BA256@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: update TGL HuC to v7.0.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTAyLTI3IGF0IDE0OjQ0IC0wODAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IHdyb3RlOg0KPiBVcGRhdGUgdG8gdGhlIGxhdGVzdCBhdmFpbGFibGUgVEdMIEh1Qywgd2hpY2gg
aW5jbHVkZXMgY2hhbmdlcw0KPiByZXF1aXJlZA0KPiBieSB0aGUgbWVkaWEgdGVhbS4NCj4gDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiBSZXF1ZXN0ZWQtYnk6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDwNCj4gZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4NCj4gQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPg0KPiBDYzog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+DQo+IENjOiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jDQo+IGluZGV4IDU0MzRjMDdhZWZhMS4uMThjNzU1
MjAzNjg4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMN
Cj4gQEAgLTQzLDcgKzQzLDcgQEAgdm9pZCBpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVj
dCBpbnRlbF91Y19mdw0KPiAqdWNfZncsDQo+ICAgKiBmZWF0dXJlcy4NCj4gICAqLw0KPiAgI2Rl
ZmluZSBJTlRFTF9VQ19GSVJNV0FSRV9ERUZTKGZ3X2RlZiwgZ3VjX2RlZiwgaHVjX2RlZikgXA0K
PiAtCWZ3X2RlZihUSUdFUkxBS0UsICAgMCwgZ3VjX2RlZih0Z2wsIDM1LCAyLCAwKSwgaHVjX2Rl
Zih0Z2wsICA3LA0KPiAwLCAzKSkgXA0KPiArCWZ3X2RlZihUSUdFUkxBS0UsICAgMCwgZ3VjX2Rl
Zih0Z2wsIDM1LCAyLCAwKSwgaHVjX2RlZih0Z2wsICA3LA0KPiAwLCAxMikpIFwNCj4gIAlmd19k
ZWYoRUxLSEFSVExBS0UsIDAsIGd1Y19kZWYoZWhsLCAzMywgMCwgNCksIGh1Y19kZWYoZWhsLCAg
OSwNCj4gMCwgMCkpIFwNCj4gIAlmd19kZWYoSUNFTEFLRSwgICAgIDAsIGd1Y19kZWYoaWNsLCAz
MywgMCwgMCksIGh1Y19kZWYoaWNsLCAgOSwNCj4gMCwgMCkpIFwNCj4gIAlmd19kZWYoQ09GRkVF
TEFLRSwgIDUsIGd1Y19kZWYoY21sLCAzMywgMCwgMCksIGh1Y19kZWYoY21sLCAgNCwNCj4gMCwg
MCkpIFwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
