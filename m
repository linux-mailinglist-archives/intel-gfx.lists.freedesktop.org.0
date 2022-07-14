Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D8D575177
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 17:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325FC113492;
	Thu, 14 Jul 2022 15:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C3E91134A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 15:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657811502; x=1689347502;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UeY4sXJ8dYRY5L/eoTpiOYwOzTYzMvNdc8Bcnz5iaJg=;
 b=aEEfMFEJVds2Fik9pQaHjwQ6x5wYWrXKbVL4INljjvWXOJsOGon7uPuY
 unlsLaHmRcZcjOloYcrdCFYjln2/tq1T21p3Gkd9ziujfkkBTBVkqKd8a
 CxhEfb08Ii9hzrPjTYVu+JYWfg3ZmfoV+E8qWZ9Fk/rJqVgHtOqwCi4Xr
 Mg/E+u5vgT9jQqx2SOXihUVk9vaSn6lii/gHZnjOLy3U/ntP31Ly4ieB2
 jTAzNFn5/PqlMkEdTfAl+iAsIZHWAiXhQG3Q9Ve4dQZBDnVfhlKOj5sL0
 RYNFGLXHlIv07fM6VJ0JTo5WvcL3UZ1k3vuWwDejWHUXsxbAcJiWyqcyM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="265326638"
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="265326638"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 08:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="685600610"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2022 08:11:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 08:11:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 08:11:41 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 14 Jul 2022 08:11:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
Thread-Index: AQHYlRgFO3FmAOI2Yk64CAzr2N34+K19QdoAgAABtwCAAKyTAIAAgw2A
Date: Thu, 14 Jul 2022 15:11:41 +0000
Message-ID: <30ec7e090e1cdf7290cb0ae2f41c34f503d291f5.camel@intel.com>
References: <20220711111750.881552-1-jouni.hogander@intel.com>
 <cafdb8204ea02b0059e0ef4facafcdd338a3ab2b.camel@intel.com>
 <bc4803bb6647f11b9d62ab3cb9d3015fd43aabca.camel@intel.com>
 <bbeeff77860fecedde1092b9595f9f311e2d8981.camel@intel.com>
In-Reply-To: <bbeeff77860fecedde1092b9595f9f311e2d8981.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6EBCA6625FAF194EB0ADB7C486D0E38B@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
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

