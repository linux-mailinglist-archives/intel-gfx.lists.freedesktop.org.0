Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLp/CpKc8WlfiwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:52:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E47A48F8F7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15AD10EE5A;
	Wed, 29 Apr 2026 05:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MnQt4FOr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3314110E054;
 Wed, 29 Apr 2026 05:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777441933; x=1808977933;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xy9yxcqWbxJ4bU0sq6SFZKcGq4af5U4kX9JAr0zUJ74=;
 b=MnQt4FOrEra2ueH32ujV3xYNnhLmnx5zSo2IL2Uc/qF7aw+zgwc/FVmI
 UN0Vh4l5AVlSUaDF95qOHuJl4dJP+XmVKqsD4xeaomICgX5RoKQYdwnFJ
 e6xhVUu0MuSCZhgeTTwSAWHw2Vng565rruGzrz/oIyRJ7t0A62hqYCj1+
 H5QWnR78SXGcGUUZvwhthg8Wz2YXwRCay2XJbS1GI+Wi4IaYhIh9bFN3M
 EEtVzyo2rsvaE/KB4fMKwBvCdH9sbuSSsnN6cP58ESG63ITXZ6MpIpHrW
 hDwaq2M5071biUQh67ekM35f0WaqZf8qSjg9eDn0PHjRsH0e+voUWwksT Q==;
X-CSE-ConnectionGUID: Af5S8UjHQKO859HW7Yt5HA==
X-CSE-MsgGUID: 2CKbW5TESba4QQS3t8zCCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78256829"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="78256829"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:52:12 -0700
X-CSE-ConnectionGUID: A527YtzTQDiIoVmLLnuGqg==
X-CSE-MsgGUID: Jkz0LQ5IRxyJwHCtz1PP/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="231026154"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:52:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:52:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 22:52:11 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:52:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J6P7c6top1uTLzZFGRNdMNS7VFkT7G+lyI+NvkcgGi69A73QLzVtanNn9u4RQ8P1m+FnyQ3QCPjUuzAWo490cWsSvU+QdllNko10jzJXbRVERUHQrYXbSWDNyRzRSoT0mFdrqP8ox+EDVZJHy0nnbk1xvinCat3+uq/M6T7fKdRX1ycDfwUEWsusVNnnFR+pPei8hsNlQD1/Kw9gvOJZQQBfwWoIe5LXLJvwD0biwS8IstHcLyOoC7dF+45cvpksNYCHliQYIsftD13f5HbPWY3+L1NvfBiwbVvy/hvAntTVhziMZ+jVgSw/eU0euSsl0mjofcIVOHOKKfIhOkWVZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WfUYlkKc+pfrDIX5QAiesvjGIlbg+WD5befI0xywrvg=;
 b=AEFTtb4IWW+qOQmAqQc6m+iSegd4VkU1Esc8cbZ8KCdKJ1x8deQBBFed6wbXvIdvJwm86HR6kY2QM0yTRafY1iM/dNkqbbs8uH2CMaqS3taBsjSgE2N/k5DU68szNu7/R0X0c9so5+LK+v829MPyLCFn/LWC3/kKbftZcsfa58RTeJGKT9sobyYedMnDMh3yz9VClWXMOHwwpb0vRZQuhrUHK0b+kInxPdWKlCdHLzh/SfDBgOT6ZurREVGhd8iyiILd9cwmQnZPFEBmQnoxqXBfanCfhkDrfhaA+kDpeI7w2OrKBS0tMD+FU8Lbb5P6kJbJWKoSWDBZ/c9OEUB/IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 05:52:08 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 05:52:08 +0000
