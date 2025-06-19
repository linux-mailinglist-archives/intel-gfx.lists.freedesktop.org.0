Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A34ADFBE8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 05:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B328510E0CB;
	Thu, 19 Jun 2025 03:35:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j3ixr8ZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4FA10E0CB;
 Thu, 19 Jun 2025 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750304122; x=1781840122;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wD8WUwlntNNVuAaMiZciM6ZH3DXBDUHQr2nM50Q4BIs=;
 b=j3ixr8ZGOLGMD5omuanbMnGqiRaUE+ZX21SjyBrHiX0QGMItSi7jIafN
 xPQqKC1JO2RLRorrwFlksU0jgcPgG6dvtb2xLGPPZx039uUMOU7ZNQf5B
 YURmPYX2eXnK7JVUGZNdXPGKhOc/XTmiZO/2HHFmOE3iu7G7ngAigoFzh
 /lg5jHclnKMrRXN3ppteU4kz1He/+j78WeUuS2H+sXJCPqyeL7inqEDvM
 0Scx+x+o4cUemFkKRbNkgdxVvqGjcU4d99+/y+9+geJl7GG6ePJPTTr2t
 8xY0QA58Hz9Br5t+4GgxQuzCsqY1nSrlPnOa1CATqPJJS6woVdrmGeFgD g==;
