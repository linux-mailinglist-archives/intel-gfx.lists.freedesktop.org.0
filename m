Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 983D45234CA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 15:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2006010E331;
	Wed, 11 May 2022 13:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE9910E331
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 13:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652277405; x=1683813405;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=mFU2F6KYdthX09+/kve8hWOtI7iRiZZlROXxCkngm10=;
 b=DRC13pVQUH6SBe9CMbtmwYLLb8dXso4tZxp8NP7G/oF2MjAYTnS6Qucm
 jcQdKLKOVflACL6u0B0nFRcvICg5f2DyN0QbpemlsQcok8PFUF7HUfOFW
 DxeOgxq66L2ukkS27bLV/RlYJqLn1NqZ28kN/yhNGJl97BKYA+lL7MYjr
 2YZLhKfb1u40d0VXKyt29UK9oRKu9VMidYmSxU5vhSMmr/8hN+bD6TCsz
 KqrBFuE6eBUkmJ6d3QWIjR6ACxje2xXRV3eyufch2aGr5RFCqmPaZ4ci7
 BtDmI81yGcOD1H4kZxfNfVb88WGp8oS42yPWOkemZkXuIkwM5+6fH/LUQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="249599804"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="249599804"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 06:56:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="697587247"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2022 06:56:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 06:56:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 06:56:43 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Wed, 11 May 2022 06:56:43 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 16/16] drm/i915: Drop display.has_fpga_db
 from device info
Thread-Index: AQHYYhZ1DjqGBTgedkaAc2sSxMFD8K0W9KuAgAAcFYCAAQ3iAIAAFVQAgAGRpYCAAGlxAA==
Date: Wed, 11 May 2022 13:56:43 +0000
Message-ID: <97ae58c7a9d34021ab8950bdadb6b5d2910f5ec7.camel@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
 <20220507132850.10272-16-jose.souza@intel.com>
 <165209993727.58716.2402465688742600537@jlahtine-mobl.ger.corp.intel.com>
 <085c5569598a5708f68ebea78e8683ffc1893f04.camel@intel.com>
 <165216392440.6877.2731939801619952697@jlahtine-mobl.ger.corp.intel.com>
 <87czglkf5z.fsf@intel.com>
 <76397b0c-e4bc-1bd4-9620-7c677c01a004@linux.intel.com>
In-Reply-To: <76397b0c-e4bc-1bd4-9620-7c677c01a004@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <86736B5993A5B44D87CAEEA5E42C5ABC@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: Drop display.has_fpga_db
 from device info
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