Message-ID: <34ee3359-89e0-496d-be0f-e2baaf850091@intel.com>
Date: Wed, 29 Apr 2026 11:21:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/atomic: prefer drm_printf_indent() over inline \t
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <dri-devel@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <20260408082211.3040194-1-jani.nikula@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260408082211.3040194-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::23) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: e83b505e-6a18-4b32-1fac-08dea5b372d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: M5ouU0MM9/F2QTqtzgb9VcF93zNp/snw7YSVhler4DtsiLvgHuAnlJsBPZ5vhZ0gJ3bj/4fDtSORTFsORYwoG0TTROdYA7sOECZuH+XDKsyPX5HYNRAZCv1O3o4g1x360SRg2vwafwT/9vi4yeAvph4wWDuUkaJ8pfTrhIB0a7fUu0Po5mZlP7v9ugBHPiA6WuHDRSTgDmFth/WIOR7ykm9yyShHrHZQDiVXzmdwPbpBGaYqcX3VvqH/PjZqlLAFt8Pn3fW/MLe+MtgDBWmzJVyIpNFC/zxmNKECOUjWXWhoYk+I6x7AALIz43arYLm9BKzlmaKjsclar67tmx8olrusdk5HyQEHmCXieSaHmY02PdwTmfvO9jXXuA0KI8By+SyYKzKxALPPdK31FFSdWZh84O+Ii2igrFeJQnUBSWcWmFkHkgJRDAzgmFegMkN8RYu1Ol3c5AGCFg+uzBiTAazP9O2i/YJTssddrwNBytjs1n9kTjaDUzhpIs7p2Km06rXy1PgkgHfAFtOiYAihOIpdPbv5m2Uo0u9DjvNEbybPnGzJi5ZKJu8sSH8k3jcg0WUMcO+eJZuyDwG1KXBdRvhQbndraOxfgU8uZHARNfEATvtOFVyCD55enkBat27tuh5roULb5vzMdiFnqCSlNMQ5EEZQpZL9qBWLspcMGfwUYLs7hYE6jcB/Fs9p+4g5jm9AB6PHEKQiIDji/JUVUVGFo08NNIOxVyiiI08SBy0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXZDeHVhWUlBOWQvQ3hrc1FQZVh5MnJVb1hEa1FaZzlGNlJqR2htTFRibS9K?=
 =?utf-8?B?TTBhSFZuWHFSMXBKZ25YMC9ZNitEY0N4NVVYMEFHSUZqY1FNa09WNDVXajBW?=
 =?utf-8?B?Rit4U095Y0NkNUlaQTA3dHorMFNOUmFQOE9UUHBCYTRKTUNZdTRNZWpGQlhR?=
 =?utf-8?B?THR0RVFkOFBtcFRBTzNwSy8wZWxDd2FhdnBLeGVhU0xadUE3Z1hEdWJBR1RC?=
 =?utf-8?B?UFJMOWRUajVEQlJ2Um9RWWlLajFad0ZLbXRsWlA0TXc0Wi9EYStsNGtLMHhs?=
 =?utf-8?B?Rkc5NHJkSjIrMjVTSVhKQVBTUnVhb3lnQkVkQXpSQWtkZnJNdVdSNzNwanBo?=
 =?utf-8?B?aW0yQ3A3ZW1kd0NLT3h4SEY4eWtUbGc2MEFRRTF2V2pFL0t5ZHhTQ0RUbnlq?=
 =?utf-8?B?YllnNHZhUURXNk1DaTN2MEJvRHFzZUhyS2ZXOUJrTFdndzJ2dktHVmRGWmsv?=
 =?utf-8?B?WmM3OEcrNlZPRzNzN3MwbktSMkR0cDMvWWtWMStQb3BOZ0xMdDIyeDZMK3JS?=
 =?utf-8?B?d3hibnROLzdsRVoybk1tV3ZDS3ZHQU5HTDk0UVlHWUFud0xwMDNISXc0SHVD?=
 =?utf-8?B?SEVoVVUyZkJ6Sy9XcWZicjQwdzBLR0J0SW45SWF2dFZwSW9wQ3lmd2VYcTFm?=
 =?utf-8?B?c0sybWtFaUJQVzZINUkwZEdBOTNpOERTNjM4Q0pGV29USC82TCtIeFNPRWJU?=
 =?utf-8?B?VjBpUTNKNVp5dXhSc0VLVElMUnBtUDlhWTNCVkxJbWhpT3dPeG53aEdtRGVY?=
 =?utf-8?B?dWI5OU92VW9Ic3h0TkRibHlySm9HQU5qakhreVpzdS9pZzI5V1RiUWg2K01i?=
 =?utf-8?B?eXkrZ2R1OGJacWtCdHZ2aVRFMjkvQmQxWnI2NTF5bWNZSFFmcnd0cERaeTJ4?=
 =?utf-8?B?RXFGY3UzclZpTDZZcnpGMFVVc3pBdDJYTXdEeVVFTEJxM3hDSThrSm5OSTFN?=
 =?utf-8?B?R2xKRDdlbndqRWtDbFpxdlpJR2gxdU5MK21Kb1MxWUM0L1IxUVNtYkF5SWdu?=
 =?utf-8?B?aDd3Yy9paDJ1NjJpczJ2N21NVEVzQ2JnKzErcytGNEltVm84VXBTMXdWdU01?=
 =?utf-8?B?RktienZGZlcveXJNRzlFenpJakRBeHAzOTB2ZzQ2VlIzSmxRN0t0SnFpK2pZ?=
 =?utf-8?B?T2s2TTRUMnozaElvK3E0NWt0UXBrbWh5UUl6dk9ETkI1bFdsZ3JIdEc5NnIx?=
 =?utf-8?B?VnJNZkpaT0J2R2JvbmlCMkdSOER1TSs1NG9uYUxHd0JlWXg1N3Z1Qno2eFVU?=
 =?utf-8?B?MU9Hcno2ZW51Q3gwRFE4Wk9rR3dLaWZIbVdXVDJ6SlNjOUQrSjI2NzVPN0Z3?=
 =?utf-8?B?Vk9XVDFiMG1PTmZ0TFlpcG9nR0dSUFRpZTBzeHY3aHJjRm04bWNsYVlSMnFD?=
 =?utf-8?B?WVZhd3ZPejcyN051bm93OWJHcHNGek5oUHZZK0MxOWg2ZUhnS2M4OVdMaXFr?=
 =?utf-8?B?QjJJeW9yNWZaTVBZVWRMRjI3S3diOCtXY0dyek5GUGFqZnZmZFErWFZLZThQ?=
 =?utf-8?B?VWFFM3RCL1BSaUVvNXNmNFZ6WndOTU43TDlZaDZ5U3UyenQ2MHVmWVpTakFY?=
 =?utf-8?B?VmVVTnBDWmRmRzVKV1lpWm9PYUs2NzdHRlBPcjU1QmlMT1RxcjZnd2FtSFZG?=
 =?utf-8?B?YVRoTGZrTWFjdTk2K1l5aGNyeENvQW5FVXBKcXdWQTl2dDl5YnRnaTRyVWFy?=
 =?utf-8?B?OFVUNm1kL0UzRXN6bHVoV0xvS2V6MUE1MG1DcUN5MkZGY2g4NXd5VFh3bysy?=
 =?utf-8?B?WlM0T0tpK0taVFcyWjk1ZGJ1NFNLWTMxajFjR0VRVU9lbWJHczRGVWJXNklJ?=
 =?utf-8?B?UTJpTU0za1Z2VjhRVXA4cDdhNGpGZzF4TjBnOHFEVnczbHp2cDlRKzQ2eFlS?=
 =?utf-8?B?YTNpR0ZPSkRTMjFsd2d6NUo4MERLaUlKNWRCMWc5eERUVDF1R21ZTTQwZmtK?=
 =?utf-8?B?WjA2RWJ0VW1TMy9tOXEzWlVvM0c4MkhCWm5ubmhpL2tWN0l5MzNOU3dOQVFt?=
 =?utf-8?B?OG0rTUFEV2hHZGpIUTg5cm43ZUhDeHo1b2xuZWg3dXpsNG1VSjRTWHo3M0RW?=
 =?utf-8?B?ZmtSNmhiMmtyRy9KRm56OTVZTkVKSEY5ZGwrWi9Xb2k5U0MvTndTWlNpZUgx?=
 =?utf-8?B?ZldEVjZpbmRrQ0FxSXB1OS9Pa1JoV3pHQXA1eVdNbDlZZnMxQnZpUWRTYWRJ?=
 =?utf-8?B?aE1KZWxxYnRrQ2puenJIcjYxeDNyTW5aeE1hNlQvV29BbzVRR01OeW80bk91?=
 =?utf-8?B?c0pIOXc3Ui9oTmtFUWdWRVQxUEJkbWV0QlA2UHp2bG9IbXg1TjZUY1VBS1JU?=
 =?utf-8?B?bGdHWkRiY2E0UHdNREViRDV0dXV2M3ZoZ2k4NHpwR0RMR1dVUWZVVWtDOFhm?=
 =?utf-8?Q?1nRZvGunMR+xwVqQ=3D?=
