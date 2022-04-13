Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FF64FF846
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 16:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F7110F1CC;
	Wed, 13 Apr 2022 14:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830ED10F19C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 14:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649858423; x=1681394423;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TOkI74tqfcp0OmtGmxlVghk5lO/m1qSdkJej3UOVwCc=;
 b=KoQxNSgxZ4FajhZpYoyQM+U6zNfAxneGIB8xIPsW43d8RZALh67JLJXu
 ox7CpG1oGdCq70hkdLiysMCyKejpkM7vPIwfQDwADHJI/OQMA0usH8I0+
 k+0cq9N6QqZw4c15bqSSSGwIT9ja2sCWNNDynZ0zXCFVuHfeJES+13urj
 +TuVXtOvW5bC8d5v/r7HFIyTyROelTrZPkXCeP6b2EpeKsPWLzqeph+7L
 GQ4M2bdxVl0zXFAVw3++xA6l0cAXKQ6KWvBzo12mmcfFsDsDDvHGl/Hcv
 RGPutbVPtCDq5dPMhcMbSZq288BXzbzLqB5BpOZUHCbLu6o6GrDakFJyN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="325573553"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="325573553"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 06:51:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="573274754"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 13 Apr 2022 06:51:15 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 06:51:13 -0700
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84]) by
 fmsmsx604.amr.corp.intel.com ([10.18.126.84]) with mapi id 15.01.2308.027;
 Wed, 13 Apr 2022 06:51:13 -0700
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/7] drm/i915/fbc: FBC frontbuffer stuff
Thread-Index: AQHYOHV2TehyjHisVke48ghMD6+4v6zuCdgw
Date: Wed, 13 Apr 2022 13:51:13 +0000
Message-ID: <7e8b9c6dd2ac4324995ebf3bdf80568e@intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/fbc: FBC frontbuffer stuff
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTUsIDIwMjIgNDowMCBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMC83XSBkcm0vaTkxNS9mYmM6IEZCQyBmcm9udGJ1ZmZlciBzdHVmZg0KPiANCj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEF2
b2lkIGFsbCB0aGUgRkJDIGZyb250YnVmZmVyIHZzLiBhdG9taWMgY29tbWl0IHJhY2luZXNzIGJ5
IG5vdCBkb2luZyBhbnkgRkJDDQo+IG51a2VzIHdoaWxlIGEgZmxpcCBpcyBwZW5kaW5nLiBBbGxv
d3MgdXMgdG8gcmVtb3ZlIHRoZSBsYXN0IGxvY2tzIGZyb20gdGhlIGk5eHgNCj4gcGxhbmUgY29k
ZS4NCj4gDQo+IEkgYWxzbyB3YW50IHRvIGV4cGxvcmUgdGhlIGlkZWEgb2YgYWx3YXlzIGdlbmVy
YXRpbmcgRFNCIGJhdGNoZXMgZm9yIHBpcGUNCj4gY29tbWl0cyBhbmQganVzdCBleGN1dGluZyB0
aGVtIG9uIHRoZSBDUFUgaWYgbm8gRFNCIGhhcmR3YXJlIGlzIGF2YWlsYWJsZS4NCj4gTG9ja2Vk
IHJlZ2lzdGVyIHdyaXRlcyAoYW5kIGFueSByZWdpc3RlciByZWFkcywgb2Ygd2hpY2ggdGhlcmUg
YXJlIHN0aWxsIGEgZmV3KQ0KPiBwcmV2ZW50IG1lIGZyb20gZG9pbmcgdGhhdC4NCj4gDQoNCkFz
IGZhciBhcyBJIGhhdmUgdW5kZXJzdG9vZCwgd2hhdCB3ZSB0cnkgdG8gYWNoaWV2ZSB3aXRoIHRo
aXMgc2VyaWVzIGxvb2tzIG9rIHRvIG1lLg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBWaWxsZSBTeXJqw6Rsw6QgKDcpOg0KPiAgIGRybS9p
OTE1L2ZiYzogRWxpbWluYXRlIHBvc3NpYmxlX2ZyYW1lYnVmZmVyX2JpdHMNCj4gICBkcm0vaTkx
NS9mYmM6IFN0cmVhbWxpbmUgZnJvbnRidWZmZXIgYnVzeSBiaXRzIGhhbmRsaW5nDQo+ICAgZHJt
L2k5MTUvZmJjOiBTa2lwIG51a2Ugd2hlbiBmbGlwIGlzIHBlbmRpbmcNCj4gICBkcm0vaTkxNTog
UmVtb3ZlIHJlbWFpbmluZyBsb2NrcyBmcm9tIGk5eHggcGxhbmUgdWRwYXRlcw0KPiAgIGRybS9p
OTE1L2ZiYzogUmVtb3ZlIGludGVsX2ZiY19nbG9iYWxfZGlzYWJsZSgpDQo+ICAgZHJtL2k5MTUv
ZmJjOiBJbnRyb2R1Y2UgaW50ZWxfZmJjX3Nhbml0aXplKCkNCj4gICBkcm0vaTkxNS9mYmM6IENh
bGwgaW50ZWxfZmJjX2FjdGl2YXRlKCkgZGlyZWN0bHkgZnJvbSBmcm9udGJ1ZmZlcg0KPiAgICAg
Zmx1c2gNCj4gDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYyAg
ICB8IDEyIC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAgNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyAg
ICAgfCA4OCArKysrKysrKystLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuaCAgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9zdXNwZW5kLmMgICAgICAgICAgfCAgNCAtDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDQ0IGluc2Vy
dGlvbnMoKyksIDY2IGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
