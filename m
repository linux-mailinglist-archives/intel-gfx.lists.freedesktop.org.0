Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDC89FEF51
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 13:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CBF10E66A;
	Tue, 31 Dec 2024 12:22:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PE5xo9WH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9F610E037
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2024 12:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735647755; x=1767183755;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=thOsb+N5kwuLaO0EMGJYanLJp+zh0+GrbBsj5BWRYOs=;
 b=PE5xo9WHtTiTrqSja8x1mWlYSExIp3xXX9MLG7VjggCASGu0RSgtKiwE
 XhUduqqsEKu+j9gh/YTRrcSpKr5vL187ElCy/WJ8KgaWROEPw9ijXqvJt
 Y/eWPZVMnsCTFlHG5bmseOx4bEVXp4AKSvy7OQyyMDYcU3wBJr36+KG2Y
 i78BGCHTyee+jH3XI5uGE1KyYfakBfcQlcebjkqTnTgJQx2lR4o9xfqQ3
 S6V/Hu1KgHabUcrjWcyS4UnaWs6F1RHQyuXqSDzJJSR68Fe+4cuQ5huxv
 TuBdLII26wJdaDwRekH6L5NhQf1Zf+F+fTGUmmyTpu4vv+28T/zI+AFK2 w==;
X-CSE-ConnectionGUID: Lzoey4zORUOba8o9xbf0eQ==
X-CSE-MsgGUID: jl+yD1zYT3+bjsjXxLovlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="36041509"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="36041509"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 04:22:35 -0800
X-CSE-ConnectionGUID: 597sHZZxQ2OIKCgT29doVA==
X-CSE-MsgGUID: apKQyoFQSqOQFJEkm3Mgwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124328576"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 04:22:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 04:22:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 04:22:34 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 04:22:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mg7VyfN8L9fvKBBt9u7wtBW5p0rkw6q/4leahzE78eZ1BO4A81VOxgcl+8RgDAd5RQTgQIUxXb9hWLM6jbDBRanH7/PEALw0cWMMVN/vszHh4nMhTK/sDqGUl4BuyuhtGnZwIPJcTTW72icyL2zFSq+RwY/+X2dkAHIDfkMToHY01KaEcwADHJbjzoNui0JRlCc1D26tiefZS+tCRBBrJexwTFpVAWWl9GcxehW8eNuKJcnxsH6GjYnJIh9P/RdKvdcZEBuXM/0CyhoF5bH72ZP5nfHV2HCi6k5Ffq5l12Sk4plnrWOaEKmqNNlBx4TcY4yYUcRyohWvUUXbJx0oZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sShkb590lml5KXU+6JijoVs3yibgmhNvBDEEy/x9JqI=;
 b=NxmyyKs789N8+i/azgh8wjTeb7esfM8jY3B96lmpVagfpM15/EKzx6PxLRFOu5JGHFwv3UYisBBAdyXq1XcOgNpucRurBqfI0e8Ue6DWkWjWEkS3vghsZzMnApaVLvQRJmrkFi/742YzfdZ54bsc9AsL3UK1JAlBeiR+5U1wsIpuQzSvdtaoWjuSwLHKeVyFWLEdir3XqlqJHAcgZaVwqOH43qAkZgZh+jeVV1IQo0RF/A9Ya+SLJBDks5e6UHnNxlsMYi87q8J0kBzoqDH9D2SOvqx3ZSa8aWPnaYwtSyAKy26ApbmNdkxl9epKtjVH7JwyFwzR4cKQcQlsvrKcnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 PH0PR11MB5192.namprd11.prod.outlook.com (2603:10b6:510:3b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8293.19; Tue, 31 Dec 2024 12:22:28 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8293.020; Tue, 31 Dec 2024
 12:22:28 +0000
Message-ID: <caa1695e-211a-4643-b31a-fedd22b314e2@intel.com>
Date: Tue, 31 Dec 2024 17:52:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/lttpr: Enable Extended Wake Timeout
To: <intel-gfx@lists.freedesktop.org>
References: <20241213060317.2674290-1-suraj.kandpal@intel.com>
 <20241213060317.2674290-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20241213060317.2674290-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::14) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|PH0PR11MB5192:EE_
