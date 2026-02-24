Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MCKNowZnWlsMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:22:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A91815E1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:22:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F6B10E496;
	Tue, 24 Feb 2026 03:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQ4rtDPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BEA110E1EA;
 Tue, 24 Feb 2026 03:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771903368; x=1803439368;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LGciZt6atVK19jsXrMPeT5lAqoWNtOM8r6u9VJNjpkY=;
 b=FQ4rtDPmi/Vdg4MocV5Z4U0L4d2Low078n7tZ3FdAd22heS5AbY6ncbh
 2IhEBdUTUmEAryZ4ft0lCy+wVlxnQ1ILi8SdyR143a3l/6X4ivaen5QZu
 uhb/43B78p1Ot5K1gPDv5bkkeiDyz1+CKNd4yYOaHzd2jbwwKQpyY+S/q
 YBolbsglnnT+E1bumALj0xHSZy4M/Ql436Ps7egUS6Wlf/fqzYYUmdMzO
 jL6ORticpriKKtvh7w1jAcja4Haj/zWdi/cxMlksX8Tx1Qen3Svof5099
 M2MMU/mG9jpNzN+UT0A7uwgQvxmmvD2memJ97dwOqM233s7hDpOjfoOze A==;
X-CSE-ConnectionGUID: KHY9eoacRTeD3j3HjT1sKA==
X-CSE-MsgGUID: YfAro6H4QvqKgQn/TX71SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72788178"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72788178"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:22:47 -0800
X-CSE-ConnectionGUID: zTNSJ+r/S3yxldA4yzHyrA==
X-CSE-MsgGUID: 5RvPre8eRwu+1q8qJ98jwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214141053"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:22:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:22:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 19:22:46 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:22:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WUybIylDvE/ZCiY3v+yWmbq5JQVbzCpYlG6i2oHMDrKBB9lmVix5Hjbb4jA9mnuSpTZO4icrkZoB+pVSeIGGSeNd+RfM3DnJ/sxk+RHFBenj/gG5vr9E7m2IiUymRXMZZOKFlTLE3BNEFCvwnJMTsoEM4JZ9bVdgVBPee5a6+tF043F4e5+pyEEyeAUrZMr4JL/pXgbGINvR4rbdUTJrQkpSPXTQVEXWUdwP3usZ93CY4IKebdkh+N5c1KJrMfsFTE3bGJXP2XkAYgfj/o9Aq6EqP27Atr0dcdLSjUEyu/YckF2Hgfw9H2/aHuX1oBs1D6SNFGfOpehfPb2o2hlhvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hjCcWYKvInmXf6qi++TZXcM+9qzdAyLh5PwsuP8c3Dk=;
 b=Gd/7AEabIOSLHxNvtqOEQDjIlmmYGUVKdBYDe5O+Z96y9bzfZvZ67hVau9oN2Lou4eo7oRO/pXclQwBl2L/bFkNf8+NAvkMw0BqKvrH9I29qBFfyrMN3IZ94B3rzuQyEB3w/58jsxgIQ4jO9UsFgRdYLQHAwUYVVglfzx/7HzzHgeEwbhxGIehkuDdduNsPoQ1hqG7NZqQtXsffrTw+EEwCckGQcF6jTdvV+jcdmNshekorEuHPlWnAcX1cQeSh9UC+DFDwoVtbxPbXMNJ9yZm4AqroQfnKCRSed+EZ1Rsz8UxB+kJY85prurRmZo2rebU5Qm9UpIFraNSuFMnWiNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ5PPFBD6B1667A.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::84f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 03:22:44 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 03:22:44 +0000
Message-ID: <85d1a57d-0587-4d6e-8698-263f2c326654@intel.com>
Date: Tue, 24 Feb 2026 08:52:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/i915/backlight: Provide clear description on how
 backlight level is controlled
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-8-suraj.kandpal@intel.com>
 <9191bad3-fc90-4524-831d-ef6f62123f75@intel.com>
 <DM3PPF208195D8D75CD839398873412EF9DE374A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <DM3PPF208195D8D75CD839398873412EF9DE374A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0032.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::12) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SJ5PPFBD6B1667A:EE_
