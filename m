Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6960491AD72
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 19:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C564510E2CE;
	Thu, 27 Jun 2024 17:08:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkMGhaVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C613610E2CE;
 Thu, 27 Jun 2024 17:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719508110; x=1751044110;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RQvAKqXV1WokHO2d1ZHoKlkzxlt7q9JM9LaN8LDyrzw=;
 b=NkMGhaVJiMkYZZje5sIMDkbqTeRiGFzDs448RgaCmNCcu6iP1CHA7Cy9
 2ApEcmc91Q1tGoLpjIq4i5eYiAnVoeWvP9o6TR2P+gZCwHIBG6C6jNDDM
 rE2FbFVkybG0rE3S8J8zAbhFya5NtKH6ELfZ6dMc5veZZ+xZAhijeRa9E
 Z7mQKgK59VJyHLu83eUeVnpzo6q3iR//k+f5YvmEoPxHxyw0GANN5xRQl
 mvS6DZ/cen7aa9WFnybToJHA3J0OpOpCjQWNcAz1PXNgqhU6oC4+IJ+cs
 VaREvWF5Ex8v+4y8ejS243Er8/xk53E/vpGUcmTuoIWGyemImfw6Fjynj Q==;
X-CSE-ConnectionGUID: EioSy4sxQf2SUOh285gmOA==
X-CSE-MsgGUID: pX3uXibqR3WRCGn6pIPR7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16539344"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16539344"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 10:08:29 -0700
X-CSE-ConnectionGUID: O1H7aJGJQV6Jw/oc/AJ4Ag==
X-CSE-MsgGUID: 9kVEhucxQOCGOiDQeEiyuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="44544818"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 10:08:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:08:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:08:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 10:08:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 10:08:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ngxH7fu0JWyAXosDd8R3LGB5lr/wYFRyKEypnpaRbh9fgq8R2IVg7tzebvRad+qY438vg+ePRZCflJhfTASkcWP9K3R5LgLSRQT+STe1B+88AkWIyCdfCYyp0H2j6CS5X2e4eU+CbVlhCXGr3xPXuZPMQUNrW21ZPndmKydvF/5r6N59pb30SrWfKwrGU60edDMLmo8Xd1SaQco7rDC+vrY8g5XKRIVQDp4msxGDXbtfc6eQfj5gV2X6Og5FfvathCpRFvmz7lHL62DJEmFLHo45ikuwgO67V8g90JkTjluoJpjkdmPaYMZzyKQ6t6pW5pgGyE32UZ3Qnw3khMGggw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmSHyAo493Ym+yVoTln5d/+pdIafFus8m4tvzyn89OE=;
 b=DnhP8iF5He65TieoavFeKuHiAj7tEyA/TF3/nzDtfrEa+Gw+BoXXBeIwed7bak/H1kCaShGnsdEWJTY3wMXPXARD7YSGjuBgYP0R1YyvBddL4GyntUrMR9khBnWvYLXmUT/MOBxFJ7zOH3L6qQQoc/mkuw9oI7V1TFfqzvKvXjL6ryJkfuko+Y5AINSw4awdZ3MvdY7ea7mFeUGjQXHfuHI2PkyWQwEnIRYTwnBClcX5ufTuGmsd9JyW3LrOMv+qmCTbLg3/4wmGyXkKa32z/TAX6m6PfbW6eJSScpvGEm0jAbm6tKW/Qi5+a0yUvBjsFDyljreiPYNiDbsiQdJ2dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.26; Thu, 27 Jun
 2024 17:08:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7698.033; Thu, 27 Jun 2024
 17:08:22 +0000
Message-ID: <fd794aae-0a92-4953-91eb-ae0824459408@intel.com>
Date: Thu, 27 Jun 2024 22:38:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/pll_algorithm: Compute C10 HDMI PLLs with
 algorithm
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mika.kahola@intel.com>,
 <matthew.d.roper@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-5-ankit.k.nautiyal@intel.com>
 <87sex0c8vb.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87sex0c8vb.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4716:EE_
