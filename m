Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B3682A74E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 06:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C63A10E09B;
	Thu, 11 Jan 2024 05:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6BF10E09B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 05:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704951966; x=1736487966;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=e17Ou5kVHQnkI8dzYj0Zc1yJQpRZlGXoFStXCsLcT2Y=;
 b=EC+1saM5KN7QexsxgYzs5albq8fQiDEDu7gCIvLS4kjzYE4dyhAv/W1v
 b3qFs3pJQKgEn2kZZYhPJtsi2fPyjC3hTGfXnz/M5oiH6sHea2UIYBw9K
 3qnQCuBxr0YqVLYoB3OIRl8drqvetBUohGjbwKDOwVaR3cENPz/ZZj7Dn
 UL6Nk3DpyRdA3SwHLr+i4dP9ha19urEu+1na6dNHUINz+VE2pvHYvOocR
 2mScATF0H977tw/4B32CSaSTz49wdPSSvFT8pxqBPHB1e7+hoIIWJsLn3
 BAx8029GFXMVnBBh2x7oQITwTbs299sPSHrx4B3ppj8ufQgZvMM4m6LN4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="12100945"
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="12100945"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 21:44:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="955633009"
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="955633009"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 21:44:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 21:44:26 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 21:44:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 21:44:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgNxhiBILbglL73eChdV5o6B0TiRwR/BO+WkGIwaE5g521O7ran6SzprNtR4Qnebu/c7VczWWwMtGbzacWo0SVkN/faVHorwCzfnm1Ck1WwgfrjJpkuuZQG7ban2NWI9hMHb4c6Iyf7/A0Alwtug/5p9Vd3bPSuV7pCyQMWbBg+FORq2HlbdAqYjeIj4PSlB9PFCBvZiP99ordgOalgFgAxrEEoY192kpnvcQcYcAPP5rNwGwCJ6kl8f1DoU7Knd4qJkqmSViIIsXopsGF23uQ7GDbXStnr/glHfvSaQ9ztjZSqGn4NQdvI1+ZrEk/iscUKz2Vr29AncQFE2thgN3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e17Ou5kVHQnkI8dzYj0Zc1yJQpRZlGXoFStXCsLcT2Y=;
 b=MqHBEJoeZFOmO8i7Q8i5xLRzPe7canB/uA3bd78oaVZ5Q/Vg0mj0WXaLEhQ1N0MVWvao95WiDodoqQ+9TrYLYX9RIYIv5+zkU+6i1iiL3sCct8xuTrjvjOQqLnexExYGPyaQ0GFNyVGjSnMZ1Vm+F7B35P2B1N4OFcq0zgfT+mTq+g4Cp6F6QEa0v2FfexivkbjkXPe5yQiPZqzT9+KQeL89GvQO4Kc61kMfahCnExiTvEy+kIIU2iUCLI2OlWk93ASXrrhoyUqfYvX+iYIG8cWRZntLPSZblNI/S7YKVEmxh3u2I/NViV1KGu0CKP3tszf/gxQcrVH7WqMwAQxlZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by LV8PR11MB8487.namprd11.prod.outlook.com (2603:10b6:408:1ed::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.24; Thu, 11 Jan
 2024 05:44:24 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Thu, 11 Jan 2024
 05:44:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 01/13] drm/i915/psr: Disable panel replay for now