X-CSE-ConnectionGUID: YQSgQxk6TvCB7IUTKf0iyQ==
X-CSE-MsgGUID: 3NqiGOSHTMeiv65hwU3CDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52629387"
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="52629387"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 20:35:17 -0700
X-CSE-ConnectionGUID: +DDK2g0TScKxuhUA+TvM0g==
X-CSE-MsgGUID: 4zjkbZ4qT7OvDbpmjUCAnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="151067945"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 20:35:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 20:35:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 20:35:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.89)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 20:35:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qQcxMFx/Z4Yii6LtwePCkK0tDctHRTaX+ZMMV1eqD5AYS9I7KyHP/rzDpENufW1MrN9UABQKQ5vw71oJuOy9yu3gMDoFP/0r08JVfGi2HRDQGuyZz+AHx6ptuXoMV6hHwyJKReU/lEKNG93XOtFYP8cN+GTziyaO9YbJjU1YT0jAsq6SboteJAswtG1+lT49KMUd2RgQTjuzlLrHNmPh4q3YqMCo4TebBG4FjEDHmNR54AsSay2xapd9llNMLE2ScwJ0r72WrczWavX3NM3Wgyh2nR7ww6t55COawDIiydvN3sfSSIKb/1HmTdDIAsKglA3lZoax/00QOzpo7WzkKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q7gU9NJl67jA48c418MMSICs4E2wUnE1VOAlUyAIA98=;
 b=SRwCB1TSyBmVjtvxbYwtuDazJfasImvNZw2KsT132KhJGI1T2kR9NcA+0HC6BbIa6h3gDd7yH6F4iM5/33IaRN2t/5Av7iztwWDS/4TahGJgTOC1R0w+CPKMjmfmXAjNaSUzLT7o/USFrSR+GGBT8Khty2aiHZSxazTrdc3Uxwzge0BY3lwBzeaxRgZNtGjU0vB2YKPfb1YADrXFLmcL8jawUfQbohH5eZxwqGJCN50YXgdXez2lMpGMUCb+Wp/bQK7LOVQC4nv/OTc+x9tEgLr5gsc6do/DV1A8CrH+UDFU5mV12UzRbMcXn2Fg0YaEgCL/wDWu1XnQz7hhfmFuAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4535.namprd11.prod.outlook.com (2603:10b6:208:24e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Thu, 19 Jun
 2025 03:35:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8857.016; Thu, 19 Jun 2025
 03:35:14 +0000
Message-ID: <a00c5db7-9c13-4dfa-8dd7-f41d3709abcf@intel.com>
Date: Thu, 19 Jun 2025 09:05:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: fix register file style
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
References: <20250618155137.1651865-1-jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250618155137.1651865-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SYAPR01CA0005.ausprd01.prod.outlook.com (2603:10c6:1::17)
 To DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4535:EE_
X-MS-Office365-Filtering-Correlation-Id: 76f58967-9158-499e-a7d3-08ddaee24d62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnBTZTdhMUdtVVhNUlN6TlB2U2NaV2tuaVE5ZnptU3pNMUt6ZlpnMUxPclBH?=
 =?utf-8?B?NWQ3Vkx1WEhWemlkcThoOHFxZDIzbkVERzFYZTgvdHIwM2ZJb0ZoK2tjYVdU?=
 =?utf-8?B?MmFuaHEranNHVUs4K3RwRUUyR2hZNndIZWlERTY0d0JucmMwZFB5MmdPMkwz?=
 =?utf-8?B?OFIzdzlScXUyMFRzcWJzZTdYU1V2U0VtSUFYMHY1bml5S1MxYUpHU2JUS2hk?=
 =?utf-8?B?L3hYekEvOVhBbkg2N3BMNEdFV04wbXhLL2k3ZDEyeHA4Z0wvOUtvaThPTW9W?=
 =?utf-8?B?UzdTOFJEV2dhcU5ndmthMXUvSWdxdS8wcWtsZmE1RWwxNXVRK25UOGdvbnBH?=
 =?utf-8?B?Q3N5T3ZxWUdEWXhWUWhjRXFiNDBrRk9BSVhVZ29nOFR4Sk56SmhQalBLYm85?=
 =?utf-8?B?aWxSRGxhMzJSR1NYNnIvSEpzcUJwdkpCdXZuWEgwbG9hbXpLUlpTWlhZb3NE?=
 =?utf-8?B?dk9jcUpON2dxb0pEZVNZd3gzQzNWZHhoUmgxWlkyUlJJbWxZeUJPZ1A0bkRu?=
 =?utf-8?B?ZWpvVHY5UmJoWTJ0ejRjU0JUbkFjUEpGVWNMZ1V4Q0xlUFoxWk5tYk1UQlhw?=
 =?utf-8?B?YlJyVzhZai93aENKVWlpcDNxT241Z29rbmh5eVF0NkpSS0ZwWEp2VDJuR0N3?=
 =?utf-8?B?a3N5c3VlUGMzdWI5RitjcHZDUG5za3U2aEJKYTFFSWY4RzVnRDVJQ281NzZz?=
 =?utf-8?B?RlE4Q2lpa0xRSjZGVlpOaWZ1U1NrRFZLR0MzN2N5TVJYSlVZaVNwZlhyczVM?=
 =?utf-8?B?MDY1czlXZ2hDTTJvbklMcnZQMW02MXBnYmpDRDNTSC80eit2R1dDbXpoNnJ6?=
 =?utf-8?B?MzJrc2pYWUlrZHcxVkNsR1dUTDYxN2cyRWlLVkhtQkUzV3hBY0ZRNVA3WmpU?=
 =?utf-8?B?Ni9ubklPTHBJRGdNQ0tHK0ZIaXVCNFg2cUtoa2dJZDl3ZEI3bjI2VXkzUnBN?=
 =?utf-8?B?V0JnM0NLTDJYTUFWRzV0ODlyMnp6eGY1WlE2RlVvTHJZU0NiU21WdXJBOEU2?=
 =?utf-8?B?RWREb1A5eG03Y2U2SXBCU0xKQ3owb3YrclAvSDI3bDdKamxPZ2RRUVBMdWlS?=
 =?utf-8?B?aTI3NzBKYkNjdXdpdzQyWldrdXNPSW8vdDRGYm9CRGhiNW9pYTJyT2ZBUHh6?=
 =?utf-8?B?ZWFMcHB5bGJhbzNxOThEQWwyaEVSK1FkNWNCcmV2bDVTNjljRUx4WWpObW55?=
 =?utf-8?B?UGJhVHljQk9naFJsVHdzZFRLNmxrREdoZUlVZGh3aXg3NDE5Uko4Y3krOTJv?=
 =?utf-8?B?bTZVOVZlSmFRcXlWTTNzV2xmbE52UEZ0ZHB1cEJNVTBCazcxQjlpalBqKy90?=
 =?utf-8?B?WndUYlZmVWNMUSsrMDZOSGxpSGROT0ozMEFYNVNDZ2JHdk5XbjEvcFFDeWMr?=
 =?utf-8?B?NHVyUDRtK3MxMTQ1bDJzOWR3eUZhQi8wUGx4WWZCZWJzc3VwWkVSWjNnYjJj?=
 =?utf-8?B?WXpKRjZVWmxJMlBJekdHTkY0Tjdhd3Z3VTZybk9vREpTUGg3VE95TXpJSmhk?=
 =?utf-8?B?YUVteDRKQktqTHRIblFoek0xdDU4ejVuVXVOc2Exa1FoanZwL1pZTndWU1Vk?=
 =?utf-8?B?Mk9sOWR5U1A2cTdNNlZrakZpYWNhL2pUZ1JMdEJUZllSL3ZlcHR5czZLYmF4?=
 =?utf-8?B?elpuK1NnMTArUElqTXNTaWQ3dG5IN1I0WTZFdEppanFKSVBKdEhRZVpnWUNK?=
 =?utf-8?B?a0orckpkWERNT3R4VEJHTDVBY0R0Zk1xSXJUc2IyYkFrWXRiSXUxZ3dFc0lT?=
 =?utf-8?B?ZGFaVHZOaGs5eGJvSllUOVVoUmtsQUlhSEdwQVVmNzNRa285b3ZEUGZaUFRr?=
 =?utf-8?B?Tnk1Y0xSYUd6SGE2elgvdTUzTmV3d3FHdy9pOXlHaDVWMmlFbjB0QjE2MmV1?=
 =?utf-8?B?QjBaQzM3MDk5MzFrQk5IMjRTeFFoLzlFVWc5eDJsZ08vZ2xIN2NPQ25Nb24r?=
 =?utf-8?Q?LFteUnC7tWs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am14L29LVUMyVnFyL2dlZ200SzZtT3VlR0g2MC9QZGhQanN2OXF5TVk1RDN0?=
 =?utf-8?B?elZUQjMxbHExclBwSWh6dFBvTDVzL0ZjK08wTFp6blRBOTdLNi9lOUxEWUs5?=
 =?utf-8?B?Q1pPYUpodnZIVXA4Uk94ZkwvaVBIWXdOK1NNQTVxSkdhUFFudUFXU0UrMlgr?=
 =?utf-8?B?akdXVlpwM0lBQnpVS2VBL2Q0eEdzQ2FXMFRHcHZuS3VOT0lXSUFJYXpzcita?=
 =?utf-8?B?M01qdGdpL3F1ajlFd0xjdWdhaUd5ZTQ0empYVzNBbnpSVTZXcFd4SDUvdzQz?=
 =?utf-8?B?dEs5aWVwS29ETWhoRVlYUUxEUzBETHo0OGI3UUt6NUxxdHVQbmx5b1VZTTh6?=
 =?utf-8?B?eW44Mzk5Mnh2d3Q0Zk42N2N3MWVJN2g1OEJvOWU1dUg2eVpmcGNrNjBHeEZK?=
 =?utf-8?B?U1FrWlBTMFhXMDFiUms0NksxbVdCaExUb2xUc1NRSnc5aTU1bmxNa1NLcDJ0?=
 =?utf-8?B?dnZ4cjRKdEd5QkRiWHdVa3hVdlo2K0pHNGJJOXFCODVkSWJGL1NwZzdiOWpi?=
 =?utf-8?B?NFZHR0J0bnNkc05tc3JtWWFOMFF5NTZwcmMwN0JOYytSSDhLVno1SkVDYTN6?=
 =?utf-8?B?emVwM292eWl6dk11Q2lTK1gvQnpEUUxTdlhsc1VJSUNNWFV4V0JoQWVXTnRS?=
 =?utf-8?B?VDJrSU51ajJvdG5QWHgrNFBPVVE1djZWUG84eEo4T2FoTEJ0MU5DbEhVZk84?=
 =?utf-8?B?VmV5ZTllNzY3bm5VdkNXTW05ZWNuVTVOQkRCVzYzV1FaNVpUZWZFeVJuTDgy?=
 =?utf-8?B?UFRXdHlQMmFPOUpZNFZLM2w0bUZZdWc5RTVRNFEyM3RUemVRUC82Q05veEdl?=
 =?utf-8?B?Y01qekU4aXFyY1pWczRJRXRqeXBJWVpCZW5iWmp3bUVtQzhOaUtIaVk0eGMy?=
 =?utf-8?B?YlVQcHlWbEx4bkpvZURTb2JWd2dPVmpJdHFLcGcraU1LYmJBUlR5M0xNSjNC?=
 =?utf-8?B?ci9TMEJicDRXUjRhTVl0eVE0Tk81K3Y0b2krWlNDdXRzWHdPUHc5VWRYY00z?=
 =?utf-8?B?L3gzbXVrUTBlbmVRUlpiaTlVNmEwK2ZRSWJVeVBTVGwwcnJxMlFzZGFiOXpW?=
 =?utf-8?B?T2dYWXlndFF1WU5YQW03dy9sYWljcDMvVzJPK1FWaGhSY1N4bk1lVGlRY2FD?=
 =?utf-8?B?RnVtLytEdFFab1loby9jckEvVHhWUzVhWTlHMXNVMkJ1eDVpUGxKSzZ1YjAz?=
 =?utf-8?B?OEhWcWxCUDdNMDFXVmxQMXlJNU05MEZxSmZmK1o5cFptYXFSMXlqM1NrOFBK?=
 =?utf-8?B?T0huRmJBcHBseExvYTE5TzVzaG1tRFlMRFNEeHJuZ0orUGhhOWpQNmVJNnho?=
 =?utf-8?B?S0pjZTJKYWpsT0I5YUNEUHE5bXZrSE9VKzA3VkxqbTNzOHhid1ZrbmxLZ1R3?=
 =?utf-8?B?V0QzNkx2NG9OSXVZNHd6NnNsM1Zpd2tLQjhrMCtmMURySzRrdll4SGFmVXJs?=
 =?utf-8?B?V0Jleld6ODMwMDJDd25BSS9JMGl5WGJlVHF1dHBJdjhvYXY1VTNPNVI0WC9I?=
 =?utf-8?B?WTBOZVlYV3hoUWdmckk5Qi9VVDdNcTJER2VZRjh2Sno3NThaUm5qKzAxMXVO?=
 =?utf-8?B?SG01d0pzM3p0cDNtVFUvcWN2eUxEMSs1b3BtTExCSEdsdVFxbGtERVNrcTNR?=
 =?utf-8?B?Zm1WTHJVc2NvYkhNYXpyZEZSVzlpVHd3WVp0VjVsT3NFd2VyVFAzVTZmbFBp?=
 =?utf-8?B?MzNkUWdxT3VDZGFxRUh3OG1MdnVvWVRyMWlVRTE2WnlKMHQrNHlkTytSd215?=
 =?utf-8?B?ejFaYytyMmN0Tzl6amJITXJjN0hJRmVPQXFKcjNFWS85S2NHb1NJY3ZCMzR2?=
 =?utf-8?B?c1RaOUJ3bmMvbUNNQUNoVzB3Z2NvSjF3VmlMSnh1cmZOcVp2TTZhVHFDY2p3?=
 =?utf-8?B?MnZHQ0pRRHNFRnlmM2dwdi9oZWliMW91MUdjYkx1THBYNXFoYmIvMzh0R3Bj?=
 =?utf-8?B?ejMrVDIydHBOeStZN1dqR29BdzBRREF6RTlSY3BaOGgxNmY1M29qTEYxT0xB?=
 =?utf-8?B?UStXNWROMHA0amFrcGl5Qi9GR292OXdFY1JxZzZvWXlIQk5NbkdtbHdZNWZn?=
 =?utf-8?B?SVgrRXJncFM5ZHhjUUhkeDR1QWN2RTl2WEdJZllPdHh4ZFJhcGVjemtQb2hx?=
 =?utf-8?B?ZWRMa3BDb3pIdVVkNHI0dlZvZ3ZEUkthNEFuUHBkS25HU0NPd0JhbzhGU0hW?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76f58967-9158-499e-a7d3-08ddaee24d62
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 03:35:14.4617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gNFs8JDYMX21d4AEmVavkQezxBhEbBwiipXBWclXpKBzOb0qoWCFotMlA1KiJhffL1R5XVOYEy91VyiwkGYZbAlDRMxqBe9Ltx5m40ncBeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4535
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


On 6/18/2025 9:21 PM, Jani Nikula wrote:
> Fix indents, use of spaces vs. tabs, grouping, remove superfluous
> comments, remove some line continuations, wrap macro arguments in
> parens, rename dev_priv to display. This is the way.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> ---
>
> Should be easy to review by applying and using:
>
> $ git show --color-words
> ---
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 121 +++++++++---------
>   1 file changed, 57 insertions(+), 64 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 09cdd50d6187..ba9b9215dc11 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -8,126 +8,119 @@
>   
>   #include "intel_display_reg_defs.h"
>   
> -/* VRR registers */
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
>   #define _TRANS_VRR_CTL_D			0x63420
> -#define TRANS_VRR_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
> -#define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
> -#define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> -#define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> -#define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> -#define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> -#define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> -#define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> -#define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
> +#define TRANS_VRR_CTL(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_CTL_A)
> +#define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
> +#define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> +#define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
> +#define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> +#define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> +#define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> +#define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> +#define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
>   
>   #define _TRANS_VRR_VMAX_A			0x60424
>   #define _TRANS_VRR_VMAX_B			0x61424
>   #define _TRANS_VRR_VMAX_C			0x62424
>   #define _TRANS_VRR_VMAX_D			0x63424
> -#define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
> -#define  VRR_VMAX_MASK				REG_GENMASK(19, 0)
> +#define TRANS_VRR_VMAX(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VMAX_A)
> +#define   VRR_VMAX_MASK				REG_GENMASK(19, 0)
>   
>   #define _TRANS_VRR_VMIN_A			0x60434
>   #define _TRANS_VRR_VMIN_B			0x61434
>   #define _TRANS_VRR_VMIN_C			0x62434
>   #define _TRANS_VRR_VMIN_D			0x63434
> -#define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
> -#define  VRR_VMIN_MASK				REG_GENMASK(15, 0)
> +#define TRANS_VRR_VMIN(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VMIN_A)
> +#define   VRR_VMIN_MASK				REG_GENMASK(15, 0)
>   
>   #define _TRANS_VRR_VMAXSHIFT_A			0x60428
>   #define _TRANS_VRR_VMAXSHIFT_B			0x61428
>   #define _TRANS_VRR_VMAXSHIFT_C			0x62428
>   #define _TRANS_VRR_VMAXSHIFT_D			0x63428
> -#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -						_TRANS_VRR_VMAXSHIFT_A)
> -#define  VRR_VMAXSHIFT_DEC_MASK			REG_GENMASK(29, 16)
> -#define  VRR_VMAXSHIFT_DEC			REG_BIT(16)
> -#define  VRR_VMAXSHIFT_INC_MASK			REG_GENMASK(12, 0)
> +#define TRANS_VRR_VMAXSHIFT(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_VMAXSHIFT_A)
> +#define   VRR_VMAXSHIFT_DEC_MASK		REG_GENMASK(29, 16)
> +#define   VRR_VMAXSHIFT_DEC			REG_BIT(16)
> +#define   VRR_VMAXSHIFT_INC_MASK		REG_GENMASK(12, 0)
>   
>   #define _TRANS_VRR_STATUS_A			0x6042c
>   #define _TRANS_VRR_STATUS_B			0x6142c
>   #define _TRANS_VRR_STATUS_C			0x6242c
>   #define _TRANS_VRR_STATUS_D			0x6342c
> -#define TRANS_VRR_STATUS(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
> -#define  VRR_STATUS_VMAX_REACHED		REG_BIT(31)
> -#define  VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
> -#define  VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
> -#define  VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
> -#define  VRR_STATUS_VRR_EN_LIVE			REG_BIT(27)
> -#define  VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
> -#define  VRR_STATUS_VBLANK_MASK			REG_GENMASK(22, 20)
> -#define  STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
> -#define  STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
> -#define  STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
> -#define  STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
> -#define  STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
> -#define  STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
> -#define  STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
> +#define TRANS_VRR_STATUS(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_STATUS_A)
> +#define   VRR_STATUS_VMAX_REACHED		REG_BIT(31)
> +#define   VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
> +#define   VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
> +#define   VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
> +#define   VRR_STATUS_VRR_EN_LIVE		REG_BIT(27)
> +#define   VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
> +#define   VRR_STATUS_VBLANK_MASK		REG_GENMASK(22, 20)
> +#define   STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
> +#define   STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
> +#define   STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
> +#define   STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
> +#define   STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
> +#define   STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
> +#define   STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
>   
>   #define _TRANS_VRR_VTOTAL_PREV_A		0x60480
>   #define _TRANS_VRR_VTOTAL_PREV_B		0x61480
>   #define _TRANS_VRR_VTOTAL_PREV_C		0x62480
>   #define _TRANS_VRR_VTOTAL_PREV_D		0x63480
> -#define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -						_TRANS_VRR_VTOTAL_PREV_A)
> -#define  VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
> -#define  VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
> -#define  VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
> -#define  VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
> +#define TRANS_VRR_VTOTAL_PREV(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_VTOTAL_PREV_A)
> +#define   VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
> +#define   VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
> +#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
> +#define   VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
>   
>   #define _TRANS_VRR_FLIPLINE_A			0x60438
>   #define _TRANS_VRR_FLIPLINE_B			0x61438
>   #define _TRANS_VRR_FLIPLINE_C			0x62438
>   #define _TRANS_VRR_FLIPLINE_D			0x63438
> -#define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -						_TRANS_VRR_FLIPLINE_A)
> -#define  VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define TRANS_VRR_FLIPLINE(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_FLIPLINE_A)
> +#define   VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
>   
>   #define _TRANS_VRR_STATUS2_A			0x6043c
>   #define _TRANS_VRR_STATUS2_B			0x6143c
>   #define _TRANS_VRR_STATUS2_C			0x6243c
>   #define _TRANS_VRR_STATUS2_D			0x6343c
> -#define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
> -#define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
> +#define TRANS_VRR_STATUS2(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_STATUS2_A)
> +#define   VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
>   
>   #define _TRANS_PUSH_A				0x60a70
>   #define _TRANS_PUSH_B				0x61a70
>   #define _TRANS_PUSH_C				0x62a70
>   #define _TRANS_PUSH_D				0x63a70
> -#define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
> -#define  TRANS_PUSH_EN				REG_BIT(31)
> -#define  TRANS_PUSH_SEND			REG_BIT(30)
> +#define TRANS_PUSH(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_PUSH_A)
> +#define   TRANS_PUSH_EN				REG_BIT(31)
> +#define   TRANS_PUSH_SEND			REG_BIT(30)
>   
>   #define _TRANS_VRR_VSYNC_A			0x60078
> -#define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
> -#define VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
> -#define VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> -#define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
> -#define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
> +#define TRANS_VRR_VSYNC(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VSYNC_A)
> +#define   VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
> +#define   VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> +#define   VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
> +#define   VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>   
>   /* Common register for HDMI EMP and DP AS SDP */
>   #define _EMP_AS_SDP_TL_A			0x60204
> -#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
> -#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
> -#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
> -
> -/*CMRR Registers*/
> +#define EMP_AS_SDP_TL(display, trans)		_MMIO_TRANS2((display), (trans), _EMP_AS_SDP_TL_A)
> +#define   EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
> +#define   EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
>   
>   #define _TRANS_CMRR_M_LO_A			0x604F0
> -#define TRANS_CMRR_M_LO(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
> +#define TRANS_CMRR_M_LO(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_M_LO_A)
>   
>   #define _TRANS_CMRR_M_HI_A			0x604F4
> -#define TRANS_CMRR_M_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
> +#define TRANS_CMRR_M_HI(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_M_HI_A)
>   
>   #define _TRANS_CMRR_N_LO_A			0x604F8
> -#define TRANS_CMRR_N_LO(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
> +#define TRANS_CMRR_N_LO(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_N_LO_A)
>   
>   #define _TRANS_CMRR_N_HI_A			0x604FC
> -#define TRANS_CMRR_N_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
> -
> -#define VRR_CTL_CMRR_ENABLE			REG_BIT(27)
> +#define TRANS_CMRR_N_HI(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_N_HI_A)
>   
>   #endif /* __INTEL_VRR_REGS__ */
