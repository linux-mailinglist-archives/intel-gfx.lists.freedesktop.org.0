Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A914EA835BD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 03:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757A910E34A;
	Thu, 10 Apr 2025 01:31:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lSnf5xpQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5CC10E349;
 Thu, 10 Apr 2025 01:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744248695; x=1775784695;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ujVOyl6bkCYmyRy/h8DHqwF2pdQ4VmtDhWnyHo2SCeY=;
 b=lSnf5xpQwF3CYHbaNguSZ/k9XiPi20WkHYvU4uLuw33vl9MP9slM4A9e
 CzDygcMfsivvJsZu1697N0slROPIMwLpxfXNrB04xpv1ZKVZlB4ln1Gj8
 7NTorkYO8zLIRDuX7tRl/1AAAcus8HE5pZvd13c9NYm/zlFYXpslnEgEC
 Qiv9XJCrgIQuoKyUZexb/Q3h/18uYk3T2/ithliOClux73tnpmiGKmSsT
 d0wbNZt4gsdAZi2SFa3g5RGJyTVag7xHotiKE/CDURJTXWEHHfUSS+gSJ
 ywjpCiPY0AOSa2n7+kmOYRPPPmq0QggBPem1VQCvY+vh0ErySEHOxkOAI w==;
X-CSE-ConnectionGUID: uNjfShYJQ0CQQRAbyppkOQ==
X-CSE-MsgGUID: JONMGoFcRoC+BB+UsHOnfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="56415145"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="56415145"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:31:33 -0700
X-CSE-ConnectionGUID: +Q85ZthsRYasy03CzXRXCg==
X-CSE-MsgGUID: anzMcuLAScyEx5ToCidp2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133726297"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:31:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 18:31:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 18:31:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 18:31:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wiTQIAIWg9Eo3mEEhiWjK0dsIIl14HE/cM+nGi/s8V2Agnsns8u/YT/QNfc3yfnX+8I7u5mGmi2/OEbD9laTb8MVqYCkxYq1SpWGumc9wM6CIrxNjS0hfdZDMrOp6X6Rp9th4qIdYcGtO4O9OKr8vMn0oigcD9uycCdhDwu/74TJQ5cpNEE/wnw078SBdN4gH1jh2Nu7vd+2r3Km0aYxW36ZtG6Idnb4N0sVk5cSdv8qepivC3+pnS+dfAcnZG40ek3UnZAkSZ6ndGBAtXHcHeqojsfSRGmX0Sr1cpBS9WMPMyXGAAYdqKo6SLHbk7Ocs079dC9xqz9YqpqG6pcciA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlMs650+Wy3u60zaer/dbqRk3ETXAXUBogYSLkFU3Jw=;
 b=j78/O+P+CRF8k/8mm1CiFvnNHISEssA4GSKIpmY40iS7fP0j1T2o0V8MiBjB+tQ0pD0yQ/CxxI5TlndQNCjiA4iqjP087c3jA84i6sOy04fwJ/SwS95uZbRiZcKqWA2EQb53DPWr4+7+U3XxvQQg1nBN5kNVPVPHcB18+j5s2Z0h+t9EfCKQmQtNn9/Df0Dg7+aql+7ZH26qboHB9L1DjWRlCkq1ba3tqNnFPbZlRjgItZWjn0D5iR1MJG9SagboNQP4UoZFLUu8BneDNX4dLzlR/g496rxIDtFuFSYytS2J6FoPWVWexeMtkMLv878HP1EjxfZL/QuN/TmNSRBB7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by DM6PR11MB4578.namprd11.prod.outlook.com (2603:10b6:5:2a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.23; Thu, 10 Apr
 2025 01:31:29 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.8606.029; Thu, 10 Apr 2025
 01:31:29 +0000
Message-ID: <86f83d5e-cfc7-4f80-b3b2-09bc2ed175f8@intel.com>
Date: Wed, 9 Apr 2025 18:31:16 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
 <20250407234406.4084642-3-vinay.belgaumkar@intel.com>
 <a4046beb-7973-49b1-b7e7-ea407a007f3e@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <a4046beb-7973-49b1-b7e7-ea407a007f3e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR07CA0020.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::33) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|DM6PR11MB4578:EE_
