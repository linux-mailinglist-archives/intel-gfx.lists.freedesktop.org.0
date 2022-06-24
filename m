Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB99559A1D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 15:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E16210EEFA;
	Fri, 24 Jun 2022 13:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B98110F039
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 13:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656076076; x=1687612076;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NmIBPI7Ilk+JfYKs6wLj0IMZ2mhiG77JEJLZBfvZtMM=;
 b=Suz42V1Hw6ShyMiaRLdHUXwXTQZa5fDNd6QBcb9glng2863iFe3fSXt5
 tWBhiXaYwptfz8K3Sby8+W/i/GFdkYMxinIh20M0aAWqQVl0Do+d1PdiH
 EDy8ZUgWFuibvafHkPHugOLeeOkA2keB6/9GYBvGEsSnNQR3ef9iTx4it
 lJOQmDuziZk0HHw5f8hQPA0doTbGbMNd0vJ50klQNDn/fslkuRLOJbIHi
 2YL2JB3loaNSTaEYTKQvt0iZtbTNDWMjFQqTsT3q3tK5Hf83HwIpdQvAU
 BCheQsD2+erXV+Nrhg6LZ+yNyFWhXjZDvO9wl9rMo5KVoRDAcU1+zAM/e Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281731090"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281731090"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:07:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="691520851"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2022 06:07:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 24 Jun 2022 06:07:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 24 Jun 2022 06:07:54 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 24 Jun 2022 06:07:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "hbh25y@gmail.com" <hbh25y@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH RESEND] drm: i915: fix a possible refcount leak in
 intel_dp_add_mst_connector()
Thread-Index: AQHYh3IuErwhyUZyaEi4H5GZcMeo4a1e/UYA
Date: Fri, 24 Jun 2022 13:07:54 +0000
Message-ID: <1f1ab1c04d1eb887e32fa95e3af9062bfbfc44e8.camel@intel.com>
References: <20220624022813.10796-1-hbh25y@gmail.com>
In-Reply-To: <20220624022813.10796-1-hbh25y@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D746B2649FE18349AD7A96D1A5B774E0@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND] drm: i915: fix a possible refcount
 leak in intel_dp_add_mst_connector()
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

SGkgSGFuZ3l1DQoNCkRvbid0IGtub3cgd2h5IGJ1dCBvdXIgQ0kgc3RpbGwgZGlkIG5vdCBjYXVn
aHQgdGhpcyBwYXRjaC4NCk1heWJlIGl0IGlzIGJlY2F1c2UgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZyBuZWVkcyB0byBiZSBpbiB0aGUgInRvIiBsaXN0LCB0cnkgdGhhdCBpbiBmdXR1
cmUgcGF0Y2hlcy4NCg0KQW55d2F5cyBJIGhhdmUgcmVzZW5kIGl0IGFuZCBpdCBpcyBwcm9wZXJs
eSBiZWhhdmluZyBub3cuDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzEwNTYwMS8NCg0KQWZ0ZXIgQ0kgcmVzdWx0cyBJIHdpbGwgcHVzaCB0aGlzIGZvciB5b3UuDQoN
Ck9uIEZyaSwgMjAyMi0wNi0yNCBhdCAxMDoyOCArMDgwMCwgSGFuZ3l1IEh1YSB3cm90ZToNCj4g
SWYgZHJtX2Nvbm5lY3Rvcl9pbml0IGZhaWxzLCBpbnRlbF9jb25uZWN0b3JfZnJlZSB3aWxsIGJl
IGNhbGxlZCB0byB0YWtlDQo+IGNhcmUgb2YgcHJvcGVyIGZyZWUuIFNvIGl0IGlzIG5lY2Vzc2Fy
eSB0byBkcm9wIHRoZSByZWZjb3VudCBvZiBwb3J0DQo+IGJlZm9yZSBpbnRlbF9jb25uZWN0b3Jf
ZnJlZS4NCj4gDQo+IEZpeGVzOiAwOTFhNGY5MTk0MmEgKCJkcm0vaTkxNTogSGFuZGxlIGRybS1s
YXllciBlcnJvcnMgaW4gaW50ZWxfZHBfYWRkX21zdF9jb25uZWN0b3IiKQ0KPiBTaWduZWQtb2Zm
LWJ5OiBIYW5neXUgSHVhIDxoYmgyNXlAZ21haWwuY29tPg0KPiBSZXZpZXdlZC1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDEgKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMNCj4gaW5kZXggMDYxYjI3N2U1Y2U3Li4xNGQyYTY0MTkzYjIgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBA
QCAtODM5LDYgKzgzOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqaW50ZWxfZHBf
YWRkX21zdF9jb25uZWN0b3Ioc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvDQo+ICAJcmV0ID0gZHJt
X2Nvbm5lY3Rvcl9pbml0KGRldiwgY29ubmVjdG9yLCAmaW50ZWxfZHBfbXN0X2Nvbm5lY3Rvcl9m
dW5jcywNCj4gIAkJCQkgRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0KTsNCj4gIAlpZiAo
cmV0KSB7DQo+ICsJCWRybV9kcF9tc3RfcHV0X3BvcnRfbWFsbG9jKHBvcnQpOw0KPiAgCQlpbnRl
bF9jb25uZWN0b3JfZnJlZShpbnRlbF9jb25uZWN0b3IpOw0KPiAgCQlyZXR1cm4gTlVMTDsNCj4g
IAl9DQoNCg==