X-MS-Office365-Filtering-Correlation-Id: c2f2ff6c-b8f1-41b7-859e-08dd2995ca30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWZRV2dDQkNST0JlZVk3Z0RQcS9aUk12WGJ3Y2Y3ZW9ueW1CbzVkdXNqMXlx?=
 =?utf-8?B?ekc4MVFyWjU2R2RsTVJwZ2c5MFBpNlJqNEhFQktCWFFqZ1FaV1V4bmdRWHdI?=
 =?utf-8?B?ejdjeHJXcmdGZTZwdWR3L2x0STU4T0NvTXFTYmx5TmtsaHF6KzFQdklzRk9T?=
 =?utf-8?B?ZWpRRE1RR05IN3FLTjQ4dTU3RitUaDRtYUVaQmk0U3hvQTVMSXFMaVMxM1Qw?=
 =?utf-8?B?NGRtL0h1YzFDaFVmWjd6S0dIUTN5ZUZSYjdlS242QWlqZEdzeXpIcnM0bFF3?=
 =?utf-8?B?amFPMXpxcXhjQnNZa0o4T3FqRkhqWXFpZlZLWllkVHRHdmZMMWlvbnJZa2kr?=
 =?utf-8?B?bkk1WUx2UDV1a2dWNjBqLzdvdWs1SHkwSVg3aUdQbEpoSmpubVhNemJGYitl?=
 =?utf-8?B?eXN2bUlVeVhLSWsvWVN1S1lkd1BnOHBzTHdTRmJSSEh1ZEs1czU4QzZwSDVW?=
 =?utf-8?B?Y1Y2M2tmdzdoZFN6TmRJQTdhRU40NWJLRkhZYlBzc0ZhWkZhQzF0eWR3NHFG?=
 =?utf-8?B?K0RJeTlXOHlWUk1IZVB1MUF2SmE1bzFhbnozNmJSeHBKYmdMMWU1TVZoSW5X?=
 =?utf-8?B?NGxmODN0d3k3S1F4QUIvTUF1WERnWkxpNjIwRWR6RTVXSStFblZNWTFtd1hw?=
 =?utf-8?B?NmNBU3BCaDhiSC9HSjk4bGNKSVdkSGJSdHJRWGt2ZmVtalFnUHk0c3dvTWlx?=
 =?utf-8?B?S1VIUmcxaW85WTVaRU16K2lZb0wxN21jSFAxZnB5VFlsTHZ2RUgwRXpaeFlI?=
 =?utf-8?B?NFdPeDRmRTlzcUsvelp1U0hNU0Z6NlJNN2xxTkc2ZjV6RzZvT21lSTFublBa?=
 =?utf-8?B?alo4NkdBOHJyWE44bUFNYTNRR25wa0IyaHlWYlpuSEd4S2tlZGp5ZEg5Z3pl?=
 =?utf-8?B?eEhBNUNHL1JOVDBDRFRId1lrT3dkRURqWk84YTB5MlJiY3BidE05MlFXWFA1?=
 =?utf-8?B?YXZDcFZlY0ZUemNGZzBuRmgydWZhMjBhR2tCclhBZjRzU1VvdUZOTEFwT2xH?=
 =?utf-8?B?eE91ZlU5NzVCOTlKRFZYUkh6eXBWZXBkL1d3MlVjMEdzZHU5amVUZDNhcjhK?=
 =?utf-8?B?LzJnSnhkWjZwZG8zRi9YMzZSS0xBa0ErbjVYYjRjVEpSMDF5RVgzRjFkTDRu?=
 =?utf-8?B?dGNJVys2bE5aRnlKalB5MWRIM01TRVN1VUpzVTVla2g3dEIxeUcxUFViWXQ2?=
 =?utf-8?B?Zm5rOTU2R0NSL2RZL1ZYbzZadXBWcnV3WFNhSnRKU252V2tyRkR1V0NvdXI2?=
 =?utf-8?B?OW0yWEFsczRrZDNQYTg3S2dFVzllVU5MY2dSS3BLOEs4N3VITTVyNExwbkdi?=
 =?utf-8?B?b2Ziemp5MmJJVG5iZlJ2UjA4VUdxNnY3QWNtdmlTWkU0NHNjWHpiL0VuTG9F?=
 =?utf-8?B?UExJUDEyallVek9SOWFLRnFqOWZmODBZYXRwaW5ZZGh2SVBUMytaVklsN09w?=
 =?utf-8?B?Y21uTVFLbFYvOVp0d2NYR05NOExFQkk4OEdLUjlHWVNQMXh1YUtTa0RsN3hs?=
 =?utf-8?B?WlY2bkNkTElVWGRaRk1TYmhPM29sS1RYMnF6RHFNWVFacFp3VzVOeWIrV1RJ?=
 =?utf-8?B?R053SElicGxpbEsydEVheHkyQ1Z4Q1FUWTA1VlA1SERYTUVTVUlrdWV1V1p2?=
 =?utf-8?B?dkNLTHdXQ3V5NURHc1grVEJQMExkNURGWk95R3NsV0hxa0RmczFOK3ZqaVFk?=
 =?utf-8?B?ZFQrdHJDcDFpVitKcEdPZ3dpK1NReXg5d0FkMHVnM1JVMVc0Y1QzaDRhWE9Q?=
 =?utf-8?B?eFo2Skh6dEdacWtORms1MnQwMWVIdDV6QWgyQXA3MWtPSmtCZjJCZ2ZacTlR?=
 =?utf-8?B?ditKSXdReW9pdmpUc1c0UW1SWEJsZTFCdDMxLzdnR3B4b2JUNGk0R2pFVGZw?=
 =?utf-8?Q?p0GKyQC6srZbH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UG5TYXpGNnpiSVExYUNYcGl0Z3c0MWtVK1FZUEFYeVc3MDdJVjI1VWh1S2FZ?=
 =?utf-8?B?VnZTUWxnMzJOUmlGamVkSUZjUHNGaGttOUQrTGMwTWZOY0UzYk5STVl3bHZU?=
 =?utf-8?B?NjF2cHJkZzNUdGo1VnJ3RW4rL1F5WHNNMzRxSmtraEdYVmlYQlhKTjhBRk1w?=
 =?utf-8?B?ZGpKazFNb25XcDRMNmtwdlBQQUJ5bjh6eG5jV1JPcEhyYjg0dFgyODUrdGlN?=
 =?utf-8?B?TEtiem40UG5nQm0yM0ZyZEo3QVZXcmZSR2ExdS9hU1VqaVp0KzVxQUI1RnZl?=
 =?utf-8?B?TDVpdjdYZFFIU1U1cEJMb0sySWJNdnhnU0xncE9Ja0IzeDhROEVFVitFcEFV?=
 =?utf-8?B?eEFYcGk4a3V0NUVxZFMxZG55V1VGa2NuRmxTOXh3RGM1UWNqRFZIckFHT2Zv?=
 =?utf-8?B?SzhRaXU3OUEyM2Rrb2VDV2VRK3NOZm1jZzRQM0ZNTU5aTjJROFZLYlFkdmFO?=
 =?utf-8?B?N255WUNCTGpJeStEQkxOdWZWQ2dwVUZodmxsOVRXSHpLOXBYZTB3QUVhRXhu?=
 =?utf-8?B?amtvQkQyTnNCZGhOYi9HdWo3NFVPY0RvQ2ZVTFlaTVJaaTgybmtOd2REWGVV?=
 =?utf-8?B?dWYzc2RSY1JQNTdtNWdRM1dmbjJxajMrZzhKVjdYU2MvbkRBZ0xBK2I4bWJ0?=
 =?utf-8?B?Z3BCQlhrd2RTc0pNYWNPcUtkVEEycXVoZUdWSENEbHFzYXA1TDRKZlR4NlRl?=
 =?utf-8?B?NEJNb1hBeWJRdmltakFlZ0plMVFOZWI5Ukh0QXpNaldKWlFLdVVsRFFtSkZU?=
 =?utf-8?B?d2kvVXhjNUNEZHpsbGxEcjFiNjcwVldLSTI0MnNmNDI3bHVtZkhOcVorOGRK?=
 =?utf-8?B?UFd6T2lyYS9wYklUN3JObDdGelo3TXAvWU05UWN6eG9OSXBEVzQzQ3hlc01D?=
 =?utf-8?B?Mmd6c0YxbGpxYitMdjFDa2VYaTBBeENPT1g4Vjd6OTBaVEdmTktxNFgxb1BT?=
 =?utf-8?B?SFNDeVZsdDlnN0twRG1keU1XMWlrS0hNOEp5VlpOQ2tPTEhSK2lIR2JCV3RD?=
 =?utf-8?B?ZjltOXFMcWtqVUVxWVJ4M09vSjNuZFpHcmhneEZGdks5YU1GTXdldlJhN2JO?=
 =?utf-8?B?QVYxVUgxRzJOcnRRUWsyYkpqc09yUDBZWWVRbXhRcHVEQ1JxNnd3MGM5d2F2?=
 =?utf-8?B?cEh6ZXM2TGQ4eUw1M2VmYVRIa0h5NXc0bHBzZnNHUEJOWnJZQzc5S2NBZVNI?=
 =?utf-8?B?UFV2Y3hDTlEvTGNLc0JlZFhYUmRCVnUreGtuZ0xPUDU3ZmpyazZTMnpsNGlh?=
 =?utf-8?B?MDFYb3IydTU0anQ5MFE4TzVHaExuUmhxVDZaWHl5Zy9LZThsTk9iU2lrS1hp?=
 =?utf-8?B?b2U1U0syWm9iWnF2RlduY21QejBVblRrYWlXOTloWXFiWGRua3BxNHliTXhw?=
 =?utf-8?B?bVBFeDg4VkVyVTN5UkV0eU9tZUQ2MzcxR3FMODBNVDMwTXZCSXdvSXR6V2pt?=
 =?utf-8?B?a3RlK05ScUV5dEc3K3dHRVg2K0RnQ1FjQ2w5Q1Z6TUU1Y0dWQmZ3Vm1Tb21Z?=
 =?utf-8?B?ZXpaeldCZlRwZXU3VFpwV29Kd2RORW11ZTk5WHZnRGZ4bTVWN2QreFhRWlBx?=
 =?utf-8?B?SFJwcUZvUWlCSFRmb0syZ24yYkVuZXZCZnNvU3JoVnZETjY4RUVTYnBFMEg0?=
 =?utf-8?B?a3N3SFlZSThJVU04NmhBRjRFdllubFF4TFpkM2FRc3g2bEJ6bVVCU0RMOXRU?=
 =?utf-8?B?S05iM0FwZGJqaVRHWWswaDBxdk1iMzNhQm5LZWFkdi9kWk9rZkorTVVaaUxi?=
 =?utf-8?B?dDkzK0Y5dUxFaEdxTE0zWUt5S1BLNnl3ODhXajJvZXpTeG1JR0tPc3NQeEls?=
 =?utf-8?B?QUJwNHhTcDNVbnFJdE5wMm5YTWxRdURtMk9hTk04b1NsdzdiTlA1cTE2MlZS?=
 =?utf-8?B?Y3hzZGEyZHJMM05nRDJxMGlDRHZqampqeFRHYkVlYWZteDhLam1wL2Rac254?=
 =?utf-8?B?QzdEc0tPSjAxdGVkNkM0emVNRy9LM1ZoRXF5T3hvQkUwY0IxMldkdW54UFRh?=
 =?utf-8?B?Nno4bUdRdjJZcDZMNExSTVlidnVtc0RKZ2hMeTFFcWJ3QWwvdXB4TXkvRzRB?=
 =?utf-8?B?ZjRXM1p5RCtDMmdETmpvYjRiWEZ1V0t4OWFUc3lpSjNraFZiVXJldkk4Z0I4?=
 =?utf-8?B?Q05WMjY3eDhXdGpka2hvQkIwOG1nSXBRZnVDc0ZuU0dMVmp4eXZESXZwc0Rj?=
 =?utf-8?Q?MSSAIa/n6i+xOGA/rKoO2WI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f2ff6c-b8f1-41b7-859e-08dd2995ca30
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 12:22:27.9652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ESdO5l4rvpmpiK3Fa4L2bV1/Fpehxxly+AGL0Hy8K4ahBhURUOGAWST9HXO2tks8yMkYaUzmzEc/EQ6M7BWhHAYQHu6r/GsjoJm72Ton2N4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5192
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




