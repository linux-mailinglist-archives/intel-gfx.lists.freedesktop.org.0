Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DBE4FBD3F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 15:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BBE10F088;
	Mon, 11 Apr 2022 13:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A70910F09E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 13:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649684160; x=1681220160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hfp1BFDNMnDNEm1v3mSFouiAo1iOkFXN9gPyDJfRjpQ=;
 b=EyEm3OKvhFdOsbu2AkNWFDOrpd/Yu+2XjohuMH55Md94qhxOV5CS/Xmm
 1fHs2UhezCshjQpSxaGTqmOnQytS3z9YQPZ3lUaho1i+F/VZEu8m7myw7
 9XlIDKw5Mp/VaGhM41adg35zWa/qJW5jcGHmOuYCnu8c53NPm2rNZJ/jN
 WnvEzxvZ0j2yRfDanrNlguD4NU1tmd4I3v0GsEYNgL/XaiHffnIvbQe92
 WjyFtehuNimerctNrCmNaUIgJgsRAn2gYVVzWLQsYnixoHyibURrhhfap
 FKMqhw2ZT+i03imkehbK8dtg12b+JKzf4FWea0laUhAh0c1eqW5kd8ecX A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="261860758"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="261860758"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 06:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="654622840"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 11 Apr 2022 06:35:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 06:35:59 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Mon, 11 Apr 2022 06:35:59 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 0/4] drm/i915/dg2: Add support for
 render/media decompression
Thread-Index: AQHYTaEZ71dLLNWEDEKJWGKE1AS+QKzrLDeA
Date: Mon, 11 Apr 2022 13:35:59 +0000
Message-ID: <727d5832655cfb2e528d0d5e9301e467edbebfec.camel@intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
 <YlQhVWmwUA1DvTNS@ideak-desk.fi.intel.com>
