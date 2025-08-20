Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DBFB2D9D2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 12:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EAED10E6DE;
	Wed, 20 Aug 2025 10:11:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3LsWfeB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D213810E6DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 10:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755684703; x=1787220703;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XtMO3mz5wm2igYDbWuFKYKDFRJaWpXMsnebnFAazxZA=;
 b=R3LsWfeBlXl49uavmZ2XQcPuJtvRyoeUETVOxVd87QbSMpCPrErAP5IF
 YnodSjKfkg+cjzzo8TiwFufqapuWkaj3rZjzy29b93ErbXwrJsn4MLjXY
 2hbOwBvLv8QFIzquVvuu3gI643u2tQiy0DjEfK3/w3S0bgpnvJ6JR79Wb
 gAS64ZKV7oNKCC9rJL9CF5pDlXG34a/sgV8cJc2WCduisDWD/5OgdTCxh
 /gnn0Bf7Lv8O7ACiwfE656d4Z/5+nMC+vCd7QyYBSOKo1KGbIb7sH66lw
 D4+FGYagPx2W6qiwAN+NFoRiICH0lQ6J87FrBOsWU+D6L4j/JejVlyHg5 A==;
X-CSE-ConnectionGUID: IVx5UxDkRy27gUkbDvl5Ug==
X-CSE-MsgGUID: mId3yV5sTvqKRcQuWSOLHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57899268"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57899268"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:11:42 -0700
X-CSE-ConnectionGUID: erjCq2JSRj+StHofj66lNQ==
X-CSE-MsgGUID: csG1T++GQM2vdmhhLpvV+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168496232"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:11:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:11:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 03:11:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:11:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DHF5CLD+6AAv2D7yv667Qq/qjCoP6Ub/MK+7CpIThWYXKb4KL/0as/XAKKedqPgkqBUcnZU0pYLWbgU9973wRTbAAiBs16LKRoB6rIMXHYrmCxAMcxBjgFRjmAZmVgFA7JC0+46pD2/A6RJ81ZiBG9gCiPnk1GsTU/Edwx7iH46Ub98iJfe1BcquRm9VbqGhG9WhnO2AHl7zU7h9YEMvq7iBlZOZcvoIswAy74fiLnJ7ezIoDK5dJDY3MEjuYpAn9ik0c02vlxSzG0ANY277UTQ9eQxqGD9tWZ73YNOfjxciqnlee6IpQ+t8bntqMf0wqbjooWcO4nPVk4n3+omxaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aw4BGbCwFer7fZOGKevDv3h1uwnKSszdHgw6Zkxi2R4=;
 b=IUjPGwiSu3sOTmoLDwNWESD8D7R4Fp1raPMy2Nam//MaTiPWsMdTgxAecsl9siZJyE4PrbK4U25+5NdpNLuYhrM9k6prbzBAqYUjMHfY6YFyDrkH/sIrIVZAVA92hfHrSCG9GS2JXsOQZQXp5GgXuS0IOLTfMhRcUaBIaQbxIttoeE1dHWfqYoLVyYKtlxv6KLfrBNCkSDAtahcibXBhHJJo17VjdKXyOZhquZkIDHmA2MoKfc88s63ES7Sd6P7qmfabyQnXsL8rrmJ+qtxzyX3UIQjQEdj+KU2E88Y2BhiIg4oXC+Cxh7zb1phjMWNiDxzoVcjgAPbFkiGtHKUTNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Wed, 20 Aug
 2025 10:11:29 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%5]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 10:11:29 +0000
Message-ID: <6f20edd3-4c77-402c-911f-d0b95664900b@intel.com>
Date: Wed, 20 Aug 2025 15:41:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/selftests: Add RPS debug info for power test
 failure
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <badal.nilawar@intel.com>,
 <anshuman.gupta@intel.com>, <riana.tauro@intel.com>
