Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D927164411A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC6F10E313;
	Tue,  6 Dec 2022 10:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA4C10E313
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670321725; x=1701857725;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u4jsH52rnffCOcdQRtxPiaE20lyziUKWeCU+qngvgpA=;
 b=ED6B4HLaeCP8fAqjd6uorulheRF0TsxIXUrvdG8q+TI+hqF9H0Si8K71
 IOvJN15z4rYqkRVlV8oQ0jRZjKU6ABJwWemUp7gcHtYdIjVp8u1Hn1JBi
 xuIVo3hUIwmdyDFOYWiitwrb+51xWtvZIXgubWfkFADXhWoM0g7DH1uYq
 QNB284R/tUiwWnSLnwTkj3tcEmyykr5xSgT7sImXwSwtjIkoqSA65iLqg
 e1qAGQ8EtAb9bZy1U4QGRGJ8kZ2Tg4wDwneI/4lVjdCpSEQSuwMtCgcSG
 s9VToDTBHYMK0OaN/4rGg9iKD0cOfFRVxg3BiWOW5STl1YfREAQ2EHERd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="343614588"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="343614588"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:15:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="648281478"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="648281478"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 06 Dec 2022 02:15:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 02:15:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 02:15:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 02:15:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 02:15:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLk6Gu+L8rHLAp/QqVz3MbFZOozIXs+xrfdD2DOn0Qnib4k1MmDnOjmfZ9gT5bCD2ZQEDYhdan/t7qd0zagIDeoA2R30qkwEr1KOZSlJv+UDj+KZepRq/ckuKr7ZCpIcsD/ai8Sw0SI2XNfo3FZdQoQn+9KPN9LnuXREgOcey9t2utcnndw0yIAN4CBo2GFffjyAr+lbQBxEbfRW4HvEJEhLLWO22Hkjc68jS/xw6b3xCf8MPW9QJJmM2f7DJ500Lj3jWpVpCqaR5EEk7tC5xjfB448xBG5wYkk4hontQM2+exXDrNGj3hH6ZPEaI4M81Qqv/48UKwCmNgcRykh/Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CIsI/MIDe/hzy09g9A+S2PpOwCvtbzLW6YWEBpfq/2M=;
 b=fmA7idRoMYlcnd5+WBRNqRNA+cMnf1MWNE9I/i6KcBVDfHfMHd2o0/dxlai/jUZVyIB/R+aXejWBqjhr7SmkxreUna/MfW4tcEjLhi3nIWhdGZyBOVcWNpTQKnr59LHkBO5cdzmFhp0K6I9XsPwUTOYe+A7FXxw4M9iposivEutIBZ0CKqNzpqSEpsA76VGXnUkG22T2hhWn1bCcJNTMZjUTylRFVcyVzitjztpMHiIVqGxMmEQCk5W6SjQ/ZtgZjz9+5xGvf2XJaH3U1GzL6S26Ix0brDrbE3z3ysxEPyTmW7/g0IgADkigQUSSU3LL7mTGGOqAMI5uWjFfrYoVkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB5946.namprd11.prod.outlook.com (2603:10b6:806:23a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 10:15:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c%5]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 10:15:21 +0000
Message-ID: <6527de62-b815-e523-096d-1c95b3544d12@intel.com>
Date: Tue, 6 Dec 2022 15:45:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
 <20221128101922.217217-5-ankit.k.nautiyal@intel.com>
 <Y42du6EzVtTs2ir5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y42du6EzVtTs2ir5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB5946:EE_
