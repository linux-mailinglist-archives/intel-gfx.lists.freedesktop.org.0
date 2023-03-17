Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CECA6BE73C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 11:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C186210EEDA;
	Fri, 17 Mar 2023 10:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F2010EECB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 10:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679050122; x=1710586122;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HXmBt27G5ZaCaUfU98G8yQtPwQFfK/rrWZXT8lV5+Xc=;
 b=j7Yl2LXS+tzTHJH2dScqgAb8ajNGlOrcF+7hOl29jPgJ34Les/vd4PcX
 6fk+Iu0XhNP3qBiGk7RIfoRgQASGSPjdqzuySWzxWKxdJSi4fj1GicdaL
 +cL3U5mg9qGUzoWXAjcSN7eReiMW6WkgXXG8YGv4RSjfyync6xumZggPj
 D4cIFMN87AuUMYaPPqECM8ZfYgWqpR7Ecs27sNAfyFTnWrNwkiO3+h4mJ
 T/CU9GMCTudEYxqfnnFvoDt1WpSAX5IlLAad2i1fYV1OkqdJ4cDdXQTNm
 +zB+mzwiUfZtmOH26E0Y8eiZW6tPpgB2PF4QvWhZyr1OrQ5VsWeORC0mw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="336934203"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="336934203"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 03:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="854408904"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="854408904"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 17 Mar 2023 03:48:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 03:48:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 03:48:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 03:48:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 03:48:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SyUAgl40luBZKYSoNABqeMCwwlVNdQwAv9zydm0/7EkQxl1J+X3wm0KkQHaFQPaoPQdEExU1otAtqZ/vozRE+IXquFzsthNYkhFmyNLsjo6hwxW93kffUqkKsou4rjlfrnPbN4nGDIuMExxlNLb7MhsIxQ/P3dr1Dvd+/h+ijM4iV4hZOowA3D7Nku6GyiPdBRLmQOxguVqaUbVEX4Q7JNjd74AZ/JuckWnZny2/4nhbEGAKN/18Kx/ggz1VMeJh8nEyPtEgflOwo4Dh+GwBMDWh7EwJ/Os4T2x+eH0D0QOYAkQMnGj6endpVuH1jnAmjORUT4WcByjspGIJJ7CWPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHl2yRpEpN3h4U6wWdSopea2JB9YM5v+wX3647GP2mI=;
 b=HGa24Ny8PTSvvD6Y0gB2cif7x9PCfxmbkGm4w2KumktuDi5KgEU7HZzc1QX4cC+3wYLYm/QMnZ531J6dy/4emFOuwv8wvgLtWToQeXSclI/Z4X4fTTpetEiR6olkt04dzLEtaA7lHOh4QJdYRVqg2kTCvFfFx00A5yUzNjXqhMzknrDffB/XtVbGiwLFMhw7jyCj4bYKzRUfcdp6cvoL5bZ33SR+xy/NQrzHZrqO8oftRdukQ6w1l3vzKbNxqW2Tfetr9sZEiliAQrUZ1oNOH8riycdeMdKDx/OR4M/Eeld+HesDjOKKBnpHyN+baeFJ4d9SDE787wCCLblsCRrReA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 10:48:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 10:48:32 +0000
