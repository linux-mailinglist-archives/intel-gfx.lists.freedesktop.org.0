Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90436456D8
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A821910E1AA;
	Wed,  7 Dec 2022 09:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5557E10E1AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670406716; x=1701942716;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c1e7bR4tItVIFBsvFKXIbhJyOUBZQEn4v53hskJEav4=;
 b=Ipg1wi1cf1ymfk/GiCMtwx8XZ4eag3swC2L3urVgJNJno/Yetd2FTFyv
 3CbCGwBrByXwOzUK2IbmSHRr8i6osKLtzqXBC4WwMP3vY3a0ioKSDqY1t
 43aueVwSfqL063Fj0KQFMZRO85cGvm5bmR/Tr8D2u60RgM3z2pf1JYVuQ
 xT0SKcU82MM5QwvJAHezBBRdix2l1nJHRMWeJCVI2D0ah5mbpmcCYLRyI
 B5t6HPWmG6VxAGGnIGWoRiIQIXCJYJ4y1UUWarSxgcCbc2derIZnkIGt/
 oFZRsQtdUMtOz0SzhFE3qcbnvoHHiO7iea+ON3xvoeYdSqjdk/icz76Ry g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="316866027"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="316866027"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:51:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="648674095"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="648674095"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2022 01:51:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:51:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:51:50 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:51:50 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:51:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtUcXzh2a97Z5ZDcx6adoPTL3m9an1LRh1diK6RxJARPrYiu9D2HVHbaPK229ScBKIviXGxGALlMIX4dRzPPxA5UX3axOoAVJKDyY8sJzcJlAOvtScGkZqwFR+tnCv7t9I+XD1u2GBUlLfA602iRWMV4wmktQZ//amRuvfXuKnjx3ZstRVfpNyElCjjEAAKeNE+v9XR+a+gSYMwNc3ITU/jGXo/JqZaZud6+n0B9RgExLJwoo751Z2O2DZrIduT8potN06bsPHs80cQmAZo5dK84N6SrqS/0AjJ3VTLqCnrBgJ7Y6rC64KIMHbxjh0XYaqd6GAsapKymNPT96tequw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1e7bR4tItVIFBsvFKXIbhJyOUBZQEn4v53hskJEav4=;
 b=Z6Hs7csoqlZvjhBj6448DxanTQVdLjdOBBaampAb9zs2ZY8MMoTp35ISm3Yc+yIT+wrfRV1dtb9dhS6yS1Z29B2Y6JQ95tG5HgYEqVYbM6lUWvXLUM3Uw2VmLJRy8Qm+5043QhGN48LNdDF4mNcmeFG4OnLV4wX9nE+flNzZyQN2MmgBkHUOVq2K2+0jafVYS6KPoLWLsBy9suKji+UtRSabFabKiaZ98t6A162gv55KYJM7A0/iYd6hfnpLMxfUo78chU/0kG8mxdIQX3ky+D7gARM0mEqsQbIIBRvTvTNGjmyrSwkearHKyPGNR07q0UOi4pimJqWW3Ofu7J0RVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 09:51:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:51:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/13] drm/i915: Disable DSB usage
 specifically for LUTs
