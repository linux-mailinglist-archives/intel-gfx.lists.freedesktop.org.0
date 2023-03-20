Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1952C6C095B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 04:37:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDC410E05E;
	Mon, 20 Mar 2023 03:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EF310E05E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 03:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679283418; x=1710819418;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7D6IXJcdCkPFXWk9oFh0XGEmnAFbuziNcCX1N9vg5W8=;
 b=bBK3K4dInrjfQ4NRWUhlJo0o/6tlGHBg4fgVqLXKT2XD52R4HWsclBGI
 pSIGI/3RBc3ydOmuVZP17omVbJUz9j4ISBWoyeMt2gju+7BT5MZDhJ8X9
 8NYLbKc+oEW00fzmG67JWSpZWWAkedZZrHAC5LPf85OdMpw05VAEQ7B+X
 Y1oz8snz/u7dzefO8yLUmeNJdj0Zgi08HqXqqvBrn+L5jxUB5zAnYe187
 Fj92Mm+sbjD/3Z6h+g6ki3fx32vaXWwpBxZcvn5n8fFo5bQ+pqvVGrlc9
 /oa6qMqW0QDLJm7HlpWnYyeu/wacOA/jjEFjI/YMz0nkJghPSHf8IDI4L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="403438990"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="403438990"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2023 20:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="824333539"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="824333539"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 19 Mar 2023 20:36:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 19 Mar 2023 20:36:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 19 Mar 2023 20:36:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 19 Mar 2023 20:36:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 19 Mar 2023 20:36:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FK5OmNECMuqXKszKmO/Jfysbymqwybt96n7KRzla97PNRCGApVZgMGJG6dzT0vPu2OnJ0KQzBeErLCFi7NC9W6ZGH1RzcgYa4jZGmd3rAI68ILAtVukxcb3EEF8qmi6p0g9HgpuikyQb/3n9OQ5nzwCs1GABuZsR7eyrO3hWrg58bnAr6RNVUa9dLm1A4iQc2rLQZ5YUHbDamX/SLN8AyN8B1f02Wa+GdwQ1poaVpRFS5dS+LlLXnkcYojTuKsvXv0QeZ4ls5Z7jsdyFcNuWpEruL3uAQhv5slcbW2nao99cuOOkR6DyhoDQM9V9pItOxH0xGyoMRUPbmvvuF3cASg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7ZoeIIja5nEl2/6K+BLI2AJqw2VXjQJpd3rdVJCViE=;
 b=cppOWt6Ml3K5qWYjNbQdw124hqEIRopvOXIar68Eh1eVlmfM3L0YgUGD1NVjNrdovK6p4c4Aqj2WjYpePlOSLxD7u7jQvOlxnm+59fWAC5K1melSLyvf233VnseIevq0sTNilVQTVsjqibAqvP89rbNlbppyEQ1BBPY/UUZG6k3D7t0X9eNhmJd/dbjres0zGCYGCDglRF9+Ril0pN4sHZ5IMrRVT6WZEomD79Eh6+hGiKmYi1a2/5VFiX+wB6QIGHEx701vECvmq9PBdyo7Xx9rk7uVbRVUIYmNMIDlI1IwQfz0Qw/NjOF9ptzzV/KgnN+dv+aCBfao9h6IETgvVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6171.namprd11.prod.outlook.com (2603:10b6:208:3e9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 03:36:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 03:36:48 +0000
Message-ID: <3abeb6b7-18b4-26cd-be4e-2644bfe18dc9@intel.com>
Date: Mon, 20 Mar 2023 09:06:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-7-ankit.k.nautiyal@intel.com>
 <ZBO7vvuob0AHHmwZ@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZBO7vvuob0AHHmwZ@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0068.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6171:EE_
X-MS-Office365-Filtering-Correlation-Id: 2363af15-eff1-4f07-8443-08db28f45605
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DPgjIEeu8Yvzqal7xsJe8IyOECnYi+J/GaWDKYNEAWkg+WOWTamnGY5FX96bd7f1rBMxExowcLEzxAW0EDQ4JlkEKW4zjBT0ecLLsdc+3ijWRZQNfNiGtqaqWtJaCgZ+PfqvZP4IINK/aErkLgN/LC/HH41+6HqEodD8obyoNfAQK/9Vn/xK4fN/yZDOJ/WxfsMjt7DgLoRCRM9gdw0tDe6dPv6gYq0detmEmbHgKNnCy9+xC6bOVGUfLTr/ofjva7h0Hm8ksoi2f6fEy5bHfsmV8kFHeTewpDunTvxJEnLh0D6VgSuQFv1/w5GlmN1NKi5LZBahnhUtkHYqcfD8VEQ1vHTNHhgeSLt+POmwEC5Ln3YLr78Mb44XFI5o55EdBMvfJyMevxj5gxhPKCb1xIIpVpEocMkDp5sYi9aXSQY4+ut7TOCQwGhCTSC2VLOm56DmLa6fXAvDNLeVPlzWcdydoZIvEGaEenS3W1ZQs8LaHcCcYdUJqtcZHPnpqkwlfUPwrEC0VHcc6kll09NgxJU9HQzl6UHm+NzB0cR02oaHCK/CTKp63WjQ3EwlLTgGi6mXjIzXe+zbWSrLnmMM9Hz2CZc5PnsuIulW4mqurUtTG/dGVtQ6qVaLm1yBQtKyF3Bf+nEXijN3TbaxJI+JdrMMZWaUjfohaX99Sg7v+FaCN2Mr2Sp1ooPqugqQB2nDbsto59GEIH0SVmtMlQmiyWMdPiAYsMjtuVYJOHenHAI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(39860400002)(136003)(366004)(346002)(451199018)(31686004)(66556008)(66476007)(66946007)(478600001)(41300700001)(8936002)(8676002)(5660300002)(36756003)(6916009)(4326008)(86362001)(31696002)(6486002)(53546011)(316002)(6512007)(6506007)(26005)(66574015)(82960400001)(6666004)(186003)(55236004)(2616005)(2906002)(83380400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eThvR25rbXVUR3BDYnJ6QWh2cWdvSGpDQ1hDQTJvQi9tWENwMWQwQnRGR3Bv?=
 =?utf-8?B?S05mbmlCR242bVNNOCs3SkliNW5qVmtucCsyajEva1FTRUVxOFcxVUFHZUgz?=
 =?utf-8?B?TnFvdlFiV1hoNkxoM1QyT0ZJdkJ2OGxlMUp4ZEFsWHJaRnp1aDJ0M1dzNGRv?=
 =?utf-8?B?UXhLY3R6YlhYdTIrcmM2Y1VpeGtEb2hlRG5YdFhlQVJ3Qkp5NEVRV1Bsa1Br?=
 =?utf-8?B?UFZZM2JkTWN1Yml0b1hJYnBndFlaR25pamVrNW45NkIxMzJIVEZmSEo5aHlm?=
 =?utf-8?B?ZTZ1cDBnQzRGZlU5LzNVQWlOODdDZUNPajlFVGp6T2NLL3I0VDVZT3BCUzFX?=
 =?utf-8?B?aW1XazZ3Zjk4NUZGdFdJUlBjQmpLai9yakJhSFpPRzc3OUdQSnJnYTFHQ3c4?=
 =?utf-8?B?RFRiVlpYeEs2QVJLRjU1ZVlTci80TUsxV1B5Um5QRGRzM3FwNDNDa3pleGNK?=
 =?utf-8?B?K056dUhXT1pSVlNDMUx4a3A2c0dVVm85K3BqRTN5QzJRb29BSUQrRkUzelUv?=
 =?utf-8?B?Y0Q4ai9ZdUUvOVMvL2pXWjZhRjZwcWYwTjNzTFZWb2FOWTUveDlxenVqNmt5?=
 =?utf-8?B?N1BRR0FjTGFRZUNNNnJSTkk2Y3VGN0l0cm0wTUNNS01sTXFtUWRFbzFuMlRr?=
 =?utf-8?B?cHkweXVBa2t3d3lWNUxrZ09ERlM2WjdEVVY0VmIyd1NBSHhvSHpwTGxKcDlF?=
 =?utf-8?B?WWxiNXhpRi9URzA4UVBhTVR6Y2lOTjRza21TUU16NWQ4U3lPc0NZVkIrSVk0?=
 =?utf-8?B?ZkJZUzlkNCszVWVkcTJ4clczZ2JBZ2FjM0R4N0RUSWRTL1Z5aWdXZDF2KzEz?=
 =?utf-8?B?NktEUnRVc0h2VE5OTnJpWHZ3YkIrV1piajlPT0paVjJORWFSQWFXRjZOZ0lk?=
 =?utf-8?B?dE1JOVlMNHh5YVdPM3NYcXE3YkE2L1BFV2V0OWJFMkVSQUJ6dXA3elVDRUto?=
 =?utf-8?B?aTZ0WGI3enRNRGlBcWVoSGZhYjVrQWRDeFEyQXpvT1U5TU5RUUlYeDZWUXhF?=
 =?utf-8?B?L1dISmxCNmhESDBzNGJkOGVjZURRbGhYTnJPNDNIaFhEMkJvZWFIUWhRNXNW?=
 =?utf-8?B?VVQ0K3NpdkNvMFpRSDFiTUxROEhyZ0IxRDlEeWJWdldVSlc4aXhsQy9SL3Fn?=
 =?utf-8?B?c3pPT0RvVHg1MWpKV21JejBGVmxJcmZnT0hiUGNMUllicnpiNzRUVDZuRjdt?=
 =?utf-8?B?QXpHdUNlNHhPbjVWWm9uQnNQejdzeGRWTVMvSlFSTTdpeDM0RzQvRW0wNTNQ?=
 =?utf-8?B?OGMyUjg0eWNCemE4VDhEbll5a2ZYS1E2amdHdXBwMkhIK0VxaUVyaFpuK1BC?=
 =?utf-8?B?L3phbTZkMnU3VytEaXZNY3llaXoraEE5TWphamExZVNpSWpVdXo5SVZzbE91?=
 =?utf-8?B?eVptdXpkUjNaWGVEcWZlK0lJTEcwWnp4azUvT3RYYzhwVTc0R3M5WTFGb0FZ?=
 =?utf-8?B?YndwMU9RdTJianhPVjNBRmxKcnhoWXl5djd0bDVkZSt4UTgveFpld0VKb3VC?=
 =?utf-8?B?eHk0UDljd042QkNQcG9wTzhBQ0dwN2ErU242TFgya3MzTlE0d3p2S3I5UTQr?=
 =?utf-8?B?N0hNYlhOUUl2Q3QwK2tjZEVoN045TjJpcjREMitSQXpYbWc4elFjU3ZBTHJu?=
 =?utf-8?B?bzRXNm5rc0djbzJnMkJRbzNJZkxFZ3pNd09EYkpLZnA5NlpSQ2lDZC9WbjZV?=
 =?utf-8?B?bExXbHcrKzhxOHVQdENNWkliUThMMVk0U2dPV3RJQzVid0JkVVlQOFFaS1dy?=
 =?utf-8?B?aW4xT3lOVzdxYkNrRUlYN1gwVXdOQ2s0WnJvbWt1TVJ4d1ZmaDIxN1FEaFFr?=
 =?utf-8?B?ejBCTkVQY1BYY1F5aCsyclFaajQ1WXJlZ2IzNUo5bDFxRUk3TzY1Wm80alBU?=
 =?utf-8?B?SXZUcE1Fc2g4Z2tZMjNWdnlOME9KcURyVHNFaWkyTHl0aVVZelo1TllzMjBr?=
 =?utf-8?B?SWpQOVNVRmQ3SGFYTVByNUd5Qnl4N0wzTURGaWo2U0ZPaDg1cExWWjZuYXVY?=
 =?utf-8?B?bExNS0ZWODgwb1lZT2hnU2JTVjN6UFRJR3k2SkFra0kzNkNHbXFDOXVSUlNE?=
 =?utf-8?B?alNIZkFxTVdMNFhVeWlDT1M5eHpYWFUwRzFNZDZBandMbkZjNUFQZms3VmZP?=
 =?utf-8?B?K2hERWxOOXIxdlUrMEUydDVpdk9sZDVYWUtMZ2RIY0VxakI4eEhITktDcEJF?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2363af15-eff1-4f07-8443-08db28f45605
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 03:36:48.7296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gGjC6bBAISg6uqQcw/O/sN7vV0CmFTXXQz75MjhT4kUqiQ6rC5mx8GrJZzMwfKPM2dLWcW0sCL+4GxwvxgVPYpPPR9NRqjnxAjOdp1z0CoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 06/11] drm/i915/dp: Consider
 output_format while computing dsc bpp for mode_valid
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


On 3/17/2023 6:30 AM, Ville Syrjälä wrote:
> On Tue, Mar 14, 2023 at 04:34:10PM +0530, Ankit Nautiyal wrote:
>> During modevalid step, the pipe bpp is computed assuming RGB output
>> format. When checking with DSC, consider the output_format and compute
>> the input bpp for DSC appropriately.
>>
>> v2: For DP-MST we currently use RGB output format only, so continue
>> using RGB while computing dsc_bpp for MST case.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>>   3 files changed, 26 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index dcb3c2519041..499390c519ca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1110,11 +1110,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   
>>   	if (HAS_DSC(dev_priv) &&
>>   	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>> +		int pipe_bpp;
>> +		enum intel_output_format output_format, sink_format;
>> +		const struct drm_display_info *info = &connector->base.display_info;
>> +
>> +		if (	(info, mode))
>> +			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		else
>> +			sink_format = INTEL_OUTPUT_FORMAT_RGB;
> I think I saw this same code duplicated somewhere else already.
> Time for a intel_dp_sink_format()?

Yes this can be made as a common function, also used in 
intel_dp_mode_min_output_bpp.

Will add the helper intel_dp_sink_format for this.

>
>> +
>> +		output_format = intel_dp_output_format(connector, sink_format);
>>   		/*
>>   		 * TBD pass the connector BPC,
>>   		 * for now U8_MAX so that max BPC on that platform would be picked
>>   		 */
>> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, output_format, U8_MAX);
>>   
>>   		/*
>>   		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> @@ -1454,12 +1464,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   	return -EINVAL;
>>   }
>>   
>> -int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>> +int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
>> +			     enum intel_output_format output_format,
>> +			     u8 max_req_bpc)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	int i, num_bpc;
>>   	u8 dsc_bpc[3] = {0};
>>   	u8 dsc_max_bpc;
>> +	int pipe_bpp = 0;
>>   
>>   	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>>   	if (DISPLAY_VER(i915) >= 12)
>> @@ -1470,11 +1483,13 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
>>   						       dsc_bpc);
>>   	for (i = 0; i < num_bpc; i++) {
>> -		if (dsc_max_bpc >= dsc_bpc[i])
>> -			return dsc_bpc[i] * 3;
>> +		if (dsc_max_bpc >= dsc_bpc[i]) {
>> +			pipe_bpp = dsc_bpc[i] * 3;
>> +			break;
>> +		}
>>   	}
>>   
>> -	return 0;
>> +	return intel_dp_output_bpp(output_format, pipe_bpp);
> The pipe_bpp vs. output_bpp terms seem a bit confused now in the dsc
> code.
>
> In the non-compressed cases pipe_bpp does not include any
> subsampling, output_bpp is the subsampled version.
>
> What this dsc code seems to want is an intermediate value which
> is the subsampled pipe_bpp that is the input to dsc compressor?
> And output_bpp/dsc.compressed_bpp is then the final bpp coming
> out of the compressor.


Yes I now realize, this is wrong, it should have been pipe_bpp not the 
subsampled pipe_bpp.

As I understand, we are using subsampled pipe_bpp only to compute the 
bandwidth/clock checks.

You are right, we need use pipe_bpp for programming, and the same is 
input to DSC, and not the subsampled pipe_bpp.

I Will remove this line from the function.

>
> I think we should invent a consistent set of names for each so that
> it's clear which value the code is concerned with.

Yes you are right output_bpp is used as compressed_bpp in some places, 
functions.

We can go with something like this perhaps:

pipe_bpp : the actual bits_per_pixel, that we program

output_bpp : In case of YcbCr420,422 output format bytes_per_pixel will 
be half the number of bytes of RGB pixel.

compressed_bpp : (Only for DSC case) the target BPP for the DSC encoder, 
after compression.

Does this make sense? I can try to have a separate patch for this.


>>   }
>>   
>>   static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
>> @@ -1588,7 +1603,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   		return -EINVAL;
>>   
>>   	if (compute_pipe_bpp)
>> -		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
>> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
>> +						    conn_state->max_requested_bpc);
> This pipe_bpp gets plugged back into crtc_state->pipe_bpp later and
> then it'll be the subsampled version. I don't think that is what we want
> eg. for dithering setup and whatnot.

You  are right, this is incorrect. Removing the line as mentioned above 
will fix this.

Thanks for pointing out this issue. I will fix this in next version of 
the patch.


Regards,

Ankit

>
>>   	else
>>   		pipe_bpp = pipe_config->pipe_bpp;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index ef39e4f7a329..2f4136e43f38 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -102,7 +102,9 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>>   		       struct intel_crtc_state *crtc_state,
>>   		       unsigned int type);
>>   bool intel_digital_port_connected(struct intel_encoder *encoder);
>> -int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>> +int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
>> +			     enum intel_output_format output_format,
>> +			     u8 dsc_max_bpc);
>>   u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   				u32 link_clock, u32 lane_count,
>>   				u32 mode_clock, u32 mode_hdisplay,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index ff0b821a901a..bdc5c53ccd75 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -917,7 +917,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   		 * TBD pass the connector BPC,
>>   		 * for now U8_MAX so that max BPC on that platform would be picked
>>   		 */
>> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>> +		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, INTEL_OUTPUT_FORMAT_RGB, U8_MAX);
>>   
>>   		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
>>   			dsc_max_output_bpp =
>> -- 
>> 2.25.1
