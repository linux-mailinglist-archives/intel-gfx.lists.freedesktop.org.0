Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF85A629206
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 07:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B8A10E36C;
	Tue, 15 Nov 2022 06:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5003710E36C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 06:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668495252; x=1700031252;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zLV+S24noEN1BRpAXr061Olriic1A8TAcVSezVVK/vM=;
 b=RlfRT9EfIAFsoHkiftlGV8yNCVlAwdZqkdtbL5S2Jv4pyjl91aLreXOG
 qcJ3/3T1ITCfEjHO2I4FAGMj/KbS3CktMVXQxgBx7qBp0htaZCgg4JVp4
 cmFSiptVbkqi4ei22m8fzE0FrtOm7S8b+ZJCuAJelHXtBZhb2fkkWFdOk
 tjhdPGTPQNDyajIL79sm7Jlpukx+AOo2dWL19MNYhpOtZX7vlS4ZBcGSg
 oLSYCm7hlXxpD9ZCVlZkR0eN0o54g+HcnGcIk7BV7cdLdgTV2OTclEabA
 jK2LOMxW0/S6LV0QouwUmvc9bnJjmSfInyc6v5jUxHQiLbFUhD4shyjYT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="309807816"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="309807816"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:54:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="702322339"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="702322339"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 14 Nov 2022 22:54:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 22:54:11 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 22:54:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 22:54:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 22:54:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wu0r4mZesFnVOwQZRJHM1nLR3HTQQ9oeaJG+Jzq+9TvgmEVjqALqsfxb0a2ijjibXgMznhS0/dH5v/2Yy5C32cw1Bbmgvt0rLaK48drbh7pOdeGRVuMCpU+I1XndSzdiYXx7NPxR0tjlTe4e3wkRjQJ+flecs4lY0CPEl1c1LbwSN5bmiSq8jFP5In8+t5RjvnHozzTMS3gPkzKJ1afT+NcVAEPLeGDnkQF5imzSH15gSXlcUueVjxZAG9Xw9w1t6yJC2ewtUs9ECXHVHQK2UwCf9hMu+TWuKb4MmLDS1m0Nhpfg7nGSqaDcA9O+9xtXI49IWNXzH+prwXYTZHFE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZW0VnJ6gm8Z2jptk/TN8O0iu4v3oLfSecwp9iUKkivs=;
 b=RuRxlXdXuvLaHinHO2EhrYqhkoVoU0T0cnTG27Q6NTV/poxvURln1rA+QznrhGh2qcNZpnq85MbcRtxlaFPcBoJbSRldHb6ZY3fSz3MF0ryO2GG4uPT6jt9LD2YjOW1z5crBJ4+m7zPg67PGy/B6NCFnHGhv1p3D7JIimRXxuz9BTph4mhROqnyFkn21qcARBjo7r6wi6Wy9sSNjgME+Cj1iRoA+t/wKebvukVv6zBFBaOSvyaQnTQd12c0ZlM0vS+h46fSULZPc4KjU2jlryUSHraiu/sS1FIVwBEdiZK7vxTAbbiqKKh9xyta9OEedY7KYHRRcaNF9G4tgs+xxEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB5774.namprd11.prod.outlook.com (2603:10b6:303:182::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 06:54:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%8]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 06:54:03 +0000
Message-ID: <c8d47583-2bd6-7383-14f4-d622b9eefa36@intel.com>
Date: Tue, 15 Nov 2022 12:23:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
 <20221028094411.3673476-4-ankit.k.nautiyal@intel.com>
 <Y21nzJlANRVahZ0+@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y21nzJlANRVahZ0+@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB5774:EE_