X-MS-Office365-Filtering-Correlation-Id: 8410b719-00d0-40da-fdca-08dd77cf6ab9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUQyMFgyaDlRN3h1aW92dlpiZTA5VzlOMlo3Tng4cVJPTHNHMUFudHJNZ3hM?=
 =?utf-8?B?amJhaVoyN3F1ZVg5ZVpBSk1RQVVNbFEvM3FaYnhicjVzbDFYdW9wc1JhTVJs?=
 =?utf-8?B?SHZRMGpTSzhWa01HZk1YOWF0cVE2bmxNMmpmZ1FlM3F3UDRFNnJJZ0RIQ3c3?=
 =?utf-8?B?UGRhek40bkUreUh3K1A4UlNTZFg0R0dvRnNSVFM5UUxWZnhRR1ZrcFJJZmlQ?=
 =?utf-8?B?Z1pjbG9EZHlOVHhTQTBMUklQUGM4WTZubjdRQnMyU3BWb2RMbGdJUTl2SUtF?=
 =?utf-8?B?QWFlZXVNSUtYUkJYYW5PUTFmaDdrR3RROGxkZEFOQ3BFR0ZjZXN2ZFptUkxp?=
 =?utf-8?B?ODExMjJvQWhQOS85SHdpaGZOd21SUFRXbTVaVmh1S3IrdE5zaDFxRnRDV1ky?=
 =?utf-8?B?YWllSzhtR0Znd3JJdmtldlF5Z3oyMkw2TWxDMHJ5a0VMTlpldUZESzllam1N?=
 =?utf-8?B?cDk1cUFtUTdUbitDa1VxOVY2ZnJ2LysvQXFQMzZoZHNvck56bU9YZTRjeXdn?=
 =?utf-8?B?K2VpZ3VLR2t3UElvejE4WkZiVVh2N2JKek54WDQvYlVIOVdyc0wrQmZnOUdF?=
 =?utf-8?B?Q0l0aHpHSnpFNnJJbFpUQnBKTFlFL1FxdUFNeTBVN3RKd1VZUXFwd1lzMEkr?=
 =?utf-8?B?NWVZV3VOQXBrdXhPZTB3TGRqVTlsaUJWb2FiT3dyZlAxTHFUbDN6UTZUZEZy?=
 =?utf-8?B?bGFiREtDZmQyS1pEUmE1Z05uMklXdTJQMEh5UmRiRkUrdm9XZGpCQmFWR3V3?=
 =?utf-8?B?OUxqcWZKNGFYMFlQSUN0RUptdmxpelN6STZvN0xuQmhCR0hwYVFRT3hNQVF0?=
 =?utf-8?B?Wkk0NlNncmVLNWw5YW9BRTNkWVFYckJoMWlwZUllMHNDUnYySUt6YjQzZC9U?=
 =?utf-8?B?ODR5UGJ1UWhiNzdhZ0IwNFl2WjBzQldLNzNEd0VMT3VUUlFDQ2JnRXRCcFRu?=
 =?utf-8?B?Y3IvdCs0WHFxV1Y3UHg3SVBXZC9wendTWmUyZGZYZzEvc3ZtWmtIanYzRzN6?=
 =?utf-8?B?cUhocUh3S0lmUkNJVkFIYklQR0NuODMyK0ZtQk90VWNFazd3OUJDUzJmQTJp?=
 =?utf-8?B?RHJJT2s5NTJZRGxqeFRQTlNCMG5qNWdET3pVT3E3ZGd6a0FRdFZUL29zaElD?=
 =?utf-8?B?eXZEQ2pDYVNzSGJEanBsUGhLUHFWSCtJUENSeDVlY0tqU3RROTNVQXc5Z1FB?=
 =?utf-8?B?emdnb20walBHYXJ1OWVMdjBJRUl6Tk9QUXZpbTJKYTA4WitNQjBhV1BQWmc2?=
 =?utf-8?B?ZjI2emxIMGlNRmVRWDE4bUs1TlRYVlBuWVVKL2I4WDVwZFNPMGYyNmNEc0My?=
 =?utf-8?B?eGk2akJ1OXhpOGhvVXYyOTN6blZGZW5Xa1hxa2xSQnREclJRdWIwa3VneTA2?=
 =?utf-8?B?aldVc3VkOWJyKzQ0NUVYNUc5R3hlOGpmVG5PRGJsK0tlcDhHVWhldUlWMzYy?=
 =?utf-8?B?NklWcmo2cm03Z042MnBDL0VBb1dXeE9qQzlzR1gvaUlNaXRrTHZaK01ENzVG?=
 =?utf-8?B?cnFLamt4M1A1ejN6YjFQVFN1K1o1WkRqSHByWlRtdktJWXBoeGFXQXR4bEsr?=
 =?utf-8?B?aU5kc0JnQ3JyODM2amdmV1RSMFpkSmYxdGxuSzFzOEF3SForSTd5Vm5lUWQ5?=
 =?utf-8?B?THVJWlRpWGdZYkRDR2NaN21xMFozdkJjVU8zaHJJMHhpbGlXc2xHbzUvUTUr?=
 =?utf-8?B?aFg2RUJXSmNIWmt0Q1hLejVYSjJYNnh3MmhvWlArUFdSS3dQS05VZU1zMm1z?=
 =?utf-8?B?Z1ZtMGZMRis2ZVNreHJDTXhSbWF0OHR2U2cvbEVGTFRhWUFsYzRWYU1CLzRw?=
 =?utf-8?B?UTN0V0xiN1YrSkdGcE15QTJjOGZoVDNqNmtOdGR5SzRiVzZqRjFZQUxMaTJX?=
 =?utf-8?Q?ZwDl2PV91pQHY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmFSWUNjaGN4NWN0Q1RsZ0lsOEoraDFDWXpudkJIa0NQQThXV25rTGlOUng2?=
 =?utf-8?B?dzhzNStueXl1am1LbzR6MERVMDhZRUZ2Z1I3R3ZHS0pKMUVmZzh5VzR5cE9D?=
 =?utf-8?B?UFFQNlJMLzdheUwvY1A2YjBwN0lpNTZDZTc5WGpwUnViT0ZaVlV3bTM0NGha?=
 =?utf-8?B?SHRnYlRhVmxFT0F4UnFadk5kUzJRQ3o4WWpnV3hHVnZCV0FTM0luTGhFazJu?=
 =?utf-8?B?cjB3YkZQVjJldDBEOTlQYXQ5S3RiSGt5L29zV015QTQwMEl3cEF5ejNnU3h1?=
 =?utf-8?B?ZC9sK3A4ZmRFMjJ1SmJWdm1lcEloNVNYRFF4bm5KTS9BWnoyby9laWRaTnpV?=
 =?utf-8?B?c0hJR2tpa2g2TlJXWE9MREU1R2RWSWlFbzZXY0tjYVlmNlZjT0REVzl0NHp5?=
 =?utf-8?B?R0l3ZFNzbG9iTFJua3JWeTZEOFlOQ0xHYnY4UmFZdWVhSmpNTGdmbHI4Lzgy?=
 =?utf-8?B?R1h0Q1dtejF2QkdKTXRFRzdGa3NldWZvdHoydGtmNXhFWGtaR0ZkVUN5dUtt?=
 =?utf-8?B?SitQMzhLT1ErRzNLcTFrQVNhQTNhVDNtcW0vNjJWL016bzZzN3JVc1VCQ1gv?=
 =?utf-8?B?YkxERWJCbThZRmx3OEs2SjJDMWdPbndvT1YydWN3ZmxZUTZUTW1pcldvYlV1?=
 =?utf-8?B?dDNKQlFJaTRQdE5yMkZhQTllV1VOL2dFWlQrT01MN213Z1BCL1R1WnR4WkhK?=
 =?utf-8?B?ZElEQ0hsWThxVjh2akRmSTc1VjNNWE1BU1Z3RUgvcURhVnYwMVVLaVBzdCtS?=
 =?utf-8?B?cWtZdVd2eHBvNHB3Mk9xRThGbUJMT21MK0srbTdqWHMvWE1MdWRhaGlYZ0I1?=
 =?utf-8?B?S0pvUm55N1VmSjVaNElmT1ljZWlteEl0T0J1RXBkRDFGR0U1QWx1MDFOOWN2?=
 =?utf-8?B?R29Da1hJRkMwalZGRUI0Q1Y5VDE0bGNISFF0aEEvSU14OG9wRDZvMDAyWlhU?=
 =?utf-8?B?U3FLMmlGbE0rRmN6MHgveHN0N0xXTng1Vkp5SEhTZUM5Wkw3ejF1Wlp6L1g0?=
 =?utf-8?B?a05WdTlzcEZqenhkQUFBNWhZbW1kV1hscWdXMGVNeE1FeEFEWEY5QnB2VXpM?=
 =?utf-8?B?QXl1ZjVhZmtGdWI3T0MzWElzMVNNbzZqTTN4Uzk0WFN5Q243eXlFcXN0bW41?=
 =?utf-8?B?MmNoL1BPQk1ia083SUxJSkV3bWdxeDc3dEkyaFZNaUl4ZTZHREFucWtXWnFt?=
 =?utf-8?B?OEtwVnpkY3V4RTR0dGhiKzdhVnVQL1ZmcHp0ZnhEWjBQU0MyNlV2dVduUWF5?=
 =?utf-8?B?V0E0VkVZZ1NOMldpNUdHM2pEeDRXdXpDYmdVcnBhNUMwUEwrUGFWQlhpUG9y?=
 =?utf-8?B?ZmxaQlhab3BmTW1ITTRsUVptSm1DcmJDdFVoTEpFV1ZsSEIvMkVFNmhES0kv?=
 =?utf-8?B?VlI3cmE0UWRmZXJJcjBsdmhMa2I3bHlxL0s1c1VSUUdZQ1dJQmFNS0dydlJH?=
 =?utf-8?B?S0hzR2dlSk9LRndYQ3UzbVhmaWVhNWhFSDhXVEIybTFHR0IyU1dDMVpCd0Vt?=
 =?utf-8?B?ODd1V3pHN1NtMU5JMHlWY3BWQ3ZYYlJjSEt0N2ZwZTdENHJZeEFjb2VXUm1v?=
 =?utf-8?B?OHcreFN2T1dqSCs5UXFQRnZoR1JnL1VnS2JtNzF2Uzd1TC9LUkNpYlJWNXhz?=
 =?utf-8?B?Q2UrbFhNTWx0bmZnd1JBRFdxc0RIanhRT0dLVUtLc0crRG9SN1IwVzVxb3hN?=
 =?utf-8?B?eE93UDJzS2NTT1hBdVRweUtxQms3NG5ySU9kWlhlNG1laGV6am9jbGMvVDdH?=
 =?utf-8?B?REZkOHIvbUdCdTdHRGJWeHdSajEzb2pkOE9ETVdRMHhrR1lFUFpqVWVsamJT?=
 =?utf-8?B?dHU2TVpkOU11ZmZRaW1vOU1Dak9GV0pxWDlmdjM2TVh0T2MrMDVIc2EyZFcy?=
 =?utf-8?B?azJYNE9qZ2lOQlJHNWFwejUreHM4SmxiRkJyVDFzclBvTW1vVUQ2cHpxTDhM?=
 =?utf-8?B?RUQvaHpqTlFaR1dobE13VGJTVE5SSmM4UU9JR2hRamdQRWVrenl4aFArOW9W?=
 =?utf-8?B?UU5tQmpkWFdzejRLcWFZcitybDlMbCtNNE9wNWc3alR5QXYyVGtoQWorN3dH?=
 =?utf-8?B?ckxQOHNRNXQxNjJuWklkWDMzaWU4UkluRnN4WmZ6Uko4cFZHZ1RhZkxZNlZB?=
 =?utf-8?B?TldXc0dOc201UitnQlZnczRLaWRqRGVvb1p5RTNsYUFHeTNTMHl3djdjM3dn?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8410b719-00d0-40da-fdca-08dd77cf6ab9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 01:31:29.4531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5XlgRQ8onwx7LRAuDlRL8b+Hyu7Kat54/pmbe8OGd1AqSyZbmEJ2SCLNut0gfD15Z5QWgPGgnqcok4pmGKbYkhui53dUUbdmYEIHNSlOfRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4578
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


