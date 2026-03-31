Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMqLGuSyy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEA6368F11
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B28710EA52;
	Tue, 31 Mar 2026 11:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLnsPwzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97E510EA40;
 Tue, 31 Mar 2026 11:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957280; x=1806493280;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8j2T6BR8LUpI3LMqR76k9TkYtVO2rmo7bppO21SbTPk=;
 b=LLnsPwzjOJ9AA+JxG5y1FvvN14pETQJYcE0mH+TbyQD741KKgLuMSXXg
 Z5Zf8n3q/DcluCmV+a0glbg/VxUtFyVlLNZIyiKOhoC6ct6JG5ESw3QGB
 b44xtwb0vWXQIqS+gEa2zlA2eKyUYovgbzcq6slyveUhPheZi/DONmPhS
 5DgStsVOzhaKwV64XZajetr5wtCPFfdBy5IB2eLWraQwwMHvj9DuRpZGo
 GHoBrQY9rkiM8atyI2TCx8Pzq9l/X6tVD8XS1mvJibgQj3p7NP/n46eDo
 Vb4sfxHB6d79XXe6ugwOCOkDKMn/SSzzUAIYUYPmsKMqV7SMV9yKuGvtr w==;
X-CSE-ConnectionGUID: LW/uhnNdRVCMFblTI0Myfw==
X-CSE-MsgGUID: /el5gBNVQg2j6FrvvnEJuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87431912"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87431912"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:19 -0700
X-CSE-ConnectionGUID: 5nnKFFg5Q2usvkd0BEvY4A==
X-CSE-MsgGUID: 0M5lE2isTKqjYK1GVseWyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223042316"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:41:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:41:17 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:41:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ELMBwDVQuFoISRdSipApPLlJZ4JcZ2GcKBaoiteJZv0HmKd3nQtPaoM5G0TdYlol1Dp5L+GoER8NJNN+c1k5duObq5iTFyVsXiYUq09CceKXEpFl9v8mSvcycl6XjGpEhiAXe93OZ3TR6j00ZXJh0d93NywypqfNsFyuOskYyMpYEGPrn+lQDZELkYKqYsHWDfMqLZENFme+mxRq2+/vgwMiCF1ZGvdN3ueHAkSDxGYGWiyr8ydvfcU6F3FusF6nXLne3vryHhq+gW7Y0FtzLFeT8GnL7WV/YA61/dAL5zJkOPY+ooqwi/9GOD1eP24AH/MNvzbPMCG/26u196gHnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TvAwWM5r4vIGeguX/Ze0KTYOY87jgLriBpbc4b9z/T4=;
 b=cvQvNyoKpJNzZ4zYVbgR0+A9wCRPFFMyClRpXO8OwbE73jUN9rPkuEFYm12JGZBLk1z7mwwCc50L/P3l42pUzCFxW2WG55wcgP5kaAt8J2yeXSe/0FBJf+9SJpfSuknoJhrImOOZqTqTnzck12KD/pCmlXEFih7PzW7PkjiuiZIWf1/pjhUxdmF0qnnA+lx+Xs2L5hpz3wqOtq3Yn1tEmeuMFSzHOtojaAQ5aozZrkTl1gxbLfTEceNiS/RekycabI8dRKHpbnad5I+ClFQvSnNC00y6suY8qnEDVC51XppxgckNL77+Yeq9x8y2kBGDGwKNkzjjzim6tCE1AN91Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6277.namprd11.prod.outlook.com (2603:10b6:208:3c3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 11:41:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:41:13 +0000
Message-ID: <f4630288-72fd-479a-b413-816a4bd4ca12@intel.com>
Date: Tue, 31 Mar 2026 17:11:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/19] drm/dp: Add DPCD for configuring AS SDP for PR + VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-5-ankit.k.nautiyal@intel.com>
 <acq-qi3C8B8rQ4o8@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acq-qi3C8B8rQ4o8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0108.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6277:EE_
