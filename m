Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703624C1CBF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 21:02:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C329410E6AC;
	Wed, 23 Feb 2022 20:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4604310E6AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645646542; x=1677182542;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=j0JT1awCL4t+GnYaRyRmlB59lNZNxVrFBlmKFeEiBfw=;
 b=iBP1RjL1qY1LCI0INtuveyfXlgGVoJdWJXaYRI5wFqYul0T4FBNzmXFA
 vn3Xs1nPuWpQ3BKcZ6FSKi9JIlE6yr2Qf+6LhJkYVSLkbxvMJs2Z+ad5F
 FlKWk7klx7AEdj15bpZn9QCPAG7x8+iQKHMWQJCDe7uSfWmHfVWtLmesq
 fWnJfqRWIC3nukuY7EUyr7L5n5RxZpq1xCKLoIjiEYqsNUcOmML9BdO2B
 vXwBTzRggrpCjw2IWu4XsVZgAvLZ3yIt2UH0X1DuOKzDEV9sKud9CnGWc
 GGcsbnlRBU9qsbQCmc0NOTBaL1V7IAbYCsWJodTA8MrzbSsSgLp48Enr+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="251988543"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="251988543"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 12:02:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="707173273"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2022 12:02:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 23 Feb 2022 20:02:02 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 23 Feb 2022 12:01:54 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Use unions per platform in
 intel_dpll_hw_state
Thread-Index: AQHYJ/cTmdYgIpsgi0eGhtU3TB6/9ayiFb6AgAABegA=
Date: Wed, 23 Feb 2022 20:01:54 +0000
Message-ID: <3857d058d19c410e79973b5682f892e67672abfc.camel@intel.com>
References: <20220222142045.48509-1-jose.souza@intel.com>
 <20220223195853.GA1034106@ideak-desk.fi.intel.com>
