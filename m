Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B77AC882E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 08:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B603610E7BA;
	Fri, 30 May 2025 06:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RV8XpGkK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694B210E7BB;
 Fri, 30 May 2025 06:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748586180; x=1780122180;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WUYCoTjhAjcfQYR7/eI3EyEivia7+hx266pRqhvo8sM=;
 b=RV8XpGkKf9Qbe0ZOe2bDhNvBWbeTeC4orLMCpohqzIRp49idhAWPARqE
 PF9mUn+KOY6GtCP3YBJuQ9MuGW4JHYyxnfn7ZOP6OvmaTppXyc+LbDEpw
 ez6yx4SJtRG1aNIvJnBk6kvD5NsqsSmwLnUwy7WkUQr67zcUS5cLx8tKl
 4SDUESKbMGII03Vxmt+v7gUzp6MnbRA3vi3t/7B4TgQUUDTdU4tvDZeTc
 ge/R1SRCWaNwn1iXUQ34e7BlwBOM+f+PFoaAbG+WMWGQRzWNw34kAO45a
 dbxWAMeNKrnYb1PSoRibjUr6rI8mcAMS6nGj4Lds5DWS8UruT1ZvVAoxA Q==;
X-CSE-ConnectionGUID: fqCmRi6iRKSH6AEpVu9Q0w==
X-CSE-MsgGUID: azoIg/T4TCOF9D2i76tP5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="73203164"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="73203164"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 23:22:58 -0700
X-CSE-ConnectionGUID: t1k7s3dPQqGNjgu9jBuzrA==
X-CSE-MsgGUID: Te/0Lna9QQCPFlyAMpxAcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="180998879"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 23:22:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 23:22:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 23:22:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.66)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 23:22:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nqf4daiceWluUKI9KS6KprDH8Ck0hQzVV3Dmq2fn0OU8kmhNytz5DWXihPgMG3b93R+fXRVVIaQH0Dqee9HgKZjcvxv+yJB2KTjDP0PhmsBtIBDF5c03HTmjbs82iPrs3Vd6I3/f/rFq1s8sJUdSSIFk5B/23fQp6sLGISO8rP3x46j6gM8CYg7sUREiVWAEK6Kl56s7wwcq89To34uNJ4egyQ7jl/EVtwkw1GfWtXGvNwt3o54Jnyg94nrFMqFy8DhiKqNP/IZ4FYXxa80d4UIleHpUdS3wrSsDj3wWmiCuPtKZ4UDi8zzxzpDA5BdEPlSZpD+Pi7QKS62ueZXHcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xlfs3cOGIU9OxFpvzH8BQ5roHd1nWhz2S75hI7B3oyo=;
 b=kmkalZgp6ZFAsfHogv73b2ESY/kUezDX5FFxNCP1YZHp3s6KWhlfsdTvm7Bi/7j5BDLr8b+v1kC2awqe14/eFluFG2fDPnJGHdRbL10TB10UFrCE6dKafh6AlBm8ejLc6WTqCjLDdtgyAW9NUS7/VN/cBaVfCAhqiM5+5OXkrS0vzdTF/svsaYOzOr9gQORZArZUrcK3RgOJ61RdM/q5DIQhSK+XF490L0pcrFuZEHe0by0Le3gHBBbefA1vnqAWzlfQCVauGz8ZEPaFUxoYRsZAiGHbCHKA6rwqqqNXM7Xf01qhqwtUq1u/2vjTB9YSyLwPB5iIc8wUqJBu7I9P6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB5820.namprd11.prod.outlook.com (2603:10b6:510:133::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.31; Fri, 30 May
 2025 06:22:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.025; Fri, 30 May 2025
 06:22:54 +0000
Message-ID: <987a8237-6d76-46e7-826a-d4751eab9d86@intel.com>
Date: Fri, 30 May 2025 11:52:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 03/17] drm/i915/display: Add pipe dmc registers and
 bits for DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250513051700.507389-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250513051700.507389-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB5820:EE_
