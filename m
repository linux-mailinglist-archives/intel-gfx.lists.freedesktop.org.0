Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AB99BF1F4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 16:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625A010E19F;
	Wed,  6 Nov 2024 15:44:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AA3bl0wf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2054810E083;
 Wed,  6 Nov 2024 15:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730907857; x=1762443857;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=YGDBZXJ7djjLRPgZQRdZCdx1CNAuqSfOznUVSDZJzVw=;
 b=AA3bl0wfNN4yJIhOgVMsCUHPmrXkWxbayEVCNRBJ6ajGuANxdgF8XxOd
 cW8eWwkJZdQ5PKmfOrS2m72T5NgRVFBByMn1tuPpVJFt1DvkqbgYwu/Mn
 G8dxB/cMAylIEi76IWTeTM8ImBOsDC/E313IEFf+F2QRwSa4/xvay0Pqa
 yANpbu81pab6LK5X5UmCT87DguOXPwisnJc4WoMeBKww/ziYugMRntFyS
 BEKiQcuhJw8wedlGuw28lazvmQ3XbNUsI1mG1lWNO8nN1zfpw19GmHIUM
 kxdjYoQvi20vIBQ9hhe1uxe3Zu01NsTZcNECsiBNzfh7rtlUo3/XtPFcg Q==;