References: <20250820094527.467883-2-sk.anirban@intel.com>
 <gxp6ehzn62mzfwhkckuurp5wblja6ftq2etnngmcmufpqpsjn7@btkz4wimzk2j>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <gxp6ehzn62mzfwhkckuurp5wblja6ftq2etnngmcmufpqpsjn7@btkz4wimzk2j>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0019.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::6) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|PH8PR11MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: 180661eb-0158-4693-26a7-08dddfd1eddb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Zkt5ZWsvSUo0bUl6NzdKTkdPUzBJVmdUSVU4Y3ZiV2ZHcCsxMlhMdENkd1FG?=
 =?utf-8?B?SkVPL1J4Um81UGpBZ2hoU2hvYjVsMFp4WFRHckVCbmJDSlh1ZUpOc0xEUHoz?=
 =?utf-8?B?QWxNVGkyWGtub3JCbDBBdkREdWNGSE1zdnFNZCtvSnZScVVURG5LOVVxMTU2?=
 =?utf-8?B?a25UQ24wZitEMk1iUXp0RmRiY2tBUW50MEVZeWF2WFM0L2M5TkNvSFZQdW9N?=
 =?utf-8?B?SHBlQngxRUU4Y2Fnek9tY2ZCM2VWNHJpdCtRUGZIOVN1SUYzWWZQNW01b3Uv?=
 =?utf-8?B?RGpEcGF5Qzk1czVtRTVQdmV1dXpTcThNZWtqbExjYXdiNld3RmVjdFROZlYx?=
 =?utf-8?B?b2tnR043dGJuZElWZDFlcG9oc0pJMkI5K3FwY2tjRDZ2ajNSeEg5TzZPbGtL?=
 =?utf-8?B?ZTNMdGVSeEF3QllBb3cxYkx6NzAvMWZqYm1ZZFZ0YnhJOXJRMmRMclIrVWlL?=
 =?utf-8?B?TVFHd0xUZTlOa0FRZnJQaFJxbm5lTFlzNWJUdzYvcUpSMUZxMU5xemlrWFRE?=
 =?utf-8?B?QTIvdEsvU3ZTRUJhLzlYbGVoYVVYOTk0WEVSTTNtaFAraVZOOWwrT0k1TDY3?=
 =?utf-8?B?R01qUmtXV2tEb0RPd1BtVklZOTJXZUtHVGFqSkd3UVlLRFdtUW1WcE1Nd2tz?=
 =?utf-8?B?UTdQRkNzWGE0OU5SdjVCMWZrOE1acFpxOVc5S2dUTjJlcVQySmJuQjRYSW0y?=
 =?utf-8?B?YkNKcXJTVWRlUHBOcVhtOXoyVytmV3dvS1hSa1F3dm44NHZRU04wSThvTVBi?=
 =?utf-8?B?MFVnY0IvV1VvSVNKL2E0M09wd0crb2VkMk90V2duSFEzbjV3Y1hzTEVsR2lZ?=
 =?utf-8?B?NFdiN2VNTThqNzBaeHk5Sk1GWExORTM3QkpudW9Nc0h5YTJBSjl1WUEvL2dB?=
 =?utf-8?B?ejlBZk5YYVdvZElHdXNuQWpzNjlmajRWQ1YxNEhLSmlxZU81RktUdUNvZyto?=
 =?utf-8?B?UEx0dUd4eVp0a1NZaHFSRWo4dVhMOEdZS0hyWDB2R1JMNlpaSE9SV3R1bzM4?=
 =?utf-8?B?azRYd09mNXR6RGVOM3hiUFRScDZodXRwN05KMUZYYmxUTWlkWVhrRTdJV0V1?=
 =?utf-8?B?UkhwQnFld3hNZjJKQklZR2g0dzJCSVpHNEVWV3psYWhvQndKcFU0dnBRb3Q0?=
 =?utf-8?B?UVo1QnVaNU9UZzZxaG1PZWVmUUUvLzJ4Y2Z1eU9sRGlOb2xqK3cwYXVKblow?=
 =?utf-8?B?cVIxOGdSUTRnWnVmMUE2TDBGL3YxUjg4cTNPZm9nVFRnMFNsYUFzdHduSnhx?=
 =?utf-8?B?bzB5dnhGU1ltQkxPQ2l3WTJNM0swcFhXN3VDbExJcnE4ckREanBnY2Rad0JJ?=
 =?utf-8?B?RFFwYmNKeHZieDZ2QXJLRTh1c040bnJXSHI4REk1SmJ3elIxTWNFd00wdWIx?=
 =?utf-8?B?M3phZnRLUFgwNTI0TFFyUjhRQ1U0VE9xZ2M1ME9pS2M2bnNJbjhIODlySnhH?=
 =?utf-8?B?QUM1RkFoQ01tV2JMSmwwZDZNcGJqUUVrdWdMZHdSZ1BKSE10Q0ZVQnFHTTh4?=
 =?utf-8?B?UzdteFIxYjJhZmdXczNZSTVmL3ErREZrZHB1bWZSUTlMWTdXZ2JKNTMyN3dm?=
 =?utf-8?B?WGpoQzY2a0hOdiszVHUyZVR0NmJYYW1nMEpnalpxS1lVRTFWOC9OYmhsbFEw?=
 =?utf-8?B?eEd3dDcwcjN0UXhzb0R4ZENudmFUQU9WcGIvSkdpN28rc3BKcG1nZVJYUUty?=
 =?utf-8?B?TkR4MzE5eE1raVpWSThVbytJTm4rMmJUS0xYeUgwc3F1OWNGQUVnOGNSSS9L?=
 =?utf-8?B?Q2ZWa1dETnlINGI2ZTZZbnVWeE1Wc09HL0ZqdnZxVy9IUG1MY0hRaXVXc0pv?=
 =?utf-8?Q?RNCnQo/jH1g0QHx0oTjHYXEeJdSpT6t7LMYRk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWEzeW5Ta0RQaFJheFlpblU1Y0pLVXVVZnhjaEdoalYrODhyVHZodjQ5eHk3?=
 =?utf-8?B?R0kyUnNMQUE2THN3b3Ivd25XZlpXZXFGejZLRGhUM0Z6eEN2SCtYMGQ1N3pH?=
 =?utf-8?B?dVBjSGc1QXJtOUdZdndNYlA1bXI3eE02Q1dXMU5jNmdCTlJPTU9rM0FsVDdG?=
 =?utf-8?B?TXRKRytza1NMT280MnRvVDJjR2VzY0VnSlpjZWNaYVQvL2NZakJGa1kvN3Er?=
 =?utf-8?B?SmJ3c292ZThRRFJXU1JScVJEM1RYWTBUZEhhano5cklXb1VtOWRTMzhxVHBp?=
 =?utf-8?B?NTRnWW9zZ2tBcWl1NXRFeEd0UDZiWSsxVGRRNW0wbHg5bDRJcCtIRzVZeWZZ?=
 =?utf-8?B?TDVKVzZHa3JtSGRYczlLaVRPeHdZZzlsQ09TcDg1UCtwYW1nWXZaS2RoQjNS?=
 =?utf-8?B?dE44S1krbzZsaTRWanJJZGJrK05CdEFKb2N5dDdTdjFwcWlzb3pqeUJvZ3N3?=
 =?utf-8?B?di93RktuRGRuZzdCRFBQRkJUV3pCelpTZkQwck9lVDY2RXpMQmxsaUdvWjVB?=
 =?utf-8?B?Q2VwcGZWUHJEbFZrdUR3Ly9icmNNR3JYc3dPZXA3WHRxWUkrTC93VGNHTHZC?=
 =?utf-8?B?b1dxTmJxN0Q5bGlEaDg0elV6U2gyZGFsRnNQUk40Zy9FekY0TVlYWlVFK2F1?=
 =?utf-8?B?R0xjVlVuUHdTMFJlZW1jdThZNUZEQmRFMmZJalRidUlNdlREYTZKUHYvbGRX?=
 =?utf-8?B?TFFCaFk4NXU0MjQ5b2ZZYWFtNHhnc0kzbUNicFo4bmk5dTlEbStIb1paR1ND?=
 =?utf-8?B?bzdIeFZ6eG9QTUJNNlkvY1Yvc1U5QkFxeUxLdk5UTmQxNitiZmVVVjhBQitE?=
 =?utf-8?B?ZkN5RjBtS0RVVlMyK2tRSm1qMGo1T3UzT0dvdG1kR3lIc2FUZzlIeC94R21L?=
 =?utf-8?B?czZCcEpEb3ZXcGpveVJZRktzVllnZlh1b1F6enU3UitoaWE5eFhWMS96UUZC?=
 =?utf-8?B?QjhPNHpYVjd1VVFZMllyR3hzc0tJUWNjbkRXVXBydng2V2NLUTRhbVlLU0No?=
 =?utf-8?B?azNwZ3Nuc2pvYVQwdytTRG1TMTZ5a3I2RlFDZ0dyQUJFTW5XdlZwbHJrRWVy?=
 =?utf-8?B?WjQzSnhCL2JvMlF2RHNXdVc2QktwR3lHT3kzbllYanFpT2JQUE5PckhiN0Ev?=
 =?utf-8?B?WFNjQTlRTDRvTGxxdVdNV1FwbmF1ejQrTE5nOXdjY3RscCtDeE9vdld1YmVD?=
 =?utf-8?B?SkZKSDExdUltb2kyYkt3VW01bU9sVnpvaFJiR2lFcXg3aWR6dmloQkdZVXQ5?=
 =?utf-8?B?bzRhalBQZzJkU0hYaHR2b29OY1IvTDdIWGxxUVIzRXJNdmpmaWF5VzRyTzVN?=
 =?utf-8?B?RzVYb0pqOFNwdm9WTGd1YnZyV0x6ajdvaCtRbWg5RElXeG1EZHJNOFB0MUtt?=
 =?utf-8?B?TjhCN2hKUFp1MXhKUjFldWRqSlNuL25KeGxFMXlvMDMxbVZMUTdmaEU1SHhE?=
 =?utf-8?B?NWVOU2pyMkNWLzN0WU5MdnpoSHlGVVdRTU1jNlo0a2JmWXlZRHdvVjlYR0Zp?=
 =?utf-8?B?Y1NQWFR6eEpvTUdKdG13V0xPRWJLeVBSUFVRbWFSQVFIS2NIZURMdDducGY0?=
 =?utf-8?B?QXd2eHE3dnBnL2RXUG5jUmhCbHNwQ1FQQVVWUVF6U3FhY3ozRmxmdUJpbnp3?=
 =?utf-8?B?TzNhbFB6NnJTQloxVUVsek9JWHJLMlg5NkdzeDJNM0NKYnJzTTN2L3Z5VFBm?=
 =?utf-8?B?clhLVFB2ZUozMmdsSXRsWTBSaUl0cFdKemNsSWdHbFFoTjQwL2JaOUd3MnRP?=
 =?utf-8?B?Nm1NaElOK1ovMjF6dVhJRytkVTNDbmxWWG5uT3pRRWVNUE9QNmY5aS9VSzBm?=
 =?utf-8?B?UXEvcjRhYzRqalZ1TnVpSTVXOTQ4dTV0aTBXZG13ZHhtSDA5SDN5QW0xdkNx?=
 =?utf-8?B?bUZIYi9qWkp2d3BidDJobW9ZWjE5TjNub2dOYUp3cCtmbW0zaXpFcExydW1Z?=
 =?utf-8?B?ODg3VUtyT0FjMnpiQ1llWE5lVG5TLytaUWVOUXI3MEMwQjIyQjBLSlkvR2hF?=
 =?utf-8?B?SFlOVkw4ajI4MTNQaEc1d3dmRCtqYVdaVG1nSEYzRDVJMThucVNjeVhXaTJE?=
 =?utf-8?B?aEN6a2FlcjZWeWFqNjRkbXJqMXg4eFViOHN2dXhoZnpEWmZkSSs4UzZCZUNF?=
 =?utf-8?Q?Z7yvdRSaFq8sUYFi7sAnrlBUM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 180661eb-0158-4693-26a7-08dddfd1eddb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 10:11:29.2378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BLokweeI2Kh8mR9uS4FlgO1rLqSFLBUPzhjWbdZZjfPkCu82MEA9/r96BatbF+ZGrqtqegiKtDdwrvzvJfrEAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
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

Hi,

On 20-08-2025 15:32, Andi Shyti wrote:
> Hi,
>
> On Wed, Aug 20, 2025 at 03:15:28PM +0530, Sk Anirban wrote:
>> Add debug logging to show RPS frequency configuration when the
>> live_rps_power selftest fails to conserve power at lower frequencies.
>> This helps diagnose frequency scaling issues by showing max_freq,
>> rp0_freq, and max_freq_softlimit values.
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
> how is this helping to close the issue?
>
> Andi
Good point - this patch adds debugging capability to investigate the 
issue rather than solving it. I'll switch to "References:" instead of 
"Closes:" for the proper context.

Thanks,
Anirban
>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>