In-Reply-To: <YlQhVWmwUA1DvTNS@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-3.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D6D447231A02340A0358E50FF236B41@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915/dg2: Add support for
 render/media decompression
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA0LTExIGF0IDE1OjM4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEhp
IFJvZHJpZ28sIEphbmksDQo+IA0KPiBPbiBNb24sIEFwciAwNCwgMjAyMiBhdCAwNDozODo0MlBN
ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+ID4gVGhpcyBpcyBhIHJlYmFzZWQgdmVyc2lvbiBv
ZiBwYXRjaGVzIDE1LTE3IG9mIFsxXSwgYWRkaW5nIERHMg0KPiA+IGRpc3BsYXkNCj4gPiBlbmdp
bmUgc3VwcG9ydCBmb3IgZGVjb21wcmVzc2luZyByZW5kZXIgYW5kIG1lZGlhIGNvbXByZXNzZWQN
Cj4gPiBmcmFtZWJ1ZmZlcnMuDQo+ID4gDQo+ID4gVGhlIGRlcGVuZGVuY3kgcGF0Y2hlcyBmcm9t
IFsxXSBzaG91bGQgYmUgbWVyZ2VkIGFscmVhZHkgdG8gZHJtLQ0KPiA+IHRpcC4NCj4gPiANCj4g
PiBJdCBhZGRyZXNzZXMgdGhlIHJldmlldyBjb21tZW50cyBvbiB0aGUgbW9kaWZpZXIgbGF5b3V0
IGRlc2NyaXB0aW9uDQo+ID4gZnJvbQ0KPiA+IE5hbmxleSwgdXBkYXRlcyB0aGUgY29tbWl0IGxv
Z3MgdnMuIGZsYXQgQ0NTIGFuZCBUaWxlNCBhbmQgc3BsaXRzDQo+ID4gb3V0DQo+ID4gdGhlIGNo
YW5nZXMgYWRkaW5nIHRoZSBtb2RpZmllcnMgdG8gZHJtX2ZvdXJjYy5oIHRvIHNlcGFyYXRlDQo+
ID4gcGF0Y2hlcy4NCj4gPiANCj4gPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy85NTY4Ni8NCj4gPiANCj4gPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT4NCj4gPiBDYzogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50
ZWwuY29tPg0KPiA+IENjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBh
ZGFAaW50ZWwuY29tPg0KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPg0KPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IENj
OiBKdWhhLVBla2thIEhlaWtraWzDpCA8anVoYS1wZWtrYS5oZWlra2lsYUBpbnRlbC5jb20+DQo+
ID4gQ2M6IE5hbmxleSBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPg0KPiANCj4gSSdk
IGxpa2UgdG8gcHVzaCB0aGlzIHBhdGNoc2V0IHRvIGRybS1pbnRlbC1uZXh0LCBidXQgaXQgZGVw
ZW5kcyBvbg0KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDc1MTY3
Lz9zZXJpZXM9MTAwNDE5JnJldj0xDQo+IA0KPiB3aGljaCBpcyBvbmx5IGluIGRybS1pbnRlbC1n
dC1uZXh0LiBBY2NvcmRpbmcgdG8gSm9vbmFzLCB0aGlzIHNob3VsZA0KPiBiZQ0KPiByZXNvbHZl
ZCBieSBiYWNrbWVyZ2luZyBkcm0taW50ZWwtZ3QtbmV4dCB0byBkcm0taW50ZWwtbmV4dCwgY291
bGQNCj4geW91DQo+IGhlbHAgd2l0aCB0aGlzPw0KDQorVHZydGtvLg0KDQpKYW5pIGlzIHRha2lu
ZyBjYXJlIG9mIHRoZSBkcm0taW50ZWwtbmV4dCB0aGlzIHJvdW5kLg0KQmFzZWQgb24gb3VyIHBy
ZXZpb3VzIGV4cGVyaWVuY2VzIHdpdGggdGhpcyBraW5kIG9mIGNvbmZsaWN0cyBJIGFncmVlDQp3
aXRoIEpvb25hcy4gSSBhbHNvIGJlbGlldmUgaXQgaXMgYSBnb29kIGlkZWEgdG8gYmFja21lcmdl
IHRoZSAtZ3QtbmV4dA0Kd2hlbiBuZWVkZWQuDQoNCkJ1dCB3aGVuZXZlciB3ZSBkbyB0aGlzIHdl
ZSBuZWVkIHRvIGJlIGNhcmVmdWwgd2hlbiBzZW5kaW5nIHRoZQ0KZHJtLWludGVsLW5leHQgcHVs
bCByZXF1ZXN0LiBXZSBzaG91bGQgaWRlYWxseSBnZXQgdGhlIC1ndC1uZXh0IHB1bGwNCnJlcXVl
c3QgbWVyZ2VkIHRvIGRybS1uZXh0IGJlZm9yZSBkb2luZyB0aGUgZHJtLWludGVsLW5leHQgUFIs
IHNvIA0Kd2UgZ3VhcmFudGVlIGl0IHdhcyBhcHByb3ZlZCBhbHJlYWR5IGFuZCB3ZSBhbHNvIGRv
bid0IGR1cGxpY2F0ZSB0aGUNCmNvbW1pdHMgaW4gdGhlIFBSLg0KDQpUaGF0IHNhZCwgdGhlIFBS
cyB3aWxsIG5lZWQgdG8gYmUgaW4gc3luYyBhbmQgdGhlIHdpbmRvdyBvZiAtZ3QtbmV4dA0Kc2hv
dWxkIGNsb3NlIGEgYml0IGVhcmxpZXIgb24gYmVnaW4gb2YgLXJjNSBpbiBjYXNlIG9mIGFuIGV4
aXN0ZW50DQpiYWNrbWVyZ2UgaW4gZHJtLWludGVsLW5leHQuLi4gYW5kIGF2b2lkIC1yYzYgUFJz
Lg0KDQo+IA0KPiA+IEFuc2h1bWFuIEd1cHRhICgxKToNCj4gPiDCoCBkcm0vaTkxNS9kZzI6IEFk
ZCBzdXBwb3J0IGZvciBERzIgY2xlYXIgY29sb3IgY29tcHJlc3Npb24NCj4gPiANCj4gPiBNYXR0
IFJvcGVyICgyKToNCj4gPiDCoCBkcm0vZm91cmNjOiBJbnRyb2R1Y2UgZm9ybWF0IG1vZGlmaWVy
cyBmb3IgREcyIHJlbmRlciBhbmQgbWVkaWENCj4gPiDCoMKgwqAgY29tcHJlc3Npb24NCj4gPiDC
oCBkcm0vaTkxNS9kZzI6IEFkZCBzdXBwb3J0IGZvciBERzIgcmVuZGVyIGFuZCBtZWRpYSBjb21w
cmVzc2lvbg0KPiA+IA0KPiA+IE1pa2EgS2Fob2xhICgxKToNCj4gPiDCoCBkcm0vZm91cmNjOiBJ
bnRyb2R1Y2UgZm9ybWF0IG1vZGlmaWVyIGZvciBERzIgY2xlYXIgY29sb3INCj4gPiANCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqAgfMKgIDQgKy0N
Cj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuY8KgwqDCoMKgwqDC
oCB8IDUzDQo+ID4gKysrKysrKysrKysrKysrLS0tLQ0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jwqDCoMKgIHwgNDkgKysrKysrKysrKysrKy0tDQo+ID4g
LS0NCj4gPiDCoGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5owqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfCAzNiArKysrKysrKysrKysrDQo+ID4gwqA0IGZpbGVzIGNoYW5nZWQs
IDEyMiBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiAtLSANCj4gPiAy
LjMwLjINCj4gPiANCg0K
