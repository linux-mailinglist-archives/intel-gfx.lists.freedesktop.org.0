Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA715FF47A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 22:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B2110E0B6;
	Fri, 14 Oct 2022 20:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB14910E0B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 20:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665778882; x=1697314882;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hi0Qgt3X/qdxNLm9hd1DPNcjWsS0F3wdK6+wk53+eN0=;
 b=knS278XymFu5cOk1k/dB4EGomxWgesUEPwoLmj/14j4dIBhvAztCRBMG
 D1954DXn3b6uRE1SA8uImaszvYgAOYVoJiToNTSllUUCjhr69M3ddHYLb
 AUj8g6lIPb/7uQ1DVdfC2V06NkTPT30A3SkJfkt+y4RPmguZ+e7l0PUoq
 A1neqqKmiaBOMkjccsLVhq9c5e5HiAIyfNlMh3eTgndcAr5UKEOt5XAdZ
 v2q6E5hjgOAjoCjE409WSj8C9DjJyYLhGYJRxoDocJTUcpYZnuTmvhVgK
 nQZOrxMYiOd2bQWqn3pf3aqfArJlzyK9/b3Gvnwd8Je6vnTCrbvXfz3S0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="305452721"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="305452721"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 13:21:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="578750316"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="578750316"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 14 Oct 2022 13:21:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 13:21:21 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 13:21:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 13:21:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 13:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7UCmIYVLwtemU/efw9kzG5ubnSs6HVWX2CxFWtRzMRrdetAlP1zPw/V1z6qGMNoXt2vqPgtmP3GJejhwVmXZTuA1n+HWqcY2c670vZY5PB/qE6qD28YAdEdw27RcR7qdrMSfMdv8s+CBcsJj9xIC5QnxFMRFat6HB1ZSDgQnYlEoBV18fsTC2HRURQ/IzBlZh9ulzHqsV8JulKvJkkn+31Zjp94I+9whliME1jNqxWapYyiv4TRFt8q7MWfQm00Wk1phWqQLPNFad5NuJDoJ1gegx3SViIEIQunCYLpxMrHYrjBZmAIVu5LDzXsJw0UnkwPyeii3tvnbSNK8Kx+dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bu8+6EjXlHOCmD4v4n21qKM1rQVdhwdH660YLkHdmUY=;
 b=CGx/utE+y8e+p+jRyrQMMoGbgm5szKzovdlVcXczfjPiFKBQE2M3lMZy9taDAQftwcNUBaG4TklgbWWuvKMjdlM2MvkgeEbHNilVyPLOTuRYbgz5r1l0gOz7rf/W09G15TdAirKn5Bc/hkIrBsJPJXCCbuD1zxT2bvoZdN7TnibWnXDgJ/Luy1yNTDw8HqB8riP4Uja2Wf81XxX3aqC8dL3N4bCOYdfYFujGE0fJcFIhOpGUGEFITSI3e5J7MrJJwbRX8X2A311B5ADhrYl/Nay+QiZSNgGgzSG9jmEjsnfOVdWQL/+NVbwITtwgSolQTKlDVKX/kUQ2AYYsnP11AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MN0PR11MB6033.namprd11.prod.outlook.com (2603:10b6:208:374::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Fri, 14 Oct
 2022 20:21:18 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 20:21:18 +0000
Message-ID: <84bec81c-0077-60d7-4d3c-210ad739e42c@intel.com>
Date: Fri, 14 Oct 2022 13:21:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221013161416.3684904-1-andrzej.hajda@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221013161416.3684904-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR21CA0014.namprd21.prod.outlook.com
 (2603:10b6:a03:114::24) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MN0PR11MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: 490fd18e-83cb-422d-b54b-08daae21a702
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xrg9YQ2Pbg3ssP35BhbLXzraGUUkoRY/+wlrXqFeAycCrh3cQdniKSwGNUAruSOIMBNpEQCvY2mLT4JcordfL6fnblQLXRAwfBkZ+ZsIGSx5ERLNZTfQf1X8eeVxt4z0nQVlbh2WxtdA6eYksRSLYeWKdp/hoMEbnjohDv9rYfcXA0gEeDdC8tGCjLC0w/m5M2Y82pdKLilReRAuKgBG5pFSROTaG5Sc6L2HWjBRzLSjztuBA+wnKKNqWJ2KfuVV+J2T1yIRaSAw9hha43h1SMRHHb7Tb/7YB8FIbLHaC/1ORNcbPa407ok7GmXqCwe9RHP3jlTxQYLOJI5/cPXGqKAvWq68RXbJ66ys4xin5Z6rDGPzwSNeYsYa4b6CS+itdCIILwbWvGydNdOHADRzoo2BUKn3/xhmVCPX34PrlNTETG30snz8ky/NjyrY10kEiyNmA1NO7Njl4r2W9QqdorJLZ7Rs14MAxkQ03KVv862kGm3wbiBwFj1/eD8Hyx36qM3JzLh6Gwfh4mdOo/oh95vDEocwd7Y805IIgR3XbXfoslYRgcU7t65XnLkRVQoX1EWYoz6bpGrOOoxZlat9OkvKL5iu3fm5HBbxDqwibyrZEM8ijV+viQs2CM/axW5F4rqFaTiibxomdaq1Mj/GBAFKSrFrsYiLZuB2NhN+WuJOgb4zlaj3+S53oaivLLt0ySB2TCPi6s5aXNv/BdTg8UeAyOi8tufiCpgfog4dMJe1KkuOiC6BShLwfu7Hz9z+Ab4G/SVc2FV7l6COtMs5Bod2aKXBvZr5bKAqGdbBF7g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199015)(54906003)(316002)(478600001)(6486002)(31686004)(66476007)(66946007)(66556008)(8676002)(4326008)(8936002)(26005)(41300700001)(186003)(5660300002)(6506007)(2906002)(2616005)(38100700002)(36756003)(83380400001)(6512007)(82960400001)(31696002)(53546011)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUs0Qm12SjlURjhUeVhCeVl1TGsrMlZMS3Voc1lqdllIVTNyNXhTcmpOTE1x?=
 =?utf-8?B?bnVNTTNzZ2kyK0R1MFU4Z1dyYjhXRDd1dWliSmFhcmorUTlKNXpwdmpNMXlZ?=
 =?utf-8?B?b2k3YnVSWU1Xd051Z2RiY3JESGVvcURta0tTcGpibWw5aEFPQjRaMzdMZEFa?=
 =?utf-8?B?YmlhQ2poblIrbjZ3MmNvNmZibEc1UXZxZ2tNUmoxYjZEVnZIVkR5V1gwdUZI?=
 =?utf-8?B?OVUwNjkzd2RwMEpCS0x3UXNidDFwenVQTE9JNjRoYjJwNFgzOWxGRldETnVY?=
 =?utf-8?B?TGNVbGlRL0FXWkljTTQ3SUxrbytENWVYd0ZSSW9kak5iZXp2Kzd2c085a2Ix?=
 =?utf-8?B?OHBnc2hoa1o4c0NnWm1tZzVTQ2MvYmxabklWdEpndDkyUlorc0tsOHlOTXZZ?=
 =?utf-8?B?djRWTGh0b0VLMEpOUlJ2OUZROHVOWEdxbUNZZ0JDK1hKaWtRdzV6ZE1VMG5T?=
 =?utf-8?B?SEJGNVhuMHk1SHhXYWU5ZDJldXhxWEF2UUtFNUNZVU5SK2pTZ3pjUG1GYjI0?=
 =?utf-8?B?TlR2b3dCRXF1djc4RTF6UkxXSHJzWFFjdGlLanJwSy81eEpRVjZGQ3hidEs5?=
 =?utf-8?B?WU0xR2hBb0JkM0xaRVloR3hWZEZ3cHZ4ZndzVnE3Y0dFaW9rR1lBTVJJbURS?=
 =?utf-8?B?NUg3RW5IUjZhQU5IdUVtd2RZaDZRRWRmbzBHY1BmOEJLaEVQdjM3bGZMNml4?=
 =?utf-8?B?ZW9TaWRyb01tYm9sVEpRQUlaMzNHVG9TTFQ5aWVqRkRWb0tOY29IcDV0OEdU?=
 =?utf-8?B?blN0aTgwUTh2ektsRmFDS1V1UTlsT01OSVc1WmtpOCtVTVNCZTI3VXlEcmU2?=
 =?utf-8?B?U1Z1TUxSbUZHaTR1UnRNVFpSMnFGMmlFb1lRWmtsd0J0M2dDcTA4blNIbnhG?=
 =?utf-8?B?RFZUSlgybUE3Y2lYSThXdW42Q1RSVW51Y1NtSzhDbW9RR3puWkVuT2MzZUJI?=
 =?utf-8?B?LzhmSitXMm5PMFMvRUhJRzVOOUJrUGFWZ1BCWDRrTGlselEyb3RadmxCNUpB?=
 =?utf-8?B?Lzg1a1ovN3ltUC9TSVliTW54ZnNDSzJNcFBJd2t1cTc1Z3NVVU1IUDk1NjZO?=
 =?utf-8?B?NDZuUG1wbyswQThLODdqZ0hIM0gvNkxlMHJKSDVsS1N0VUJ6VjZnYS9Gek9h?=
 =?utf-8?B?M0FKVDIvZjg0Q3NNQytBYzdGYWlQY2Z4bU1mQjlUYTRVSzlmMElrRDdsVjBq?=
 =?utf-8?B?ZmtpdlU1dlBWU3dCZGFKK0VPR0RyZkpwMVlyYUJ0L2pPT2I5RjltMlFlYXZT?=
 =?utf-8?B?K3ZwRElqUk5pQlVxNXlueU9SWjJwbzZ6R21rYUptZGVqNFg4YWNpdmdERWhY?=
 =?utf-8?B?VVhwNnhPRGpyblNqQkY0dEprTHdZb05ObkhRSWN5RlZQM2FpYnk2YnVPNDdX?=
 =?utf-8?B?TW1NYTIraUs5bXBnNVhVZzBZQ2FyNFp3Wk0wUGxyRGlGczFQSFBMd1FNSzNW?=
 =?utf-8?B?dEo3YjF2MVM3S055K1JVdTVIMjFOQzhhK0I4NW9KL2lxbzhob3I1QSsraHZi?=
 =?utf-8?B?bGhEMFpSOTJYdGxMSUY0Q1grWW9XUnBnMDVNOXJUYi93dmtVbE1iNUFya1dJ?=
 =?utf-8?B?N3UzeWF1UjdXdGhXWkRtRnFjZkZZL2NRVHc1ZEtzaU5FL1Z0Q2pVeTdhckwx?=
 =?utf-8?B?UzNOK0pSeDhmWUZJalltZjZsM254RjNXODNYS2xCOE5hQUhxQW9pQm1YaHRM?=
 =?utf-8?B?SW1lM09wTTBTZWpTZzdXa0lqWWtNaXdUNWVyT3Q2UWV4cEpqN2JDZitVenp5?=
 =?utf-8?B?VUwxSStlWk9UbmRCUktxRU41V0NqUGY1T0FNVklqRmtLWGlKTkpUY01Sbkkz?=
 =?utf-8?B?UFBweEJzWUh0aHB4ZytXYjRIdXIzZTFoSmI0SExBQittQzZNLzgveU0zOWhE?=
 =?utf-8?B?UmVyYzhhdEl3cU5SSmZYaXZNZk1ZamUyQXp4VUtObnpWVlRmTGg5TCtiSkw2?=
 =?utf-8?B?VGpjeWJDNHZRWjB4OWt5c2NHT1VWNTI5V00zWWtTZDc2Z21JcWdDWjljSzFj?=
 =?utf-8?B?NEl1SHJ6Q0hBVTluaEVSc0tTa2srcHZzNWQ1aEErSDVVUGdsRnEreVpwTXpC?=
 =?utf-8?B?eTBTbTFBaTd6QzRNOHJad1FPZGp5aFhNbHprbGt6MllIK09vQy9Yc21CRTRl?=
 =?utf-8?B?QlN0Q3gyWkNIOFpZbmhHNVRrc2hRYXlYSkhtR01FaGtyWW5ibDJxVE1YQTd1?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 490fd18e-83cb-422d-b54b-08daae21a702
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 20:21:18.6879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Fn5WRls1F5vWf3NC1Q2a+64i9U/WuoXQp/f4NeRvC7d/nDEvFrptydK+7f8I6Iqm1o8z5Z0h0CuK+Q7XMmnhQZZ4cEIrAmVScV5Si2Kr1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/1915/guc: enable engine reset on CAT
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

