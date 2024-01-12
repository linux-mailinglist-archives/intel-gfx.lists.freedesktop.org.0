Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF36A82BF23
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 12:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D1C10E112;
	Fri, 12 Jan 2024 11:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD54510E112
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 11:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705058388; x=1736594388;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hEgJ2D3CVJ3YPxxbENkIfMdTl/YjXEhykD2e73tldNs=;
 b=AUd2IWaPfSJE6+4JjTccqmucYWbAur8BfVrHU0lPXU3otuicsONkTbK7
 120bVg/RyG39HLgueUG+CT0vCrrTnxLlU3cOO8WKwAWTozX8T1D0xkHr1
 N9+9SxD7NULvj3GzCgfxCqd3S3+oCJBQXYxwSQtfm9aHZBB7rgiXp8nte
 a8KeckxM1NBtdpCTtnrX4AGi9m7hSUODWCVHe6Vk7avIaBs6c7dJqbWKu
 PDEGSjF8xJfXYkNLLdJIEMV9qp0BziVCoPPWJ1VighjnADV7gdODZzm9e
 TStISC56b8eBnCOeRfvRF0tPWZi3QX5sGK87QUbuEoKLuGIOAxhoTuWhG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5880735"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="5880735"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 03:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="24978521"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 03:19:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:19:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:19:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 03:19:46 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 03:19:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4Ycku0Ju3+QLB6Kb8sWzDDo+xS8S6WZzcXEpZqP02hmkoGs30v9tQPOEWPRI05bCXUmxAWGvsvlvaLWjm6l+xqvVcLrYVDZoeTLTDb4Za+fSm2qCOiED1n1Megs33uZGCPg4Mf+TaZu505xJiaYFNyIf+WboVi12WbEs9Oqgh5mdIM0i5U05+3IOKyAZF26UFrPGY89vgd/ft9K4778e1s7sALipfY+McxnCCNwQef69KMqgVPE6tneCbqXLSM8D6au4QeJsvkFy/afGHb/4mSbvLeOeklkxtcJta8E0CtzC/yZuvYPqPqxsB/X5FPhJ/viv8adktnaTdKbOCdKJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hEgJ2D3CVJ3YPxxbENkIfMdTl/YjXEhykD2e73tldNs=;
 b=VDDPIvZFUH6E6+BsLMGctTi6D4xE0oHLpHNmu2jlRw0shxIDThQlYToRepweZFT5Ss4B89PrAjSJNeaNfbnrRL2lfa3WTWpvBhPVTNgAeyvAQoI3mYphLQ83q0o6BbqoyzvgAeGGu/haM3iYaXaLG+Id0corRO7xRoD2764pvOsrxNSI9cChnU6gkn7eWaoRSMJMUmaQqTvke9Zy5E8gRJWv0T9staeWaahI8WY+raAITX89ejB7dLALhz/mX705OBMh0B9//a17sSs1eNcRT4yTgKZopPWjcyYom8GhIxoFcxBnYwPoGOjyoMWOigNuu8sVA2wk1raVGcNZmvP04w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8229.namprd11.prod.outlook.com (2603:10b6:8:15e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.24; Fri, 12 Jan
 2024 11:19:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Fri, 12 Jan 2024
 11:19:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 08/13] drm/i915/psr: Add sink_panel_replay_su_support
 to intel_psr
Thread-Topic: [PATCH v2 08/13] drm/i915/psr: Add sink_panel_replay_su_support
 to intel_psr
