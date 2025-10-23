Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4428C00427
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 11:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE9C10E0B6;
	Thu, 23 Oct 2025 09:32:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0yDwHLk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4131210E0B6;
 Thu, 23 Oct 2025 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761211971; x=1792747971;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=09RlK4U9bmTIycRA1fKl/rJq3yBdvjEZS8vk+5sU1Xs=;
 b=X0yDwHLkDo/D8uJe0cQ23jL9+MONWz++qjKXLMWsPlKGODpIMiOhFekp
 XmZFXbuKj1iFBticOtut8v/aE/YPifG1ZXm4e6Utt/jvotIIzc3Cdpl8Z
 YO7Ty+26Lot1RsLHZaYLuEHS6Z0mnm2HECQWcqqk/OMf4TVXmDqyHkD+Y
 kZeMWKjDDvl5y4njt//oX+FWGIkmJyKLE6U1iqJfaUmHValfNU5HPGJaz
 maZPxC9LuNrHR/3YrD0bFsvukZQ3CWrb7d07SmZPZ4+rhev8WRnNJ/ffh
 PuYlr5BWKxuxhsu5Vt+GD0IM/R8MeThLAareBQilF2FDs0Z3hPPb6nCTc A==;
X-CSE-ConnectionGUID: r8/yTRRlRxK3YJ1z6hw1LQ==
X-CSE-MsgGUID: O5wzz6jHR9qMJlGw0Ox5MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62586108"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="62586108"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:32:51 -0700
X-CSE-ConnectionGUID: tLusyP08QHK4HsWDef8JWQ==
X-CSE-MsgGUID: J3p2V5pNR4yQw+RjxAoLMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184177061"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:32:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 02:32:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 02:32:50 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 02:32:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yCtl5aTVPaG1aKrS4k7uIsZQlFBf4bqNOoFtVBlo0/IgUPFL5Qfi1qIk1QSi+vCwMZLl4n7BIo4+5WgF0k6mc6McfSZmnh2fwq69JVhVkTQuwstta/xRBH23WRDbctQRutMl4rKtjbEnQdo+IWS6EhSur3xkFVLnKei7nzMjv9lmZ12YvcJGIO3TKEYnc/mQmLkbiPZ8j43I3AaGpg97Ep+WUmgcjuy4+mokguz5/dbkD8YoJJF5D4E+OHvisMewkWene3EBHVip2dhWc4zZvHp0dX/WjBYN1yIhAdg8rlIUr18RH8n+xUdgsiOtszNkjPhbaRKmolemGErajP3JWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e3cR0MJjU4tBJC6jGUFqHD0bN1A0gCnyIwdFqpzPDdM=;
 b=wRm65H1Or4beenIbZIrqJkRanJKd6LGFG5XBQokBO6z9OYre0usDeCwOolQ8CqDQ5dbUYbu4LVoikECSdpd+rxdkaTKl7lhv8UY0csrGvuB3pdtwHqxQhoZomLwFPYgmVl0/jww1Snv9gwgeh7w9d06o4EzKjsaOKho7X/lHumeZt8IK2l3R4CLxo98KqA3A52rHeEmTOIgqACk2iqbNERV2BJuTuledrlX1NB4W/KJ3bggRpQyRjbPGygkChBngSy+DuAhf7AW+MmChtEE8Di2PXVVopou1qRLh0ZxcyEuthe3rRTStrl2lQpUHklGBqotsVCrY3KzYlKHVc7AfFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA3PR11MB9487.namprd11.prod.outlook.com (2603:10b6:806:47e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 09:32:44 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 09:32:44 +0000
Message-ID: <86bf906a-db11-4ab5-8d6d-4eae25bd1599@intel.com>
Date: Thu, 23 Oct 2025 15:02:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/25] drm/i915/ltphy: Program the P2P Transaction flow
 for LT Phy
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-13-suraj.kandpal@intel.com>
 <9f7466b5-e5e7-4603-b564-0ef7f073d2c7@intel.com>
 <DM3PPF208195D8D6D34EE7E0E4CD7BD70C7E3F0A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <DM3PPF208195D8D6D34EE7E0E4CD7BD70C7E3F0A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::19) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SA3PR11MB9487:EE_
