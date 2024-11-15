Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48249CDA40
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 09:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689CB10E3B3;
	Fri, 15 Nov 2024 08:10:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/6sfeKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6066C10E3B1;
 Fri, 15 Nov 2024 08:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731658245; x=1763194245;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xtS79OnDm3QiAZmOhhVe6nlOn099hHT0RlYPsntCYAI=;
 b=L/6sfeKXlvEHmupzbecM3DS/RkouSbvHL+CePqGYE93vRQSNDtIxHl7O
 qxIdSsoxNZTVrRz1DXtZiRqmVIyhwEkuzZd91/6rbGcME+AE24MX35dD+
 2l3Vn9WNr+v7aQym4ugx30u9TzUQeKrMaBxUzTsdvBcuUzfHhbSs/f94L
 6KnXdYoayXbZW26wytGkQruzf8yRfhr6AHDJyn2AGsTh0oWhIS80YgO61
 l1rAmjzMVLQ9MgvFRj+PyZ3QAsZ0F4O+9HfG3TsXxSusNNDqNqigik3sw
 gQ0q5VS6HW7oFwiUBtnzDsI8FGDW5VupOnM8RqU+uoOvsxFwivAU4/8bE g==;
X-CSE-ConnectionGUID: 9qXIqI66T9KhWVc6Yvo0LA==
X-CSE-MsgGUID: yUxMc4PVQt+vYaku0MzrmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="19265786"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="19265786"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 00:10:43 -0800
X-CSE-ConnectionGUID: uuCoWGghT/6gREkYP1KMLg==
X-CSE-MsgGUID: MevnfvQjT7maxMYbA83LSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="88889556"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 00:10:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 00:10:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 00:10:29 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 00:10:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xmxJJ7OrfUPF24u5vtaM+tjdA43jl48VK0uE75E0t0Cw0rsyQyUEdv5L6fR7G1mGvE00MFnvzwH48/ZY/aqoJVHaLUzNVGnZ72/6nmA/y97V4/+ZDMqEM82+bzgYByEd2eLKK3FfH+yIurv14N88QDTPsHHlxWTvfRwVED0gJVielNVEw4TgTZFoj72vmgncKTKxEa0iXb5TSEHviWpA9ugvbPtdGonnKzOqJTdy9FUkvh6Bf42ALgSkdGXg/+ABQLHh2JiqAXVixXaDlMx0Sy1Yc/7TCJJM/3zFQNnXyo+G3LGzxGSYV//bBdKRYr4rwvFA7jU9kyJoPb5Y7lhbjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPWvkY60yI5wzWP/Jrn7Yux3l6+UuphyZnCSBS6JhDg=;
 b=txbFn4G6WYEy2zVcBEhe/xhKIGIoK+mlqprud7hJFj6FVV2zy+dM5mY9Nxcy8M+FmLCa7iBjq2ZZuNKwUJ8aRyLFbCBZPa/bYZGLZk3VhdeVttG3RTutXVu9mMbjIuGA3aRYSzy3STzGdjwziU7/sbsW6+Kzb1NDqaQVde5a3Czde64I8OG/IY/rWECoQ/wKDTlcnvjdLqh+gbmOyvfS+u4vY/fmHXA1dJrNd3Z6an0K/erO6fV9/GxE+21sw7O24XrAHVyji8Ah9Er3JBntueEsd16TIt8Eo9sUIrP8Bswy9auKGk5g9R1MjLxlpUA1FUK1O3rZWlwOxBKjUQzrrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Fri, 15 Nov
 2024 08:10:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 08:10:26 +0000
Message-ID: <6ac692c9-6ef1-42c2-a154-45fe82e07b80@intel.com>
Date: Fri, 15 Nov 2024 13:40:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] drm/i915/dp: Use HAS_DSC macro in
 intel_dp_dsc_max_src_input_bpc
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@linux.intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-2-ankit.k.nautiyal@intel.com>
 <ZxD_fiyWKZTO5f_3@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZxD_fiyWKZTO5f_3@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8509:EE_