X-MS-Office365-Filtering-Correlation-Id: e139817c-7ff3-4ae3-f2c1-08dc96cbbfbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QlpnYWR1R0prQ25LT2VIcXZvaXh2S3VxSGZBclBDUk9PN1lNTTJrMGhlTStP?=
 =?utf-8?B?U2FHV2RZWms1bTBKY2JiRVBwOWM4eFE3WlJKb3JDRHBGU0tVYXI2V1dpMWwy?=
 =?utf-8?B?ejY0QnFBcGtWSVErS3Y0Q1BCOHF3eEpaaHYxT0tsNkNxQ2RrQmxzZ0lQTzV4?=
 =?utf-8?B?Q3hjTDRmRmVhTGFmSEUwMGxRNXpaVDlSaEkzL0JVd1QrMVUwZ3dRWGw5MHIy?=
 =?utf-8?B?ZG9vYUp2cDNoQW1wNkZYcThUSmh0bVB4VlJhU21FMm9FSlV4eDYzWnJUY3Bx?=
 =?utf-8?B?RDFua1VQR05oTGxGUThmR3VnK2srYU83N3BacFBOZGJzSzZaazBFamd2Q0RQ?=
 =?utf-8?B?K1lwSHBhMjYvckpWZ0dBS2xSY1BMT0t2YVJ5SHM5RWlaVm9UL2c5Uk1qWVNZ?=
 =?utf-8?B?ZjByWWdJWDBJaUcxTlNvL1hzMzNMaExPYnFXUUd2MzVVQ2ZMcE1WR3ZaNndG?=
 =?utf-8?B?ZTdRVW1mRVZ5S05JdzByYmNEL1kzaFhDVE5DQzBLTHRNWlNGQmdabElvZllI?=
 =?utf-8?B?Qkk3bGhjNjJNNm1EQ0xBZjFESVpOY1piWC94b2d6cVNKY3lzM2dpaGxVNHpi?=
 =?utf-8?B?T2YwY2ZybGtBbmpLUE8zaXFkWk9BL1hEcW9PSThPZEQ1ODlRMThmcURNa05X?=
 =?utf-8?B?SXhCeVRhSHVvaXNrcjJrYloyS3JFVnpzNlBxYmFKaXl1d1hZYkMwYzRWeVcr?=
 =?utf-8?B?QVd0OHoyOGxHUklUbncxZUVtNGozTWNXVHVGNFBEV3dEbmgycG1zSUNCa1Js?=
 =?utf-8?B?UUdReE4rNGxveWFKWmR5ZWxQVDNLVFJEVWdzeW4xZThIY1UyNmgrb0Q0dG9i?=
 =?utf-8?B?RWExVjd2L2wxUCtnUXRONXRkcGE4RUh5OSt5K0g1Z3NYSENMUlE5NU5hMUFo?=
 =?utf-8?B?eEp0K1RRbHAyNi9vemd6YWVpVjQ0dldVK29vTUZDMWhBMGpLOGxGTFpIWVlR?=
 =?utf-8?B?RHBkcWxoalo2c0EzQmpXb3dUZ2FiRzRsVGFSTG9XTFhkMmZ1aTZaeFNTdDJW?=
 =?utf-8?B?SGZCOExlOVM2amRWU0llWGRVMWN2bTBIcENZS1F6aDI5NGwvallZdFlxVis0?=
 =?utf-8?B?d2tFaW5YbEV5eVo5UXc4RDZVb2FRM0VTNUJFYnp1aXVOS0FxRERBM21DSWFB?=
 =?utf-8?B?ZkNPMENWRG1DcFFiVE81VFRySUdHSGs0OHBEMloyZXloQ3QvSHA5TXZlRE5Q?=
 =?utf-8?B?U2ExWWdmVGUwa1BxQ2ZrdkxHaUFmVDZSQ0NZTzUvMXpISXlFa1oyamxVWlZE?=
 =?utf-8?B?SUI3V0ZQV0hwQWFndit1eFhLUzVyMjJGL0h4UnhpUHZ4eEhoVkN5a3ROblF6?=
 =?utf-8?B?M09OR3lnVjJHbFNLVGNDWVVoNUErZUwvYit5SUhOVUdmNzJySmYrNUxhbjlp?=
 =?utf-8?B?ay9ucHAzRkdrTnJvb3duTE9LWXlMZEo4d1VCbExnc1NJZmZpZng5cVZDYWl5?=
 =?utf-8?B?T1dqV2JLQ3A0a2JQcU1BVVNYZnl0S1dHZGY0Nk1zRXBoTmFVZDZTVGhPY0lG?=
 =?utf-8?B?SENNb21FcVo1S081cEI3U1N3a3NvcGF2MWxJZmRTeVExa2RCYnAvelhNOHVx?=
 =?utf-8?B?TE5qUDV4UGFZeE0wbXdYS2FZUFZZaUtaeUZTSkNxdVhsSXkzeXdqTUcvaFZX?=
 =?utf-8?B?WFd4RUhKWU9GWWhVNXN1ZHhlT3NDaEVrZmFSWUxmVFdHb0FiVDhuenYrQzNN?=
 =?utf-8?B?bHN5N2hEcE15Y2grL01ZRlM4OU5EL3o4Y1BqdnVJVFkvUVRhb3BPbldsR0lY?=
 =?utf-8?B?WDJYVlRjamN0Tm0wUngrdlBvc0ZGZWtMUUR4VEhrQjl5ZG9RVTlUTE9rSWVT?=
 =?utf-8?B?cXF4ODVhamgyWmxzRzE4dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFlFMXgrNGhIK25KbmQwTGNpYXdhNEJRc2J0UU9uTmI3YXA3VEVrTDNOcCtW?=
 =?utf-8?B?d290Sm1KZnZ0RGJQK1pzZml4NjhlSzhiMjZYVUo0WktQMnRQNUNzZG5KOGpZ?=
 =?utf-8?B?N29ZRlBsY3FrSkJoTm0zWlJUdTZUakx1c095RzQySnk0cEVObXMrbitERW50?=
 =?utf-8?B?Vng5UG05YXF1aEtHTEhsMnFQT3JBT0Q3SjdIZjRlV09rSnU2QjF5ZVIzUWF3?=
 =?utf-8?B?QkNFOTJHS0pWRURyTEpJQzkwcGdJcTRzSkFzMHVDbkF4Nm5PTW03RFZIbWRP?=
 =?utf-8?B?eU5sQTZCZ3dIQWRuZ3h2a1BnN2Z5Nlh2Q3ZSTzRaMEFCbGlKMmdKbXBtSlBF?=
 =?utf-8?B?eHhYQ21tTHZDNWlVWEs3czJHemFaZHozanJ3eGRzZ3p6ZEZ2VklzSU1NMU8r?=
 =?utf-8?B?MjFMazNHRW5iWDEwWnhsUVZPcXREWWZTdDA5SU1XNWlDbDhmUm5wN3BmMW9K?=
 =?utf-8?B?NCtRMWVJYXgrTzNUN1dwd1dpTmhDOXNneVBqckRTT0hTbW5NTjA1NW4zWThh?=
 =?utf-8?B?M3JPeDJ6Q0JxTGlic3c3cXpZUW9ZdWpuVVFqMzB0RytaT2lIMjIraXJhakZk?=
 =?utf-8?B?bTEzZ2lvTTdHRU9iWVpkLys0UU1EZnhiZnp3QTJ0YVJSYXdQSkUxK3NoN3RN?=
 =?utf-8?B?bTAwQ2ZiT0V3R0orbzZjK2hLS2JHaFJFcDlpYmVrYUtFSW16Q3Uvb0crckVS?=
 =?utf-8?B?Q1h1Y1ZPdVI0bzNvUVFvTTlNallQcmRERGZDSEtDUGRhTzNkbEpiOWRlcVA5?=
 =?utf-8?B?Mlo3MytSUXJwVzRlbmlzYmRYZ2JmdXpJOXJmR1NyZEJycnJ5QS83dGdXOFNT?=
 =?utf-8?B?MlJtUUp2V1M0U3BPQTNvc3hoWUJuWncwQXhVZTRXSlZDRVZXQU5XZE9ualBY?=
 =?utf-8?B?anJKQmVjcFJzTmhzNFNIRjU1c041QXl6SDkybFREVVVCTVluSGlud09VVFJk?=
 =?utf-8?B?MVhxNjlIcnRWeFhyMHVLSi8rRnRRdzN6VkpJaUYwRG1XV0NPNWZWanFYazV4?=
 =?utf-8?B?RTAxY3kxblNMRE5Ud3VQT2Z6S2hRTGhRWVFYb1UxeGVwNk9TdVZLQXZjazlr?=
 =?utf-8?B?T1FzVHNZUDhETWR0eHptMFNyNGNubHdlV1NOcDNqbTl6MVExYXk2dXNRQ0pq?=
 =?utf-8?B?NUFCUXJKY3VneUhEY2djY01rSjlYZ3dTWDUzclFZRHN6YlduNGFWNWtMbWlM?=
 =?utf-8?B?NXlFdFhZRDMwZ1NYUnNEYjRFZ1ZaVkJmb0x5RDI3VithTDdCc2lxalhDMlg2?=
 =?utf-8?B?Uk10UTJXN2x3Yk16K1h2TFlGQ2VROGpGUG1TanJRY1ZsYXBIcFFOSE44REkw?=
 =?utf-8?B?SnNvZko0YzV4YlRsV2FKNnFsZXdGcVYzWi9nQXZWdk5wckYyU2JFTW1XR0hw?=
 =?utf-8?B?TXlCcTIvRFpFNTA1MjJ4aFRSWnNUc2dwRVlYTmV0NXB0ZzdkOS8rdjFwNHBO?=
 =?utf-8?B?QlNJellKcW1OVmNUZDR1TWMvMHhKZlhESEg5UFBHa1hYVGlacmZxR2t0RGU1?=
 =?utf-8?B?MDg2UVh3UFJVVmF6Um1xaUttaVJPMmUvNHhSNU5QNVpqTUdpS0VDU3VUR3cy?=
 =?utf-8?B?cjZRRW4xbkpSZFU5TWUwQ2szL0ZwWXdkbzFaV210SmFiZDRFRGdZNnZlVDdU?=
 =?utf-8?B?RkVIV0VxOGlXaWpNL08vOUpFT05iekFaemtKb095OTBMWDFPZUxQbG1oenJa?=
 =?utf-8?B?dmFhZkRpKzNpbmhTRkF6bWpvZmVSMjI1bE1kYmt1aWRRV0docmliR0M4b0k1?=
 =?utf-8?B?dW5sVkFCUVdlb3VMMVd2ZHZCZ2tScHVidmNTS2NjNEVveXdKRlFRRDY0aUxB?=
 =?utf-8?B?ODRVUmlVWm5EZUxjeVV6Q3piUkMvZjVkaGJuRjZaaFlsdUJJWlJ3UTJMTGhq?=
 =?utf-8?B?MTEzQlhxTHRjU2h4WHhQZlRHa1pjbzRlcHBmSVlZZDRCeC9PUjcrNDA3TXA1?=
 =?utf-8?B?aXM3R3pwdllDOTJweGJYYlNFV043ZXVIZDFnNXFtRkhFZS9OYnBVVjdSWWRI?=
 =?utf-8?B?RzkwaWdyVkJXNDNXY29uZGo2dFVWbjAyak1zSGhTL1BhTGtuZlNDUm5IQXpv?=
 =?utf-8?B?TlJiUy9iaEpaNVpoZU5tK2E5c3ZoZ0tZdEJMeDdjYVVrM2REOUsxTGx5WlZy?=
 =?utf-8?B?NTE3SE9DYlJZRGt2UFJCb216RVhzbmlQbUZIc1lrUFVaWVk4RndMTGtIbzFu?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e139817c-7ff3-4ae3-f2c1-08dc96cbbfbc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 17:08:22.0169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mHsj58D4D92uvuMrjrglqoHt3CA76eWkBJ5fqoBm4Hwb7ocy23mNXjtlG5lTHAP8WwkAC6itDccdpwYfUYVuGYPiEzMVaumxROumKj0WTqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
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