X-MS-Office365-Filtering-Correlation-Id: 53e5deed-424f-4b1c-9165-08de7353f9c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LzlOOVplMzN1N0VvVkYrMnB0eHp5VnZaR2pWazVGWk9QL3hhSkJwc25QKzl5?=
 =?utf-8?B?a01UU3lpWUpldzM4TWdJd0lseHNybzM2OVc2QzFpOHhaOGZEaU9EdGhybkMz?=
 =?utf-8?B?RkkxcnZvNlNsaWFSSU5wSTBycmtkWllRblhQRDlCN2xGNmVlWVUvSFVvM2pB?=
 =?utf-8?B?WXhQenBHc1lEOFFrMkZFc2JYQUg0cmxlQTNsZDZuSHRIZnhLLzhPSUw0NFZh?=
 =?utf-8?B?NE1WaU1oNDJvVWFqdXA2VkEzTFJ1MlJON1Z5a1hrM0o2aHBEajlMMDYxNXZm?=
 =?utf-8?B?eThqWjRkRHlUTE1lNlA1YzJ0UUJLUnlId3Q0bFBGWHBnYnJibThqeUw4Yk9U?=
 =?utf-8?B?R3NSdVJUSGM0VkFGY1pDT1ptVlVQeHI3UmR4TEE0aW1XQTdITmxyUkI3U3J3?=
 =?utf-8?B?QTRmSEY5VkdJV0wwWEZtaEJlUXdPRXgvWUFhUlFnMDIrelRvbkNwZFFoc05S?=
 =?utf-8?B?YzNhS1JKT0svaGdoYWtwTjJoZnlNbWhyT0xXaWJNZ0dCanpLbWNpZFNvSG9a?=
 =?utf-8?B?ZWVpNWdWMzIyZnNTSkppaHM3VzFxQzBJbEFLVFlBUURicEdNdGVsZnhkWUZJ?=
 =?utf-8?B?Y001djZPVFF2bFNodktjNVQ1RE5Jamd6dGdkcFRuOTdBdkRFdytEMDdWMGpv?=
 =?utf-8?B?ZGx4Yys5WERLVnU0QXcxZmZPR3krSDE3ZG55OWV3TFd3aklEZjhTSlJCdXZn?=
 =?utf-8?B?c2lUdEJBU2RMWXBEbVlTV2NZWkdUa2JvZUlTcmJqYnhMMDEwR3dxUkdTMm1I?=
 =?utf-8?B?VnZpK1U0Q3o3c3llZVM4TTZIQlB1Z0RKTkM2a09Db3lJOGN1ZW9ZR3krSXZ2?=
 =?utf-8?B?RVBOeHJVeCtIbCt0ZXJSU21LNjF0Sk4zeE1veE4yY1Zzb3NNMHJqQW91OUJK?=
 =?utf-8?B?TGlSZkxqUWZpL2RDYUJUOElVUjA5NVZWYXkyNzJXNncxUVdZZFZ6UHVGQmYw?=
 =?utf-8?B?aG8rYUxNWUQrZ2NuM3N6SUdVWXdWSkJlQS9RYkU4L3Vib2VzZ3VvWTg4NkVW?=
 =?utf-8?B?WTFTWlN6T2xSbERiN21RKy9hSk4yZnBpQXpKTUdPQzZqZllwTG9IL2tKVk9k?=
 =?utf-8?B?YWdkbUNRYmhiaXlFSjlpdjAxcjVXTkFhUFEyNHIvanlsT2VzU3pkQStYK2Vp?=
 =?utf-8?B?YVJUQUlVa1RoT3BHT0s2WExONTFRaHY2NnZ1TmgyZkJEaDZEWWlDZk14NUVC?=
 =?utf-8?B?Wnh5WkhPTHBSQWZvTmg0Mm5BYXdndWdXMWRManlCenRXSnc4dWcxcDQvRjdy?=
 =?utf-8?B?L2M5VTVrMVovbURXWjNVd2JLOXAwV2JZZUd1VURPRlQxWnlIck02VVFSZ1BZ?=
 =?utf-8?B?d1c5dGhLS1dYU1k2T0xXRzkvenQvQ3pmemFmM3VWSk1pSFFFTVBrUjdQUkFE?=
 =?utf-8?B?dS9FTHZ3b0hzU3hZekp4WGVVVThITWhqNk9kWVZTRjNGVitOQy94dHU3Z09m?=
 =?utf-8?B?WUNhbkRHR1pYckZWcjdUR0ZXcTJ0L2RUS1BRaG5wb3RKa050K0pVTHplYzFt?=
 =?utf-8?B?eTBSRTlrd1h2dk9RRGt3ZkdPWWhFNTZxSC9BeUNRMzdQNERNRFJqU09JaEs3?=
 =?utf-8?B?RTFhZ3lMSFV4MVArUzcyQVdaSXJtbGpUZncyNlg4dkhRQjc3dkhaOFMwSkNT?=
 =?utf-8?B?ejVkY2dYTWxqT0lzajBPTGhSSURIUFMycDA5ZVZrRFExWU0zV2JReGl5ZlJL?=
 =?utf-8?B?YlM1MDhpNmFJalFiVDN0eFpsOWdVT3pPemk2c0hNRUk2NHFjOFhjTEg4ZEZX?=
 =?utf-8?B?eDRGTTFVK2wrT1pHa3QrQUpCcUJSTmgrVVMwdjZqeExzSFVadEwxR2VlTGlr?=
 =?utf-8?B?TTJTRnZuSjZORXpBVk84OUZpZVo4ejNCMnlMMGV2KzNEclZKWDNJWkViMnZa?=
 =?utf-8?B?blFaNGowWFVZZ2g3L01kWGdtZUJPYWp3emtGM21rWVpuY090cStaYlBjT1V3?=
 =?utf-8?B?RXVUenllbWJMNHNnbDJsWTdHNFdXT0tIUDJGVlI1MjF6RTdrQ2NCTWZJY1Jk?=
 =?utf-8?B?LzJUSzF6dGFrdXpEanc5NUZINzZNVGdmeENIWThKZmhmT2FobW03K2t2bElV?=
 =?utf-8?B?OGZ1RXJoYUN1enhzRnNYWUc2YVFlQXNET1NsV1ZwWWtORVdjcXRxRXZLZGo2?=
 =?utf-8?Q?4mfI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEp3bEdKeEh4MDNXdnpBOVhwck5BcjFvWVR5NHZ6V0tPSk1yZUI1M2NURUR2?=
 =?utf-8?B?WFNLR0N6YThveEFTelZiUnBkdzB5UnY4TDZkLzhVYTVMQW13dENrTGJkdE5x?=
 =?utf-8?B?SnQ0OFIxb1E5K01adVRlV25FbmltcjljUDJtNkx1blRzVFZNNy9iRUQ0NitS?=
 =?utf-8?B?N2s2ZG54eHVWVGFKejVYdjQzUmhjcU9Cb0d6SHhEaTQxTisxSlQrUGRYN25E?=
 =?utf-8?B?SUdoUktlYUZYR0FBcHQ2UmZOUzcxbittdWZHTGtncWMvWTZmU01PbjgxWVFu?=
 =?utf-8?B?T1psd1pKUlFxZW1MSS9xdXVIcEVuekdidzI2V3Q1R1l6Mjk3NnJLN0R1RWkr?=
 =?utf-8?B?bDhXWU5nbW1hVkwvMXd3a0FmTnBkTUhuOXFEajFwZ1J3N0EwcC91N2NNUHR4?=
 =?utf-8?B?TUNxMk94bmVob0s1Tk00V1NjNnovaTZVczBvdEVIR3RyVTFxVVdFdDRnTzFr?=
 =?utf-8?B?SEpDekNETzNPc3JxT2xsaUxNM0daYkUzRi9pU3B1NnZCZFFDQkNTNnFNRlNG?=
 =?utf-8?B?S3IwTy9ET3drenpWdWtqRWdmZkJ3NmNQTm4yQ0dBalpwUEJ3VzJXMDlhZlVP?=
 =?utf-8?B?V1R5RGxSMU92TmdHYUxNYTJhTm1yUDFTN3ovdWdURkptNDBmT05Pb0xSV1I3?=
 =?utf-8?B?eGEzWStFS1Y3aGdFTXNTaFROd3BET3N3TjVKOFlBWEJQTTRXUkNSWXRLenBu?=
 =?utf-8?B?OUszRzJXK24yWUNmS1hFZUZRWXdGK2tuY0FHVlk1L1A4aWd5Y1Q4eEppSUJU?=
 =?utf-8?B?ckJTRUg3MFViN2VDdXRCWnkyWk9JTkpZcjdGYmROMi9UdVhFNm5zUTBNcjd2?=
 =?utf-8?B?NU5PN2I3c1h0OEJzU3JJTUYzcDNLVDFSWk9pMFBJbTQxelowQzBCN1lzNlRB?=
 =?utf-8?B?T1MrM3ZtbTREMEY3RHlNWW9VeEVKcXlTSmd4bTlKdGNzeTVWV0JZVVVUWXBu?=
 =?utf-8?B?UGY3MS8ya1Z2QmVRUHVtdG1JalFqa2kyaSs5WUtSYVJLbEt4ekFJcGt6NzJa?=
 =?utf-8?B?WXZZYnpEMndzdGZpWlhwTTZtdmJyVndRRk1HOThGRzlzMU90MUI0RElpbWdI?=
 =?utf-8?B?S0hjMC9EU3lyVGJLZWM4NG8wRlZBcWdYMFpQdEx0RTNDRHRXQXpyYTBQeFg2?=
 =?utf-8?B?L3ora2FSQ2VlY1lMSEdDdFA5OFZ1bXF1RXRLcnE1Ti9qc09jT0RKbzFLbFhw?=
 =?utf-8?B?b2N3VisyNkpYZDFYRVJJdjBvN0VUOElpVnQ5QS8zUGl5MFBTaktLazFwcVlv?=
 =?utf-8?B?WlRyYlpEZ1RQZGF1ZDJVZmV4MTdEcVl2VWVrcWNFbTJJSTd5SnlybGk0OUpa?=
 =?utf-8?B?UVZLRSs2NjlIUmtLdjlyY3NEZXhSMlozS01GeEVIdUp6dXBNRzhkUGR2Y1lt?=
 =?utf-8?B?MUNpSnJybk9CSDdVVGRqSHFHaFhHSlhTRWdmWnVZS0cyTS9pYmh1TmJhdE1W?=
 =?utf-8?B?d1prMk5neS92RkNSS3JZMW9ZcU1HUzlRdXhwMERBa1BTbGR1QnJvTm9MNVBH?=
 =?utf-8?B?WGptaE85ckpPQ2R6VVNxVE5YYW01eE5weVVRaVBGVkt2U21iWi8zSG00SlZW?=
 =?utf-8?B?ZldyRklTaWpuZVBiOWEvTVc4SE8rdEg3ZUordFZwRzcrNm9oRTV5RnpCWW9m?=
 =?utf-8?B?YXRPT0w4c1M0U3ZyQ3JBUTdpclZ2dHJFbVZFVm5sVUZCaUg0aXdWMzFIQWE5?=
 =?utf-8?B?Tkw5dDF2bnJxbnh5N05XSkNwNHd3VzR1eklYUU0rd2YwWm5uYkZ3cU1OQ2dW?=
 =?utf-8?B?Y0VWNmVvVUJLamlHdjcrYktJa2xnc1lPa2tpWjhyeUtSQy9SRTJ3dXc2cy9Y?=
 =?utf-8?B?MlhTanpQUyt2RW1BMTgxeXUzeG1UbkFqcWxiN0FkYVBNV1lmeW5ISGF2dDNk?=
 =?utf-8?B?YllsY0g5dXUwYmoweFUwV21hdFRESlJYUC9uZU5HendkODdZblIwY3h0WXh0?=
 =?utf-8?B?Y0xEb2ROcmxJM3VKNXlMaE9FNE5TSHFHVnJMMVljTGhuUXV5cGRmK2RUTU83?=
 =?utf-8?B?aXdPTjBRbkliYmdSN0lhZDRqY3lnbm9JYTlkeU1kYWR3OURYa2NqOGl0NStj?=
 =?utf-8?B?Y2RqSHVHLzIrWjFMYk9LTnZFVWg1azRjNUlNRkRzU0tqbXJkZk1EVVFVRUJB?=
 =?utf-8?B?V0VVeVhnTGFickViY0F0cmZlaGRPS3UvVytleXFFVENZcUN6Y1RrOUtycWtw?=
 =?utf-8?B?ZitQY2MwMjcwTFRwYzRPYVBaVnBNSm16bmhuZWtJblYxbjJybzhuN2tqTEcy?=
 =?utf-8?B?VTRoVHJ3V3ZUbjlLQ0NCbHQvS3lwdnNXaXJzZjd4Zi95ODhkQi9FRWt1Q2sr?=
 =?utf-8?B?S0hrRjJlejR0US9CTk1MZXBkQlltSnRBMlpFZi96cTZvbHJhZFJYYzM2bmkv?=
 =?utf-8?Q?0q+YqGIx0BqmLDrs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53e5deed-424f-4b1c-9165-08de7353f9c0
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 03:22:44.6251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gL3pd4JuKzmE+/N3r5mXZepRUdsIOaDU/nDbEGRKOb0oz7QPnNVtF6opq+jsc3QwyADrQbJBUK5MOxmxz9NUSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFBD6B1667A
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 382A91815E1
X-Rspamd-Action: no action

