Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 477F04664A7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 14:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979176FB9E;
	Thu,  2 Dec 2021 13:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF736FB9E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 13:45:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223942397"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="223942397"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 05:45:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="597143731"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Dec 2021 05:45:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 05:45:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 05:45:05 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 2 Dec 2021 05:45:05 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v3 3/3] drm/i915/rpl-s: Enable guc submission by
 default
Thread-Index: AQHX5p8c66KPWVVpPkyO7EmmEHbgQKwfvrmA
Date: Thu, 2 Dec 2021 13:45:05 +0000
Message-ID: <15afc90ddc773f20003ec3ea446f0603927cd0ab.camel@intel.com>
References: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
 <20211201103320.2211867-4-anusha.srivatsa@intel.com>
In-Reply-To: <20211201103320.2211867-4-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD4D0CF31D68644BA85EBC3BACC13301@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 3/3] drm/i915/rpl-s: Enable guc submission by
 default
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

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDAyOjMzIC0wODAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IFRob3VnaCwgUlBMLVMgaXMgZGVmaW5lZCBhcyBzdWJwbGF0Zm9ybSBvZiBBREwtUywgdW5s
aWtlDQo+IEFETC1TLCBpdCBoYXMgR3VDIHN1Ym1pc3Npb24gYnkgZGVmYXVsdC4NCj4gDQo+IHYy
OiBSZW1vdmUgZXh0cmEgcGFyZW50aGVzaXMgKEphbmkpDQo+IHYzOiBzL0lTX1JBUFRPUkxBS0Uv
SVNfQURMU19SUExTIChKYW5pKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogU3dhdGhpIERoYW5hdmFudGhyaSA8c3dhdGhp
LmRoYW5hdmFudGhyaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRz
YSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMNCj4gaW5kZXggMmZlZjNiMGJiZTk1Li44ZjE3MDA1Y2U4NWYgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYw0KPiBAQCAtMzUsNyArMzUsNyBAQCBzdGF0aWMg
dm9pZCB1Y19leHBhbmRfZGVmYXVsdF9vcHRpb25zKHN0cnVjdCBpbnRlbF91YyAqdWMpDQo+ICAJ
fQ0KPiAgDQo+ICAJLyogSW50ZXJtZWRpYXRlIHBsYXRmb3JtcyBhcmUgSHVDIGF1dGhlbnRpY2F0
aW9uIG9ubHkgKi8NCj4gLQlpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkpIHsNCj4gKwlpZiAoSVNf
QUxERVJMQUtFX1MoaTkxNSkgJiYgIUlTX0FETFNfUlBMUyhpOTE1KSkgew0KPiAgCQlpOTE1LT5w
YXJhbXMuZW5hYmxlX2d1YyA9IEVOQUJMRV9HVUNfTE9BRF9IVUM7DQo+ICAJCXJldHVybjsNCj4g
IAl9DQoNCg==