X-MS-Office365-Filtering-Correlation-Id: f42dabb9-2f1f-4343-4f58-08dd9f42694f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M3JoQXFLaGRkcE9NdEtyaTFDdGwzWlVabklaOVNjNVhLU0VLWlB1UnVmd2M2?=
 =?utf-8?B?VlQ0NndvMFF2cEx5bFRoRTdRVkszcEN5M2Q4Z0RSKzV0OE52QUt6bVFxY1hF?=
 =?utf-8?B?REdONHhIdGs1b1h3NUhxdVVsNmtZbWQwWEk1a2NVVW5WTTJHT3k3VWZCOUJq?=
 =?utf-8?B?dk56M25BcjFMR0pLUUdiblhuNVdwZ3Ntd2dJQ1ZRdjVqWkd4Vlk1dUsxcGtF?=
 =?utf-8?B?MmdnSlpQNnB4WXdveHJzV0lpT2NVN2xQdFpqLzRDeWpuUWFwaFYzcFNaQ2lQ?=
 =?utf-8?B?aExvdzdNTmZUbmhHWmRBL2F0a3ZjaDhuUEsxelVZaWJ5c1lNKzdreVdMcUxD?=
 =?utf-8?B?RG1jdktLZFJ2Z3pOTEl6dForRnFnYTJtSWNPcG9ZclVIL3hSbGFZdkJjc3du?=
 =?utf-8?B?MWR5aktXZC9McnFiczVBNVkzb1B2b3RKQmZRZjVnYmpnT1pMOUlNV093Q0dL?=
 =?utf-8?B?OWw4S1IrZjNLWDlZT1BXK0pjZ21RdTRRTFJUSDdXaWRTdUJabmFSSEF5L2lT?=
 =?utf-8?B?elgrV1B5Q2tiNWRLLytML3djMTFiME9uMDJBd1o3MWJwb29EeXhPdlBzbito?=
 =?utf-8?B?dEQ1ajg0Zzc4N3hTcCtqZGdpWGo4YzJOZlVUMmNHZkhmR3RobER3eUsveDI0?=
 =?utf-8?B?RnFmZ0srNllweitpeUdtS2c5dmYwOW04ZmttZGsxU2hMZU1IQ3RaTGNHMlpx?=
 =?utf-8?B?akF6RWJyVGlGQjBuZm1mZkxGM3ZYVmloRGRVOE9JTDFXTlppRW1rRnJJOUxK?=
 =?utf-8?B?ZUtoMWYrQlQ3OCt0d2RMc3hMR3lLM0o1WjZLa0NFbmNUWnVUNWo5Q0UwZmNG?=
 =?utf-8?B?ZkhpeEpBUGI3VHhCZEpEOFQ4YzRYOHJuMVFBTDZBZElqVXBuVTNGZXNsUk95?=
 =?utf-8?B?RVhPMmFkVC81L2dGbzNlSHZSc08rUGRKWDdZbWtTZlFRM0xKdmp0TDJVTlo5?=
 =?utf-8?B?MmdBS0ZLUEV3N3RBTVQ4TjVpMTJEMWg4S2hUeEVxQ2VrRmJtWDlaS2s2UExP?=
 =?utf-8?B?ZzlteUFoYVo2WDVvenhuSyszL2gwc3ZVSGtsalFQYnBGS3U5K1VsY1g5bTQr?=
 =?utf-8?B?WUpzKzVXNkcxb1Vpa0lUb1hYd3VOVGdqNXh2a1RFODNwYjBRUGVoUVBrY0Fx?=
 =?utf-8?B?OThYWjRrWlVFeCtaQmo0djJHbDluNTNZZ21wWTIzN0c4ODdoVEcrUm1ZZDdV?=
 =?utf-8?B?THZaTmRhdExxMUdJMnVBOWFCMHdCSWYrd0F5bTl0bzMzd1hPN0Y0c3RFdGlW?=
 =?utf-8?B?NnJpd0RIRTBKc29PWm1vTTJUcFp1V0pKRURIOEEvNTlwcWNNUWxQTW9HbnN2?=
 =?utf-8?B?bjE2VExwaWYzWEpZdHJ1TEVwQWFSdUYzK3JPRTgzRnJzRTF1MVJqS2RxT0xi?=
 =?utf-8?B?WjFmaGVWMUk0RVNKbDJPOWFCdkcrMHpibVRDcG92KzEzN2laYm1QRHNBZE9n?=
 =?utf-8?B?S0wxaktTSWhzNisrc1pzcVQxL3BvNGdCcm05U0JwYUZUYjhDSUg4aDYxbm5q?=
 =?utf-8?B?YlFWUUkzd0NOWmxiZXhuaW1uWE1zYVg5c1VQU0tUWWtwYmcyN1g1dHlRNmZG?=
 =?utf-8?B?YU5vRDk1TUlJQTRSbjNkdmlJZUNTMDdtOGRSc2FPYXhNUjdsdllyQzlmNDdH?=
 =?utf-8?B?dFFjMWhMQ1VmdkxYODJnYlhaNEpMSHNVU200NVRiczNmRFUxVXRETVhLa0lz?=
 =?utf-8?B?UGhLcThjQ2lSN2lzWVdNSmVaTjVVbWdrY2FMUXNmemJaMFR3ZlpDNHU5cXAv?=
 =?utf-8?B?VndQZVZ6clZIdWxMVGp2a0J2NjhVMGhQaVA0cjg5d2xaQWJqU1FPb1FFSjNN?=
 =?utf-8?B?ZUNhaDRlSDE4QjNONDFRUWdiTEltMmVDUUo0anU4RGJJckcyclVGNUxxWjdU?=
 =?utf-8?B?T0EvNGw1a2gxanp4UDFtdENxMFk3NnFZYm1RZGlUelNtMHVldldERGszVXU3?=
 =?utf-8?Q?TOCQ+hXdIX4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3JBTCs3cU9zaTUvRk1DZ3lOVG5BVENaK1greXJIZ1ZRblR2M1VjRUZWd0Nq?=
 =?utf-8?B?ZHFqRExITzdhM0h3K0UvbURHM1lrdUdwYzdkM0NRNVRHUE9xdmdwVXhMTUh6?=
 =?utf-8?B?RlIycVhXWENhck5jeEQraXYxQmJsQmlKTktrK2dJNHdRY2YwSldmY0VtVTYv?=
 =?utf-8?B?dlhDQTZHY24wZGQvTDlVR3JOeUcxVTF4K1kwTWZZUGhoZ3JlYVYzSlpTUTg3?=
 =?utf-8?B?Y0xaTms0SEpUQ1h5Z1c0TitJYXVKdkx3RXFvSll6NWdwRTlPM1c1S0N4bVhT?=
 =?utf-8?B?QWNMTVQvNy9PYWdyYllHOStTMTFPcEdnWm56VGhPbGZSekZkWUxSZnlYMk9v?=
 =?utf-8?B?M2NwRTBROWc2UWxlWDhXT2dNMkJrT0RCYzRiN1FPT0hFNDhrbWZhY1VpYnlE?=
 =?utf-8?B?RERvMHpscEZzeXN2a1pTVXpJWTVuZGpmb0tPRUkvWGNqc0tnNE1sY1pSZ3JS?=
 =?utf-8?B?ZU1vNWQyMzRsU2hsK0pjTkN5aHBWZm92cVRENW9PTlFUYWhVdm9aaFlrMVRI?=
 =?utf-8?B?L1RqdDBoTllRTldHUW8vUG1ReC9oMTVSVU9waWFSQkorZTgrWVdEZ09Bbm5U?=
 =?utf-8?B?TXlqYUtEU2RBNUJPZ3pHSWhvajVuMkxhanZkQTVnK2kzMU1wUU5KLzFHVTJP?=
 =?utf-8?B?SzlkQXVCR1R1UHRmcERnSTJHWDVuZXNMRnZhWDBMM01sL0dST3BqNVRIN3dk?=
 =?utf-8?B?VmJEMWEwWXhOaUU1UjlWMHBoUm9hNzlwZlo1N2xUMGFiQ3QwTldOZE9IbGNr?=
 =?utf-8?B?WmNicHNCL3F1MVhiVkdIRVJXQ280RVplTlZiU2Y2QjBGaVVRZS9sZ0NrQk5F?=
 =?utf-8?B?bldmMzkwOXphL2hsVjNkazFqV0dQQVNjSWpmWkdwRmxQUnNFeTJlbS9mWWR1?=
 =?utf-8?B?eTBQV0hDdkUvNExZVUxkakladGNQKzBUVjhhOE9EN2lIY0IwdTVkdFFHMlh1?=
 =?utf-8?B?V3lhSDFTR0FrOFlrZkNXZGIwbnN0SXF0Y0ExT1hYNStVRmswN1orTmx2TmFi?=
 =?utf-8?B?WDQ4ZnY1QjlaY2E5MS9qWjFISnlnU0JhYWEwa2ZJNTdza0YxcisyQW9TOXpB?=
 =?utf-8?B?bzNlZXBOVkJQYkpicEc0RzNjSXhGTWN4NXdqeEFwQXloVm1mcFFVZVhkV2lx?=
 =?utf-8?B?Yml3RkkwMHVuMzNPbVZOcGlmQnJUUExyeEsvYnpYajFZNzNSWGtCWXJTUWM3?=
 =?utf-8?B?bjFYQTB4d2FkVUpiWk1yb2UxM0FuNHl6Zk5CbGptZEZ5M2dKU0hUYndhdEVt?=
 =?utf-8?B?OGRMN3RhaU4wRmtyZVhsMThWK203RG9tTWRPWGR6WC9HQ2cvQkVmT3lFV1Bs?=
 =?utf-8?B?cDFQVUk4aHQ0ZkJobDZMNERSQ2ZpTXRMbXVFVVNBYXgxeGxzeG9KaGlobGlV?=
 =?utf-8?B?L1lQQ3dKaTVlUnA5T3VscDBoRENRbzVxQk80RnpQUlZ4WTFibGs3WVY4dk40?=
 =?utf-8?B?MUtFUDdiUXEzTUs5YS9vNWY2NENGVHRyZUdGNWNXa1luUVpFQ1dHS0ZtdmZi?=
 =?utf-8?B?QUhoVFZuYlZJTnhiSlJ4d2xaREhCNEp5N2M3K0IvcFBFOEE0SzVtUGNrUEl0?=
 =?utf-8?B?Y0lNcjhwREdBT1FURFMzVlYrMGV2anhMOGNqSmd4aHVkOExCaHZXcGVCM3Jx?=
 =?utf-8?B?UWhheS9pMFgxUFFpMVVoVlR1eFdLWitPNTU0NE00Z1Rldk9IT1pkbExJMXFU?=
 =?utf-8?B?U0RvUld5dXk3N0NwOEt2RmJNM1dsaUM4ekd5L0dPZjJDTGV6WjAyTjBmN1I1?=
 =?utf-8?B?dVp3SHE3cHJ2Ky9JVTdHM0NmcUFhSzk4czNCT0Y4bXBCWktybVNYMFNzUm9t?=
 =?utf-8?B?dXdJcjJrQjJWMXpoWS9zMUJZNFlLdVYwdzRiTytUTHN5MGJqcEVwY1pNOW9z?=
 =?utf-8?B?UUFrRWhsZHVpZURZd2V2K04zZi9qZFZ3U2gzWW01T3JncGRCWGlzUmtMd3Zk?=
 =?utf-8?B?am5UVU5jdDQ2QlNHcUU1ZzZQQS9JbXBwV0dvZ2JqZHhoZ1ZhTzljdndJcFFL?=
 =?utf-8?B?VG51SVo2MzZZcUt5bXlpaXZZSXNhOHRlQnpKbWVRL2J1VVVwOGxnaVlOaEJo?=
 =?utf-8?B?RlhYc0RpeUJyNmNOYjBSSlUyNEdCTDJOVG5WREw5ODhTYWxxVUZkNEJFY3pB?=
 =?utf-8?B?WHZBa3hBMkRmbVpCNVdSWVJiU0pObUpiNUtMVlBVQkZLd0ZhTjJmR2RJczNQ?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f42dabb9-2f1f-4343-4f58-08dd9f42694f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2025 06:22:54.3534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 72yyresEM12dJ5eR8HwzZF3HHZuDzqaP5i+mb/QsIbVuLWPkUiT3SGPcUGFYR2J8MDNTrs9axk68eBRpC94a1iY38ZSgJVYR1qtAOluTgJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5820
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