X-MS-Office365-Filtering-Correlation-Id: 153da0c5-556e-428a-f7f7-08de8f1a6944
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: nxtsM28GidTdROyV+bt0HZKZZPpxCXUkvp/4BxAwk3Wbe/iewYLdBjnC1Yv0NUfAdado9JMHZzMlNIgSj22tdm7pAp10aEEGHhmU+mMIe1vKJF8Mf8kcyus6iZ6YNgnvW73cqefLUi6w2/1S5PaYcICDkGYKVvbwUGK2ITELHIqs7LGgNZ3Lvwz/8DCDfMkj6Qh7fboOZ49PnWdobelAjCOTHvuL9VCqYS+0H4AAHuCZQXY92VIYnFH6cVxYx4ehMe0rucDcCEElAw2tpzb+OkhEFk7K6aF/i2igj8bjV+thFAbMs98j/r4x3rzs6PAeurgz9UXJPDVdUZ1pehFf1I+OUoSlItp02BfKdx/clX7RvN1RPLGGqkr5W5Rq/EsV1S/nDbESIWIdVxHWmGF0AwY7jVHq0VTMR35DeAnxOBeLGLVIgmOr+MqDQykdJW/pPARVKBEGe1J6C26L7RBvuLNDjWUan3Dm5eGiWia5KvBw3F1K8h5irnJ53NY3BYwoj3WdLs91JKbJzfZXZTbvBHLJ2DTfWUpXZUA9WCrfCUfQAKudofAqGAbJJtrvSggyrsPIT88N8OttqyiHj98WtEHYMy1BCdQWSD5fUw1L0g86CDlRWHcMUgBWjoAcKWNjOe62zSWNj37jYPlxYPT6W1waD+s0uFDXcuzCgK9I+KrKnD/mzChLYjtdv5O60CibgTKwzX5KI+TmafIMYrR5dDhEGh9GLO4qSi7DIXTVVZg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0FCeVd5SmVzU09aNHJXVmJmNWd6eFgzcFRPQWNELzFkS3V4a3pUVVQ3RmVS?=
 =?utf-8?B?ZEt4WWFmVjZ3REVuQ0FGaUNjSExLTHdjdmxhczBMa0FBTWRzWHJBZ3JXWktC?=
 =?utf-8?B?TTJWNVQxMHFld0dHaWl3NUhlanFYM3VWSTRCazdPNnJmcDZtSUpUQnRBTnlR?=
 =?utf-8?B?WUFIcDVQQ3d0Yk1UYTZLZVpsNlVHUGVmeThQS2JRRStNaHMwSTRzVldYWHUv?=
 =?utf-8?B?Y25EY1VMa3JDY2hQempRMjF3eUljVmJYYzRpeG9NWEsvY1lOUHNPZW1jS3dW?=
 =?utf-8?B?K3JPTmQrTExhU3JWQlQwUW03Y1pyRFpac0J5endLWnJ3Z1FOUHF1WlFaNDBa?=
 =?utf-8?B?b1VmVzlCYzNYVjJINmgycWdVa0xaREhqRGJLRk9XeUhxODNhMUZIb1htWlV0?=
 =?utf-8?B?T2pIYU9vU3N3SHo2aGV5Q3hLWHRNM2I1Z29BMFhtZHdWekcyMTZEc0ErOHBM?=
 =?utf-8?B?bkRCeUhsS3V0NnZidmR6ZjUxT2hoWjNHOXM0Z3lGM2Ura3JBSWFLOVBaektJ?=
 =?utf-8?B?NTMzbjlQRndrM0lXcmV1Tjd0L3haWmdRUUJyMmFjOFA3VWc1Y2RXWTJuRDlJ?=
 =?utf-8?B?N0lMazlWeVY2OWp4U3FwZmxaT1lFOThFRUx2YUE5L240ZHNpWEVjaW55cW5U?=
 =?utf-8?B?OUh1SWcxam1UZWZKRWsrWmhUMXV2ekpISGQzQUtqQ0toZ1BQYWhBeVJDOWFp?=
 =?utf-8?B?SXRwMm0vS2hFdXArd29sVkcxcWZRRkY5UFhaVDhLTmlETC9ZZHMvdmhUNWV4?=
 =?utf-8?B?VGtlVGppcXNIY0FDMGxkeTRSdUo1WllmL3NtOXlGWGUzQzFRZ2lXektoVWlx?=
 =?utf-8?B?anNzQk9ZM1RyaDNwV2lZOWVDeU1LQWtiQlZOeVExMjhpVHdLSno0YUh6YUFJ?=
 =?utf-8?B?emZhVUJncU9EMGxTQm45bUUzVTdodG11RzI5NG9adWJzaVVSZjRWUUZLSmxM?=
 =?utf-8?B?MzJVTE05cFpUbC9Wd0NGMjVZanBFV2M0c1VZaEd2OXVKNnBBbnNBK08wd0p0?=
 =?utf-8?B?d0p5b1FuaG1IemFFa2hBdUowMDhzQ0puaUp6dStCdTNTeVN0TWZ1Q05WSnNo?=
 =?utf-8?B?endvY3VXRlM4VjJrM3pmaGQzNm1WNStyOWF0bWhjRGNGeTBjSzJkWWdJK1ZJ?=
 =?utf-8?B?Q0tJenB6cWVESHl3UUlSbXZpY3FGZWFyYnpQV1RNTUFlWE51dkMwVk1TS05W?=
 =?utf-8?B?ZjVyR3UrYk1sUGdjWmgwKzhzUEFPamxWZTBaZkVvTFpkVmVQTDBWUllidzRh?=
 =?utf-8?B?ZzNlM1NQWEZFTG1CRjFaSWJXU24wc2JlZzdUdk4rbDVZWDFyVDZMMUp1SWQv?=
 =?utf-8?B?blEzT056dGxRMWlzMFVtQS8yTTdNdlp2M1RUc3N6TXcxQ0RadmtiWFN5Uity?=
 =?utf-8?B?N0NDQS9ieUovSnI4MTUrQmFEVVp3NGJFTkVHRlZNZEdxd0lNYUhyOEp0MVdQ?=
 =?utf-8?B?aGptcmFxbENMM0NJc2dvU0JXdm5rbStsUVU4cjVBZm1WUjh4aThqaXMvOU5N?=
 =?utf-8?B?VGFBWitLeGh2azgwNlpJdkZyY2lkdnlJMEpxcnUzNDlqUHpFNTY3amJzTU9h?=
 =?utf-8?B?S1NiaENhUzc2dUFLUGkxbjhCUlpSQ0pVcXFyeThEaVJCWFZXVjViRWk3NCtU?=
 =?utf-8?B?ekJ1NWVraTRuVlk0cmpRZmlxSHRDQTV5dnZmeTFSUmd2WXhmbW9CT1lGaFdi?=
 =?utf-8?B?NGd4VU9mNkJKNXV5RU55Sk91akI5cmJhRExUaVVtd2xxdHB0RTRiT3RDRDF4?=
 =?utf-8?B?Kzkvb3NwKy84cklLVWU5RGRid3dIK1g3RkEybUlWWENra0NEUGdZNHhkR2VE?=
 =?utf-8?B?aEJ2enZ2SjNjVTdjcndFY3d1bkFWeWVOU05XcXFjYVkvR1pNankvK1BxSjRo?=
 =?utf-8?B?VWlpLzdvb0Y4cU9EQzZrYzVmWTU3RlJ3VGtJaCtCQ3lBTm11Zlp2THh3SUZh?=
 =?utf-8?B?bzJsaW5Rd1dEVWpoZTJFZWVmS0xLbUZMVkRZUzJ2VUwyUFJTSHIrR0RtNHFq?=
 =?utf-8?B?UHpjNGRrOUo4TWdiSEtCeFhpSGVkelZQQzJWRlpvSktEbnJiZGg1eXpPRjd2?=
 =?utf-8?B?dGlMekFSb2Q2RmREK2FYSTUvV05ia1I2a0RpTWZhT0hBek4xMFRzYVQ1T2hm?=
 =?utf-8?B?ZWNPcUFxandCQjU3eVlSKzNnTnJ1L0U4MEVRdDdoMHlvLzIwMEhOUzV5dVhx?=
 =?utf-8?B?VW5yY3JYaDNLclpHNUxnZHM5REJYRE91YVhydnVGTTZ2ZHB0Z29LRmREVUtG?=
 =?utf-8?B?RU1zNHZIQ1dIOFBBNXNhUXBNVTY3cmRxQ1E1dXl5bHdNZjJRK0pTOVdQQ0ZX?=
 =?utf-8?B?NnZQS1o0L28zMm5uaC9qQ2l1aE8ySEJoSXRpUWRVcGthYzhLZ0xJU1hlYnVr?=
 =?utf-8?Q?+DGKuBeXzcVSZNnc=3D?=
