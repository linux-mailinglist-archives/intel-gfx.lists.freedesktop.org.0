Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E375B674C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 07:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653E210E39E;
	Tue, 13 Sep 2022 05:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B9010E39E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 05:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663046754; x=1694582754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hu+kVq8HnaatSjpw/HCfJtqenO6p/Rerh+2vcH1pJqk=;
 b=Q2I2Qu3mzBuKomiO+q+fA3oUqaZLeEwIOVPBN5d13+GKz0XbEF+Oy5Lc
 /f78E/F56pddd9oWhpN+o4y3P08O3VWeU3MxXjD7fLkZoQH+Rjj5si7nP
 IVN1Nset0f7tib4uwfPyDPb6tRsFkFI9MYRlDZmupg2iUtXftmUTUupXA
 V80XgFcnmd0lLcln/kRcx41akgapYs7xOzQX06fabyOWdSfSDvIibNsaP
 hIPnYzFaw/1zZ+Iz5V+2Ax9LlxutpNdO4o3HmKG0qfLlE971smPZPZpOc
 TlxTgDvHOMi8gmQ7K7NpfKiIdo4aglAE7okuTfu6c9v3PKrmfoucE9lTM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="384336987"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="384336987"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 22:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="758656614"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2022 22:25:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 22:25:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 22:25:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 22:25:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 22:25:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+tylZgzj4NOYQMADXzTHpXJvZGb/QM2gnPneDXlrMSGCZ94ep59v9aBnGQYAB6cNs2KlHgMcAjeOTCylnmMSPG8/j48uHGFkUKgPsE2F1IB71nT5/CmhY1iRUUkZt64eai1yWNkq4X9/MRKyX3kFN1kUdCDNCrGrCHF4K77mE4JqVB4Tl2cRrrd3OqXCysSP8lKtwjfdxVutK8/JAC7q/BnleNKaTAkkqA8KO2uur0jI9SDGRpw1VMUXt8X3l2Pbj9J6QtAX3gVfDQZFcTjYvHFR/H7UfUtxrF95pMAFA+mFI2QDhiOPDtuggbM/Yr0V5Pv8jhquBIAIaAdo7oO4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/IyqgZ18ZQikmaAprW92LbjT2MiCbg9Dpt225EF/Is=;
 b=KqwGzozX48aFi5mH+L4L7i02eM2wL+7vFvwulUQFrtrvPRmN4XoBOohP08Da0WkJGPZLwRx/EW2FgYslMBKYpikruMTqhTntQ42hqpFQtWGNLpR2NtEkccYuCHjeZ7OLGGJ2KVsihk6b7Zo7U+eTP5ROisFsPQ/Adku97cGw9uW240BhN0AVKr8OBGIIaeAPem9Md3fVXKgSMl2kk++HA2dZDk4dw07OREriFdaCszH2SHMO6M2c/Uus1CM84+RZgoMv6S+yZ7p0xEENKj2HE99UVdQ8Zh4luOimmyj+6KutFGrJQX/yHhnTps4HK1bsPpH+sQuQJ0s6gPwVLnVnLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7263.namprd11.prod.outlook.com (2603:10b6:8:13f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Tue, 13 Sep
 2022 05:25:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 05:25:35 +0000
Message-ID: <cb75d799-1275-def2-ecc6-ecf082d66d53@intel.com>
Date: Tue, 13 Sep 2022 10:55:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-5-ankit.k.nautiyal@intel.com>
 <Yx+AjCFEwgUGEfTC@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Yx+AjCFEwgUGEfTC@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BM1PR01CA0144.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7263:EE_
X-MS-Office365-Filtering-Correlation-Id: 627b68dc-7475-4618-87e2-08da954862c8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gL78ahfJV+0eDj1/qp4ojVUHRazcuy0onrKDbmD3uLnaXF/SdFbMcr+IdqTIX3jafPpTWpFxo7bS+8d+fxDPnH95BgcFwTIiGudQU/yZZLtp6HoAB/+8H0wYCIBMjomUhY6XOiqJCPg1C/7Spo1nJiEVqCDdKp5bvUif/UswJye+ch8M8Dz4ScuxnR1K1SKgwcdcOVmHk/jS8eYqzp17n6pXNtceaK55Z61Gde7TGTHAA/Bcy/xmSSxA2R57xajJZ92886GVcQqwD8uYelfD3qu7elgp0ZEbYF804CuWSAmzj8JsEIlGrsZgTJGTbREq1vx2Qsq2kOoNZhq61phnhluFnkfaWofW9c/kPzCgVQu6TyLuAuN4vy3IdNWkZB7e38Rsof3wMh/ilRApdehfVQG5GxNlJhIZRr7UR/Kqjx+b27llgitbkaEHcDDUjhcFEwGUvqCfzLj38Ci+H6gLmxFHcCVVAAYCu534t9NUEjFxX2jJQ7Hnfku4iqpxAUMye6fEHyiZe6saQ33hKYcA7Zi3MuuLo58LqSn3aWYM1fYcxoRee/MhhxUu2ai2f685r7D57uFmtOfPdNfRS+xQopPfZ6PxL/qKoVZVPv5W2PueU1Q+Y3KEhgxbDiNBcH00fFcWtdkPh946/MHu0H/kTDsceY+pZ0ow4ozQYiaOZ0K4/rZEhKuE/tZzJ0qKkNOSO4PlJpznl4i+kbLKmc4e7Ab4j/JECqRPBKrKT225D6QVMVsDAW6R9QbYefeZlk0YR7tULsok9SJyS9wi5R1heg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199015)(86362001)(31696002)(2906002)(41300700001)(31686004)(8936002)(316002)(8676002)(6486002)(478600001)(6916009)(66556008)(82960400001)(2616005)(36756003)(53546011)(6666004)(38100700002)(55236004)(6512007)(4326008)(5660300002)(6506007)(26005)(66476007)(66946007)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXQvRzFMUDZzTC9Jc2lSV1ZWdmpyVlV4YzVEeUlOOEJpRHBSTk5SdUdTajg2?=
 =?utf-8?B?OTMzN1ZZdFNaRVdhWVJ6OEF1MERFWnJidUVCL2xxM2lpSmk2ajdFTlR5MEZy?=
 =?utf-8?B?MDRtZXQ1TU9TdGhsSUNtSFhBSG0wVXFTeHpjZnpKbExNYW1FNTFFWnNKL09a?=
 =?utf-8?B?SDZpUkVYdnRGNlJ0UW9PaEJTc1h6S0RUQ2hhdUhYVm9SNGZLMkl4MHNINktN?=
 =?utf-8?B?ejUrSjQ5bGRiMDdZL1g0WUtod2VYVkhxUGtVMDQvcVY1ekFaS3gvM3pHSk9R?=
 =?utf-8?B?MnN6eFRSdWJFejUxNFRjbDI1RS96Ym1NUmZnM0gwbWpnMnRwbC95VkppV2dl?=
 =?utf-8?B?aXMxZCtyR3FoZHllRFNjaWFoaFlsUGpxTU9NTDc5dlZCMFI5OXRLYWRXbDNR?=
 =?utf-8?B?SjNySXV2RVJXMm53OElqNEE0ZFppWGY0eDg4K2RxeUxWOUljYlVPdXBvZHA2?=
 =?utf-8?B?aDcwRzJoaSsvKzlpU09HeWVMNXhqZnhudmYyUG4rN3V0dzlUVEhwOE1KbXZw?=
 =?utf-8?B?RWZBS3dmT2NYNmJFK1hXYWtVTDMvcTZtQUpVazRwSlpONDd6cjh5ZkFXOTRu?=
 =?utf-8?B?eWQxM0lESHlOVFNYZ3ZiQnlGRVhxN2pOVnBUOHFPL1dpNlhkV1plaGFuTWlr?=
 =?utf-8?B?ZERVazZITzRZWEZWZlltcGt5cFp5b1B0WGRZQ2VmbG5NaHlDUHZBYXZSQ21j?=
 =?utf-8?B?Y0NmUE1hNzRQMncxaWpscVNmVDR6WGwwcXp3UlNBaVlrcHNZZkJzZk1JaER5?=
 =?utf-8?B?b0tvaWVsNzBUWE55SFY5L244c0FDbGp1WnpiSk9kbXhmdFpZNG9nYkhiOXdX?=
 =?utf-8?B?SVdWSUpJbGlMME9jc0R5T0FTcTFLTWZPQzlFMk40MyswM2o5QlozWVlRbll2?=
 =?utf-8?B?b2c1MklUbnhLTjkzaXRpTEdWSjJrSTNtSWtneUxiaWRNUWVYQkNJN1ZnOTZR?=
 =?utf-8?B?elJrNnJ0bHFNTmZPZnZycG9wVTJrVzdDek5HODdaTkp5VEhmSGRxNVZKY2tF?=
 =?utf-8?B?b0preWNYdjVNNlBBVEc3M0ZYR1ZKVDB0ZGk5QS9sWkNPMTMzSUg3aExHS3d0?=
 =?utf-8?B?WTd1LzdWRFRXNWUzMFAxQjNyaVVTbmcvcGYyTS9QbmxESHZtNWVSa2RCdzgw?=
 =?utf-8?B?anhIVnQwam44MWI1NEU5R1AxalNWVTBCRGthQzdQSkxzZ0k5WjVpZHFmaUVX?=
 =?utf-8?B?VThDczVjUjVISSs1Zmd0L1F0aVFyWmlrN0E3MEE3NmNnQmoxdEZQOGJBOE9r?=
 =?utf-8?B?emEvRWR3ZUswNkNIZktnN0lvSlE4cEwwTGVVaDRxUmI3Um9OZnRzNDlRejNN?=
 =?utf-8?B?NXJZdit2SjVUZWM2RHBUNDUzK0ZEQ2E4NHUxYUNaWkNPME9oWGlYeHBmM1Vh?=
 =?utf-8?B?K2N1Qno4cFJmMFFlUlJZc3dMcFFDNDVvbzR2UFVtZDZKVTNqRjNlZWp3NFRy?=
 =?utf-8?B?bVV5dHNNN1c0YWVodFRsTVRCeHZsSU9yc2h4UTdYV0FESWVaejB4WkxqSnVP?=
 =?utf-8?B?WDVqTnN0SG1VQjlEd0g4T2NTdElQS2lkR0N6QTZuUVhtS3VpVGdrdnpTNnlZ?=
 =?utf-8?B?bWZJOUNzWWRERWxRbTVSQnVjTzBCQVYxRFB2aFpjTkJRVmxyOENSMGYvVXor?=
 =?utf-8?B?NkM5djB2b2pnMGlGZDlHbGhiODNoT2ZCUXBHakIzOU55Y3VMTlpHSEI2ZWRB?=
 =?utf-8?B?OVozbHAyWEw1b1NPK3ZmeHVicHJGM2d1SjNFWHQ0OGpRSnY0cVNsQ25Cdjgz?=
 =?utf-8?B?U2pRQkh6UWJoOFk2RFM0ak5icFFHcTVvL2ZOUWJGOE9BSUI0RkNSVEJvSkVE?=
 =?utf-8?B?aEQ0RHdyUVNudEg1S3V0RTgzcUJ4TloxRUh2dUtoQnBVT091NzFJZVJYeXhq?=
 =?utf-8?B?UXE0SmcrK2VPRWEyeVJUTXdaTEJNa0lGamRTOUVKR0xhQSs2WThvZkh3VDM0?=
 =?utf-8?B?Zzg0LzZzUGpGbHpMT3YyYzc1ejk5enJjamQ3b0ZRN0RIUkIvMWJpeVM1QkRs?=
 =?utf-8?B?QkVzQkpQK29LRXNZeXowYUJZQUZDVUgxdG44VnlGMy9hMVRnbVJQWnh4dzho?=
 =?utf-8?B?T1VHazloZEMrYmVNcnN6NVJiRjYvWnpoTTZWblVNZTJSemR0amdKOU9ocXho?=
 =?utf-8?B?K09hNXkvNXVCZ1lYTkVWVDhhekZQZ0dBWFVnNEhNMkhqem5nN1FYbHFkS1lO?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 627b68dc-7475-4618-87e2-08da954862c8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 05:25:35.7276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZmEnBsKbrAc1tvSShhGKpTjpS4Dj9pIYDXShw0k9FzF2Tp3KEJ99mEaoOxCj8epKLHxev6m1gmCXLKCyJ1/Yp4dGW9XU47fqAB/8He5pn3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7263
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Add new members to
 configure PCON color conversion
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


