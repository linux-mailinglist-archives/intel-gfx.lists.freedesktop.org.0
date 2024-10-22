Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344A99A994D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 08:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A5010E03B;
	Tue, 22 Oct 2024 06:09:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XysUf7sT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE3A10E03B;
 Tue, 22 Oct 2024 06:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729577397; x=1761113397;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=znZszSWVHH90vbH8fjHQJGx+lMJIYmgOQPBEg7+qFbU=;
 b=XysUf7sTTQS/hHOpnbuZDGbP0MytDtxWhQeT3+0Qsz9wDR6N8mdhDzdM
 ph16tAmblgpOYJOJ0A2Ji7zOZ6cuRrcTy34sZ11rGWAypmgmdODM5InPg
 uQ4V2vipeTEVa9J4bDqLAiCT8SGO/pitc/uR7dTln6mTXNzFrz97szpfh
 CQAKwqeSDecd66pnQVex1xP+NuwtnKp8HMC1G7HnzU392187U1z1aFwR0
 dp7sNVWBJhm309XbyxqSzr0HQb1ymHZabyfREp6BQP9tXdbOxfxzufK2Y
 7GG0o+n/ZQD8L79VShpzILHrJxheodlcjH/6ul/aXgh/0kVSMfNncuWQl A==;
X-CSE-ConnectionGUID: IkX4QJUrTka140JyXIxkvw==
X-CSE-MsgGUID: VsvqkjEqRbKoUQHUYOUDcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28976908"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="28976908"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 23:09:57 -0700
X-CSE-ConnectionGUID: 6Nxak9haSSKoCR+FxSR+dg==
X-CSE-MsgGUID: 1j3kAv+5RbSUV0HwKDzvGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80163596"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 23:09:56 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 23:09:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 23:09:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 23:09:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FJh1RM5VxsGLVu57eXMU8uas+/HqCns4/9UrATgu1IXhsKRoDcW0FX1T/8DoV0y4xbkwS3awdm1yYLZSQrb3vdJCO6Y/D6JER5xB67fYU7pGlsBJ9ZM0wQSZacQomu+9Jb0SGaG5gHaZXIIaV5G/b0QBcgcWF5Y5rbwrHAQ1DRF7pRzv0yxzwwh8Wr5YIGzAH65osV0FlDSkpZy47XFL7G1D8CbR5u6fwggd8eoKzwq0qDvDK7j/uLH8h+DZBCivUWHy1uGmPqqesxJ8CNrTd6gFyySMYrkPOrMW9E3ofojGXhNtiadfoxI4jsdGqK5hHN4PZ5cwOECVuhPTcDctlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zS7tQZm+PyIbFHT/iuuLr8lbeaMlGq6reZY9U9glL0g=;
 b=ObNyeZe+GGEwjuHeqiW8YcJFMsMKGsrBkaYzwiGzrcQozM6U6AqmRQj3wJmtVujAyDXy/tR+7PNA+8rZ19oDvz5ISI7fXmmhPABmpcMcZ8t+IpQQSPcSci1AYz/F+OEC3ss88t4ary22ICe9eeDoAkxBHNMD7INEQlR3pKD+reAE/SwEbnkWnFtn3IcZmwA59kr5fLeDWwVmgPiGGibHiHZF1kKRC2wY+qBPBn2yh6oU9zA8Ns4S+l/9Ym4qhNO+0H2NSPmpfGxP5TmJcewqTgxpVQ4IV9bCCqdkiNbB7i6gg4EjnlwTQ/KYN9W+ku160Gp+lcIzKGSm1XInO/Lk6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7056.namprd11.prod.outlook.com (2603:10b6:303:21a::12)
 by BL1PR11MB6028.namprd11.prod.outlook.com (2603:10b6:208:393::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 06:09:53 +0000
Received: from MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5]) by MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5%4]) with mapi id 15.20.8069.024; Tue, 22 Oct 2024
 06:09:53 +0000