X-MS-Office365-Filtering-Correlation-Id: f5974997-6dfa-4bd1-862b-08de12171e56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tm1oMDdRUjRlOFFSeTYzQmJxZmU2b2IyU0FYeFVFSnlUQis4UzZCSkhzU29x?=
 =?utf-8?B?cThOOEV1Uk9vazNTUGh4aTFJWi9RUE9HMmtBUTZ2YXpjMDk0emNybCt5VlJa?=
 =?utf-8?B?SklDMFV6elhseVJGazBZOHl4T1BITDNXNmZKWkprd3cyTE40VFE0SXlwMGw5?=
 =?utf-8?B?OU9oS09PRkRxRFhGTDUrczRheEhYNml1QlNhL28zNXFyN1hpUGRVQ0RXTzJu?=
 =?utf-8?B?REV5WFRjSzJFN1NQZWxRdE8vbWZ5U24yTWRSZTBQaFAxYjRURjVBamZWR0hZ?=
 =?utf-8?B?MWJidHUvMGxaRVNMb3B2b2pZaGticGJoc3c1eXRDZ3czUXZvblM3UHN3K3B6?=
 =?utf-8?B?TndQV3o3QlJ6MkdEMVN1dzNzYklZT0pMcGlPU3FsRkN3NWxaWVNqK1JXZFJR?=
 =?utf-8?B?L3p3V2ROalJHNjlRT3Y0V2RvQ2s3WG4zR2piL0p5elRKU0pjN2dpU3VyY2dH?=
 =?utf-8?B?dEh0YnhrSlhUOVZSK3ExVWpib25DQklzUHlVSkZwRmh0dHBhNSt2NlgveStD?=
 =?utf-8?B?b1RwbVNZWXNhd1pPQ3Mxa0MyZ0Z6Z2FPSGozWTkrM1hqbGVJS1FLdlAwNiti?=
 =?utf-8?B?VjM1SWFPUkU4bms1aG1QbmVWRmFMUm9WTlJXSGdtOU1hbC80TmQzS09QSktU?=
 =?utf-8?B?ZnZUYTBUTmp5THFVNVIvbmlxSHVubXdTR0t0SnhKMVc0L0ExcURxR2loTWVF?=
 =?utf-8?B?SGh0enU5dllyeCtKcEZKK0g4ZjV5VUN3UnlaL1gyaDRJMEVpSDR0MHVlZVNW?=
 =?utf-8?B?UTVNR2V0STNwYjVudC9CeDRxblhDQXhNeU5NUmJhK3UzYm8wbzhJamo3VFNO?=
 =?utf-8?B?TndkMm1QY0RaS280MUk2RFREMDhsdzRMMW43NXVjc1NNbVIvVjk1UXdKQmJO?=
 =?utf-8?B?ODZ2aW1NZnh4S09zYk5zS3VGZHZicGd1UmM0Wjd4WFNDUU4rdC9Kb0N0a08v?=
 =?utf-8?B?enVKcnNEcE9CTjFWb2JvY0paSHRUcTM1djBFWHJaOHdCT0tTV1hHN1NVQTZv?=
 =?utf-8?B?MWg1TlhURnpGWEcwaHZtZ0lmdkxncElncXpBdURQWnNmTHArS2drL0FTNmE1?=
 =?utf-8?B?a1l2QTkvWjFjRWlubmpmUUI5WStGU2dqaDI5bVAzQTVZdUt2RGorRUtPM2xC?=
 =?utf-8?B?Y2VVS2tQRGg0VHh2cmZpT25iMnZZNE5KZmsxbUF1bHpGSS9mZ3dHZGNBcXVv?=
 =?utf-8?B?bDJ3UnZZTUxWSGVNR1NVdzFEbTk5aFlNWjczSTBBQ24vTmxtbHBheWtmZ2dY?=
 =?utf-8?B?YmdmVGRGM0lJQTNaTW1tNnNsZm14eXhWRGZPU0JPaUdJSEFaMThXZ2NlN0lj?=
 =?utf-8?B?a1oyWkJIM1MwbjVSc0c2dnM4ellqU1o4eDVQWExVZGJZaXpEL3gxaFU0RUY4?=
 =?utf-8?B?MGRta2p3eE9tTm5ZTW9PMGpJUWhKMFoxdC9oeWhjOXgrOHRIM0lJa2UwZ1R2?=
 =?utf-8?B?d3ZpcEJUdHI2cGdFQlBxNXVUOWpaT2I4Q2t5ajNEUWVqUTduQ3h1U2hIYTl1?=
 =?utf-8?B?c3VvSnRwbEhxeTA5dFEyME9QdDNYWXBsbFQzOTFXZlQ4UVZ2bVZqVzVleUIw?=
 =?utf-8?B?REZObGd4YUg2M1dmelpiSitaajNwUTNWbjQyVTh1S01mK3UzT1lQNHh0bkFt?=
 =?utf-8?B?WmNFbmNDc3BrN0ZTRityQ0Z3VXFDSS9PTlBxMGxyOEFZb1crVG1wYVRzQ2N3?=
 =?utf-8?B?eDRXTHFwV1BPRW9vZ0pFUzJnYUVNdzhKU1ArUEI1RHUvaENabWE5Zm9ROEcz?=
 =?utf-8?B?YUxOYlF5WjR4VHo0NktyUlRWUlR4ekZucUpDLzhoa25LSGJkSUlLTVJHTGdD?=
 =?utf-8?B?QTRSNmsraDkzM3JNaHNpelc0KzBaSXZROHNRNng4Nnp0ODhVT1F6aFV2RG92?=
 =?utf-8?B?MVMyMFhQU2VRaDJnS0FEdmhHWlBhUVprUFdDZUVBQlBXelRGNDJ2NitaaXF6?=
 =?utf-8?Q?gZBC5NawxvZgX6a9jks7tOY/y7mEku9O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azBrdVI2bEhiTm5CekVRU2MxS3IydGN0Ny9yOUpJSWtJTCtFNGM3UWtrZ0dr?=
 =?utf-8?B?WnMzZnAvUTA4OU5Gd1c4T3Y2OWo3WnNueWZzR2g2RGxGVVdnRWU5MHJLU2J4?=
 =?utf-8?B?NGx0STlEVHBtdjhmOFpteEVhZGRpV1ovY2xFd3g4dkVnb0ZxM0VjZW10bkZE?=
 =?utf-8?B?ZEVoRUp5VkxSV2FHSWNKKzQ5ZitYbEhzbWRuSEswWndhUDR2M3BMdzNnZ1Yz?=
 =?utf-8?B?c3Z0S3VTWWNhQTVFOFNPWmxCaU9pSDc0ZmxnbHFlZVNJVzUyWXQ2ZzllMkVC?=
 =?utf-8?B?TitFYkYyam9PaWdWZUgvNDdpdEZ2KzljZjhBKzBWckFGYTE1VVNTbjNOK1J6?=
 =?utf-8?B?dCtPTzBnRGV6N0g3enpLbkpMd2F2S09oU2ZaM3AyR2VKSDNvUkY3NVN1ekFm?=
 =?utf-8?B?UTUrSVIyUUxuck0ydXhEY2E0N3lmc2ZOTFJCL0dhT0NNZXkwLzM5Um9vOUxk?=
 =?utf-8?B?TGZqZzBWeXBzb2FWL2pRcGlMbTlFc3U0NndWSUE3VlNjajB6TGVTUXlTdmFx?=
 =?utf-8?B?Y2J3QzdTRmVxRUViTzhCWTJNTGhSK1J6bTQ4L2YvMHMrS05oaGppRDJJMVhQ?=
 =?utf-8?B?b0VVaktTcUpZUkRkaHJIYlQ5cy9iY3B2OWMzMi9mUjR2c1VHWUVSUmx2Nkth?=
 =?utf-8?B?Wlc2SHI5UWYwQms1MFlRR1BYUERZeGloNG5hWWRCYWlodktUdGZMbGxQYWl3?=
 =?utf-8?B?eVREeW11bGluVXJ3NHYyVHFCT2JFNHIzcGQvL3NpVmc2QlRFSDNVWTZxeVZ2?=
 =?utf-8?B?YmdJajR4WTkyd2VKRXRtVW9BNFZVUVMvN1hDT0NEbFZGRUxURi9JN2x0S21O?=
 =?utf-8?B?QTVoY2owTEhYWG52VVZUQ3ZFaFhqWE92VEZvZE81N0N4dXh6eDN1LzQvbE1y?=
 =?utf-8?B?eGtmR2pDNDBLYkx1RHZGUFAwTllraldlVmNNdmdtdEp1bVpPcHE1dEZsNUF0?=
 =?utf-8?B?WGg1M1ovMjJpcXVUTHFhUko5MFhBdHhycHdhWmJNbFB4VkgxZUovNEl3N3k4?=
 =?utf-8?B?T21ualluTzhrQnJjVHcvRnhnM0VhT2xVa2RTRG9ySisrNFlRVStVT0tHVSt2?=
 =?utf-8?B?Y2Y1cVRBbUlMcGhZTk03UThBQUczelhQZE8zS2FmeDE4blFLREJ6T0pCYkNR?=
 =?utf-8?B?UUR5d1BhQlQ4bGcwdzFDYVRxbzVYek5ZTzhGKzVaRTRidUdTVVByZytmVVRT?=
 =?utf-8?B?Zm15T2I0REU2Yjk3S2dKMkZRRE9hSFJEcldiam44aUx2VlRKNDMzaGM3cUpD?=
 =?utf-8?B?MDFFcFhQdjA2YUdZSldkZS85T1VoRjlzcVI4bm5RSnovWTNuVER3aTk0NXla?=
 =?utf-8?B?eVM1emcvVUt1cXVPWW9CbWdDTW1MN3RleU5UTHdKZUFtTFlQZTE0RVlnK1pJ?=
 =?utf-8?B?Y0lMRmRveDVvVko2ZE1KN1VWQVhKK2FnWldqUVZXUzExY1pTemY0NXVCcVUx?=
 =?utf-8?B?T0RHcnl0cjcxQldNTHVKVjZWQ1ZoZlhZTVRzSi83bGcvWG1lSUpuQnhUalkx?=
 =?utf-8?B?ZU1EMGxRaXVLeDFoUXIwMDVRblJVU0QvZk5Za0VzMTNnRk9lcVd4OTBPOXJ0?=
 =?utf-8?B?S3k5UmQyeitDOHhCaG9EYXo4OEhzelVIZXNKTXQxR2dVUHdpMDhsZ3NUVlly?=
 =?utf-8?B?N2lURW95ejRuL1dNVkZkcmJEd1RWMWNkdFhMUVVEdk5sMHZmL1VxNVhkRmIv?=
 =?utf-8?B?VEludzlMeHNpaFd0c2g2R1pzaDdYbjFOSjBaNGhOVm9DZkVNakx6UnJmQWlT?=
 =?utf-8?B?bVNFRGFjcU9ZOGwydUVjYUdteUo3bU5UZ1R2UVBKeVpodWVnWjZBNUN6eEIy?=
 =?utf-8?B?OWEvNmNGQit2K0pGUWJkeE1BRHZyY2RNMzRXMldYUlBJY2F4bDRqN3ZRRGlB?=
 =?utf-8?B?bEd6Tmx1ei9iY3pMM1M2ekZCbWJmQWlXcmdScEg0dmlETXJtaG5ubEVaQlZQ?=
 =?utf-8?B?VXV4VkZ6NjA0MXltcW9raFJ2SWIxUSticWI0RVU2aHVmVEtxcU9wMk0zeUtD?=
 =?utf-8?B?dmJMbU1mcFNRZ2RiVTE4NlR5YlZvZ2RpSDRrdkRCYUR5SG9rOTdxZjlyZUd1?=
 =?utf-8?B?V2MwTHV3c2N1VU01WkM0UGU3QnQvQzhUSjBLZjVKQjU5Y3liMFlRZlU0dE9B?=
 =?utf-8?B?MWRmYVpYbWRWMHYySk56VDJ6M3o0SGVzRUhuaXYvT0hybkR0WGs4WThweE1B?=
 =?utf-8?B?Vmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5974997-6dfa-4bd1-862b-08de12171e56
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 09:32:43.9497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XW0kfxILmLj83UGr4Ow2AF/rHDKJnaIS9RApLP5nYAnnGX7KGmHjHEk0keReYgKfmJvb1lz7gpM1NqvmOPR0Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9487
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


