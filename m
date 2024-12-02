Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1F39E02D0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 14:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707CF10E731;
	Mon,  2 Dec 2024 13:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUejBm3g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C7810E1B3;
 Mon,  2 Dec 2024 13:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733144772; x=1764680772;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=JMwNSJ6GPcBCxBY4yEmfhVk93YeAZbTpqbyW01CgTCM=;
 b=UUejBm3gDlI81l0R9N/SWvn+y1T0WmYnRImAH4JF02XksaghIGLLVwQT
 RXjZvl5NTIV0d9ad4fY964kqcm8w2QKNoyxElRKJEnwE9Yf47M249pX0V
 0yfKlaQOsFOnccsCSG8O4GOulpRi4wsk3j9w0Jc9NDJWsUWhdeypI0QvK
 B0TFyTQOFUWYaeBxvShQ3XrrjGheeJMWNl/aDM48jT4wfa2eBcEsFBHxr
 aaJy7fZjzy5t6q3gglseOx+oBDGw/Tr4qWN1IMIfHnk8lLuwggYsYLPGg
 sksT6v3w7WxZ8OTmvmRJVhbMoK8/4CQkaGFNZRR4NfGVTw/aAiHmsKDep w==;
X-CSE-ConnectionGUID: sBNTe/8qQwOoAQbyMwelsg==
X-CSE-MsgGUID: Ls8YEuBfRja7skHnCKAJ0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="50723658"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="50723658"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 05:06:12 -0800
X-CSE-ConnectionGUID: HpWKlK2XRruCHFypYxtjqQ==
X-CSE-MsgGUID: vjYdfvXzQUKmWv9TTa2+Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="130579654"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 05:06:11 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 05:06:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 05:06:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 05:06:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pqxLOKnBpvTJjsljDl3laugFm1IintDH3OFw6barZun4sImDs3E4ZTygF01hbuKi7CuIhHJg9CcWn81tEgvZBh+Qw1QIW4quH3hRdt72jRat82Su42tDrSsUvPQa1skVjIUk3pE0sA1k6H8gvEkiMUFKV4qAS1Cyh9FQLZ8jJYImPRK3C8r4ZylenrPaCGNyEOsm1luRcEqDlyEwpeC2rg3MWd1E3Y9F2V0a5xXNKUAK8m7XwXlBWQZhLnFlIjPcRBT2ifuTZVxp8clbpkk0K1kPqzjQC7JIJPZ0V++cZ3KTb7EzdfRWIJSH12VxSquAXpD0LODTA+eoxVrx8uHbnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLGcgDItn9XyJOC0n7Q+Vc8pYRjYhxO3aUpUyaBiQcQ=;
 b=r+ReNeTWdIVPX267L6GKwCSqfioydEGQADKnaIeUXvprXpAcjrsKzGqVq96yGp8TUg6enXM+PxkmLgow+rSWgtx7smvZVxgIh8YVBFF9m1ow65cgmL3NZvN4jysDyJvptgRUN4qO7cel+vOgFNSy2dp0WQ7EzBgKprCyvtZejXhV4uVF/P+r0Dx6AtNA84ZOOorcRipEtU/Nz0MK4KMjF1qDPCdQw/YCOWJZHsi4MScRcBe5+A2UGTJgKh8JC6nR7KxxQsbXqWggQKKPmY3N0ScEGL5JUz4AhHGZ0ieQL7MhdaQJA8v8gXqNYwkevaxU6ZjWXJ9kWyWQOwaS7aAvkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by CY5PR11MB6463.namprd11.prod.outlook.com (2603:10b6:930:31::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Mon, 2 Dec
 2024 13:06:02 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 13:06:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241202125437.1154945-1-jani.nikula@intel.com>
References: <20241202125437.1154945-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: remove unused for_each_crtc()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Mon, 2 Dec 2024 10:05:58 -0300
Message-ID: <173314475855.2905.12006003723478227624@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P221CA0003.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::8) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|CY5PR11MB6463:EE_
X-MS-Office365-Filtering-Correlation-Id: af32eb2a-badc-4683-6bc1-08dd12d212e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UnVjaFZ0WjBtKzdMMUExSXpPTnhlenNja1JtMUgzYlNsNUZJZ3p3RnVsazFH?=
 =?utf-8?B?V2tyVlBEdWxBanNmbmFzQlppalgyUDkxMFgzMjNjRjVBQlgxbzVFeUlKd1oy?=
 =?utf-8?B?a0x2bEdMbmFyZWZrbkxyOS9weTZtV09TRmZsTU9VMmRPdCtHSFArQnBqK1gr?=
 =?utf-8?B?eWRoZFhmMzhiRnBEazBFTktVNGJ4bG9IQmZrcFJTRW82TTYxMlRBMEN6R21h?=
 =?utf-8?B?TWhTQmlkejh6OHZDUGV3OVQxbTZiMmhiaEZSQkk2TGQ5SE1aNndBZmJvTmR0?=
 =?utf-8?B?Rit0RmlKQ0pZUjJpd3VZQUtpNm1GSy9COFpqODNZM0RENzNHZFNCTEFuYlVn?=
 =?utf-8?B?M01LZ2k5Y2RNRUl2cVhIdnZZYTNIK3hSVzFnZHlRb1FFMjZTQVpjTmUvbzZt?=
 =?utf-8?B?S0puaDduRkVHdXVwUTF3T01Wa3h2RFNDUkRhVzFLNmhHQjRSbVVtWFFobFh5?=
 =?utf-8?B?WHcwR29kbjhwSWhoTTdLSDRrMUxMUy9xSk1wU09pNUNrZUNIbE5YQmN5OFdT?=
 =?utf-8?B?M0thbFhSRTZmRDRmNld1NEZQMlI4S3AyOWswWjdWUnVrN1NlNk5jak1rOXVK?=
 =?utf-8?B?S2VsZDhoaTVPaHF4dVExSXV1YVJmdFNIbTV3SmN3S1hxbnNHcXlZYW9maVhY?=
 =?utf-8?B?VWF1N2dhcTlicVBmaVpZd0ZoelhDdWIzTkVSeEh5OTF4YVV2UW12d2dsTXdx?=
 =?utf-8?B?c3A5OGpMWnFxaEU4UCtLQmNObm9ZRFZMQkZZV1NDWHZpWHUvbDJZbGNkNnBt?=
 =?utf-8?B?OHN4V2RiZmNoQ0E1OW9ZUmEwUEpGcHg0L3A5Y01tSXRVbFNrb2MwNmNlQ0lG?=
 =?utf-8?B?SmNHQnlZZG9DSHliRFJMWUx3eUdsRlE4d0RETmJnY2VuNjZiVjF3b25pN05O?=
 =?utf-8?B?ZGVaTytmUTUxUnlsUkticmEyWnhyWjlScEVXN1JLbE1QNFVhMUVNczI1dXl4?=
 =?utf-8?B?M1hlNG9mdTRWZHdRN1pud051ZWNJS1ZxSUNuNGJQblBlZkhBSXU5VldUYk1l?=
 =?utf-8?B?R1FmQlo0ZCtXcXlzenFZMktzc3MrTFkrMXpSamNRNjJIamlQaldCSEVQWXVG?=
 =?utf-8?B?RS9pUHdQQzF4aldvSWdQRHg3TjlvbzgvRjFmUHlBVHdheUY2U0hQR05HZzJ2?=
 =?utf-8?B?TjZkSUF6NTdxTnMyMlhyMzgvRDRpOGRBVnM5Y1JzdFk0NnhjaVFydkQzbUFk?=
 =?utf-8?B?S2FUZFY3R0V0R3lZWU03Rnp3UlFDMG83UU9lZmY5V2h4bmNDZU1XUXVlVlNX?=
 =?utf-8?B?RWRvR2g2aVZCaEkvU1BWRDhTbzRKZlB5SDgxcVZJNE1kRDlzcDFPc3k2S21i?=
 =?utf-8?B?aHdMV0NwZnJmU2hqNTNYRXRXVzQxcGhFa3ZKWWgzUy90dm9SUEJ3eTlMNVZk?=
 =?utf-8?B?eGtxbGxUYkkrRjQxdHc5L2FtSGczY09zQ0hKMDc2WXYyTVZ2V2hKVDQ1Z1JQ?=
 =?utf-8?B?ZUhkdFZTbjBPU3ZUN2pFZEdWcWRoSE1qTzBXcHh0K2ZJc0hucUduK2NvNlVX?=
 =?utf-8?B?Z043RUpvdndVMWFUMmlldjhpTzQxWkpkaFBSazBReDBBT1pYOUw1MFNyZEZI?=
 =?utf-8?B?aC9pbHFtcUMvZ3RWckVEYlp5UmhXVU03aGxyanlaNENoNnZSZGlESUpmSGNL?=
 =?utf-8?B?WHBDZlFXUkFuZE5uaHg3a24zTy9mMGk5cnNaMmJ3TUNsMGZRN0toemwyTGQ4?=
 =?utf-8?B?N2dHQVN1VG5va1VSSFIxZGdyN1pOUGJGeXNJaUVCbWh6dmZ2TlJhaHpteTAz?=
 =?utf-8?B?bTkvYlYrNzI5UE0zT0VYcGthNmZkZjc0YWtqZ1ZpbHF0NHZGYWZoRkg0cklT?=
 =?utf-8?B?Yk5PYTk4VmF4WkIvVjhvdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVg3dkJ2R3pFcnBCVDg3TnRMS0ZGSUFQaE9DYTJlR1BhK29tTWR5NkF4YXBQ?=
 =?utf-8?B?RlVwYVNXZWJ4OTIvdUhPU0dyQlpJQzF2cXVSMVRodEVtTlFCbG5RVWI5S3N0?=
 =?utf-8?B?SGxOcDdUTHFYVjRlTnVIdmlMYzF1aUdFVzh2d1MrS3lHdVo1MlhnQjRFWHRu?=
 =?utf-8?B?NmFmOHVCQnRIa2s4eE1uNUlNamlsNTlidWNtSWp4Z1FQUUdTM2N1eEM3b3lD?=
 =?utf-8?B?ckJ5U1ZrWmpXdk9ibzVwYmFTT1Z2UGJzMG9IK3N3MSs1cGV4dUF3NWlXazdU?=
 =?utf-8?B?OUlGK3NsVHozcExMcGxjQy8rQ1d2TXlLa3ozbG05aVB5a1E4czNIQkpvU2VB?=
 =?utf-8?B?ZHpxT1k2U3JSVVZWcEQwd3ZKQVo0UHZQaFRFZVdEVkY4b3NlMWVhTmk0Nm00?=
 =?utf-8?B?L3cyazBodkxpb2N6WEZvckNPZ1ZwRk9mYk5rMHpTbVNFOThyTjUxcklLclpO?=
 =?utf-8?B?eFQzNzJYNUZIRXovMWNYRzlZUzE4Si9WbzNrZ0RqSkk5YXJaaHJ6TVZya0l6?=
 =?utf-8?B?TnRuaW1WSXFKbnpyR2tBRkJycEtwU2xwQkVFOHlrRUIycEg2T0JZeXp6Z0ls?=
 =?utf-8?B?TnlMZ2FkTXlaY2VyQTllZWxiTEJmNnBMWnN5dlBsTGZlcEFTNE9aSldKT1g3?=
 =?utf-8?B?ZVNQNEpNNkVNeHpGREZ3UnA2SHhOMWdiZi90SGNzNU5HMVlYZ0cvU1UrL29o?=
 =?utf-8?B?ZllPMjh3Y3RFVEJJOU9Uc3kvQW02elhLYjF1T0syUnFDR292RzFDMnAwWjRz?=
 =?utf-8?B?SWxhRFVXeGRUU2N5eXpyaUd6VHg1R21tS0NCL1B2Qm5QVWZBbnVHN2F2bS9Y?=
 =?utf-8?B?VlNuMlBwMzdmdlBVaWNlM21DWUFOWVdaN0dMSFBUZnA2Sm1HTHlWLzl3OXc1?=
 =?utf-8?B?Z2FZK3VZclFPRzdoNHorYkxtb0RtbUFDalNGSUd4dzZaSkxCRkwzdnZuMXFK?=
 =?utf-8?B?aVpZc1N4clU0MzJ3MHhYOTkwSTNVUlpaL2xJVDgyeHNPb1I4ZFM5SkNuOE92?=
 =?utf-8?B?NjB6RDBtdWpLU3ZZUGZyNG8rZVNuVi9UbnhBKzc1Zk1UeWRMTWhNajdtUFNJ?=
 =?utf-8?B?dDJtU1hFcVZQZEhUTi8vdkVPNFFob09Cc1FMQVpXdVJQN3ZqcENxVGhhcW9k?=
 =?utf-8?B?aVlYLzdkZWNXL0h5MUJFWWFCMFNIYzBkM3RiRVo5eXRHb1k0WiszQzFONzho?=
 =?utf-8?B?akM0czl6Mk5tLy9vNGdJMThES3VaYlVqRE9Cc1dteTdaVmtyN2RjcmRRTUtI?=
 =?utf-8?B?RzBkV3hEQW9rR0ZNUGo4KzlYQjZSbFo3MXhyVUp1ZkQyQjh5MDFBRzFjYUZM?=
 =?utf-8?B?aUQzMGpyV2d4WUp3NkF5MHlSL3dlWGc2SDBZTE5JcnJsYXJadUFvN1VGUi9o?=
 =?utf-8?B?Y29FRWJsQUU5UzBsdlBMN212djdSdUdlVlJRMmEwZzZBbmZEWTBsNFBZeTRt?=
 =?utf-8?B?a1hYSXJwS0pmbHpKOTZIcFZjYnUwNm1ldVVTYUNvSW1XOUp3TVpvYnhjMHFz?=
 =?utf-8?B?Qkx5SHpWeGFlVnZld3MwVFpvNHZTTjBIRm80aU1RUU5Kc1BXUlRBc21PZW1k?=
 =?utf-8?B?RVRZa1pTKzVMaWJlS0trQmRFT0I0aGQva3k5MVVYTlpHWEFEelB2QWdYY3Z2?=
 =?utf-8?B?VTJ3NTZXTDhIU1VPa2thdmdqazZQRHNDaHg5MnBDcnNOM0RPRUI5Z1ViYk8r?=
 =?utf-8?B?aHYrOWtNL0E1S3MrQklzWnFnbXovY2gwNzd4aGMyMzA1TStZTUVvelhrVHBC?=
 =?utf-8?B?anVzdG4xa3dTRHRHMUZwSURxenJnUUVXOGZqVnppSlJmMWtIN3VITzIxckR2?=
 =?utf-8?B?anlDV1MrR0NBbzUvQzFkYlNpb09DanRyNU1KY2NEV201NVpDWWQ5VHB1YTBQ?=
 =?utf-8?B?bW9RV1BJdXJuWXRXUjNnQ3pFRzUyY3hsT2dVOVJYaE1hNU05bHI1cUplOHVz?=
 =?utf-8?B?Tk9vWTRLbnFLMU5ObmJ5R0UzNWFLVW80NkxhdzB5TE50UFIzVW4rMEZnUGRk?=
 =?utf-8?B?RDZFVEx6TkpMTFhweDhUckJ5aC9oaU1Ca3JhWkJCeElMR3lVd2QxMmdTc01M?=
 =?utf-8?B?eW9jVnV0Q3ZHMDBhT2pEY05qMWdQWVZyVFhJVE5ZSnFGR0QwWW1aa0ZzL2NO?=
 =?utf-8?B?S2MyR0ZVWks2MGtROHBqMHd2a1F6dVRSaGVjT1VGSHBqTGZLaUlRNHdjRlJN?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af32eb2a-badc-4683-6bc1-08dd12d212e8
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 13:06:02.7127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tn+UBP50oYLI3L/hp21qm/LWu2YUci59+307GlGKjVCcXU+QqvSj5Wttz8o9yNnN2B0kuvMrq1sVcLST7QzExQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6463
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

Quoting Jani Nikula (2024-12-02 09:54:37-03:00)
>This is essentially a duplicate of drm_for_each_crtc() anyway. Remove.

And it looks like commit 08dfd243abac ("drm/i915: Clean up
intel_fbdev_init_bios() a bit") was the one that made it unused.

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display.h | 3 ---
> 1 file changed, 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/dr=
m/i915/display/intel_display.h
>index caef04f655c5..49a246feb1ae 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.h
>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>@@ -238,9 +238,6 @@ enum phy_fia {
>         for ((__phy) =3D PHY_A; (__phy) < I915_MAX_PHYS; (__phy)++)      =
  \
>                 for_each_if((__phys_mask) & BIT(__phy))
>=20
>-#define for_each_crtc(dev, crtc) \
>-        list_for_each_entry(crtc, &(dev)->mode_config.crtc_list, head)
>-
> #define for_each_intel_plane(dev, intel_plane) \
>         list_for_each_entry(intel_plane,                        \
>                             &(dev)->mode_config.plane_list,        \
>--=20
>2.39.5
>