In-Reply-To: <20220223195853.GA1034106@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F22C151994D36C4F90436A0A14FF1E65@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use unions per platform
 in intel_dpll_hw_state
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTAyLTIzIGF0IDIxOjU4ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgRmViIDIyLCAyMDIyIGF0IDA2OjIwOjQ1QU0gLTA4MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+IFsuLi5dDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuaA0KPiA+IGluZGV4IGJhMmZkZmNlMTU3OTIuLjQzNjBlMWM5MjY2
ZDggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5oDQo+ID4gQEAgLTE4NCw1MiArMTg0LDc0IEBAIGVudW0gaWNsX3BvcnRfZHBsbF9p
ZCB7DQo+ID4gIH07DQo+ID4gIA0KPiA+ICBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSB7DQo+
ID4gLQkvKiBpOXh4LCBwY2ggcGxscyAqLw0KPiA+IC0JdTMyIGRwbGw7DQo+ID4gLQl1MzIgZHBs
bF9tZDsNCj4gPiAtCXUzMiBmcDA7DQo+ID4gLQl1MzIgZnAxOw0KPiA+IC0NCj4gPiAtCS8qIGhz
dywgYmR3ICovDQo+ID4gLQl1MzIgd3JwbGw7DQo+ID4gLQl1MzIgc3BsbDsNCj4gPiAtDQo+ID4g
LQkvKiBza2wgKi8NCj4gPiAtCS8qDQo+ID4gLQkgKiBEUExMX0NUUkwxIGhhcyA2IGJpdHMgZm9y
IGVhY2ggZWFjaCB0aGlzIERQTEwuIFdlIHN0b3JlIHRob3NlIGluDQo+ID4gLQkgKiBsb3dlciBw
YXJ0IG9mIGN0cmwxIGFuZCB0aGV5IGdldCBzaGlmdGVkIGludG8gcG9zaXRpb24gd2hlbiB3cml0
aW5nDQo+ID4gLQkgKiB0aGUgcmVnaXN0ZXIuICBUaGlzIGFsbG93cyB1cyB0byBlYXNpbHkgY29t
cGFyZSB0aGUgc3RhdGUgdG8gc2hhcmUNCj4gPiAtCSAqIHRoZSBEUExMLg0KPiA+IC0JICovDQo+
ID4gLQl1MzIgY3RybDE7DQo+ID4gLQkvKiBIRE1JIG9ubHksIDAgd2hlbiB1c2VkIGZvciBEUCAq
Lw0KPiA+IC0JdTMyIGNmZ2NyMSwgY2ZnY3IyOw0KPiA+IC0NCj4gPiAtCS8qIGljbCAqLw0KPiA+
IC0JdTMyIGNmZ2NyMDsNCj4gPiAtDQo+ID4gLQkvKiB0Z2wgKi8NCj4gPiAtCXUzMiBkaXYwOw0K
PiA+IC0NCj4gPiAtCS8qIGJ4dCAqLw0KPiA+IC0JdTMyIGViYjAsIGViYjQsIHBsbDAsIHBsbDEs
IHBsbDIsIHBsbDMsIHBsbDYsIHBsbDgsIHBsbDksIHBsbDEwLCBwY3NkdzEyOw0KPiA+IC0NCj4g
PiAtCS8qDQo+ID4gLQkgKiBJQ0wgdXNlcyB0aGUgZm9sbG93aW5nLCBhbHJlYWR5IGRlZmluZWQ6
DQo+ID4gLQkgKiB1MzIgY2ZnY3IwLCBjZmdjcjE7DQo+ID4gLQkgKi8NCj4gPiAtCXUzMiBtZ19y
ZWZjbGtpbl9jdGw7DQo+ID4gLQl1MzIgbWdfY2xrdG9wMl9jb3JlY2xrY3RsMTsNCj4gPiAtCXUz
MiBtZ19jbGt0b3AyX2hzY2xrY3RsOw0KPiA+IC0JdTMyIG1nX3BsbF9kaXYwOw0KPiA+IC0JdTMy
IG1nX3BsbF9kaXYxOw0KPiA+IC0JdTMyIG1nX3BsbF9sZjsNCj4gPiAtCXUzMiBtZ19wbGxfZnJh
Y19sb2NrOw0KPiA+IC0JdTMyIG1nX3BsbF9zc2M7DQo+ID4gLQl1MzIgbWdfcGxsX2JpYXM7DQo+
ID4gLQl1MzIgbWdfcGxsX3RkY19jb2xkc3RfYmlhczsNCj4gPiAtCXUzMiBtZ19wbGxfYmlhc19t
YXNrOw0KPiA+IC0JdTMyIG1nX3BsbF90ZGNfY29sZHN0X2JpYXNfbWFzazsNCj4gPiArCXVuaW9u
IHsNCj4gPiArCQkvKiBpY2wrIGNvbWJvICovDQo+ID4gKwkJc3RydWN0IHsNCj4gPiArCQkJdTMy
IGljbF9jZmdjcjA7DQo+ID4gKwkJCXUzMiBpY2xfY2ZnY3IxOw0KPiA+ICsJCQl1MzIgaWNsX2Rp
djA7DQo+IA0KPiBBdCBsZWFzdCBpY2xfZGRpX2NvbWJvX3BsbF9nZXRfZnJlcSgpIGFuZCBpY2xf
ZHVtcF9od19zdGF0ZSgpIG1pc3NlZA0KPiBjb252ZXJ0aW5nIGNmZ2NyMSB0byBpY2xfY2ZnY3Ix
LiBXb3VsZCBpdCBiZSBsZXNzIGVycm9yLXByb25lL3NpbXBsZXIgdG8NCg0KRGFtbiwgeWVwIG1p
c3NlZCB0aGF0Lg0KDQo+IHN0b3JlIGhlcmUgYWxsIHRoZSBza2wrIGNvbWJvIHN0YXRlPyBUaGF0
IHdvdWxkIGFsc28gcmVkdWNlIHRoZSBkaWZmDQo+IHNpemUuDQoNCkxvb2tzIGEgZ29vZCBpZGVh
IGFuZCB3aWxsIG5vdCBtYWtlIGludGVsX2RwbGxfaHdfc3RhdGUgaW5jcmVhc2UgaW4gc2l6ZS4N
Cg0KV2lsbCBzZW5kIHYyLCB0aGFua3MgZm9yIHRoZSByZXZpZXcuIA0KDQo+IA0KPiA+ICsJCX07
DQo+ID4gKw0KPiA+ICsJCS8qIGljbCsgVEMgKi8NCj4gPiArCQlzdHJ1Y3Qgew0KPiA+ICsJCQl1
MzIgbWdfcmVmY2xraW5fY3RsOw0KPiA+ICsJCQl1MzIgbWdfY2xrdG9wMl9jb3JlY2xrY3RsMTsN
Cj4gPiArCQkJdTMyIG1nX2Nsa3RvcDJfaHNjbGtjdGw7DQo+ID4gKwkJCXUzMiBtZ19wbGxfZGl2
MDsNCj4gPiArCQkJdTMyIG1nX3BsbF9kaXYxOw0KPiA+ICsJCQl1MzIgbWdfcGxsX2xmOw0KPiA+
ICsJCQl1MzIgbWdfcGxsX2ZyYWNfbG9jazsNCj4gPiArCQkJdTMyIG1nX3BsbF9zc2M7DQo+ID4g
KwkJCXUzMiBtZ19wbGxfYmlhczsNCj4gPiArCQkJdTMyIG1nX3BsbF90ZGNfY29sZHN0X2JpYXM7
DQo+ID4gKwkJCXUzMiBtZ19wbGxfYmlhc19tYXNrOw0KPiA+ICsJCQl1MzIgbWdfcGxsX3RkY19j
b2xkc3RfYmlhc19tYXNrOw0KPiA+ICsJCX07DQo+ID4gKw0KPiA+ICsJCS8qIGJ4dCAqLw0KPiA+
ICsJCXN0cnVjdCB7DQo+ID4gKwkJCS8qIGJ4dCAqLw0KPiA+ICsJCQl1MzIgZWJiMDsNCj4gPiAr
CQkJdTMyIGViYjQ7DQo+ID4gKwkJCXUzMiBwbGwwOw0KPiA+ICsJCQl1MzIgcGxsMTsNCj4gPiAr
CQkJdTMyIHBsbDI7DQo+ID4gKwkJCXUzMiBwbGwzOw0KPiA+ICsJCQl1MzIgcGxsNjsNCj4gPiAr
CQkJdTMyIHBsbDg7DQo+ID4gKwkJCXUzMiBwbGw5Ow0KPiA+ICsJCQl1MzIgcGxsMTA7DQo+ID4g
KwkJCXUzMiBwY3NkdzEyOw0KPiA+ICsJCX07DQo+ID4gKw0KPiA+ICsJCS8qIHNrbCAqLw0KPiA+
ICsJCXN0cnVjdCB7DQo+ID4gKwkJCS8qDQo+ID4gKwkJCSAqIERQTExfQ1RSTDEgaGFzIDYgYml0
cyBmb3IgZWFjaCB0aGlzIERQTEwuIFdlIHN0b3JlIHRob3NlIGluDQo+ID4gKwkJCSAqIGxvd2Vy
IHBhcnQgb2YgY3RybDEgYW5kIHRoZXkgZ2V0IHNoaWZ0ZWQgaW50byBwb3NpdGlvbiB3aGVuIHdy
aXRpbmcNCj4gPiArCQkJICogdGhlIHJlZ2lzdGVyLiAgVGhpcyBhbGxvd3MgdXMgdG8gZWFzaWx5
IGNvbXBhcmUgdGhlIHN0YXRlIHRvIHNoYXJlDQo+ID4gKwkJCSAqIHRoZSBEUExMLg0KPiA+ICsJ
CQkgKi8NCj4gPiArCQkJdTMyIGN0cmwxOw0KPiA+ICsJCQl1MzIgY2ZnY3IxOw0KPiA+ICsJCQkv
KiBIRE1JIG9ubHksIDAgd2hlbiB1c2VkIGZvciBEUCAqLw0KPiA+ICsJCQl1MzIgY2ZnY3IyOw0K
PiA+ICsJCX07DQo+ID4gKw0KPiA+ICsJCS8qIGhzdywgYmR3ICovDQo+ID4gKwkJc3RydWN0IHsN
Cj4gPiArCQkJdTMyIHdycGxsOw0KPiA+ICsJCQl1MzIgc3BsbDsNCj4gPiArCQl9Ow0KPiA+ICsN
Cj4gPiArCQkvKiBpOXh4LCBwY2ggcGxscyAqLw0KPiA+ICsJCXN0cnVjdCB7DQo+ID4gKwkJCXUz
MiBkcGxsOw0KPiA+ICsJCQl1MzIgZHBsbF9tZDsNCj4gPiArCQkJdTMyIGZwMDsNCj4gPiArCQkJ
dTMyIGZwMTsNCj4gPiArCQl9Ow0KPiA+ICsJfTsNCj4gPiAgfTsNCj4gPiAgDQo+ID4gIC8qKg0K
PiA+IC0tIA0KPiA+IDIuMzUuMQ0KPiA+IA0KDQo=
