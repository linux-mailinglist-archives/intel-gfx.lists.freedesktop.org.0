Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814F68469DA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 08:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8B610EC68;
	Fri,  2 Feb 2024 07:55:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="duWT3H1s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819F510EC68
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 07:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706860514; x=1738396514;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B+giVFKU95GhCznb7fPt50gQyXAw4kvW1xWhsOhiX1o=;
 b=duWT3H1sywha5zqqhoyyLzHVJsDDyUS0wdWw7mkPURHBsgW0c5ofjlo3
 QZ7XISqDsAv1s8Du87MVRLwE55d1xqPKqSM+eb8pqkXVKmSsBZnFaM+DF
 1wo0uX1ClZwDawT80lWfLYxC49gGmhZZV1FWUh9t9f6bhOuaoLG6UYgKz
 eQd53PPLDx+UmDr7I9yE2b0sA6elGsrzqOlJkmWJp3wOpBx8XalHibd+X
 6Iain5he0W1MwEAmechT0LyvKjgnfqScnN+mSLEcp6iTMnJOaHu1BvMiu
 YCtvsJAILQOuMRFX3sZJ4HO1OUxLEzW5WveGOgwW8YkCKk+G1utXR3thA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="3946541"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="3946541"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 23:55:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="31096658"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 23:55:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:55:09 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:55:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 23:55:09 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 23:55:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDwT+sH9bLdObhGh5iNp7hX0/VqJuMN5K9u0cdApNWC2IxGvzsNNWiKTeQHQYYQO6Aoz4aEDxwIrwsStySAk7MThgucdkztnyIDb398r+rE10Z5A78RnAAN67x134XXl8K0jqEBWUnitgfb1aiorfj+aQdIIVCe4mcr46k28LdxCG1tQPgqSkES8P4+/70Cx0KpHlBCABPhQUZu3SpNUBzU7JEk9+zPLW5qM5iG6DZHXx9ieMX5f6A3lcc2sr7l1mj1NVWb+A8cYcLbLwUo/+pBgmRSVWxcR5Z+tEPVkYr8zUnGHLwLM2TfDrvwo9PBHj9mU5t6mw/cz3eJx5saDZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+giVFKU95GhCznb7fPt50gQyXAw4kvW1xWhsOhiX1o=;
 b=cA+kpvYlj85CPvOKB7HasyW2B4+l05S2WhNFFZGkN5jnK2jEN+VgSLJKixPOR2j6LbbIngzD0W5tmQ4jVqQXD0ZeU4mN+HlpCPH8zysnqvTN/MnMK2gGsOTEZpZWUPP8NCLbziIisDIDtVraGrE0Colp6nFaAHZFsYuPra62HgB8yjyF5l6OfixHs7TIzodW34OlStNBkXBfQDHJP8jJDwqInj5JtQ0/CxwEglCKaBoqelGM3EqLc6OGm0MECXIpYu1l1QfNRPPRJ98lQacKw/WAMjCMogciiM0+htLlzvP7wzFamOnXkSXTyCYLyV/EEUDLCJTBPKpQSoiugy6T/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO6PR11MB5586.namprd11.prod.outlook.com (2603:10b6:5:35d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 07:55:06 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 07:55:06 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 05/21] drm/i915/psr: Do not update phy power state in
 case of panel replay
Thread-Topic: [PATCH v3 05/21] drm/i915/psr: Do not update phy power state in
 case of panel replay