X-MS-Office365-Filtering-Correlation-Id: ecac444d-addf-4891-68bd-08dac6d62e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cCzIGYmANPxmthwq7lt+IXys8FfIQdrYnFqozTS8m+WzpgK5J+MJATbVKuR7z1+tMQqmKSfotGQ0MsoEeQibI2/2h1Nr6KQHkzUCOMgQay+qCSX0SieHFU0Bl25K13q6hSuRu8N1iO60jRLCqcuDifKFD1zBQJjJW0d45B2oOq9wmTOo7EAFgnI7CJFVtjTmEGo/g+kDrXq3AC/twS59G9CtR9gCdKRV/qfcPvdFgI7aptAdQrjDOo9ulknk08ppYNK8KvXhU0mcx5dtNEiNG1iUJn3CvvMixdKed6gl+F1gvzs05x/vYnAfT1XkJrZnUy3/35IggFuvD20smITQuoxLLNMulPeFWxPdfvCgAyuE/z+aT6iGZ/5PlRxn60NIjr33jbgYttIdppS/x1h7cb2267FCpsJEia4i5ctI5dIDX6p/P6kXexgnum6Y1x7tjRgDc0y6QbT1ctST076fPVodTJqD9seB3lXr1K4ADXc7naFf0+TxcTb2mOSHJfx62DEGYwDYgsPPLh0/WpkFEscMqC3PAFk1NQG3+qFAsPdQFAwaIOng8i0ctsA4FlxXASM943KNUXjt2CQBf1hxiotHfWrNHiyxuiGscAwXYgezvdkLGYXFRlP/ji3VSj7KZq8u0YwSgr8F7JEhSARU5U1fkJVr3Ab7XN1BfhPSVqJuUl1bFO+MYqMgpzGkDcd/AByKRyriRbdEGPGkBR/jB5co5Zc9Y70XVoAG242DSrG7C56W6Fho7lXNDfRorwThe4EbxEPHu3rTSAfBGMkqw0BScOMcP0uWJTP5TraZgoE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199015)(82960400001)(38100700002)(86362001)(36756003)(316002)(478600001)(31696002)(6486002)(2906002)(66946007)(66476007)(8936002)(83380400001)(8676002)(5660300002)(41300700001)(4326008)(66556008)(6916009)(66574015)(6666004)(6506007)(2616005)(186003)(53546011)(6512007)(26005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEI5bFprbFBrWVBsbkZzdkk3U2o0MTc2N3hjbFJ6dTlPNDVaWXhrNTdONXFL?=
 =?utf-8?B?SXJvWmcyMTRFL2dPQmVmRHZQVVFuR2J1cWU2dDdwWWVyQ014WVc0bnM5ZlRh?=
 =?utf-8?B?eFUzRUptMW4zemNoMCsxUHlVbmZQRThZYVRhV201YVRkcHp3dTlKRm9KajdG?=
 =?utf-8?B?ZkNjbC9NQ0JsZWh3cVFteEFyZktqbFhRNFpCNWpjZGJNcC9YblAyZzR2R0FQ?=
 =?utf-8?B?WnpycjgvNWNSeEt1ZXM4UVoydUtSRE5mQXlqbDRBUno1aDJCS0VlaDhQaDA2?=
 =?utf-8?B?QXFIYS9PT0NRaVk4YnpmTTl1OUVKVmVzMmkvZzRjMyt2c1pacDhUWld5cmJV?=
 =?utf-8?B?TFo4MEZpSWhLVXFoNGVoOHlLZlRmajNCeVVLcWI3bGVtR2tYZGFRMzY4QmFD?=
 =?utf-8?B?QnIvRi9TaFJFY3JsYXdiSFJsU2J0ekJQL3V5c0l6VEVPM01sSENxNFVSQzdU?=
 =?utf-8?B?MGxidXI2a3NJME1jbGVJbzlwcXkwYThsVUhRZVB4NmMxMnpjQVhXQm9vMmx1?=
 =?utf-8?B?UTZkNGdPaG0xRTZEbFhuMWNma05PcXJZS0MwMWVLWmJ5aGdQc1MzcGowUTYr?=
 =?utf-8?B?UlJRRjdvYnlIWGYrenVQTDlNYXZsL0ZRbmk4TGF2SEpwRHNqNDZ5RkxBUkpN?=
 =?utf-8?B?VXNSVllLOU1hOHBoVjc1UTB3TFdIUnArM3Z2dlNUY3JlSTFZVkVDSlNaUnRr?=
 =?utf-8?B?MmJxam8yL001Q1JjaTdmR05YZThtb0p1N1BVdnpyakVjVkVxK0lRd0ZkRUQr?=
 =?utf-8?B?K2dpcUFWMjVlOWhQRWt5M1RmWVN1a0hNci8xR2duTVYzcnNDeGpEbzU4UnFx?=
 =?utf-8?B?RGp3cmVLOVRpT2JVVHozeVgyczlvbjI1S1RZMDcrSXU0ZmVIMkhKWUx3ODFB?=
 =?utf-8?B?aWs0eWRZdXhMUHRTSzVudDBDNklzL243aHZzSVBQRzRvblRCdmlOUWJPcDli?=
 =?utf-8?B?Q3ZvbTY4N1pMOEhpeCtSL1JDZmdLSlE4UDVNQjI1UzZnVjRNRUVLM0VPU3ZK?=
 =?utf-8?B?eVViZjcrK2dhL0l1MVhRdEdCSEFadXFxZHJrWVVQUU04czVEQi9GZHlKSVRW?=
 =?utf-8?B?L0wwUmNmUzFhYzdMQ21USXlGY2lmMkVkbUp1R3RsV3kxcytHNUp4QS90aEZG?=
 =?utf-8?B?dG41WUt1MTUzRjNYVUhrVlNyblMyOW1ELzFiTEhFTTFKTDNabER3MjZnMDdk?=
 =?utf-8?B?Vm5YQlUvV1ZkRUN1NCtLelMyTEZBbWx3U1FPZzNYeUNCd1Ntd01qRTVkdWRx?=
 =?utf-8?B?dTNUTlBzNTdZeWUvclYwblhDNU94aTZEV3BWMnVIRWt4OEZNNit0cExJS1B3?=
 =?utf-8?B?UEJ4eS9OaDdQVHlIeWF5VGNkYWEwN0FFTXdVV0tQdjRGVHhWNFZmbGh4a20v?=
 =?utf-8?B?NHA2bXhoSnFzZTBST1pDbno4dFBWUmx1b3A5QW9LWjZZOVpqVjEzSTRWR1Zv?=
 =?utf-8?B?YVRiUFpsc1BBaGJQR1REdnlsZUl5dEc2K2ppbjNzWDlxdGFGMDh5UUlZbFBh?=
 =?utf-8?B?WkQ0SDF6bHdGcUsyUGRPZk8wS2J4cTlPWk1JOGxlVkg5NVM0RG5CdEtubnhQ?=
 =?utf-8?B?YUdJYWJRVHVQeHI5Rk84N080ZG85MTlRTHZTdys3eE81c05oS3gvM3lwTkhz?=
 =?utf-8?B?Umh2M2pMR0U2bzhVSTcySks2cDlNbjNybGdSejhObjNReEZOSXp6cUYyRjdn?=
 =?utf-8?B?eG9SNHF1U1JUUHVRdVFuelFlOWttcHd6NjV1dzN4ZU9HRVZ0RkFEL2V5Ni9n?=
 =?utf-8?B?d2ptYzZJNjNhdEZEbFBCTFRsWFJZMmcvelh6Zm9LL29BTUsvb1FCU3ZSbmpH?=
 =?utf-8?B?KzE4QUhwUlhUck81TGJFYWlxU1JkWmtBbmpPd2c3SU5FNkowOEFPYTYrQWJy?=
 =?utf-8?B?cnNDWWF3b05EdjhCVlluczIyOVBtQnp6MFBxRDloS3duSjV4anlURWdud1Zw?=
 =?utf-8?B?RUV6VCtBaDJjU1Q0VEs1WWI5WStLdldadXp4emNLamdkYzhhUXVmRjdTYWJ1?=
 =?utf-8?B?S1lWbkt0cXB1MXhST0ZDZ24wc3prcEpBKytqVmFEcVd3NDRnRis0YUlXUzU5?=
 =?utf-8?B?RkFvbjUxVzlDcGlRNm1rcElXRXFkdVQ0UzV2S0k3Mnl4Snp6cHp5d3ZoWWlY?=
 =?utf-8?B?ZnIyd09XVGNJSk9Ld09mQnBYQWJzRVY3VnFjZGJBSWgrZDAzSjRUR21JUHFW?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecac444d-addf-4891-68bd-08dac6d62e18
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 06:54:03.0310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2fxEX190zlmULw2u6RwPCfkAJQrWPLYwz8o9a+hAfwIi8NihJX6AsQU8bk2yzD0Lvm31+rDj/90nSmrJIn5vtXq9PbXIPl3BioFYvPZonb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 3/9] drm/i915/dp: Replace intel_dp.dfp
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


