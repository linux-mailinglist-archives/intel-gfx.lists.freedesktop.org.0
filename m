Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D2DB49120
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 16:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E46410E540;
	Mon,  8 Sep 2025 14:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eK5r2RaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D3E10E542;
 Mon,  8 Sep 2025 14:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757341208; x=1788877208;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RM+wy5zSigWSYNRL1GCrb+K7mPr9vqSg5cQUSzn2Fqg=;
 b=eK5r2RaY+3lzGUhb4x0SordidhblHOOMx1xgyRI4nGpDBoKtn+VrGAxw
 8fD61CCxYqe9M/chK290nIuPPZrra41BE0p+iHfduIF8/5AtkLe1905md
 DB1UJtiR3wL8uXIzsC1Ke7/TTeCs2L5YGq9jwLXmBlosexhXLmiHkJ8uj
 3KKP1CuLlKlRK8mnbSBo2K3FdS+oEDgbryF89K1J/6v9++eWVl9BFyda6
 J5/J13oEjcEk3VKuZ3fprKje+7qPJUshFqn9RgN2RYcitciuTmn4AScOv
 XKXGWwiv1eYnZCYDFc5l9M8dUx7PJ5lCtA0KIw2C4UETw/oba6YVmlMAD A==;
X-CSE-ConnectionGUID: GuyidvqMTX+eZTqDbSXy4w==
X-CSE-MsgGUID: bnyAieGYQNGsXG3DkEMO3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63428006"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63428006"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:20:08 -0700
X-CSE-ConnectionGUID: MrMtqTaUS5OWIXujfIlDVA==
X-CSE-MsgGUID: GYZXAnfmRueLmLqjp3DmmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="178011431"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:20:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 07:20:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 07:20:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 07:20:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mXbHBn47q7rKVXUnel8Auxj/y0ULKshm3xK5kMICQ5FAFkfzE2FqrugMaoB8yK/oVAnJBSNISc6YXk2BvthA0RgPY0LyAMw734+a4nv3Nqa0avvX2C5mQHOfoMi2nzVw3UulWjv1dZANAGFW8GE8QB905qmO4CIiV56vzjAyVXz2KtuA4yT2Na0RPOBzXdlyzy94PgmXE8VxbFxPvGazbpm7OfBSdekiMFv4r33R0cEuPTNLA+7W2H6sgLlapka5Q8wu5//tn2WBH+zVznxgQadJZ9eTglQTmXvZGq44OzK5HDTK9rs+4lVF1GWIf1LaidyuQ6fj33KvsMyq8RW6ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qfv9/Os5TuZYIbdnjBN6uWhZ/7FqH5Y74++SCC5u758=;
 b=BB4lVmgOppFIZ22SwyDnfJSouPI0tmaLJLF4h2Q/YB4xOw4FnxpE7s6iEQlNIM2/Zmr1gnFoifa6xLzhiVzeMWxj/VZO6cxRVJXIigSOj942TSZFp2N8eFbxJv1dHDn7RJ9nx1zFalmLkM4ZAtEIU5F5cSk0vdNLJA6rfLyspVQ7UXiiFY2aAVuKu6X8bkIoi+2ANnEWh8jCrPCav8tOd9tNhdHx+WtRghbzBm+691+GVCEY40VyTlwiy72mKgQROxOmK60HAm4PcbG1LTkmVOosOE6YXO81F0TPgJMs/2AggEZFM4Do5JAdU4Is/jFtfHPCU0Tp3T0klp+GKAlKaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ5PPF183C9380E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::815) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 14:19:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9094.021; Mon, 8 Sep 2025
 14:19:54 +0000
Date: Mon, 8 Sep 2025 09:19:50 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Maarten
 Lankhorst" <dev@lankhorst.se>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
