Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B21C6A6A0B0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 08:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41D510E59E;
	Thu, 20 Mar 2025 07:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XOxw0lmM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604F810E59E
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Mar 2025 07:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742456734; x=1773992734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NMgslnAw43ZpqjaYf3SJpXdVFwuXCHrpRivR4UP2an4=;
 b=XOxw0lmMZA3F5WhMPTKs+4+wA4qh9UCp9QeTh3M6PAgNr0NoDAD57aqk
 yu+SmeXHv6Yi4F57WiIAl3p9H0QyXMIBqeTU5du9yPRftTT5gcjvL1RhR
 qvazYlui+89YszxXs6PsRjIOgtP0itaxck1OP0qo9h/Q576242uTqd/YL
 r+pshgEokWXjqq8ojjYqV+dUxGw2ga19WEyushVLJlqAj3gThzVn5GJ5E
 rk+zaPEmQrL7DH97KoQXlOkLD22x00+DCv1IWkW9Qj1mu7oMbfgbobgoE
 BFkaMOhj+eEHWltalWcZwhcHMtJASbtuqobN93ivMIT7puypnKruqIv2M A==;
X-CSE-ConnectionGUID: U1Vr+RoGRQinzjtXalq9ZQ==
X-CSE-MsgGUID: LYK6Vi9PQAuAi9u7Kol32g==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43551763"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43551763"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 00:45:33 -0700
X-CSE-ConnectionGUID: 6YRSZWrKQrGz4GDGNc1eWg==
X-CSE-MsgGUID: ZztJ5horT9ui0ePSbNC21A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="123007266"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2025 00:45:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 00:45:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 00:45:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 00:45:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TUqIl/nitGwllgFYFK9eBg7Rz9zc3SBx98EpFeUoaeXDT5zGbwu3BP8v/zdgkszrnS0n0CTXsZJDIvX1AKVL1SLAE/wp7HCgi4pFWqPHYUIoLookbpOuutJd6f/LVPWQGpR3liv0VkAHoliujjNmN30ibQ6rTcLk+7iD9TDFTML3lQP9s6gPkLDIotL/ES9KIrcGJx/8cZen2yrdturOviNHtvGzjCJURaRejKbHVEHwk7PPo8J6neljYNe/rHe4v9kLcW9vsw6ZfCZN0fsNwNzoNMyYiCVOvUvYr020/245ykx9FMeENh336Vnrm+uf9SFClwJavMO9Nl9c+iRJzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0l3qigW+QvFj983hzkhN/PXPff1ndyTfMPnxe1WV8gQ=;
 b=bmMRHsEHzylZh5l1agoFnuY6oyypMQTlr7nEL9aipAOJDNgB3kOLWkdkqj5p1qvUUa1/FTLTppiETkIiWSoCV53cOs6m8ZtiBXIuvH5u8TcXcohEV1on8VvYdrCSJbq7+TPo9Y9xzrVLFNBV5o6/p9nb5PDROk9Y0gr1kcqyz80eDS8rYJULu7L1NTvVy9nA7fXDCtPfNS0ofaXFuChAb13yyPW9IrNHg2s0bnHCBSQdrYAxds0CEUDSDv9B7YCvCikp+PxCswAOSwdAPRBmeHymJtwlNhaUNs5zvpENR+0V6bhvpicq5JQTge8NBL4i3/r8wZXvWOR1VQP7MKpxIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5703.namprd11.prod.outlook.com (2603:10b6:8:22::5) by
 BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Thu, 20 Mar
 2025 07:45:02 +0000
