Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 502204DA28A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8902610E3E6;
	Tue, 15 Mar 2022 18:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90BC210E3E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647369636; x=1678905636;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=wqSw86gCYzsQ9bWOkv8W05ABsWB7WDes9UN4wt4vWPA=;
 b=WSJQMd+XriYjw0XlV9TPd194FfvyCyF8TiVAzf6JS3oFcKDISC9evCwB
 pfevrmGuKG9DTyFQGzT8cxNJzASheLcXiHBhne+t7dbgdD69KqCIhE7yP
 ixuKzXmOPgoaxozo7xzVaFt7RNiNB/MeadWNa0fUSyOm3Vl8JbhyehY2F
 NJfJwL7eo6gQIHJg/oUBrZXt0u5gjnxqlkUHPt70XY8hToJ1IylDoA5D4
 lKhQ5lrvpATi1Bs0s4CQqOP9e2DDgPdPzFFdHLPSF7jVxqynzJzly/dbh
 I2DgB/5uZm3g2979QuAYMRngiBMviUnir+nweODZ9ZaiF3GRfONDcqdEN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342826577"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="342826577"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:40:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="820024853"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2022 11:40:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:40:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:40:35 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 15 Mar 2022 11:40:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/9] drm/i915: Put the downclock_mode check
 back into can_enable_drrs()
Thread-Index: AQHYOHCJ1t9DXNOToEOs/8AMjPwTpKzBPRaA
Date: Tue, 15 Mar 2022 18:40:35 +0000
Message-ID: <2f84f06e8c52b57e7c0da3d3608d02ca8a55ad67.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315132752.11849-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <13F72CEE244BA14AB0B45FD8D8DB3003@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Put the downclock_mode check
 back into can_enable_drrs()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTAzLTE1IGF0IDE1OjI3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2l0aCBzdGF0aWMgRFJSUyB0aGUgdXNlciBtaWdodCBhc2sgZm9yIHRoZSBsb3dlc3Qg
cG9zc2libGUgcmVmcmVzaA0KPiByYXRlIG9mIHRoZSBwYW5lbCwgaW4gd2hpY2ggY2FzZSB3ZSdy
ZSBub3QgZ29pbmcgdG8gZmluZCBhIHN1aXRhYmxlDQo+IGRvd25jbG9jayBtb2RlIGZvciBpdCBh
bmQgd2Ugc2hvdWxkIG5vdCB0cnkgdG8gZW5hYmxlIHNlYW1sZXNzIERSUlMuDQo+IFRoaXMgd2ls
bCBpbiBmYWN0IG9vcHMuDQo+IA0KPiBXZSB1c2VkIHRvIGNoZWNrIGZvciB0aGUgcHJlc2VuY2Ug
b2YgdGhlIGRvd25jbG9jayBtb2RlIGhlcmUsIGJ1dA0KPiB0aGF0IGdvdCByZW1vdmVkIGluIGNv
bW1pdCBmMGE1Nzc5OGZiNWMgKCJkcm0vaTkxNTogSW50cm9kdWNlDQo+IGludGVsX3BhbmVsX2Ry
cnNfdHlwZSgpIikgYXMgcmVkdW5kYW50ICh3aGljaCBpdCB3YXMgYXQgdGhlIHRpbWUpLg0KPiBC
dXQgd2UgZG8gbmVlZCB0aGUgY2hlY2sgYWdhaW4gbm93IHRoYXQgc3RhdGljIERSUlMgaXMgYSB0
aGluZy4NCj4gDQo+IEkgbXVzdCBoYXZlIG5vdCByZS10ZXN0ZWQgc3RhdGljIERSUlMgZnVsbHkg
YWZ0ZXIgaW50cm9kdWNpbmcNCj4gaW50ZWxfcGFuZWxfZHJyc190eXBlKCkgOi8NCg0KDQpSZXZp
ZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoN
Cj4gDQo+IEZpeGVzOiBjNWVlMjM0MzdjYWUgKCJkcm0vaTkxNTogSW1wbGVtZW50IHN0YXRpYyBE
UlJTIikNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RycnMuYyB8IDggKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RycnMuYw0KPiBpbmRleCAyYmJjMDM4ODI2M2EuLmUxYjQxYjc3MjUyMSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMNCj4gQEAgLTYyLDcgKzYy
LDggQEAgY29uc3QgY2hhciAqaW50ZWxfZHJyc190eXBlX3N0cihlbnVtIGRycnNfdHlwZSBkcnJz
X3R5cGUpDQo+ICB9DQo+ICANCj4gIHN0YXRpYyBib29sIGNhbl9lbmFibGVfZHJycyhzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+IC0JCQkgICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQ0KPiArCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4gKwkJCSAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqZG93bmNsb2NrX21vZGUpDQo+ICB7DQo+ICAJaWYgKHBpcGVfY29uZmlnLT52cnIu
ZW5hYmxlKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC03Niw3ICs3Nyw4IEBAIHN0YXRpYyBi
b29sIGNhbl9lbmFibGVfZHJycyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+
ICAJaWYgKHBpcGVfY29uZmlnLT5oYXNfcHNyKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICANCj4g
LQlyZXR1cm4gaW50ZWxfcGFuZWxfZHJyc190eXBlKGNvbm5lY3RvcikgPT0gRFJSU19UWVBFX1NF
QU1MRVNTOw0KPiArCXJldHVybiBkb3duY2xvY2tfbW9kZSAmJg0KPiArCQlpbnRlbF9wYW5lbF9k
cnJzX3R5cGUoY29ubmVjdG9yKSA9PSBEUlJTX1RZUEVfU0VBTUxFU1M7DQo+ICB9DQo+ICANCj4g
IHZvaWQNCj4gQEAgLTg5LDcgKzkxLDcgQEAgaW50ZWxfZHJyc19jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCWludGVsX3BhbmVsX2Rvd25jbG9j
a19tb2RlKGNvbm5lY3RvciwgJnBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlKTsNCj4gIAlp
bnQgcGl4ZWxfY2xvY2s7DQo+ICANCj4gLQlpZiAoIWNhbl9lbmFibGVfZHJycyhjb25uZWN0b3Is
IHBpcGVfY29uZmlnKSkgew0KPiArCWlmICghY2FuX2VuYWJsZV9kcnJzKGNvbm5lY3RvciwgcGlw
ZV9jb25maWcsIGRvd25jbG9ja19tb2RlKSkgew0KPiAgCQlpZiAoaW50ZWxfY3B1X3RyYW5zY29k
ZXJfaGFzX20yX24yKGk5MTUsIHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcikpDQo+ICAJCQlp
bnRlbF96ZXJvX21fbigmcGlwZV9jb25maWctPmRwX20yX24yKTsNCj4gIAkJcmV0dXJuOw0KDQo=