On 23-10-2025 14:54, Kandpal, Suraj wrote:
>>> +
>>> +	/*
>>> +	 * This needs to be added to give PHY time to set everything up this
>> was a requirement
>>> +	 * to get the display up and running.
>>> +	 */
>>> +	udelay(150);
>> How was this delay value derived?
> While doing power on we came up with this empirical value after a lot of trial and error.

Might be the settling time required for the PHY. Please add a Re-visit/TODO

Thanks and Regards,
Arun R Murthy
-------------------

> Regards,
> Suraj Kandpal
>
>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>>
>>> +	intel_clear_response_ready_flag(encoder, lane);
>>> +	intel_lt_phy_clear_status_p2p(encoder, lane);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void __intel_lt_phy_p2p_write(struct intel_encoder *encoder,
>>> +				     int lane, u16 addr, u8 data,
>>> +				     i915_reg_t mac_reg_addr,
>>> +				     u8 expected_mac_val)
>>> +{
>>> +	struct intel_display *display = to_intel_display(encoder);
>>> +	enum phy phy = intel_encoder_to_phy(encoder);
>>> +	int i, status;
>>> +
>>> +	assert_dc_off(display);
>>> +
>>> +	/* 3 tries is assumed to be enough to write successfully */
>>> +	for (i = 0; i < 3; i++) {
>>> +		status = __intel_lt_phy_p2p_write_once(encoder, lane, addr,
>> data, mac_reg_addr,
>>> +						       expected_mac_val);
>>> +
>>> +		if (status == 0)
>>> +			return;
>>> +	}
>>> +
>>> +	drm_err_once(display->drm,
>>> +		     "PHY %c P2P Write %04x failed after %d retries.\n",
>>> +phy_name(phy), addr, i); }
>>> +
>>> +static void intel_lt_phy_p2p_write(struct intel_encoder *encoder,
>>> +				   u8 lane_mask, u16 addr, u8 data,
>>> +				   i915_reg_t mac_reg_addr,
>>> +				   u8 expected_mac_val)
>>> +{
>>> +	int lane;
>>> +
>>> +	for_each_lt_phy_lane_in_mask(lane_mask, lane)
>>> +		__intel_lt_phy_p2p_write(encoder, lane, addr, data,
>> mac_reg_addr,
>>> +expected_mac_val); }
>>> +
>>>    static void
>>>    intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8
>> lane_count)
>>>    {
>>> @@ -1417,6 +1528,10 @@ void intel_lt_phy_pll_enable(struct
>> intel_encoder *encoder,
>>>    		 * register at offset 0xC00 for Owned PHY Lanes*.
>>>    		 */
>>>    		/* 6.3. Clear P2P transaction Ready bit. */
>>> +		intel_lt_phy_p2p_write(encoder, owned_lane_mask,
>> LT_PHY_RATE_UPDATE,
>>> +				       LT_PHY_RATE_CONTROL_VDR_UPDATE,
>> LT_PHY_MAC_VDR,
>>> +				       LT_PHY_PCLKIN_GATE);
>>> +
>>>    		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0.
>> */
>>>    		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
>>>    		/*
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>>> b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>>> index a4aa2a3e0425..5fb4331c387f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>>> @@ -9,12 +9,17 @@
>>>    #include "i915_reg_defs.h"
>>>    #include "intel_display_limits.h"
>>>
>>> +#define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
>>>    #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
>>>    #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
>>>    #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
>>>    #define XE3PLPD_RESET_START_LATENCY_US	10
>>>    #define XE3PLPD_RESET_END_LATENCY_US	200
>>>
>>> +/* LT Phy MAC Register */
>>> +#define LT_PHY_MAC_VDR			_MMIO(0xC00)
>>> +#define    LT_PHY_PCLKIN_GATE		REG_BIT8(0)
>>> +
>>>    /* LT Phy Vendor Register */
>>>    #define LT_PHY_VDR_0_CONFIG	0xC02
>>>    #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
>>> @@ -29,6 +34,7 @@
>>>    #define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 *
>> (idx))
>>>    #define LT_PHY_RATE_UPDATE		0xCC4
>>> +#define    LT_PHY_RATE_CONTROL_VDR_UPDATE	REG_BIT8(0)
>>>
>>>    #define _XE3PLPD_PORT_BUF_CTL5(idx)
>> 	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>> _XELPDP_PORT_BUF_CTL1_LN0_A, \ @@ -41,4 +47,13 @@
>>>    #define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
>>>    #define  XE3PLPD_MACCLK_RATE_DEF
>> 	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
>>> +#define _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(idx, lane)
>> 	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>> +
>> 	 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>>> +
>> 	 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>>> +
>> 	 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>>> +
>> 	 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) \
>>> +
>> 	 + 0x60 + (lane) * 0x4)
>>> +#define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)
>> _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
>>> +
>> 		    lane)
>>> +#define   XE3LPD_PORT_P2M_ADDR_MASK
>> 	REG_GENMASK(11, 0)
>>>    #endif /* __INTEL_LT_PHY_REGS_H__ */