X-MS-Office365-Filtering-Correlation-Id: b639188e-f510-4317-641b-08dad772c860
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lAhxok7bQ0pOX4UFVBdzykpjLXe9ySukEI/his39aG5RKoxexC+lfcVXCgHlOxVbgcQAMKFT9wQGZsdaQRv++p7TMr3mmsODypOZPzPQ3Yjf4eAMfJXJJCFb7iRkmgSuK18sap9XgMc76pR4o2uNKNDBZ6PPeFjoUIzgf4UkDMHg+80BmlnB4iyObf7w6p4f9VYAxCuyX0t1mYRpAWw5eo+iO4iIZOK3Sq2IsA2EmzWj2Os4g+EnPFi0yE8l1uK4eyoD7yjIqHw1PWkx+1qBGBndoF1Q6MCndwuiZzwg0lfI9MI2V0ro2SXxjcA41ixZid6xk/AXqwszduOz5guMi9fNpm+zJSLGhOOqStPMNVpIkkCQR1JgPdGx3d8q56zTLfKaZD62bdv20PtdSL7o5YHhlECLIvqC/rI7LJpmgcTqyI2nWBAlNsO1P8joFzoZPmYflYloAi3BgJ0WMNNgA39H5n94vi3jg2tbGDSkvD3bx7k+lMIFbbF//ysYklMdtTQmqAmgVVxw6VKAgnrkn8pGzt4Aw4sAqVPLriQ92mQ78fN4MLr9SBdJtmelLond5DBL0PYEyp3kMvzVRSEeSBY8d8kAveJcAXb+9qaGBOf4GFhQr4/L5Sd1vLTQEq+a90FMVuoawaIFOng6jJlDwckuihUX2wAarDjRawMhNHh/+s9cApXpWOcIvcuwGzWeLJXWIpfuvktcZcCIQhz7eIr/Wz5FDlbE0VtPeZomcdY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(136003)(376002)(396003)(451199015)(316002)(30864003)(41300700001)(6636002)(37006003)(66946007)(36756003)(4326008)(66476007)(66556008)(5660300002)(8676002)(6862004)(83380400001)(8936002)(82960400001)(2616005)(186003)(38100700002)(31696002)(6486002)(55236004)(107886003)(86362001)(26005)(6512007)(6506007)(6666004)(478600001)(53546011)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ykp5YVYzbXFJOE9BL0lubG5rbE9saklyU0Y3S2JzRUZXazdBaGNzcnVRTjRu?=
 =?utf-8?B?cTJJV1hLdHFvK1I0TitQVk5kTVVxcjV1c1RlTHZyTUpKUVFOaWdtcEV3RVpz?=
 =?utf-8?B?dks1WGFERFVNQWZxcG05Z2o3WlRCQ3NQU2ZyTElDd2Q0K085U2F2cWdzR011?=
 =?utf-8?B?RUlFTFIzN3YrV0pPMFpGek8vOVlaZk1lQ29YRzdpbGVmVmFWYUY3R3NtbkFq?=
 =?utf-8?B?M0VTdWtPQkpGazJCUkxPV3M2ZjdjQytWakNuRUh1UVE5U1FDY3N4NzF6VUVi?=
 =?utf-8?B?cnFaai9LdVd1QjV5WWZhV3lQUnVIY0I1eHBWTW1QZkIwQ1B2Q2swZHZCSU9x?=
 =?utf-8?B?NXNuK2E3ZlNBdm1MYThpdloreTFRVHFFZUtMUEQyWnFKM2FpOXQ3WHNjMlNw?=
 =?utf-8?B?SzVVSG5aeVExcWR6OFAvUnNzdHJaRVpySEpGV1dVV1B0czNhOEZWSmtrVU9n?=
 =?utf-8?B?K3luVGdlZmp3NnYwZllZTHBtMUhKY1AzK0lCdHI5VkpKUnp6L0U1cjdrNjJQ?=
 =?utf-8?B?OFZWQ2xCR1k5eTdSTVF0ZFJqaUVydVB6dTdYSkQ5eFFJVEo0L0VKY0VLRytr?=
 =?utf-8?B?MFFjZ01GUk1QNjlraXBTbFh2dUN1MUM4Ti9sZUtrNlJmUHZIeDdmNWRhSStZ?=
 =?utf-8?B?eDBCTGZ6OTBKM2tlWUFKWWdBU1ZPaVVVdWtDUGlyaThnR2dTY1lMTjU4aXpE?=
 =?utf-8?B?TmdzWjB1bkNGeDJBUk8wR0RaL3NxazlxeXZVYlFoYVljZnQwTmRXRlhxeGVw?=
 =?utf-8?B?RU94MGJtQlRWY25kdTIvL09OblU4YTRzUDlvaUF5dUVsNjlDc1NPNVoxN3U2?=
 =?utf-8?B?M2k3d00vOVJtWGUwODBjUzI5MXBJN0M1M1E1SzN5ejNpOUxZR1NlamdTMjRB?=
 =?utf-8?B?OUd2dnZObnhLVmM2UFhSdDFXbXQ1dnZyaTN4aTBFTEwrbXQ3VjFqUzZxRkJY?=
 =?utf-8?B?U29WempYc0w2ZVFoeHpNSC9lbVkyRXV4aktCRjJ4MEdPNkRHZW5pRUI1anZD?=
 =?utf-8?B?aXI3akd3NnI0N2hNR1Jpc1NzRllLdGRFVnlNSXFOajdnelVRYmJUNkszNEFX?=
 =?utf-8?B?ZlhGUmY3eUI0dC8zMUNUQmVVRXBiWW9pczhFaTk4dHg0aWg2RW1nNVVHbnlY?=
 =?utf-8?B?WENrT3dZWDcxNnM5TytZdm9jZkV4cCswenVtd3YyUDVYZEtrUVlHRWtPMTBL?=
 =?utf-8?B?NkFndEFlNmVkSUtjdXRJOVQ3OS9FVS96RHp1YUprSG9tMExGZTFtVmQ1cXRS?=
 =?utf-8?B?YlFHZmZUWUwvYSs4eWdxNGliN0R3M1ZKN1FoTnorckFQQU83dlFYcys0R1U0?=
 =?utf-8?B?bXBnNDJlNEV2clUzdGMvUnFFMVJDZy9HUzNnZHJublB2T1Fsd01jL1g0eGh3?=
 =?utf-8?B?WW9qM0tNMDdXR3REeWtRaWF1cUlPdnlnYk9SNkJweUJFTGxabFhMVVVOZnNQ?=
 =?utf-8?B?cmdiZGxBcWdQa0ZlcWZBSXdDcVU0bnhUd1QyTUtyeUY0NXdBMllqYnNNRkJW?=
 =?utf-8?B?ZUF6WFVkYVA3WmlXVUdnMkI0Q0Rvb0hLZG1idWE4SnZ3QWVyaUtyQklkN0lU?=
 =?utf-8?B?SHBpUkhWUUNSZW85UGxlL0t0Qk9rUmxRYUpzSTJEN0J3MVB1bTJqb1VndVZG?=
 =?utf-8?B?UjZkbmZ5ZHlRd1VtRHVMaE1XbVpGd0ZvSXkrZmh4LzYxbTRoWlV6NTQyaEdN?=
 =?utf-8?B?aHc2ZnZFZjU0NjZHdWo1N2VvcEZtcEVSMTJiNEhyTUVkUkxwbWE5N1lpQmdS?=
 =?utf-8?B?RnZPS0g0NTdUOVl0WUZaVS94WDZXb3dzU0s4NWJ5a2x4UUozOE5sZDJjUzdx?=
 =?utf-8?B?aDJmSElobUdkMTREaHpIOWZIUnB6dFhYcCtmc203MlV0VCtCSXZZQ1I2Ukt6?=
 =?utf-8?B?ZzErOUVjeVZpWWtOZUpQZjZLVzV5bWhqVmhOSnkyTFlFVTFONHc4OWs3VTFW?=
 =?utf-8?B?MWk4WS9aWitpam5mRlZwYzg2dU9PR05PVEc2OWlHaFh2WURKbDVKK0k2UFFE?=
 =?utf-8?B?cTlMZFBxT01ha1FLMFVsL2JCU2pOdEhWejJ6NmFSZXNhT2J4OThzRVJGN1VJ?=
 =?utf-8?B?N3J0UHUzWTk4SGVVbTVxT0xtUHNVUnNCOWVJVy9TUDZLZG1XSFkzRXRSRXBE?=
 =?utf-8?B?NnZSODY3Mno0UVVpUXlEUWV1ZEViNGxKOXJKS0xReWphL3BGK1lLY2lTSU9Q?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b639188e-f510-4317-641b-08dad772c860
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 10:15:21.4975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKq3oNu1TrMgvPLYKiSK4gX6gdTrR+3lZf35ld2wUEH0CfwL6PGcqsvLTTYQxs1QN+dUixvEsZI9EpPtu3rOgnUtNecMnIUExaJcudZkR0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/dp: Get optimal link config
 to have best compressed bpp
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