X-MS-Office365-Filtering-Correlation-Id: 68f4ce12-4a9f-43ac-ca4a-08dd054cf64a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmJacTNPdm14YVhTdDhJcmVzK1ZsYldzT0lFOGcwY1pJcDVxbWVHOEpiaTd5?=
 =?utf-8?B?bEdGRE4reWh0bjh1M2xRSTNqTXMvdVAzb2lHWlUvNlVKbFd4dWFnSVVYMGQx?=
 =?utf-8?B?ZDRhb2hVVHdhWGdJa0ZVK21Wd283QlBRM01aem5ZM0c2SktGaEl0d3JNNE11?=
 =?utf-8?B?ZVNNTHlxNCtmTjdPcjdWWkVML3B2Y0dFQlltc0ZtLzVmNVFpMXNtZ0R4MEhm?=
 =?utf-8?B?WklPWmV1Z3JKYk5PdnptOVdkblQrOHJMbFgvTUkxK3VvVEdXbU1zcG9JVnVC?=
 =?utf-8?B?dEIzaDJtbFdDelBmY3pwelFCc3Z5Ny9mb09ZYWladVk0YzFTdjlhWVpwQ2pK?=
 =?utf-8?B?VFpFWHM3YVRTakgyNGcyRVZ6bzhqaW52M0hTSnVZTElYakFkQUxVcVFGc2kx?=
 =?utf-8?B?eG85RWFnZkJYejV0Q2QwMnhFYlZyOTVJVHhCb1FSQVQ4aXRwYWNtRW9PNWk1?=
 =?utf-8?B?YjFJbUFqZS9KRDMyM0JCeG83Q1NpcXhuMitjVlpnZlhvTEw3emFIS1pkdkFJ?=
 =?utf-8?B?a0FIRkE2bmxoRkQvbE9uNkJCazZwSE5oaTZCY2lhVE9RT3JIZ0F2NjNxUGpS?=
 =?utf-8?B?dkFTQkx2VXVOMGU5bEtxNUZyY0VpbUhEbk5XOWkrbFUwWVlvbktka1RiRW9M?=
 =?utf-8?B?OVpXTllUc0JCZ2pSZkNlTDFGRFZSdlZTQWlFRmdNa3IyNWRFaC9rOWV1elBL?=
 =?utf-8?B?TEh1L1JQZ2JuWG1pUFZKMGg1dUQxNlRSV1hjR1hLNXQ4RU5NQ2NZaWVCTVcr?=
 =?utf-8?B?ZUI2enRMQ2R0NHVXcDE2aHpaUTFybDVUWW9LR1prL2h1dS94MnZhbWlrY3B6?=
 =?utf-8?B?Y0pCMjArb2ptZ05aQ2piUVZOVFhmajBBNWpRMmZaVndzVGU2K2R4RlBFYXNj?=
 =?utf-8?B?WE5vaUQzejJpSU1KNS9XaGpvR3BwUXN1Rk1UVGhWRE1rcEJnWlhWN0NoT3ht?=
 =?utf-8?B?V1NPWEdJbERzNnVNREsyemlxbTl2dEUwWnVHc3czR1dNNXJ2VkQxY3pZTWc5?=
 =?utf-8?B?RGhxc042ai9EZ3lRSUVVRXFEME9xd2JDVHUxQStud0F0Mm5QOUs3NHBxak5R?=
 =?utf-8?B?NG5ENUE0dldIdDErN2F5dGJ2YUdPRzdtUThCM3VvOVFxRld2VllpME5XdE5r?=
 =?utf-8?B?dzlhaGxadEpSeXhQRWVmRk9ybEZMQW5zOEJpdkk4OHl0NERnZFZxQ0I5QUw1?=
 =?utf-8?B?dnRpYUI4UFNJcVc1MHpTK2hKZkcyKzRiUG9mM2lwbXg0MTkxN0xEZTNUVjNi?=
 =?utf-8?B?V0hrejRCSytrVTIzMlY0RzV4Mk5OTFVmdmVURUN6WFdKUG9UeUtGbkR4S2dL?=
 =?utf-8?B?OCs1NXhXcFRJbmJjRXZMYkJONUFrR2tCeUNHRlU2WmpSMGhZT0RrVERScER1?=
 =?utf-8?B?aXMxRUYvNEJyOHUrOGtLcGUySjZydFQ3T3ZxTFdSV1hkRVYvMm5KZ1MzR0ZW?=
 =?utf-8?B?ajFNOHlESysxK25aclU2N3o4VE1SS0VOdjIycGQ2UnVleWFSSnJkU2tlZmxk?=
 =?utf-8?B?L2VlVitrbi9JUWtIM0FVVFh0MnFCNGg2bjFjaUhZNXdMQkZGVVV1VEQrNjFU?=
 =?utf-8?B?U3cydTFMWC9BQk5wQVlITmVSMzJIdVdyYy9EZjc0aC9EazRabjYxQU1sOEUr?=
 =?utf-8?B?SmV3Witjenh1MUx1S2hyNnc5YXZRdUpkbWs1R2crQlRaMmc1bExIWmx4dWVH?=
 =?utf-8?B?NkdCdDlVL0ZmZ1FKZW41UHlkbjZ3UXNJVS9wUlBOclVlbTdWOGpMSnRUQTBy?=
 =?utf-8?Q?rUYL6DcOVrSffPkK7Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QklGYXA4YUM5MXErK1EvS0NsTmdIcGhqRWkycTc2WE9MU3pXSzlycW1pUlRh?=
 =?utf-8?B?UXlPaDBaZ09VNXIzOW5ReHJDNWVkMXpCQTUrQnZEYnphV2F2NHpDYWNoeCtG?=
 =?utf-8?B?NTgzT21Lb0ZJZ05uVjE5UmIyMVhCY3c1aGk2dlZ5UkZXNG9wQnRGQ3lsUlJY?=
 =?utf-8?B?akR6V09NYVhsZGZOOUdwTzI5VWNSRGUrcWd5ZmdQYjB5b0hOVWt3Y05OMGNJ?=
 =?utf-8?B?czlGYTlQQnlkZkx2QTQzQ0hjYWR3ZG4wODdnSzZPUXNOQ200Q3Q3UjNuUmdu?=
 =?utf-8?B?OWFwMmFBN0g5S095MTd4U20yallPMmdwQlB1YnVtWm5ScUhaR2ZCbGc2NVF0?=
 =?utf-8?B?alllOWZJS3N4WmR4bXZtdURIR1hSRzllRzRLRDBOaW9EdVcyNXp2dVg2ZkQv?=
 =?utf-8?B?R2ZJY3VjbjhCcGp2Q1VPUFd2MUo1RkozOHFyTmo3c1NGeEszeDlQWUhoOGxX?=
 =?utf-8?B?MFZVTEVXYWxqQkl6ZEk0WEhxaTY1YVd5djJ6MmVjb0ZiSk15MmRNMUFSK3JQ?=
 =?utf-8?B?UmIreHVGdElEeGlUK2E2SXBZRG1HK05QYkVTa1dKUS9oYkxUVnVkNG91ZGdp?=
 =?utf-8?B?eXdXS0VIRzNlOXVGUzc1T2JmbTJMT0xlYThUYmpiUEdrZksxdXFIVVFXR2ds?=
 =?utf-8?B?MnYwVTdQR2hqREFlVEpJZEJGNUNjZUtJWGIzVis1RzV5UlZOUWIweHpoSEpI?=
 =?utf-8?B?anY2Nkw0WmErbGVhNG9NZXBiRnBtbFlYZUhCRVEvNkZ5NXNCYVhmT2RSNlpD?=
 =?utf-8?B?ZWRVaTRTWFpzU08xWGtCa3g4Z25DbDRnNHR1UndCdXB3ZlF0cVdVZkNPTEJJ?=
 =?utf-8?B?MU9YMVlLVks1WnZaQVprSUR2ckJ1TGx5SnRwdUE4VmZZeDd6Z013NkxQMjh0?=
 =?utf-8?B?V0dYUjJQM3liNzV2OExBUVhxSmdBUjFTRE5VTml6YWIra2cwQ2pCMnNvaDJ6?=
 =?utf-8?B?dnNIYkNTV0dqT2dYdzZtRlFmTmNaazdqS2hnNndCZUx4aWZOQWlBK29jQnpw?=
 =?utf-8?B?eGtzbSs5WXlrZk9FYTIvOFBmUnlrMURZTi9HZkNqMnB4OE92WFNvWS9QWW5S?=
 =?utf-8?B?cmNQb0FyUWg2Y3dOQVRFMzRsdGR6dXhuL0prdnc1TFVvYmlWNlBFUlRnUzJk?=
 =?utf-8?B?NHk2QVNTaklsUnV2WU9qcnhBQUxSaThWekVheDJNeVlMemtWcWlMN0pERFFo?=
 =?utf-8?B?dDdONHdBUGxoaVhhVFRBRkN3Qm5MOTBYMldwMmtla3c0OW80eEx5bzBTZUxV?=
 =?utf-8?B?MzJGTW8yR1NkSmxyL0ZRSWFQa0I1N0FFYlhDcjRWK0JhSHRkRDcwYTZBZ1lh?=
 =?utf-8?B?YVJIZ2hhOXM5eDlEWkJCSm9oZDA1dE16QXBlMHE5eXRXdy9kL0NGemM1ZHIx?=
 =?utf-8?B?ak5JQ1VRaDJoMFJWQlBaYlUzRkhXam1CRXFqbFk3dnNiRUFybUFiclI1L0g2?=
 =?utf-8?B?ck5XVzFmSERBN3dPWTlRZDNRb3UwV1o3czVaaHFpdEZCYURzUHVJdm02a2V5?=
 =?utf-8?B?SUZQTXBHWmwyVXl1VTBUMFlDL3o1UEFrRVBQVDZ6K0pVREFNZzVnZDRGd0FY?=
 =?utf-8?B?R2xYT3J5TFRkZk9OTTRVaHkrSXJSMzZaUXJGdnNNNmQvQjFRdUFVdnUxaTl3?=
 =?utf-8?B?RU1iREd2Zm5wemp3N1NxUkdYMkxGS1hUUFdZTmlVMXJkWmY2MVhISklTRTZP?=
 =?utf-8?B?NHlPSCtIQnpuVXpyU0dXb2lOTnJncG1wbmErcnFoNHYwdDNsR1I0RGgxcmhR?=
 =?utf-8?B?U1hwd2xwc01TcXJGR1lJYUErR2gxT2VBdGtYdEdUYXovVHZMMmtacVpsUkZK?=
 =?utf-8?B?MzRIREVTOFZBZ2JmUm40eU5zWWttR3NzQzlzZ3l0TUQzem5uZE5BRjNvdzd6?=
 =?utf-8?B?UzdvMEF5ditsZGU5allPUU96eER1Um44cWlnUUxlQkNGWEdaUlFBc1lPY2hK?=
 =?utf-8?B?U25pa0xMd25wWkx3ckpCcENOVXhIbEg2Rk1BUnJFYTU4R1JraG95T2N3NUVD?=
 =?utf-8?B?NWcwbEtpKzRRRkxNWDJ1aWk1TS8wZ0UxUnZndVlsVzRzVXAwbHBpQmlJZVF5?=
 =?utf-8?B?QklFTk5WeGZmcm1GNHU3KzluZThwZ0FTek94VSs2NkYxbWtnclpSR25iQzcv?=
 =?utf-8?B?WFFOTjFKZk5uV3VtMkU0MUJYSUR3WG1qbWFjMzkrZ0xpYnZDOTd5VVF2ZStj?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f4ce12-4a9f-43ac-ca4a-08dd054cf64a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 08:10:26.7557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IulremmsoitJ5uQDgMWyiNJdGSOX63MJMgR4wEHISNZyKGHksFWi/kBiUfLvUqBXlbVKZu6pIKPuPXiyALb8v9xJtVaguHhwPkfUhmHdGcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
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


On 10/17/2024 5:43 PM, Imre Deak wrote:
> On Thu, Oct 03, 2024 at 04:13:37PM +0530, Ankit Nautiyal wrote:
>> Use HAS_DSC macro to take into account platforms for which DSC is fused.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c4fdae5097ec..c47748905506 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1766,6 +1766,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   static
>>   u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>>   {
>> +	if (!HAS_DSC(i915))
> This is checked already earlier via intel_dp_has_dsc(), couldn't we rely
> on that instead of checking it in these lower level functions?

Sorry for replying late to this.

You are right currently we already check this long before calling this 
function.

However I am intending to use this in 
intel_dp_compute_config_link_bpp_limits which is earlier than the check 
for DSC, for that perhaps need to add a check before computing link bpp 
limits for DSC.

In any case we can avoid the HAS_DSC() check here and in corresponding 
min helper too.

Regards,

Ankit

>
>> +		return 0;
>> +
>>   	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>>   	if (DISPLAY_VER(i915) >= 12)
>>   		return 12;
>> -- 
>> 2.45.2
>>