Thread-Index: AQHaSr/QPaPuKNu7a02zjvaSqTjaF7D2xJkQ
Date: Fri, 2 Feb 2024 07:55:06 +0000
Message-ID: <PH7PR11MB59818DA15C62C8C3B0596AA6F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-6-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO6PR11MB5586:EE_
x-ms-office365-filtering-correlation-id: 841e74dc-266c-4063-6001-08dc23c44550
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U3Vhe3bTuMNuH3qVppotZK3+ypj+II8cwhT6JmGgRrkxmVdQ6ooFppYLyuJiZbep9a8ihKDZM0DcsJza3FqXyNhPw8WHcdvyoUrqdKerKsdbFpk4sd5o6EJkpXgviw06vtpKeQBL1e/y8cxRUm4Bkv1EnMYfUbYPr2x8KG5qpftvetrEt1is+iVIPlx/HRy0kx6UtOS6VNcFyV5kSUsDUwXpmE1WMFBZQggROAvIV1PVdnEoDBkO60TuaRQx7Cu/rzdRo0juWoHJAx+bUV67BubiX4vPx6aeOgYxFP6/lXQr9zSxcdUrEmLZGETV5G1vMxYKSK6O3BcKtPuPAZKKM0wOZ9AkIRa/s34mH5TMB+gGWVI9ej5IBsj7e55EeUHoF9C5tLugYD4XDQ0MhdKMMrZ6gxMM6SHZb04WNY4J3z+ymvDycES0j0FPaOVr6IP7n1hRCupMHYGaqFubqLj6HstBebWsXlmOdA8rsMfC8ViXR0khYdw3v9wr+FB9birT7v1j4anqKysz+9bg3TbPPbXwdTBvqos/cBCoW9E6i3Wc+27STGFjfAThrqD9vcLjtFoUgmadhWT6rJGLCXsGrSixYR8+/Zn6/ogonEgOmEzBTVg3RBbw6lwTMxC70rK/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(346002)(136003)(376002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(9686003)(66574015)(26005)(53546011)(41300700001)(478600001)(316002)(8676002)(8936002)(52536014)(38070700009)(2906002)(33656002)(15650500001)(86362001)(5660300002)(110136005)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(71200400001)(6506007)(7696005)(82960400001)(122000001)(83380400001)(38100700002)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkxDYmM0TkxtNUJtS1Z5bG5EYU8wQTExYmRyWjBmUlZxeE9JdnNvVzZBODQv?=
 =?utf-8?B?L0tuci9kOGlHc1ZSMjYxeVBnZ1l3eElHL0Exb1Bla1VFOUwvd3lETFlGOWl2?=
 =?utf-8?B?R2dDdnp4YUpOdWw2ZGJtYmJaOG9RbkhJV3p1U3R0WTZzdEIxNGFwdzVpM1Jw?=
 =?utf-8?B?YnRIZEF2bVpIZCtTU1dCblViR2x6eDlmLzR3c05qWE5sODFmN1l1b3BiNzI2?=
 =?utf-8?B?eDJpOEhQclhySnpFUmVKYnFxL0I3RlBWUWtubkcvcUZUVXNyaTNOeVFKTzBn?=
 =?utf-8?B?OXFkTEJvTnlyY3Y5SUREYmNwTGlSNkJNNVpiR0hsNzk1MkZUWEVQbHhUWnA4?=
 =?utf-8?B?MTN5TEtGck1jcGFWaHEwMnROYWYxbnNCR0xJZ1hodTNlTjZYdm5TQnoraU16?=
 =?utf-8?B?UEVhbkM4MVlvRFdqemF3UjVxdWFFZnZpR3dEWWZMZStVU1NnemFHSC9jd3Zs?=
 =?utf-8?B?TC9QL3gycVU5L1c5NzdxSjJjV1VlZEcwdGhEdFJ5SVFzaC83dUtKMWthSG12?=
 =?utf-8?B?azYxZVBCVHdvMzZ6TWREUlFTNG9ma1FMc0xxUmdQZUgrOE1iNWZGQjRjZVdm?=
 =?utf-8?B?MGh1WFhLUlo3QWp1Wmp1R053TmtSUCtlN0thMEdvTVI2L3NtMlF4Y2o3OHBi?=
 =?utf-8?B?V1p6Qk5vZmt3azcvTTNGM3ZOQURPb1hBZXdGalJpUGc2OThIS0I2R0lsMnly?=
 =?utf-8?B?UzAxU1ZhQlRPRElnUXdzNUFBNmN1alptNnVFZTZWK0c0Qm5ENUJxWmQ2MC9I?=
 =?utf-8?B?cmpnMkl0LzZhanlLUW1SdE5FR2xPLzJUSWlGUkM5ekFrek9XZkU2ZWtsWWRz?=
 =?utf-8?B?WHFtMDZvdkxzbmFIcW9yeUVDYWxTWDNFKzdrSXBIS0p3SitzM2MyUmU1Zzll?=
 =?utf-8?B?ZUFEdTZsZUtRb1JnMWxnVFRJbDl3VklQZHJzaFB1V3o5cnNxMFRaQ2NUdzN6?=
 =?utf-8?B?dXNIZTJ6NG91Tm9DSTdkL0xGQi80YkUvdDNBRTJlY3lTeHNOcmVObGdSeWdZ?=
 =?utf-8?B?RUFSWWJEcDRXcGYrM1EyTzhRQXBTUGhPenJVeXNtc2lVYmpYVWFZSmtVZEhu?=
 =?utf-8?B?QWM5b1kxRnA5WUc3QXhRZFVXaWxycGp5V05ZMGVmcXZ0ZEhldUM5ZEJGQUM5?=
 =?utf-8?B?RzhPNndHcU9OalBnUzRxUUtEK0RweHZodnJGY1MxYlNMdHF3VDByYU1OZ0Rq?=
 =?utf-8?B?anNRQkt0N0Yyc2lzRFFTNmVVRlNCOEJxY2VZY0dJQkxqWXptNFVGZ2lnWGlx?=
 =?utf-8?B?Qk1hZnA1cWplMkNXa05RczNyMjlwUHljdlF0ZWxCODdSSDl1Mks5bkVGTmN4?=
 =?utf-8?B?aWF0Y1JqMmxWU24rSk5wMjZvWmZPMmdUOFlaRi90Yi9JZ3AxTnZBS0Z2VG9n?=
 =?utf-8?B?WWIvN0FDOUVZaXM4THU1QUEwS3RGcWd5aHlqTDByeFZJckgwdjdFWHVHSC8r?=
 =?utf-8?B?dHQyalV4NUdiMXFTSk5yK1RBak9lbHpIUy96MFBObk80ZEpCZ1R3S0FFdVEv?=
 =?utf-8?B?ekhmSEo4SWhqUUlTU0NJbFFRTG0rUThISjhqMHlNUzFiU3lBdmpKVXp5c1NW?=
 =?utf-8?B?dERBMVBkZ1VYZFIzT0FtZlJwbmVvZlRDMmRiZTFBY05MR2l4TitNTnB6VEpl?=
 =?utf-8?B?cVZzekNzMDRlLzMvalNLMmtxYXJuSEgrMkFJWjIzd3R4OGN0ZUl4V0NHNmdR?=
 =?utf-8?B?MGVPcEdOU3R6QkZSTkMvTzM4aFdVTjBOeFZnV3hoOWRKcnZuTUszTWQ5ajFo?=
 =?utf-8?B?NEcvOGZmc3Q0WVRlaXFVTnhRSnJ1cWtpa09kSWN4bVFBTmp1NTg1dTdvR3Rk?=
 =?utf-8?B?K2l4VFpmNW9TOXVQRkRCSVpadUt6NG50dUN1UTU5Vm5xQW5mTXF0ZG5ucW5w?=
 =?utf-8?B?Q2hmT1JqMngwaXdJdzFQdDFBeEhOTE9UTlpxcVgvNlNoK1FTTjVSQ1pPMHZv?=
 =?utf-8?B?RUxEU0VaTHo2dC9LbzBiT2FRTm9wZVZZZDQycjdIWDJydWdvVUJWcXhEM0JF?=
 =?utf-8?B?OXBKZWhiK2dXT21mTHBmL2VocENVQkNTNmQvRDNqdGkxblJFczByRUpQSEFj?=
 =?utf-8?B?d2h0VXcvQ3dCL3c0bmpESFlWRUYwRWR1cHcrUzV6dzRlOTAvZW9JbnhqV2F1?=
 =?utf-8?Q?0qiWAOzEpSI/0j8h4Jc8h2Fqv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 841e74dc-266c-4063-6001-08dc23c44550
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 07:55:06.2901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sFMUgEXnKgi7Fq8OuRQBugVZcrOTgtb5Ar/eX1qNY6wlh3gXsp1/8cc7f+RVTkWAnFg3x/0U1rEDK7f2czduzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5586
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA1
LzIxXSBkcm0vaTkxNS9wc3I6IERvIG5vdCB1cGRhdGUgcGh5IHBvd2VyIHN0YXRlIGluDQo+IGNh
c2Ugb2YgcGFuZWwgcmVwbGF5DQo+IA0KPiBDdXJyZW50bHkgcGFuZWwgcmVwbGF5IGlzIHN1cHBv
cnRpbmcgb25seSBtYWluIGxpbmsgb24gbW9kZSAtPiBEbyBub3QgdXBkYXRlDQo+IHBoeSBwb3dl
ciBzdGF0ZSBmb3IgcGFuZWwgcmVwbGF5Lg0KPiANCj4gQnNwZWM6IDUzMzcwDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
TEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAxMSArKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBpbmRleCA3YjMyOTBmNGUwYjQuLjg5M2M3MmVhOGNmMSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNjgxLDEzICsxNjgxLDE1
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ICAJaWYgKCFwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKGludGVsX2Rw
KSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlf
ZW5hYmxlZCkNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkgew0K
PiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIkVuYWJsaW5nIFBhbmVsIFJlcGxheVxu
Iik7DQo+IC0JZWxzZQ0KPiArCX0gZWxzZSB7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+
ZHJtLCAiRW5hYmxpbmcgUFNSJXNcbiIsDQo+ICAJCQkgICAgaW50ZWxfZHAtPnBzci5wc3IyX2Vu
YWJsZWQgPyAiMiIgOiAiMSIpOw0KPiANCj4gLQlpbnRlbF9zbnBzX3BoeV91cGRhdGVfcHNyX3Bv
d2VyX3N0YXRlKGRldl9wcml2LCBwaHksIHRydWUpOw0KPiArCQlpbnRlbF9zbnBzX3BoeV91cGRh
dGVfcHNyX3Bvd2VyX3N0YXRlKGRldl9wcml2LCBwaHksDQo+IHRydWUpOw0KPiArCX0NCj4gKw0K
PiAgCWludGVsX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCk7DQo+ICAJaW50ZWxfcHNyX2VuYWJs
ZV9zb3VyY2UoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiAgCWludGVsX2RwLT5wc3IuZW5hYmxl
ZCA9IHRydWU7DQo+IEBAIC0xNzk0LDcgKzE3OTYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3Jf
ZGlzYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJCQkgICAg
IENMS0dBVEVfRElTX01JU0NfRE1BU0NfR0FUSU5HX0RJUywNCj4gMCk7DQo+ICAJfQ0KPiANCj4g
LQlpbnRlbF9zbnBzX3BoeV91cGRhdGVfcHNyX3Bvd2VyX3N0YXRlKGRldl9wcml2LCBwaHksIGZh
bHNlKTsNCj4gKwlpZiAoIWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+ICsJ
CWludGVsX3NucHNfcGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUoZGV2X3ByaXYsIHBoeSwNCj4g
ZmFsc2UpOw0KPiANCj4gIAkvKiBEaXNhYmxlIFBTUiBvbiBTaW5rICovDQo+ICAJZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZHLCAwKTsNCj4gLS0NCj4gMi4z
NC4xDQoNCg==
