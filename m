Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0F96BE632
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 11:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45C8610EECC;
	Fri, 17 Mar 2023 10:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ECE010EEC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 10:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679047675; x=1710583675;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zhs/+sVGlEHEJl90s0WXw2K8UWQG9yPfXcLAro5gVYM=;
 b=USz2AOdFG1wshze+VPPs3Jd0GeeOf/aXHbn0ZJvMwOjs1zsVaStikeVJ
 a+vQ9XhnLvxhBnz1KmyH54SOOrLclN5VGiEr31dMwaZWBp6q7O7/vKRNh
 oLd1WK3Bje7ee5imCZSCKQ5cKvo+Bhgr4Y6kQ7jI38VEDV+WJ8PFyazm5
 tcP4yhgcI0jVHESAvWTpFvgX6NJccKgV11oyrVP0EwiPakwvjTtcPYhdo
 VBiSOpP/lVkgeQTOJha2X8OqAispI3T8pB7qs7gtPAoZAGXTZRJ367Scf
 gut3iTjV38j8qOul6vy9tgRZYxH4m4p4QlH3889jj84KM7ShlHaxTwAQk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="336927174"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="336927174"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 03:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="804053075"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="804053075"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 17 Mar 2023 03:07:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 03:07:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 03:07:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 03:07:53 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 03:07:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gjcyAderXyvui8SlK0CfsWB8PvX5yxznRdbmpXUunjdpno3KJr2LZVIFBwm6uzQPKwri6FCfh/IWUq6FqzN/YCZHugQK0lxBu/sSF5gK3rODtw5Bu4H+VCLU7eb19l8/m5AcGpzHCfDkxzWrvJm4gWSAZK+Bvcq2JrdFNHNQgxwSmGnUDa01qTVVQTJCnRYHCnVRunPNZFHiSJGTr3AWQeMDOARGHw8XyHJuhChY0jam5dr7tGZme2tLwriedZ7oX9zEvSt6Q6vipjlIvVWfJZDhbXED1VfQhRztrYRQaWqj+3TclxsaDaMxjqKhcb/BZZHl2ZTTElho+mT6s0DUQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQLTQWkbh8t3/G21yndOhIWoprHKMuwnxwuztQk7IvU=;
 b=l8Er7R9Ge4G2meL8jnBaGjmb2hnFAdSlDChO+MaMq8ihlcS3f4mfIONhyjqLprbU4FTCKQv79IM1x7eM35f4SQVvQ9uz7+esL7AeMgloPEEDxKLlXbv4klheswi0R0DIGv90qjz8iZKF9U3t4XOlyyqg+SKzP/fYO/caDIXekHhQhOc1igjLG2KQE878Z8H0CKmN8e3o4zulM1pwpIbU7d53CGTScHdWMMDVNs6m1C+G8KHnDnK+rvkeVq3oX6Q8rAqWRrWZaDHF7glJFNPrtjux/LxUaqKoYxWZLa9CL8K/KNK6O+4qmKqTzIFtXkHTpatWwpngXZiBvwDzEOOcXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7427.namprd11.prod.outlook.com (2603:10b6:a03:4c1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 10:07:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 10:07:50 +0000
Message-ID: <b02ea94d-6d23-9c1f-62ff-ddd674436b17@intel.com>
Date: Fri, 17 Mar 2023 15:37:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-2-ankit.k.nautiyal@intel.com>
 <ZBOzJLhoeAFpHgoI@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZBOzJLhoeAFpHgoI@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7427:EE_
X-MS-Office365-Filtering-Correlation-Id: 682cd445-91b3-4164-5fde-08db26cf76b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SdMEzTXOK/rBi2/sMGo7D020Fi2AEak05jKuwkk/fq/WPtzh8EwudjNHea3rw8w82Lk+79bC6QjPMokgNB0lC7dZmST5H7vmzZtF1Pok16Fl7YtRcKrEpr2YaH3MzvpkTmGT4Ttg0rAPpTtRZTgopQmZ1g4QfU2lcKskpZlZSvpizmmRnF0olAEc1QXjByC1AFeTsdg1YFhzckW0hNKkrRc0VqIG4OIT+RGvkCpynjq4AZ+qaU8oTgfPXKZh4ypELbxolFs9IogNqBQF9pNBeqGYGfmak2PlRKR4TxjXP0jJDbMJWkaLcHxFzKnbkcrEy0HuCUAhvmRc7pvxgxQp/Bp7DvIj4ig6BDVxJmHF8OAz3sQbXsrsQEXxUjU1mqV9WGhaDZC5uvjU5AIdEHv2vz9L/Q0hdkxdZ8lSCmVmY5wSezE1veFzZZR8IWYf72/KhvjWkHeoLuIUMHpvwokPOVj61T1YJT/4uK7VwCuo26ACnOCd98woWJULJjQ8SwUMBjcFx2xUGR91TcDndmi0ad3z+TDb3GHMVXgAxunKdItZURVADC6jJu7P4sYWsnYrXrz/BiXRE/gbxb2TUEbmGKMtAptFzHITlZeRtyrNPYvxDWV1O8b1awXaGIMiq6Ll1zqJSIE0tvFi5AKp/og/D8V6/nQ0yWF9qgzH/mHzn2qvBxXCrTs9ML1Zs3h1k5jiUPyzurPPphvlOo5fkjl35yc5Mdl2WNmg/xxa7WnCsEY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(396003)(39860400002)(346002)(136003)(451199018)(6916009)(4326008)(8936002)(30864003)(5660300002)(41300700001)(36756003)(31696002)(86362001)(38100700002)(8676002)(2906002)(82960400001)(6486002)(6666004)(66574015)(83380400001)(478600001)(186003)(2616005)(26005)(6506007)(6512007)(31686004)(53546011)(316002)(66946007)(66556008)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2ZMVHEzZnhSSWFBa00reStBb1pmR1lBRzRCZUNLbUJrTjRlRlVUNTlHdFd4?=
 =?utf-8?B?Ym5zUzVrVWdZR1lsZTl6SStOQXZRQmYrSGFvdmRsTUZaZWNpeEZtYU5Fa3dP?=
 =?utf-8?B?SWl0dlFYOVNBcUxGaUlxQ21HTTZxZXkvdGxXbWgyTjJRalNTcTRLUjBKY1Bn?=
 =?utf-8?B?WFZHZ3BsOWRPNFlqMzY1NEpxNTNHRytiZVQ4S3lxWEdLYVA4d0JZNEkrcThT?=
 =?utf-8?B?SkFKNUh4NmNMQlBnd2tuVTVQUTJ0MDkxYkpjSkVTWGVCaVFIQlY5bGNOajA5?=
 =?utf-8?B?MUMzY1ZmY0ZWZnkxV2RmajVIcTFhRlFQcXNQWGQ1ODVLUTdGc2ZLTUJkU1h0?=
 =?utf-8?B?d0R6TEdzWEEvdmh4TWFBc3kybC9iN0NsS2JKR0x1UkVzaXhmdUtVY0FOWTJ0?=
 =?utf-8?B?U1Z2eW1hTU5XOCtpcSt3Rmg3MnR3czA3RGFnRkVwd2pYUlFpVHdMMkkxbTRG?=
 =?utf-8?B?SzhhTjNMUHV5VjhhV1c0Ukc2Y2xDZFFvWTRXbWswVDJSWDF5aGFHeU1hRGVP?=
 =?utf-8?B?dmpNcjVYRTRUeC9mV0pFc2NHZ2NNdGxRR1p3bW1GUE9QazkzL25jYk9JbFZD?=
 =?utf-8?B?U2JpSlp0YXJlT1RocjNOMWplOURWZnBlQUI2R0V5b1ZMN3MrRk1NYlVSZjVE?=
 =?utf-8?B?ZjNCeFVWczlZeWNEdkQ4NCtPZUpYUkJzOWI4M1FQdTl3ejdoS2dyNXpCenE4?=
 =?utf-8?B?WVQxbFJhSkVmU0QrTjQ0dDNzSUFSVGc4UW9aRm5CaVBmNkFIRk13RUNVQjlQ?=
 =?utf-8?B?NWNmdUJzcHp3ODMxM29pNVZBS2k1djMyckZqMzZXOWVDa2lSOFhHSzFKUDNK?=
 =?utf-8?B?NnhHZHpEYm1LMU96eGJYa1ZRWG4vemorQnFWUCttTjhPUEhyQXN4WU5lYTA1?=
 =?utf-8?B?UHMzVmFmUDI0QVFiejA1cTArWmsyZGx0VmF0aFJNdmUvMG81NjZxMXY3S1Fw?=
 =?utf-8?B?RFg3MmYzRVE1ZHBYSHVWOW9QamtFQVhrVkZ1UlVRVHNTSkpDT3dZcGR5d2JZ?=
 =?utf-8?B?QlcyME1SZWRwZGM0TTNVYWtjRmFyd0xLeFZ5bjQvc0ZCUGtaRmkrQWVvcm82?=
 =?utf-8?B?YkY3NHhXZGtQMVpFQlU2ZEJRRHlhYnlqM1k1V2pLdjU5eDlzMEhEOWRqMm5B?=
 =?utf-8?B?RFB4V0FBRzNnWVpiSEt6Y0JacUNkVzBha1duYVpNdDltWlFsZEhXTlBqSDFm?=
 =?utf-8?B?NXByaXpwaXkrM1MvN3Z2blAyYnR1dmxBU3d6cE9BdFFtM2hwdzNtR3IyazNt?=
 =?utf-8?B?aG1uM2l6blJkS3NFTjUzY1VIUW95R2prZThDY3RjY1g4STJsT0VmYkFMQmZm?=
 =?utf-8?B?RGVEQTZkVUEzcFZpS1kyR2ZSTE1OcnM0cHJoUndoaDZPOStVeksyKy9FVHpa?=
 =?utf-8?B?Nk8vU3RES29kS0JBb01weFR5clY0a1lzR1RTdTBaaWNnS2grZUxvU1Ric29N?=
 =?utf-8?B?NmZwR2ppUXBlSDA1eXYzcVdBang2Z01pVndkYnFwdjNkbDV6ZTRpcTlzclJP?=
 =?utf-8?B?Qkc1WkFTRzd2SGhpKzNEQzZrcmZObUFmT0QxVVhnNGhZRk5Ra00xZWlkMzh3?=
 =?utf-8?B?RWxIRXdVMG9EWGhUY2dyVW1vMzBZUk9KTVI5L2hBV0RVdFl2TGhuMnhKc2Z6?=
 =?utf-8?B?YXlxS3l0Z3ovSWhIOWJTWFppMGYvcnJjYTd6NUxreFNxcEFiMlNvWndlanoz?=
 =?utf-8?B?cVdGUVZ0Y0FvcGd1VWxjeHE2MjNqZ0g5UzcvQ1hNeWluSXd1T2U0bTJrWVBr?=
 =?utf-8?B?RnRyeU1NMHhKTm52Qjh1RXlLWC9TNnpIN2duRXE4Zmtid2FrblRwZTJncG1Z?=
 =?utf-8?B?UzM2WlFLd3RRNTExTFVtWEJQUHBDVnU5eWtVWEFtWDhvVGNVenluNHZsQ3py?=
 =?utf-8?B?Wkpkb1d1KytpUFU1NytNOEordjRTMVZRNXpuOUlvMXh1bzhXYnZWWDFQRjk2?=
 =?utf-8?B?NldIaWtITjdtMmhteisyWFlaWFlXdHAzVnYvRkpIVnp2K1VvYWd3Yzl4Nk9J?=
 =?utf-8?B?U0dDcnJhOEQxcTFDL0xWU29hUVpUNnB0TS9vcE9oWVNXajJJY093WjIrWGV5?=
 =?utf-8?B?Nm52VEVwVlhvUnJPWmNQbmovTGZ0QXBkSW1WK3hXM3lkVW1xMktmTzlaR29C?=
 =?utf-8?B?NGhwY1EwZCt4SU5abVIwSWE4d1BVdmNCS3dpQ0c5TEFlQU51bWFlK3BMODh0?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 682cd445-91b3-4164-5fde-08db26cf76b4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 10:07:49.6862 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KUL0UQRoDYPBdSGkRDv8Dyly0sIsiNKJ+QBswfjq+SgEcUO5FlrMXARIZuD4g7KaduDcAx4XX3hS6M0VZvdQkCUwxuXZBS4xMzI8RVaR79Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7427
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 01/11] drm/i915/display: Add new member
 to configure PCON color conversion
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


