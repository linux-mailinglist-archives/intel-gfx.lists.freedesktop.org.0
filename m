Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C67052627D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 15:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E36510EFBE;
	Fri, 13 May 2022 13:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16BF10EFBE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 13:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652446906; x=1683982906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mNlupGp9OkfVj86TxMRy/mqK3OXm4t6TbZObWOnDFRA=;
 b=O4GlEVyKWgViYOR5GluDxHBP1fJquD56F4rSd2y7cnh039h9W5K68Iwj
 jI7/bXYxqewS5TLWpcpUhTiJ8ugCTht2lXbSAeMC/FCo7dAyO91H0AGDI
 kugoH9+MYYYDvctmdWoql7YUWYp3quHPjZb2zLTgvYyzt+klM5l+tQrIz
 +J6QFcIlVnQSxKPPWXYLdT7HvfrFXQoHDePKEZhXnU7r+Wk8zzl3bnqCt
 NHnTo30NFpK69yL6g2PbSgxkjPyJga1j2CdDiHf4o2400uBeHAyTxixzc
 C0DdB/neiYmuPAvZp9lvijIoQWBRa4BOX0dnYrEAmFac97SGK3T7hSVS9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250829168"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="250829168"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 06:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="595212137"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2022 06:01:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 06:01:45 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 13 May 2022 06:01:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v4 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYZsVH06RfnwaLbU+IAGACKfCguq0dOv8A
Date: Fri, 13 May 2022 13:01:44 +0000
Message-ID: <2afc0fdd881010dba658a49b9a49824951198e55.camel@intel.com>
References: <20220513123027.655313-1-jouni.hogander@intel.com>
 <20220513123027.655313-2-jouni.hogander@intel.com>
In-Reply-To: <20220513123027.655313-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5A90BA129FE205459A73D98D07179250@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/psr: Use full update In
 case of area calculation fails
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

T24gRnJpLCAyMDIyLTA1LTEzIGF0IDE1OjMwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBoYXZlIHNvbWUgY29ybmVyIGNhc2VzIHdoZXJlIGFyZWEgY2FsY3Vs
YXRpb24gZmFpbHMuICBGb3INCj4gdGhlc2Ugc2VsIGZldGNoIGFyZWEgY2FsY3VsYXRpb24gZW5k
cyB1cCBoYXZpbmcgdXBkYXRlIGFyZWEgYXMgeTEgPSAwLA0KPiB5MiA9IDQuIEluc3RlYWQgb2Yg
dGhlc2UgdmFsdWVzIHNhZmVyIG9wdGlvbiBpcyBmdWxsIHVwZGF0ZS4NCj4gDQo+IE9uZSBvZiBz
dWNoIGZvciBleGFtcGxlIGlzIGJpZyBmYiB3aXRoIG9mZnNldC4gV2UgZG9uJ3QgaGF2ZSB1c2Fi
bGUNCj4gb2Zmc2V0IGluIHBzcjJfc2VsX2ZldGNoX3VwZGF0ZS4gQ3VycmVudGx5IGl0J3Mgb3Bl
biB3aGF0IGlzIHRoZQ0KPiBwcm9wZXIgd2F5IHRvIGZpeCB0aGlzIGNvcm5lciBjYXNlLiBVc2Ug
ZnVsbCB1cGRhdGUgZm9yIG5vdy4NCj4gDQo+IHYyOiBDb21taXQgbWVzc2FnZSBtb2RpZmllZA0K
PiB2MzogUHJpbnQgb3V0IGRlYnVnIGluZm8gb25jZSB3aGVuIGFyZWEgY2FsY3VsYXRpb24gZmFp
bHMNCj4gdjQ6IFVzZSBkcm1faW5mb19vbmNlDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMTIgKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDA2ZGI0MDdlMjc0OS4uMWYwMzFlYmMxNDU2IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE2ODUsNiArMTY4NSw3IEBAIHN0
YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjDQo+ICBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiAgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMp
Ow0KPiAgCXN0cnVjdCBkcm1fcmVjdCBwaXBlX2NsaXAgPSB7IC54MSA9IDAsIC55MSA9IC0xLCAu
eDIgPSBJTlRfTUFYLCAueTIgPSAtMSB9Ow0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
bmV3X3BsYW5lX3N0YXRlLCAqb2xkX3BsYW5lX3N0YXRlOw0KPiBAQCAtMTc3MCw2ICsxNzcxLDE3
IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRf
YXJlYSk7DQo+ICAJfQ0KPiAgDQo+ICsJLyoNCj4gKwkgKiBUT0RPOiBGb3Igbm93IHdlIGFyZSBq
dXN0IHVzaW5nIGZ1bGwgdXBkYXRlIGluIGNhc2UNCj4gKwkgKiBzZWxlY3RpdmUgZmV0Y2ggYXJl
YSBjYWxjdWxhdGlvbiBmYWlscy4gVG8gb3B0aW1pemUgdGhpcyB3ZQ0KPiArCSAqIHNob3VsZCBp
ZGVudGlmeSBjYXNlcyB3aGVyZSB0aGlzIGhhcHBlbnMgYW5kIGZpeCB0aGUgYXJlYQ0KPiArCSAq
IGNhbGN1bGF0aW9uIGZvciB0aG9zZS4NCj4gKwkgKi8NCj4gKwlpZiAocGlwZV9jbGlwLnkxID09
IC0xKSB7DQo+ICsJCWRybV9pbmZvX29uY2UoJmRldl9wcml2LT5kcm0sICJTZWxlY3RpdmUgZmV0
Y2ggYXJlYSBjYWxjdWxhdGlvbiBmYWlsZWQgaW4gcGlwZUEiKTsNCg0KUGxlYXNlIGRvIG5vdCBo
YXJkY29kZSB0byBwaXBlIEEsIGdldCB0aGUgcGlwZSBmcm9tIHN0YXRlIGFuZCBwcmludCBpdC4N
Cg0KPiArCQlmdWxsX3VwZGF0ZSA9IHRydWU7DQo+ICsJfQ0KPiArDQo+ICAJaWYgKGZ1bGxfdXBk
YXRlKQ0KPiAgCQlnb3RvIHNraXBfc2VsX2ZldGNoX3NldF9sb29wOw0KPiAgDQoNCg==