Thread-Index: AQHaQ8lQ/rB+cGehuESM67l+epFQc7DWB7oA
Date: Fri, 12 Jan 2024 11:19:43 +0000
Message-ID: <PH7PR11MB59814AE93724580A658473A8F96F2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-9-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8229:EE_
x-ms-office365-filtering-correlation-id: d657850f-3f36-46f2-dc86-08dc136060b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: watgpZkDNAUKRHhlHEJLZvpAdRH4AWDYy3lk2Seb+fdgq5oVt2t830itD/Lt2Zwr6qEqOERgl/zIQ9kI6/w3KBtZI6os5ri2HsZ/Siq/35wbdIFR7dzSHLre6Nn1n3auGyU0wwWBRMC4+tVPeisTvw3dK/0CI4MD3IG3xNdoYrThPXhRYQ5oQ6KR77xdsfHPIlHVKCSsoLNHkNyEQAFSOyNTqZPWu/dJQqB/yekBI+Hi7PoUkSq5BtSJg8/vxfFjP5+9xyICA8zjRQd3t6RDqnRu4WBXni6AuaitBBWodLR9YekNErh+7LZvTeCM9L+Arji7JOVoSMx4FxK11vO52c07+jKBvJJuVDxFZIAAoYYtoIi8P6jNN0ajIsxz3xq+LFUx0Ejz8U4KOZC8WLjcbyACyLsLYHqFzhfHKfKsrX14LjPAvuBeEjgEUqfhK/NOCcB+ZQkqxPfQdUB38fSpmZ5LhRPMtVqb53U5NgH1AXb5fYCuyT0gqMSN/ohuLG9+JHdvMnHRlgmrrGREttX/xTL8hKPKjWguz96SBo4aBXvFoih8XB059rLe2k+Rbmrs7lk0O4dFvCI+xu7v4SIfXkENnGIRh+tTVSkGeD8wox2OSgrKAX4uhjFgkSnCBO8F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(376002)(346002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(55016003)(66476007)(64756008)(66446008)(66556008)(66946007)(2906002)(5660300002)(8936002)(52536014)(86362001)(71200400001)(7696005)(110136005)(8676002)(76116006)(41300700001)(316002)(66574015)(82960400001)(33656002)(55236004)(53546011)(38100700002)(6506007)(38070700009)(478600001)(122000001)(9686003)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3RqWjJWTFNnZVl0ckhDU2FCalUvM0RDT21SSmJRN3NON3g1ZGxrNEtYRVJv?=
 =?utf-8?B?RkZHenFjNVQ3czhndVJPVkIvbDRCUHlweW1EU2g2dE9BM04xbjlNeVQ4TWJO?=
 =?utf-8?B?b0RxK3gydmJDYlpXcjQ0RnZNNk1raFFYT2hVV3NFWVFibFhoZi9PekNmOWlk?=
 =?utf-8?B?em5TQ3ZDSVc0ZEZVTkl0WkdjdFF4eUUzRHRVSWpkdUVxaTh1Q25pNDRiNkdS?=
 =?utf-8?B?S1BWZXAwV3VNd3NiL215a3EzaEtqWFlJWDdhN0VVOTN5eld4TmdmM2J0MUZv?=
 =?utf-8?B?bDdYdHowRGNiMnNUclhMYnZDVlltVXd5eXhJRmRiZHlOcW94RDF5aFlmRHE4?=
 =?utf-8?B?R2VoU1NEVmlRNk1tQllMQmNqNFFwdmVPeWhHNldLV1VCdEJXWFF2RitpNTd1?=
 =?utf-8?B?eEZBRXEvZ0JlK1dEaTR2LytaWkIxd0IrdDhmR04xU2pPbDhjUy9QMExuc2hH?=
 =?utf-8?B?UWVFeG5uaEJFMmxjSmE5N2JXaDhCNWdiZXM0V0hPY1lGUnRpdFJKUmRlVHlq?=
 =?utf-8?B?OThYQVYyZGhtSzk4d0hwOTMvbHRaMi9BSDJtdG5RT0E0STFJVkhKRHhYeWIx?=
 =?utf-8?B?L3JRQzRGY2xySkRJaHRkLzBDQmEzRzNDa2F4WDJCdFpwNll2QWdSUlFIdlo5?=
 =?utf-8?B?emtsUENBaWtJa2ZWeFhhbEUvNG5LWjNUbm5WdFMrWjRTRFJKa1czanZ1cUxm?=
 =?utf-8?B?emJJdGE5SDNpWFdVbVROVmQwV1l5SVdTYUlGRU9IR0VWSjd1Q0JPZU9OUE14?=
 =?utf-8?B?RmM4YnNqSHpCNHVYWUlhZ2kzdXdGUHV4LzRZZlpHTkduN3NhMW1lTkdRUUFL?=
 =?utf-8?B?ZXMxQkRKREZid3AyS2h2SGRKYWRoNU9Dci9DZjhIcExEblFHYlhZUlEycWl5?=
 =?utf-8?B?MWNrM2N6RG5QbGpLNktlUE8yMk1QODdqRFNmakU3UkNYTVNYdXhhWFVyQ3Qv?=
 =?utf-8?B?emZVcndOcVpQUzZYYlZlNVZSZ1MrdmZqTzR2cm5EdzUyMzE2TEFNSDVUWlh3?=
 =?utf-8?B?cEhPZDd1M1RseDNRUlFCcDhEK1dqVEF5V2NneHRZSkg3a2ovQWZXbUoyTUFl?=
 =?utf-8?B?Y2gxVDR1SWo0eEZsVnlNa295SVd4ODdNalpWOWR5YWVMQ1ZPN0NXVVZ5TUZI?=
 =?utf-8?B?aFpCbWxiZzhicDBOcWdqeTFUTUZBTktvKzBKYTErMi8reE1DeXJkVkE5VjhW?=
 =?utf-8?B?SURTRzlmU2NvR1Vkald6MXB1VGlleHJENEF5NlF5TTcvbVpqY2RxbWJ6dStR?=
 =?utf-8?B?YmlUUXFiRmYzYjdqOUd0aG1oenJIbnRkSHN1eGlLeWVyM0RFOWpnZ1VpZGxV?=
 =?utf-8?B?a0dwbll6WmpZNEVpYUJ2MGYwOUhjaGFUWENZeUxVN0pBeUNPTkRCdHlibll3?=
 =?utf-8?B?YlhvV09SMmlaOFBwcFROeDZab1FmWmVFMDFFNEw3dWlINzlXZVRWOGpJWHM5?=
 =?utf-8?B?cThBMFI1VktsNjBpRE9iclY5elJjblVPT0ExaXlxZ3h6S1V0VldvYTBjZnph?=
 =?utf-8?B?d2o3ajVnNXg2c0JHQ01OYi9xdVFQL2p0b3NBcVFmZURSOW1PZWd0aDhJZ240?=
 =?utf-8?B?UTU2REhUbFEvNUJQM2VyTzFGQ3VRMmIrTXlpRUVqQnp5WHhkV3AzWnpRZ0ZC?=
 =?utf-8?B?QlBMd0JGcU56enNveFZSK2xEVVZCTFlLemVjczJHd0x3YXpZSXlLbkRONXVC?=
 =?utf-8?B?WVprYlZvQmg0Vmgrd2dBWmgwOW0wT1FFcFo1eXhWbDV6K0hGNnRiNlpML0N2?=
 =?utf-8?B?UHMrV25vTlllN09iR2JFa3p4Y1duSUVZa2YrdXY2dXZYWHlzN2J5bENpYnpP?=
 =?utf-8?B?VG9vR3llYzFiL2t1UTU1Y1UyQ3hSV0Nqa2cxOWUwNFpyYnM1WkR2dG41L0ha?=
 =?utf-8?B?ZEtpMDlESzdvY1huWXBmSmdxZ3NQTm1nT3dDTDhhdGVpUUFJVE9qejVVa3hk?=
 =?utf-8?B?T3hZOVpxVnhqYnJSdkFEUDNWSEFkUXR5c0lObkZxNHZIZ25SY09QcGxuZmNQ?=
 =?utf-8?B?OHJjMnRwNUU5OFJSbDJPR3drT1J6bFdVZXkxZWwzMmFJSU5aMzZnMzBiaWp4?=
 =?utf-8?B?WTFsa2E0MTlXTHcvOGp2eHFlYWlSQ0MxTENzYWs5QkxOdk42RkQ1a2MwazFN?=
 =?utf-8?Q?6+7MNrR7ZdHdxmKLLInNWOKnM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d657850f-3f36-46f2-dc86-08dc136060b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 11:19:43.9616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CGqNRwUqM9U3MBp7E47FUbBNQMCGynK71mKgRukWKo72A5sRLWZwycHqA2h1c6/6eKrraYJCP7MmR2rQauzyow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8229
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
IHYyIDA4LzEzXSBkcm0vaTkxNS9wc3I6IEFkZCBzaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0
DQo+IHRvIGludGVsX3Bzcg0KPiANCj4gQWRkIG5ldyBib29sZWFuIHRvIHN0b3JlIHBhbmVsIHJl
cGxheSBzZWxlY3RpdmUgdXBkYXRlIHN1cHBvcnQgb2Ygc2luay4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMSAr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4
IDgzMTVlYzMwN2Q1Zi4uMzE1MTc0MWY0OWY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTcyMSw2ICsx
NzIxLDcgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAJdTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+
ICAJYm9vbCBzb3VyY2VfcGFuZWxfcmVwbGF5X3N1cHBvcnQ7DQo+ICAJYm9vbCBzaW5rX3BhbmVs
X3JlcGxheV9zdXBwb3J0Ow0KPiArCWJvb2wgc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydDsN
Cg0KVGhpcyBwYXRjaCBjYW4gYmUgc3F1YXNoZWQgd2l0aCB0aGUgcGF0Y2ggd2hpY2ggaXMgdXNp
bmcgdGhlIHZhcmlhYmxlLg0KRWFybHkgcGF0Y2hlcyBwc3IyIGdldCBtb2RpZmllZCB0byBzZWxf
dXBkYXRlIC4uIGNhbiB3ZSBoYXZlIHNpbWlsYXIgYXBwcm9hY2g/IFRoZW4gd2UgZG8gbm90IG5l
ZWQgZXh0cmEgdmFyaWFibGUuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+ICAJYm9vbCBwYW5lbF9y
ZXBsYXlfZW5hYmxlZDsNCj4gIAl1MzIgZGMzY29fZXhpdGxpbmU7DQo+ICAJdTMyIGRjM2NvX2V4
aXRfZGVsYXk7DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
