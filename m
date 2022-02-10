Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 619A24B04CB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 06:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74F4010E6F1;
	Thu, 10 Feb 2022 05:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B698510E6F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 05:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644470249; x=1676006249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ekbv+NFP66p3bHhPTPs4XSiVr7GL/UjM8In+hueQNB0=;
 b=TdTkTgvpNkVlbCk988jyTcLMK9oTiylSed8foGI89cYnCUE6AM+zm3dx
 laCHeusJbIczm+T64S+43iGCa2JXz8PPq1jlXTD1/k8ozPXy2sBLRXCvr
 Wpi3TTE02V2nhf0Z0jiOKKzHo8pUbVwZTdbiWMeaenHEuzv+iGep9c5Jh
 NwY9T96nrm6h+J8t45VkiMq9vfllnkqdPUKcXlKtGtSdGgjpBRUebqwe8
 km6Dze/POOAv095VRQeGw+8Bx5nXGkbYvoBiQqbsIh5V6EprqGla8srIU
 8e/8zZNQEvI49/uLAAYpR3ozC6uZaW5l73bFxh/gZOCPXLpncYdpZsiBl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249622340"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="249622340"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 21:17:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="526328589"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 09 Feb 2022 21:17:27 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 21:17:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 9 Feb 2022 21:17:27 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 9 Feb 2022 21:17:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGD4dDutqBTsgs/OZ8J31oO+ODWDwUo4jirxrygn7IcMcV7m7EjYhJkM49UwhdUcIzS8pGu74wthfdOqD7gL2AlTHtQ/1HsdYTyy3U5CqScSaYyWmHJrIUCS2ZFyCL4BWayS/iAtPK+x+7I9reHlMSNuIYJ+Z9Vnj9jiF95XXpb9Sdn0FZrQH/AJnRAsPBqZ8U6Rr5IIjwgWHVo5v/CmGFb7fNtYRwq+NHYqUssGr8IefWk6GGqV0p1dYEJOb3JDheoieP/aTj826dUL30CXQYHjmvUZJ+HjeQEHeYhFxfK+iIqB6gv3IAargjuBjBKj8CelyLMy27N1O0IVE4LJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ekbv+NFP66p3bHhPTPs4XSiVr7GL/UjM8In+hueQNB0=;
 b=gTlbQc23GEM4yruDN6YNlMhvOLsxr1nmKzbv3BmV8GPMdpZ+zlF+dIp/6WBjpULL8a/LoBpfRn1Vb8xbiXpX/IMXC3v9UxKbWBV69vRnKq9KP9h+7Hh2DZj5AaAvxNo6S2Tb+vr8KnvFV+c8mlTH3QvjHUVeUJTIP7oB17ba9yJcktTwasXXWpSwqrXTGyX4Mp4m7mwMBUZwGxVIq9lCZYuT5oa04jdLnFclCZY6Ev7SmC29Tp6JZ/DfugBQKzbXXawW51wdgYmxdO1NhFjc6amMwu5TtbV1fviIoyMHCfQEgyEnCpimPIEy5UGcOv8d8BUAqTIyJI+yAcoZFLzKug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM6PR11MB3578.namprd11.prod.outlook.com (2603:10b6:5:143::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Thu, 10 Feb
 2022 05:17:18 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4951.019; Thu, 10 Feb 2022
 05:17:18 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 03/10] drm/i915/guc: Add DG2 registers for
 GuC error state capture.
Thread-Index: AQHYEqH5DLFoTEAjVEWV8AVfWROF36yEOgmAgAgcNgA=
Date: Thu, 10 Feb 2022 05:17:18 +0000
Message-ID: <725b0ea44a4cd3c2a844bafabe1de5e4a6ac313c.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-4-alan.previn.teres.alexis@intel.com>
 <20220205012817.GB10302@unerlige-ril-10.165.21.154>
