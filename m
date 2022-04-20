Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3767508D66
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 18:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0713089DBF;
	Wed, 20 Apr 2022 16:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C93389DE1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 16:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650472427; x=1682008427;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8+G5J+/8UeF9hj2kbuVoMgVmkM3PF7pHK+11ti9D0F0=;
 b=VRXHNnAA3DpEV2I4SRPfFIpV4PuTv+2I8gmB1jIa3bxsrvIsRprysBCT
 urHtFV22igd8Cnqo2ZAcalwZD8sSN11er5TcG7LiA1j4ssymSeQ7PycS/
 xvcjI8l+ruDIFYogmTJ/yaE+uCd8GyktYaQpjcdZVeLa6l0Re4JfQW/w4
 9gR/2jyWdmfT/IsQbTdyHYoXNffslolZZ53Gb4ldwF02kXVyouaLOgU0B
 ZXi3mo9wbTzYz1NvelzlZY1YUd7+gOTxN+DurDHa9dduwjQIMreYtNSlJ
 DJ/eIGGO4DRloGRp8nOs9zzLhcKVhpG2oOzGf2reMo7uN2W710bnBc4H0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="264254784"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="264254784"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 09:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="626124540"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2022 09:32:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 09:32:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 09:32:39 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Wed, 20 Apr 2022 09:32:39 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/8] drm/i915/pcode: Extend pcode functions
 for multiple gt's
Thread-Index: AQHYT2He8C3NgdZsSUGPBSBpGe8U86zv3cSAgACXe4CAB+JDRoABJ46A
Date: Wed, 20 Apr 2022 16:32:39 +0000
Message-ID: <ee1506a5a7bbbacf112a9361ff0a56ab5a3bf6b7.camel@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <8f667da9aa39452524abef1333226b645438d2cc.1649871650.git.ashutosh.dixit@intel.com>
 <87lew7eque.fsf@intel.com>	<878rs72t78.wl-ashutosh.dixit@intel.com>
 <YllHJizrltBkHUDw@intel.com> <87wnfkwb8b.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87wnfkwb8b.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-3.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D04247FAC62EF04EB9B625ED3C92F6E6@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTA0LTE5IGF0IDIyOjU0IC0wNzAwLCBEaXhpdCwgQXNodXRvc2ggd3JvdGU6
