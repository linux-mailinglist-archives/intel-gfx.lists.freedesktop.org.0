Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24997BC00
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 14:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6486C10E237;
	Wed, 18 Sep 2024 12:11:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P3gq4VKe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E9B10E237
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 12:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726661474; x=1758197474;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/F90d5GGySbAJuzdw3hP8HJ1aoeIj94tFQuvKKJpXkw=;
 b=P3gq4VKe4u/QpN45KspIHEYdw82ubj7TwCoe+zn8C6DaDGkvRyOPBhMt
 M2DaOdgQFckbXS9R8lUqu3UxUacC3L/2I5Bls0Vs+ZXTLiaANnuygxYlB
 G8yU8PgU+28ZJY9ZSpcWCeQBF1aznbMrfocg32MCKC8DU56qMWICxTqU1
 r/0r+Bf3JRYq+wOR/cjF7tB/WgT2fKU80i47htbsKUO7Dg7jPCfrVL/Lb
 fRcqKl/nLpRAbemWZwqCBKNDM8qd9hDRM5cAsdBqEZbqaIDj1iQpIZh3F
 rbOVx1dcM24pAUrRUVKpEHN+Z6wZnMtREXfLo5p3gcibJI1iZtVn+NON0 Q==;
X-CSE-ConnectionGUID: jnRPnssDROuSdGM7HCMV3A==
X-CSE-MsgGUID: i/D2TMwFR9a7X0AeA0egAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25687951"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25687951"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:11:09 -0700
X-CSE-ConnectionGUID: fWCK5pnjRpCVVvIUAs0ZWA==
X-CSE-MsgGUID: 6oRw6B89SIOPFWWVB5I7QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69635691"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 05:11:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 05:11:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 05:11:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 05:11:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 05:11:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=opgzKXHwgELCvhOMmhO3fdsx6j+hbxSdBY0Pk2jxmO3RAeGd1g+uZ2nd33sGjIFIAEC2qw1ntB3PFN3UfFI3T98+/khkFpEeY1+NUOp+lXajqoafpQgIZiMHeoZCz3eTnY7sYRmyNeoPzw1xHRI8foBbUhh9Vk5xTerCjul0p555xlotrRbY+50QTlhZe7WGl+oigkTVEZw+KI+KvH3PIUQnVcIS/VJOZ9lK5VkwtC1FOL9Mp9X6OgesImETFSqaPjEJtcr6WiUeAusiA97Q7w5b6McLw9/0GhIIyZRLK3UBeVVPYTmZMYNqkMLmUj8o+jQl5a9I0OEhepyUSzVX3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=px6bAGdrNQFg/K0R9wIn6kkYN6fU/1SS/sdWpG+KAhE=;
 b=xa8ieTHVaWJ97wRQIh5HG+jCDRwTlV+L+6y6WPMntG8VXRCd1K6Icy5HhQnWmQ7YdtAjPNTC0qPzOLOFD2PEV7n1u9I2iKikuZalPRLIsJP3+dQGFaa48Dw1pbhPDAidE3AXxF3zb96cn+evGxKWNXKwKRw6NGDY3wx1FWonhiFqzT5maM7f2vV8v6cvpTBI2pvearGAcvUQx+tZhcKF852N/FUQt3zYAgrtdafnx0Ly9JuEmEdiP2zaYXDzBHExhNazI/5RM5LVUSC29O1fAd6VYr4NxEBZqbPCNhH8cLj40GPmdfiISNWN78tIiP+jF/xSSvbd8qWMoH96/RyoIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Wed, 18 Sep
 2024 12:11:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7962.025; Wed, 18 Sep 2024
 12:11:05 +0000