In-Reply-To: <20220205012817.GB10302@unerlige-ril-10.165.21.154>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7c361b5-b97d-41f8-e91a-08d9ec549bc8
x-ms-traffictypediagnostic: DM6PR11MB3578:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB35789F95C42568B84EA59C018A2F9@DM6PR11MB3578.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X7o9l3qUGdeYLFS7dSeMNINgyZYb78dxXr6c19cSwm1Thyq1uHHi79PfzKGSJ0liFwgJ75LYiZ+bj01E6vSe0giYGI7vwdclDrybDFJ2GagpCg+p4t7LkHsosO6SEtzFD5ison6yN96M0kWBt0z/a1kWgI4ks8z5iQphpbPtI7x6THfQddtSXnKJAgXJu152yfYFeXk53VLtNpop+lk3K0xgTD5y+p0jp8uYx52CmdHgiM2u2BRHZsIsMG7vco/IlIl4dfY4xywgETBOly4ThHnvBqpTYuASJQZD9d++4rSJGKSSVFfaytR3PWNG1iNGsf43LFcSsQImiHccS4JXF+i07rBsq4+AK1tPxgi4wGqAAGTLo7WxOnw+7tfYpzMy5e82pFYZbNe9NdCYoffiv8PIXIbxk63F7NAi8QdpNmvz2/j4uxIvjJ89a/kGPVBlQYybR7ZEj/Ic7KMf/jJ7U9aYdubr6z1+tm3rbXiXP6U+5ZVJ8x676TkZ5MWSVmzykSEkOu1JKkHsyrvA5K4D/dLAICmIWBynisnVY1t31R5tCPTEly5B3Feh6g50UMg1E3/zAcu52FlXe1SJCSWY1KFpoNwaby5BiB026lpVeR6PS3NXZA9vQ5ls/1rhH6zsOXh84PbF9Z+BO2ckpH9uI9GWKSLPIndlnbR86AFHwX9kNPjZZc3Ht4UCErSQCDLh13uTj1Z9h+1K58/05H2dyQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(37006003)(2906002)(6506007)(6512007)(83380400001)(66556008)(38070700005)(76116006)(71200400001)(4326008)(6862004)(122000001)(8936002)(66946007)(508600001)(66446008)(66476007)(64756008)(8676002)(6486002)(5660300002)(86362001)(82960400001)(186003)(36756003)(38100700002)(6636002)(316002)(26005)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWtvZHhBM1llL3o1Rkdpbkh0clIwemE5TEFGazJjdVRuc2xVamR4WWJxaXpZ?=
 =?utf-8?B?S3pmNS9McmhFQzRMNk1wY21SQzFScFVHbElkbjF3M1V0SVZZeTczK1NQOVJz?=
 =?utf-8?B?WHYwUk8wa1dnMDdCZHFHMjFJcVB3QXFLL0dBR1AvQVltTDZFcE8rWTdUdUFr?=
 =?utf-8?B?cFh0RkFqRnRvNEluRGxHRFdLMitHeStaOUtMRTV4MlEyQW9iRkFmc2V3Mlla?=
 =?utf-8?B?R2dqZ0I3MFB0VGNLcktrOFY3NTJPRHFFd0ZrRTV1RWVNZUFJbzdySldQVUJh?=
 =?utf-8?B?YkllUlpjN3puNG5qK0VtT1RmZjY3dmRxQmVmZUt0a3A3cGpNcnF3N1NOTis2?=
 =?utf-8?B?U0pMNUI3UVorUXlMcS9YS2lTOVgxbmh1eXlKMjlKcGhOTjd0UDZYanAvcDF1?=
 =?utf-8?B?ZXJ1a3JnVUNMV1U4aVd1Sm50djRWWlBObGFycmtMREtWWEFDR3MxbUxNQkdX?=
 =?utf-8?B?YnRINTBkTHk1OHd6N3Vpcys2M0d5eVdPRDJacjZvWk41OEVYQnh5Z1A4QTlG?=
 =?utf-8?B?NDE5TFpQcXFHbTJsMXR3MW5Fbi8rS1BXSkVFbFB5VmM2dWxaTTkwK1ZrU2Js?=
 =?utf-8?B?UU1WeGhwN1ppY3pSbk52THpxWE1qOXJvOGdQZWdNaFRucGJXUHh0OGk0NU5B?=
 =?utf-8?B?MWRtRk1HWHhzSlh0cE42OElXU2tUOExFdm9RMWYveTRkMTBxdUluamsrVmZq?=
 =?utf-8?B?L1ljT2FqNGFDYVpkM3dFY3ZKUTlVWDhkVko2aTRyK0RZZWFDb0IzQUZJcFU0?=
 =?utf-8?B?Zm5RZkpmMmRWU09rNEVsTVVCOGlZUStzMDhjYmoyTHlDZDJWUzhjeWllVUcr?=
 =?utf-8?B?ZDN6V1BrOWt5c0JjTW9vL0NWUDBHZHlkZUFkUG1lUUFxS2VaVmp4ODU4WVJa?=
 =?utf-8?B?Zk1jOUhIeUdrL0dZWGJXMjdUTklqODRTbnRXRHFlN3RtejNWOS8wbTVUaHJQ?=
 =?utf-8?B?aC9uRzZRYmRCcW9iM25XN3BYZjcvVjVWbVBiUjVtWTRjdXBCT3VNcWN3RkEr?=
 =?utf-8?B?VWdFZDd6NW9HeURCaG5RRHpmZDQ3SitZWFpKM0FkZzFjdTNQYjlvVFBBc1FG?=
 =?utf-8?B?V0RoQzVkTzFDVEZFV2lrV0tPeUE3K3Z6KzNGM2NzdFhSNXNDNVYxWXY5aDZs?=
 =?utf-8?B?SXZocWRHbllnVk5BZ2xNSFhmVXBDNlE5L1lMcXF4dDhpdFEyMW1RMTJ0L0lm?=
 =?utf-8?B?eFFlcG1yNlROYkhMemRUZWpiSk8vNzloWHJDZ05ZSHFXUXJzVDFZd3ByY2VN?=
 =?utf-8?B?L2ZTTTN4V2hUbVRtYVR4WGxKRm9yS2hLTytyWUFOZnNMbTZZc2VEang1cTZa?=
 =?utf-8?B?bW9XcWpZSGV4L0M2TU94SE5BSFJXZDV3bHBabmg2QzVYZ1VQL3AzWWRuMVVZ?=
 =?utf-8?B?REZNeTJrc0x2Q2pYMkhELzNUU0ZsdjkwV3g3M3Q2dlRWa05aWGgvdXUrUmlt?=
 =?utf-8?B?a01LUERCMlFxRytVUG12dGdleVlKTTUvZ0JRQ3Y4NUxUcHdaWWptVjNSdDBh?=
 =?utf-8?B?N3dGamRmN0FQVHE2d2ZaSFZhajB3K2RiaXlVSUdRUDFOdlJpd05NRG1FbmUr?=
 =?utf-8?B?cEZ1eGxVOFBKTDBDOVF1VXQwL0FDTk04eFBNa2U3SVNsSEptMy9uakREU1di?=
 =?utf-8?B?YVhTTm1qQURCZFRPMHdOZXhCclIvcGtoeTZsMEQySyt4VXkzVlkxMjRFT2I3?=
 =?utf-8?B?M2U0WjQ0RjdWNVdBUnJEL0szQXNGQXp6QVBwWnJEMTJmbFovV0JTbWhRclhL?=
 =?utf-8?B?NzVISGY4S1U4V1RIQ1k2ditrWEFLZkU2WTFFaGx5T1c1TFFlQ1k3NEFjbE5k?=
 =?utf-8?B?Q1paaGIxOXA3ZWFZdlZ0MVEveTlCcWd2WGRpSUlReUMvTnBGdTFDTm1HSU1s?=
 =?utf-8?B?UFFHS1hWRXo3Tmx2MG1OVVhqSDBwTndJWXJBWUxCYm1uQkhCcjRqRDNLTGF2?=
 =?utf-8?B?K0RGcTNWbk9iT3lqQXVNNEVMdVpLUFBTVW50R0hMWnBhaVVac0U4MkRzTFVW?=
 =?utf-8?B?WlNTVVMwSWpKU2orZ3RPdVB5eEpuR2I4amNPS0FxSHdkLzl6N21MWEVSYUtt?=
 =?utf-8?B?YmxGTTlZTjlYREQvVmdZcTRPWkU2b0ZSL3NxUWI2S0FUU0R4NXRXdUtmK3pt?=
 =?utf-8?B?bE92TVNJK2RmY0VEQ29rYXcrLzhVQVpRQ1plYzliTzllTjMyaW01NzRZWUI1?=
 =?utf-8?B?dzZNWnN5SFRrMU1aa3hwbXBTaE5zYTFQZk9RWTU3TGxWQ0x4VUVhQUVnTUty?=
 =?utf-8?B?U0M3WjUwNWdvd25lcW8xL3JWOThheVY2SmNGYk03OEVGT2VtSDJGMWFxbFk5?=
 =?utf-8?B?cjRTVEVwZTg3NVdETzUwcGZmNE1IMGtNNnROU1ZxNmtUSml1bDBBQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0A12F68E875EE640A82E61203AD28A6B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7c361b5-b97d-41f8-e91a-08d9ec549bc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2022 05:17:18.3585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UygHxNVNxTDg0FEI8BsnJ88tWxlh1TZakLGnkoaznRppU2WgJ0ygOzOA/uVHhTh098hRjTV7seiXd0GL/pJr1rI8Pv2L0udyS7qDCKM8s+x3yvJZBC7+FsGqAAQDmyUD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 03/10] drm/i915/guc: Add DG2 registers
 for GuC error state capture.
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