Thread-Index: AQHY/1A/CrAVSs+pK0yBtoXFRl19Aa5iQ6VA
Date: Wed, 7 Dec 2022 09:51:48 +0000
Message-ID: <DM4PR11MB63603BC292339D6A2E587ED6F41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5979:EE_
x-ms-office365-filtering-correlation-id: 5d03fb0b-1a72-408c-09aa-08dad838a88d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VHqFP5eogPr1O0DKSGUsvXKW4+dxp0qbm63t/VTA5AkGIATpg3O8lwmrZeOm1kYKF2ynAmuMAcJ0qrRWZmOU/vxeK+PVO9yNH9yvC4lNakYKDB4bpFtYSA9+mFQWFd57N7vlZv0K4p31bjF0e8NG/RehFMZ4yJvcXzycKH0kle4m2i1No6c4xQCykhAL5vyFwdHybTLV68Fi4HoOdKSF7+i0kq+W4BvGOw9EdNBENVIUlkCa8QEj601EzWb9u3/k5L1kzocJAa+rodUaqc6jUfWVmNv+mNVKUfBx/vBnCkq5atiWFlW3M8EjAnsQmlsBT1LmxyjFPKMkPKCMpZxBs39poZKrFvpAvmsQWg9Xv8USkeXBRVimX7q1T8p4w6ClDOcPh2LgdwhFiXBnRkWEtch7Z0ElVRdC37GJX3yjWNDAlu8pS1LREHt8rbxZ3IIlhmsumxw1VW9GC/HJyXf2HzRyOKaxztaXkEVtDmc0ZQc+gawLKwp+2I3I/NvWFSMgELR626Wt4ctT38qSs1bxcGW4pHVd8l95KwoIOZK8Ex+bcwfF5L+tyMJ1jPyAPdmfm5w/cKAlF+oZmdBAtRobHvtXZN1/ZjgW5lfVUQPYHfNZqWDLKyHxGp+LG+LMYMnEHMAj/6UiI/B2TavJh+EhGo7WGWJQUDht14eDk/ah7hTTQxSNbksmaKGWXTb5re6v6vOwLxs6I0Qqa+7wuzQvXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(39860400002)(346002)(396003)(451199015)(38070700005)(478600001)(38100700002)(82960400001)(5660300002)(71200400001)(122000001)(53546011)(2906002)(6506007)(7696005)(55016003)(66574015)(33656002)(26005)(9686003)(186003)(83380400001)(8936002)(110136005)(52536014)(316002)(86362001)(41300700001)(66556008)(66946007)(76116006)(64756008)(66476007)(8676002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTRhTTBXc1UxRWMza0hxSS91RjM5WFBKMm04K2VEZ2szNWl3M2pLZkxaOG9n?=
 =?utf-8?B?dDl1Q2t3Y1hTUWljRnl4WXI3KzRaNFR5UzZhT29ObUV1OG13M1UvbSsrRFVi?=
 =?utf-8?B?MU5aMHpSTmE5VGpiLzRwd0FYMTgxU2hwTDBRcjNwdWFJY2hOS3ZleE1zZG5U?=
 =?utf-8?B?ZC94VExXUGFUc2tHM2drNzFMSlYvUFlRcDRlTTdvdW1qdFRhZ2lEaGNkYjdT?=
 =?utf-8?B?WVlYVkNTcjNuSG1VRTVvaWJzNzdCSUpnQ3JpbU9hV09MdCtVMXNqVVpWYXh1?=
 =?utf-8?B?K2Y2eDVHTGFOVHVTbnozZmh1VTJxTW5SWk9IcXd4Q2U4eVc2YUZLWHcwWmxu?=
 =?utf-8?B?ZURGcjNRMTZuQ3hmeUJrN3F6MXBFOXNqbE1uSlRZYUc5bHpudTV4NFVSY3hn?=
 =?utf-8?B?cFc3UEZQUXdhaGpSbUhSekM4RVFDS21yZ0srOFpvMDlUMTB2TmY0Um1pRVVC?=
 =?utf-8?B?c1ZIWGI5S0U3cEwzYU9LQXM2RVlBdWt6TXVsSWo2blcrNHdmNTdvOW1zL3BN?=
 =?utf-8?B?SnQ5NTZBcVRkMnQxRmYwU1ZwR3ZiZ1M4Qmw2c3B6T1U3UzJxUkM4Z1Nvdytu?=
 =?utf-8?B?Z0NmaHhhNWJkVTJWRE51WlY1NVE2SkJHakpmdU90Nk1LR3oxS0FBZ0p0UDZk?=
 =?utf-8?B?RmpTUGtOaW8xN3dpOEd2UXRFcFFjWG9wWGxUbUF3aTloWHhCL0l3YlJRSGRl?=
 =?utf-8?B?VVhnbVBjZVlEanlsTG1xTWdkOVhMUEIyQjFBTm9JaWRZUTYyV2hRYTdGbzJ0?=
 =?utf-8?B?azFwSzBleHFXdmJ4WjkyQ1p5YkZuNkkvNFhmZ0Rvb1h4WDkrekNLai9PaFZM?=
 =?utf-8?B?clpGbnJROXB0c0I5ZE1aMTJmTHBKSnMwc25qL200eTNMcy9keXdPMXhpWEJO?=
 =?utf-8?B?anRuTTc0RjIxeXJFSHZ1UVhsWXM0WmZDSlBQSlc5eGFQK3hDYzJ3di9pWVJM?=
 =?utf-8?B?SDJ1ZFd2WDQzcHBCYU5pRFpvazh5M3g2dE54N3p5T1ZuRWJxWEV2V0dyVXVl?=
 =?utf-8?B?SXRSVnN3Y2lRdWxkZmp4NWVsbG5LSDFDaUJvWms2NlloWVdSaTh4MTRDSmhy?=
 =?utf-8?B?eVhxR3pkSnMwMHZKSklUQWxPU1J2NklNdTEvdWxpdllFSDhZY1NDS291c0lO?=
 =?utf-8?B?ejVEbHJLOTJ1NTFVU1N3VUVwK0QxMlhHdHN6REZ5UFRFb3F3eFc3dWNDZlpx?=
 =?utf-8?B?WGs1eldReEhGMFVKUnQrenQ2M1hISi9FWjJTL1RhQmN6MkpCMHgrMmN1Skhh?=
 =?utf-8?B?emN3YTBXNnhuWWJFdWVTWHJOL2p4cU83NC9jVUUyTlcvSjQyQXNnOWsyQ01G?=
 =?utf-8?B?YzRMWjFGdlZQUEdVN2hDNlZtSUJuNzlMUVAyOTZTMG9jT0lOOWp1UkdZcFd3?=
 =?utf-8?B?ZE9LRFhjMDd2NWI3U29JWUVTa0pEdGRFMitsQ0IxMkV0dWpvVEk0OU5IQjhp?=
 =?utf-8?B?US94MHQyZ1YvMk9uazJhRzJjTkRPSE1HaVVKaHhFMzdyeWoybmhUcUd3eXBF?=
 =?utf-8?B?WGVpbHVVYzkvZDNjbENITk5RaTlsZEJZTkptbytCcjRuNExHbElBV3NBYnBC?=
 =?utf-8?B?SjBQdHVkeExNL1p5NndPVzNwSjVlNGR5YlB5VGYrYlVzUEdyV1gyaCtHVmxh?=
 =?utf-8?B?YTZ2Q1ZtYmFiVlN6OStMcjZ3SS9mTkI5TW1JQ1J4cHluTThPNmE5dVlHdmJU?=
 =?utf-8?B?VHZ5L1JWUTRUZzNabm5leHoyT1pSemZUTUJoRS9waDRYbnZCZ0EvaEEvTDk1?=
 =?utf-8?B?L0c5ekxxOVhHeW1BVFZOMGt2T1dHY2VJVDNpSjVEaHh5OUhDRTdyc09BdVB5?=
 =?utf-8?B?VTgzdU5QcmdubkRpNEljb1lNUllhZk5wamYycWZBcGE5VlBvMmt2U2NHaEpM?=
 =?utf-8?B?QU1pTkt4TElybzVhaTVqNTdKVTA4QkQzZEgzUnF0M2N3WGR0TmdHMElSSTBS?=
 =?utf-8?B?bFR1U01oVHZmRTVlZkYyT3lRUkNKMGVWRkRvenBvWFppKzBQbzJWTnd5TnJz?=
 =?utf-8?B?bk52TmhNUW1uRWJENTNQSDMwdmM3RHh6OVcwMVVIU2FIbi9YWlI4NVFZa2JO?=
 =?utf-8?B?NHcxVzRuYnNqRUZIR2xsbmZyemk3YTRUWHd0VDlwVHZzM3dPQm5nM2UyZ01F?=
 =?utf-8?Q?u5PEgSw7tDuou1BjnVhsJCJIJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d03fb0b-1a72-408c-09aa-08dad838a88d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:51:48.3617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eeLyfNnJAsGD82E7AAzjpixjNwI9gYFcWCKp9INKpSt0YnA0Pz9O3dteIINeioXt/XovWKIh3/axbKmtipbuiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915: Disable DSB usage
 specifically for LUTs
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMTAvMTNdIGRybS9pOTE1OiBEaXNhYmxlIERTQiB1c2FnZSBzcGVjaWZpY2FsbHkg
Zm9yIExVVHMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgRFNCIGhhcyBwcm9ibGVtIGxvYWRpbmcgdGhlIExVVHMg
YXQgdGhlIG1vbWVudC4gU29tZSBvZiB0aGF0IGlzIGR1ZSB0byB0aGUNCj4gcGFsZXR0ZSBhbnRp
IGNvbGxpc2lvbiBsb2dpYywgc29tZSBkdWUgdG8gd2hhdCBzZWVtIHJlYWwgaHcgaXNzdWVzLiBE
aXNhYmxlIGl0IHRoZQ0KPiB3aG9sZSB0aGluZyBsb2NhbGx5IGluIHRoZSBjb2xvciBtYW5hZ2Vt
ZW50IGNvZGUgZm9yIG5vdy4NCj4gDQo+IE5vdGUgdGhhdCB3ZSBjdXJyZW50bHkgaGF2ZSB0aGlz
IHdlaXJkIHNpdHVhdGlvbiB3aGVyZSBvbg0KPiBhZGwrIHdlIGxvYWQgcGFydHMgb2YgdGhlIExV
VCB3aXRoIERTQiBhbmQgcGFydHMgd2l0aCBtbWlvLg0KPiBUaGF0IGlzIGR1ZSB0byB0aGUgZmFj
dCB0aGF0IG9ubHkgc29tZSBwYXJ0cyBvZiB0aGUgTFVUIGNvZGUgYXJlIHVzaW5nIHRoZSBEU0IN
Cj4gcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb25zIChpdmJfbG9hZF9sdXRfZXh0KigpKSwgd2hpbGUg
dGhlIHJlc3QgaXMgdXNpbmcgcHVyZSBtbWlvDQo+IChiZHdfbG9hZF9sdXRfMTAoKSkuIFNvIG5v
dyB3ZSdsbCBnbyBiYWNrIHRvIHB1cmUgbW1pbyB0ZW1wb3JhcmlseSwgdW50aWwgdGhlIERTQg0K
PiBpc3N1ZXMgZ2V0IGZpeGVkIChhdCB3aGljaCBwb2ludCB3ZSBzaG91bGQgYmUgZ29pbmcgZm9y
IHB1cmUgRFNCKS4NCg0KWWVhaCwgd2UgbmVlZCB0byBkZWJ1ZyBhbmQgYW5hbHl6ZSB0aGUgZmFp
bHVyZSB3aXRoIERTQi4gSWYgbmVlZGVkLA0Kd2UgY2FuIHJhaXNlIGEgaGFyZHdhcmUgc2lnaHRp
bmcuDQoNCkZvciBub3csIGxldCdzIGtlZXAgaXQgZGlzYWJsZWQ6DQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDMgKysrDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IDI3MTVmMWI2MTdlMS4uOTk3OGQyMWYx
NjM0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
DQo+IEBAIC0xMzk0LDYgKzEzOTQsOSBAQCB2b2lkIGludGVsX2NvbG9yX3ByZXBhcmVfY29tbWl0
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKSAgew0KPiAgCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0K
PiANCj4gKwkvKiBGSVhNRSBEU0IgaGFzIGlzc3VlcyBsb2FkaW5nIExVVHMsIGRpc2FibGUgaXQg
Zm9yIG5vdyAqLw0KPiArCXJldHVybjsNCj4gKw0KPiAgCWNydGNfc3RhdGUtPmRzYiA9IGludGVs
X2RzYl9wcmVwYXJlKGNydGMpOyAgfQ0KPiANCj4gLS0NCj4gMi4zNy40DQoNCg==
