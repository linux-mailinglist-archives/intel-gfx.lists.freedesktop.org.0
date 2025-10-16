Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C9BE1683
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 06:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0CF310E2C5;
	Thu, 16 Oct 2025 04:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5TUWlaE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB88810E080;
 Thu, 16 Oct 2025 04:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760587659; x=1792123659;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kwCH9l/GD4JPM9Ll8W1sbNFsn/mT0EBlGR3CWys38p8=;
 b=j5TUWlaE6b1nFlEqlwIfEQCEhvb6f7GJUpqPh2sqYkgsAqxQenLX7pm9
 vTgZ1a7DA5PmwSj2/RmfMlKaF3axF+QibveQ8OdHuOlB1wfP+Oy/79YlL
 YsH8WH/YEVa3KoScfkFCoI/AJQ2AH9bWL8SQe0+6lErP3q5ojw5PxZE76
 CZ6oFQ8C+trd3TBlU83/vI6uJh0zac+jM7A4/Guc2FTIPJMDAb+IdQgyV
 ViPBaFC1o1R7QGOEtcZp1OdbcRvEPO+tsOi+05YJ1OsqXB6K9MnnbUE0M
 mn3BPWWDziLHRBdSwapNofi1OLLdWS5jT6+YP6fH3hvEVsSW7o6xGPga2 g==;