QXBvbG9naWVzIGZvciB0aGUgZGVsYXllZCByZXNwb25zZS4gSSB0b3RhbGx5IGFncmVlIHdpdGgg
dGhlDQpscGQgdnMgaHBnIGZ1bmN0aW9uIHNlcGFyYXRpb24uIFRoYXRzIHdoYXQgaSBpbml0aWFs
bHkgaW1wbGVtZW50ZWQNCmJ1dCB3aGVuIGNyb3NzLXJlZmVyZW5jaW5nIG15IGxvZ2ljIHdpdGgg
dGhlIGV4ZWNsaXN0IGkgcmVhbGl6ZWQNCkRHMiBzdGVlcmluZyByZWdpc3RlcnMgZm9yIGFsbCBH
ZW5zIHdlcmUgaW4gdGhlIHNhbWUgZnVuY3Rpb24gc28NCkkgdGhvdWdodCBvZiBrZWVwaW5nIGl0
IGNvbnNpc3RlbnQgYnV0IGkgcmF0aGVyIGdvIHdpdGggeW91cg0KcHJvcG9zYWwuDQoNCkknbGwg
cmVwbGFjZSB0aGUgbWFjcm8gd2l0aCBhIHN0YXRpYyBmdW5jdGlvbiBidXQgd29uJ3QgaW5saW5l
DQppdCAoaSB0aGluayB0aGVyZSBpcyBhIHJ1bGUgYWdhaW5zdCB0aGF0PyBsZXQgdGhlIGNvbXBp
bGVyIGhhbmRsZSkuDQoNCkknbGwgZml4IHRoZSByZXN0IGFzIHBlciB5b3VyIHJldmlldyBjb21t
ZW50Lg0KVGhhbmsgeW91IGZvciByZXZpZXdpbmcgOikNCg0KDQpPbiBGcmksIDIwMjItMDItMDQg
YXQgMTc6MjggLTA4MDAsIFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSB3cm90ZToNCj4gT24gV2VkLCBK
YW4gMjYsIDIwMjIgYXQgMDI6NDg6MTVBTSAtMDgwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4g
QWRkIGFkZGl0aW9uYWwgREcyIHJlZ2lzdGVycyBmb3IgR3VDIGVycm9yIHN0YXRlIGNhcHR1cmUu
DQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVz
LmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfY2FwdHVyZS5jICAgIHwgNjQgKysrKysrKysrKysrKystLS0tLQ0KPiA+IDEgZmls
ZSBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gPiBp
bmRleCBiNjg4MjA3NGZjOGQuLjE5NzE5ZGFmZmVkNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYw0KPiA+IEBAIC0xNzksMTkg
KzE3OSwyMyBAQCBzdGF0aWMgc3RydWN0IF9fZXh0X3N0ZWVyX3JlZyB4ZWxwZF9leHRyZWdzW10g
PSB7DQo+ID4gCXsiR0VON19ST1dfSU5TVERPTkUiLCBHRU43X1JPV19JTlNURE9ORX0NCj4gPiB9
Ow0KPiA+IA0KPiA+ICtzdGF0aWMgc3RydWN0IF9fZXh0X3N0ZWVyX3JlZyB4ZWhwZ19leHRyZWdz
W10gPSB7DQo+ID4gKwl7IlhFSFBHX0lOU1RET05FX0dFT01fU1ZHIiwgWEVIUEdfSU5TVERPTkVf
R0VPTV9TVkd9DQo+ID4gK307DQo+ID4gKw0KPiA+IHN0YXRpYyB2b2lkDQo+ID4gLWd1Y19jYXB0
dXJlX2FsbG9jX3N0ZWVyZWRfbGlzdF94ZWxwZChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsDQo+ID4g
LQkJCQkgICAgIHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCAqbGlzdHMpDQo+ID4g
K2d1Y19jYXB0dXJlX2FsbG9jX3N0ZWVyZWRfbGlzdF94ZV9scGRfaHBnKHN0cnVjdCBpbnRlbF9n
dWMgKmd1YywNCj4gPiArCQkJCQkgIHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCAq
bGlzdHMsDQo+ID4gKwkJCQkJICB1MzIgaXB2ZXIpDQo+IA0KPiBJTU8gaGF2aW5nIDIgc2VwYXJh
dGUgZnVuY3Rpb25zIHdvdWxkIGJlIGVhc2llciB0byByZWFkIGFuZCBtYWludGFpbi4gTm8gDQo+
IGlwdmVyIGxvZ2ljIGluc2lkZSBoZXJlLg0KPiANCj4gPiB7DQo+ID4gCXN0cnVjdCBpbnRlbF9n
dCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsNCj4gPiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsNCj4gPiAJc3RydWN0IHNzZXVfZGV2X2luZm8gKnNz
ZXU7DQo+ID4gLQlpbnQgc2xpY2UsIHN1YnNsaWNlLCBpLCBudW1fdG90X3JlZ3MgPSAwOw0KPiA+
ICsJaW50IHNsaWNlLCBzdWJzbGljZSwgaSwgaXRlciwgbnVtX3N0ZWVyX3JlZ3MsIG51bV90b3Rf
cmVncyA9IDA7DQo+ID4gCXN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCAqbGlzdDsN
Cj4gPiAJc3RydWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyICpleHRhcnJheTsNCj4gPiAtCWludCBu
dW1fc3RlZXJfcmVncyA9IEFSUkFZX1NJWkUoeGVscGRfZXh0cmVncyk7DQo+ID4gDQo+ID4gLQkv
KiBJbiBYRV9MUCB3ZSBvbmx5IGNhcmUgYWJvdXQgcmVuZGVyLWNsYXNzIHN0ZWVyaW5nIHJlZ2lz
dGVycyBkdXJpbmcgZXJyb3ItY2FwdHVyZSAqLw0KPiA+ICsJLyogSW4gWEVfTFAgLyBIUEcgd2Ug
b25seSBoYXZlIHJlbmRlci1jbGFzcyBzdGVlcmluZyByZWdpc3RlcnMgZHVyaW5nIGVycm9yLWNh
cHR1cmUgKi8NCj4gPiAJbGlzdCA9IGd1Y19jYXB0dXJlX2dldF9vbmVfbGlzdChsaXN0cywgR1VD
X0NBUFRVUkVfTElTVF9JTkRFWF9QRiwNCj4gPiAJCQkJCUdVQ19DQVBUVVJFX0xJU1RfVFlQRV9F
TkdJTkVfQ0xBU1MsIEdVQ19SRU5ERVJfQ0xBU1MpOw0KPiA+IAlpZiAoIWxpc3QpDQo+ID4gQEAg
LTIwMCwxMCArMjA0LDIxIEBAIGd1Y19jYXB0dXJlX2FsbG9jX3N0ZWVyZWRfbGlzdF94ZWxwZChz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMsDQo+ID4gCWlmIChsaXN0LT5leHQpDQo+ID4gCQlyZXR1cm47
IC8qIGFscmVhZHkgcG9wdWxhdGVkICovDQo+IA0KPiBuaXQ6DQo+IGlmICghbGlzdCB8fCBsaXN0
LT5leHQpDQo+IAlyZXR1cm47DQo+ID4gKwludW1fc3RlZXJfcmVncyA9IEFSUkFZX1NJWkUoeGVs
cGRfZXh0cmVncyk7DQo+ID4gKwlpZiAoaXB2ZXIgPj0gSVBfVkVSKDEyLCA1NSkpDQo+IA0KPiBX
aGF0IGRvZXMgdGhpcyBhY3R1YWxseSBtZWFuPyAxMiA1NSBoYXMgYm90aCBscGQgYW5kIGhwZyBy
ZWdzPw0KPiANCj4gWW91IGNvdWxkIChpZiBwb3NzaWJsZSkgdXNlIGhhc19scGRfcmVncy9oYXNf
aHBnX3JlZ3MgaW4gaTkxNV9wY2kuYyB0byANCj4gc2ltcGxpZnkgdGhlIHBsYXRmb3JtIHNwZWNp
ZmljIGxvZ2ljLg0KPiANCj4gPiArCQludW1fc3RlZXJfcmVncyArPSBBUlJBWV9TSVpFKHhlaHBn
X2V4dHJlZ3MpOw0KPiA+ICsNCj4gPiAJc3NldSA9ICZndC0+aW5mby5zc2V1Ow0KPiA+IC0JZm9y
X2VhY2hfaW5zdGRvbmVfc2xpY2Vfc3Vic2xpY2UoaTkxNSwgc3NldSwgc2xpY2UsIHN1YnNsaWNl
KSB7DQo+ID4gLQkJbnVtX3RvdF9yZWdzICs9IG51bV9zdGVlcl9yZWdzOw0KPiA+ICsJaWYgKGlw
dmVyID49IElQX1ZFUigxMiwgNTApKSB7DQo+ID4gKwkJZm9yX2VhY2hfaW5zdGRvbmVfZ3NsaWNl
X2Rzc194ZWhwKGk5MTUsIHNzZXUsIGl0ZXIsIHNsaWNlLCBzdWJzbGljZSkgew0KPiA+ICsJCQlu
dW1fdG90X3JlZ3MgKz0gbnVtX3N0ZWVyX3JlZ3M7DQo+ID4gKwkJfQ0KPiA+ICsJfSBlbHNlIHsN
Cj4gPiArCQlmb3JfZWFjaF9pbnN0ZG9uZV9zbGljZV9zdWJzbGljZShpOTE1LCBzc2V1LCBzbGlj
ZSwgc3Vic2xpY2UpIHsNCj4gPiArCQkJbnVtX3RvdF9yZWdzICs9IG51bV9zdGVlcl9yZWdzOw0K
PiA+ICsJCX0NCj4gPiAJfQ0KPiA+ICsNCj4gPiAJaWYgKCFudW1fdG90X3JlZ3MpDQo+ID4gCQly
ZXR1cm47DQo+ID4gDQo+ID4gQEAgLTIxMiwxNSArMjI3LDMxIEBAIGd1Y19jYXB0dXJlX2FsbG9j
X3N0ZWVyZWRfbGlzdF94ZWxwZChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsDQo+ID4gCQlyZXR1cm47
DQo+ID4gDQo+ID4gCWV4dGFycmF5ID0gbGlzdC0+ZXh0Ow0KPiANCj4gbml0OiBJIHdvdWxkIG1v
c3RseSB1c2UgZXh0YXJyYXkgZXZlcnl3aGVyZSBhbmQgYXNzaWduIGl0IHRvIGxpc3QtPmV4dCAN
Cj4gYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24uDQo+IA0KPiA+IC0JZm9yX2VhY2hfaW5zdGRv
bmVfc2xpY2Vfc3Vic2xpY2UoaTkxNSwgc3NldSwgc2xpY2UsIHN1YnNsaWNlKSB7DQo+ID4gLQkJ
Zm9yIChpID0gMDsgaSA8IG51bV9zdGVlcl9yZWdzOyBpKyspIHsNCj4gPiAtCQkJZXh0YXJyYXkt
PnJlZyA9IHhlbHBkX2V4dHJlZ3NbaV0ucmVnOw0KPiA+IC0JCQlleHRhcnJheS0+ZmxhZ3MgPSBG
SUVMRF9QUkVQKEdVQ19SRUdTRVRfU1RFRVJJTkdfR1JPVVAsIHNsaWNlKTsNCj4gPiAtCQkJZXh0
YXJyYXktPmZsYWdzIHw9IEZJRUxEX1BSRVAoR1VDX1JFR1NFVF9TVEVFUklOR19JTlNUQU5DRSwg
c3Vic2xpY2UpOw0KPiANCj4gY291bGQgdXNlIGhlbHBlcnMNCj4gDQo+IGV4dGFycmF5LT5mbGFn
cyB8PSBfX3N0ZWVyaW5nX2ZsYWdzKHNsaWNlLCBzdWJzbGljZSk7DQo+IA0KPiANCj4gPiAtCQkJ
ZXh0YXJyYXktPnJlZ25hbWUgPSB4ZWxwZF9leHRyZWdzW2ldLm5hbWU7DQo+ID4gLQkJCSsrZXh0
YXJyYXk7DQo+ID4gKw0KPiA+ICsjZGVmaW5lIFBPUFVMQVRFX05FWFRfRVhUUkVHKGV4dCwgbGlz
dCwgaWR4LCBzbGljZW51bSwgc3Vic2xpY2VudW0pIFwNCj4gPiArCXsgXA0KPiA+ICsJCShleHQp
LT5yZWcgPSBsaXN0W2lkeF0ucmVnOyBcDQo+ID4gKwkJKGV4dCktPmZsYWdzID0gRklFTERfUFJF
UChHVUNfUkVHU0VUX1NURUVSSU5HX0dST1VQLCBzbGljZW51bSk7IFwNCj4gPiArCQkoZXh0KS0+
ZmxhZ3MgfD0gRklFTERfUFJFUChHVUNfUkVHU0VUX1NURUVSSU5HX0lOU1RBTkNFLCBzdWJzbGlj
ZW51bSk7IFwNCj4gPiArCQkoZXh0KS0+cmVnbmFtZSA9IHhlbHBkX2V4dHJlZ3NbaV0ubmFtZTsg
XA0KPiA+ICsJCSsrKGV4dCk7IFwNCj4gPiArCX0NCj4gDQo+IEkgcHJlZmVyIGhhdmluZyBhbiBp
bmxpbmUgZm9yIHRoZSBhYm92ZSBhc3NpZ25tZW50cyBhbmQgbW92ZSB0aGUgKysoZXh0XyANCj4g
aW50byB0aGUgZm9yIGxvb3AgaXRzZWxmLg0KPiANCj4gPiArCWlmIChpcHZlciA+PSBJUF9WRVIo
MTIsIDUwKSkgew0KPiA+ICsJCWZvcl9lYWNoX2luc3Rkb25lX2dzbGljZV9kc3NfeGVocChpOTE1
LCBzc2V1LCBpdGVyLCBzbGljZSwgc3Vic2xpY2UpIHsNCj4gPiArCQkJZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUoeGVscGRfZXh0cmVncyk7IGkrKykNCj4gPiArCQkJCVBPUFVMQVRFX05FWFRf
RVhUUkVHKGV4dGFycmF5LCB4ZWxwZF9leHRyZWdzLCBpLCBzbGljZSwgc3Vic2xpY2UpDQo+ID4g
KwkJCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHhlaHBnX2V4dHJlZ3MpICYmIGlwdmVyID49
IElQX1ZFUigxMiwgNTUpOw0KPiA+ICsJCQkgICAgIGkrKykNCj4gPiArCQkJCVBPUFVMQVRFX05F
WFRfRVhUUkVHKGV4dGFycmF5LCB4ZWhwZ19leHRyZWdzLCBpLCBzbGljZSwgc3Vic2xpY2UpDQo+
ID4gKwkJfQ0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQlmb3JfZWFjaF9pbnN0ZG9uZV9zbGljZV9z
dWJzbGljZShpOTE1LCBzc2V1LCBzbGljZSwgc3Vic2xpY2UpIHsNCj4gPiArCQkJZm9yIChpID0g
MDsgaSA8IG51bV9zdGVlcl9yZWdzOyBpKyspDQo+ID4gKwkJCQlQT1BVTEFURV9ORVhUX0VYVFJF
RyhleHRhcnJheSwgeGVscGRfZXh0cmVncywgaSwgc2xpY2UsIHN1YnNsaWNlKQ0KPiA+IAkJfQ0K
PiA+IAl9DQo+ID4gKyN1bmRlZiBQT1BVTEFURV9ORVhUX0VYVFJFRw0KPiA+ICsNCj4gPiAJbGlz
dC0+bnVtX2V4dCA9IG51bV90b3RfcmVnczsNCj4gPiB9DQo+ID4gDQo+ID4gQEAgLTIzNyw3ICsy
NjgsMTAgQEAgZ3VjX2NhcHR1cmVfZ2V0X2RldmljZV9yZWdsaXN0KHN0cnVjdCBpbnRlbF9ndWMg
Kmd1YykNCj4gPiAJCSAqIHRoZXNlIGF0IGluaXQgdGltZSBiYXNlZCBvbiBodyBjb25maWcgYWRk
IGl0IGFzIGFuIGV4dGVuc2lvbg0KPiA+IAkJICogbGlzdCBhdCB0aGUgZW5kIG9mIHRoZSBwcmUt
cG9wdWxhdGVkIHJlbmRlciBsaXN0Lg0KPiA+IAkJICovDQo+ID4gLQkJZ3VjX2NhcHR1cmVfYWxs
b2Nfc3RlZXJlZF9saXN0X3hlbHBkKGd1YywgeGVfbHBkX2xpc3RzKTsNCj4gPiArCQlndWNfY2Fw
dHVyZV9hbGxvY19zdGVlcmVkX2xpc3RfeGVfbHBkX2hwZyhndWMsIHhlX2xwZF9saXN0cywgSVBf
VkVSKDEyLCAwKSk7DQo+IA0KPiBJZGVhbGx5LCBJIHdvdWxkIGp1c3QgdGhpbmsgYWJvdXQgaGF2
aW5nIHNlcGVyYXRlIA0KPiANCj4gZ3VjX2NhcHR1cmVfYWxsb2Nfc3RlZXJlZF9saXN0X3hlX2xw
ZCBhbmQNCj4gZ3VjX2NhcHR1cmVfYWxsb2Nfc3RlZXJlZF9saXN0X3hlX2hwZw0KPiANCj4gTWF5
YmUgdGhlcmUgY291bGQganVzdCBiZSBvbmUgY2hlY2sgZm9yIHNheSBJUF9WRVIoMTIsIDUwKSBh
dCB0aGUgdG9wIA0KPiBsZXZlbCBhbmQgeW91IGNhbiBjYWxsIHRoZSByZXNwZWN0aXZlIGZ1bmN0
aW9uLg0KPiANCj4gDQo+ID4gKwkJcmV0dXJuIHhlX2xwZF9saXN0czsNCj4gPiArCX0gZWxzZSBp
ZiAoSVNfREcyKGk5MTUpKSB7DQo+ID4gKwkJZ3VjX2NhcHR1cmVfYWxsb2Nfc3RlZXJlZF9saXN0
X3hlX2xwZF9ocGcoZ3VjLCB4ZV9scGRfbGlzdHMsIElQX1ZFUigxMiwgNTUpKTsNCj4gPiAJCXJl
dHVybiB4ZV9scGRfbGlzdHM7DQo+IA0KPiB4ZV9scGRfbGlzdHMgaXMgcmV0dXJuZWQgaW4gYm90
aCBpZi9lbHNlLCBzbyBjYW4gYmUgbW92ZWQgb3V0IG9mIHRoZSANCj4gY29uZGl0aW9ucy4gQWxz
byBub3cgeW91IGNvdWxkIGp1c3QgcmVuYW1lIGl0IHRvIHhlX2xpc3RzLg0KPiANCj4gUmVnYXJk
cywNCj4gVW1lc2gNCj4gDQo+ID4gCX0NCj4gPiANCj4gPiAtLSANCj4gPiAyLjI1LjENCj4gPiAN
Cg0K