On 10/13/2022 09:14, Andrzej Hajda wrote:
> In case of catastrophic errors GuC is able to initate engine
> reset immediately, instead of waiting for timeout.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> Hi all,
>
> I am new in the subject, so please be polite if this is mistake.
> Tests shows that it allows to save about 7 seconds on the machine
> (Raptor Lake) in case of CAT.
> I am not aware of scenario in which would be reasonable to keep
> the engine in hung state.
> On the other side I am not sure if there should not be constraints
> on firmware version.
Technically there is. The feature was added in GuC v67. At present the 
earliest supported firmware version is 69 so it won't actually cause a 
break (or at least, not a new break). However, there is a task in 
progress to re-add support for v62 because 62 is out in the wild. So 
this change should really be wrapped with:
         if (GET_UC_VER(guc) >= MAKE_UC_VER(67, 0, 0))

There is also a potential impact for SRIOV customers. If one KMD wants 
reset-on-fault but another KMD (e.g. Windows) does not, that would be a 
problem. Will need to discuss this with the Windows team.

John.

>
> Regards
> Andrzej
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
>   2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 27b09ba1d295fc..2adcdf13db1911 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -211,7 +211,7 @@ static u32 guc_ctl_debug_flags(struct intel_guc *guc)
>   
>   static u32 guc_ctl_feature_flags(struct intel_guc *guc)
>   {
> -	u32 flags = 0;
> +	u32 flags = GUC_CTL_ENABLE_ENGINE_RESET_ON_CAT;
>   
>   	if (!intel_guc_submission_is_used(guc))
>   		flags |= GUC_CTL_DISABLE_SCHEDULER;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index e7a7fb450f442a..96f3116e263cdf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -109,6 +109,7 @@
>   
>   #define GUC_CTL_FEATURE			2
>   #define   GUC_CTL_ENABLE_SLPC		BIT(2)
> +#define   GUC_CTL_ENABLE_ENGINE_RESET_ON_CAT BIT(8)
>   #define   GUC_CTL_DISABLE_SCHEDULER	BIT(14)
>   
>   #define GUC_CTL_DEBUG			3