X-CSE-ConnectionGUID: hqJ+pOn+SHer4R0glPRtng==
X-CSE-MsgGUID: xpBOYLm6SBaBWrrZkpK7eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66422249"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="66422249"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 21:07:08 -0700
X-CSE-ConnectionGUID: BgLXVXrtQjS73B79V3oN5g==
X-CSE-MsgGUID: HAF0a4D/QVmTA54MlxFYsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="186356505"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 21:07:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 21:07:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 21:07:07 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 21:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vJuy0QexPo967aB4JasPhFxdwfMCJSOylJzL0yLPHQtLO2N2qJ1Hw4c4m8cuYWKDPUAUermvY0fbvVZ9o/8xsvqPY2Dn7w0sfJT3MGSmtD2c529VxvGpb653gh0JZAjTbAHyQAL8YnVeuOsGdPE7g5YrzewD/ZhoXkeSBpy84Y3vfz558Xc6V6vCByaIvgVmaGV3l7UXG3kLJifaF9e2WkbhTCSLsNrHN38gP1ZYCr5D1jBc9UXuYo1Lp5PCicbuoDgm438iVGj6FNEn1KIBMA1ZScKIXEbel/g2sg3SQZETfFbG69HTC4zR33gKH0Tw6p8VXlLA0LRmbckM2saOSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=He5+0yWxD4h0zm+Y06YZ3Mm0bQxn1CLLvAkQaFlEv7g=;
 b=rVMSzwJi6l36VqY9FhJQgbChAw3DUGSj0hTc2hWhH4s132a/so2IL4l5IcMi6kbYO1lDKvE5k5wZqD7Svh/WrvVPEwz3CWBNolQvjBYRYG7e3ubncn2wKaZrtZr7UA0GJS1zUWLgnlYro1kOvyOgMlZtmmcHBLwXeKbGEoo7elAHtKV6OAvzjsyqDi+4oN6/jjnnvQ1+LwbtzqsHRuXSoaVVmMh3QEffOrFU4FejpAH9lvIe8Ku3ZgEz4NhaWkrF6sWJFs4RZ9druE3ib5xYefjyJPlil7O/ypFlGx4JcoLH7FIqO+lzHr3pyXvagOvLkn+X1i1PPPKWK+Xo0IJahw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5297.namprd11.prod.outlook.com (2603:10b6:610:bc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Thu, 16 Oct
 2025 04:07:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Thu, 16 Oct 2025
 04:07:01 +0000
Message-ID: <8c92bfcf-ad25-49a2-bb44-0d952d869125@intel.com>
Date: Thu, 16 Oct 2025 09:36:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/i915/display: Add guardband check for feature
 latencies
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <uma.shankar@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
 <20251015102241.1797828-6-ankit.k.nautiyal@intel.com>
 <aO_Nd3xTtgPDN5RM@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aO_Nd3xTtgPDN5RM@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0050.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5297:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fc3007c-5c73-4ac2-81d5-08de0c6974ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alVEc3hjRkRMckhDSjk5bTY0aUpsblpWdW1DN2tJdHA4Wmw2SEZBMXExM1p2?=
 =?utf-8?B?WWc5WWlIZmxOSWxPcEk3SStzcDhuZEFHUkNiQnlVWjYxOEtHaU1JMlNDamxH?=
 =?utf-8?B?SDhZeHErVFNuNmtHeVo0MmhLMU1xT0JZZm5tdnNaNEVuNE9HbXlqVExiSXQz?=
 =?utf-8?B?a2UybTd4Q0VxN09TUUNjT0RDdUZZdXlFbVk5MkhOQko4dmFaMGlYeTNyOVZ1?=
 =?utf-8?B?VGF2ZE5OU3pLaU9RS0xCNzlVOWcvRUZ4dVhBV1dzRkMwWlRvdk1SVU1rY1JX?=
 =?utf-8?B?TG5KT24rNk1oTjkxdHR4ajkxazA4NWlkUkpwYjNZalAzQUhkbS93TWlTZlRD?=
 =?utf-8?B?Zi9zSy9NUUIwNjhCc2J0ZkNxemVQdzh0blNkRUk3clZTYWlJTHhsRGNrSWp2?=
 =?utf-8?B?d0tOUjIxNlpXa2VNTFNhOWxzdkFvK21oRHpMMU1GT1VRSzhRdjJGKzBIR0Rz?=
 =?utf-8?B?dDk0cWJwckNXTWtid1BOY1RPcGVBbm0xZExzM1dNVU5Tay82MEcramtmU21a?=
 =?utf-8?B?WnFuclY3Y0t0aVl0TDcySlViaDV6bmlRNk5lbjlDMWE2VjlJWjhVVUZxZnZv?=
 =?utf-8?B?eXNKWm4wd0RvYXFuTjVsVUY1dXIySFBYcHkxa2drWCs5Qk41MHh6M3VFT28x?=
 =?utf-8?B?enI2dWxjTWVSOEJ2NjVyUW11RHFIcTRMVCtPZUx1aUFFT0VjamhKQ1ByNklF?=
 =?utf-8?B?T3ozSThNeHg2cXlvVExWMEJpU2piOUpOWnV4QnB4eFJXVk1vM2pNREFPS1JE?=
 =?utf-8?B?cW9lZjZLM3JDRjJ0UEFnZ2s5QTRUcERyQlVnYWY0dHU2bXJTamk4RDY3NVhr?=
 =?utf-8?B?b0x5NTh0RnVuSVZvUzUwY1kyTkZYT1Y2Rk1SM2lvYW9sY2R3d2t6RHYzcDNn?=
 =?utf-8?B?T0RyOUl2NXFVME0rb3lhSk9Hb2w0aTlzbWE3Q08ySWg4OVlWcDl4QTBrYjBm?=
 =?utf-8?B?YjFuUlluVURNb04za3k2WlhFeVRmMVc1WWcySllZZTJmOTZzcS93SkJVb20z?=
 =?utf-8?B?RVlpT0h5U0w1WHVTa20veElGVlJ1ZXorRVdDQ2oxZHQwYnRRNmVEMm5KSW1z?=
 =?utf-8?B?RUM1NThVUkUycnJDNTkydlVicWpNK21sRjFPQkVMNzQyOWhlaStKUDZHUVdw?=
 =?utf-8?B?TlFXd1FUYXpPMFNWbytqaWU5cXAxTVp2TWtMYWtZQTlNaXFQUEZFc2pXU0NU?=
 =?utf-8?B?NXhoeTFUS3pxRnVuUjI2VERvU1k4VDl3anJNRVZrNWQzM1FYNC9NKzVEK0ph?=
 =?utf-8?B?aHNPNktUcmZmL1FEUTBnT3pPRkl1eXVpN2p1cUlKU0N5dW55YnNxTE51L2tM?=
 =?utf-8?B?WmlEbmNiMWFtSFZPUkJhcjB3RTJpckVFUVV3cmlEU2w2Uzg3dTdwTmZZRzRy?=
 =?utf-8?B?ZXZZWGZUSzZCcUtuTTVnR0pmVGxvTGdIQjh5d1cvTFNTZDE1cUhRZG0wZExa?=
 =?utf-8?B?SFhzSThjV1VZQ0Y2ZGFBRzZ5aHVqQmdZZ28rQWFuaDRSaFlybFhkcENUbEJG?=
 =?utf-8?B?VVlXUW5NRStyVmc5MVFvM3pMZGE0QVpsNDMrUmhWWUxCVXFkK3Q3bEhKNFA4?=
 =?utf-8?B?bWxtSmZKVDVCK05UOWNPanU2S0hZNWJwTXcrOEQ5QytJc043QkEvcGN4Tmg4?=
 =?utf-8?B?dHdGWE5acXh6OEtlVW9KdmY4dW1JektsdzhCTEwyQlRlK2pNd0hrdE55MGxR?=
 =?utf-8?B?NWhsbFV4SUVxZFA4TXJVS3hmdm9EQWRsUDVtK2NBeXRuanJMNlB3Qzc3UTZ6?=
 =?utf-8?B?VWZHbXNldW5FNGwyUHE5NFBaOHF3NzVscy9weE9WTlRaOXVBUW9kZHllRG10?=
 =?utf-8?B?NTNmL3dpRFZPbkZyamlnZlVPN3JpcXRDRVpVMDlQSDRmMkhaQ3YxZTBKL0hP?=
 =?utf-8?B?dDRtMGdDYjE0WFExQ2VYa1pKY2twZ0hDZXIvRUZpZ2pWaFVIak83cG1WTzlG?=
 =?utf-8?Q?TolZN1N2jX/ntaBIqwcevZKaKBg2VLhh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aldkNTVEUzZKVjhPS2VKL1lIRHBVNmdhcXhSTzQzSzM0eXhuRlRvRzJQUnVX?=
 =?utf-8?B?MXRXbXBxRG4wN0ZrQWh0VmtnRzJpbkk3a3l5YnFXa0hBZWkzajk2dlV1YmdY?=
 =?utf-8?B?NzRkR0NPVTNtMldvVTl0aVZLYnRwbTFNUzZuODE0ZGY4UHkrTld3S0ZXMkpO?=
 =?utf-8?B?aXR0T0o4emIvVnd3VU9PWkY5c29SRlNNOU5BTUFCSnJIN2o0NU1GYVc5WmVx?=
 =?utf-8?B?aS9ydk9ISVpaaS8wVGpFNGloZ1JEd2VMY2p6Wmh2ZWduTmhaSE9KUEp3eXFZ?=
 =?utf-8?B?YlNCUWMySGkrK1NIN3FobFJaRGI0Y2QvT01tL1ptRDErYjhEQTVmdDJLeHpL?=
 =?utf-8?B?QUxzY3ViRDc3UlNUVHg1c1ptTXhzdTVRR0JJQjNZdFdYQ2JZZWphSHp4ZG4y?=
 =?utf-8?B?UUxDL1YxZFJ3a0Q2VTFNRTJYd25Gb202QTJyazQrN2Z1c0ZodWNDMEtWV0JW?=
 =?utf-8?B?MUptd1NyS2Yzck5QMThPUWhHWTNYZ2ZtWnlUSG5ob1p5T3B6c3ozVkJWZnRr?=
 =?utf-8?B?Rk44SEN1SE0zQVBhV2NjRVlxZytZUlR2VU05NVhxL0JlWVdlM0pGU28vWVJI?=
 =?utf-8?B?elovMEdmQlo2MVVMQy9qSEJPTHVwMVF4aG04ZEFCaU9PR2llWjFrQVMwanpt?=
 =?utf-8?B?NytlUllJQlVRRG11YVRiVkl2STZPN0pLVGh5YllwcE9oeHlxNHZiWC9YdW91?=
 =?utf-8?B?amF5bTFjWmNnYlpZNnd4ck1sZUVoRW80Y3l5L2x5Z2dScTRvcHM2WXJYSnNB?=
 =?utf-8?B?MjJmSFl1bGwrODBPZWdFd0o4VHNoN3FtQytWbXRwZUVmTW1MSWhwU1hlcUtO?=
 =?utf-8?B?K2p1emV1M0dXK01raitUTVhENWJNZVdTMGg5ZEdYejdyUGs3WU9sYVN5WnZq?=
 =?utf-8?B?ZnlXNWN3Sno5ZEdwbDdvaEZmZWh4aVRnTG05alpQUDRlSFdYNThoaFJrTjEw?=
 =?utf-8?B?ZnVFSlQ5d1F4ODVGMzdKQ0VPVkgrV0pUaHVvSHhubVdHeCs1Z0RqeFBYc0M0?=
 =?utf-8?B?MHVKSnJrNnNaSzg5UGhaa0RVdzhBeXJCTnZ2MGRLaWhDY3BiTU1ZcTUxTDBT?=
 =?utf-8?B?YVloRHhPNmd3YVRCTCt4UWhweThpZlQ3bytpMkdNUFIwVXhJMk5BMk50ektV?=
 =?utf-8?B?QnN1RGFaNmxCRXpBUU5EUXV4NlgyZEtGSG1HVUtUUG1tT1VwM1lvV1VKYWtH?=
 =?utf-8?B?L0J2cm43VEkzc1ZMRnA2ZWxFTVpjMkZlMzlBSlVXV1pNeno2Nmp3NjhKQmtM?=
 =?utf-8?B?blJ4bVRKR3JtMWtWdXpYV0F4MlIyUnB0N28yU1ZJemJJNWVUME9HOE5QT3Fs?=
 =?utf-8?B?YzdXZnRPRUw3aTBISGlvdzRvN0g4WVB5aTZLZFR4Qk5sOWFOMGNjeU5RVTQ0?=
 =?utf-8?B?SFdnR1hpdU5CK0NCQTVaQ09OOTJRSnhzTDBnMmpRS3Awa0k2RWNHaFk3c216?=
 =?utf-8?B?WUVva2Y1ZXVKZVlNTWhPa281bzNGN3R5eXhMdEx0bjNaOUNBOEhZd3lFWDRz?=
 =?utf-8?B?c1hVUlN4aGkyaEQ4UVB2Yk40YUl3MWdQYitXMSsrMEd3NHJFYW54Nm5pWVZD?=
 =?utf-8?B?dm5ZTzBpcGl3RE5DRWhXNEsydnFCWXM1RXQySzRVYld3bDFzeWFiSExzU2VE?=
 =?utf-8?B?VUVMcVR5c2tHN1MvK0Y3aTh6MjMwcWJlV0grZFk5dFBMRy9GaEhZS1NPdDFF?=
 =?utf-8?B?bGJkWE5YOUtEalRHSHNvT0MvbFVOKzlrK1NxQmV6eEZSM3FOeWx0S2NWYklk?=
 =?utf-8?B?dkRxWjVGdDA0MDFDRnp1OVUwYlBZZUVPdHM3N1UrQW9nKzVPQ1I2SG92bVAy?=
 =?utf-8?B?SmZHSzdTd3NLRk5SeG52WSsxTmNRSlZjNVhYVUd0RTVnQnhFMlAyUHRzQ2w2?=
 =?utf-8?B?TDBpeDl4MVNUVkpaQU1DM1lydldKcWtMaENiVUhjK2w1S3QyczRjTjFuN0Ro?=
 =?utf-8?B?TStuRzdvWmd1bnNWUU94NmFCdERZS045bGhWZEp0bmVFaUtQdXJtR004a1BV?=
 =?utf-8?B?T3BqZTI5ZjBMcjZrdWVJNHhHR0JlbzNoVlREWWtvRGNsdFY0WmVFMHpuZGtQ?=
 =?utf-8?B?UUs3Y3RHajZXcXBuMVBBTlBuQW9qdmRVZ21YV3NYTk9zbkF5SWJvNWlRZUlp?=
 =?utf-8?B?d0ZBMGJEZWRVNGNsbXN1U3pWa1ZOVkRqZTJRajVsMVRlNk5NYWppQVVXUUZC?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fc3007c-5c73-4ac2-81d5-08de0c6974ad
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 04:07:01.0125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 97xfhGTnZAZp2a+xaz9UJfoNBGur8WOIsbKXACW04mFJLzfL04xyye9FL3CW7+j7N4WzrwwkAmLHwxQ9GBG3F1mXcTs7sTfOjvH/EqPV+bc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5297
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


On 10/15/2025 10:06 PM, Ville Syrjälä wrote:
> On Wed, Oct 15, 2025 at 03:52:40PM +0530, Ankit Nautiyal wrote:
>> Add a check during atomic crtc check phase to ensure the programmed
>> guardband is sufficient to cover latencies introduced by enabled features
>> such as DSC, PSR/PR, scalers, and DP SDPs.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++++++++++++++
>>   1 file changed, 56 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 4367ecfab2b3..4e3f08a8cd9c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -126,6 +126,7 @@
>>   #include "intel_vga.h"
>>   #include "intel_vrr.h"
>>   #include "intel_wm.h"
>> +#include "skl_prefill.h"
>>   #include "skl_scaler.h"
>>   #include "skl_universal_plane.h"
>>   #include "skl_watermark.h"
>> @@ -4191,6 +4192,57 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
>>   	return 0;
>>   }
>>   
>> +static int intel_crtc_guardband_atomic_check(struct intel_atomic_state *state,
>> +					     struct intel_crtc *crtc)
> Not sure why you're adding this. We already have the
> compute_guardband().