DQo+IE9uIEZyaSwgMTUgQXByIDIwMjIgMDM6MjE6MjYgLTA3MDAsIFJvZHJpZ28gVml2aSB3cm90
ZToNCj4gPiBPbiBUaHUsIEFwciAxNCwgMjAyMiBhdCAwMzozMTowN1BNIC0wNzAwLCBEaXhpdCwg
QXNodXRvc2ggd3JvdGU6DQo+ID4gPiBPbiBUaHUsIDE0IEFwciAyMDIyIDA2OjI4OjU3IC0wNzAw
LCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+ID4gDQo+ID4gPiA+IE9uIFdlZCwgMTMgQXByIDIw
MjIsIEFzaHV0b3NoIERpeGl0IDxhc2h1dG9zaC5kaXhpdEBpbnRlbC5jb20+DQo+ID4gPiA+IHdy
b3RlOg0KPiA+ID4gPiA+IEVhY2ggZ3QgY29udGFpbnMgYW4gaW5kZXBlbmRlbnQgaW5zdGFuY2Ug
b2YgcGNvZGUuIEV4dGVuZA0KPiA+ID4gPiA+IHBjb2RlIGZ1bmN0aW9ucw0KPiA+ID4gPiA+IHRv
IGludGVyZmFjZSB3aXRoIHBjb2RlIG9uIGRpZmZlcmVudCBndCdzLiBQcmV2aW91cyAoR1QwKQ0K
PiA+ID4gPiA+IHBjb2RlIHJlYWQvd3JpdGUNCj4gPiA+ID4gPiBpbnRlcmZhY2VzIGFyZSBwcmVz
ZXJ2ZWQuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgYmlnIHByb2JsZW0gaGVyZSBpcyB0aGF0IHRo
aXMgaGFyZCBjb3VwbGVzIGRpc3BsYXkgY29kZSB0bw0KPiA+ID4gPiBndCBjb2RlLA0KPiA+ID4g
PiB3aGlsZSB3ZSdyZSB0cnlpbmcgaGFyZCB0byBnbyB0aGUgb3Bwb3NpdGUgZGlyZWN0aW9uLiBJ
dA0KPiA+ID4gPiBkb2Vzbid0IG1hdHRlcg0KPiA+ID4gPiB0aGF0IHRoZSBleGlzdGluZyBpbnRl
cmZhY2VzIGFyZSBwcmVzZXJ2ZWQgYXMgd3JhcHBlcnMgd2hlbiBpdA0KPiA+ID4gPiByZWxpZXMg
b24NCj4gPiA+ID4gYW4gaW50ZWxfZ3QgYmVpbmcgYXZhaWxhYmxlICh2aWEgaTkxNS0+Z3QwKS4N
Cj4gPiANCj4gPiBJIGRvbid0IGJlbGlldmUgdGhlcmUgaXMgYSBiaWcgcHJvYmxlbSBpbiBoZXJl
Li4uDQo+ID4gDQo+ID4gcGxlYXNlIG5vdGUgdGhlIGludGVsX3Bjb2RlLmggaXMga2VlcGluZyB0
aGUgYWJzdHJhY3Rpb24gZm9yDQo+ID4gZGlzcGxheQ0KPiA+IA0KPiA+ICNkZWZpbmUgc25iX3Bj
b2RlX3dyaXRlX3RpbWVvdXQoaTkxNSwgbWJveCwgdmFsLCBmYXN0X3RpbWVvdXRfdXMsDQo+ID4g
c2xvd190aW1lb3V0X21zKSBcDQo+ID4gwqDCoMKgwqDCoMKgwqAgaW50ZWxfZ3RfcGNvZGVfd3Jp
dGVfdGltZW91dCgmKGk5MTUpLT5ndDAsIG1ib3gsIHZhbCwNCj4gPiBmYXN0X3RpbWVvdXRfdXMs
IHNsb3dfdGltZW91dF9tcykNCj4gPiANCj4gPiAjZGVmaW5lIHNuYl9wY29kZV93cml0ZShpOTE1
LCBtYm94LCB2YWwpIFwNCj4gPiDCoMKgwqDCoMKgwqDCoCBzbmJfcGNvZGVfd3JpdGVfdGltZW91
dChpOTE1LCBtYm94LCB2YWwsIDUwMCwgMCkNCj4gPiANCj4gPiBkaXNwbGF5IG9ubHkgdXNlcyB0
aGVzZSBtYWNyb3MgdGhhdCBBc2h1dG9zaCBkaWRuJ3QgdG91Y2guDQo+ID4gDQo+ID4gPiA+IA0K
PiA+ID4gPiBOb3RlIGhvdyAnZ2l0IGdyZXAgaW50ZWxfZ3QgLS0gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS8nDQo+ID4gPiA+IG1hdGNoZXMNCj4gPiA+ID4gb25seSAxIGxpbmUuDQo+ID4g
DQo+ID4gQXMgd2VsbCB3aXRoIHRoZSBwYXRjaGVzIGFwcGxpZWQ6DQo+ID4gDQo+ID4gJCBnaXQg
bG9nIC0tb25lbGluZSAtMQ0KPiA+IDFmNThmMTE5NTQ3OCAoSEVBRCAtPiBkcm0tdGlwKSBkcm0v
aTkxNS9ndDogRXhwb3NlIHBlci1ndCBSUFMNCj4gPiBkZWZhdWx0cyBpbiBzeXNmcw0KPiA+IA0K
PiA+ICQgZ2l0IGdyZXAgaW50ZWxfZ3QgLS0gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS8N
Cj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzrCoMKgwqDC
oMKgwqDCoMKgwqDCoA0KPiA+IGludGVsX2d0X3NldF93ZWRnZWQodG9fZ3QoZGV2X3ByaXYpKTsN
Cj4gPiANCj4gPiA+IA0KPiA+ID4gSGkgSmFuaSwgd291bGQgeW91IGhhdmUgc3VnZ2VzdGlvbnMg
YWJvdXQgaG93IHRvIGRvIHRoaXMgKGhhbmRsZQ0KPiA+ID4gcGNvZGUgb24NCj4gPiA+IG11bHRp
cGxlIGd0J3MpPyBUaGUgdGhpbmtpbmcgd2FzIHRoaXMgcGF0Y2ggd291bGQgYmUgYQ0KPiA+ID4g
c3RyYWlnaHRmb3J3YXJkIHdheQ0KPiA+ID4gdG8gYXZvaWQgY29kZSBkdXBsaWNhdGlvbi4gQWxz
bzoNCj4gPiANCj4gPiBNYXliZSBpdCBpcyBqdXN0IGEgbWF0dGVyIG9mIHJlbmFtaW5nIHRoZSBt
YWNyb3MgdXNlZCBieSBkaXNwbGF5DQo+ID4gaW4gaW50ZWxfcGNvZGUuaCB0byByZWZsZWN0IHRo
YXQgaXQgc2hvdWxkIGJlIHVzZWQgYnkgZGlzcGxheSBvbmx5Pw0KPiANCj4gSW4gdjIgSSBoYXZl
IGFkZGVkIGEgcGF0Y2ggKFtQQVRDSCA0LzldIGRybS9pOTE1L2d0OiBDb252ZXJ0IGNhbGxlcnMN
Cj4gdG8NCj4gdXNlciBwZXItZ3QgcGNvZGUgZnVuY3Rpb25zKSB3aGljaCBjb3JyZWN0bHkgY2Fs
bHMgcGVyLWd0IHBjb2RlDQo+IGZ1bmN0aW9ucw0KPiB3aGVyZSB0aGlzIGlzIHJlcXVpcmVkLiBX
aXRoIHRoaXMgcGF0Y2ggb25seSBkaXNwbGF5IGZ1bmN0aW9ucyAoYW5kDQo+IG9uZQ0KPiBvdGhl
ciBjYWxsZXIpIGFyZSBsZWZ0IGNhbGxpbmcgdGhlICJnbG9iYWwgc2NvcGUiDQo+IHNuYl9wY29k
ZV9yZWFkL3dyaXRlKg0KPiBmdW5jdGlvbnMuIFNvIHRoZSBsZWdhY3kgc25iX3Bjb2RlX3JlYWQv
d3JpdGUqIGFyZSBub3cgYmFzaWNhbGx5DQo+IGJlaW5nIHVzZWQNCj4gb25seSBieSBkaXNwbGF5
LiBMZXQncyBzZWUgaWYgSmFuaSBpcyBvayB3aXRoIHRoaXMuIFRoYW5rcy4NCg0KSmFuaSBpcyBu
b3QgaGFwcHkgd2l0aCB0aGlzIGFic3RyYWN0aW9uIGJlY2F1c2UgaXQgc3RpbGwgY3JlYXRlcyBz
b21lDQpkZXBlbmRlbmN5IGFuZCBhbHNvIG5vIHdpdGggdGhlIG5hbWUgaW50ZWxfZ3RfcGNvZGVf
IGluIHRoZQ0KZnVuY3Rpb25zLi4uDQoNCkhlIGhhcyBzb21lIHZhbGlkIHBvaW50cy4NCg0KSSBi
ZWxpZXZlIHRoZSByaWdodCB3YXkgdG8gZG8gdGhpcyBpcyB0byBrZWVwIGludGVsX3Bjb2RlIHRv
dGFsbHkgY2xlYW4NCmZyb20gaW50ZWxfZ3QgYW5kIG9ubHkgcmVjZWl2ZSBpbnRlbF91bmNvcmUg
YXMgdGhlIGFyZ3VtZW50LiBUaGVuLCBpZg0KbmVlZGVkIHdlIGNyZWF0ZSBkaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcGNvZGUgYW5kL29yIGd0L2ludGVsX2d0X3Bjb2RlDQp3aXRoIHRoZSBuZWVkZWQg
YWJzdHJhY3Rpb25zLi4uIGJ1dCBiZXR0ZXIgd2l0aCBub25lIEknZCBzYXkuDQoNCg0KDQoNCg0K
DQo=
