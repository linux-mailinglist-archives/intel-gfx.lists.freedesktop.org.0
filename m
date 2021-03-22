Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B1434381F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 06:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C101689B68;
	Mon, 22 Mar 2021 05:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEC889B68
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 05:05:31 +0000 (UTC)
IronPort-SDR: ZiX1GHcnfXjRbC7yLPA6OEYkEnFHU8aEHijOcuAX/zxR9ccRQLtxo+HAdLP5njjS5p18b3ueaT
 EY+N/bXwZEZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="177778399"
X-IronPort-AV: E=Sophos;i="5.81,266,1610438400"; d="scan'208";a="177778399"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 22:05:31 -0700
IronPort-SDR: tXa25A74tlivICRSdXjS7gpSRn3T/EIzixcjY2qpkefludcRw2CWqb7/WQhULY2V7hP1nTryTB
 1xbMbQjE/73A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,266,1610438400"; d="scan'208";a="442022009"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Mar 2021 22:05:30 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sun, 21 Mar 2021 22:05:30 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 10:35:28 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Mon, 22 Mar 2021 10:35:28 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1L2hk?=
 =?utf-8?Q?cp:_mst_streams_type1_capability_check_(rev2)?=
Thread-Index: AQHXHK5fTGeUJhpEFEKfUBsTp6FQ/KqPeBoQ
Date: Mon, 22 Mar 2021 05:05:28 +0000
Message-ID: <7af308ab0e0f4683b63fb6d62c95ef8c@intel.com>
References: <20210127100051.30595-1-anshuman.gupta@intel.com>
 <161615132491.8629.16730425417713103166@emeril.freedesktop.org>
In-Reply-To: <161615132491.8629.16730425417713103166@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/hdcp=3A_mst_streams_type1_capability_check_=28rev2?=
 =?utf-8?q?=29?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF0Y2h3b3JrIDxwYXRj
aHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4NCj4gU2VudDogRnJpZGF5LCBNYXJjaCAxOSwg
MjAyMSA0OjI1IFBNDQo+IFRvOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDog
4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1L2hkY3A6IG1zdCBzdHJl
YW1zIHR5cGUxDQo+IGNhcGFiaWxpdHkgY2hlY2sgKHJldjIpDQo+IA0KPiA9PSBTZXJpZXMgRGV0
YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNS9oZGNwOiBtc3Qgc3RyZWFtcyB0eXBlMSBj
YXBhYmlsaXR5IGNoZWNrIChyZXYyKQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvODYzNDUvDQo+IFN0YXRlIDogd2FybmluZw0KPiANCj4gPT0gU3Vt
bWFyeSA9PQ0KPiANCj4gJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcA0KPiBiYjkzYzY2
OGI3ODggZHJtL2k5MTUvaGRjcDogbXN0IHN0cmVhbXMgdHlwZTEgY2FwYWJpbGl0eSBjaGVjaw0K
PiAtOjE4OiBXQVJOSU5HOkJBRF9TSUdOX09GRjogRHVwbGljYXRlIHNpZ25hdHVyZQ0KPiAjMTg6
DQo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5j
b20+DQpkdXBsaWNhdGVkIHNpZ25hdHVyZSBnZXQgYWRkZWQgYnkgbWlzdGFrZSB3aGlsZSBmbG9h
dGluZyB0aGUgcmViYXNlZCBwYXRjaCwgSSB3aWxsIHJlbW92ZSB0aGUgZHVwbGljYXRlIHNpZ25h
dHVyZSB3aGlsZSBwdXNoaW5nIHRoaXMgcGF0Y2guDQpUaGFua3MsDQpBbnNodW1hbiBHdXB0YS4N
Cj4gDQo+IHRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDk2IGxpbmVzIGNo
ZWNrZWQNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