On 11/11/2022 2:36 AM, Ville Syrjälä wrote:
> On Fri, Oct 28, 2022 at 03:14:05PM +0530, Ankit Nautiyal wrote:
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
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 122 ++++++++++++++++--------
>>   1 file changed, 84 insertions(+), 38 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 0e4f7b467970..95d0c653db7f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -790,6 +790,7 @@ intel_dp_output_format(struct intel_connector *connector,
>>   		       enum intel_output_format sink_format)
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   
>>   	if (!connector->base.ycbcr_420_allowed ||
>>   	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>> @@ -799,6 +800,10 @@ intel_dp_output_format(struct intel_connector *connector,
>>   	    intel_dp->dfp.ycbcr_444_to_420)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>>   
>> +	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>> +	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
>> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
>> +
>>   	if (intel_dp->dfp.ycbcr_444_to_420)
>>   		return INTEL_OUTPUT_FORMAT_YCBCR444;
>>   	else
> The else branch here is also 420, so the whole logic
> here doesn't seem to flow entirely sensibly.
>
> Thinking a bit more abstractly, could we restate
> this whole problem as something more like this?
>
> if (source_can_output(sink_format))
> 	return sink_format;
>
> if (source_can_output(RGB) &&
>      dfp_can_convert_from_rgb(sink_format))
> 	return RGB;
>
> if (source_can_output(YCBCR444) &&
>      dfp_can_convert_from_ycbcr444(sink_format))
> 	return YCBCR444;

This make sense and will also help to add 422 support easier.

I am only seeing one problem: about how to have DSC considerations 
during source_can_output( ).

Gen 11+ should support YCBCR420. So for any ycbcr420_only mode we should 
have sink_format, and output_format : YCbCr420.

This works well for cases where DSC doesn't get in picture. When higher 
modes like 8k60 ycbcr420_only are involved, we need to use DSC.

Currently, our DSC1.1 does not support YCbCr420. The problem is that we 
go for, dsc_compute_config at a later time.

This issue might have been masked, due to the messy order of checks in  
intel_dp_output_format.

Specifically With HDMI2.1 PCONs supporting color conv, for such a case 
we can have output_format as RGB, and sink_format as YCbCr420.

The DSC compression with RGB and then configure PCON to Decompress, 
conv. to YCbCr420.

So can we put a check in source_can_output for Gen11+ where DSC might be 
required, so that with source_can_output(YCBCR420) returns false in such 
case, where DSC is the only way?


Regards,

Ankit



>
>> @@ -2668,6 +2673,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   					   const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	bool ycbcr444_to_420 = false;
>> +	bool rgb_to_ycbcr = false;
>>   	u8 tmp;
>>   
>>   	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
>> @@ -2684,8 +2691,35 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>>   			    str_enable_disable(intel_dp->has_hdmi_sink));
>>   
>> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>> +	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
>> +		switch (crtc_state->output_format) {
>> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +			/*
>> +			 * sink_format is YCBCR420, output_format is also YCBCR420:
>> +			 * Passthrough.
>> +			 */
>> +			break;
>> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
>> +			/*
>> +			 * sink_format is YCBCR420, output_format is YCBCR444:
>> +			 * Downsample.
>> +			 */
>> +			ycbcr444_to_420 = true;
>> +			break;
>> +		case INTEL_OUTPUT_FORMAT_RGB:
>> +			/*
>> +			 * sink_format is YCBCR420, output_format is RGB:
>> +			 * Convert to YCBCR444 and Downsample.
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
>> @@ -2693,13 +2727,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
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
>> @@ -4544,57 +4577,70 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>>   	intel_dp_get_pcon_dsc_cap(intel_dp);
>>   }
>>   
>> -static void
>> -intel_dp_update_420(struct intel_dp *intel_dp)
>> +static bool
>> +intel_dp_can_ycbcr420(struct intel_connector *connector)
>>   {
>> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> -	struct intel_connector *connector = intel_dp->attached_connector;
>> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
>> +	bool is_branch = drm_dp_is_branch(intel_dp->dpcd);
>>   
>>   	/* No YCbCr output support on gmch platforms */
>>   	if (HAS_GMCH(i915))
>> -		return;
>> +		return false;
>>   
>>   	/*
>>   	 * ILK doesn't seem capable of DP YCbCr output. The
>>   	 * displayed image is severly corrupted. SNB+ is fine.
>>   	 */
>>   	if (IS_IRONLAKE(i915))
>> -		return;
>> +		return false;
>> +	/*
>> +	 * For Display < 11, YCBCR420 output possible only
>> +	 * if DFP supports 444->420 conversion.
>> +	 */
>> +	if (DISPLAY_VER(i915) < 11)
>> +		return is_branch && intel_dp->dfp.ycbcr_444_to_420;
>> +
>> +	/*
>> +	 * For Display > 11:
>> +	 * If not a branch device, can support YCBCR420.
>> +	 */
>> +	if (!is_branch)
>> +		return true;
>> +
>> +	/*
>> +	 * If branch device then either:
>> +	 * 1. PCONs should support YCBCR420 Passthrough
>> +	 * i.e.Source uses CSC, scaler to convert RGB->YCBCR420 and
>> +	 * sends YCBCR420 to PCON. PCON 'passrthrough' YCBCR420 to sink.
>> +	 * Or
>> +	 * 2. PCONs should support 444->420
>> +	 * (Source sends YCBCR444 PCON converts YCBCR444->420)
>> +	 * (Source sends RGB4444 PCON converts RGB->YCBCR444 and YCBCR444->YCBCR420)
>> +	 */
>> +	return intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420;
>> +}
>>   
>> -	is_branch = drm_dp_is_branch(intel_dp->dpcd);
>> -	ycbcr_420_passthrough =
>> +static void
>> +intel_dp_update_420(struct intel_dp *intel_dp)
>> +{
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	struct intel_connector *connector = intel_dp->attached_connector;
>> +
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
>> +	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(connector);
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
>> -- 
>> 2.25.1
