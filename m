Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 109A0557D3E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C545210E047;
	Thu, 23 Jun 2022 13:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F14910E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655991961; x=1687527961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/XnBthblSE8CvvU1gibxafIpgzcqLnW+FV8i/7+sSLA=;
 b=aISv1jhEuB3Nlh1j+bfnGPldWW5GujhOb7ESBUtG3f3km9AVwLLDla3l
 sVLLhsFW6tKCAeacNnd24AWZrywtqdiiMM1x6Az1jESfachRsnpb6KTws
 BpHxbHq4Ijuod7GRqsfMnZZU8aE1a5YQ+sFsRRwhBWHujISSYL35stl+b
 3cLO4VN8OcrvH7ZMK3QCJKLzAqxgCGIFbaA7bo7E0yIB8JQBeOvrwTi5e
 dHuhPbaNajXZmTo1F4Bg1LXVdP070m69b5L4xrjdqeQ1ZdIwqChKdGHeD
 rG5g78Q/gZmxO8a0ghzLkrJBQEOM6+RbPVxBgaUnCgJcwRkW4v/0Ssdzv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="261153702"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="261153702"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:46:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="586161962"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 23 Jun 2022 06:46:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 06:46:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 06:45:59 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 23 Jun 2022 06:45:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "hbh25y@gmail.com" <hbh25y@gmail.com>
Thread-Topic: [PATCH] drm: i915: fix a possible refcount leak in
 intel_dp_add_mst_connector()
Thread-Index: AQHYaPVOIovuOFJtuUiteEuitAUJL61dsg6AgAAAggA=
Date: Thu, 23 Jun 2022 13:45:59 +0000
Message-ID: <4b7980446f121a94c0b500447e72c5e9aa0e16a2.camel@intel.com>
References: <20220516071922.22955-1-hbh25y@gmail.com>
 <2a11c3b90166cbc4a615db24f8dae75cfe31b5ae.camel@intel.com>
In-Reply-To: <2a11c3b90166cbc4a615db24f8dae75cfe31b5ae.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4CC4BD02AA60F74EB1AF69C49F5F7E8A@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm: i915: fix a possible refcount leak in
 intel_dp_add_mst_connector()
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

T24gVGh1LCAyMDIyLTA2LTIzIGF0IDEzOjQ0ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gTW9uLCAyMDIyLTA1LTE2IGF0IDE1OjE5ICswODAwLCBIYW5neXUgSHVhIHdyb3RlOg0KPiA+
IElmIGRybV9jb25uZWN0b3JfaW5pdCBmYWlscywgaW50ZWxfY29ubmVjdG9yX2ZyZWUgd2lsbCBi
ZSBjYWxsZWQgdG8gdGFrZSANCj4gPiBjYXJlIG9mIHByb3BlciBmcmVlLiBTbyBpdCBpcyBuZWNl
c3NhcnkgdG8gZHJvcCB0aGUgcmVmY291bnQgb2YgcG9ydCANCj4gPiBiZWZvcmUgaW50ZWxfY29u
bmVjdG9yX2ZyZWUuDQo+IA0KPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCkRvbid0IGtub3cgd2h5IGJ1dCBvdXIgQ0kgZGlkIG5v
dCBjYXVnaHQgeW91ciBwYXRjaC4NCkNhbiB5b3UgcGxlYXNlIHJlc2VuZCBpdCB3aXRoIG15IFJl
dmlld2VkLWJ5IHRvIGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcgPw0KDQo+IA0KPiA+
IA0KPiA+IEZpeGVzOiAwOTFhNGY5MTk0MmEgKCJkcm0vaTkxNTogSGFuZGxlIGRybS1sYXllciBl
cnJvcnMgaW4gaW50ZWxfZHBfYWRkX21zdF9jb25uZWN0b3IiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6
IEhhbmd5dSBIdWEgPGhiaDI1eUBnbWFpbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAxICsNCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jDQo+ID4gaW5kZXggZTMwZTY5OGFhNjg0Li5mN2Q0NmVhM2FmYjkg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0
LmMNCj4gPiBAQCAtODQxLDYgKzg0MSw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
aW50ZWxfZHBfYWRkX21zdF9jb25uZWN0b3Ioc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvDQo+ID4g
IAlyZXQgPSBkcm1fY29ubmVjdG9yX2luaXQoZGV2LCBjb25uZWN0b3IsICZpbnRlbF9kcF9tc3Rf
Y29ubmVjdG9yX2Z1bmNzLA0KPiA+ICAJCQkJIERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5UG9y
dCk7DQo+ID4gIAlpZiAocmV0KSB7DQo+ID4gKwkJZHJtX2RwX21zdF9wdXRfcG9ydF9tYWxsb2Mo
cG9ydCk7DQo+ID4gIAkJaW50ZWxfY29ubmVjdG9yX2ZyZWUoaW50ZWxfY29ubmVjdG9yKTsNCj4g
PiAgCQlyZXR1cm4gTlVMTDsNCj4gPiAgCX0NCj4gDQoNCg==