Hi Stan,

Thanks a lot for the reviews and suggestions.

Please find my response inline:

On 12/5/2022 12:58 PM, Lisovskiy, Stanislav wrote:
> On Mon, Nov 28, 2022 at 03:49:15PM +0530, Ankit Nautiyal wrote:
>> Currently, we take the max lane, rate and pipe bpp, to get the maximum
>> compressed bpp possible. We then set the output bpp to this value.
>> This patch provides support to have max bpp, min rate and min lanes,
>> that can support the min compressed bpp.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 223 +++++++++++++++++++++---
>>   1 file changed, 200 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 8ddbbada22ab..10f9292e1e0d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1461,6 +1461,187 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>   	return drm_dsc_compute_rc_parameters(vdsc_cfg);
>>   }
>>   
>> +static bool is_dsc_bw_sufficient(int link_rate, int lane_count, int compressed_bpp,
>> +				 const struct drm_display_mode *adjusted_mode)
>> +{
>> +	int mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock, compressed_bpp);
>> +	int link_avail = intel_dp_max_data_rate(link_rate, lane_count);
>> +
>> +	return mode_rate <= link_avail;
>> +}
>> +
>> +static int dsc_compute_link_config(struct intel_dp *intel_dp,
>> +				   struct intel_crtc_state *pipe_config,
>> +				   struct link_config_limits *limits,
>> +				   int pipe_bpp,
>> +				   u16 compressed_bpp)
>> +{
>> +	const struct drm_display_mode *adjusted_mode =
>> +		&pipe_config->hw.adjusted_mode;
>> +	int link_rate, lane_count;
>> +	int dsc_max_bpp;
>> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> +	int i;
>> +
>> +	for (i = 0; i < intel_dp->num_common_rates; i++) {
>> +		link_rate = intel_dp_common_rate(intel_dp, i);
>> +		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
>> +			continue;
>> +
>> +		for (lane_count = limits->min_lane_count;
>> +		     lane_count <= limits->max_lane_count;
>> +		     lane_count <<= 1) {
>> +			dsc_max_bpp = intel_dp_dsc_get_output_bpp_max(dev_priv,
>> +								      link_rate,
>> +								      lane_count,
>> +								      adjusted_mode->crtc_clock,
>> +								      adjusted_mode->crtc_hdisplay,
>> +								      pipe_config->bigjoiner_pipes,
>> +								      pipe_bpp);
>> +			if (compressed_bpp > dsc_max_bpp)
>> +				continue;
>> +
>> +			if (!is_dsc_bw_sufficient(link_rate, lane_count,
>> +						  compressed_bpp, adjusted_mode))
>> +				continue;
>> +
>> +			pipe_config->lane_count = lane_count;
>> +			pipe_config->port_clock = link_rate;
>> +
>> +			return 0;
>> +		}
>> +	}
>> +
>> +	return -EINVAL;
>> +}
>> +
>> +static u16 dsc_max_sink_compressed_bppx16(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>> +					  struct intel_crtc_state *pipe_config,
>> +					  int bpc)
>> +{
>> +	u16 max_bpp = dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_LOW - DP_DSC_SUPPORT] |
>> +		     (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
>> +		      DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK << DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT);
>> +
>> +	if (max_bpp)
>> +		return max_bpp;
> I guess it should be max_bpp << 4, just as everything else returned, unless that
> dpcd reg doesn't store it shifted already, which doesn't seem to be the case.