On 5/13/2025 10:46 AM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add pipe dmc registers and  access bits for DC Balance params
> configuration and enablement.
>
> --v2:
> - Separate register definitions for transcoder and
> pipe dmc. (Ankit)
> - Use MMIO pipe macros instead of transcoder ones. (Ankit)
> - Remove dev_priv use. (Jani, Nikula)
>
> --v3:
> - Add all register address, from capital alphabet to small. (Ankit)
> - Add EVT CTL registers.
> - Add co-author tag.
> - Add event flag for Triggering DC Balance.
>
> Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 52 +++++++++++++++++++
>   1 file changed, 52 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index e16ea3f16ed8..137816cb9e9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -75,6 +75,7 @@
>   #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
>   #define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
>   #define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
> +#define DMC_EVT_CTL_EVENT_ID_ADAPTIVE_DC_BALANCE_TRIGGER	0x3D
>   /* An event handler scheduled to run at a 1 kHz frequency. */
>   #define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
>   
> @@ -117,4 +118,55 @@
>   #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
>   #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5f1a0
> +#define _PIPEDMC_DCB_CTL_B			0x5f5a0
> +#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
> +							   _PIPEDMC_DCB_CTL_B)
> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5f1bc
> +#define _PIPEDMC_DCB_VBLANK_B			0x5f5bc
> +#define PIPEDMC_DCB_VBLANK(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A,\
> +							   _PIPEDMC_DCB_VBLANK_B)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5f1b8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5f5b8
> +#define PIPEDMC_DCB_SLOPE(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A,\
> +							   _PIPEDMC_DCB_SLOPE_B)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5f1b4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5f5b4
> +#define PIPEDMC_DCB_GUARDBAND(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A,\
> +							   _PIPEDMC_DCB_GUARDBAND_B)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A		0x5f1ac
> +#define _PIPEDMC_DCB_MAX_INCREASE_B		0x5f5ac
> +#define PIPEDMC_DCB_MAX_INCREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A,\
> +							   _PIPEDMC_DCB_MAX_INCREASE_B)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A		0x5f1b0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B		0x5f5b0
> +#define PIPEDMC_DCB_MAX_DECREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A,\
> +							   _PIPEDMC_DCB_MAX_DECREASE_B)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5f1a4
> +#define _PIPEDMC_DCB_VMIN_B			0x5f5a4
> +#define PIPEDMC_DCB_VMIN(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A,\
> +							   _PIPEDMC_DCB_VMIN_B)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5f1a8
> +#define _PIPEDMC_DCB_VMAX_B			0x5f5a8
> +#define PIPEDMC_DCB_VMAX(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A,\
> +							   _PIPEDMC_DCB_VMAX_B)
> +
> +#define _PIPEDMC_DCB_DEBUG_A			0x5f1c0
> +#define _PIPEDMC_DCB_DEBUG_B			0x5f5c0
> +#define PIPEDMC_DCB_DEBUG(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_DCB_DEBUG_A,\
> +							   _PIPEDMC_DCB_DEBUG_B)
> +
> +#define _PIPEDMC_EVT_CTL_3_A			0x5f040
> +#define _PIPEDMC_EVT_CTL_3_B			0x5f440
> +#define PIPEDMC_EVT_CTL_3(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_EVT_CTL_3_A,\
> +							   _PIPEDMC_EVT_CTL_3_B)
> +
>   #endif /* __INTEL_DMC_REGS_H__ */