On 12/13/2024 11:33 AM, Suraj Kandpal wrote:
> Usually retimers take around 30 to 40ms to exit all devices from
> sleep state. Extended wake timeout request helps to give additional
> time by reading the DPCD register through which sink requests the
> minimal amount of time required to wake the sink up and giving the
> same amount of wait requested by sink device.
> Spec: DP v2.1 Section 3.6.12.3
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +
>   .../drm/i915/display/intel_dp_link_training.c | 46 +++++++++++++++++++
>   .../drm/i915/display/intel_dp_link_training.h |  1 +
>   3 files changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4f9c50996446..d092c3ba0ccf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2624,6 +2624,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>   	if (!is_mst)
>   		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>   
> +	intel_dp_lttpr_wake_timeout_setup(intel_dp);
> +
>   	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>   	if (!is_mst)
>   		intel_dp_sink_enable_decompression(state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index ea9b4730a176..d0f0da78794e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -134,6 +134,52 @@ static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
>   		DP_PHY_REPEATER_MODE_TRANSPARENT;
>   }
>   
> +void intel_dp_lttpr_wake_timeout_setup(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	u8 val = 1;
> +	int ret;
> +
> +	if (intel_dp_lttpr_transparent_mode_enabled(intel_dp)) {
> +		static const u8 timeout_mapping[] = {
> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_1_MS] = 1,
> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] = 20,
> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_40_MS] = 40,
> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] = 20,
> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS] = 80,
> +			[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS] = 100,
> +		};
> +
> +		ret = drm_dp_dpcd_readb(&intel_dp->aux,
> +					DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOUT_REQUEST, &val);
> +		if (ret != 1) {
> +			drm_dbg_kms(display->drm,
> +				    "Failed to read Extended sleep wake timeout request\n");
> +			return;

Returning from function without return type, better to declare int in 
place of void and return the error  value.

int intel_dp_lttpr_wake_timeout_setup(struct intel_dp *intel_dp)


Regards,
Ravi Kumar V
> +		}
> +
> +		val = (val < sizeof(timeout_mapping) && timeout_mapping[val]) ?
> +			timeout_mapping[val] : 1;
> +
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOUT_GRANT,
> +				   DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_GRANTED);
> +	} else {
> +		ret = drm_dp_dpcd_readb(&intel_dp->aux,
> +					DP_PHY_REPEATER_EXTENDED_WAIT_TIMEOUT, &val);
> +		if (ret != 1) {
> +			drm_dbg_kms(display->drm,
> +				    "Failed to read Extended sleep wake timeout request\n");
> +			return;
> +		}
> +
> +		val = (val & DP_EXTENDED_WAKE_TIMEOUT_REQUEST_MASK) ?
> +			(val & DP_EXTENDED_WAKE_TIMEOUT_REQUEST_MASK) * 10 : 1;
> +
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PHY_REPEATER_EXTENDED_WAIT_TIMEOUT,
> +				   DP_EXTENDED_WAKE_TIMEOUT_GRANT);
> +	}
> +}
> +
>   /*
>    * Read the LTTPR common capabilities and switch the LTTPR PHYs to
>    * non-transparent mode if this is supported. Preserve the
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> index 2066b9146762..cd4e0d6db6ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -15,6 +15,7 @@ struct intel_dp;
>   
>   int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE]);
>   int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
> +void intel_dp_lttpr_wake_timeout_setup(struct intel_dp *intel_dp);
>   
>   void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
>   				     int link_rate, bool is_vrr);