The DPCD 67h-68h together store the 10 bits of max bits per pixel in 
U6.4 format.

So the value for max_bpp is actually x16, so this should work.

I think I should have used max_bppx16 as the identifier to avoid confusion.

Will add suffix x16 in next version of the patch.


>> +	/*
>> +	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
>> +	 * values as given in spec Table 2-157 DP v2.0
>> +	 */
>> +	switch (pipe_config->output_format) {
>> +	case INTEL_OUTPUT_FORMAT_RGB:
>> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
>> +		return (3 * bpc) << 4;
>> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +		return (3 * (bpc / 2)) << 4;
>> +	default:
>> +		MISSING_CASE(pipe_config->output_format);
>> +		break;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static u16 dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_config)
>> +{
>> +	switch (pipe_config->output_format) {
>> +	case INTEL_OUTPUT_FORMAT_RGB:
>> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
>> +		return 8 << 4;
>> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +		return 6 << 4;
>> +	default:
>> +		MISSING_CASE(pipe_config->output_format);
>> +		break;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>> +				      struct intel_crtc_state *pipe_config,
>> +				      struct link_config_limits *limits,
>> +				      int pipe_bpp)
>> +{
>> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> +	u16 compressed_bpp;
>> +	int dsc_min_bpp, dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>> +	int ret;
>> +
>> +	dsc_min_bpp = max(dsc_min_compressed_bppx16(pipe_config) >> 4, 8);
>> +	if (DISPLAY_VER(dev_priv) <= 12)
>> +		dsc_src_max_bpp = 23;
>> +	else
>> +		dsc_src_max_bpp = 27;
>> +	dsc_sink_max_bpp = dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd,
>> +							  pipe_config, pipe_bpp / 3) >> 4;
>> +
>> +	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
> Another thing when I was checking it eventually could end up with same compressed bpp, just
> as input bpp, which I guess is wrong(we should still try to get some benefit from DSC, no
> point in having compressed bpp, same as input bpp, even if source/sink allows that)
>
> Otherwise the situation was that we were getting compressed bpp = 24, input bpp = 24.
>
> So I would add something like
>
> dsc_max_bpp = min(dsc_max_bpp, (pipe_bpp - 1));

You are right. Need to ensure that the compressed bpp is lower than the 
input bpp.

Will add this check in the next version of the patch.


>
> in next patch where you switch to 16x form that would be like:
>
> dsc_max_bppx16 = min(dsc_max_bppx16, (pipe_bpp - 1) << 4);
>
> to prevent this.

Right, perhaps pipe_bppx16 - bppx16_incr will be better.

So if pipe_bpp is say 30, we try with 30 - 1/16 (if the bpp increment 
step is 1/16).

Will add this in the next version of the patch.


>> +
>> +	for (compressed_bpp = dsc_max_bpp;
>> +	     compressed_bpp >= dsc_min_bpp;
>> +	     compressed_bpp--) {
>> +		ret = dsc_compute_link_config(intel_dp,
>> +					      pipe_config,
>> +					      limits,
>> +					      pipe_bpp,
>> +					      compressed_bpp);
>> +		if (ret == 0) {
>> +			pipe_config->dsc.compressed_bpp = compressed_bpp;
>> +			return 0;
>> +		}
>> +	}
>> +
>> +	return -EINVAL;
>> +}
>> +
>> +static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>> +					 struct intel_crtc_state *pipe_config,
>> +					 struct drm_connector_state *conn_state,
>> +					 struct link_config_limits *limits)
>> +{
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	u8 dsc_bpc[3] = {0};
>> +	u8 dsc_max_bpc, dsc_max_bpp;
>> +	u8 max_req_bpc = conn_state->max_requested_bpc;
>> +	int i, bpp, ret;
>> +	int num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
>> +							   dsc_bpc);
>> +
>> +	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>> +	if (DISPLAY_VER(i915) >= 12)
>> +		dsc_max_bpc = min_t(u8, 12, limits->max_bpp);
>> +	else
>> +		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
>> +
>> +	dsc_max_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
>> +
>> +	/*
>> +	 * Get the maximum DSC bpc that will be supported by any valid
>> +	 * link configuration and compressed bpp.
>> +	 */
>> +	for (i = 0; i < num_bpc; i++) {
>> +		bpp = dsc_bpc[i] * 3;
>> +
>> +		if (bpp < limits->min_bpp)
>> +			continue;
>> +
>> +		if (bpp > limits->max_bpp)
>> +			break;
> When I was testing it myself with kms_dsc it didn't work initially, the reason
> was that you need "continue" here, instead of "break", the thing is that dsc_bpc
> is populated in descending order, so lets say the biggest bpc will come first,
> however even if it goes beyond the limits, it doesn't mean we should bail out,
> but rather we should continue and check the rest dsc_bpc array elements.
>
> Stan

Thanks for pointing this out. As you have rightly mentioned, the dsc_bpc 
is in decreasing order,

so we need to try the next dsc_bpc if bpp > limits->max_bpp.

Now I can see the above condition is wrong as well.

In case of bpp < limits->min_bpp, we can break from the loop, as the 
next dsc_bpc will any way less than the current.

I will fix this in the next version.


Thanks again for trying out the patch, and the suggested changes.

Regards,

Ankit


>> +
>> +		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
>> +						 limits, bpp);
>> +		if (ret == 0) {
>> +			pipe_config->pipe_bpp = bpp;
>> +
>> +			return 0;
>> +		}
>> +	}
>> +
>> +	return -EINVAL;
>> +}
>> +
>>   static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   				       struct intel_crtc_state *pipe_config,
>>   				       struct drm_connector_state *conn_state,
>> @@ -1505,17 +1686,11 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   		return -EINVAL;
>>   	}
>>   
>> -	pipe_config->pipe_bpp = pipe_bpp;
>> -
>> -	/*
>> -	 * For now enable DSC for max link rate, max lane count.
>> -	 * Optimize this later for the minimum possible link rate/lane count
>> -	 * with DSC enabled for the requested mode.
>> -	 */
>> -	pipe_config->port_clock = limits->max_rate;
>> -	pipe_config->lane_count = limits->max_lane_count;
>> -
>>   	if (intel_dp_is_edp(intel_dp)) {
>> +		pipe_config->pipe_bpp = pipe_bpp;
>> +		pipe_config->port_clock = limits->max_rate;
>> +		pipe_config->lane_count = limits->max_lane_count;
>> +
>>   		pipe_config->dsc.compressed_bpp =
>>   			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
>>   			      pipe_config->pipe_bpp);
>> @@ -1523,29 +1698,31 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>>   							true);
>>   	} else {
>> -		u16 dsc_max_output_bpp;
>>   		u8 dsc_dp_slice_count;
>>   
>> -		dsc_max_output_bpp =
>> -			intel_dp_dsc_get_output_bpp_max(dev_priv,
>> -							pipe_config->port_clock,
>> -							pipe_config->lane_count,
>> -							adjusted_mode->crtc_clock,
>> -							adjusted_mode->crtc_hdisplay,
>> -							pipe_config->bigjoiner_pipes,
>> -							pipe_bpp);
>> +		if (intel_dp->force_dsc_bpc &&
>> +		    intel_dp->force_dsc_bpc <= conn_state->max_requested_bpc)
>> +			ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
>> +							 limits, pipe_bpp);
>> +		else
>> +			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
>> +							    conn_state, limits);
>> +		if (ret < 0) {
>> +			drm_dbg_kms(&dev_priv->drm,
>> +				    "Cannot support mode with DSC with any link config\n");
>> +			return ret;
>> +		}
>> +
>>   		dsc_dp_slice_count =
>>   			intel_dp_dsc_get_slice_count(intel_dp,
>>   						     adjusted_mode->crtc_clock,
>>   						     adjusted_mode->crtc_hdisplay,
>>   						     pipe_config->bigjoiner_pipes);
>> -		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
>> +		if (!dsc_dp_slice_count) {
>>   			drm_dbg_kms(&dev_priv->drm,
>> -				    "Compressed BPP/Slice Count not supported\n");
>> +				    "Slice Count not supported\n");
>>   			return -EINVAL;
>>   		}
>> -		pipe_config->dsc.compressed_bpp = min_t(u16, dsc_max_output_bpp,
>> -							pipe_config->pipe_bpp);
>>   		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>>   	}
>>   
>> -- 
>> 2.25.1
>>
