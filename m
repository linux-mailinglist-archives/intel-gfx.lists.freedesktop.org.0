Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC386474E1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 18:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1B410E1C6;
	Thu,  8 Dec 2022 17:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3320D10E1C6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 17:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670519522; x=1702055522;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eWFHioq7OYyaoradqozGLKNeJO5gbucFYqly8gJstTs=;
 b=Slqp34ida6ONXCDJwiw2d19zBCwIIiaQlBYABq2EkYEIAzZfztZqp7Mg
 RHHRt7aRRhJVUf8/BoU9HNSvS6K508jvvow9H/rGkfhCoC1wHpQujF73B
 6iYcL69hoQTeEqFNpEvooVe0b6STBBAxDJWu/tBlYMyNn9u2rYHaw7AwJ
 9ihQni1pSarNjsItBwSYt7YHA/3sbKlCZdridu+mfHaiFRQmw0T3/bPjN
 kDupuuWR5oYBVN/SvhTkE76f1QykLkFy3xJoU4ME5qiiWVV/hmukILBTM
 IjJWq/cbZKoAoOkSC93cvtTbD6Wdd+NqkqKnhHAWLUsLf5cd8I/+DxKqW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381542979"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="381542979"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 09:08:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="715684543"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="715684543"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 08 Dec 2022 09:08:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 09:08:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 09:08:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 09:08:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B5JZy/bHHBk9tLlEf/PEo2wCjkNXABe2qvUn9wtmn7WX3emJr9/2Qm6auz6jgvzsrHLVWN0O9oahCkQf/Nv81jtrNMBxf1zXr1+gVF9Q7gdzoJWk0D4UYgQFLhwrg3s84OA5kJ5dH5+YcMBYnAcegeBOEjddv/5tJ40Qb5vL1JBGz5Ma1z4O9wMLysf9wssSQ0hH7ow7dymwFF1IToB8uQoSWTOQycu8xgKd8oEZMaM6VsjXvPxa3mf7ADXXFmz3eqVOTKVwKAwWMUpVvShEZYFg/HkCDRz64feqPX4wmj6ck/NCPgEZRQekD/7b9ppFFtYpsFt6olQIJFccJeOyWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+yRFdLVa6grh07hKvUFVvTbFRq/1jfmMIYh+4DC0YE=;
 b=cxxm7MCeZDXCpx3DHhmM2y0wpUk25yzOKqdmEGQ3vEFDWtZ/YAsI3eBua3bT22e1bZr70aPH3LBDVMSdPxxY3DfUj9ou8Un5/XU+LSDftKd8KzFcrEoQ/3Vp4MJ/c55S2ixzB+JE89ekvsKiBiAXBGyzYjEclOA1kxIP44JXe0XbvznP9pHFBY5c1C7JtjDe/+gCDa3swKssZ0+vvPMAy+h1o+66NV9gxECROcb/9Mnzf48UyOUP4Byu7CHotH1OihHOHlW7NMV32ORRcnnXvBGmjVHiXWkFShecl+6vYhNLHx54Vm5cRx/2waNHI8ZMDaMQDLFEvdB5dhSD4HXAAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Thu, 8 Dec 2022 17:08:49 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 17:08:48 +0000
