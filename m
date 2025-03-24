Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B999CA6D703
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 10:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA9F10E23F;
	Mon, 24 Mar 2025 09:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMd7CUic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA4510E23F
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Mar 2025 09:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742807485; x=1774343485;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DuhC4MP9GbX9IEwzAJsJyvq8/wSK4osjbzqQc77A9Fk=;
 b=GMd7CUicPUQdbf8fcgTa7274XA+GG7Nacs16JUutwWjQebJfWsK1gX2q
 h3fdWC4UJgfIiu+mW/qlo6vUvOmM2Obgq2uvo2QXZl78jy1N6ls+iANGQ
 V1NsHyfqlTo+At8WbntZgCAnRpl8ckcaacy4T8NVFpNb6IgJSg2yM/u8X
 xepnOZ3M3f9lk4qhlxbc8Ms9ryB47sWAQsb1EWYvvCmG0TeycdFqDj2QD
 eF4PX5qnOddbrurcnN75l//jER8oANsMU7Q7nn0jswGceQHph4hVTMC0H
 Bjw6EUw/HKIG0i253MfBgD26vbtt91ngRs6KbwommSEruwMeqAYF7n7WM Q==;
X-CSE-ConnectionGUID: EFIg5vD2R4y4RPSFLH43Ng==
X-CSE-MsgGUID: drivyQ37T9OkwnVb583Ftw==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="55379168"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="55379168"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 02:11:24 -0700
X-CSE-ConnectionGUID: UrSnZ2MMTrq5xoAaePPsUA==
X-CSE-MsgGUID: +Zw+3CMsTCel2zJCCQecyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="123975624"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 02:11:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 02:11:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 02:11:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 02:11:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vxUbuFje6Iraw9HejtOhOXyFUygWqH1O1hlrmrCsj3dV+DDypVNrAwfemiLA+0FwSQonMLQ+lNeMS1D7rYqS8CLr/0rrUk8+iBFsVS/drLKVmiY4P6sPk3kHFfbMVWGrMTpvgKJpSqCATdljCVLtWeD5cvQpvcCvYit1FDtdZXYEaNW2X761Lp7zpSLeFLHyGv0uJftAxbr6UxDq6g87tY/WrEbdhik1dPL2TMdo+vTKJ5yvwXXMTM7rpZKkOnFZzd4osnPdtxG4diR3zHtOOnhfUHjNEWMTzcKBsbDHP3sWq1hLR68HMxF41Z1xRhqCwClN4z7455jvkxUW4HrJHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWOmrJksTLAPVhFy72EmP7Rmbp3rENQ7Af9ymUe2HKY=;
 b=mPemZ6zVw3D8f8W4XkwDmxTwlttb4WUHiadcvCap55Jm+RajJRtQS68JnzQY4nLgS5bymy8439AnCKdQdr/SaEaNGrmEnJWA489+ENxiAtFp31t7c7jzLSUurpIAuSxMHdH/2tNRxhS9K1ZEU9KalbTf/rYcx3kIbXWxm8f0Tcc0oQlFN8kAOPmi1HXD2LOnlmcwt35KvzF7Ny2iWlkRUHC0n1FdvHUPZg1BQsYYkpPrNjb0DyS2adx251dHJB1ALxiI+9h7A2E9eXCW17OTgfgQ8q23RlfBX0ZJ7BTZheU3iLY5R0moSU5152X4mTvfirK61G0QCu9SJVrgCn72zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL1PR11MB5333.namprd11.prod.outlook.com (2603:10b6:208:309::23)
 by PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 09:11:21 +0000