Message-ID: <b982c590-ae9c-4930-afa9-cd232290aab5@intel.com>
Date: Wed, 18 Sep 2024 17:40:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Use num of pipes in joiner helpers
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <suraj.kandpal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0047.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8302:EE_
X-MS-Office365-Filtering-Correlation-Id: c9665360-1bd8-4618-5d34-08dcd7daf84e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NG1CdHVnZWNZT0xMOUdEVHVoczFUNExlQWVpSTZISGdzeE9MbHo1OXlvalNo?=
 =?utf-8?B?d20za0lta0ZmRlYvRUNycDVYRkpzbTVRM0VNTi9hcGJrclFnckRORERLeFM5?=
 =?utf-8?B?MExDWTl6ZXc3TWZQNEZISDQvWWVvVklQeWlmcDN0dzdIZVpCR0F0a2tMcm1r?=
 =?utf-8?B?a1djSHFkdTRYeExCbVVFQjlvQ1FtMTdlRUdqTldRa2Y5QlMzUlVxVlhteTRL?=
 =?utf-8?B?OTgwaWN1cTZ0dmNEdFlUdS81S0NuRHpROXF0R3pNeWVXSktiaEdEcTlNYk9s?=
 =?utf-8?B?WXdLaXphM3lvNHRQanEwNVNzdmprSW9RK3J3bHRlT29uK1ZYUzBIZmpPdUc2?=
 =?utf-8?B?cEZ2cmZTZ3V4bGh4aStEcVhLcTNHV2JhRUllRFY5eDVERjFWSm8vK3YxcjI0?=
 =?utf-8?B?VjhFMnBvaVhPTk45WkVMMG9OcVBGSTA0RWxPbjBhYnBMWHRBalQyd2I4TGtD?=
 =?utf-8?B?cUpiWU13Vzh4OXdiQThkL2lRZUUyVEJjSnBaQ2pETStwM2JnS3RrVVE3czZU?=
 =?utf-8?B?ejh3bG9XeElRTi9UcEtsRWNaVTZlTFVxa2Rmak1JTExhVjJpWUdFM1loNWll?=
 =?utf-8?B?cUdtUVJCZG52TVdaSEVIaE8yQlU5STRyUGpIUkJSQitIUG5NVXQ2b2luRHRR?=
 =?utf-8?B?eHA5RisrMjl6aHlDV3lCbVpoRy9jQVVOWndYOG5FUWZ4T0t5TVhhNEt0c0xQ?=
 =?utf-8?B?MUZjWm93Vk5uclErUk95UUowblZ3K3hwUDc1S1FpQ2k4NVFaeU9nRU10OFJJ?=
 =?utf-8?B?elZYVW9FWkllSE1PdlAwcjdSL0Fpc3JXcnhLN2hvWFJoSmgwbmo1cHV6aDI5?=
 =?utf-8?B?dDliOFlmeklXeUZJNGtUZHpFNWpneTRFYjB2czVkdGN1TGNITFBONTIxTU5P?=
 =?utf-8?B?VjA4VHZRSEJZVFZCa0dmTi9lR1JiS2ZJN3hiYngzb3pEb2JlM1lYbC81K3N2?=
 =?utf-8?B?Uk01SnNRVit0NWFhc290RGR0dzJPdzdhaWE3WDAvTkdmWWt6Wm1QM2ZkQndF?=
 =?utf-8?B?MnJQako4eU53MjNvUmV1YmRlRlV3UFJTVHJuSER1UzhBMUlkN0pmWWRYaVlh?=
 =?utf-8?B?YWgwRmxndFB0c0w5RGtXdytzeldqYVpDc2t0U3p2L0JGSUpFbDlVVTMxYkp0?=
 =?utf-8?B?YWJURkNIK3NEVGJIb3dGdDFYZUNYUFB1OUhwcjNTSFFRWHhWTmxZSEJ0SGE5?=
 =?utf-8?B?OTlOZHkxMktoUWx5MzZrWk1XWXU4QmpqS2ZKbVUxNi9Wc2NsVVhoeThUK2o0?=
 =?utf-8?B?bzQ0MUx5di9WdGdMZm9xMmgzczRxM1FLY1gyQ3pzN0RrRk9hOXQ5c2ZtVitH?=
 =?utf-8?B?eWEyY3lvYXhZVlVVUlFNU1laYTBxNVBtOENpbmhwU05TOXBrdUpIL0I1MDVx?=
 =?utf-8?B?RUV5ZlBSQ011N1VSaitHTjJiZFc5dGRZMGFXam1iclhrNmdQMWFFa1JBd2Vy?=
 =?utf-8?B?eG5zV2tEWDllSW1ISW4zeXN1N0lscnhTTkJBMkpDbmdyR0ljSG1QL2tIenRD?=
 =?utf-8?B?MjhPYzZCbUdobE44YURPcU1hcWdUWWtJY0xWT1FEYy8zV2lVdXp3SGtIL0RU?=
 =?utf-8?B?cWlnMmo5WDJuL09GYkZsS2kvTHFHVnVINzVDZHljdFRMN3cwMFp4TnRYYVQ5?=
 =?utf-8?B?K044NVFQSlFZUW5KcXhhRzlMelNneGlyQ29UbVBZWE5vbjlRVWNhMTlvYkhV?=
 =?utf-8?B?anpJQ2RqQTFHRHRIU0VwSU9GdTVJdGxBMG1kcHowWTNmbGVRYnNHbWh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDcvNWVodHZ4YnhWanM5OHFqSXdmU2ZHUndvb0JwZ3A0N2VCNDBaUjRhNnRY?=
 =?utf-8?B?MUtaOWVLc0Z0WE55QzF1ODFpR2x0TEIxUWpwYU85RjNYNXVqcmFtalAyNHZO?=
 =?utf-8?B?NkkvdUlLTHpRaTd2S01GTXB6YWZiVC9ROXFyYzZ6bkJCU2lBcnk5MkhvRmwz?=
 =?utf-8?B?dDlVWEEwczIzSVJaK2NFQ213RzNWRkUzRHJ5TkRlLzZkOFlJaWc3NkhsTGFX?=
 =?utf-8?B?ZmZpaE9LSHh1blBSMmpzZkZBNTgvSENXOExBeXJteW0zYW5sdXhkRCtTVG5L?=
 =?utf-8?B?OEttU015VDNNaG8vZXVGdFNXOUwwUFlVeFVUM2V2amNZWkcyV1dEMGtzcUZl?=
 =?utf-8?B?MGlaY1gyd0VpbGpTT3RzV3hLK1ZnY2ZqUGpDSFNRWGtCZ0VRUm5YMDJNb0xW?=
 =?utf-8?B?eTFyMWFwRTVHUkhqZDhQOEd1NXBXVWgyNk1HUEpCeGxKQUVteC8vL3JZZGtL?=
 =?utf-8?B?VVhzQmtVL2FxejJDT2QyQWIveHNWMFluNFZYUlRtQVVUTEIzNUt6OERPdCtP?=
 =?utf-8?B?M3RrYTlXQmdZa05oNGpQWDlXcE50bGUzQmEvSWU4RlYxdEZXQlU3dCs5aEhE?=
 =?utf-8?B?RUlxaWl2bkZ1S3ZEQ2wxMXd3RXFPTVRtYzNuWkVPUzhwdTcyYXVyOE5QOVZI?=
 =?utf-8?B?NHduT2E1Z2h2UWwwRVY5QzlVWmlyeEpqSFgvL1d0NVNiQ0JoNDYzazdqbzk0?=
 =?utf-8?B?NGRTU29QZkNIdWNONHR6MGJEM2JPT1hSVDBZUHFxQ3k5KzhZVHB3SmllQXVv?=
 =?utf-8?B?c0JPQ0F6RGNXYWo0M1RQSkQwZ3RYdUVwbzNsQVJ2NzMyOE05OUxibUhnbS9Q?=
 =?utf-8?B?TVdWaWgyQ2lINm5BN053ZDgyVUxxajgwRVBrR3h5VzJBc1F6d05HVFZIVjVH?=
 =?utf-8?B?UnlseGtRZjVhelhOb3AwNUl4cVo3WWxmK2ZlTWFIZG93dXhYQVhGOEpZdmRi?=
 =?utf-8?B?WnRjaFBLa1M5TE95NWM1SFNBejNtbXVpbXRuaGYweEFNTWNtcXVNbXFLd3Ru?=
 =?utf-8?B?MlRBYmJrOVVLNGxSVjJTbU0vWk1MN0RlN0tnV2xXRXVIcVZXM0xhR2FraFRN?=
 =?utf-8?B?eGhIOEcvd0o0YVJ0Tyt1dFNGU1IwWHM4dVUyVGR0cFdjN0J6UElFKzNBZmVX?=
 =?utf-8?B?Q0I4N3RvN0F0bTNkV3NrTlZmVTFPdUdQOUNPQWlPMHJmOWJWVjkyS0liWFRz?=
 =?utf-8?B?U3QzWGUzeGN0VHYzSzQ3VmVMOGV2YUZTc3NTeUJwQ2Z6RHdCYU55cHlycnJ0?=
 =?utf-8?B?OSthSWNxQm0xMnlHak96eGltK0wwdk5lT0ZCTE84UlZTZTJ2QTJvUmlxdkpr?=
 =?utf-8?B?L2gvZWxpUjN2QUJWSHhFL0t3bWpORnBUTHJZU0VVSzllQzM3MzcrZEY0dm9E?=
 =?utf-8?B?eVNwMmxUTk8rT1ljRnQyYU9McU9PQ1N5bVNhTDl6eU1GQndBeWJLL1JNTEN6?=
 =?utf-8?B?aWtubWZNSVoxNCt1L3BYc2FZUTBnZzE5eXBRZXQ4bVFXL3JHMTROTktsRHVH?=
 =?utf-8?B?L2tXdzFKR0hSNVo1azJjV01WR2puMzEzOThZNWcwWVlmRi9XQ1A0azA5Z3kx?=
 =?utf-8?B?L09ITkJKU1JjRFVjQVRHTjBFSk8vZWRvMVFMZFV2djFGUlUycUttaGdXY05z?=
 =?utf-8?B?RWNGbHNQazlyVDd4TldpK3AwbWEvNkswMVpaekVBRFlXY0ZMVGs0UkdBNThn?=
 =?utf-8?B?cnJnUTR5RjNZb0JHNnJLaUhPL3M3MFFzdCtlSmZEOVdpTFdNVTBCYUUxdllB?=
 =?utf-8?B?V0pONGgxbThiTmk3emZIWi9QNmllVXNNeXVWOCtPbi81L3VVdENZTFlRTFc1?=
 =?utf-8?B?ZTk1cU4wTVhIOGRMbm1RN3ZOZ2hWRmdXNHNkeGM5YVVGM01kQm5JT0JoVklk?=
 =?utf-8?B?b09UeEoyQ0VEbmhFbVAwU3RMN2d5V0xoV2VXWkhtb3FUNnlUZy9GRE9LNVl1?=
 =?utf-8?B?QmRaY2hNMHdZR3Zac08yaVlPWEpaZVpmMHRWcDc1ZDFma011SjNiampONDEy?=
 =?utf-8?B?VWZoTmRXNlIrK0lQajdHeWE2Y1VJbnlOa3krSlp1aXhqSlRLcE5qcHJrNk1K?=
 =?utf-8?B?UjNrMC9mZngzODhtRk5wZzlCcGc2MjhHMXhlQXY5Uzhia2RiNVZJKzlldWVF?=
 =?utf-8?B?N0RFczAyOG1vK051bXNaOU84SVR4eTZBV0J6dGhPZXBIMG9uYjkzMVo4RWxi?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9665360-1bd8-4618-5d34-08dcd7daf84e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 12:11:05.2006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ns5MHVHVlNWwhBCd5V2zsXry0hp/NOUqnDBSNKSlQpxWNriUGQkiilvOtHf3c8Te0IM7eUiG3YNBisSdTANcLyrzKmUMKvbJsrVHEcNpxlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
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


