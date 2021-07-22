Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6AE3D1DBD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 07:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169056EBFE;
	Thu, 22 Jul 2021 05:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C1D6EBFE
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 05:47:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="272687533"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="272687533"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 22:47:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="496828558"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 21 Jul 2021 22:47:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 22:47:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 22:47:22 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Wed, 21 Jul 2021 22:47:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/bios: Fix ports mask
Thread-Index: AQHXfnvoUC1TGyNDQEC3r5UdmnaCqKtO87AA
Date: Thu, 22 Jul 2021 05:47:22 +0000
Message-ID: <7b6e9861c2494127eb78f5b27dd82ff9a1886813.camel@intel.com>
References: <20210721220023.268194-1-rodrigo.vivi@intel.com>
In-Reply-To: <20210721220023.268194-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <09A4535B582E664CA1C906D375C4A19B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: Fix ports mask
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

T24gV2VkLCAyMDIxLTA3LTIxIGF0IDE4OjAwIC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IFBPUlRfQSB0byBQT1JUX0YgYXJlIHJlZ3VsYXIgaW50ZWdlcnMgZGVmaW5lZCBpbiB0aGUgZW51
bSBwb3J0LA0KPiB3aGlsZSBmb3JfZWFjaF9wb3J0X21hc2tlZCByZXF1aXJlcyBhIGJpdCBtYXNr
IGZvciB0aGUgcG9ydHMuDQo+IA0KPiBDdXJyZW50IGdpdmVuIG1hc2s6IDBiMTExDQo+IERlc2ly
ZWQgbWFzazogMGIxMTExMTENCj4gDQo+IEkgbm90aWNlZCB0aGlzIHdoaWxlIENocmlzdG9waCB3
YXMgcmVwb3J0aW5nIGEgYnVnIGZvdW5kIG9uIGhlYWRsZXNzDQo+IEdWVCBjb25maWd1cmF0aW9u
IHdoaWNoIGJpc2VjdCBibGFtZWQgY29tbWl0IDNhZTA0YzBjN2U2MyAoImRybS9pOTE1L2Jpb3M6
DQo+IGxpbWl0IGRlZmF1bHQgb3V0cHV0cyB0byBwb3J0cyBBIHRocm91Z2ggRiIpDQo+IA0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gQ2M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAaW5mcmFkZWFkLm9yZz4NCj4gRml4ZXM6
IDNhZTA0YzBjN2U2MyAoImRybS9pOTE1L2Jpb3M6IGxpbWl0IGRlZmF1bHQgb3V0cHV0cyB0byBw
b3J0cyBBIHRocm91Z2ggRiIpDQo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAzICsrLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggNWI2OTIy
ZTI4ZWYyLi44YmJlYjU5NzhiZjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0yMTY2LDcgKzIxNjYsOCBAQCBzdGF0aWMgdm9pZA0KPiAg
aW5pdF92YnRfbWlzc2luZ19kZWZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkN
Cj4gIHsNCj4gIAllbnVtIHBvcnQgcG9ydDsNCj4gLQlpbnQgcG9ydHMgPSBQT1JUX0EgfCBQT1JU
X0IgfCBQT1JUX0MgfCBQT1JUX0QgfCBQT1JUX0UgfCBQT1JUX0Y7DQo+ICsJaW50IHBvcnRzID0g
QklUKFBPUlRfQSkgfCBCSVQoUE9SVF9CKSB8IEJJVChQT1JUX0MpIHwgXA0KPiArCQkgICAgQklU
KFBPUlRfRCkgfCBCSVQoUE9SVF9FKSB8IEJJVChQT1JUX0YpOw0KPiAgDQo+ICAJaWYgKCFIQVNf
RERJKGk5MTUpICYmICFJU19DSEVSUllWSUVXKGk5MTUpKQ0KPiAgCQlyZXR1cm47DQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