X-Exchange-RoutingPolicyChecked: LrDp86XA7Yhlvbt0rAVtgDYlVcQjEt0uY70+b6gZvmmbWOyxhyr08PfdL7Q21KC8iGdTyFP0dj4ujAcNbh6EfffhA62IXQ8MnsxAm3x1tLEAUYA5F5JuxkpMD3vjNkA2mdTcKpS4HRAteGUhpI6EDlB8V85G56fCW7RMplaGPmBuzT6Vg4dZNeiQK+A+NftJarBfA6aXh2UrLyudYnFljqv+JjgUYQvXDQh7IJj4HkLdORSIYFKjrjXQLZUURLLhGCMK1UXEIyv5uNTTGR/SexXlPV4/rbcvYzMY5N0TqFHuc17/fMOE2vE+Sww3/ZfHxyq/aihyPjkO/t+jai47qQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 153da0c5-556e-428a-f7f7-08de8f1a6944
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:41:13.5755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DipURinLnGv2S+e6i/dPV1b2aSNcIP2BzkC12VtPYzmjwCbmAjvy27m9Jjyu2kliQo5fpSvu1ScSrMqBHGayq4Oyap9SxYZ5180HgN4OcNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6277
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: EAEA6368F11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/30/2026 11:49 PM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:41AM +0530, Ankit Nautiyal wrote:
>> Add additional DPCDs required to be configured to support VRR with Panel
>> Replay. These DPCDs are specifically required for configuring Adaptive Sync
>> SDP and are introduced in DP v2.1.
>>
>> v2:
>>   - Correct the shift for the bits. (Ville)
>>   - Add DP_PR_ prefix for the PR-related fields.
>> v3:
>>   - Use macro values in their shifted form to match the convention (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   include/drm/display/drm_dp.h | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
>> index 8d172863eba3..93a188113d36 100644
>> --- a/include/drm/display/drm_dp.h
>> +++ b/include/drm/display/drm_dp.h
>> @@ -775,6 +775,11 @@
>>   # define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
>>   # define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
>>   
>> +#define PANEL_REPLAY_CONFIG3				0x11a /* DP 2.1 */
> I would still define a DP_PR_AS_SDP_SETUP_TIME_MASK here, to
> make it clear which bits are part of this.


  I think I added that in previous implementation, but dropped in this. 
I will add it again.

Regards,

Ankit

>
> With that
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>> +# define DP_PR_AS_SDP_SETUP_TIME_T1			(0 << 6)
>> +# define DP_PR_AS_SDP_SETUP_TIME_DYNAMIC		(1 << 6) /* DP 2.1 Table 2-227 */
>> +# define DP_PR_AS_SDP_SETUP_TIME_T2			(2 << 6)
>> +
>>   #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>>   #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>>   #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
>> -- 
>> 2.45.2