Message-ID: <336d5d12-610f-292a-7b26-5dc561aa7603@intel.com>
Date: Fri, 17 Mar 2023 16:18:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-4-ankit.k.nautiyal@intel.com>
 <ZBOqW3MselbJN93w@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZBOqW3MselbJN93w@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4589:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b2b6169-a2dd-460f-4454-08db26d526d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VAiu58MUT0tcglx1/h+Qw2ro22FHk/gaXcLr4sthS360bt8m4hgDwJXvHryMKjl571wpbq54++DOdfFi2AYyB9cCPPQ9mG+lp/JV+XR6383Z0BdqSKs8+TfDGuSdliGOhI8sI7B+MNGD/4BgrIFlkjFYzatC8t0MYIpFz0xRHDydZfzB/7Q45sPPNwyrcVWxM5xBxseQnGAWusgJh8HoIKNzoy58YX61RSw5zgwH2d8okAjuhx4kiulULGBD4ObOe1nyEp3TZ7JUv3K4KjNvu7Ti5XxAnz8kg+zRtJg/VyqockZcjdAkYCBYJ1t5EHZKyZOfFPRj9yUrfdkomNipYQkrMHVYCIHrNoPg3fbDGc62HWPGk6Td5XPfVo+5VNtnRfZRJv9Pq6CK/1HqoqE3Pio/OZqdd2F6ks/RVQKOM0AvUM2KWwwL7WBloIgr1FzSUlqt44RgXBibCG+t56ifi7Xc6aPurbu3InzE3daCw93HYg2Q5wCNgenvxuZx4lMLlAS1U1jyhbrGU1dz6TFCmjLAj7NhvUZRAyATq6qajH51P2LohuSv+w5HV9VOEPBusc4iLeklS7FY5qTShA7QMk1GX+ThxxZsDZXadRcDxlQYcEsZhODzgASjnsRa0NJkiR3Ws9kbB4gaKfjp6VpOX8FIu7Gj/YGuE3QI3Qkyof9cn8CfWuhZDHcs696Ai5SUDe+710kNqVQNuTq/AJpRB9sx1NVlSUsxtDhinQVH/No=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199018)(2616005)(186003)(6486002)(66574015)(83380400001)(6666004)(478600001)(316002)(8676002)(6506007)(6512007)(26005)(31686004)(66556008)(66476007)(66946007)(53546011)(6916009)(4326008)(41300700001)(8936002)(5660300002)(30864003)(38100700002)(2906002)(82960400001)(36756003)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eCt4TFJqZmlTZWF6bWsvWU54emFHUmVYYzFvTy9ISUxqTXZSNGtJNnE5ZWll?=
 =?utf-8?B?SFhpdVpDckZVbVkxVWpkbnd5d1dDbENCblVIbXMwZkpEbGFDU0szd0p2UjdS?=
 =?utf-8?B?dFVZbkJsOU9wM0FZWUVNS09yZTlkdXlrV1krYnZoQ2ZRQUVzc0taR3NlSnc4?=
 =?utf-8?B?ODU0eW9LNGJpRkt0VkthOFBaQXdtOTBKUldCdTJsY0hwTnAxYnp1OHhJR3lj?=
 =?utf-8?B?V3lYQ3F5T1VseUtlMnU3YmV3aFphcUpPTUs3dHNhNmFacHFlRmN5N014dkVn?=
 =?utf-8?B?bmh6ZEVEYXl5Wk9iaDMrQURNL1RCSTc5SFprcWl2Ky9wN2t6Wml6ZkVNbWY3?=
 =?utf-8?B?aVlUZU14K0lHanNodnN4Rnh4QU0yVlcrVnRtTm1CekwwaVVlSEhwdjlzMXhW?=
 =?utf-8?B?V3Uzdm5waDRLWGwwMHVsbHRORzl4d0dWVHNDRStLekpaekdEOEY0NmJPSy9O?=
 =?utf-8?B?dnRSU1ZtSFFXSXNPV09NYWdxZVFyWkdGaDV5WnV4eEJoVlp3WmVSK1Myalhk?=
 =?utf-8?B?aEF3aWtuQ1BNdzRLc0lvUmZyK09IbUdBRnhxaThzQUw3WGxXemZsOFlmQ2px?=
 =?utf-8?B?VUdYQVZjaU5naVdjb2hyTTI1SVJ6NUJSZGZqRXlTT3lTYU5wN1BGZmZmamg1?=
 =?utf-8?B?c2Z3N0xqazFPWFV0MVY1TzF2aVRDN1krcFVTRjJSNUFPZGY2OTFON2NzQnBR?=
 =?utf-8?B?cWNmTVZzRWF4SGxFZENqZ0YyY05MSU5KMHpFa3BUQURkQ3ZZa3NMM1ZaUHJt?=
 =?utf-8?B?dzYwVDZFMndsY0ZDTDNXNGNwM3RjaGFPUmltbm03ODlDSEU2dmZ0WTlqb0wz?=
 =?utf-8?B?RHFVUnZBY2NuMk9uVDNnWWJ3SjhKeGdIcENBQjc1b2dzejNpRjFpYys3TDFH?=
 =?utf-8?B?VmxvM3drMVdFYS9VcVc5YUhqTTN1RGxOL1lzWjU1aXc3RTlEbVlhak03Yy9x?=
 =?utf-8?B?eFA1N0ljRFVlODFDTVZoMThuK0xRUkRELzlGZit1clNsU3JRb0hNOVJQZHJy?=
 =?utf-8?B?YVM5TXRkbzRpNXF4dVkzQy9GR0dXcUszc2tzblBYZTkzVjFUSVVlK21PZTBz?=
 =?utf-8?B?WEhJKytnelJNRVNVTTZtaEpoZEpVaG4vN25FUUdLbEo3YWpUQVVtVGRoZklX?=
 =?utf-8?B?TTMxYkVhSkVnVDMvWnhWYkVvaUoxSU9kZ0U2MjZpR2lRQVVOY1NYdmdXQTF2?=
 =?utf-8?B?ZXFqemxWTFdVY2FTSFFEUDFkVWY5T2hyTEFLR212Z3k4UUNPR1hDYU5QZHRH?=
 =?utf-8?B?MkYzYkRsUkVhb2Y3Y1JxMzR0R1ZBenFqbGgzZTBTVjZyUUJmRnhqbmdsSlNB?=
 =?utf-8?B?ak1JbHFlT2o0ZWNXUldOV1lyWWl2TXpVWkppNU1MazJkaWViUktXRDlad3JE?=
 =?utf-8?B?eldxa01nWVhKZllSUzduY2M1bG8xQkwvMDVneDBzeVJZdE9PcXpyTzI1TStr?=
 =?utf-8?B?QUJ0bEdmNitXMlZDNXIyaFMraldpNmZWQ0huUjV0ODdYVHN5SUpEWGM3aE5a?=
 =?utf-8?B?K25yNWJkYTBrdnZPQXo4MlgrYzg4d0lpVUdhQmxvUlFoSXg2V1RhK0Q4UjhM?=
 =?utf-8?B?Y1h5cXJSMkYvSVMwSFhueDNhb3grRE1POW9oTnlOaFNXRXR2T0p0UnZnZVNJ?=
 =?utf-8?B?dktQTVh6MC9UcVc4QUJ2eThiOGpabllLMkc5eE9wTnk3YUtwMFNtbDNHZUZw?=
 =?utf-8?B?cHo4MDZQdGZmakVhekxIdlFlWXdMUTR5TzB5WGpoN2JQdkx3eE11U2FkbUEr?=
 =?utf-8?B?enlna1FwSFBQZmwyeEptSnBDNHlQZ29GOVVnOCtseGY1NHRpU1ExY3YybjZZ?=
 =?utf-8?B?Y3B4d3hEOXdpVlVUVi9JU054bEZKaUIyQ3lzemViRnZYMW9PMzlyWTJvc01W?=
 =?utf-8?B?ZVdPS1BiTDBWSm5qZU83WmFVWXVoR1hZTVNaNnhBVHlWLzk0UEw4eVdIVElk?=
 =?utf-8?B?M2R2LzB3eldlUmVqZGwvanFxa0NRNzNrdGl6MElrc29aK2dLN0VKN0oxT3JT?=
 =?utf-8?B?SVdYejdrU1VBWVpqRGtJOFBUL1JIMmVhK2hzVmhNRDgwR1M5c21RbmZ6MDRm?=
 =?utf-8?B?bk44aDN2Z3J6VG9rdmZPTE9EZXNsdFBxMlRsRVZYOE40VDlCRXFFNW15RS9u?=
 =?utf-8?B?anU0bjM5b1V5RjVrd040d004U05MOXBsUDBYSjJrSVpzallCR0xiQXlVRW9H?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2b6169-a2dd-460f-4454-08db26d526d5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 10:48:32.5863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X7uRxq/nAaPTUCfOEp/J1d+RdEcTd1UmGc65d80qc8V6YH4i/09h+hcK4eDj6Z/4KCv1aobXRfR5Llhnh0GNarAbQwoH38WKNLxsBkw/L8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 03/11] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state sink_format
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