Message-ID: <8b58a722-150f-41f1-9a64-d9603201a3b1@intel.com>
Date: Tue, 22 Oct 2024 11:39:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20241022055655.1902-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::10) To MW4PR11MB7056.namprd11.prod.outlook.com
 (2603:10b6:303:21a::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7056:EE_|BL1PR11MB6028:EE_
X-MS-Office365-Filtering-Correlation-Id: 0326f246-f880-4691-ce5b-08dcf260251d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGpsQ241Mm9ETWI3OGswZzgvZ3hSVDVkcDFBZG9NQ2ZHQXYzMnVNZDJlZm5s?=
 =?utf-8?B?ZksrdFUySDd6QlV2a2xtU25QZWs4NFBYTEVCZ3FlN2pSK0ZxZ29UeWxwLyt0?=
 =?utf-8?B?VHgyRlhKbHIvckpJb2pVVG9HUXBKYVZyN1B4Smh4NFZBejc4UlRpa01kSlBs?=
 =?utf-8?B?ckFBSmdNZ0xvSGd4eEpML1dqWFpYa1dYZ2FNYWNyR1dCT1FHV0MrUVVzNVY3?=
 =?utf-8?B?NFVxRFFEK1NGS0FpTU11ZERrTEcyVi9hdjR6VmhuWDBsVU1qZDRpeUdrOG5u?=
 =?utf-8?B?UExVU0MyMUVqekw1Vlo1US9iRWpUOXZvcHE3aWxiN1lIMlA0ODRpTFNYenY2?=
 =?utf-8?B?WVJPZ3Aybml2OUZWK2J0cllzUUNUeEtvdUlPVy9LRStvbVM0alFjWG1NQllF?=
 =?utf-8?B?QlRDOEZyYkJVd1o0SWtYNERlVHRPbGhlQzl2SkEvd2c4TjBmbWlOM0RXYkJF?=
 =?utf-8?B?U01rTGtpMC9laTN2eXpmUEs5ZG1uTnhDeGF6UjdOdHRkRDNxN1JQRzZsN0xI?=
 =?utf-8?B?dlBXZGpXRGpDUGthMEIvNTZVZm9DcHFKVTFGNnQrUnBURzVSY3BnOEYxMUxX?=
 =?utf-8?B?Mk93cGE4aENmZExBM1F3aHZhWGRoaURVemg5SWJrT1dMdGJ3dldJU0RkT1Ey?=
 =?utf-8?B?aEYza3NSekxsM0MzMjFpazVmR2Vhb1kyQ2RKVlczMENuTTJGQWovMU03bEpL?=
 =?utf-8?B?Q3RHWkJZTENHTVBxWE9vb1dsUXpXcll5cUhiSE4vNGdKeGo2KzMyaEdqS0s5?=
 =?utf-8?B?am1LenVxbmloS2VFOXpVVUxlK3hzSFBGQTdmVXl0TXNGTHJBUnEwVkppdjdx?=
 =?utf-8?B?L1JmV1krWC9KZ0Z1c1k5S2tTcEtaRWg2OERneVpicUs4QTkvYmhRaU9OY2VQ?=
 =?utf-8?B?ejV0cU1DUzMvTHVWdEk0ZjcvQWQ4NERLOWVDcWFGbjdBZE1sb21lUDluT0hC?=
 =?utf-8?B?VGl2N2ZVU3FlZ0lMd0RjSFhTb1ZHY1l6RVVSU3dRbzJtS05VTURQbXFnUTZ5?=
 =?utf-8?B?MkNNRFhJRHNzZmFkTkVGQm9UZHA1WStEb0lkcEFhNWQ5L0lpU3A4VkJCVWhR?=
 =?utf-8?B?QmE5UzhicDNYVzF0S2JLL0lGa2hYUDlpVEY5dlA2T2lZZnlBQkZVYXViZGIy?=
 =?utf-8?B?V2Jsb3dSWnNtM0tHSmV5dWp4djFkSUlYZzNreVFKL2VzUXo0dGdEb2FWTDcw?=
 =?utf-8?B?dWYya1lzajBUa2x4VEdDYTFiazR5N0VlQTZoclF1enZUd2dOdDFsUTh2SXdM?=
 =?utf-8?B?VFlmTllvUzkzYlZwQWh6eTJMZGpBU2J3UEJwcWZ6YXQ3bFFqNUFhSjIyN29o?=
 =?utf-8?B?TjUrb3BzS0JhQWxIQ1NtU09FV1cxUE0wMXlVM0F3UkZ2Z1NtUzYyczFyampo?=
 =?utf-8?B?ZmExekF4bnVVdExpTUVYWEJNbEVqWERYaVQ1c3ZrWEtKU2dXc3VRZzlIZHdL?=
 =?utf-8?B?T2RYRFV5dG5FdytRb3ZYMUtZdHN3Vk90ci85cGpOMWVySGtSeVBWVHoxbkl2?=
 =?utf-8?B?RVBVK2Vkb0hUY3c5OUxwT2IyaGlzRldoN3FwaHFHYmc0ZGVNT28vTVlMbTAy?=
 =?utf-8?B?YXhjRC9xRUlrWk5iRjcxUjFBNk9GR2tCT0I2V2MyRkNLUG9pNG13WitzU0ZX?=
 =?utf-8?B?K2x5YW1WK29xN28xMjNEeVdnR0ZWSlhlU2M0TWp0eXRtaHJhaDFTblZkWVJY?=
 =?utf-8?B?WFh3cm9qdXg1TWVBL3VGM1pYdkhac1c4UTlkNmNxdnd1MjZCZWExQ0NIRmRM?=
 =?utf-8?Q?Ii/GwW3gLhfda5zdJ6uRNJF6txjS1V1eJCEzGpb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHZ4b3RXdVc3eVhFRDlSTHhDb3Y3Q1lGM0RsVFlTdFhXSldoZXErcW0yOUlq?=
 =?utf-8?B?YXBJM2E5ajcxUjdtdGVKQlBTS0ErSDNwdWxnUDh0UEZjdTBEaEVSMVliMzNY?=
 =?utf-8?B?alpheThGNUw0UVk3SEM5eHJNdWhaWlAwaTM0MDdnT2JXWDVnbFV5TDZUdWR3?=
 =?utf-8?B?aURKWG1DZzRkR3FHRHQwWmwrdSthQXBBTGFLRXc0ZnY1blc5WjFxNllDMkNL?=
 =?utf-8?B?UmN6VURudUhOY3J6MHRTS0g1TVpza1lkTVJXSEVTUm93UnlOR3o3NFdiZnlr?=
 =?utf-8?B?dWNaRGE3MjVDOFRTbkFEYjUzVzlJdDZpOS8yQkUrK28vMC9ML0FyYTN5cWlr?=
 =?utf-8?B?MGJobnNQWllDSS92Uyt1RE1rSm5LR2kxREw1Wk1VRXhHZlV1aGFxMzU4NzAx?=
 =?utf-8?B?Y0tJRmRKZi83WWpXVDQyb2RxWWtRUVQxN1kyY0JSa25UYWZQdzdqN1oyYzVm?=
 =?utf-8?B?bGQ4WlErbEVRUkxVMnQ5NmZMNU13ZG8yWWtKaDdRWGl0QWcvK3F4TitMVFg1?=
 =?utf-8?B?V3d4Tms0WTJUVnJ0TkIrcVZZZmdHM0ZmQU5LcUxCN0RZU01IQnNhaUNxTGdG?=
 =?utf-8?B?OXY0UGRNMGg4bDNYRmRaaTl2azJjSUxLS3ZKbGlzNFMzNWpRN0xMSEdUbUVO?=
 =?utf-8?B?dzlVOEFkc0QvL0ZKeWxiemNMOWJxZzVlZWdKbzVocWYzdXZQVmpuK3JUR2dP?=
 =?utf-8?B?RVhhUHNyRkV0Q2p6MHJLNXUzMzhBTi96ckNLNkR4c3FyclBRSXljYVVpNDVj?=
 =?utf-8?B?Y2ZhSjZod0VsemhHWUIxMERMcUs4MTlnZXlpT2QyMUJaQkgzWFhGRi9ITzNU?=
 =?utf-8?B?VHFyODlaZVJsZVdiNHVSUGxCN1RldU5pbWVLWm43RGVydXIxYkhwWVpHZDhT?=
 =?utf-8?B?dG9VVkJsaEhZcDVyQkpCejVKa1krZkREdmM2c1p3Q0t0VlBKRlIzUURNSll4?=
 =?utf-8?B?dktUblRzd28rekg1Qm1naW85c2c4ZmNKbC9USkRWN2dXS01PV1IyRDlLb0hY?=
 =?utf-8?B?N3c2Z2M1UWhMdXJnRVI2dGtSV0RBT1BaRzZ4TTdmL09kWnRlOVFKbE5STU93?=
 =?utf-8?B?dmYxWEkvNnJxdkZtOGVNdHNXQ1J2Z2U0bVlscWdrSElEWEUyVWRXS29WSTkz?=
 =?utf-8?B?V001cnpEVVNOekhWeXExVkpITzFTQUtOWHRzUjhrNDV3MFYyUFFlNHFKQ09s?=
 =?utf-8?B?WXA4dmIydXp0U2FmWjRWSzlNcHVJV0FxUHJkOHJNYW42OFloYlVRdmpTWVZl?=
 =?utf-8?B?YnlsekRab3d2Y2JCYTRueGxkbEk3RHY0eG9iQzZ4NmxsQXpCRHl6RWc5RDVE?=
 =?utf-8?B?N0Jxek81dnExOTdIWXZIcGJpRFFPTUkrNElrcjBxbXUvaGJUejRCSTNjUFNN?=
 =?utf-8?B?QUcyUnU4Yy9SOUg1aUJaK0c5c2FmSkJlK0tHUFFPTFhCczlyTDFWQU91bjNP?=
 =?utf-8?B?VGt1VmxweFFqdHZiRGhCNGpmRGJ1ZXpJU3F1TUEvRGpxdGNNVi9FUzVOblFo?=
 =?utf-8?B?WHYzYWNEaFFZWVdkRFBjdkZEM1hNeExLdUZnZTRaVE4ySnRKU010dUtqYzNj?=
 =?utf-8?B?SWZ4ZUp4Uk1PL0oyUldyZ2doK001MWxnT05iSFFPSkV2OE5JRjhLVDlGZ2RX?=
 =?utf-8?B?RmV5aWd5clViUzh0N0ZBcmpwczdmSzBBbHdLcS83OTluZ09vMldjdkZGdE9p?=
 =?utf-8?B?NUxTMWNvMW9MUk1jNjR1MnFDNzZjSXZkdldPSG1GRU1iMHp1TmIvZVlQVS80?=
 =?utf-8?B?bkM0SmhHT3BCSGpibGdaa1Bwb1NoMGh1UXBBcGE4TEFKK2dBaHlpeFVoS202?=
 =?utf-8?B?S1B2cFFXd0dGT0NyNTBLTXJCL28wRXZWWlRHNmRYZTlYRXQzTHhxYjJIaGdY?=
 =?utf-8?B?V09uN0RaOXNNNWxOb3gvQWgrOFVvNmVrQkU4OFI2Q0taZ0J1dEUvNG9QSXky?=
 =?utf-8?B?THNpSFNHaHBLSDhNVS84ZjYvanIyekd5TEtDU2lSV2RkNENXOUpnVHY3ZnZu?=
 =?utf-8?B?STV3dzFxL05xZ3Q3VW9QU1o1aXZyZDUwMFNoVGZESkFtZEV0UVZwRjFuczNQ?=
 =?utf-8?B?UVpmeTJVTU9UZ3RBTlBhYW5veTV5eXJBeDR0VTdJOHVxeTZsa0l6TElPRG5N?=
 =?utf-8?B?U2UyMDM1eGFJNE4zQndRMElWY2VqcFp4SFZWZDc1OVAxdEkybmQ2VzloR0ln?=
 =?utf-8?Q?kRaRUPE3dFgyY7SyapXKlkk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0326f246-f880-4691-ce5b-08dcf260251d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 06:09:53.6125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDIyy7WOPu/TkZ0M2U3jSbn4dRE28NpCVVQW/QdeboQTrMdcq7h6Kg6ZRd02uvqnLlEsVcWZbpV16wZ92jcMIS8tRDEKJXQSHv2hEfy0xUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6028
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



On 22-10-2024 11:26, Suraj Kandpal wrote:
> Add check to remove HDCP2 compatibility from BMG as it does not
> have GSC which ends up causing warning when we try to get reference
> of GSC FW.

Add fixes.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 3 ++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }


LGTM.
Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>

>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..e3c57f0b79c4 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -32,7 +32,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)