On 4/9/2025 2:58 AM, Riana Tauro wrote:
> Hi Vinay
>
> On 4/8/2025 5:14 AM, Vinay Belgaumkar wrote:
>> Add a basic test that uses PMU to read GT actual and requested
>> frequencies while running a workload.
>>
>> v2: Rebase and comments (Riana)
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/xe_pmu.c | 128 ++++++++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 127 insertions(+), 1 deletion(-)
>>
>> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
>> index 175bbf374..fbac9c798 100644
>> --- a/tests/intel/xe_pmu.c
>> +++ b/tests/intel/xe_pmu.c
>> @@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int 
>> gt)
>>       close(pmu_fd);
>>   }
>>   +/**
>> + * SUBTEST: gt-frequency
>> + * Description: Validate we can collect accurate frequency PMU stats
>> + *        while running a workload.
>> + */
>> +static void test_gt_frequency(int fd, struct 
>> drm_xe_engine_class_instance *eci)
>> +{
>> +    struct xe_cork *cork = NULL;
>> +    uint64_t end[2], start[2];
>> +    unsigned long config_rq_freq, config_act_freq;
>> +    double min[2], max[2];
>> +    uint32_t gt = eci->gt_id;
>> +    uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
>> +    uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
>> +    uint32_t vm;
>> +    int pmu_fd[2];
>> +
>> +    config_rq_freq = get_event_config(gt, NULL, 
>> "gt-requested-frequency");
>> +    pmu_fd[0] = open_group(fd, config_rq_freq, -1);
>> +
>> +    config_act_freq = get_event_config(gt, NULL, 
>> "gt-actual-frequency");
>> +    pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
>> +
>> +    vm = xe_vm_create(fd, 0, 0);
>> +
>> +    cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
>> +    xe_cork_sync_start(fd, cork);
>> +
>> +    /*
>> +     * Set GPU to min frequency and read PMU counters.
>> +     */
>> +    igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
>> +
>> +    pmu_read_multi(pmu_fd[0], 2, start);
>> +    usleep(SLEEP_DURATION * USEC_PER_SEC);
>> +    pmu_read_multi(pmu_fd[0], 2, end);
>> +
>> +    min[0] = (end[0] - start[0]);
>> +    min[1] = (end[1] - start[1]);
>> +
>> +    /*
>> +     * Set GPU to max frequency and read PMU counters.
>> +     */
>> +    igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
>> +    igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
>> +
>> +    pmu_read_multi(pmu_fd[0], 2, start);
>> +    usleep(SLEEP_DURATION * USEC_PER_SEC);
>> +    pmu_read_multi(pmu_fd[0], 2, end);
>> +
>> +    max[0] = (end[0] - start[0]);
>> +    max[1] = (end[1] - start[1]);
>> +
>> +    xe_cork_sync_end(fd, cork);
>> +
>> +    /*
>> +     * Restore min/max.
>> +     */
>> +    igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
>> +
>> +    igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
>> +         min[0], min[1]);
>> +    igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
>> +         max[0], max[1]);
>> +
>> +    close(pmu_fd[0]);
>> +    close(pmu_fd[1]);
>> +
>> +    if (cork)
>> +        xe_cork_destroy(fd, cork);
>> +
>> +    xe_vm_destroy(fd, vm);
>> +
>> +    close(pmu_fd[0]);
>> +    close(pmu_fd[1]);
>> +
>> +    assert_within_epsilon(min[0], orig_min, tolerance);
>> +    /*
>> +     * On thermally throttled devices we cannot be sure maximum 
>> frequency
>> +     * can be reached so use larger tolerance downwards.
>> +     */
>> +    assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
>> +}
>> +
>>   static unsigned int enable_and_provision_vfs(int fd)
>>   {
>>       unsigned int gt, num_vfs;
>> @@ -429,8 +517,9 @@ static void disable_vfs(int fd)
>>     igt_main
>>   {
>> -    int fd, gt;
>> +    int fd, gt, num_gts;
>>       struct drm_xe_engine_class_instance *eci;
>> +    uint32_t *stash_min, *stash_max;
>>         igt_fixture {
>>           fd = drm_open_driver(DRIVER_XE);
>> @@ -482,6 +571,43 @@ igt_main
>>               disable_vfs(fd);
>>       }
>>   +    igt_subtest_group {
>> +        igt_fixture {
>> +            igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));
>> +            num_gts = xe_number_gt(fd);
>> +
>> +            stash_min = (uint32_t *) malloc(sizeof(uint32_t) * 
>> num_gts);
>> +            stash_max = (uint32_t *) malloc(sizeof(uint32_t) * 
>> num_gts);
>> +
>> +            xe_for_each_gt(fd, gt) {
>> +                stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
>> +                stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
> This can be moved inside the igt_subtest with local variables since 
> it's only one test. The subtest group is executed for all the other 
> tests too

ok.

Thanks,

Vinay.

>
> Thanks
> Riana> +            }
>> +        }
>> +
>> +        igt_describe("Validate PMU GT freq measured is within the 
>> tolerance");
>> +        igt_subtest_with_dynamic("gt-frequency") {
>> +            xe_for_each_gt(fd, gt) {
>> +                igt_dynamic_f("gt%u", gt)
>> +                xe_for_each_engine(fd, eci) {
>> +                    if (gt == eci->gt_id) {
>> +                        test_gt_frequency(fd, eci);
>> +                        break;
>> +                    }
>> +                }
>> +            }
>> +        }
>> +
>> +        igt_fixture {
>> +            xe_for_each_gt(fd, gt) {
>> +                xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
>> +                xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
>> +            }
>> +            free(stash_min);
>> +            free(stash_max);
>> +        }
>> +    }
>> +
>>       igt_fixture {
>>           close(fd);
>>       }
>
