Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D0E49FB11
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 14:50:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3354310E846;
	Fri, 28 Jan 2022 13:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D35310E846
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 13:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643377844; x=1674913844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7nYahlRg3nULiAAEpeVM1k+xoeX+8pHPPqGKz995+wU=;
 b=AY6p9uH0zYMy8mQDV5pWenzBksoNZK4H259m764EEV++BejQG7WCZQ6t
 aSnqPIiQumeC4xux3QB3mlOXyGCXtVH+GKvEd+GZRUkMJZaAL3/JWuP32
 g5FJJHsVZTtPqlnu380Bnvy68DFNfpk15ROtd5dMs1aTDB6fOPg4IvbN4
 Cn9l5xdZixRVzIHl4WY+jau0qXzVQl31ktlPAzYbfv31zRdvqYJiQU6c0
 HYFRu5d0CgrpJVlgxdldc/MOSkEZXup5FtyNLvjBuS+x2EmqrDA9shawU
 NS5LkBe2G/pdsYKCnTW7pEacv48JnUub5vQfNYBiJB1Suc17CfvD8IK2d Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310436126"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="310436126"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 05:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="478290767"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 28 Jan 2022 05:50:43 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 05:50:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 05:50:42 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.020;
 Fri, 28 Jan 2022 05:50:42 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: delete shadow "ret" variable
Thread-Index: AQHYE1spB+4n1QXknUKtXl2HjsLW1Kx3+SuAgACEZQCAAASqAIAAeT+A
Date: Fri, 28 Jan 2022 13:50:42 +0000
Message-ID: <7eaebcb777af22defc813cfe5071230123e56400.camel@intel.com>
References: <20220127085115.GD25644@kili> <YfMcAzJgjeqzLVEB@intel.com>
 <f8044efa53f2ea6f998a08592343c9a8f952c718.camel@linux.intel.com>
 <20220128063644.GH1978@kadam>
In-Reply-To: <20220128063644.GH1978@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-2.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A4462E00266664489F7E691D75B10B02@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: delete shadow "ret" variable
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTAxLTI4IGF0IDA5OjM2ICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0K
PiBPbiBGcmksIEphbiAyOCwgMjAyMiBhdCAwNzoyMDowMkFNICswMTAwLCBUaG9tYXMgSGVsbHN0
csO2bSB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjItMDEtMjcgYXQgMTc6MjYgLTA1MDAsIFJvZHJp
Z28gVml2aSB3cm90ZToNCj4gPiA+IE9uIFRodSwgSmFuIDI3LCAyMDIyIGF0IDExOjUxOjE1QU0g
KzAzMDAsIERhbiBDYXJwZW50ZXIgd3JvdGU6DQo+ID4gPiA+IFRoaXMgInJldCIgZGVjbGFyYXRp
b24gc2hhZG93cyBhbiBleGlzdGluZyAicmV0IiB2YXJpYWJsZSBhdA0KPiA+ID4gPiB0aGUNCj4g
PiA+ID4gdG9wIG9mDQo+ID4gPiA+IHRoZSBmdW5jdGlvbi7CoCBEZWxldGUgaXQuDQo+ID4gPiA+
IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9y
YWNsZS5jb20+DQo+ID4gPiANCj4gPiA+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IGFuZCBwdXNoaW5nIHJpZ2h0IG5vdw0K
PiA+IA0KPiA+IFNob3VsZCBwcm9iYWJseSBoYXZlIGhhZCBhIEZpeGVzOiB0YWcgb24gdGhpcyBv
bmUuIEknbSBub3QgMTAwJQ0KDQpXZWxsLCBJIGhhZCBhZGRlZCB3aGlsZSBwdXNoaW5nIHllc3Rl
cmRheS4uLiBidXQuLi4NCg0KPiA+IHN1cmUNCj4gPiB3aGV0aGVyIHRoZSBmYXVsdHkgcGF0Y2gg
aXMgYWxyZWFkeSB1cHN0cmVhbS4gSW4gdGhhdCBjYXNlIHdlIG1pZ2h0DQo+ID4gbmVlZCB0byBt
YW51YWxseSBpbmNsdWRlIGl0IGluIGEgLWZpeGVzIHB1bGwuDQo+ID4gDQo+IA0KPiBJdCdzIG5v
dCByZWFsbHkgYSBidWcuwqAgSXQncyBqdXN0IGEgU3BhcnNlIHdhcm5pbmcgd2hpY2ggaXMgZGlz
YWJsZWQNCj4gYnkgZGVmYXVsdCAoLVdzaGFkb3cpLsKgIFRoZSBwYXRjaCBpcyBpbiBsaW51eC1u
ZXh0Lg0KDQpZZWFwLCBidXQgaXQgaXMgZ29vZCB0byBhZGQgRml4ZXMgc28gaWYgYW55b25lIGlz
IGJhY2twb3J0aW5nIHRoZSBvdGhlcg0KcGF0Y2ggaXQgaXMgY2xlYXIgdGhhdCB0aGlzIHBhdGNo
IGlzIGEgZ29vZCBhZGRpdGlvbiBvbiB0b3AuDQoNCj4gDQo+IEZpeGVzOiAyZjZiOTBkYTkxOTIg
KCJkcm0vaTkxNTogVXNlIHZtYSByZXNvdXJjZXMgZm9yIGFzeW5jDQo+IHVuYmluZGluZyIpDQoN
CmhtbS4uLiB5b3UgYXJlIHJpZ2h0Li4uIHRoaXMgb25lIHdhcyB0aGUgb25lLi4uDQoNCkkgaGFk
IGFkZGVkDQoNCkZpeGVzOiBmNmM0NjZiODRjZmEgKCJkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9y
IG1vdmluZyBmZW5jZSB3YWl0aW5nIikNCg0KcG9pbnRpbmcgdG8gdGhlIG9yaWdpbmFsIHBhdGNo
IHRoYXQgaW50cm9kdWNlZCB0aGlzIGludCByZXQgDQppbnN0ZWFkIG9mIHRoZSBvbmUgdGhhdCBj
cmVhdGVkIHRoZSBkdXBsaWNhdGlvbi4uLg0KDQpzbyBteSBGaXhlcyBhZGRpdGlvbiBjYW4gYWN0
dWFsbHkgYnJlYWsgc29tZSBiYWNrcG9ydCBvdXQgdGhlcmUuLi4NCkJ1dCBsdWNraWx5IEkgYmVs
aWV2ZSB0aGF0IHRoZXNlIDIgcGF0Y2hlcyB3aWxsIGJlIGJhY2twb3J0ZWQgdG9nZXRoZXINCmFu
eXdheS4uLg0KDQpTb3JyeSBhYm91dCB0aGUgY29uZnVzaW9uLA0KUm9kcmlnby4NCg0KDQo+IA0K
PiByZWdhcmRzLA0KPiBkYW4gY2FycGVudGVyDQo+IA0KDQo=