Thread-Topic: [PATCH v2 01/13] drm/i915/psr: Disable panel replay for now
Thread-Index: AQHaQ8bcB+D2NNrd9kaJ1IG9D4NpfrDUGAKw
Date: Thu, 11 Jan 2024 05:44:23 +0000
Message-ID: <PH7PR11MB598154FFE91EB8183EC0A6C2F9682@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-2-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|LV8PR11MB8487:EE_
x-ms-office365-filtering-correlation-id: 4037d6b2-89e5-4a90-bab0-08dc12685dca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YyzR25QMLjm4b3rHBOGDpdS/sA6SxZZEm2gmGrpDsHBCHetAYGwwGQKudlTdL8NVl7V9NGkD4Ih1pHfBeYl/Q3I+p4AQsAfgUewO3a1VP8vM3OxYy4lE2Z0kIaFV57A+fKQYfsg2VDxKAOLYBRrKyM9/o1fgEixI4Fs99gq8wX49PVeOIBbsXHEqxwg2kYNaOcj+0CJpZ+E7JfGPUITR1caOLHOcCpDQoFnZ+sD1AVbQbq0Ofl4uceciQPolnWtA1APQyIP/wUhDp8Eg2ycSuSBE1l6YLUh0M3WJkM2NOVWP3WBh5mAU9iuChE3UfRnY2z8dRzrYtSI8Fb0LRr1Ku4vPjARjiyXZCZWg0rkzVYQkQIInX378mqZJT8H2RnL8vwdPhCimS8gUtSilHqsu1dGtTlwcN8nVs/BbrwzbI2H7nvwQb7Hq+hGl5fAAjP3jyBeFnwKwl3vjLEJ17F3b733h5cQnwTCAmlT55nf0OvfBnPzVoMquPDjnQ9fEoIeb4PD8fQ4WG45Gi+6kUk3AYymFPf74QNWvK1Zx70je6ml1j+/v3tbwfcimUBqa7GZ357tpHHiQUc01kZptemRSYNrNRgWfwIKYX0G7ml5nHPMNolbbAjC64bR5Jh86qSsH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(376002)(346002)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(55016003)(83380400001)(41300700001)(38070700009)(82960400001)(33656002)(86362001)(66946007)(76116006)(122000001)(38100700002)(55236004)(66574015)(316002)(26005)(9686003)(53546011)(66446008)(478600001)(66556008)(110136005)(2906002)(71200400001)(64756008)(7696005)(66476007)(6506007)(8676002)(5660300002)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDR0QWJiQUtXa2k0SDNKOUE2dXpGeUtQNjg4Rkp0MTlNS1J4WEdRK2pQazI1?=
 =?utf-8?B?RlhJcU1LMlRCQVJHU291RTVYeENneFlLSko3dGRvK0s3QkpPM2tkeWJDS2wr?=
 =?utf-8?B?VmF2OVdlbHByTGQxUHRDVjhibE5hcWxrSzRSd2pRNjhYNnhmUnZndlA0QVlL?=
 =?utf-8?B?K1dIcmJjTDByTG9rNEN4TEdMQ0t4d2dmOEFZMEJpbW42bFpWNDdEMlg0aS8r?=
 =?utf-8?B?czFzbXlpeVJLT0VQQVFNQ1g5VXVqRGxiTGE2VDlSMEsvbjNYOExUTWRJTXh2?=
 =?utf-8?B?cHpPQ1FrSTh2bExoV3dJajBNcFpWdUI0MHAwNC91N3hkeUJ0ajNLakQxLzVS?=
 =?utf-8?B?WTVKNFJIbkZrM3NiUlY4OFRJNGk0SlBLVHRMUVUvV1hGb2dTZllRWmpJTWY4?=
 =?utf-8?B?KzdqVmRhdS8xbVRYREdoWkswUkhWM0t2SEVjMDV3SGI5d01VWDdkTzR3NFli?=
 =?utf-8?B?ZmZEdXU2VFdEOHF0akxoNC9acTg2ckYxWXlaaDZadFVpNmFoRUtKY3I0cjBM?=
 =?utf-8?B?YmhvNDFCeDJoREl2dVlyMm5DZlljcjViOEc5QW9UVnI4ekdURWQ0bEFwc212?=
 =?utf-8?B?M2dJMkJaSkw4QlBpTmtPUWhSYlF5SVZiYmNlcXdSZHFiOVBlZGtrci9JdUdz?=
 =?utf-8?B?Z2JHbU0vQ2RqRysyTHR3VnRVeS9KTWxjM2puWmZPdTRnQlRDbVNseEJPdWZv?=
 =?utf-8?B?VjBqY2g3WFNVajRETUw3ZHBWdEc1VkZ3UnU3b2tWZkE1UjlTSzdXaHgrTDZX?=
 =?utf-8?B?Tk5IYTNwNUtFb1VzQkFBL1JjMlJVcSs5ekkvN1UrekdxR1R2R0xNTlluYytw?=
 =?utf-8?B?Y3pWNDhOb1ZuY1k4SHlhYkFRZkkxeHYwdFRKckpyVVR4dkszbmFLNkIwU0Zi?=
 =?utf-8?B?RmZSVXFhWHFxYkVWOVFKaTdBRUpYalErS2tKcjQzazMxSzFOWTZUaVFQZ2hH?=
 =?utf-8?B?bU5DeE5KditGVDFOYUlUcGtpUGRuZXpkTm9LU0dYMU9yZ0R1VitwUlRKZm85?=
 =?utf-8?B?RGVqMG9nb2ZoZ2dOcUlUdExtWXo4Y21FbEVzQ3FhOUhyc0NvQUVKNzNBRy9n?=
 =?utf-8?B?SGs5NWZuc0lVY1EzNlh4RWhrTkZJWHQwaHZwSitodkFSL1VaMi8xdnQwSzJV?=
 =?utf-8?B?WUl2VXhwNjhFZnZ6cnN6S0lVRlJiTjdQbzQvN1U3bWRxelpTbk5XWHQwQm9N?=
 =?utf-8?B?bjBxK0pyZVUxOUlzUmxnRTh6bkwwZlRaYmd6OFRNalpJOFBMaFE0RXpVc1hO?=
 =?utf-8?B?WFFwSSt1YWtZQ3B2a1VITU9ZdFpPQlRuVkZDRitmOExYQVhld2xLdUFFMG1G?=
 =?utf-8?B?dTZCMnFqVVFMK0p1QmI5VndjRDVGeGcyZFlWSVM3UFI0am9vbmliL1pVQTdr?=
 =?utf-8?B?bHc2eExDNUd0cWhnK2l3dFNvSy9GMm1KMmoxNnA1NnBLWG8wV3Z5alZEeDBh?=
 =?utf-8?B?bjRPVTJTZmlpR3NFaVF6dm9xbHUzdEZpQm1SMFEvd0RoY2kyZVhwVnIraFdJ?=
 =?utf-8?B?Z0kwcmxVUVgyZGdPMW82MURvbWRGeGIzTE0zUm1lcW12WE1TZmo5Z2F3Ynp4?=
 =?utf-8?B?UmdtMnFoVGczS3doeFVrQTJQUEtaaDYwZHFhSmIycWlPM2xLT3pZVjEvOEU5?=
 =?utf-8?B?TFRsYVI3OVIrTGJyMFFoYWFLc1c0Y2ZSZmN1UXJmcHFiN3lHbXVhQ1Joem5K?=
 =?utf-8?B?NHprM3ZPNkxHanZQdHpHTFpVYzNYL09INWRLRUhPOU9QZFVwUTB0M0NTNHkv?=
 =?utf-8?B?d1pSelZOYm51cEgwVUlYZlZEQlhXUHd6ZFZReDlTdE0rMWd6S29hdWpITGJi?=
 =?utf-8?B?RGtDZUlQSTF3OUYzZEVzVDNCL05FdmdPZ2ZMaTQwZEErTDRTcDFxSnlSVjJE?=
 =?utf-8?B?bjJPMVd3RHA5ZlZqbFVCeVNXKzc5V1o5WW9Ja0R3anpnUlhhVzFYL1prM2J5?=
 =?utf-8?B?OW1EVk5hdEFna2lISS9NajZWdHVmNHA1U2daK1FGemNxcWp0NVNydDhnaitu?=
 =?utf-8?B?L2pZak5MUjgrV08zWWR1UkNHTVdSdmtyWE1PaEhxVWgrRXZvQVE1WThXV3VM?=
 =?utf-8?B?aXlVbGZEUVNBOC9sNUFDQ0RFVUxwTHM1NnNTcTZuRFBrNWtEdlo5bDNwZExH?=
 =?utf-8?Q?WnjgyhcZVedBVLahWHOlUhmcB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4037d6b2-89e5-4a90-bab0-08dc12685dca
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 05:44:23.8833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Y4ERXIXqdc1digXKwkBzbO9R1BWYaewjgyn+nK8E4f46sIzXkdAcDYHJRte3eyrFQHSJ32RtbCgUIKuml0Mjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8487
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEwLCAyMDI0IDY6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IHYyIDAxLzEzXSBkcm0vaTkxNS9wc3I6IERpc2FibGUgcGFuZWwgcmVwbGF5IGZvciBub3cNCj4g
DQo+IFBhbmVsIHJlcGxheSBpcyBub3QgY29tcGxldGVseSB2YWxpZGF0ZWQgeWV0LiBMZXQncyBk
aXNhYmxlIGl0IGZvciBub3cuDQoNCkhpLA0KDQpBcyBJIHVuZGVyc3Rvb2QgY3VycmVudGx5IHRo
ZSBmZWF0dXJlIGlzIG5vdCB0ZXN0ZWQgZHVlIHRvIHVuYXZhaWxhYmlsaXR5IG9mIHRoZSBwYW5l
bCBhbmQgYXQgdGhlIHNhbWUgdGltZSBnb29kIHRvIGNoZWNrIG5lZ2F0aXZlIHRlc3RpbmcgbGlr
ZSBpZiB0aGlzIGZlYXR1cmUgaXMgY2F1c2luZyBhbnkgcmVncmVzc2lvbiBmb3Igb3RoZXIgZmVh
dHVyZSBsaWtlIHBzci9wc3IyLiBJbnN0ZWFkIG9mIGhhcmRjb2RpbmcgSXMgaXQgb2sgdG8gaGF2
ZSBhIGtlcm5lbCBjbWRsaW5lIHBhcmFtZXRlciB0byBlbmFibGUvZGlzYWJsZSB0aGlzIGZlYXR1
cmU/IENhbiB5b3UgcGxlYXNlIHNoYXJlIHlvdXIgdmlldy4gICANCg0KUmVnYXJkcywNCkFuaW1l
c2gNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyAgICAgICAgICAgfCAxMCArKysrKysrKystDQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IGFl
MmU4Y2ZmOWQ2OS4uNjM0MGZhYmQwNDVjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTY5Miw2ICsxNjky
LDcgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAjZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0VOQUJM
RV9TRUxfRkVUQ0gJCTB4NA0KPiAgI2RlZmluZSBJOTE1X1BTUl9ERUJVR19JUlEJCQkweDEwDQo+
ICAjZGVmaW5lIEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9ESVNBQkxFCTB4MjANCj4gKyNk
ZWZpbmUgSTkxNV9QU1JfREVCVUdfUEFORUxfUkVQTEFZX0RJU0FCTEUJMHg0MA0KPiANCj4gIAl1
MzIgZGVidWc7DQo+ICAJYm9vbCBzaW5rX3N1cHBvcnQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBkZmYyMWE1ZWRlYjcuLjk3MDVhNzVlMDYz
YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBA
IC0yMTQsNiArMjE0LDExIEBAIHN0YXRpYyBib29sIHBzcjJfZ2xvYmFsX2VuYWJsZWQoc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wg
cGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsN
Cj4gKwlyZXR1cm4gIShpbnRlbF9kcC0+cHNyLmRlYnVnICYNCj4gSTkxNV9QU1JfREVCVUdfUEFO
RUxfUkVQTEFZX0RJU0FCTEUpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdTMyIHBzcl9pcnFfcHNy
X2Vycm9yX2JpdF9nZXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsgQEAgLQ0K
PiAxMzg2LDcgKzEzOTEsNyBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCX0NCj4gDQo+ICAJaWYgKENBTl9QQU5FTF9SRVBM
QVkoaW50ZWxfZHApKQ0KPiAtCQljcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0gdHJ1ZTsN
Cj4gKwkJY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSA9DQo+IHBhbmVsX3JlcGxheV9nbG9i
YWxfZW5hYmxlZChpbnRlbF9kcCk7DQo+ICAJZWxzZQ0KPiAgCQljcnRjX3N0YXRlLT5oYXNfcHNy
ID0gX3Bzcl9jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSk7DQo+IA0KPiBA
QCAtMjg0NSw2ICsyODUwLDkgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiAgCS8qIERpc2FibGUgZWFybHkgdHJhbnNwb3J0IGZvciBub3cgKi8NCj4g
IAlpbnRlbF9kcC0+cHNyLmRlYnVnIHw9IEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9ESVNB
QkxFOw0KPiANCj4gKwkvKiBEaXNhYmxlIHBhbmVsIHJlcGxheSBmb3Igbm93ICovDQo+ICsJaW50
ZWxfZHAtPnBzci5kZWJ1ZyB8PSBJOTE1X1BTUl9ERUJVR19QQU5FTF9SRVBMQVlfRElTQUJMRTsN
Cj4gKw0KPiAgCS8qIFNldCBsaW5rX3N0YW5kYnkgeCBsaW5rX29mZiBkZWZhdWx0cyAqLw0KPiAg
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMikNCj4gIAkJLyogRm9yIG5ldyBwbGF0Zm9y
bXMgdXAgdG8gVEdMIGxldCdzIHJlc3BlY3QgVkJUIGJhY2sgYWdhaW4NCj4gKi8NCj4gLS0NCj4g
Mi4zNC4xDQoNCg==