T24gVGh1LCAyMDIyLTA3LTE0IGF0IDA3OjIyICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyMi0wNy0xMyBhdCAyMTowNCArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gV2VkLCAyMDIyLTA3LTEzIGF0IDIwOjU4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+IE9uIE1vbiwgMjAyMi0wNy0xMSBhdCAxNDoxNyArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOg0KPiA+ID4gPiBDdXJyZW50bHkgUFNSIGlzIGxlZnQgZW5hYmxlZCB3aGVuIGFs
bCBwbGFuZXMgYXJlIGRpc2FibGVkIGlmDQo+ID4gPiA+IHRoZXJlDQo+ID4gPiA+IGlzIG5vIGF0
dGFjaGVkIGVuY29kZXIgaW4gbmV3IHN0YXRlLiBUaGlzIHNlZW1zIHRvIGJlIGNhdXNpbmcNCj4g
PiA+ID4gRklGTw0KPiA+ID4gPiB1bmRlcnJ1bnMuDQo+ID4gPiANCj4gPiA+IFdoYXQgaXMgdGhl
IGNhc2Ugd2VyZSB0aGVyZSBpcyBubyBhdHRhY2hlZCBlbmNvZGVyIGFuZA0KPiA+ID4gYWN0aXZl
X3BsYW5lcyA+IDA/DQo+ID4gDQo+ID4gQ2FuIHlvdSBwb2ludCB0byBzb21lIHRlc3Q/DQo+IA0K
PiBZb3UganVzdCBuZWVkIHRvIHJ1biBrbXNfYnVzeUBiYXNpYyBhbmQgdGhpcyB0cmlnZ2VycyB3
aGVuIGR5bmFtaWMNCj4gc3VidGVzdCBtb2Rlc2V0IGlzIHJ1bi4NCg0KVGhhbmtzLCB3ZXJlIGFi
bGUgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZS4NCg0KPiANCj4gPiBJIGJlbGlldmUgdGhhdCBhIHBp
cGUgdG8gYmUgZW5hYmxlZCBuZWVkcyB0byBoYXZlIGEgZW5jb25kZXIvcG9ydA0KPiA+IGF0dGFj
aGVkLCBvdGhlcndpc2UgaXQgd2lsbCBiZSBkaXNhYmxlZC4NCj4gDQo+IFRvIG15IHVuZGVyc3Rh
bmRpbmcgcGlwZSBhY3R1YWxseSBnZXRzIGV2ZW50dWFsbHkgZGlzYWJsZWQgaW4gdGhpcw0KPiB0
ZXN0Y2FzZSBhcyB3ZWxsLiBCZWZvcmUgcGlwZSBpcyBkaXNhYmxlZCB3ZSBoYXZlIHN0YXRlIHdo
ZXJlIHBsYW5lcw0KPiBhcmUgYWxsIGRpc2FibGVkLCBidXQgUFNSIGlzIGtlcHQgZW5hYmxlZC4g
VGhpcyB3YXMgdHJpZ2dlcmluZyBGSUZPDQo+IHVuZGVycnVuLg0KDQpZZXAgdGhhdCB3YXMgaGFw
cGVuaW5nIGJ1dCB0aGlzIGlzIG5vdCB0aGUgcHJvcGVyIHNvbHV0aW9uLg0KZm9yX2VhY2hfb2xk
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoKSB3aWxsIGl0ZXJhdGUgb3ZlciBhbGwgQ1JUQ3MgaW4g
dGhlIGRybV9pOTE1X3ByaXZhdGUsIG5vdCBvbmx5IHRoZSBDUlRDIHBhc3NlZCBhcyBwYXJhbWV0
ZXIuDQoNCkFzIHRoaXMgd2FzIGFscmVhZHkgbWVyZ2VkIEkgaGF2ZSBzZW50IHRoZSBmaXg6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTA2MzU3Lw0KDQo+IA0KPiA+
IA0KPiA+ID4gPiBGaXggdGhpcyBieSBjaGVja2luZyBpZiBlbmNvZGVyIGV4aXN0cyBpbiBuZXcg
Y3J0YyBzdGF0ZSBhbmQNCj4gPiA+ID4gZGlzYWJsZQ0KPiA+ID4gPiBQU1IgaWYgaXQgZG9lc24n
dC4NCj4gPiA+ID4gDQo+ID4gPiA+IHYyOiBVbmlmeSBkaXNhYmxlIGxvZ2ljIHdpdGggZXhpc3Rp
bmcNCj4gPiA+ID4gDQo+ID4gPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KPiA+ID4gPiBSZXBvcnRlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2
Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBT
dGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbQ0KPiA+ID4g
PiA+IA0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA1MyArKysrKysrKysrKysrKy0tDQo+ID4gPiA+IC0tLS0tLS0tDQo+ID4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pDQo+
ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXggZTZhODcwNjQxY2QyLi45MDU5OWRkMWNiMWIgMTAwNjQ0
DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gPiBAQCAtMTg2MywzNiArMTg2Myw0NSBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVf
dXBkYXRlKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4g
PiAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ID4gPiA+ICB7DQo+ID4gPiA+ICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gPiA+
ID4gLWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gPiA+ID4g
LWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gPiAt
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gPiA+ICtzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUsICpvbGRfY3J0Y19zdGF0ZTsNCj4gPiA+ID4gK2ludCBp
Ow0KPiA+ID4gPiANCj4gPiA+ID4gIGlmICghSEFTX1BTUihpOTE1KSkNCj4gPiA+ID4gIHJldHVy
bjsNCj4gPiA+ID4gDQo+ID4gPiA+IC1mb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9w
c3Ioc3RhdGUtPmJhc2UuZGV2LCBlbmNvZGVyLA0KPiA+ID4gPiAtICAgICBjcnRjX3N0YXRlLT51
YXBpLmVuY29kZXJfbWFzaykgew0KPiA+ID4gPiAtc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9
IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+ID4gLXN0cnVjdCBpbnRlbF9wc3IgKnBz
ciA9ICZpbnRlbF9kcC0+cHNyOw0KPiA+ID4gPiAtYm9vbCBuZWVkc190b19kaXNhYmxlID0gZmFs
c2U7DQo+ID4gPiA+ICtmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwg
Y3J0Yywgb2xkX2NydGNfc3RhdGUsDQo+ID4gPiA+ICsgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsN
Cj4gPiA+ID4gK3N0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+ID4gPiArdTMyIG9s
ZF9uZXdfZW5jb2Rlcl9tYXNrID0gb2xkX2NydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrIHwN
Cj4gPiA+ID4gK25ld19jcnRjX3N0YXRlLT51YXBpLmVuY29kZXJfbWFzazsNCj4gPiA+ID4gDQo+
ID4gPiA+IC1tdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiA+ID4gPiArZm9yX2VhY2hfaW50ZWxf
ZW5jb2Rlcl9tYXNrX3dpdGhfcHNyKHN0YXRlLT5iYXNlLmRldiwgZW5jb2RlciwNCj4gPiA+ID4g
KyAgICAgb2xkX25ld19lbmNvZGVyX21hc2spIHsNCj4gPiA+ID4gK3N0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gPiA+ICtzdHJ1Y3QgaW50
ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiA+ID4gK2Jvb2wgbmVlZHNfdG9fZGlz
YWJsZSA9IGZhbHNlOw0KPiA+ID4gPiANCj4gPiA+ID4gLS8qDQo+ID4gPiA+IC0gKiBSZWFzb25z
IHRvIGRpc2FibGU6DQo+ID4gPiA+IC0gKiAtIFBTUiBkaXNhYmxlZCBpbiBuZXcgc3RhdGUNCj4g
PiA+ID4gLSAqIC0gQWxsIHBsYW5lcyB3aWxsIGdvIGluYWN0aXZlDQo+ID4gPiA+IC0gKiAtIENo
YW5naW5nIGJldHdlZW4gUFNSIHZlcnNpb25zDQo+ID4gPiA+IC0gKi8NCj4gPiA+ID4gLW5lZWRz
X3RvX2Rpc2FibGUgfD0gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpOw0KPiA+
ID4gPiAtbmVlZHNfdG9fZGlzYWJsZSB8PSAhY3J0Y19zdGF0ZS0+aGFzX3BzcjsNCj4gPiA+ID4g
LW5lZWRzX3RvX2Rpc2FibGUgfD0gIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7DQo+ID4gPiA+
IC1uZWVkc190b19kaXNhYmxlIHw9IGNydGNfc3RhdGUtPmhhc19wc3IyICE9IHBzci0+cHNyMl9l
bmFibGVkOw0KPiA+ID4gPiArbXV0ZXhfbG9jaygmcHNyLT5sb2NrKTsNCj4gPiA+ID4gDQo+ID4g
PiA+IC1pZiAocHNyLT5lbmFibGVkICYmIG5lZWRzX3RvX2Rpc2FibGUpDQo+ID4gPiA+IC1pbnRl
bF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+ID4gPiArLyoNCj4gPiA+ID4gKyAq
IFJlYXNvbnMgdG8gZGlzYWJsZToNCj4gPiA+ID4gKyAqIC0gUFNSIGRpc2FibGVkIGluIG5ldyBz
dGF0ZQ0KPiA+ID4gPiArICogLSBBbGwgcGxhbmVzIHdpbGwgZ28gaW5hY3RpdmUNCj4gPiA+ID4g
KyAqIC0gQ2hhbmdpbmcgYmV0d2VlbiBQU1IgdmVyc2lvbnMNCj4gPiA+ID4gKyAqIC0gRW5jb2Rl
ciBpc24ndCBwcmVzZW50IGluIG5ldyBtYXNrDQo+ID4gPiA+ICsgKi8NCj4gPiA+ID4gK25lZWRz
X3RvX2Rpc2FibGUgfD0gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsN
Cj4gPiA+ID4gK25lZWRzX3RvX2Rpc2FibGUgfD0gIW5ld19jcnRjX3N0YXRlLT5oYXNfcHNyOw0K
PiA+ID4gPiArbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFu
ZXM7DQo+ID4gPiA+ICtuZWVkc190b19kaXNhYmxlIHw9IG5ld19jcnRjX3N0YXRlLT5oYXNfcHNy
MiAhPSBwc3ItDQo+ID4gPiA+ID4gcHNyMl9lbmFibGVkOw0KPiA+ID4gPiArbmVlZHNfdG9fZGlz
YWJsZSB8PSAhKG5ld19jcnRjX3N0YXRlLT51YXBpLmVuY29kZXJfbWFzayAmDQo+ID4gPiA+ICsg
ICAgICBkcm1fZW5jb2Rlcl9tYXNrKCYoZW5jb2RlciktPmJhc2UpKTsNCj4gPiA+ID4gDQo+ID4g
PiA+IC1tdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ID4gPiA+ICtpZiAocHNyLT5lbmFibGVk
ICYmIG5lZWRzX3RvX2Rpc2FibGUpDQo+ID4gPiA+ICtpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQo
aW50ZWxfZHApOw0KPiA+ID4gPiArDQo+ID4gPiA+ICttdXRleF91bmxvY2soJnBzci0+bG9jayk7
DQo+ID4gPiA+ICt9DQo+ID4gPiA+ICB9DQo+ID4gPiA+ICB9DQo+ID4gPiA+IA0KPiANCg0K