Thanks for the reviews and comments.

I agree to the suggested changes and will address them in next version 
of the patch.

Please find my responses inline.

On 3/17/2023 5:16 AM, Ville Syrjälä wrote:
> On Tue, Mar 14, 2023 at 04:34:07PM +0530, Ankit Nautiyal wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch uses the members of intel_dp->dfp to only store the
>> format conversion capabilities of the DP device and uses the crtc_state
>> sink_format member, to program the protocol-converter for
>> colorspace/format conversion.
>>
>> v2: Use sink_format to determine the color conversion config for the
>> pcon (Ville).
>>
>> v3: Fix typo: missing 'break' in switch case (lkp kernel test robot).
>>
>> v4: Add helper to check if DP supports YCBCR420.
>>
>> v5: Simplify logic for computing output_format, based on the given
>> sink_format. (Ville).
>> Added scaler constraint for YCbCr420 output.
>>
>> v6: Split the patch for Scaler constraint for Ycbcr420.
>>
>> v7: Simplify the policy for selecting output_format:
>> Always try for RGB first, followed by YCBCR444, and finally by YCBCR420.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 182 +++++++++++++++++-------
>>   1 file changed, 129 insertions(+), 53 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index e52e2ffc355c..c31ec9c91c64 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -817,24 +817,82 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>   	return 0;
>>   }
>>   
>> +static bool source_can_output(struct intel_dp *intel_dp,
>> +			      enum intel_output_format format)
>> +{
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	bool is_branch = drm_dp_is_branch(intel_dp->dpcd);
>> +
>> +	if (format == INTEL_OUTPUT_FORMAT_RGB)
>> +		return true;
>> +
>> +	/*
>> +	 * No YCbCr output support on gmch platforms.
>> +	 * Also, ILK doesn't seem capable of DP YCbCr output.
>> +	 * The displayed image is severly corrupted. SNB+ is fine.
>> +	 */
>> +	if (HAS_GMCH(i915) || IS_IRONLAKE(i915))
>> +		return false;
>> +
>> +	if (format == INTEL_OUTPUT_FORMAT_YCBCR444)
>> +		return true;
>> +
>> +	/* Platform < Gen 11 cannot output YCbCr420 format */
>> +	if (DISPLAY_VER(i915) < 11)
>> +		return false;
>> +
>> +	/* If branch device then PCONs should support YCbCr420 Passthrough */
>> +	if (format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return !is_branch || intel_dp->dfp.ycbcr420_passthrough;
> This part isn't really about the source capabilities.
> I think it would be more appropriate to do these checks
> in the caller.

Agreed, will move these in caller.


>> +
>> +	return false;
>> +}
>> +
>> +static bool
>> +dfp_can_convert_from_rgb(struct intel_dp *intel_dp,
>> +			 enum intel_output_format sink_format)
>> +{
>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>> +		return false;
>> +
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
>> +		return intel_dp->dfp.rgb_to_ycbcr;
>> +
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return intel_dp->dfp.rgb_to_ycbcr &&
>> +			intel_dp->dfp.ycbcr_444_to_420;
>> +
>> +	return false;
>> +}
>> +
>> +static bool
>> +dfp_can_convert_from_ycbcr444(struct intel_dp *intel_dp,
>> +			      enum intel_output_format sink_format)
>> +{
>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>> +		return false;
>> +
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return intel_dp->dfp.ycbcr_444_to_420;
>> +
>> +	return false;
>> +}
>> +
>>   static enum intel_output_format
>>   intel_dp_output_format(struct intel_connector *connector,
>>   		       enum intel_output_format sink_format)
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   
>> -	if (!connector->base.ycbcr_420_allowed ||
>> -	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>> -		return INTEL_OUTPUT_FORMAT_RGB;
>> -
>> -	if (intel_dp->dfp.rgb_to_ycbcr &&
>> -	    intel_dp->dfp.ycbcr_444_to_420)
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_RGB ||
>> +	    dfp_can_convert_from_rgb(intel_dp, sink_format))
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	if (intel_dp->dfp.ycbcr_444_to_420)
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
>> +	    dfp_can_convert_from_ycbcr444(intel_dp, sink_format))
>>   		return INTEL_OUTPUT_FORMAT_YCBCR444;
>> -	else
>> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
>> +
>> +	return INTEL_OUTPUT_FORMAT_YCBCR420;
>>   }
> I'm thinking the caller of intel_dp_output_format() might want
> to do a drm_WARN_ON(!source_can_output(output_format))
> just to make sure we didn't screw things up too badly.
>
> Or maybe we want to have that assert in intel_dp_output_format()
> itself in case there are many callers.