Date: Thu, 8 Dec 2022 09:08:46 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <joonas.lahtinen@intel.com>
Message-ID: <Y5IaHmRySwSipUSd@unerlige-ril>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
 <20221201010535.1097741-5-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221201010535.1097741-5-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY5PR13CA0016.namprd13.prod.outlook.com
 (2603:10b6:a03:180::29) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SN7PR11MB7466:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f27c0f8-f17d-4df6-1185-08dad93edf3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z6hGLHR/EwlUDaKlmIEx8PlbV6j7qF9QTL/TUSGrA6fcxZDiwqucuXBh5QdFdIWOjUF5Cp6rDrf87OYqZTuPGACnX616xnthyDHCFqMWZhAYKzazCMJPIQgR1xuHf/W7nQmpBj39L7TEwQ7uHYGRMEbsDjfPrdJ56N14rsmAAWbAqYC1fXHNWAWgu80I6JE+UAKvEpoE5QXlddUNmhGGp2iXdyc1n4RsoWkp0uKqY+9YfWiqPqM49RMg+HnuBqntvvGGboRgUmb+qXi9NXK3Onrjm9TtPKWbWF8jQVVq5ZC1Vqiu5zmlvArKYTLnw30FlYd6zS84kg4iYS8FGi/CrYZSaVeakMYfK/CGNRCCyRSEVcns8FvfQXy29g6cw18BCjTDoLd3MuyX/SVWby1VlgWUn4PVvnK17XC4JOF2JN5WPsTNtTDvne0l4zSh0y4pGlt7r1IUunRlrJAVPLlfCEz3ux8XCBuhVO/s5LmrbIlK/tZzRjiGbHVjIkTOqDxnxPzd/7Pz9pgHKZmuSv7Tvdyv+Ex9+C3dWFfo6XPmnJTYyI4Ys3+81T7E07mrRFMQPFUK71ZAdQ8xHBLnV+af3PAWmOb+ULy/9Tb+/YSinkc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(39860400002)(136003)(396003)(376002)(451199015)(6506007)(86362001)(6512007)(9686003)(6486002)(6636002)(478600001)(316002)(966005)(186003)(41300700001)(8676002)(66946007)(66556008)(66476007)(83380400001)(4744005)(8936002)(5660300002)(33716001)(4326008)(2906002)(107886003)(26005)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVozRUhrTU1CaVg0TDU1akVORElDMDZHcUNPZDhEMkg0a294Rjh5L3hsb3NS?=
 =?utf-8?B?VmVPY0lNd05BdG9keXBRZXoyTnU2OVVSUUlvQVUyOGY2K3ZKV3JyUUorWXBR?=
 =?utf-8?B?YndwR2IwbjhYaXhXdWRpbTdYaGlJV2ViVWIwTzN3MkgyNWh3RmNDQWJIZHRk?=
 =?utf-8?B?a2pKSFQ5MWE2VHFiQ1RsTHV5L0NuMG9uVWZNZHdDUHFoRFduUmVSdk9aYlVP?=
 =?utf-8?B?VE43Z0x4VXVsOHJnaldUaktpUzRIZXlsUElzb3B6eHY2ZVJORTRaZ0ZpZFlr?=
 =?utf-8?B?YnpqY05XRUpKdXhPT0pQYzkzM2E1UEdzT3lqTHVSb0hYUm1IZE1kYUpCUGxT?=
 =?utf-8?B?N2JIOCtYTFlJL0MzMUI1cjMwY3pweXBTdkpiSnFkVFQyOWc2Ukkra3JFOWJQ?=
 =?utf-8?B?OU5Yc1FFTEVaZkZyNUFMaGREZjhkMFNFNzlKU01nT1F2MWpVYzN1QjU5NjNU?=
 =?utf-8?B?YlVSY3cxZWZIeVpKRFdZaFdjNEtkcWpFaXNKZ0hFMDJjU3RyeXkyc1pwVUly?=
 =?utf-8?B?aldoQnNEK0dSTGlVdnBGMjBaMUFrMWlKUWE1VzRHYlVEWEt4ck9iWUc0d2JR?=
 =?utf-8?B?ci96RkRkL1lxNnBRQ0NpYjZmTEpqSmdlWTJObzJxMzFjaG12SkJ2Z3QwRHNT?=
 =?utf-8?B?NnFveFQxSG5NREhSNnpvUzhmWXQwSVozelk3UGp6UkdBakliamFFK3VvSEVM?=
 =?utf-8?B?eVBpQk1XMjk3Q2R4MFJmWTU2S0hyV0ppbkRUdnJxdUlQZHJFSkRBRVY3RG5w?=
 =?utf-8?B?eEFES09xNThmZTR0K3ZnVFkzVnkwSFM4YVQ5VTJCdVJ4VEQ4YUh3SG53Rjkz?=
 =?utf-8?B?UjNpWnZpNWdzR2pkNEsxcHJPbjBWREJBRFFTUmU2UzQxYldsSXdBNnhQK3RO?=
 =?utf-8?B?WmhJVkpCL0JGYTlHTlpSeDFKNnMvblFRbVp0YWpMMTFkZG5WU093SFNHbk1t?=
 =?utf-8?B?REVxU0Zhc2tSNFptTWlNdHY4WVZFVjA1b0llOVdsUHFlNFM5eDlwT3pCNnhQ?=
 =?utf-8?B?QXhwQWdPNkFDVll1dE9KRnF5OWtUYk5FaTdaaC9oNk5tNkNQU2JBdnJsblVa?=
 =?utf-8?B?WG5ld3pCdDYrMTROUGI1RldmTWhQdG5mUTdJaFhTTUh5YjBMQVgzV09oQlBs?=
 =?utf-8?B?K2NkcG00YkJjVGZkUnZVYTIvd2NnaG1PMVk1ckhWZ2FpQllLalJvSllnTTZ0?=
 =?utf-8?B?c0xjVXhCbHlkeDhEbnFHMUhGdUtXT1JyTUtpa2JmSUNCUS9GaGRLbGRjRmp4?=
 =?utf-8?B?YUQvT3hSakxqRVFaYmo3VG9lbXQwQlJWb1B4WGhtZWxJS1Y1Wk5xQXpaMWV3?=
 =?utf-8?B?LzBoTUMwR21Lc1JlZjQwMlZ0S0dJMEZ2eEpaT0dhbk1MUitRMllBTzZLTlZz?=
 =?utf-8?B?eDNzTE15QlZvYzdTMitvaUMvWmY0NXpyYXNIbTc3N1lYT3pXdFNaRDNNNUQ3?=
 =?utf-8?B?S3dKM0lWWmh0ek9yeGJXVTBtaEFORGtyRlJUYlJoYnJIcEZENlJqd1dBeWFE?=
 =?utf-8?B?NUhrZ1hlV3VITm5ZVG9NWWY0Lzd6bms1THlXaitnV3ZKQ1F2MmNhR3BvRTRH?=
 =?utf-8?B?QlVPbWdSaFNNS1hJdTd3bE04OGpZY05nd1I3bGFlRHZUN2tKMmFhaUJBbExv?=
 =?utf-8?B?YjJXcW41SEVYS3BwSlkwakhLSGRRQU4ydFlJS0dmS2R1WTBwNDl6cUUzb3Bk?=
 =?utf-8?B?TUVJL1A5MldkS09iK2ZlZGRNbnpzSzk0aU4vczNqaE9ob29hZEZsRWl4K1Ir?=
 =?utf-8?B?VEtqRWNMWVhXNjl5N3RpNDE5MjZEOEZ5Vy9PbHlzdFMyL2ZxelhYQVZOOVB5?=
 =?utf-8?B?d3BYc2hHeVlpT24wZmR6THpjNXJCSytjTEVvUlBLc0o2Z0RqYm5nbXJmeXRq?=
 =?utf-8?B?ckNwQjF5QTBjRVJtdk5oaW4xTUM3dUZMRXVtOVZ2dDkzdDU2S1RoQ0s2VFc5?=
 =?utf-8?B?SEwvN3lBek12ODRNMmFHNjl6M2RCb2ZCSWlTdS9ud3RnREM5MnF1Qy9TdlJ3?=
 =?utf-8?B?eWpCdmNReDJHY1prWFljRXBwbCtvRnAwK0ZiRlgrMEk2Z2Fialc1L0tCc2hh?=
 =?utf-8?B?WDllZDMxMjZXQUVsSk1JbHY4dG5UQStERDB6WmgwZktyeElQN1U3a2hYSU9M?=
 =?utf-8?B?aHlyM05IREpUSFNyVHYwU2dManJTWnpRenREZkhZSXl3U2ZNZ1YzNFhjUlpH?=
 =?utf-8?Q?5SYosW5JRd+9+3eX6E8ZplQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f27c0f8-f17d-4df6-1185-08dad93edf3b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 17:08:48.7267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3B206zLwsfcmny3TSdC+aX6+Z+FrEz8PbpY/rxc8qEV2I034A2qAnOXYMR+ox81zO1UsIqaVRMVbsLy4F2OdApGxRLaWIWnNQ5JmY1/3taA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: Add OA support by
 enabling 32 bit OAG formats for MTL
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

On Wed, Nov 30, 2022 at 05:05:35PM -0800, Umesh Nerlige Ramappa wrote:
>Without an entry in oa_init_supported_formats, OA will not be functional
>in MTL. Enable OA support by enabling 32 bit OAG formats for MTL.
>
Thanks Lionel for sharing the Mesa MR for MTL -
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/20228

Regards,
Umesh

>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 8369ae4b850d..a735b9540113 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -4772,6 +4772,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
> 		break;
>
> 	case INTEL_DG2:
>+	case INTEL_METEORLAKE:
> 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
> 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
> 		break;
>-- 
>2.36.1
>
