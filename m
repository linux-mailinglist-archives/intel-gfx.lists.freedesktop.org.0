Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F4EAF6A5F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 08:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F2E610E7C5;
	Thu,  3 Jul 2025 06:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WcUIM7M2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA04C10E149;
 Thu,  3 Jul 2025 06:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751524416; x=1783060416;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FvMgmzKtle7NiyIycWIqZpMcrvzdxroHnjgcviuN2U4=;
 b=WcUIM7M2qjmikdUUwVwYQDs/wq2JytKdtvU1u+UnaiCuzCoxhJ7e6arN
 cywD6ul26rcFhNBRqc8HFybTOLwIklNU1eaTnIuj6wTQUvsheLg6e6iYk
 rC93Nn28OBUaHBbOLNted4XuAxQaLAqPSTaFtYFUIXDeCcLAHnLMCMhyg
 B8Kq+b3RBScTvI0H2Zv3pc8fC7LVM/YmrpHrRHmb2JficehfKCkmsUFt7
 YObiey9b1D4izI6gPtp9WEhdPi7RfCtXysplo3OZdtoGsFBAKnitKbkQ2
 c8iRnpw+kYP+ugTBjDxSwuEx8p9crtqIYDySl4KPg6uqaWAGXN5jSOnUc g==;
X-CSE-ConnectionGUID: oy8OEWp6TAy4JB0QbZ5mBA==
X-CSE-MsgGUID: 3yPa9BjsRMGfRLJtXCnDAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53702299"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="53702299"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 23:33:35 -0700
X-CSE-ConnectionGUID: FqFcMti5TUW7Ryh3vs5YIg==
X-CSE-MsgGUID: T/Qc4xIGSDiWotRXnp9kjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="158326731"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 23:33:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 23:33:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 23:33:34 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.74) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 23:33:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eN8erkIPf/VJie6o4C5gupSWxf6wE5mIocv7kxRtuC/OCbWgJba6snIJtKGEr2Az0yRtwLx1ISYcRX+rR3MeBRfEfP93IeV+pxZiXouv5MQWYa4tEGsK/Kpi0neBmQq4pJJ9fCDjymlVJf2wCY7pwRwfWHn7dWh01SLm4RmxuKmMGEc63DpGAsm2Owp2O6ZrYb7E4C28+ht+33EakFE2iF/xuxbDc8JWeHq47XgtNLJRFEQ5Yr8BQnKM8IWLA6qWqpk9TPXEF9svSSlSfSIy5t+2x+QVW1whB5WylK5WaXjGziIu5MHUyyBS+hvfja7OTZ7pIk2hb24oG2sR6Y2cpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qhVMNLHR3boHGBdEY1Rb1dD2ZUPSOtouCu0pIwy+YA4=;
 b=YSpAyTZxyQoP7rJkvAcBk/Sef7Y+aTwOCoNpdfj/r56F+MLhvqkS92nuVk7Ny4uNrfVYgn7TNRIuzfFtzT5KHVUfH8UM7iL6owkJk0uSxcHzYh1+OJn3LeDyrZV0WzesoJav2fzqG3jhX7JjOlDdiXsd7LoJYYR8PqRhb9yW8EKSLA/cf32dbMe/WigZwaiCmY7K+CJOYTwM4BNK+dGwlLJAvcaxm1f+/uqcKlUuvd+AVIxV3FlUk5mAKSEXTqWpIf1fAwISCbfeyT/SqWZokrIBIIkDbDRAIGJDakpQ3YiYBb47HlzhBaAIMAond1q0mS4xS5a0LAnQX22OIq69Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7673.namprd11.prod.outlook.com (2603:10b6:610:126::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.34; Thu, 3 Jul
 2025 06:33:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.030; Thu, 3 Jul 2025
 06:33:31 +0000
Message-ID: <845de1c6-d2ae-4550-86f6-3fd9fbc7bb62@intel.com>
Date: Thu, 3 Jul 2025 12:03:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Add upper limit check for pixel clock
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Borah, 
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
References: <20250702042754.3335382-1-chaitanya.kumar.borah@intel.com>
 <d3b2de8c5eac5e1214cc35609a78cdff32c0afa1@intel.com>
 <SJ1PR11MB61290B4DE08CCB4DC32F71F1B940A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <aGWHanRhse9y2MjV@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aGWHanRhse9y2MjV@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7673:EE_
X-MS-Office365-Filtering-Correlation-Id: c0445559-f66d-4e2c-0011-08ddb9fb872e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUlBRHZyUVFZUXh2TG56L2ZJU1Z2UjJnZzVxeDcvazdsYmpva1NQNUg4bTdh?=
 =?utf-8?B?R3NQQ3RQTHZDNnZaeTJzT1FWcjhpOFNHaklubUpkM0xwM0dQTmd6eDJYcDNn?=
 =?utf-8?B?am1UQ3FjOWI2aDR1SElWSFRaVlpXQjFqNDBsMFVFOWRVeXhuaVVqRFdEaFNu?=
 =?utf-8?B?MkUwbXozRis2V3NIdlNna3ozQmpSYW0ycjFsVjFaODVNUWtXRk1Nb2QwWGVU?=
 =?utf-8?B?WE11bURWQXN4TDF5ZkhDenB1cXllRXE4b2FJaWxnanhUNzdpM2lEMmw5bnZw?=
 =?utf-8?B?UnhNSnpRbGFJck5wN1hvOWJpdzRDMHNoRXA3MDl5bnk5dVdZb2JXeTJuNHF2?=
 =?utf-8?B?aUlNeXoyQXNGMHlSeC82dWRzTkdSTjRKYjBUVlcxRG40WHQxWTdNbzQzSHJ4?=
 =?utf-8?B?N1NHRXhwSXlrNFhiYWdNb2FNZXR4WlVmZEdOVk1wcTRlTnR4a0pQZHJTNEFm?=
 =?utf-8?B?alBjbFdjb2k1VW1EWWE3ZE1HZHVZeEQvcFJWc0RDMUwzajhDbmNJdGRXZVM3?=
 =?utf-8?B?UnVnUnlDOHRvTWpHSlN5bHNMRzJJMVZEQnhnbGRtVWZLTDF1QlkxSE9mZkZa?=
 =?utf-8?B?RDFKT1Y4UmVJdC9kbjQwTnhiNW9tNytkMFdHWFZHUGpEMVVTc20wd2crQ0k5?=
 =?utf-8?B?TnhlR3ZWRDVwcFVaRGxRd29YRHpaME5UVmFYVW5XUnFySjRUdzNySWlrME1C?=
 =?utf-8?B?VnUzUkx6UUZZOXd1ekJYaFFMR0hnL2hpTmFTUWtTSEVCZGh6ZzJyMzlqZHha?=
 =?utf-8?B?WTh5V3hIVzFNQ01xVUErd0VvMmYwb3Iwb3hZeTNMSXdVSUNxYmhHZlNLOFpo?=
 =?utf-8?B?UlNlaDkxMHJFR0hTdEN0czUxaTJwVVN1YUJ2a0VQNWZ0aEF1UXBFTEhpN2Vh?=
 =?utf-8?B?Qk0zQ09ROWhUM2lXUmtha0UxbWhQbEpOVVMyNmxwLy92bmMrc0NLb3dGNDdC?=
 =?utf-8?B?Q3ZlcitUUm9lVWI0b3BpR1FVMWZrR0orNDAwQXBja1pUZEs3VVRvSCtjdlVX?=
 =?utf-8?B?dTU4bzJabStVTUs3RG1rMkNHdW5wWVFKNXBZcDdXc2l4dE4xMU5TVG1aWDEw?=
 =?utf-8?B?TlNnanR2VzFtVHdWdUJNZ2tDK2VYMDBSUkRxdklhL2ZpZDk2SkcxaEVwSS9Z?=
 =?utf-8?B?SEpkTGpBbWNjZVNWQzRCOGNheXBQSkhqODV0MlBNS3JLREJOUDBCdC93VWZk?=
 =?utf-8?B?VlZmUnRwa0tuUWpWVVVlV3l6WjIrUkdxc09jK3pFOXZYYTdrN3ZYcU1KTFVt?=
 =?utf-8?B?MmJpdUEzcjZTd20yVUdTNjlyMHFDM00zRWV4SnVicnduMFNDOWZISmdLWUFw?=
 =?utf-8?B?bVFpKy9vN0NXUUs5aVBmNmpDcWg3c1EwdnFaejBJM0Y4Sjc2UlYrSTlBcGo5?=
 =?utf-8?B?VlVHa1ZjNjFMZnBuY3RzWkZFR1hWV3EvSVRyTWZEakpVTGNtVG1BSnRPdzV2?=
 =?utf-8?B?NFF1aTRQMVFHbzVuVC9PalRyeFBZQnZJTFZKZVFPV1grRFlpTWZNc3A1YWo4?=
 =?utf-8?B?MXRUVGJXTTlXcWVuOVNCMTNNeEZsUjZ6N3A5ZW12bDZ3NlpYNzJ3eFdzRmVC?=
 =?utf-8?B?YnZ1VkZaRnREUnNWWnZBNWI5QlhKQ3M2Q1R3WHkwNm4wcUF4czVLWkR0L1lU?=
 =?utf-8?B?RVdpZjlOYTRteEVWT2wyWjIrcGp0Nml4NDRDd0F3WE9ub1VNM3VwNFUzeDZS?=
 =?utf-8?B?M3pqWkladGJiSzlXVzBmazg4bWY1NS9OeXZFM05ZclNJd1F2aVNpTEhUZmNW?=
 =?utf-8?B?RElSdHdEQ01aSkVod20xcEZOa2FnZGJtQ1M2M0xhU0JsS2hnZGJsRGNCVnBj?=
 =?utf-8?Q?jjAXkNjek0yW6HQDcXqxdt2ypuDVdOAWlnWRM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0k5TTZlczA2TUcxSlNaaXgyeU0zVDN2TGxkckRYOFpUVE5CRmwrNWp2V2ZN?=
 =?utf-8?B?UG5JejcxTUwxQmJkRm5lRjE3bkh1Q2w1K3RKYnZrQnYveTdhbWhONmFtK0JU?=
 =?utf-8?B?M0x4ZmxCeE5YdlJUU292RE11cXY1Y3Q0eGx6MzZRMXhOWTVocVV2ZHFvd0ZV?=
 =?utf-8?B?ZDZMbGY1N0hsd3FoNjFhWE15THRkMVlyZGd2VlNoQ2lsLzZLTGRKN284Y0NR?=
 =?utf-8?B?dHZOR05XcUlCNnVXVkExcngvTG5ZcE1JcmhFaVh4RUpHcU1DdkU0dTZQbVBH?=
 =?utf-8?B?ZWYweU9vOWYxNm8rdEVSUHV1dVp0NGNxMUJWMVNncDNwT25iYVQ0MWYwZ3g4?=
 =?utf-8?B?TFpoYkVLbTRxRWZZL3lGdWhSVDFYYmhrMGdxNXgwUGUvaFR3dUV6Szlia21k?=
 =?utf-8?B?NmRGRzhwQlM0bzhHN3o4aytwN3YyZjl2YzFYN2NMZy9qcFBZMisrcEpGaDg3?=
 =?utf-8?B?aHRUL29IZEwyV2l5cDJrdHhrdkExamdmOGtzRk1UcTNyaldZS3FoZ2RMZ0R3?=
 =?utf-8?B?Ui85YUh6ekpoWERhbFdsMkNnUzladGtId1RncGdQc1VIOWUrTndWTUdzcWp6?=
 =?utf-8?B?c3JONU9EY0c2Z2swcDFkbEZ3SjA5Q3hjSnZDVG5MZnlNaXhFNWZ2bUM0TEsy?=
 =?utf-8?B?aGNGbkMxbUJUYXZIT3lPN2hza2hSbFhzY2lBWEdEYWhXMlZXY3J2ME5uZVZS?=
 =?utf-8?B?UkRDS1dHNUNaSG1YakgzTUNXRUlCOVFRZmtCY1QxSnUwTlhJK0FhZ1V5TGZX?=
 =?utf-8?B?UUplLzBCWDlWZ2ZJWFMwRlhFdXJqcE5iMGNPTkl6Qzk5aTdxd2l2UDR4VURD?=
 =?utf-8?B?cU1CelZza3RlVFZCakhENncyRHJFVEQ1UEhVVnFuWDRiY1FuaHlNanE3UVdv?=
 =?utf-8?B?NHE5akNYYTRBYlFreUloU2FtTVg1ZDR6dmNhdjdwNGtVNnA3dlBlWVZ6YVJq?=
 =?utf-8?B?eUtaek5zMkZsSlU0eFZ6OTNlWmVBbmVTVm1zVVNyb2xhQVBJZ21rNm5SMmxw?=
 =?utf-8?B?QjFIcTNVSytJOXU5eUJueVBzRVVNbUZ2SFJhczlsUzZGaXEvQVl2UVNFdjZJ?=
 =?utf-8?B?R0xxc3V0aHFZVEl4UGhhTmY5aVFsSm4rQTN2YVQrOGR2V241UXFIREVjNU1o?=
 =?utf-8?B?SUw2TVZ3OFBibnNPN0VxelFENHVzZ3hCQmptc0JnN3A3S0tDL3pSZlZuVW5y?=
 =?utf-8?B?OGVVOTFrbjhEWHVGTVFHbWdldlBKU1lrdWVwdkVtcnhDMmYwSE45RXRlRW1j?=
 =?utf-8?B?dUdrWjJxRWw1K204N255OURhVkM0NjAyN2VoV1d0eFQ0M1ZHZ1V5bTR3N0lr?=
 =?utf-8?B?dTJOOHdFbklyUjhLNkgzK3NKekFuVnIrT2FST1NSMVBnUjF2Z3ZGNmxiZ2la?=
 =?utf-8?B?WTJWbGdZU1ZINFN1VGFKVlQ0RVp6aEk1OEIzM1hBZXFNQVVQNVlJQ29FUzQy?=
 =?utf-8?B?c3pyYy9KN080dFYybnRLNzBGNXJhSWx5elBXWXFtTTZmUWNQYnJUZ2lScHRp?=
 =?utf-8?B?MnNwby9ubEpWUTFFQnVCSktNdkQ5UWM4S085cXI3MTdHN0dadWxyUk00TkFK?=
 =?utf-8?B?R24zbWcxQlVRdWtqMWtOc0xKM0I4VERxeHNXQzJxQTQ4WVE2dGwvSnllY3di?=
 =?utf-8?B?a0xBY09lM0piNk85UCtaL1R4ZTNKT2VyU3dFcHFKbGRxekNYZkV6L21oMWlV?=
 =?utf-8?B?R3JWeCtGc0FSN1NDbkY0ZDBwOWRScUtZd0Q5VG1OSDdQQ2QybnJKSnh5aVAz?=
 =?utf-8?B?TFlIVGNsUkxheHBBYXZCU2NSdDVsTVNvN0t0MHN6c0h2QkNQL3k5a0ZKc0pJ?=
 =?utf-8?B?Qzc1dWJqR1llaHJmZDd0Q0JWTWZnOUFIekNJbXZycWd4QzU3MTNoT3hUVU84?=
 =?utf-8?B?NjVzOFNiSE9Ec1N1RkRZMHdyODBZMDRkY3VIRk5SQUdxb2RvZDVYT3owVVFX?=
 =?utf-8?B?eUQzVks4emhVa1ZXWTRzRGttaU9Jakg3YzRxY3JkTlAycFk5SGxtdkxwM1JQ?=
 =?utf-8?B?WUZLeElqOTdQalNETGo0MGRXNDhiWndPSkpoWkFWZFhBelozd2l3Z3JpVGdw?=
 =?utf-8?B?L2t4a2svL01mSmtBaUpsVWNkNFM3UzQ4OFVRMGc5MnBDZmUvUERiVXhmT2M2?=
 =?utf-8?B?MkxDK0VRampuZGREbTI3T3FlemJzSEd4M2Q2c1ZHRlI5ak9pZ2dRVDJBZE55?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0445559-f66d-4e2c-0011-08ddb9fb872e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 06:33:31.6148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lOlxvYznywrmrw27YlpgMjW0yhAwtoQG8WfUn+b4GzlbptNq+l83bElTL3HqMMybpRjw4kfxdL279QAOiPHqEt/sUDG0ElqksCZ/HLYTEZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7673
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


On 7/3/2025 12:54 AM, Ville Syrjälä wrote:
> On Wed, Jul 02, 2025 at 09:42:04AM +0000, Borah, Chaitanya Kumar wrote:
>>
>>> -----Original Message-----
>>> From: Jani Nikula <jani.nikula@linux.intel.com>
>>> Sent: Wednesday, July 2, 2025 2:01 PM
>>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
>>> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>>> Cc: Deak, Imre <imre.deak@intel.com>; ville.syrjala@linux.intel.com; Shankar,
>>> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
>>> <chaitanya.kumar.borah@intel.com>
>>> Subject: Re: [PATCH] drm/i915/display: Add upper limit check for pixel clock
>>>
>>> On Wed, 02 Jul 2025, Chaitanya Kumar Borah
>>> <chaitanya.kumar.borah@intel.com> wrote:
>>>> Add upper limit check for pixel clock by platform. Limits don't apply
>>>> when DSC is enabled.
>>>>
>>>> For the currently supported versions of HDMI, pixel clock is already
>>>> limited to 600Mhz so nothing needs to be done there as of now.
>>>>
>>>> BSpec: 49199, 68912
>>>>
>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
>>>> drivers/gpu/drm/i915/display/intel_display.h |  1 +
>>>>   drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
>>>>   3 files changed, 16 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 456fc4b04cda..bf0faff50c2e 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -7902,6 +7902,18 @@ void intel_setup_outputs(struct intel_display
>>> *display)
>>>>   	drm_helper_move_panel_connectors_to_head(display->drm);
>>>>   }
>>>>
>>>> +int intel_dotclock_limit(struct intel_display *display) {
>>>> +	if (DISPLAY_VERx100(display) == 3002)
>>>> +		return 937500;
>>>> +	else if (DISPLAY_VER(display) >= 30)
>>>> +		return 1350000;
>>>> +	else if (DISPLAY_VER(display) >= 13)
>>>> +		return 1200000;
>>>> +	else
>>>> +		return 1100000;
>>>> +}
>>> How does this relate to display->cdclk.max_dotclk_freq that's computed in
>>> intel_compute_max_dotclk(display)?
>>>
>> The Bspec defines this limit as "maximum validated frequency" and asks to limit the pixel clock accordingly when DSC is not enabled.
>> At least for PTL it is 97.65 % of the mathematically calculated maximum pixel clock (pixel per clock * max cdclk).
>>
>> I am not sure if intel_cdclk_guardband() used in intel_compute_max_dotclk() was intended for something similar. However, since the limit only applies
>> when dsc is not enabled it made sense to me that we apply this limit during intel_dp_mode_valid () instead of doing it in intel_compute_max_dotclk().
> I think what we need is something like:
> - implement the DSC bubble stuff and account for it in both
>    cdclk calculations and mode validation

I have some patch for accounting the DSC bubble stuff for cdclk 
calculations, but not for mode validation though.

https://patchwork.freedesktop.org/series/150083/

Still need to test properly.

Regards,

Ankit

> - implement this non-dsc cdclk limit checks also in a way that
>    covers both (also needs to cover all output types, not just DP).
>    I suspect the DSC bubble stuff might always end up more restrictive
>    than this, so perhaps this could just be covered by adjusting the
>    cdclk guardband
>