I think we can keep in intel_dp_output_format().

I had a check in earlier version I think, missed to add this in this 
version, but was defaulting to RGB without warn_on.

Will add a warn_on in the function as suggested.

>>   
>>   int intel_dp_min_bpp(enum intel_output_format output_format)
>> @@ -2751,6 +2809,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   					   const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	bool ycbcr444_to_420 = false;
>> +	bool rgb_to_ycbcr = false;
>>   	u8 tmp;
>>   
>>   	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
>> @@ -2767,8 +2827,35 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>>   			    str_enable_disable(intel_dp->has_hdmi_sink));
>>   
>> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>> +	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> I was wondering where YCBCR444 went here, but then I
> remembered that we don't have uapi for it.
>
> But even so, we could consider making this code already
> handle it. Would make it that much easier to test
> YCbCr 4:4:4 output. Should just take a one line hack
> to intel_dp_sink_format() at that point. Could be
> a followup patch though.

Makes sense, will add if (crtc_state->sink_format == 
INTEL_OUTPUT_FORMAT_YCBCR444) block.

Will try to test : going with YCbCr444 first instead on RGB, while 
selecting sink_format.

Let me add this in a follow up patch.
>
>> +		switch (crtc_state->output_format) {
>> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +			/*
>> +			 * sink_format is YCbCr420, output_format is also YCbCr420:
>> +			 * Passthrough.
>> +			 */
> These comments seem a bit redundant.

Alright, will remove the comments.


>
>> +			break;
>> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
>> +			/*
>> +			 * sink_format is YCbCr420, output_format is YCbCr444:
>> +			 * Downsample.
>> +			 */
>> +			ycbcr444_to_420 = true;
>> +			break;
>> +		case INTEL_OUTPUT_FORMAT_RGB:
>> +			/*
>> +			 * sink_format is YCbCr420, output_format is RGB:
>> +			 * Convert to YCbCr444 and Downsample.
>> +			 */
>> +			rgb_to_ycbcr = true;
>> +			ycbcr444_to_420 = true;
>> +			break;
>> +		default:
>> +			break;
>> +		}
>> +	}
>> +
>> +	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>   
>>   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>   			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
>> @@ -2776,13 +2863,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>>   			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>>   
>> -	tmp = intel_dp->dfp.rgb_to_ycbcr ?
>> -		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>> +	tmp = rgb_to_ycbcr ? DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>>   
>>   	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>>   		drm_dbg_kms(&i915->drm,
>> -			   "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
>> -			   str_enable_disable(tmp));
>> +			    "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
>> +			    str_enable_disable(tmp));
>>   }
>>   
>>   bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>> @@ -4572,57 +4658,47 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>>   	intel_dp_get_pcon_dsc_cap(intel_dp);
>>   }
>>   
>> +static bool
>> +intel_dp_can_ycbcr420(struct intel_dp *intel_dp)
>> +{
>> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
>> +		return true;
> Should have an empty line here.


Noted. will add the line, in next version.

>
>> +	/*
>> +	 * If source cannot support YCbCr420, and PCON has color conv. support:
>> +	 * Source sends YCbCr444, PCON converts YCbCr444->420 Or
>> +	 * Source sends RGB444, PCON converts RGB->YCbCr444 + YCbCr444->YCbCr420)
>> +	 */
> I think the code already explains that pretty well. Comment seems
> a bit redundant.

Alright, will remove comments from here.


>> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
>> +	    dfp_can_convert_from_rgb(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
>> +		return true;
>> +
>> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
>> +	    dfp_can_convert_from_ycbcr444(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
>> +		return INTEL_OUTPUT_FORMAT_YCBCR444;
>> +
>> +	return false;
>> +}
>> +
>>   static void
>>   intel_dp_update_420(struct intel_dp *intel_dp)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
>> -
>> -	/* No YCbCr output support on gmch platforms */
>> -	if (HAS_GMCH(i915))
>> -		return;
>>   
>> -	/*
>> -	 * ILK doesn't seem capable of DP YCbCr output. The
>> -	 * displayed image is severly corrupted. SNB+ is fine.
>> -	 */
>> -	if (IS_IRONLAKE(i915))
>> -		return;
>> -
>> -	is_branch = drm_dp_is_branch(intel_dp->dpcd);
>> -	ycbcr_420_passthrough =
>> +	intel_dp->dfp.ycbcr420_passthrough =
>>   		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
>>   						  intel_dp->downstream_ports);
>>   	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
>> -	ycbcr_444_to_420 =
>> +	intel_dp->dfp.ycbcr_444_to_420 =
>>   		dp_to_dig_port(intel_dp)->lspcon.active ||
>>   		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>>   							intel_dp->downstream_ports);
>> -	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>> -								 intel_dp->downstream_ports,
>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>> -
>> -	if (DISPLAY_VER(i915) >= 11) {
>> -		/* Let PCON convert from RGB->YCbCr if possible */
>> -		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
>> -			intel_dp->dfp.rgb_to_ycbcr = true;
>> -			intel_dp->dfp.ycbcr_444_to_420 = true;
>> -			connector->base.ycbcr_420_allowed = true;
>> -		} else {
>> -		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>> -			intel_dp->dfp.ycbcr_444_to_420 =
>> -				ycbcr_444_to_420 && !ycbcr_420_passthrough;
>> +	intel_dp->dfp.rgb_to_ycbcr =
>> +		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>> +							  intel_dp->downstream_ports,
>> +							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>   
>> -			connector->base.ycbcr_420_allowed =
>> -				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
>> -		}
>> -	} else {
>> -		/* 4:4:4->4:2:0 conversion is the only way */
>> -		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
>> -
>> -		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
>> -	}
>> +	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(intel_dp);
> Looks good. With the minor issues sorted this is
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks again Ville for the suggestions and review.

Regards,

Ankit

>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
>> -- 
>> 2.25.1