On 24-02-2026 08:50, Kandpal, Suraj wrote:
>> Subject: Re: [PATCH 7/8] drm/i915/backlight: Provide clear description on how
>> backlight level is controlled
>>
>> On 20-02-2026 10:32, Suraj Kandpal wrote:
>>> Currently it takes us multiple log prints to arrive at the conclusion
>>> on how we are actually controlling backlight level. Make the logging
>>> concise.
>>>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++++-----
>>>    1 file changed, 14 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>>> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>>> index 043c9aef2ea6..aac6cdb5b69b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>>> @@ -368,6 +368,16 @@ static const char *dpcd_vs_pwm_str(bool aux)
>>>    	return aux ? "DPCD" : "PWM";
>>>    }
>>>
>>> +static const char *backlight_unit_str(struct intel_panel *panel) {
>>> +	if (panel->backlight.edp.vesa.info.luminance_set)
>>> +		return "NITS";
>>> +	else if (panel->backlight.edp.vesa.info.aux_set)
>>> +		return "Brightness %";
>> Should this be AUX Brightness?
>> So that it calls out its AUX based DPCD backlight control.
> Actually where this is called has the line
> "AUX VESA backlight level is controlled through %s using %s values\n"
> Here we return the unit value we use to control brightness

Sorry missed that, so with having AUX backlight already, this proposed 
change doesnt make much sense.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> Regards,
> Suraj Kandpal
>
>>> +	else
>>> +		return "PWM";
>>> +}
>>> +
>>>    static void
>>>    intel_dp_aux_write_panel_luminance_override(struct intel_connector
>> *connector)
>>>    {
>>> @@ -542,9 +552,11 @@ static int
>> intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>>>    		    dpcd_vs_pwm_str(panel-
>>> backlight.edp.vesa.info.aux_enable ||
>>>    				    panel-
>>> backlight.edp.vesa.info.luminance_set));
>>>    	drm_dbg_kms(display->drm,
>>> -		    "[CONNECTOR:%d:%s] AUX VESA backlight level is
>> controlled through %s\n",
>>> +		    "[CONNECTOR:%d:%s] AUX VESA backlight level is
>> controlled
>>> +through %s using %s values\n",
>>>    		    connector->base.base.id, connector->base.name,
>>> -		    dpcd_vs_pwm_str(panel-
>>> backlight.edp.vesa.info.aux_set));
>>> +		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set
>> ||
>>> +				    panel-
>>> backlight.edp.vesa.info.luminance_set),
>>> +		    backlight_unit_str(panel));
>>>
>>>    	if (!panel->backlight.edp.vesa.info.aux_set ||
>>>    	    !panel->backlight.edp.vesa.info.aux_enable) { @@ -569,9 +581,6
>>> @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector
>> *connector,
>>>    		panel->backlight.enabled = panel->backlight.level != 0;
>>>    		if (!panel->backlight.level)
>>>    			panel->backlight.level = panel->backlight.max;
>>> -		drm_dbg_kms(display->drm,
>>> -			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight
>> level is controlled through DPCD\n",
>>> -			    connector->base.base.id, connector->base.name);
>>>    	} else if (panel->backlight.edp.vesa.info.aux_set) {
>>>    		panel->backlight.max = panel->backlight.edp.vesa.info.max;
>>>    		panel->backlight.min = 0;