On 9/16/2024 3:58 PM, Ankit Nautiyal wrote:
> Currently few joiner helpers pass joiner flag to represent if bigjoiner
> is used. To scale this for ultrajoiner, enhance these helpers to use num
> of pipes instead of joiner flag. This new approach is adaptable to various
> joiner configurations with 1 (no joiner), 2 (big joiner) and forthcoming 4
> (ultrajoiner) pipes.
>
> This patch series is a spin off from original series for ultrajoiner
> basic functionality [1]. Few of the preparatory patches are taken here for
> review and merge before the other core patches of the series.
>
> [1] https://patchwork.freedesktop.org/series/133800/
>
> Rev2:
> -Use intel_crtc_num_joined_pipes early (Ville)
> Rev3:
> -Rebase

Thanks for the reviews, patches pushed to drm-intel-next.

Regards,

Ankit


>
> Ankit Nautiyal (4):
>    drm/i915/display: Simplify intel_joiner_num_pipes and its usage
>    drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
>    drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
>    drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
>
>   drivers/gpu/drm/i915/display/intel_display.c | 22 +++++-----
>   drivers/gpu/drm/i915/display/intel_display.h |  3 +-
>   drivers/gpu/drm/i915/display/intel_dp.c      | 42 ++++++++++++--------
>   drivers/gpu/drm/i915/display/intel_dp.h      |  7 ++--
>   drivers/gpu/drm/i915/display/intel_dp_mst.c  | 20 +++++++---
>   drivers/gpu/drm/i915/display/intel_dsi.c     |  2 +-
>   drivers/gpu/drm/i915/display/intel_hdmi.c    |  2 +-
>   7 files changed, 59 insertions(+), 39 deletions(-)
>