On 9/13/2022 12:25 AM, Ville Syrjälä wrote:
> On Thu, Sep 01, 2022 at 11:30:56AM +0530, Ankit Nautiyal wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch adds new members to crtc_state to help configure the DFP
>> output related conversions. Also adds a member to intel_dp to store
>> ycbcr420 pass through capability.
>>
>> This will help to store only the format conversion capabilities of the
>> DP device in intel_dp->dfp, and use crtc_state to compute and store the
>> configuration for color/format conversion for a given mode.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 0da9b208d56e..065ed19a5dd3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1311,6 +1311,12 @@ struct intel_crtc_state {
>>   
>>   	/* for loading single buffered registers during vblank */
>>   	struct drm_vblank_work vblank_work;
>> +
>> +	/* DP DFP color configuration */
>> +	struct {
>> +		bool rgb_to_ycbcr;
>> +		bool ycbcr_444_to_420;
>> +	} dp_dfp_config;
> Hmm. I'm thinking just something like
>   enum intel_output_format sink_format;
> might be easier to deal with.

Thanks Ville for looking into this.

We indeed can compute the final sink_format during compute config (based 
on pcon color conversion capability + platform capability)

IIUC, then during config_protocol_converter we need to compute what 
conversion need to be done based on crtc->output_format and 
crtc->sink_format

eg. For sink_format YCBCR420:

1. if output_format is RGB -> configure  : rgb_to_ycbcr420 and 
ycbcr444_to_420

2. if output_format is YCBCR444 -> configure  : ycbcr444_to_420

3. if output_format is YCBCR420 -> configure : Do nothing YCBCR420 
passthrough

So we store the sink_format and configuration is implicit in this case.

The idea with the dp_dfp_config was to store the conversion config to be 
done by PCON with given output_format.

The sink_format in that case is implicit.

I am open to storing the sink_format too.

Can this be handy for other encoder as well, or this will be used for DP 
DFPs only?


Regards,

Ankit



>>   };
>>   
>>   enum intel_pipe_crc_source {
>> @@ -1704,6 +1710,7 @@ struct intel_dp {
>>   		int pcon_max_frl_bw;
>>   		u8 max_bpc;
>>   		bool ycbcr_444_to_420;
>> +		bool ycbcr420_passthrough;
>>   		bool rgb_to_ycbcr;
>>   	} dfp;
>>   
>> -- 
>> 2.25.1