Received: from BL1PR11MB5333.namprd11.prod.outlook.com
 ([fe80::14ca:b15a:c828:6496]) by BL1PR11MB5333.namprd11.prod.outlook.com
 ([fe80::14ca:b15a:c828:6496%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 09:11:21 +0000
Message-ID: <beb9df5e-eccd-4dff-8888-5d71e4df3e46@intel.com>
Date: Mon, 24 Mar 2025 14:41:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8] drm/i915/dmc: Create debugfs entry for dc6 counter
To: Jani Nikula <jani.nikula@linux.intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <imre.deak@intel.com>
References: <20250321123707.287745-1-mohammed.thasleem@intel.com>
 <c2f69b8f-9d2e-40b4-aec5-27130c06c810@intel.com> <87sen2bz6v.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87sen2bz6v.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5333:EE_|PH0PR11MB4840:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b24bdc6-64bc-44fe-c84e-08dd6ab3d765
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WlQrZWtzci9NeWlsMUliNERaV0xpZUt2YkZjSGlrTXRnK0hRQ3c4MEVKQkpZ?=
 =?utf-8?B?NU9tMHFPL1FnYXYwbTZoRmxub29OcFgvSXAvWU5nWlFvTG10S0txSzNrZWhw?=
 =?utf-8?B?a29PcG93U0dKZzVBRUQ2ZEZyNU1oN3FZYVpnaXNrZFBRdHcyb3ZNVUVISWw2?=
 =?utf-8?B?S1hUem5CNFlVSnJJL0JZK1I1dnpocmlYS2pmUGhKSlorWW14bDdxY0V2aVh0?=
 =?utf-8?B?VjBCenhhNEpmUUlnc0RoNmdYbnNtQnJyazJBSXpna080eDg1cHo2ajFONVVo?=
 =?utf-8?B?NkFWQzR2ajY3VEpVVDg1djViaTBTdW1QQmZnNTRrcDdTYm93MnU5OVhtRkU5?=
 =?utf-8?B?b3MwRkl6cEd3Uis0VEJvN3NDdGQ2VnZpdUlnL1FCcWVhNEV4UXptWHpGdDJ5?=
 =?utf-8?B?N3NvTXhCWFFHcW9oaFhYOTBoMElWSXVNckhMMjFVakpTVEU4SmFxbFY4SkF6?=
 =?utf-8?B?MmVWZXhGdk5tUm1yZ29LMS9nYVdoMFdXaFdaemxNaG1GNmVhWFVGRUVLLzBP?=
 =?utf-8?B?cGl0OHZuTndkd0dVUEluV0FxLzVnSHB4Wkd3aGswWjZ1NlNjMm1POTdFTHdM?=
 =?utf-8?B?NHBwcnRVQlc5MjZmU1pocnYwR1VabnBoZU5GMGVkeFRsZ2VJNm5NUUJkODR3?=
 =?utf-8?B?aVpnYW1FMlJQWDU0NXltenc3ZVFScWUwaFNRcE5mRjFTeTlkSDIrY3JhTndt?=
 =?utf-8?B?Z0ZUVU5nQUpaWktEMUQ5eEo5WXROaEY5YlNrNU5OK2wrM3pqRWNNaVNoM3d0?=
 =?utf-8?B?aWwrWmU1eDk3TWZ5ZmQyTWdkSlFndnBlMmxVaEV6WTN1d1NnbGtBZ05zeXZD?=
 =?utf-8?B?Q1h6bHBCVDMvUUROakFoUi9QZnJpSXlSeUpMcXpodlJmMnRqMXN6SFNCd2Rj?=
 =?utf-8?B?bUtkQWwvRDErV1JOZzFuZXViOFB4bS9pMFNhaUpOOEpOVGVvdWpSYUZOMFlv?=
 =?utf-8?B?RzRJR2hYc0xZeXhLQTgrbTdNTExncitBbldsa2JhSWZxN2tGR0EvR2M1c3Ax?=
 =?utf-8?B?aU9yeFU5NVgyREpTdmx4VDk3andSQURDYXc1cmxyQ0dCZG9Nalk1TFRsNWdY?=
 =?utf-8?B?ajVZZWVuY1d5Vk1oa2tVL05zNUFCR3hFaVVKaVN0S3pMZlhvcWVqeHNCZzht?=
 =?utf-8?B?Uy9yRUlLUzRlWEc5c2plNzdoaENxR0xWNE1vSXdPUmpCRUROZENQNVFXVXBF?=
 =?utf-8?B?RFJsSm16djVjc2NtR1VzejIxb2dCMk4zSStZZEgxWFpINkxiMW1rRzNhcHRj?=
 =?utf-8?B?WjVZRFdpVThIdWxuNldJRVdLQkI5MzBQdnA1eWpBUXoxdDQ5YVJpS3pCbFND?=
 =?utf-8?B?MmlzWC8wanEvSnRWbXdwdGVtdTkzdE1UNHhZa0dFcHcwTldDN3RBbHZuL3Z4?=
 =?utf-8?B?RVJNOG40bDJPdnJ1ekZFM0VLcUtjRFlOR3RZWEEzdXhGVkFtMWUzblFISGRu?=
 =?utf-8?B?SlJwSjJNVFJUZXUxVVNQMEdZZW8vV3MzaTBYcTk4ZjJYbDlHOVlvVGo2YS9s?=
 =?utf-8?B?bnMzem55Z2l0M3FxdWRIaU11eEZrRE40WGVkMnpwNXREL25Fd2hCdmswakhy?=
 =?utf-8?B?SlpteUFGdnBBVWFGeHZSSnl2ME9HVC9iTU9icFNhOTFDRjdXSmNGdEdPa245?=
 =?utf-8?B?OGorL0NWQ01uQWZBMWYxbzQ1ODhFeW5LQmdzaHJ0ZHFyVG00SHpBalpBUjdh?=
 =?utf-8?B?OFpqNHlGMm4wNVkwbmlGM1U2aStoZlIwRTNhVzlhNkJPMkRtRitBS1lOTWlk?=
 =?utf-8?B?S05sMVAybWJQMzZjR1lNcUxxT0VQT3puRUhBNHpsU2RwODVHUWJxZDZNQklU?=
 =?utf-8?B?STFWUzBpb0V1V1N6U2IzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5333.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGhkUmE0Z0lWc0pNcnlMSzRlMkhHNW8zMjNLRm1MSkJyV3ROMTFZUUtMZXB4?=
 =?utf-8?B?dWFyV3N1dEhkVXE0V001S3d6MUE5b1NKTUF6QXE0bndqMWplMU5BV0VFeEVm?=
 =?utf-8?B?WEg2N0lkQkx2L243eVBYODh0WkdQMi9IeGpaN2dHRU1yWGNnc3RKbFdacXAx?=
 =?utf-8?B?VU1ZeXhxTHBFTllqV2xoVGhNeEJJYUJBRS81dzFPT2RiaXV2WE8xalJGV3ZW?=
 =?utf-8?B?MG5BcGc0ZnozQlNRaWh5VWcxY2pnd00xK3JJQWhxVHVOeTJ3d3Y2dG92SlAr?=
 =?utf-8?B?MHozWkNERys2N1M2OWJkZVJ2clhEUXZoNTNzYkMwTjVVS2MzbnhwQmkyY0hm?=
 =?utf-8?B?N3JMQ2VNak1NL01zZmlmRVV0UzZPOThUY0RsbXBDSE90Nmd4Z0Y0RVJycFli?=
 =?utf-8?B?cmpKQWNHeTJRUHpwVVM5TUFUcmhWeTV2T3Y5RG01TVNjKytocXdPRmRFK2pB?=
 =?utf-8?B?eXJ6ZVh0UThHOEo2Mjhwc2plU3JaRE9wbWt3WlhzR1JlTCtIWlFoV2c5Qmd3?=
 =?utf-8?B?dTVMNkJlWXNtMGdsY1VmWDJCbFE4THRiZWZMa3AxVTR3TFpmeHZiK1RsTFFh?=
 =?utf-8?B?KzNRbzlGSWhNdDdrQlRVemZlbnE5UVp5TVE1MzNOREgybk5lQnVGNUN2UCtB?=
 =?utf-8?B?VEZrUStMYThIWUVaM3M4RmtGSjhVeWZLZ1ZXa25XV05xaGdEalkxSkhDUUhZ?=
 =?utf-8?B?RGR5NGpGSkRsZmJBd1g1RXBvU1JUczBMQUlXMlAyWlhZRzBkUGJSdDhhUmkr?=
 =?utf-8?B?UjcvL0tDYlI5TnhXeHl0QzhqTjBNZVRPTFg4QjZ4WG14Sk1aMW8wZkp4YVBt?=
 =?utf-8?B?ZWJPQ0hhT2ozOUNNQ3M0QXhRVTBSWm5hWkRHaC9kMkRjY2k0N3VpS1h3WU5x?=
 =?utf-8?B?WkZ4d2dKdWNuRVRERVZFeHFiMlljR2NFeC8zNHc2ZTJhS09ja3JvcHBJZTlV?=
 =?utf-8?B?ckZ5cVI5OGV1MGhEa1lBcGhSbUo1VGJUY0ZQMnltczRSY3UzZ3FYK1JGRmxx?=
 =?utf-8?B?VDEyYlc2VDFyQ0ZDUHZBS3dRQVc1K1hMYUFEOHluNmxaR1dRTVMvcXBDQ3lx?=
 =?utf-8?B?YisrbkhlWVBXenpkWGVDczlYRE9Xc2ZTM2hsRVpqRlZkbnB6VlRWYjhCL2Fr?=
 =?utf-8?B?aEhQNlhmYUFydmpOTjRZcUpkV0YrcHIrWUJTMnVxbCtuVUVqTzNyTG81THpv?=
 =?utf-8?B?V0RmZENjSU1VUkJHY1NzamMraTlXTVVlOU9jN1h4YXJjcnpzL2Y0ZHQySmMv?=
 =?utf-8?B?UzJDeWFLSzBzLzRtTTJNYlpvRExCVlVTREN1SVBXTi9KS3gwVGJ4M3BDOVdz?=
 =?utf-8?B?VjI2NXZSc2dEeXNWZU91cWlBbVpsM2Rvbkp4Q0wzeW1aYnNrWGMya3ZIT0Yr?=
 =?utf-8?B?SmpmOFg5aFpMdVZ0MkFSZFVQMUk3U1dTNDBuUndMSjZ2cFpSaUdPbFBnc0dm?=
 =?utf-8?B?dkZCTy8rQmFYSVNFTmgvQ0QyZVlRTW5kVDB0ZnNsYnoxWnZ0bjFPelRuUzFV?=
 =?utf-8?B?Q0lMbnNKenFaRGdMWjBjNkc3WVZpVVV1amtHUy9lc0VzUDM5bUFQVDV2U1RZ?=
 =?utf-8?B?aGU2eEZ1VFVFZ2d3UTRmelJJUXVCbmdsMm9wdy95ZWFhOUNYT08rbVl1VEM0?=
 =?utf-8?B?R04rS3doRktsc1phOVFBUFd1R3piYlBxWkEwUTFFeitadkYrb3FWaFBKNkNt?=
 =?utf-8?B?c3lKMTdoQ2dpVU11RUVwSW1KNHYxeDEvQlRybEJQTjRvT2RkQUViZThTK0NW?=
 =?utf-8?B?TFJHYUVsTHNwMTIrdE11cTREQTJFcmp2d1RxZ0pSWVF3dWJwKzdnYmd2TDZi?=
 =?utf-8?B?YUZic0Z5S2ErbER0bU5MYTdZN0ZnZTl1R2NUbXpPZkdqS3BCbitIS3F5bVZa?=
 =?utf-8?B?R0pIcUN5bGdBalF5WDdyakhYNy91b1lvSVNOQTMyUGE1empSTTFrUFpXTWNN?=
 =?utf-8?B?RFByWWt6eXlLQlUrNk9nam5PU0hqQ2VOUXcvdklMd2dGTkhkblgvS2VaNTFn?=
 =?utf-8?B?RXRwcERycVZ2Ynh2c3RJTzhlN1cwOXEwR28remM1bEVoVW5nSFpVa2UyMiti?=
 =?utf-8?B?N2dmNWJhY3RGZXNMQzBmdmQ2dFQyOWQ3THYra2Q2VVV0NGJTa3N0akNsdCt2?=
 =?utf-8?B?cjlxeWcyaHVORlJmem0rVmxkL2lJdFc3cjkrNGhKYmw2S0k0QUsxWitHQUhq?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b24bdc6-64bc-44fe-c84e-08dd6ab3d765
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 09:11:21.3707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DfkeqA7g6iXgcAH1WjwUse57LFH7Mh5tpEdFmAourJTyIMj4as2zRTeM7dNhj211L0BJRt8Dc8AJ0x0VsXjqlAQKW3n/u80YlZYukoRInpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4840
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


On 3/24/2025 2:08 PM, Jani Nikula wrote:
> On Mon, 24 Mar 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 3/21/2025 6:07 PM, Mohammed Thasleem wrote:
>>> Starting from MTL we don't have a platform agnostic way to validate
>>> DC6 state due to dc6 counter has been removed to validate DC state.
>>>
>>> The goal is to validate that the display HW can reach the DC6 power
>>> state. There is no HW DC6 residency counter (and there wasn't such
>>> a counter earlier either), so an alternative way is required. According
>>> to the HW team the display driver has programmed everything correctly in
>>> order to allow the DC6 power state if the DC5 power state is reached
>>> (indicated by the HW DC5 residency counter incrementing) and DC6 is
>>> enabled by the driver.
>>>
>>> Driver could take a snapshot of the DC5 residency counter right
>>> after it enables DC6 (dc5_residency_start) and increment the SW
>>> DC6 residency counter right before it disables DC6 or when user space
>>> reads the DC6 counter. So the driver would update the counter at these
>>> two points in the following way:
>>> dc6_residency_counter += dc5_current_count - dc5_start_count
>>>
>>> v2: Update the discription. (Imre)
>>>       Read dc5 count during dc6 enable and disable then and update
>>>       dc6 residency counter. (Imre)
>>>       Remove variable from dmc structure. (Jani)
>>>       Updated the subject title.
>>> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
>>>       Use flags to check dc6 enable/disable states. (Imre)
>>>       Move the display version check and counter read/update to
>>>       a helper. (Imre)
>>>       Resize the variable length. (Rodrigo)
>>>       Use old dc6 debugfs entry for every platform. (Rodrigo)
>>> v4: Remove superfluous whitespace. (Jani)
>>>       Read DMC registers in intel_dmc.c (Jani)
>>>       Rename dc6_en_dis to dc6_enabled and change its type to bool. (Jani)
>>>       Rename update_dc6_count and move it to intel_dmc.c (Jani)
>>>       Rename dc6_en_dis to start_tracking. (Imre)
>>>       Have lock for dc6 state read aswelll. (Imre)
>>>       Keep the existing way print 'DC5 -> DC6 count' along with
>>>       new 'DC6 Allowed Count' print. (Imre)
>>>       Add counters in intel_dmc struct. (Imre)
>>>       Have interface to return dc6 allowed count. (Imre)
>>>       Rename dc6_count to dc6_allowed_count. (Rodrigo)
>>> v5: Rename counters and move in to dc6_allowed structure. (Imre)
>>>       Order declaration lines in decreasing line length. (Imre)
>>>       Update start_tacking logic. (Imre)
>>>       Move get couner inside lock and DISPLAY_VER code to helper. (Imre)
>>> v6: Change intel_dmc_get_dc6_allowed_count return type to bool. (Imre)
>>>       Update debugfs print to better allien with old print. (Imre)
>>>       Remove braces at if/else for signle line statements. (Imre)
>>> v7: Remove in line variable declaration. (Imre)
>>> v8: Rebase the changes.
>>>
>>> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>> Thanks for the patch and the reviews, patch is pushed to drm-intel-next
> Where are the CI results? We don't push stuff without CI results.

We had Full CI results with https://patchwork.freedesktop.org/series/144240/

There was some conflict due to a header file, for which the patch was 
rebased and sent again.

But yes, I could have waited for FULL CI results on this patch. Will 
take care of this going forward.

Regards,

Ankit


>
> BR,
> Jani.
>
>>
>> Regards,
>>
>> Ankit
>>
>>> ---
>>>    .../i915/display/intel_display_power_well.c   | 11 +++-
>>>    drivers/gpu/drm/i915/display/intel_dmc.c      | 50 ++++++++++++++++++-
>>>    drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>>>    3 files changed, 60 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>>> index 751e49b880d6..b9b4359751cc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>>> @@ -749,8 +749,9 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>>>    void gen9_set_dc_state(struct intel_display *display, u32 state)
>>>    {
>>>    	struct i915_power_domains *power_domains = &display->power.domains;
>>> -	u32 val;
>>> +	bool dc6_was_enabled, enable_dc6;
>>>    	u32 mask;
>>> +	u32 val;
>>>    
>>>    	if (!HAS_DISPLAY(display))
>>>    		return;
>>> @@ -769,11 +770,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>>>    		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>>>    			power_domains->dc_state, val & mask);
>>>    
>>> +	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
>>> +	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
>>> +	if (!dc6_was_enabled && enable_dc6)
>>> +		intel_dmc_update_dc6_allowed_count(display, true);
>>> +
>>>    	val &= ~mask;
>>>    	val |= state;
>>>    
>>>    	gen9_write_dc_state(display, val);
>>>    
>>> +	if (!enable_dc6 && dc6_was_enabled)
>>> +		intel_dmc_update_dc6_allowed_count(display, false);
>>> +
>>>    	power_domains->dc_state = val & mask;
>>>    }
>>>    
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>> index eb6b47ba0870..98f80a6c63e8 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>> @@ -29,6 +29,7 @@
>>>    #include "i915_reg.h"
>>>    #include "intel_de.h"
>>>    #include "intel_display_rpm.h"
>>> +#include "intel_display_power_well.h"
>>>    #include "intel_dmc.h"
>>>    #include "intel_dmc_regs.h"
>>>    #include "intel_step.h"
>>> @@ -58,6 +59,10 @@ struct intel_dmc {
>>>    	const char *fw_path;
>>>    	u32 max_fw_size; /* bytes */
>>>    	u32 version;
>>> +	struct {
>>> +		u32 dc5_start;
>>> +		u32 count;
>>> +	} dc6_allowed;
>>>    	struct dmc_fw_info {
>>>    		u32 mmio_count;
>>>    		i915_reg_t mmioaddr[20];
>>> @@ -1233,6 +1238,44 @@ void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct
>>>    			   DMC_VERSION_MINOR(snapshot->version));
>>>    }
>>>    
>>> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>>> +					bool start_tracking)
>>> +{
>>> +	struct intel_dmc *dmc = display_to_dmc(display);
>>> +	u32 dc5_cur_count;
>>> +
>>> +	if (DISPLAY_VER(dmc->display) < 14)
>>> +		return;
>>> +
>>> +	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
>>> +
>>> +	if (!start_tracking)
>>> +		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
>>> +
>>> +	dmc->dc6_allowed.dc5_start = dc5_cur_count;
>>> +}
>>> +
>>> +static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
>>> +{
>>> +	struct i915_power_domains *power_domains = &display->power.domains;
>>> +	struct intel_dmc *dmc = display_to_dmc(display);
>>> +	bool dc6_enabled;
>>> +
>>> +	if (DISPLAY_VER(display) < 14)
>>> +		return false;
>>> +
>>> +	mutex_lock(&power_domains->lock);
>>> +	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
>>> +		      DC_STATE_EN_UPTO_DC6;
>>> +	if (dc6_enabled)
>>> +		intel_dmc_update_dc6_allowed_count(display, false);
>>> +
>>> +	*count = dmc->dc6_allowed.count;
>>> +	mutex_unlock(&power_domains->lock);
>>> +
>>> +	return true;
>>> +}
>>> +
>>>    static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>>    {
>>>    	struct intel_display *display = m->private;
>>> @@ -1240,6 +1283,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>>    	struct intel_dmc *dmc = display_to_dmc(display);
>>>    	struct ref_tracker *wakeref;
>>>    	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>>> +	u32 dc6_allowed_count;
>>>    
>>>    	if (!HAS_DMC(display))
>>>    		return -ENODEV;
>>> @@ -1288,7 +1332,11 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>>    	}
>>>    
>>>    	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
>>> -	if (i915_mmio_reg_valid(dc6_reg))
>>> +
>>> +	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count))
>>> +		seq_printf(m, "DC5 -> DC6 allowed count: %d\n",
>>> +			   dc6_allowed_count);
>>> +	else if (i915_mmio_reg_valid(dc6_reg))
>>>    		seq_printf(m, "DC5 -> DC6 count: %d\n",
>>>    			   intel_de_read(display, dc6_reg));
>>>    
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>>> index 44cecef98e73..c78426eb4cd5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>>> @@ -26,6 +26,7 @@ void intel_dmc_debugfs_register(struct intel_display *display);
>>>    
>>>    struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
>>>    void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
>>> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
>>>    
>>>    void assert_dmc_loaded(struct intel_display *display);
>>>    