For computing optimizing guardband, I have the next patch where I am 
using skl_prefill_init_worst() and sdp, psr guardband and taking max of 
(prefill_guardband, sdp, psr).

Here I was trying to finally check at last if the guardband is 
sufficient with the actual values of prefill guardband, sdp, psr.

But now I think we dont need this check.

As suggested I will just check for SDP min guardband in compute_config_late.

Regards,

Ankit

>
>> +{
>> +	struct intel_display *display = to_intel_display(crtc);
>> +	struct intel_crtc_state *crtc_state =
>> +		intel_atomic_get_new_crtc_state(state, crtc);
>> +	const struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +	struct skl_prefill_ctx prefill_ctx;
>> +	int prefill_framestart_delay = 1;
>> +	int prefill_min_guardband;
>> +	int prefill_latency_us;
>> +	int prefill_wm0_lines;
>> +	int prefill_sagv_us;
>> +	int psr_latency = 0;
>> +	int sdp_latency = 0;
>> +	int min_guardband;
>> +	int guardband;
>> +
>> +	skl_prefill_init(&prefill_ctx, crtc_state);
>> +	prefill_wm0_lines = skl_wm0_prefill_lines(crtc_state);
>> +	prefill_sagv_us = display->sagv.block_time_us;
>> +	prefill_latency_us = prefill_sagv_us +
>> +			     intel_scanlines_to_usecs(adjusted_mode,
>> +						      prefill_framestart_delay +
>> +						      prefill_wm0_lines);
> All of that should pretty much just be skl_prefill_init_worst()
>
>> +	prefill_min_guardband =
>> +		skl_prefill_min_guardband(&prefill_ctx,
>> +					  crtc_state,
>> +					  prefill_latency_us);
> The only question really is what use as the latency here.
> I think we want it to be:
>   max(sagv_block_time, skl_watermark_max_latency(1))
> which should guarantee that we get the max power savings.
>
>> +
>> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
>> +		psr_latency = intel_psr_max_link_wake_latency(crtc_state);
>> +		sdp_latency = intel_dp_compute_sdp_latency(crtc_state);
>> +	}
>> +
>> +	min_guardband = max(sdp_latency, psr_latency);
>> +
>> +	min_guardband = max(min_guardband, prefill_min_guardband);
>> +
>> +	guardband = intel_crtc_vblank_length(crtc_state);
>> +
>> +	if (guardband < min_guardband) {
>> +		drm_dbg_kms(display->drm, "actual guardband: %d shorter than min guardband: %d\n",
>> +			    guardband, min_guardband);
>> +		return -EINVAL;
>> +	}
> I don't think we want to do any checks here. This whole thing
> should just be something like:
>
> guardband = prefill_min_guardband()
> guardband = max(guardband, psr_min_guardband())
> guardband = max(guardband, sdp_min_guardband())
>
> crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband())
>
> And then we need to check the final value against
> sdp_min_guardband() in .compute_config_late() to make sure
> we got enough for the SDPs. So quite similar to PSR, except
> we just want .compute_config_late() to fail if we don't have
> enough for the SDPs.
>
> I think that should be good enough for now. It may force a modeset
> if the SDPs change though, so later we might want to think about
> using a better worst case estimate here, eg. assume HDR metadata may
> get enabled later, which we'd like to do without changing the guardband.
>
>> +
>> +	return 0;
>> +}
>> +
>>   static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>>   				   struct intel_crtc *crtc)
>>   {
>> @@ -4253,6 +4305,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>>   	if (ret)
>>   		return ret;
>>   
>> +	ret = intel_crtc_guardband_atomic_check(state, crtc);
>> +	if (ret)
>> +		return ret;
>> +
>>   	return 0;
>>   }
>>   
>> -- 
>> 2.45.2