On 3/17/2023 5:54 AM, Ville Syrjälä wrote:
> On Tue, Mar 14, 2023 at 04:34:05PM +0530, Ankit Nautiyal wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch adds new member to crtc_state to represent the final
>> output_format to the sink. In case of a DFP this can be different than
>> the output_format, as per the format conversion done via the PCON.
>>
>> This will help to store only the format conversion capabilities of the
>> DP device in intel_dp->dfp, and use crtc_state to compute and store the
>> configuration for color/format conversion for a given mode.
>>
>> v2: modified the new member to crtc_state to represent the final
>> output_format that eaches the sink, after possible conversion by
>> PCON kind of devices. (Ville)
>>
>> v3: Addressed comments from Ville:
>> -Added comments to clarify difference between sink_format and
>> output_format.
>> -Corrected the order of setting sink_format and output_format.
>> -Added readout for sink_format in get_pipe_config hooks.
>>
>> v4: Set sink_format for intel_sdvo too. (Ville)
>>
>> v5: Rebased.
>>
>> v6: Fixed condition to go for YCbCr420 format for dp and hdmi. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>>   .../drm/i915/display/intel_display_types.h    | 11 ++++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>>   drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     | 23 +++++++------
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>>   13 files changed, 62 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 50dcaa895854..e8ac4552e681 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1593,6 +1593,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>   		&pipe_config->hw.adjusted_mode;
>>   	int ret;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> index 8f2ebead0826..e925e21d87fc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index 766633566fd6..185cd1971aa5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -178,10 +178,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>>   
>>   	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
>>   	drm_dbg_kms(&i915->drm,
>> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
>> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
>>   		    str_yes_no(pipe_config->hw.active),
>>   		    buf, pipe_config->output_types,
>> -		    output_formats(pipe_config->output_format));
>> +		    output_formats(pipe_config->output_format),
>> +		    output_formats(pipe_config->sink_format));
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 410c84fd905c..6fa86d1e0480 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3127,6 +3127,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>>   		return false;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
>>   	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>>   	pipe_config->shared_dpll = NULL;
>>   
>> @@ -3586,6 +3587,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>>   		break;
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
>>   
>>   	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
>> @@ -3984,6 +3987,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>   			bdw_get_pipemisc_output_format(crtc);
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = intel_de_read(dev_priv,
>>   						GAMMA_MODE(crtc->pipe));
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index c32bfba06ca1..c9d1863d2765 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1274,9 +1274,18 @@ struct intel_crtc_state {
>>   	/* HDMI High TMDS char rate ratio */
>>   	bool hdmi_high_tmds_clock_ratio;
>>   
>> -	/* Output format RGB/YCBCR etc */
>> +	/*
>> +	 * Output format RGB/YCBCR etc., that is coming out
>> +	 * at the end of the pipe.
>> +	 */
>>   	enum intel_output_format output_format;
>>   
>> +	/*
>> +	 * Sink output format RGB/YCBCR etc., that is going
>> +	 * into the sink.
>> +	 */
>> +	enum intel_output_format sink_format;
>> +
>>   	/* enable pipe gamma? */
>>   	bool gamma_enable;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 8e16745275f6..e52e2ffc355c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -819,11 +819,12 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>   
>>   static enum intel_output_format
>>   intel_dp_output_format(struct intel_connector *connector,
>> -		       bool ycbcr_420_output)
>> +		       enum intel_output_format sink_format)
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   
>> -	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>> +	if (!connector->base.ycbcr_420_allowed ||
>> +	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	if (intel_dp->dfp.rgb_to_ycbcr &&
>> @@ -862,8 +863,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>>   			     const struct drm_display_mode *mode)
>>   {
>>   	const struct drm_display_info *info = &connector->base.display_info;
>> -	enum intel_output_format output_format =
>> -		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
>> +	enum intel_output_format output_format, sink_format;
>> +
>> +	if (drm_mode_is_420_only(info, mode))
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	else
>> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +
>> +	output_format = intel_dp_output_format(connector, sink_format);
>>   
>>   	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
>>   }
>> @@ -2040,23 +2047,29 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   
>>   	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>>   
>> -	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>> -
>> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
>> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	} else if (ycbcr_420_only) {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	} else {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	}
>>   
>> +	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
>> +
>>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   					   respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !connector->base.ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>>   
>> -		crtc_state->output_format = intel_dp_output_format(connector, true);
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		crtc_state->output_format = intel_dp_output_format(connector,
>> +								   crtc_state->sink_format);
>>   		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   						   respect_downstream_limits);
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index a860cbc5dbea..ff0b821a901a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -293,6 +293,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->has_pch_encoder = false;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index eb2dcd866cc8..9884678743b6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -271,6 +271,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index c7e9e1fbed37..1ad0540c13ee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2171,13 +2171,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>>   
>>   static enum intel_output_format
>>   intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
>> -			 struct intel_connector *connector,
>> -			 bool ycbcr_420_output)
>> +			 struct intel_connector *connector)
>>   {
>>   	if (!crtc_state->has_hdmi_sink)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
> I think we need to move this into the sink_format selection since
> we can't have sink_format!=output_format with HDMI.
>
>>   
>> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>> +	if (connector->base.ycbcr_420_allowed &&
> Similarly the 420_allowed check here doesn't seem correct.
>
> In fact I guess what we need is simply:
>   intel_hdmi_output_format()
>   {
>   	return sink_format;
>   }

Hmm alright I think I got it. As we are computing, what should be sent 
to the sink side, the sink_format selection should have all the condition.

Since for Hdmi what is sent from port, is what reaches the sink so 
output_format is same as sink_format:

static enum intel_output_format
intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
                        struct intel_connector *connector,
                        bool ycbcr_420_output)
{
         if (!crtc_state->has_hdmi_sink)
                 return INTEL_OUTPUT_FORMAT_RGB;

         if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
                 return INTEL_OUTPUT_FORMAT_YCBCR420;
         else
                 return INTEL_OUTPUT_FORMAT_RGB;
}

static enum intel_output_format
intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
{
         return crtc_state->sink_format;
}


>
>> +	    crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		return INTEL_OUTPUT_FORMAT_YCBCR420;
>>   	else
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>> @@ -2195,23 +2195,26 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>>   	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>>   	int ret;
>>   
>> -	crtc_state->output_format =
>> -		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
>> -
>> -	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
>> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	} else if (ycbcr_420_only) {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	} else {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	}
>>   
>> +	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
>>   	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_hdmi_is_ycbcr420(crtc_state) ||
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> With intel_hdmi_output_format() adjusted as mentined above this will
> also need an explicit has_hdmi_sink check.

If we have sink_format as YCbCr420, only when crtc_state->has_hdmi_sink, 
as per above mentioned intel_hdmi_sink_format

then we might not need explicit has_hdmi_sink right?

Regards,

Ankit

>>   		    !connector->base.ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>>   
>> -		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
>>   		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>>   	}
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index a504b3a7fbd5..a7783da37dfd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -436,6 +436,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>>   		crtc_state->pipe_bpp = lvds_bpp;
>>   	}
>>   
>> +	crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index e12ba458636c..34ee9dd82a78 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -1351,6 +1351,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>>   
>>   	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
>>   	pipe_config->pipe_bpp = 8*3;
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
>> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
>> index 3b5ff84dc615..6f7ac225293e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tv.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>> @@ -1204,6 +1204,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 8d2e6e151ba0..82c30feb7a91 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -280,6 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>>   	int ret;
>>   
>>   	drm_dbg_kms(&dev_priv->drm, "\n");
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> -- 
>> 2.25.1