X-CSE-ConnectionGUID: afuu+s0pSkObMY/zAoY8MQ==
X-CSE-MsgGUID: jDPS77ihRiKXA/GxN4gP9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30674341"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30674341"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 07:44:17 -0800
X-CSE-ConnectionGUID: OlT02hhYQmaWShbXtkj0Vg==
X-CSE-MsgGUID: yxPZnj69T6uQQlN3l/7U3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="115441623"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 07:44:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 07:44:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 07:44:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 07:44:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=STLrgu+2NKwy2ci2ehnLttRCvHYlEULvFADdwlPyqiIZiyq1Hk1Y/HuTuRhONR5+wEd70nBQpWtgpH8WMfqehg8VcjadtjyDPYm2VfS4fomdDRLRiKj//l+Jspl+i+meo/wzE4T/hD0yejyj4dToue0vVCk4MBQ7K49P9KzPd5EwclkvtZ8CdqEc6yFc6Hf2vFWSZx8+GekJHZ/nWQn4HH9BpBUvNyHMWipmqqbJU5mBGtZn6b6n1DQVVCqefcO7cJ9MEKrZJ5zZEdgj0xB8jNItFwZoo/LFgpl8t36+WIM2iRlg30bVzsmkSzbXFsbDDF9HRW8I/mMQCIvjfRKj3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YGDBZXJ7djjLRPgZQRdZCdx1CNAuqSfOznUVSDZJzVw=;
 b=OXy5fQGQFN0/af2qzSC08fYU2jvTEbJBODBsoNkDv97EZ7IkK99oYao/CP80iiqFD7KUhrP2fjHm0QbOCV2SXQuS6xN3otcr5oPYTazXAB7nIsP8xVrL2xgkv5FX+W2K2TlEd+ShHw5FeTfUmXJubftiSLUu/MKxKAdXuqACTTlGP/rhUR2TUd2GllIuoW++6/brSOcQoH7l0hVCE1MNm/NQvyQSFHSUTF70/d0QR6S7bXYkxPWM0hAhs9DGQqnRBL9qv0ICeTtx77uYKiBvNFBOwFVi6yGs8dqRrZBl0zK2qj/viBuyF5Lz2mim7LAoEl1UrNrop1s1XCsMMq/2fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7900.namprd11.prod.outlook.com (2603:10b6:930:7a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 15:44:09 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 15:44:09 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: add mobile platform group
Thread-Topic: [PATCH v2] drm/i915/display: add mobile platform group
Thread-Index: AQHbMC4e0GoZIkNZK0mSBqx8qyQOBrKqZRGA
Date: Wed, 6 Nov 2024 15:44:08 +0000
Message-ID: <346b321c710fd7c31894335eebc4f5d72c981cb8.camel@intel.com>
References: <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
 <20241106092713.3930480-1-jani.nikula@intel.com>
In-Reply-To: <20241106092713.3930480-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7900:EE_
x-ms-office365-filtering-correlation-id: fcb091c7-6402-4409-1965-08dcfe79da79
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dXEyYUU5Q0dUYzBsY29vd1NiU1QydFlJS2JWYVFVNVZTVTFTL0RGc1J5bTQ4?=
 =?utf-8?B?OGV6VU5PQmZ2bWV5OS9UZ2RWWk1GNkh3NjI5SDZBL2ZuU1JIMTlwZWhqYUlx?=
 =?utf-8?B?Q3Y0cGpKeHFiQ2c0S0FNUkMxOVp0OGxHdVJINWd0aE80WmpVcHF5dFJPR0l4?=
 =?utf-8?B?bXpvS1pGZHY3Zm1SZm5mN21ZUHFNSnJZcm13cFBSMGI5ZGMxN2d4VWVkZHl1?=
 =?utf-8?B?RXplaks3eUx4ZktJS3JFcHlOSmFsQVJTWXhQU2RpQ2tkekt2a0t1UDZHYlRU?=
 =?utf-8?B?bVpiZ2lRcVp4eWo3a1J2UEMxWGY2eSsrcEdOWXFYTmQ1Vm5Damo3aG42Z25B?=
 =?utf-8?B?SnRWcy9nRW1zT3JkZ0VjZm53eks1Zk1zM2E2VUZwOFFmZU9NcjVpSDljL2tp?=
 =?utf-8?B?NlpEK2hqT0FDSC9WdUlzYlMwblR6YTkzUU5aVjd4M09scTdpZ0JvaXY2K2hD?=
 =?utf-8?B?TFZyZHlsZDBoSWhSUDA1UStxRFNMZkNrRWNKWkIxS1ZLM1F2c3FLVnNhcVZY?=
 =?utf-8?B?T1VCK25PTEh3YmNwbGNvMVRyMkEzcDQzcWhsM280Zlh3ZXQzdUhHcW10YzdM?=
 =?utf-8?B?dXdUUGlMNkNzYjVTKzB5Nm1PbDlGNTQvbyt5YnJzUzBMVWpocHk1T2pwY2or?=
 =?utf-8?B?ZERHdU1IOC9EcW8wZGhVczZHZEVHV1RzYVN5OWlGVVYyeSsxREVnWGhsM1Jq?=
 =?utf-8?B?NEFVWTNoZnp3Qko4N2dRV0gwcGhOL0xqQkhOMDFtOENYenVxZ0RLUlRnSVI0?=
 =?utf-8?B?TFp5blRWK0xuYU9zdTFWSHdVK09NQzRlamk3TVZSYUMydmJXamNqMkZYU3lL?=
 =?utf-8?B?UWdtUFJmUExnd1gxVm1jaE4xWUY0alB2dkk5bkFZSnJKenZ4WnJoSm9kWWpu?=
 =?utf-8?B?YzhsQjdzUmtWQjdJSVpVbUI5UDJld1l6U2UvSXlJVnM3L21ETnVDNlB1Y0p6?=
 =?utf-8?B?Qnh1T3lCZW1ISllmSUVvd1Y4UGE0ZjZFeHdKL25CR2JqejltK250RVYvK3Qw?=
 =?utf-8?B?MXYwRU5zdVVsQURZdGg0LzZRMk4rTWFJNTdiL2E1SGRRS3cvY01CR1ZtVXhr?=
 =?utf-8?B?TnNmR1J1NkV5dUFnK3NLaklDWFpWUU9GMDhSNVUvWUt2Q3psWERIRlBOamll?=
 =?utf-8?B?T2xYb2VsQkt1V1pQQkxLSnVnY3BLbkpVRXpmZU93QWlwUkJnaG96TUZ5aUtI?=
 =?utf-8?B?S2VndlJLeW9mOG8rZlJBd2hPZ3BkaFg3U3BySmNjUkQvS3NCZE55OW1vRzhi?=
 =?utf-8?B?cmtOODNnME9oQnhjTDMxUVZjVll6TzZtVkJsY1FJMTRURVpzcjNyVlZJSkFo?=
 =?utf-8?B?VGRNZWJCY1k3UjRxd215ZlhwTVNrZERGL3RFRFBsS2VMUUhoMzNzMllxV0Rm?=
 =?utf-8?B?Qi9aMjFHaVVkWHhnb25kZXdMaVFpRGd4Ry9WdlV2dkRpL2dqWVI4MmQxZkNH?=
 =?utf-8?B?RU10TG9za1NuZlUwZHd6bk5LbHNrSzVLVitxcGg4N1ppRzBEaWU1R0hhWFRN?=
 =?utf-8?B?MnpCUGxjRG9WZFB0aDVBTmp4aERpLzN3Q2x5Q01VOFZsUzZ6VDY5QW9mQ0FE?=
 =?utf-8?B?SkJhOFJ2WmhoaU5YbElCK24rYWo0L21GeUVHaEJ1dTR3S1Q3dXlCK1h3ZzBk?=
 =?utf-8?B?VkhZaTNvWkM3U0Z4bjU1cU93eXZaUkdQdXRrbm5nek1hQTBxdlByaEplb25z?=
 =?utf-8?B?WUVDOURUMVNISWdBdUc2ZWxNWUdSaCtyY2g5SHdxK0NldkJVRjVZRU42KzdJ?=
 =?utf-8?B?L2xYRmV5eDhjNC9yZWhsRzliaVNaQ1RzQ3lGenhJRHhRWlJiMzE2eElEd0lw?=
 =?utf-8?Q?F6vFmMoQWwWGrH3/S3yLpUZ4K+1m0ki6NjjhE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2d1SVhwSFpBbE9acjYrWUFvMSs4NkJmTWQvKzByZVoxK29VVXlrT0NsUmsz?=
 =?utf-8?B?SWE0YWJhSyszbHU3ZTlRNGRYdDh4UFBDSW9iUm5Kdm0rN0hpQVJkakVYYTd2?=
 =?utf-8?B?dm83N1dPU0JKRGJGYUNVOFFtRVR6KzhSVlJMcTl4a04yWjRPOW9kcDN6aXBW?=
 =?utf-8?B?dmdycERGUGJCcXJSQ0xjOE1SUnhUbnZvcXlXS3p4WHp0S1RqK3ExY1Vyazl6?=
 =?utf-8?B?VDZ2cWVqUkl2N1NybGZVWU5ldWY4b3lzaGdsQ0o5YTFSNXdzK3VTdHN5bEov?=
 =?utf-8?B?bXlwWmtPa1pkUmMyVkVBS2FEcW56UDg5aGFhOWI1cnJia2RJWHBJbmx2dnJl?=
 =?utf-8?B?S1JFZVpaYUp4eEZRQW1MZy9QWDl6N0VGMGNEZFgzeTdHU2ptc0p6UTNweGw1?=
 =?utf-8?B?eUQ5bXR6dlpxWFpkRDlBTVVCWXpabWp5K1NsZ055R3hKdUVCdVhET2hLODRE?=
 =?utf-8?B?UkJuSDZMT2NoOCtJQmFFMUZ2VmQ3bFNhVEc2YmN2TUsvZStQY0dzVCtsUFJl?=
 =?utf-8?B?eHFweURKUmY1bkRkT0hHU2lOdk5zMkN4OGRXZi9sY2Fua3NhRDJxVUNqWTdy?=
 =?utf-8?B?SUQ4eXI4c20zS3h4MS9KdWJyOXAzY0lYZzQreU1pTkFUZzIrNXI2NHl4L2Mv?=
 =?utf-8?B?b3FuYllteHJ3VmhLY0p1SFRoR0ZpZzdtenI4YzZCVXV3OHlTdGorcWZTTVpl?=
 =?utf-8?B?RU1oeGcwb3pta082Mk9sdXRiOUFkd1FJb2gxaEEvS0g1eGdXR1AwdTVMaVFK?=
 =?utf-8?B?K28rWXZKeHRaQ3FBZXo3TmJtR2xZbzhnN016YVFJemhuekFjc1ZBN2o0L01T?=
 =?utf-8?B?cXA2SXlKTUpmVGllWnhLazJxREVFb25veHAxWk5velpBSjYvZmtpWmM1b0h0?=
 =?utf-8?B?R0hoekJXcFVaREZ5Q05ZVFlnVWRJUDBkL0pFOFZMdkZNekJVSGpUbWQzTjdG?=
 =?utf-8?B?SE4rTFdsSThNdlQ2MHE0djVuKzZTaFJGeWVOS09JbG9wTDRYYy9wVCt1aVhx?=
 =?utf-8?B?NkNBL2tBWUQ2MFdhaG1NSnR5Q3NFZE82MWx6My9KTktPZzhjTENuc0s5V2RC?=
 =?utf-8?B?eFZZT2NISXFwdGV6YlB1aUU1c0FzUEtZbUJCWncrU2JmcXBudDU2citMbXov?=
 =?utf-8?B?S3VQVExGemtncTVDSWhRdWtXZTczSXpzWjJVanBERmdMeU94R25LdXdaVnpZ?=
 =?utf-8?B?Rk52aFZXQTFFeElXZ1l5YWgvUUcyRE8wNTB0by9USmt6ZGpoNDYvL01xcEZC?=
 =?utf-8?B?T1hZTjZCOFN4SG92ME03ZUFTZmVocDR5OU9xbENJbjNHaHZTeDlnbUc0c1k2?=
 =?utf-8?B?dWlPMGsyREF6dTNpZDZOUUZXcUlCWU15TzZESDVOVUE1ejl3ZXNrMXk5eFBW?=
 =?utf-8?B?aU1pVUkvMzgzaVNxU2xaZVZURE92U1A2L2NKWWt1KzFHb0dBM3U2OFNQeitB?=
 =?utf-8?B?c3VnWGlpSkZSNDFMQllvWDUyK2sxWnNVNWxxWDZRVHFiWUpwaE82VDZ6WkNW?=
 =?utf-8?B?cXlURmlYMHRVMHFvSjk0SnIrOVlTQ1JERXkwVjlXODFzYStuOHZ2dndLTU0v?=
 =?utf-8?B?b1E5VkNEaDZpV3J5ZC9VczlXOW1yd1BIZC9JTW5pa0w0MlBJeTl4Nlo1TTk4?=
 =?utf-8?B?emtKVTBOb1hacm5yWVBXZlVMR1NYVEVFSzdYVGsxa3dxNWlXZTFtbW8ySlNC?=
 =?utf-8?B?Mk9MZlF6VGJEVWtMUzMwd1VScnFiSlg5THBqeDZVaTF0QlZaTGlOODBKZ2ZR?=
 =?utf-8?B?OUEvMXVWalovc1kwZDZ1V1FLeDRscERRS0xFMjhjNXRjemw4cWt1V1o1ZTJv?=
 =?utf-8?B?S0xrcEFBV2VFSVpkZFIxZkdlbFVJaklLa29raDlYTGw4eGkrT2d5R2RhNFNa?=
 =?utf-8?B?dWJCK3R1U01wd0xPZk5LellPbkRqZk5SUFVnYTNzaGFsMExuTEM0cW5Ham1S?=
 =?utf-8?B?bGpHTWtMZUhKejM1QUM2Y0hKQkF1a0tENXRwSzRSc2dQWFprTm1YUUloQXVa?=
 =?utf-8?B?WVVnUVROMTZYcE9hL3RqMVJPQ01aa2tCUVgvM0FJNVFLWVA1Ujk2NG5WV3Ey?=
 =?utf-8?B?K3RVeHp0RG90cW96TFljS05UeDlDcFl2NXlmdnpFbU9ESzg3eUc5Z1VKSDlQ?=
 =?utf-8?B?YUFlT0NpSTg4OHlHV1FHZ2x4bXFBdG1ycG1FdHhPMi82dzhUV2ZPK0xZYkFF?=
 =?utf-8?Q?B9Xyct7nKy8KNz8GI3YyH1o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A4E3209589AEAB429F9F6CE4EDA6F13B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb091c7-6402-4409-1965-08dcfe79da79
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 15:44:08.9545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LtL7CyZQ8mwb0LGemtkfEBNd/HnafA+KfIIlNj804TLAKr3Zq/S2obIrWIC3YDpvf3zGAqzq+c1sZ+l+JaZfvt0RtIAQFAI8rtJWYiCpVmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7900
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

T24gV2VkLCAyMDI0LTExLTA2IGF0IDExOjI3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBJ
ZGVudGlmeSBtb2JpbGUgcGxhdGZvcm1zIHNlcGFyYXRlbHkgaW4gZGlzcGxheSwgdXNpbmcgdGhl
IHBsYXRmb3JtCj4gZ3JvdXAgbWVjaGFuaXNtLiBUaGlzIGVuYWJsZXMgZHJvcHBpbmcgdGhlIGRl
cGVuZGVuY3kgb24gaTkxNV9kcnYuaAo+IElTX01PQklMRSgpIGZyb20gZGlzcGxheSBjb2RlLgo+
IAo+IHYyOiBNYWtlIHNuYl9kaXNwbGF5IHN0YXRpYyAoa2VybmVsIHRlc3Qgcm9ib3QpCj4gCj4g
U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0K
PiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmPCoMKgIHwgMTA0
ICsrKysrKysrKysrKy0tLS0tLQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZXZpY2UuaMKgwqAgfMKgwqAgMSArCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDcwIGluc2VydGlv
bnMoKyksIDM1IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkg
PHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiBpbmRleCA0MWRm
N2E4ZmQzMmUuLjY4Y2I3ZjliOWVmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiBAQCAtMjUzLDYgKzI1Myw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mbyBub19kaXNwbGF5
ID0ge307Cj4gwqAKPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBpODMwX2Rl
c2MgPSB7Cj4gwqDCoMKgwqDCoMKgwqDCoFBMQVRGT1JNKGk4MzApLAo+ICvCoMKgwqDCoMKgwqDC
oFBMQVRGT1JNX0dST1VQKG1vYmlsZSksCj4gwqDCoMKgwqDCoMKgwqDCoC5pbmZvID0gJihjb25z
dCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mbykgewo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgSTgzMF9ESVNQTEFZLAo+IMKgCj4gQEAgLTI3MSw2ICsyNzIsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2Rlc2MgaTg0NV9kZXNjID0gewo+IMKgCj4gwqBz
dGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2Rlc2MgaTg1eF9kZXNjID0gewo+IMKgwqDCoMKg
wqDCoMKgwqBQTEFURk9STShpODV4KSwKPiArwqDCoMKgwqDCoMKgwqBQTEFURk9STV9HUk9VUCht
b2JpbGUpLAo+IMKgwqDCoMKgwqDCoMKgwqAuaW5mbyA9ICYoY29uc3Qgc3RydWN0IGludGVsX2Rp
c3BsYXlfZGV2aWNlX2luZm8pIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEk4
MzBfRElTUExBWSwKPiDCoAo+IEBAIC0zMTMsNiArMzE1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBwbGF0Zm9ybV9kZXNjIGk5MTVnX2Rlc2MgPSB7Cj4gwqAKPiDCoHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcGxhdGZvcm1fZGVzYyBpOTE1Z21fZGVzYyA9IHsKPiDCoMKgwqDCoMKgwqDCoMKgUExBVEZP
Uk0oaTkxNWdtKSwKPiArwqDCoMKgwqDCoMKgwqBQTEFURk9STV9HUk9VUChtb2JpbGUpLAo+IMKg
wqDCoMKgwqDCoMKgwqAuaW5mbyA9ICYoY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNl
X2luZm8pIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjNfRElTUExBWSwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEk5WFhfQ09MT1JTLAo+IEBAIC0zMzcs
NiArMzQwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXNjIGk5NDVnX2Rlc2Mg
PSB7Cj4gwqAKPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBpOTQ1Z21fZGVz
YyA9IHsKPiDCoMKgwqDCoMKgwqDCoMKgUExBVEZPUk0oaTkxNWdtKSwKPiArwqDCoMKgwqDCoMKg
wqBQTEFURk9STV9HUk9VUChtb2JpbGUpLAo+IMKgwqDCoMKgwqDCoMKgwqAuaW5mbyA9ICYoY29u
c3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8pIHsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoEdFTjNfRElTUExBWSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoEk5WFhfQ09MT1JTLAo+IEBAIC0zNTgsMTMgKzM2MiwyMSBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHBsYXRmb3JtX2Rlc2MgZzMzX2Rlc2MgPSB7Cj4gwqDCoMKgwqDCoMKgwqDCoH0sCj4g
wqB9Owo+IMKgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBwbnZfZGVzYyA9
IHsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvIHBudl9k
aXNwbGF5ID0gewo+ICvCoMKgwqDCoMKgwqDCoEdFTjNfRElTUExBWSwKPiArwqDCoMKgwqDCoMKg
wqBJOVhYX0NPTE9SUywKPiArwqDCoMKgwqDCoMKgwqAuaGFzX2hvdHBsdWcgPSAxLAo+ICt9Owo+
ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXNjIHBudl9nX2Rlc2MgPSB7Cj4g
wqDCoMKgwqDCoMKgwqDCoFBMQVRGT1JNKHBpbmV2aWV3KSwKPiAtwqDCoMKgwqDCoMKgwqAuaW5m
byA9ICYoY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8pIHsKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VOM19ESVNQTEFZLAo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBJOVhYX0NPTE9SUywKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgLmhhc19ob3RwbHVnID0gMSwKPiAtwqDCoMKgwqDCoMKgwqB9LAo+ICvCoMKgwqDCoMKgwqDC
oC5pbmZvID0gJnBudl9kaXNwbGF5LAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBw
bGF0Zm9ybV9kZXNjIHBudl9tX2Rlc2MgPSB7Cj4gK8KgwqDCoMKgwqDCoMKgUExBVEZPUk0ocGlu
ZXZpZXcpLAo+ICvCoMKgwqDCoMKgwqDCoFBMQVRGT1JNX0dST1VQKG1vYmlsZSksCj4gK8KgwqDC
oMKgwqDCoMKgLmluZm8gPSAmcG52X2Rpc3BsYXksCj4gwqB9Owo+IMKgCj4gwqAjZGVmaW5lIEdF
TjRfRElTUExBWSBcCj4gQEAgLTM5MSw2ICs0MDMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBs
YXRmb3JtX2Rlc2MgaTk2NWdfZGVzYyA9IHsKPiDCoAo+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBw
bGF0Zm9ybV9kZXNjIGk5NjVnbV9kZXNjID0gewo+IMKgwqDCoMKgwqDCoMKgwqBQTEFURk9STShp
OTY1Z20pLAo+ICvCoMKgwqDCoMKgwqDCoFBMQVRGT1JNX0dST1VQKG1vYmlsZSksCj4gwqDCoMKg
wqDCoMKgwqDCoC5pbmZvID0gJihjb25zdCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5m
bykgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VONF9ESVNQTEFZLAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmhhc19vdmVybGF5ID0gMSwKPiBAQCAtNDE0
LDYgKzQyNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBnNDVfZGVzYyA9
IHsKPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBnbTQ1X2Rlc2MgPSB7Cj4g
wqDCoMKgwqDCoMKgwqDCoFBMQVRGT1JNKGdtNDUpLAo+IMKgwqDCoMKgwqDCoMKgwqBQTEFURk9S
TV9HUk9VUChnNHgpLAo+ICvCoMKgwqDCoMKgwqDCoFBMQVRGT1JNX0dST1VQKG1vYmlsZSksCj4g
wqDCoMKgwqDCoMKgwqDCoC5pbmZvID0gJihjb25zdCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZp
Y2VfaW5mbykgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VONF9ESVNQTEFZ
LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLnN1cHBvcnRzX3R2ID0gMSwKPiBA
QCAtNDQ0LDYgKzQ1OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBpbGtf
ZF9kZXNjID0gewo+IMKgCj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2Rlc2MgaWxr
X21fZGVzYyA9IHsKPiDCoMKgwqDCoMKgwqDCoMKgUExBVEZPUk0oaXJvbmxha2UpLAo+ICvCoMKg
wqDCoMKgwqDCoFBMQVRGT1JNX0dST1VQKG1vYmlsZSksCj4gwqDCoMKgwqDCoMKgwqDCoC5pbmZv
ID0gJihjb25zdCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mbykgewo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgSUxLX0RJU1BMQVksCj4gwqAKPiBAQCAtNDUxLDM4ICs0
NjYsNTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXNjIGlsa19tX2Rlc2MgPSB7
Cj4gwqDCoMKgwqDCoMKgwqDCoH0sCj4gwqB9Owo+IMKgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGxhdGZvcm1fZGVzYyBzbmJfZGVzYyA9IHsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
aXNwbGF5X2RldmljZV9pbmZvIHNuYl9kaXNwbGF5ID0gewo+ICvCoMKgwqDCoMKgwqDCoC5oYXNf
aG90cGx1ZyA9IDEsCj4gK8KgwqDCoMKgwqDCoMKgSTlYWF9QSVBFX09GRlNFVFMsCj4gK8KgwqDC
oMKgwqDCoMKgSTlYWF9DVVJTT1JfT0ZGU0VUUywKPiArwqDCoMKgwqDCoMKgwqBJTEtfQ09MT1JT
LAo+ICsKPiArwqDCoMKgwqDCoMKgwqAuX19ydW50aW1lX2RlZmF1bHRzLmlwLnZlciA9IDYsCj4g
K8KgwqDCoMKgwqDCoMKgLl9fcnVudGltZV9kZWZhdWx0cy5waXBlX21hc2sgPSBCSVQoUElQRV9B
KSB8IEJJVChQSVBFX0IpLAo+ICvCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMuY3B1
X3RyYW5zY29kZXJfbWFzayA9Cj4gK8KgwqDCoMKgwqDCoMKgQklUKFRSQU5TQ09ERVJfQSkgfCBC
SVQoVFJBTlNDT0RFUl9CKSwKPiArwqDCoMKgwqDCoMKgwqAuX19ydW50aW1lX2RlZmF1bHRzLnBv
cnRfbWFzayA9IEJJVChQT1JUX0EpIHwgQklUKFBPUlRfQikgfCBCSVQoUE9SVF9DKSB8IEJJVChQ
T1JUX0QpLCAvKgo+IERQIEEsIFNEVk8vSERNSS9EUCBCLCBIRE1JL0RQIEMvRCAqLwo+ICvCoMKg
wqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMuZmJjX21hc2sgPSBCSVQoSU5URUxfRkJDX0Ep
LAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXNjIHNuYl9kX2Rl
c2MgPSB7Cj4gwqDCoMKgwqDCoMKgwqDCoFBMQVRGT1JNKHNhbmR5YnJpZGdlKSwKPiAtwqDCoMKg
wqDCoMKgwqAuaW5mbyA9ICYoY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8p
IHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmhhc19ob3RwbHVnID0gMSwKPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgSTlYWF9QSVBFX09GRlNFVFMsCj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEk5WFhfQ1VSU09SX09GRlNFVFMsCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoElMS19DT0xPUlMsCj4gK8KgwqDCoMKgwqDCoMKgLmluZm8g
PSAmc25iX2Rpc3BsYXksCj4gK307Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgLl9fcnVudGltZV9kZWZhdWx0cy5pcC52ZXIgPSA2LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAuX19ydW50aW1lX2RlZmF1bHRzLnBpcGVfbWFzayA9IEJJVChQSVBFX0EpIHwg
QklUKFBJUEVfQiksCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVf
ZGVmYXVsdHMuY3B1X3RyYW5zY29kZXJfbWFzayA9Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoEJJVChUUkFOU0NPREVSX0EpIHwgQklUKFRSQU5TQ09ERVJfQiksCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMucG9ydF9tYXNrID0gQklU
KFBPUlRfQSkgfCBCSVQoUE9SVF9CKSB8IEJJVChQT1JUX0MpIHwKPiBCSVQoUE9SVF9EKSwgLyog
RFAgQSwgU0RWTy9IRE1JL0RQIEIsIEhETUkvRFAgQy9EICovCj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMuZmJjX21hc2sgPSBCSVQoSU5URUxfRkJD
X0EpLAo+IC3CoMKgwqDCoMKgwqDCoH0sCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1f
ZGVzYyBzbmJfbV9kZXNjID0gewo+ICvCoMKgwqDCoMKgwqDCoFBMQVRGT1JNKHNhbmR5YnJpZGdl
KSwKPiArwqDCoMKgwqDCoMKgwqBQTEFURk9STV9HUk9VUChtb2JpbGUpLAo+ICvCoMKgwqDCoMKg
wqDCoC5pbmZvID0gJnNuYl9kaXNwbGF5LAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvIGl2Yl9kaXNwbGF5ID0gewo+ICvCoMKgwqDCoMKg
wqDCoC5oYXNfaG90cGx1ZyA9IDEsCj4gK8KgwqDCoMKgwqDCoMKgSVZCX1BJUEVfT0ZGU0VUUywK
PiArwqDCoMKgwqDCoMKgwqBJVkJfQ1VSU09SX09GRlNFVFMsCj4gK8KgwqDCoMKgwqDCoMKgSVZC
X0NPTE9SUywKPiArCj4gK8KgwqDCoMKgwqDCoMKgLl9fcnVudGltZV9kZWZhdWx0cy5pcC52ZXIg
PSA3LAo+ICvCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMucGlwZV9tYXNrID0gQklU
KFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0MpLAo+ICvCoMKgwqDCoMKgwqDCoC5f
X3J1bnRpbWVfZGVmYXVsdHMuY3B1X3RyYW5zY29kZXJfbWFzayA9Cj4gK8KgwqDCoMKgwqDCoMKg
QklUKFRSQU5TQ09ERVJfQSkgfCBCSVQoVFJBTlNDT0RFUl9CKSB8IEJJVChUUkFOU0NPREVSX0Mp
LAo+ICvCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMucG9ydF9tYXNrID0gQklUKFBP
UlRfQSkgfCBCSVQoUE9SVF9CKSB8IEJJVChQT1JUX0MpIHwgQklUKFBPUlRfRCksIC8qCj4gRFAg
QSwgU0RWTy9IRE1JL0RQIEIsIEhETUkvRFAgQy9EICovCj4gK8KgwqDCoMKgwqDCoMKgLl9fcnVu
dGltZV9kZWZhdWx0cy5mYmNfbWFzayA9IEJJVChJTlRFTF9GQkNfQSksCj4gwqB9Owo+IMKgCj4g
LXN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyBpdmJfZGVzYyA9IHsKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXNjIGl2Yl9kX2Rlc2MgPSB7Cj4gwqDCoMKgwqDCoMKg
wqDCoFBMQVRGT1JNKGl2eWJyaWRnZSksCj4gLcKgwqDCoMKgwqDCoMKgLmluZm8gPSAmKGNvbnN0
IHN0cnVjdCBpbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvKSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoC5oYXNfaG90cGx1ZyA9IDEsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoElWQl9QSVBFX09GRlNFVFMsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oElWQl9DVVJTT1JfT0ZGU0VUUywKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgSVZC
X0NPTE9SUywKPiArwqDCoMKgwqDCoMKgwqAuaW5mbyA9ICZpdmJfZGlzcGxheSwKPiArfTsKPiDC
oAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuX19ydW50aW1lX2RlZmF1bHRzLmlw
LnZlciA9IDcsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVm
YXVsdHMucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0Mp
LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuX19ydW50aW1lX2RlZmF1bHRzLmNw
dV90cmFuc2NvZGVyX21hc2sgPQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBCSVQo
VFJBTlNDT0RFUl9BKSB8IEJJVChUUkFOU0NPREVSX0IpIHwgQklUKFRSQU5TQ09ERVJfQyksCj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMucG9ydF9t
YXNrID0gQklUKFBPUlRfQSkgfCBCSVQoUE9SVF9CKSB8IEJJVChQT1JUX0MpIHwKPiBCSVQoUE9S
VF9EKSwgLyogRFAgQSwgU0RWTy9IRE1JL0RQIEIsIEhETUkvRFAgQy9EICovCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMuZmJjX21hc2sgPSBCSVQo
SU5URUxfRkJDX0EpLAo+IC3CoMKgwqDCoMKgwqDCoH0sCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGxhdGZvcm1fZGVzYyBpdmJfbV9kZXNjID0gewo+ICvCoMKgwqDCoMKgwqDCoFBMQVRGT1JNKGl2
eWJyaWRnZSksCj4gK8KgwqDCoMKgwqDCoMKgUExBVEZPUk1fR1JPVVAobW9iaWxlKSwKPiArwqDC
oMKgwqDCoMKgwqAuaW5mbyA9ICZpdmJfZGlzcGxheSwKPiDCoH07Cj4gwqAKPiDCoHN0YXRpYyBj
b25zdCBzdHJ1Y3QgcGxhdGZvcm1fZGVzYyB2bHZfZGVzYyA9IHsKPiBAQCAtMTM4NSwxMSArMTQx
NiwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHsKPiDCoMKgwqDCoMKgwqDCoMKgSU5URUxfSTk2
NUdNX0lEUyhJTlRFTF9ESVNQTEFZX0RFVklDRSwgJmk5NjVnbV9kZXNjKSwKPiDCoMKgwqDCoMKg
wqDCoMKgSU5URUxfR000NV9JRFMoSU5URUxfRElTUExBWV9ERVZJQ0UsICZnbTQ1X2Rlc2MpLAo+
IMKgwqDCoMKgwqDCoMKgwqBJTlRFTF9HNDVfSURTKElOVEVMX0RJU1BMQVlfREVWSUNFLCAmZzQ1
X2Rlc2MpLAo+IC3CoMKgwqDCoMKgwqDCoElOVEVMX1BOVl9JRFMoSU5URUxfRElTUExBWV9ERVZJ
Q0UsICZwbnZfZGVzYyksCj4gK8KgwqDCoMKgwqDCoMKgSU5URUxfUE5WX0dfSURTKElOVEVMX0RJ
U1BMQVlfREVWSUNFLCAmcG52X2dfZGVzYyksCj4gK8KgwqDCoMKgwqDCoMKgSU5URUxfUE5WX01f
SURTKElOVEVMX0RJU1BMQVlfREVWSUNFLCAmcG52X21fZGVzYyksCj4gwqDCoMKgwqDCoMKgwqDC
oElOVEVMX0lMS19EX0lEUyhJTlRFTF9ESVNQTEFZX0RFVklDRSwgJmlsa19kX2Rlc2MpLAo+IMKg
wqDCoMKgwqDCoMKgwqBJTlRFTF9JTEtfTV9JRFMoSU5URUxfRElTUExBWV9ERVZJQ0UsICZpbGtf
bV9kZXNjKSwKPiAtwqDCoMKgwqDCoMKgwqBJTlRFTF9TTkJfSURTKElOVEVMX0RJU1BMQVlfREVW
SUNFLCAmc25iX2Rlc2MpLAo+IC3CoMKgwqDCoMKgwqDCoElOVEVMX0lWQl9JRFMoSU5URUxfRElT
UExBWV9ERVZJQ0UsICZpdmJfZGVzYyksCj4gK8KgwqDCoMKgwqDCoMKgSU5URUxfU05CX0RfSURT
KElOVEVMX0RJU1BMQVlfREVWSUNFLCAmc25iX2RfZGVzYyksCj4gK8KgwqDCoMKgwqDCoMKgSU5U
RUxfU05CX01fSURTKElOVEVMX0RJU1BMQVlfREVWSUNFLCAmc25iX21fZGVzYyksCj4gK8KgwqDC
oMKgwqDCoMKgSU5URUxfSVZCX0RfSURTKElOVEVMX0RJU1BMQVlfREVWSUNFLCAmaXZiX2RfZGVz
YyksCj4gK8KgwqDCoMKgwqDCoMKgSU5URUxfSVZCX01fSURTKElOVEVMX0RJU1BMQVlfREVWSUNF
LCAmaXZiX21fZGVzYyksCj4gwqDCoMKgwqDCoMKgwqDCoElOVEVMX0hTV19JRFMoSU5URUxfRElT
UExBWV9ERVZJQ0UsICZoc3dfZGVzYyksCj4gwqDCoMKgwqDCoMKgwqDCoElOVEVMX1ZMVl9JRFMo
SU5URUxfRElTUExBWV9ERVZJQ0UsICZ2bHZfZGVzYyksCj4gwqDCoMKgwqDCoMKgwqDCoElOVEVM
X0JEV19JRFMoSU5URUxfRElTUExBWV9ERVZJQ0UsICZiZHdfZGVzYyksCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4gaW5k
ZXggZTEzOTg2ODljZGE1Li44NDM3OGM3ODc5MjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4gQEAgLTI0LDYgKzI0
LDcgQEAgc3RydWN0IHBjaV9kZXY7Cj4gwqAjZGVmaW5lIElOVEVMX0RJU1BMQVlfUExBVEZPUk1T
KGZ1bmMpIFwKPiDCoMKgwqDCoMKgwqDCoMKgLyogUGxhdGZvcm0gZ3JvdXAgYWxpYXNlcyAqLyBc
Cj4gwqDCoMKgwqDCoMKgwqDCoGZ1bmMoZzR4KSAvKiBnNDUgYW5kIGdtNDUgKi8gXAo+ICvCoMKg
wqDCoMKgwqDCoGZ1bmMobW9iaWxlKSAvKiBtb2JpbGUgcGxhdGZvcm1zICovIFwKPiDCoMKgwqDC
oMKgwqDCoMKgZnVuYyhkZ2Z4KSAvKiBkaXNjcmV0ZSBncmFwaGljcyAqLyBcCj4gwqDCoMKgwqDC
oMKgwqDCoC8qIERpc3BsYXkgdmVyIDIgKi8gXAo+IMKgwqDCoMKgwqDCoMKgwqBmdW5jKGk4MzAp
IFwKCg==