X-Exchange-RoutingPolicyChecked: ZOvG+ug4T6a2vF5V4ossok5GM4SK/Q83XLQeqR/Yvkg6ViC7RAKHa0ujlalFTfEjoEX6ArGoblXM1HPPbaIpAT5vl36oPT4RrDg1n0uBWskuVDE823k7op9iMbSh0vrLAbp/DamKJ0KiuUTgunAOJkFARsseXhDdLfSN3Mp9yubDs9hXlnT9gluTxMRdwITKKSH9Np5R/JL6kBC61G5vxBzSY1C8uggZiRhWvmDIAIF/r1cl+AXyB/ayfDCrhq2FWTtDeN2Updyc7lVTeVqr9tPRuNeyEFTHXsky2Uu4XWI6el820UumJhr5O/q8beBucc5B0H0PEw0PEnAjIk/6aA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e83b505e-6a18-4b32-1fac-08dea5b372d8
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 05:52:08.1491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7MpWA3qedoqAUmI+xgt3ztg0iUOqitoUiQdjlLNtJ5A8AFZTC3POPki6vtZ+GRe+nHfpWnB6CHI75kYZ9DSSDBgWNiggLMrkx6EkCRi/jis=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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
X-Rspamd-Queue-Id: 6E47A48F8F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]