T24gV2VkLCAyMDIyLTA1LTExIGF0IDA4OjM5ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMTAvMDUvMjAyMiAwODo0MSwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gT24gVHVlLCAx
MCBNYXkgMjAyMiwgSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPiB3cm90ZToNCj4gPiA+IFF1b3RpbmcgU291emEsIEpvc2UgKDIwMjItMDUtMDkgMTc6MTk6
MjgpDQo+ID4gPiA+IE9uIE1vbiwgMjAyMi0wNS0wOSBhdCAxNTozOCArMDMwMCwgSm9vbmFzIExh
aHRpbmVuIHdyb3RlOg0KPiA+ID4gPiA+IFF1b3RpbmcgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAo
MjAyMi0wNS0wNyAxNjoyODo1MCkNCj4gPiA+ID4gPiA+IE5vIG5lZWQgdG8gaGF2ZSB0aGlzIHBh
cmFtZXRlciBpbiBpbnRlbF9kZXZpY2VfaW5mbyBzdHJ1Y3QNCj4gPiA+ID4gPiA+IGFzIHRoaXMg
ZmVhdHVyZSBpcyBzdXBwb3J0ZWQgYnkgQnJvYWR3ZWxsLCBIYXN3ZWxsIGFsbCBwbGF0Zm9ybXMg
d2l0aA0KPiA+ID4gPiA+ID4gZGlzcGxheSB2ZXJzaW9uIDkgb3IgbmV3ZXIuDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gVGhpcyBpcyBvcHBvc2l0ZSBvZiB0aGUgZGlyZWN0aW9uIHdlIHdhbnQgdG8g
bW92ZSB0by4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBXZSB3YW50IHRvIGVtYnJhY2UgdGhlIGhh
c194eXogZmxhZ3MsIGluc3RlYWQgb2YgdGhlIG1hY3JvIHRyaWNrZXJ5Lg0KPiA+ID4gPiANCj4g
PiA+ID4gVGhpcyBldmVyIGdyb3dpbmcgZmxhZyBkZWZpbml0aW9uIGlzIGNhdXNpbmcgcHJvYmxl
bXMgd2hlbiBkZWZpbmluZyBuZXcgcGxhdGZvcm1zLg0KPiA+ID4gDQo+ID4gPiBUaGUgZXZlciBn
cm93aW5nIG1hY3JvcyB0aGF0IGNoYW5nZSBiZXR3ZWVuIGtlcm5lbCB2ZXJzaW9ucyBhcmUgbXVj
aA0KPiA+ID4gbW9yZSBwYWluZnVsIHRoYW4gZWFzaWx5IHByaW50YWJsZSBsaXN0IHBlciBTS1Uu
DQo+ID4gPiANCj4gPiA+IEp1c3QgdG8gbWFrZSBpdCBjbGVhciwgYSBzdHJpY3QgTkFDSyBmcm9t
IG1lIGZvciBtZXJnaW5nIGFueSBwYXRjaGVzDQo+ID4gPiBpbnRvIHRoaXMgZGlyZWN0aW9uLg0K
PiA+IA0KPiA+IEkgd2FzIGhvcGluZyB0byBzdGFydCBhIGRpc2N1c3Npb24gdG8gcmVhY2ggY29u
c2Vuc3VzIG9uIHRoaXMgd2l0aCBteQ0KPiA+IG1haWwgWzFdLCBhZGRpbmcgYWxsIG1haW50YWlu
ZXJzIGluIENjLCBidXQgbWVyZ2luZyBzdGFydGVkIGJlZm9yZSB0aGUNCj4gPiBkaXNjdXNzaW9u
IHJlYWxseSBldmVuIHN0YXJ0ZWQuDQo+ID4gDQo+ID4gT2J2aW91c2x5IG5vIGZ1cnRoZXIgcGF0
Y2hlcyBvbiB0aGlzIGFyZSB0byBiZSBtZXJnZWQsIGFuZCB0aGUgcXVlc3Rpb24NCj4gPiBub3cg
aXMgcmVhbGx5IHdoYXQgdG8gZG8gd2l0aCB0aGUgb25lcyB0aGF0IHdlcmUuIFJldmVydD8NCj4g
DQo+ICBGcm9tIHRoZSBwcm9jZXNzIHN0YW5kcG9pbnQgc3RyaWN0bHkgeWVzLCBidXQgaW4gcHJh
Y3RpY2UgSSB0aGluayB0aGVyZSANCj4gaXMgbm8gcnVzaC4NCj4gDQo+IFRoZSBvbmVzIHdoaWNo
IGdvdCBtZXJnZWQgSSBkZWZpbml0ZWx5IGRvIG5vdCBsaWtlIGFyZToNCj4gDQo+IFJjNiAtIGJl
Y2F1c2UgaXQgY3JlYXRlcyBhbiBpbmNvbnNpc3RlbmN5IHdoZXJlIHJjNnAgcmVtYWlucyBhIGRl
dmljZSANCj4gaW5mbyBmbGFnLg0KPiANCj4gRERJIC0gYmVjYXVzZSBpdCBpcyBub3QgMTAwJSB0
cml2aWFsIGFuZCB1c2VkIGZyb20gaTkxNV9pcnEuYy4gQnV0IGEpIEkgDQo+IGFtIG5vdCBzdXJl
IGl0IGlzIHRydWx5IG9uIGFuIGlycSBwYXRoLCBhbmQgYikgaXQgaXMgZGlzcGxheSBjb2RlIHNv
IG5vdCANCj4gbXkgY2FsbCBhbnl3YXkuIChBZmZlY3RzIHRoZSBEUCBNU1Qgb25lIGFzIHdlbGwg
YnkgaW5oZXJpdGFuY2UuKQ0KPiANCj4gVGhlIG90aGVycyBhcmUgYXQgYmVzdCBsdWtld2FybSB0
byBtZSAtIHByaW1hcmlseSBiZWNhdXNlIEkgYW0gbm90IA0KPiBjb252aW5jZWQgdGhlcmUgaXMg
YSBiZW5lZml0IHRvIGl0IGFsbC4gT25lIGRheSB0aGUgbmVlZCBtaWdodCBjb21lIHRvIA0KPiBt
b3ZlIHRoZW0gYmFjayBpZiBzb21lIHBsYXRmb3JtcyBkcm9wcyBzdXBwb3J0IG9yIHNvbWV0aGlu
Zywgd2hpY2ggd291bGQgDQo+IGJlIG1vcmUgY2h1cm4uIEFuZCBpdCBpcyBoYW5keSB0byBzZWUg
YSBjb25zb2xpZGF0ZWQgZGVzY3JpcHRpb24gb2YgYSANCj4gcGxhdGZvcm0gaW4gZG1lc2cgd2hl
biBsb29raW5nIGF0IGJ1Z3MuIFNvIGp1c3Qgbm90IHN1cmUgaXQncyBhbiANCj4gaW1wcm92ZW1l
bnQuDQoNCklmIHBsYXRmb3JtIGZlYXR1cmUgbGlzdCBwcmludCBpcyBhIG11c3QsIHdlIGNvdWxk
IHByaW50IHRob3NlIGZlYXR1cmVzIGNvbnZlcnRlZCB0byBwbGF0Zm9ybSBhbmQgSVAgY2hlY2tz
IGluIGludGVsX2RldmljZV9pbmZvX3ByaW50X3J1bnRpbWUoKS4NCg0KPiANCj4gR2l2ZSB0aGVy
ZSBpcyBtdWNoIG1vcmUgY29udmVyc2lvbnMgcHJvcG9zZWQgSSBndWVzcyBpdCBtYXkgbWFrZSBz
ZW5zZSANCj4gdG8gcmV2ZXJ0IHVudGlsIG92ZXJhbGwgY29uc2Vuc3VzIGlzIGFjaGlldmVkLCBz
aW5jZSBpdCBtYXkgYmUgb2RkIHRvIA0KPiBoYXZlIGEgaGFuZGZ1bCBpZiB3ZSBkZWNpZGUgdG8g
c3RvcCB0aGVyZS4NCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCg0K