On 6/26/2024 3:40 PM, Jani Nikula wrote:
> On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add support for computing C10 HDMI PLLS using the HDMI PLL algorithm.
>> Try C10 HDMI tables computed with the algorithm, before using the
>> consolidated tables.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 15 +++++
>>   .../drm/i915/display/intel_pll_algorithm.c    | 65 +++++++++++++++++++
>>   .../drm/i915/display/intel_pll_algorithm.h    |  2 +
>>   3 files changed, 82 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> index 41f684c970dc..ebd2ec4023d6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -15,6 +15,7 @@
>>   #include "intel_dp.h"
>>   #include "intel_hdmi.h"
>>   #include "intel_panel.h"
>> +#include "intel_pll_algorithm.h"
>>   #include "intel_psr.h"
>>   #include "intel_tc.h"
>>   
>> @@ -1980,6 +1981,9 @@ static int intel_c10_phy_check_hdmi_link_rate(int clock)
>>   			return MODE_OK;
>>   	}
>>   
>> +	if (clock >= 25175 && clock <= 594000)
>> +		return MODE_OK;
>> +
> Again, seems like an unrelated change.

Will move the relevant change in a separate patch as mentioned in 
previous response.


>
>>   	return MODE_CLOCK_RANGE;
>>   }
>>   
>> @@ -2030,6 +2034,17 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>>   	const struct intel_c10pll_state * const *tables;
>>   	int i;
>>   
>> +	/* try computed C10 HDMI tables before using consolidated tables */
> IMO it's not "tables" if it's computed.
Yeah I meant to mention values. Will fix this in next version.
>
> And again, same thing as before, either go all in with the computed
> values, or try fixed tables first and fall back to computed values. Not
> the other way round.
As agreed in previous patch, will fix this to try fixed tables first and 
fall back to computed values.
>> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>> +		if (intel_c10_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
>> +							&crtc_state->dpll_hw_state.cx0pll.c10) == 0) {
>> +			intel_c10pll_update_pll(crtc_state, encoder);
>> +			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
>> +		}
>> +
>> +			return 0;
>> +	}
>> +
>>   	tables = intel_c10pll_tables_get(crtc_state, encoder);
>>   	if (!tables)
>>   		return -EINVAL;
>> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.c b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>> index d935715bd3ab..07b712cc0d6f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>> @@ -5,6 +5,7 @@
>>   
>>   #include <linux/math.h>
>>   #include "i915_reg.h"
>> +#include "intel_cx0_phy_regs.h"
>>   #include "intel_ddi.h"
>>   #include "intel_ddi_buf_trans.h"
>>   #include "intel_de.h"
>> @@ -250,3 +251,67 @@ int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_mpllb_sta
>>   
>>   	return 0;
>>   }
>> +
>> +int intel_c10_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c10pll_state *pll_state)
>> +{
>> +	struct pll_output_params pll_params;
>> +	u32 refclk = 38400000;
>> +	u32 prescaler_divider = 0;
>> +	u32 ref_range = 1;
>> +	u32 ana_cp_int_gs = 30;
>> +	u32 ana_cp_prop_gs = 28;
>> +	int ret;
>> +	/* x axis frequencies. One curve in each array per v2i point */
>> +	const u64 c10_curve_freq_hz[2][8] = {
>> +		{2500000000, 3000000000, 3000000000, 3500000000, 3500000000, 4000000000, 4000000000, 5000000000},
>> +		{4000000000, 4600000000, 4601000000, 5400000000, 5401000000, 6600000000, 6601000000, 8001000000}};
>> +	/* y axis heights multiplied with 1000000000 */
>> +
>> +	const u64 c10_curve_0[2][8] = {
>> +		{41174500, 48605500, 42973700, 49433100, 42408600, 47681900, 40297400, 49131400},
>> +		{82056800, 94420700, 82323400, 96370600, 81273300, 98630100, 81728700, 99105700}};
>> +
>> +	const u64 c10_curve_1[2][8] = {
>> +		{73300000000000, 66000000000000, 83100000000000, 75300000000000, 99700000000000, 92300000000000, 125000000000000, 110000000000000},
>> +		{53700000000000, 47700000000000, 62200000000000, 54400000000000, 75100000000000, 63400000000000, 90600000000000, 76300000000000}};
>> +
>> +	/* Multiplied with 1000000000000 */
>> +	const u64 c10_curve_2[2][8] = {
>> +		{2415790000, 3136460000, 2581990000, 3222670000, 2529330000, 3042020000, 2336970000, 3191460000},
>> +		{4808390000, 5994250000, 4832730000, 6193730000, 4737700000, 6428750000, 4779200000, 6479340000}};
> Static const. Please fix the style.

Noted, will fix this.


Thanks & Regards,

Ankit

>
>> +
>> +	ret = _intel_phy_compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range,
>> +					       ana_cp_int_gs, ana_cp_prop_gs,
>> +					       c10_curve_freq_hz, c10_curve_0,
>> +					       c10_curve_1, c10_curve_2, prescaler_divider,
>> +					       &pll_params);
>> +	if (ret)
>> +		return ret;
>> +
>> +	pll_state->tx = 0x10;
>> +	pll_state->cmn = 0x1;
>> +	pll_state->pll[0] = REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mpll_div5_en) |
>> +			    REG_FIELD_PREP(C10_PLL0_FRACEN, pll_params.fracn_en) |
>> +			    REG_FIELD_PREP(C10_PLL0_PMIX_EN, pll_params.pmix_en) |
>> +			    REG_FIELD_PREP(C10_PLL0_ANA_FREQ_VCO_MASK, pll_params.ana_freq_vco);
>> +	pll_state->pll[2] = REG_FIELD_PREP(C10_PLL2_MULTIPLIERL_MASK, pll_params.multiplier);
>> +	pll_state->pll[3] = REG_FIELD_PREP(C10_PLL3_MULTIPLIERH_MASK, pll_params.multiplier >> 8);
>> +	pll_state->pll[8] = REG_FIELD_PREP(C10_PLL8_SSC_UP_SPREAD, pll_params.ssc_up_spread);
>> +	pll_state->pll[9] = REG_FIELD_PREP(C10_PLL9_FRACN_DENL_MASK, pll_params.fracn_den);
>> +	pll_state->pll[10] = REG_FIELD_PREP(C10_PLL10_FRACN_DENH_MASK, pll_params.fracn_den >> 8);
>> +	pll_state->pll[11] = REG_FIELD_PREP(C10_PLL11_FRACN_QUOT_L_MASK, pll_params.fracn_quot);
>> +	pll_state->pll[12] = REG_FIELD_PREP(C10_PLL12_FRACN_QUOT_H_MASK, pll_params.fracn_quot >> 8);
>> +	pll_state->pll[13] = REG_FIELD_PREP(C10_PLL13_FRACN_REM_L_MASK, pll_params.fracn_rem);
>> +	pll_state->pll[14] = REG_FIELD_PREP(C10_PLL14_FRACN_REM_H_MASK, pll_params.fracn_rem >> 8);
>> +	pll_state->pll[15] = REG_FIELD_PREP(C10_PLL15_TXCLKDIV_MASK, pll_params.tx_clk_div) |
>> +			     REG_FIELD_PREP(C10_PLL15_HDMIDIV_MASK, pll_params.hdmi_div);
>> +	pll_state->pll[16] = REG_FIELD_PREP(C10_PLL16_ANA_CPINT, pll_params.ana_cp_int) |
>> +			     REG_FIELD_PREP(C10_PLL16_ANA_CPINTGS_L, ana_cp_int_gs);
>> +	pll_state->pll[17] = REG_FIELD_PREP(C10_PLL17_ANA_CPINTGS_H_MASK, ana_cp_int_gs >> 1) |
>> +			     REG_FIELD_PREP(C10_PLL17_ANA_CPPROP_L_MASK, pll_params.ana_cp_prop);
>> +	pll_state->pll[18] = REG_FIELD_PREP(C10_PLL18_ANA_CPPROP_H_MASK, pll_params.ana_cp_prop >> 2) |
>> +			     REG_FIELD_PREP(C10_PLL18_ANA_CPPROPGS_L_MASK, ana_cp_prop_gs);
>> +	pll_state->pll[19] = REG_FIELD_PREP(C10_PLL19_ANA_CPPROPGS_H_MASK, ana_cp_prop_gs >> 3) |
>> +			     REG_FIELD_PREP(C10_PLL19_ANA_V2I_MASK, pll_params.mpll_ana_v2i);
>> +	return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.h b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>> index 83a620fb3db2..aafbf158403b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>> @@ -10,6 +10,7 @@
>>   
>>   struct drm_i915_private;
>>   struct intel_atomic_state;
>> +struct intel_c10pll_state;
>>   struct intel_crtc;
>>   struct intel_crtc_state;
>>   struct intel_encoder;
>> @@ -35,5 +36,6 @@ struct pll_output_params {
>>   };
>>   
>>   int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_mpllb_state *pll_state);
>> +int intel_c10_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c10pll_state *pll_state);
>>   
>>   #endif /* __INTEL_PLL_ALGORITHM_H__ */