On 4/8/2026 1:52 PM, Jani Nikula wrote:
> We have a helper drm_printf_indent() for tab indenting the prints. It
> makes the actual strings more readable, and highlights the indented
> parts better in source.

aah, you beat me to it :)

On this, LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Should we make the changes in xe/i915 too? I can take it up if you want.

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/drm_atomic.c | 110 +++++++++++++++++------------------
>   1 file changed, 55 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 41c57063f3b4..54bab7e9f935 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -463,19 +463,19 @@ static void drm_atomic_crtc_print_state(struct drm_printer *p,
>   	struct drm_crtc *crtc = state->crtc;
>   
>   	drm_printf(p, "crtc[%u]: %s\n", crtc->base.id, crtc->name);
> -	drm_printf(p, "\tenable=%d\n", state->enable);
> -	drm_printf(p, "\tactive=%d\n", state->active);
> -	drm_printf(p, "\tself_refresh_active=%d\n", state->self_refresh_active);
> -	drm_printf(p, "\tplanes_changed=%d\n", state->planes_changed);
> -	drm_printf(p, "\tmode_changed=%d\n", state->mode_changed);
> -	drm_printf(p, "\tactive_changed=%d\n", state->active_changed);
> -	drm_printf(p, "\tconnectors_changed=%d\n", state->connectors_changed);
> -	drm_printf(p, "\tcolor_mgmt_changed=%d\n", state->color_mgmt_changed);
> -	drm_printf(p, "\tplane_mask=%x\n", state->plane_mask);
> -	drm_printf(p, "\tconnector_mask=%x\n", state->connector_mask);
> -	drm_printf(p, "\tencoder_mask=%x\n", state->encoder_mask);
> -	drm_printf(p, "\tmode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(&state->mode));
> -	drm_printf(p, "\tbackground_color=%llx\n", state->background_color);
> +	drm_printf_indent(p, 1, "enable=%d\n", state->enable);
> +	drm_printf_indent(p, 1, "active=%d\n", state->active);
> +	drm_printf_indent(p, 1, "self_refresh_active=%d\n", state->self_refresh_active);
> +	drm_printf_indent(p, 1, "planes_changed=%d\n", state->planes_changed);
> +	drm_printf_indent(p, 1, "mode_changed=%d\n", state->mode_changed);
> +	drm_printf_indent(p, 1, "active_changed=%d\n", state->active_changed);
> +	drm_printf_indent(p, 1, "connectors_changed=%d\n", state->connectors_changed);
> +	drm_printf_indent(p, 1, "color_mgmt_changed=%d\n", state->color_mgmt_changed);
> +	drm_printf_indent(p, 1, "plane_mask=%x\n", state->plane_mask);
> +	drm_printf_indent(p, 1, "connector_mask=%x\n", state->connector_mask);
> +	drm_printf_indent(p, 1, "encoder_mask=%x\n", state->encoder_mask);
> +	drm_printf_indent(p, 1, "mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(&state->mode));
> +	drm_printf_indent(p, 1, "background_color=%llx\n", state->background_color);
>   
>   	if (crtc->funcs->atomic_print_state)
>   		crtc->funcs->atomic_print_state(p, state);
> @@ -818,38 +818,38 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>   	struct drm_colorop *colorop = state->colorop;
>   
>   	drm_printf(p, "colorop[%u]:\n", colorop->base.id);
> -	drm_printf(p, "\ttype=%s\n", drm_get_colorop_type_name(colorop->type));
> +	drm_printf_indent(p, 1, "type=%s\n", drm_get_colorop_type_name(colorop->type));
>   	if (colorop->bypass_property)
> -		drm_printf(p, "\tbypass=%u\n", state->bypass);
> +		drm_printf_indent(p, 1, "bypass=%u\n", state->bypass);
>   
>   	switch (colorop->type) {
>   	case DRM_COLOROP_1D_CURVE:
> -		drm_printf(p, "\tcurve_1d_type=%s\n",
> -			   drm_get_colorop_curve_1d_type_name(state->curve_1d_type));
> +		drm_printf_indent(p, 1, "curve_1d_type=%s\n",
> +				  drm_get_colorop_curve_1d_type_name(state->curve_1d_type));
>   		break;
>   	case DRM_COLOROP_1D_LUT:
> -		drm_printf(p, "\tsize=%d\n", colorop->size);
> -		drm_printf(p, "\tinterpolation=%s\n",
> -			   drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));
> -		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
> +		drm_printf_indent(p, 1, "size=%d\n", colorop->size);
> +		drm_printf_indent(p, 1, "interpolation=%s\n",
> +				  drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));
> +		drm_printf_indent(p, 1, "data blob id=%d\n", state->data ? state->data->base.id : 0);
>   		break;
>   	case DRM_COLOROP_CTM_3X4:
> -		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
> +		drm_printf_indent(p, 1, "data blob id=%d\n", state->data ? state->data->base.id : 0);
>   		break;
>   	case DRM_COLOROP_MULTIPLIER:
> -		drm_printf(p, "\tmultiplier=%llu\n", state->multiplier);
> +		drm_printf_indent(p, 1, "multiplier=%llu\n", state->multiplier);
>   		break;
>   	case DRM_COLOROP_3D_LUT:
> -		drm_printf(p, "\tsize=%d\n", colorop->size);
> -		drm_printf(p, "\tinterpolation=%s\n",
> -			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
> -		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
> +		drm_printf_indent(p, 1, "size=%d\n", colorop->size);
> +		drm_printf_indent(p, 1, "interpolation=%s\n",
> +				  drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
> +		drm_printf_indent(p, 1, "data blob id=%d\n", state->data ? state->data->base.id : 0);
>   		break;
>   	default:
>   		break;
>   	}
>   
> -	drm_printf(p, "\tnext=%d\n", colorop->next ? colorop->next->base.id : 0);
> +	drm_printf_indent(p, 1, "next=%d\n", colorop->next ? colorop->next->base.id : 0);
>   }
>   
>   static void drm_atomic_plane_print_state(struct drm_printer *p,
> @@ -860,21 +860,21 @@ static void drm_atomic_plane_print_state(struct drm_printer *p,
>   	struct drm_rect dest = drm_plane_state_dest(state);
>   
>   	drm_printf(p, "plane[%u]: %s\n", plane->base.id, plane->name);
> -	drm_printf(p, "\tcrtc=%s\n", state->crtc ? state->crtc->name : "(null)");
> -	drm_printf(p, "\tfb=%u\n", state->fb ? state->fb->base.id : 0);
> +	drm_printf_indent(p, 1, "crtc=%s\n", state->crtc ? state->crtc->name : "(null)");
> +	drm_printf_indent(p, 1, "fb=%u\n", state->fb ? state->fb->base.id : 0);
>   	if (state->fb)
>   		drm_framebuffer_print_info(p, 2, state->fb);
> -	drm_printf(p, "\tcrtc-pos=" DRM_RECT_FMT "\n", DRM_RECT_ARG(&dest));
> -	drm_printf(p, "\tsrc-pos=" DRM_RECT_FP_FMT "\n", DRM_RECT_FP_ARG(&src));
> -	drm_printf(p, "\trotation=%x\n", state->rotation);
> -	drm_printf(p, "\tnormalized-zpos=%x\n", state->normalized_zpos);
> -	drm_printf(p, "\tcolor-encoding=%s\n",
> -		   drm_get_color_encoding_name(state->color_encoding));
> -	drm_printf(p, "\tcolor-range=%s\n",
> -		   drm_get_color_range_name(state->color_range));
> -	drm_printf(p, "\tcolor_mgmt_changed=%d\n", state->color_mgmt_changed);
> -	drm_printf(p, "\tcolor-pipeline=%d\n",
> -		   state->color_pipeline ? state->color_pipeline->base.id : 0);
> +	drm_printf_indent(p, 1, "crtc-pos=" DRM_RECT_FMT "\n", DRM_RECT_ARG(&dest));
> +	drm_printf_indent(p, 1, "src-pos=" DRM_RECT_FP_FMT "\n", DRM_RECT_FP_ARG(&src));
> +	drm_printf_indent(p, 1, "rotation=%x\n", state->rotation);
> +	drm_printf_indent(p, 1, "normalized-zpos=%x\n", state->normalized_zpos);
> +	drm_printf_indent(p, 1, "color-encoding=%s\n",
> +			  drm_get_color_encoding_name(state->color_encoding));
> +	drm_printf_indent(p, 1, "color-range=%s\n",
> +			  drm_get_color_range_name(state->color_range));
> +	drm_printf_indent(p, 1, "color_mgmt_changed=%d\n", state->color_mgmt_changed);
> +	drm_printf_indent(p, 1, "color-pipeline=%d\n",
> +			  state->color_pipeline ? state->color_pipeline->base.id : 0);
>   	if (plane->funcs->atomic_print_state)
>   		plane->funcs->atomic_print_state(p, state);
>   }
> @@ -1347,27 +1347,27 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
>   	struct drm_connector *connector = state->connector;
>   
>   	drm_printf(p, "connector[%u]: %s\n", connector->base.id, connector->name);
> -	drm_printf(p, "\tcrtc=%s\n", state->crtc ? state->crtc->name : "(null)");
> -	drm_printf(p, "\tself_refresh_aware=%d\n", state->self_refresh_aware);
> -	drm_printf(p, "\tinterlace_allowed=%d\n", connector->interlace_allowed);
> -	drm_printf(p, "\tycbcr_420_allowed=%d\n", connector->ycbcr_420_allowed);
> -	drm_printf(p, "\tmax_requested_bpc=%d\n", state->max_requested_bpc);
> -	drm_printf(p, "\tcolorspace=%s\n", drm_get_colorspace_name(state->colorspace));
> +	drm_printf_indent(p, 1, "crtc=%s\n", state->crtc ? state->crtc->name : "(null)");
> +	drm_printf_indent(p, 1, "self_refresh_aware=%d\n", state->self_refresh_aware);
> +	drm_printf_indent(p, 1, "interlace_allowed=%d\n", connector->interlace_allowed);
> +	drm_printf_indent(p, 1, "ycbcr_420_allowed=%d\n", connector->ycbcr_420_allowed);
> +	drm_printf_indent(p, 1, "max_requested_bpc=%d\n", state->max_requested_bpc);
> +	drm_printf_indent(p, 1, "colorspace=%s\n", drm_get_colorspace_name(state->colorspace));
>   
>   	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
>   	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
> -		drm_printf(p, "\tbroadcast_rgb=%s\n",
> -			   drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rgb));
> -		drm_printf(p, "\tis_limited_range=%c\n", state->hdmi.is_limited_range ? 'y' : 'n');
> -		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
> -		drm_printf(p, "\toutput_format=%s\n",
> -			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
> -		drm_printf(p, "\ttmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
> +		drm_printf_indent(p, 1, "broadcast_rgb=%s\n",
> +				  drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rgb));
> +		drm_printf_indent(p, 1, "is_limited_range=%c\n", state->hdmi.is_limited_range ? 'y' : 'n');
> +		drm_printf_indent(p, 1, "output_bpc=%u\n", state->hdmi.output_bpc);
> +		drm_printf_indent(p, 1, "output_format=%s\n",
> +				  drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
> +		drm_printf_indent(p, 1, "tmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
>   	}
>   
>   	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
>   		if (state->writeback_job && state->writeback_job->fb)
> -			drm_printf(p, "\tfb=%d\n", state->writeback_job->fb->base.id);
> +			drm_printf_indent(p, 1, "fb=%d\n", state->writeback_job->fb->base.id);
>   
>   	if (connector->funcs->atomic_print_state)
>   		connector->funcs->atomic_print_state(p, state);