Received: from DM8PR11MB5703.namprd11.prod.outlook.com
 ([fe80::f734:e507:3083:e454]) by DM8PR11MB5703.namprd11.prod.outlook.com
 ([fe80::f734:e507:3083:e454%4]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 07:45:02 +0000
Message-ID: <487b6272-8df1-4069-bfef-6b75b5e2ae77@intel.com>
Date: Thu, 20 Mar 2025 13:14:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [v3] drm/i915: Disable RPG during live selftest
To: "Anirban, Sk" <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, <raag.jadav@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>
References: <20250310152821.2931678-1-sk.anirban@intel.com>
 <41a6287a-ac32-4d29-9e22-12a564b74bc3@intel.com>
 <027a7daa-56d8-4215-a562-bc12dbe7646a@intel.com>
Content-Language: en-GB
From: "Poosa, Karthik" <karthik.poosa@intel.com>
In-Reply-To: <027a7daa-56d8-4215-a562-bc12dbe7646a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::11) To DM8PR11MB5703.namprd11.prod.outlook.com
 (2603:10b6:8:22::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5703:EE_|BL1PR11MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cbf1ad1-0967-44ff-f32d-08dd67831f47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2p5OE94TnVOMFozQ2Njdi85V09YclRzNHBPUXV6QnBIOFM0TzQ2SXVuKzlY?=
 =?utf-8?B?anhib0theTZKMzczRXZnWGJUM1U1Yzl1b1pDSlA2V25DWG5FZyt4WXYvMElM?=
 =?utf-8?B?Ynkyb2MyMmFkWTNuS1BZa3dYRndIb0htZS9nT3JZQVM1Y2g2bnZZZS8waTVM?=
 =?utf-8?B?TDQ5ekorbEFSL0E0ZGdkRTcyZ2tFeDN3WjZIWm5peEN6Q1ZxbGdnVlIvTktr?=
 =?utf-8?B?TjFXNVQ3VmpuQjVnVUxRdHI4cWNoaDliYjNtQlFTTnFKS1RUVHJPTW9ZWmN0?=
 =?utf-8?B?NzIzRVZoK3BNaS9renJwM0pySXdtbC9rRnRmVHVGNkM0SXZRcmFLOTgvWXlI?=
 =?utf-8?B?eEJqeE9wdU10SERPM3lmNHI5clRZU0R5Mk9zK2V2ZFhnSm94MVFSZlZIelBi?=
 =?utf-8?B?SVpUa1lBb1EvNFlsY0dSRmsyR3EyaUxPaUt6eFBRdi9JeWp0UXRpNEJhL2R1?=
 =?utf-8?B?TVBmV2pxQitTbk5vYzc5bUZ2eW1WZDVnV0ZHRWxBd1BFTHRXZ2g4U1JXY1NY?=
 =?utf-8?B?Ukx3NEVobkNGUnFGUHNYeHBoQkJVYlJaeGZNRE5zNUdHWXlZQ3IzUWJvSy9n?=
 =?utf-8?B?eEVVaGUrb1NiUVh2Um9KVXA4dUZmTkNyN2ZqZ3Y4WDUzN29zWG9xZkY3MHVU?=
 =?utf-8?B?UWFYekprNmM5N0NHUEZxeDBKUytlL0x4VE4zOURUZDRlYVdGbTdDK1pNVGxy?=
 =?utf-8?B?YzdCV2hIZ05iNFo3MUNjL09BRGEwMFF3Y1pjMGtqSHNlSmc2OSsydEpubkVR?=
 =?utf-8?B?MlRQTWpYWVMvNW43ODcrL010dnB2Ymk4YW9VZnhWWG5XL1Q3S0dzaEZmNEJw?=
 =?utf-8?B?ZGZjTUI2U2NaVEUxc2hYT0d0bmw5dlZUSE8wNURqbVQ0VVczOFFHNkVoK25T?=
 =?utf-8?B?RXVqVWwydXhwQ0FrcWRKYXZxaWEvV2NacXhseGJWSExuY0FzeGFOTStRSm5B?=
 =?utf-8?B?bnBuMDJ5eVBobkVXU0tKSTlvOW9JUEZzdzNiUGdDSlRXMWpLNzRnUDJSQ1lH?=
 =?utf-8?B?RjlNRHZGZU9ONGh3dWNvR3pvMk5uM3o4OHRaSHhJbnVpZks4eFhpVi9tOVZl?=
 =?utf-8?B?ME9SbHVVdW16RVBGSzNuUGJHTTIrNFpqWTgxS291YlJiZDludlJWU0xaNDRs?=
 =?utf-8?B?b0Z1RkNlZ2J4SlRyenpUYi9LaVR6OEd3aDBZMXN4WTZpSEdwd3UxaEFUbk55?=
 =?utf-8?B?ckJSak5kdVZPSllqTUZ0NlB3Q3FwM0swR3NucWFFU3lmb1Z6T3NwNlA1andW?=
 =?utf-8?B?R2tvSjZlSzVUVFJjL1c1TDNSaDQzUW1lNGVXN05JMXFqYmovN1gxVUVYc2pG?=
 =?utf-8?B?bWVZRTJPd2JSM1VSREk4Si9Tc28yZXRqQmNIWGtBeThRZGt0d3h3OWFPMkdj?=
 =?utf-8?B?ZEZ4c3lEc3hpMTZmRFVFQXMzRm1WRkJKdEQ5Tmx6bWxUSm5nZS9EVTR1ck9o?=
 =?utf-8?B?bGpnWW8zYloraHRRSCttVnVXeHpWaURnSjkxUVY3bEI3NzBsY2tCUUlkUC90?=
 =?utf-8?B?MnZRV2h1U1gwS0psMmhZSFkybWh0VGJpSkhXa3BzQUt1Mm8zOTA5d21UOGJD?=
 =?utf-8?B?b1RwMlhMWStLN3AyZjlLd2wraXNBWFovZmJmcmo2S3ovemNocmFlb1FmY2Qz?=
 =?utf-8?B?a0tpdzNrdVJkUUFGYlZUcWYzWVpBS1RVSWwrV0l2dTAxN3RxZWEwV2pub2Uv?=
 =?utf-8?B?eHRaVElORE5JRnNSdmVoUGNDYWZoRkd0RFFaUFBzMy84Tlp6cFk1MkhPdHFl?=
 =?utf-8?B?cjl0TktwTU9ldHpjNytzTS9wUmZKOUJpdE91QUhTYmYvdVM2MGdCcEsrUU1S?=
 =?utf-8?B?eXhMcjlIdG41Q0NIMGxWZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5703.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmF5bmE4VW5FS09WVmtsM2lCTnNpZlZqWnFkS1dWWlZHYjJUb0tsb3BQL0Jt?=
 =?utf-8?B?NnZLNlhUQ2k3RHdZQlcwOExlZ1JGNWF1UHZ0UUY1WkxrL04zdXpoYlE3QWpi?=
 =?utf-8?B?R0sxeGoxWndIU3d2a0pBOGw3MFR1eVRySmpwUHJyd01wNlhzNEtGZ0lpSW5Q?=
 =?utf-8?B?SEg1dVpnK0FpZFpZaWZOUElGL2tFMXVHWHZDOUdSOTgyNHV1VXZ0RkkrMHAw?=
 =?utf-8?B?dUZST1FQSFhyOS9OQ1pYMklnREp6YVkxT242SXJzV3VxLzlyTE9CZnpBL2RB?=
 =?utf-8?B?QStHeHIwQzBOcnJLR2gzZ2FpKzBTK2gwdmdLK2NtKzFCMC9XZk9vRTRIWFZD?=
 =?utf-8?B?NkNQd0orUmQvVWVUYzJMY1ljNzNiOGFLRStKQlAySGZNVThpYzFsWVhjYThm?=
 =?utf-8?B?aTlEb0lXK0VYQTMyUEpoQ0xvdlJpZEU3UFVrNk5MbWNQTWNXTVc1MzVJSlVr?=
 =?utf-8?B?R3VaaDlaUXpsUWZ2bHRWallIY292NlVWY1hHaFZvUmFKSWRJSFQ0cUt0RXpU?=
 =?utf-8?B?YWxvNlRobFd1YjNNR0VYcndNZUhnbWp0cXFHOHJvTWZKM0Rqd2Q4TGVZbkE1?=
 =?utf-8?B?K1R1WGxUOVMyY3BUeVNwMTBwSmplV2hMTTVRVnExV1NOYnFXU2Y5eDQ5WWJ0?=
 =?utf-8?B?VWwyTUJUYWk4RUxuTmc3T3NnbzdWOWdUMys4UTJIWWpFT3k0ZVFHUXhaT3ZI?=
 =?utf-8?B?N1c1SHBMSW5ncUJnNlpnVUl1TTVKN2h2S1BWNmgxUnVneU41bGhsNnAyZXZV?=
 =?utf-8?B?eXhxRzh6akNWNEROdEkzWEw0ZnhObHo3OWVCOU1nQjExUEFNM2RYRmNWVEF0?=
 =?utf-8?B?ZHlaVHA2c1VGOGhzVjB6TElMQW9lSmdtSnJXWHA4WjFCVWh2c0tZYmMxaVVh?=
 =?utf-8?B?UXFvc3pmaG1YUW5wWDNYNEN5UmJnc1ZWU0taajI2SUFwZGQydWYrcld0RXla?=
 =?utf-8?B?MUpBZGowMjZ3c3lBS01YSFJYUXkvaFZVNklYYnRvNzNndHlyODhCM2VicFZl?=
 =?utf-8?B?UVFQNlVrMDhWeTMrMks4RmU3b2lSZFF2NWkxSXNveENxdXNqcmFqMXdYTEdB?=
 =?utf-8?B?bWFMcnp2UVp5bkgvVmRXMUxyakZmV0FKNis0bFlyQUlsdzhUTzl1ZHRhTzli?=
 =?utf-8?B?d1dzcW9qeitVMnhBOE5sUk5vSnBsQ1krMVNKcmNoWE9KMkJCanZrWEo3TVVk?=
 =?utf-8?B?RWw3ZTRtRUEvaGVJYjNsQWFKT3ErS2o3ZFNmak5GblJua0Q3QUFrZGJNZGdm?=
 =?utf-8?B?cnpYSFExc1RqS3g5bXEwckZTQ0prNUt0dzZJOHZUa0lVM2JFM3hNTElwbVdh?=
 =?utf-8?B?Q0ovOGZiRG53N0NZaHJOOGlEa0tWbzNQb1VUdDJEeGtvcXRLMG1GbE85c1VN?=
 =?utf-8?B?OUJjcUhqUmhqUlJHaGI5OWIydGJMcXREZWtITnc4d2NDV01VWmFZRnRGcHRj?=
 =?utf-8?B?RFRyK1JSdHgvWnM1SzBqdThsM2F1akpLMmNmMDQ2dmFYczJ1aVM0RlR6RW9G?=
 =?utf-8?B?bmliWnR6STVHd0hCamtWb0FhdmhFaHhVK0xvYlNDa2lyY3pHcW80ZkErV2dL?=
 =?utf-8?B?N1pjSTg1MXdsSy9RYXhFWWRrQU9jcmhGbzlRa04xMmdseGwxbTFCS3VucE1E?=
 =?utf-8?B?L2VqWWcwdzRCTHg2S1hRNzNKWStHK0gzcEFvZVpyR0ozOEk1RXlYTGE4Sk1B?=
 =?utf-8?B?dnBPdHpPSTdlOTBRR3NiRFF6akl6Vm9mSjliSzJKZGtoSmZ4bUJ6NVlWL2VJ?=
 =?utf-8?B?MlJCZVR3NWJRWGJucUdrZzVHcGQvdFpBUFZUMU5qWHoxeTNVR21saXFDM0xQ?=
 =?utf-8?B?aDdBNTVDVUxyVkllc0hVa0dka1VWTGk2eU5nUmZFL2g1b3ZKNFdWK3hRLzR2?=
 =?utf-8?B?UlJqK3AvUXVYSGZhaHllRFFPdUsyY1loKy9SeVB4dmFncnpNeTZTUkFGM2J5?=
 =?utf-8?B?Vk54VDlQRU5ucGNqaWY3UXVsbjlJSHZySGhqUFl6Q3IyT3BWTjBUNCtLa1dL?=
 =?utf-8?B?WEd3NlRTd1RSYUpuVkttem5DZVQ2djZCNGx2dEN2ZUZHcVdXT25aeFc3MDdp?=
 =?utf-8?B?VllVc0J6UTRlaEJLT25lOGdjZnpHTkcvL1cvR3hiNkpZVEU3N1dNV0hWbllM?=
 =?utf-8?B?Z09HQzhtVlRBWGdiNVIyb3podkpVVkFLTHpKV1RTaE81YkZ2UjdTR09qUzM1?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cbf1ad1-0967-44ff-f32d-08dd67831f47
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2025 07:45:02.3307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Gef5/cOxKGOb59STbtBi2OdDvc9hDgtPre//0jSri/cbwb94KmfIO9YEpI6lQGK6bFu2i2dEBit1/C0a04S5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
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


On 19-03-2025 16:42, Anirban, Sk wrote:
>
>
> On 19-03-2025 12:40, Poosa, Karthik wrote:
>>
>> On 10-03-2025 20:58, Sk Anirban wrote:
>>> From: Badal Nilawar <badal.nilawar@intel.com>
>>>
>>> The Forcewake timeout issue has been observed on Gen 12.0 and above.
>>> To address this, disable Render Power-Gating (RPG) during live 
>>> self-tests
>>> for these generations. The temporary workaround 'drm/i915/mtl: do not
>>> enable render power-gating on MTL' disables RPG globally, which is
>>> unnecessary since the issues were only seen during self-tests.
>>>
>>> v2: take runtime pm wakeref
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
>>> Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render 
>>> power-gating on MTL")
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Andi Shyti <andi.shyti@intel.com>
>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 
>>> ++++---------------
>>>   .../gpu/drm/i915/selftests/i915_selftest.c    | 18 ++++++++++++++++++
>>>   2 files changed, 22 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c 
>>> b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> index 9378d5901c49..9ca42589da4d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> @@ -117,21 +117,10 @@ static void gen11_rc6_enable(struct intel_rc6 
>>> *rc6)
>>>               GEN6_RC_CTL_RC6_ENABLE |
>>>               GEN6_RC_CTL_EI_MODE(1);
>>>   -    /*
>>> -     * BSpec 52698 - Render powergating must be off.
>>> -     * FIXME BSpec is outdated, disabling powergating for MTL is just
>>> -     * temporary wa and should be removed after fixing real cause
>>> -     * of forcewake timeouts.
>>> -     */
>>> -    if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
>>> -        pg_enable =
>>> -            GEN9_MEDIA_PG_ENABLE |
>>> -            GEN11_MEDIA_SAMPLER_PG_ENABLE;
>>> -    else
>>> -        pg_enable =
>>> -            GEN9_RENDER_PG_ENABLE |
>>> -            GEN9_MEDIA_PG_ENABLE |
>>> -            GEN11_MEDIA_SAMPLER_PG_ENABLE;
>>> +    pg_enable =
>>> +        GEN9_RENDER_PG_ENABLE |
>>> +        GEN9_MEDIA_PG_ENABLE |
>>> +        GEN11_MEDIA_SAMPLER_PG_ENABLE;
>>>         if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
>>>           for (i = 0; i < I915_MAX_VCS; i++)
>>> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c 
>>> b/drivers/gpu/drm/i915/selftests/i915_selftest.c
>>> index fee76c1d2f45..889281819c5b 100644
>>> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
>>> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
>>> @@ -23,7 +23,9 @@
>>>     #include <linux/random.h>
>>>   +#include "gt/intel_gt.h"
>>>   #include "gt/intel_gt_pm.h"
>>> +#include "gt/intel_gt_regs.h"
>>>   #include "gt/uc/intel_gsc_fw.h"
>>>     #include "i915_driver.h"
>>> @@ -253,11 +255,27 @@ int i915_mock_selftests(void)
>>>   int i915_live_selftests(struct pci_dev *pdev)
>>>   {
>>>       struct drm_i915_private *i915 = pdev_to_i915(pdev);
>>> +    struct intel_uncore *uncore = &i915->uncore;
>>>       int err;
>>> +    u32 pg_enable;
>>> +    intel_wakeref_t wakeref;
>>>         if (!i915_selftest.live)
>>>           return 0;
>>>   +    /*
>>> +     * FIXME Disable render powergating, this is temporary wa and 
>>> should be removed
>>> +     * after fixing real cause of forcewake timeouts.
>>> +     */
>>> +    with_intel_runtime_pm(uncore->rpm, wakeref) {
>>> +        if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 00), 
>>> IP_VER(12, 74))) {
>>> +            pg_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
>>> +            if (pg_enable & GEN9_RENDER_PG_ENABLE)
>>> +                intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
>>> +                              pg_enable & ~GEN9_RENDER_PG_ENABLE);
>>> +        }
>>> +    }
>>> +
>>
>> Hi Anirban,
>>
>> where does PG enable happening after selftests complete ?
> Hi Karthik,
> After the self-test, a Driver-FLR call is made to reset the GPU and 
> display components, and this call originates from the DRM subsystem.
> Here is the call trace:
> [  +0.000002]  intel_uncore_fini_mmio+0x8a/0x200 [i915]
> [  +0.000272]  drm_managed_release+0xa9/0x170
> [  +0.000008]  devm_drm_dev_init_release+0x69/0x90
> [  +0.000005]  devm_action_release+0x12/0x30
> [  +0.000004]  release_nodes+0x54/0x90
> [  +0.000005]  devres_release_all+0x9b/0xe0
> [  +0.000007]  device_unbind_cleanup+0x12/0x80
> [  +0.000005]  really_probe+0x1c5/0x3b0
> [  +0.000005]  __driver_probe_device+0x8a/0x180
> [  +0.000004]  driver_probe_device+0x23/0xd0
> [  +0.000004]  __driver_attach+0x113/0x230
>
> Thanks,
> Anirban
>
LGTM then.
Reviewed-by: Karthik Poosa <karthik.poosa@intel.com>

>>>       __wait_gsc_proxy_completed(i915);
>>>       __wait_gsc_huc_load_completed(i915);
>