X-ClientProxiedBy: SJ0PR05CA0169.namprd05.prod.outlook.com
 (2603:10b6:a03:339::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ5PPF183C9380E:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f23bc94-bd20-41d7-f9c2-08ddeee2c7a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?i8vmerGChh+C2HosZmyDj0Pwb3OlOD6WmcSwMZwYVxnZBtaAa2mrFKAgDh?=
 =?iso-8859-1?Q?D7ezbjGeGy8Hy/6NtrgW1EdnIfqQx56MEJdcg3rhYVUqpnHiLFtzQRVAmd?=
 =?iso-8859-1?Q?+C/9sJsgNm6PciK4E19i6oPZIJLdFawBEZx4DY0qWESG2qoMmgiGFlmq4g?=
 =?iso-8859-1?Q?FE9sarRKSoB2kcmG6QUdBQTJOlb8r0vM6oEfnbEFZ+U0y/UXaOIGdza21e?=
 =?iso-8859-1?Q?yCwmTgKTocLP2L969n05CD3mUsvGRL1hqnsYM1P15MhBCbAzQpg18wQ+6V?=
 =?iso-8859-1?Q?21eXl0KBkspN2QRitGKZ6jtXoxbGEHxVEIeDA5f4GonuR0twda25qQZUgb?=
 =?iso-8859-1?Q?IASSAbDVM/Ja67Fk4mZQYtAtCbyDqHhv+PDzEeweJ/+ImbxnVUBOu5GkYP?=
 =?iso-8859-1?Q?bTg4KwcYhzuUmXoyKksq0155C6nvysUtvMEy7aIZsz43T6UZgRz3trjHb/?=
 =?iso-8859-1?Q?eTFLcviGu+HXOVrdB8Q4vire7T1cvN1/TN4xuGJvgx7+LfdD+e+d/mx6j8?=
 =?iso-8859-1?Q?fAqk7Yl84dIUXOUQ6qLWdQJTbPSo9VinjNmzKwdWRRDb+BFB8m322DxuR1?=
 =?iso-8859-1?Q?rgp9HA/LECagk0M3RxhnQ5O3XGOvI3LzorDpfzDjG2+YAroFQOcdXfT//7?=
 =?iso-8859-1?Q?UWUPfqPpa5709LvH8rA0WSk8Mv8HEYnB7ui6u2ZZGhgprdYEADMWSeIGtA?=
 =?iso-8859-1?Q?6d4W8BVntAke793e5Dshv39ByFXBQiTCgMadv4UhyUzoXhxT22B8rlm3wv?=
 =?iso-8859-1?Q?16LtbLE20bblnHknu0CwYfNd+Y4E313mMYicByTdkSxx3aqsGRi6o1bv0/?=
 =?iso-8859-1?Q?ozwc/T6/uX564XqnqELbznqX7McgHJACblmfDBDbB9AgYqQlrOItlNupEs?=
 =?iso-8859-1?Q?FZsMeJyS1n025VWZmttgdQeYKzQujYyUFu5uzeEL0MxUzGaxfTKumLdgvX?=
 =?iso-8859-1?Q?1Ezaw4/YqqxrzlLlzJKqTnyoVk3WN7s1OQ/QsO6sVkhctmoHSjS0TCWx0n?=
 =?iso-8859-1?Q?AvGxTK2vm9tzBeHHfgKPPdaNA6eG5BPHNT4tjyxXWg9PIVJilGuJToThUh?=
 =?iso-8859-1?Q?ZSD0lOb8oKDYptWls+JtBC4ACTuqhp94viixWaEdEBz//ih+hs88aUSRHD?=
 =?iso-8859-1?Q?/aI9XToeqFM92uzvRh2CcUNKSl+P5QZKCdnbS3fxWFSExaPFuvNpTI3NSZ?=
 =?iso-8859-1?Q?X1FzTNJeG4P8pMelcmFbZk9JEJqMN8bDA6fE/V5rJlzARD/PiyiUvpoN2n?=
 =?iso-8859-1?Q?yneGpE6YaBatULwelOSqiQikn4DaqsesnnzZ0Fet+c8iHl+aUGf1uG0BlC?=
 =?iso-8859-1?Q?Em+tHqf6rIgCYaeWLrA8aVlYt+5TgmzplF/3auecwf4svwhPpR7hRSI45e?=
 =?iso-8859-1?Q?8wFbCDHJ+Cnefk1Q1lTisuD0g95K4dmh2QGrTip8l5ZgOtuHmsa9wppEiJ?=
 =?iso-8859-1?Q?yjX6VkmblhfOgyjcs+cC3o1PzObpRc8DwB+ZepVnUN3QrW+ZNeeVLcpaS5?=
 =?iso-8859-1?Q?w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?aciGwM1V7uo+qh213I2RNwfsbUMgEyqWnssnKYpksdfN7k3vg5qNhtbXQN?=
 =?iso-8859-1?Q?hbFzc4gctWVRjZWMPcqXKV5t1OGsGy5/p3DWVAwH8Bf50cQTT9ChpnsZe7?=
 =?iso-8859-1?Q?kcQo1rEyiHgHJl4BLjSWAiaUBjjVHSLFyw3UfhA4S6S8pJtOOkg5Zp18/+?=
 =?iso-8859-1?Q?sFLwaYSIzVZ0VtfmzAIRHFoBskuiBoU48coOW2NHP/wgss8AxqmZvc8ONG?=
 =?iso-8859-1?Q?RpAfEZoRMUzba8jwJAoBcuLQluPbm2fAVqsh3VT58eGxYRSlNXR4L6MGtK?=
 =?iso-8859-1?Q?MBRPwDAs8r/XGbumxuKOzjcJ0EhTLcWlRcSQffHw1TOlJAMvwvUI2OU8YD?=
 =?iso-8859-1?Q?xlIsA9KPkstV5RSyvL7fn/mqoRVeVltE/PVdzBAc1lZgxmkNAqjuL8FZVg?=
 =?iso-8859-1?Q?UDH4GTOEWF3wVCAtP92h3jpKEir29Vpvs04Tgy5H7OYD9pT5c8eZNsucvl?=
 =?iso-8859-1?Q?EeN9SRXq6Spimcr6ggom2iMYMxecRvhlSyhE4Y3LAhk8nJ/2FfC5FTtPjD?=
 =?iso-8859-1?Q?dRKcDv3atCsnDS3Uzeky9ODGUsK1SiELVLrxW0hUCFmWM+4DTQoeOBvi9k?=
 =?iso-8859-1?Q?okh9eZCuIzLQxIj9T6sIPisOu7Er3+3lq77DUMvhv92hmYMFDTEjZ2ZP7T?=
 =?iso-8859-1?Q?BdT8GyHyvaUm0rNXEc09TXbHxMsEy0spfLVR/0jr6m4xMW/Q89yszu83UX?=
 =?iso-8859-1?Q?Rnm9EtpZYyaqeTFV6nW1YVjcrqJ8QLttETdwq3T6pF6hvRVS0CzUS5vfCq?=
 =?iso-8859-1?Q?ZM6oohIgs8fjl2oKi9eE2+gcgzMTQzhfuYz9s0woG0XwXWEgHzru1CPhdQ?=
 =?iso-8859-1?Q?HP0G8swrFeOedzu5FqwCIenngozjh2ttk2YdDG8Fi2Ts39C96KRNS2XuO3?=
 =?iso-8859-1?Q?5U9fLqSX/gv3pYWVf/Qn+/3aSbJSFXJGCPFnl6JzNA/hIeD5P0GOTf9n/F?=
 =?iso-8859-1?Q?aTX3XI6CVCeM40fuCnoxKg94aWBoBVjw1m1IvNndPXnPu2A1Ts3tTvjxtM?=
 =?iso-8859-1?Q?tvfTWTKxi2LioZoyvMv8wPlnSPV61/GL0IZcCCOojwPmJYKEUaemhZA/ox?=
 =?iso-8859-1?Q?fwVUx4Ihp0SAzxxcsGE2T3mraSt2IucxIoixp0Jpi7r5MQyYnuY2rXYybg?=
 =?iso-8859-1?Q?zvNAwY2XNvJmEIufTozKmikR/IYjIrCbiHLrpOkM0PwHTY+aXaaerVc8vi?=
 =?iso-8859-1?Q?Q6ZkBwOx10/KCX8Z1kGR/T6UlpUyTJS/ocE3DBlANeQ3l0DJLhRhRxZMFH?=
 =?iso-8859-1?Q?1D5xaBhasNsT6Saz0JNGwXcpMQ3ITSs9DFMWtoriTt75iRua+iAH8OW+tI?=
 =?iso-8859-1?Q?yQ6pSFW50WMG0hoazJ636w4I6NPmasKnmnnLdzU4LaNQ6UNMN0O3x2Y+WF?=
 =?iso-8859-1?Q?1UhlxELkFduiOwnFwh5UuD410IGHbFgkiAvV3qJfd2Cvj7X2/cdUkzofu2?=
 =?iso-8859-1?Q?GKO6af1V57n1kEFl8ONOxr1gGGwB/74QIS85VkKPw/TvbcyH35vkQBxihp?=
 =?iso-8859-1?Q?O0PjCNfN+Sb6l2+yEUpgNuHx3S4Wmbt0wzebPxTersUwQ+unviR4bgkQBm?=
 =?iso-8859-1?Q?2jnFnrvmpDgw2DKFZq1aBj4OqH2aOgOofKXy/BjN/nYkXpze0inZKpGWwL?=
 =?iso-8859-1?Q?CYuBYPE1cYIHfRybV+43QNwN1mF4oJ3IiCcGBvuD0jhkp2jVxHnD0+2w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f23bc94-bd20-41d7-f9c2-08ddeee2c7a5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 14:19:53.9012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i8aRoq7AoCU6AEkHTDc1BjMiZ2duOOCLAL/nzShHvCb8qmypzKGgDNraGlJ2j/eb8SfAf5as3Fu5RkNVRo2uhD6j7+ObOpm2Gyzjie3jE84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF183C9380E
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

On Mon, Sep 08, 2025 at 03:55:18PM +0300, Jani Nikula wrote:
>On Fri, 05 Sep 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> On Wed, Sep 03, 2025 at 11:31:59PM +0300, Jani Nikula wrote:
>>> Add new helper intel_fbdev_fb_pitch_align() in preparation for further
>>> refactoring. The alignment is different for i915 and xe.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 8 ++++++--
>>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
>>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 8 ++++++--
>>>  3 files changed, 15 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>>> index 9c557917d781..d1c03d7b9bdc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>>> @@ -13,6 +13,11 @@
>>>  #include "intel_fb.h"
>>>  #include "intel_fbdev_fb.h"
>>>
>>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
>>> +{
>>> +	return ALIGN(stride, 64);
>>> +}
>>> +
>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>  					       struct drm_fb_helper_surface_size *sizes)
>>>  {
>>> @@ -30,8 +35,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>  	mode_cmd.width = sizes->surface_width;
>>>  	mode_cmd.height = sizes->surface_height;
>>>
>>> -	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
>>> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
>>> +	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
>>>  	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>>>  							  sizes->surface_depth);
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>>> index 668ae355f5e5..caeb543d5efc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>>> @@ -6,6 +6,8 @@
>>>  #ifndef __INTEL_FBDEV_FB_H__
>>>  #define __INTEL_FBDEV_FB_H__
>>>
>>> +#include <linux/types.h>
>>> +
>>>  struct drm_device;
>>>  struct drm_fb_helper_surface_size;
>>>  struct drm_gem_object;
>>> @@ -13,6 +15,7 @@ struct fb_info;
>>>  struct i915_vma;
>>>  struct intel_display;
>>>
>>> +u32 intel_fbdev_fb_pitch_align(u32 stride);
>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>  					       struct drm_fb_helper_surface_size *sizes);
>>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>>> index bafca1059a40..fd2c40020eea 100644
>>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>>> @@ -15,6 +15,11 @@
>>>
>>>  #include <generated/xe_wa_oob.h>
>>>
>>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
>>> +{
>>> +	return ALIGN(stride, XE_PAGE_SIZE);
>>
>> I think someone needs to explain what the heck this extra alignment
>> is trying to achieve? I suspect it just needs to get nuked.
>
>That would indeed be great, and allow even further cleanup. I'm just
>trying to find the common parts here, and not so much dig into every
>little detail that differs.
>
>I did git blame this while writing the patch, and it's all in the big xe
>driver enabling commit. I'm not sure where it comes from.
>
>Cc: Maarten, any ideas?

It doesn't help much, but https://lore.kernel.org/intel-xe/20231114110056.2423853-5-jouni.hogander@intel.com/
was the first time this align got added.

Adding some people to Cc.

Lucas De Marchi


>
>BR,
>Jani.
>
>>
>>> +}
>>> +
>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>  					       struct drm_fb_helper_surface_size *sizes)
>>>  {
>>> @@ -31,8 +36,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>  	mode_cmd.width = sizes->surface_width;
>>>  	mode_cmd.height = sizes->surface_height;
>>>
>>> -	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
>>> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), XE_PAGE_SIZE);
>>> +	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
>>>  	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>>>  							  sizes->surface_depth);
>>>
>>> --
>>> 2.47.2
>
>-- 
>Jani Nikula, Intel
