Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFB569DC22
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 09:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F1110E301;
	Tue, 21 Feb 2023 08:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FF110E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676968582; x=1708504582;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a3EO1n3R6OcZC50ZNf5w9XyzT+y4JRXIQCDw9CWbif8=;
 b=Ch9TP3sqPJsJWGUd5vLEBkxamTRlCmdC60HqftJuRL+bwIcNTiJSXvAA
 1vF12X8sFiRV5fWxKiUcawzkxJqBfnkLqKgkNw5LwAkLoJocLVHlLUPff
 Hx89Asu/cHvsDN+FqQ+pGRweRQnHw8hxHpN8U0kSmjUTWqnPRgC0NtGVu
 arN+9s35Xq6Qp3OZku96W1P/x1PJwdTvWcs32gHlojHuWJ+JIFOU3v6vF
 vHWmyeb6aMz47EO7HdDq4ssKqzbnrGICjUyyRIbq08ehVXJ2qy20fTPQg
 wWHDZiCNm5LbP5SEYWEpyaDu4RFZv3pUsHPptosxuNuMclB9MDP+3aF7H A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="331242815"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="331242815"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 00:36:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701929891"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="701929891"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 21 Feb 2023 00:36:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 00:36:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 00:36:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 00:36:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 00:36:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccZfPM3XvNgP/fZ/bvI/rwiHiD181mcUEpfHP03L2i9Z3F2HHg/9UM/lTUV10YEKG2jUfsX3msn/P4k66tG312U7hT26n+y1bDXL1K6Z6u2yMkBsy4aHp7cpWRnogIptJi2O0waIKeZZeZmkPCAl55EUWZdNkjaOhqwH3FPwqIiE9LJ2d9f1L/SKrYpyy3MXaeDczgJgfwZU+EkFfRP/u0tTyAs/WHB0ox1eBOxntp9Xq9ewjNqEBzOCK4V7eVOeHG5i9tWoS0V+gitYLdz2vn64B4iEry7dkcBa8aYutqHxzL/zUmycNQMiV4p5qTa0cNgV1aTY6BOCTorJF+hPuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PqzxkLaFuQd161yS3J1V/swbub1cBRa7xzMnJKWXkA=;
 b=O32ARTqGubxRbMWQDtNY2Bb7Qe98nmoYwXjljf25/Cmqy6fMKN/hSZml4VbzP8bq9oqzSETZfVUdxaDSYqbQH28k2ABy44R2t+SHEmtEQ1YQYkBFbhVVc5nUe3auS5JiICbrIRSgB1Z03c7+EAYIBWevFTznkPM7TvBL6sD7UJofF3Sr/zki203Uv1ZmV/k+TVH1hNY2pjJa9P2qIt7ogPzCo205p0Fo/cBW26vDBfK8YCJko5V2QKf9pGGq62CJV1WxDcMAUFAK5c/+LpYV3iOYQap11e/6YLPUuh2oqSuBCXw7LLm8ZKrUEor/4NIz99QSMyELTRbnPb9JVfsgCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5236.namprd11.prod.outlook.com (2603:10b6:610:e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 08:36:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 08:36:17 +0000
Message-ID: <b24d9ab2-a566-e929-0b4f-08bb46ab7e08@intel.com>
Date: Tue, 21 Feb 2023 14:06:06 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
 <20230220122401.3495507-2-ankit.k.nautiyal@intel.com>
 <Y/PMEw17pIR+WSXM@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y/PMEw17pIR+WSXM@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0109.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5236:EE_
X-MS-Office365-Filtering-Correlation-Id: b09704df-b9c5-4b71-f079-08db13e6b32f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BQ3ofCZGwhncJGExtHnhKRKYy7p8bg/0XasIvGN5EvdlfscO44VQGKc1eZAfxZXDKSjFuymZycjs7v9beeosaqgZwN0YfjaNt/ArdsBBMQIdDnkunPrP9Zu4KNRBYeMLHRt7t7GQzQuejnDVlJwbxeX4hyLfrCw7qEh7MMp62sUkozz9IgsjcYD+PwQ/rHCL3ImETY5Xk0BM75yQz1rdOXFRIriS0vTzBno4KSoBMJ5FVLe9sdvCQ5Ur1umT1zUctimnnlQjz0O1bIMAwwNYWn0Ll9ofdg7JlCiTyayu89GU5GRap8SWP90/Wtp5b2oV5qIgN1JT9eFhBCwEVm+3n7zi4pLY6n/eelHwlFz0vzIJjhAL56lrpjFfRL0It4NglttKawHEybD5Ww1+bUHEwG92cLJp0r6/5kv309ZT7c6OtHz515YFwW+hbUkv6HErdQGby2+d9RzwaTGibiXep/wx608JGTFzb7YYXoK9DutKp0nQyoPIzhvyt7rBqD6XXRj9b77PQ7U/DowAZtNLQcoDu61in4gnfkDzpr/58WXZsv9Azf9h3tTxct28O4P7C5p44NCYFSHM5LCVo6/4xlIRsVpkilM3aHE3qs89yHLAliHTBrVF0UhVqeDQ7zk1x5iZmgwIAv5yEIt0mVRkh7UMoCUqOOv1zw2UQGIxEq6Y1Z0SvI+XnVpuJp5fXH0mI6r3NKwQEwRIT9EjwvTsCIcI4+FPZI61jQcc9mkX+bM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(136003)(396003)(376002)(39860400002)(451199018)(36756003)(66574015)(83380400001)(316002)(6666004)(6486002)(478600001)(2616005)(55236004)(53546011)(6506007)(6512007)(186003)(26005)(41300700001)(86362001)(8936002)(2906002)(5660300002)(4326008)(31696002)(30864003)(6916009)(66476007)(66556008)(8676002)(82960400001)(38100700002)(66946007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTdTeW0rMWpJK0RYZ3VHUEJodDk1R3ByK1FXYzFzdGNqVTV2cTJYK0dsTmwy?=
 =?utf-8?B?VzVGR04vSGMxTzdGR3N3ZkI0TThGbGxBMnZsdTh2Rno0SEFxMUtqNjU3d3Nz?=
 =?utf-8?B?Z3pRaE8vU3JzRGRwSFVISFZVRjZYWHlmYWV6TmxOOXpjejJQQ1VCcHpsY0ky?=
 =?utf-8?B?VnJYVnZIcmhXdG0wcGVkVFdBUVVuUW9lV3hYM2ZmVjV4eGxBVC9MWCtkUUQ3?=
 =?utf-8?B?WlFsQjhEbzFEaWpqZTc3Yjd4cENtNUNxOHVGVWtoRW1pQlhPU2tKVk5ZMGVa?=
 =?utf-8?B?WTBpbHNNaHp2bHVqY2piZThoMVRrY3NyUGk3WGIzYmVlY0dpRU16YkREd25i?=
 =?utf-8?B?VnJJdW4xa09nMExYalpYNG16SDBOVnFIQk5wM2c3RHBOazhQbXBQK1dQS1Fy?=
 =?utf-8?B?eFNheU1nd01zMVMrSHRYZ29VWGNpRFR1UG4xMTB5aDdpWTZEVnpCeENBYXdM?=
 =?utf-8?B?cVY0clNmbThaMC8yaWJWa045UUZ4U0xDN3lXVElNWURJS3Y5LzA2RkQvV1lh?=
 =?utf-8?B?OGdzWlV4cXVGdEJxVk9weGp5TzFxTlE4dEVwUDN0SUdVR1lFbVFjMHI2WkEw?=
 =?utf-8?B?cFVtVHNNdm9JOTJPVmpyTStETlFRSFNyNFV1SEtSVThCRFJ2UzZCcE9tdkRM?=
 =?utf-8?B?bCtOUHpEeUxxaUU0bDFOcG56b0MzVFVxcFQ4Z1hKOFZOTU43UDE4U1BKaWRw?=
 =?utf-8?B?UzVOMDVDSEdnL2gzMWVCK3lhWkF4NHRIbWd4alNURjVuVGJMT0VaN0ZYVGVC?=
 =?utf-8?B?c3RxakhLNTdlVW1QbER3T3dBSENqNWNhK3ZYZ1dOa2hBL0ZWbEhNbUpYYWNN?=
 =?utf-8?B?QTEzZjZKNEthbUJ3MW9xeDBoeWZpYk9iZUE4c1JBYWw1enVzWkV4bmZaVUg2?=
 =?utf-8?B?OGsyazhlSVd4cm02S2Q3aC80Zjg5WW9pTTM5NkF5ZUdnenU5Unp6MVBiNWVG?=
 =?utf-8?B?dnpNS3Vma1BsK3NEQUo3QVVTME5jenMrb3hMazlNdHBiM0tIb3QvaWc0c3la?=
 =?utf-8?B?QklqNk5uK212RlR3UGJPZnE4YmcvVnZNZ1dJL0ZjVFhGTGE0TEJpQjJaNkZT?=
 =?utf-8?B?WnhNOGF2dTRWbzdhSDVGTjZTaElnZFpZcVhDUnZJbGhzODllQmdtNUxjajMv?=
 =?utf-8?B?V0txNnZobWk4NEZ1K2tsZ2dLbFp3WGpMWFVTWUQ3dEhtYXZKY2JJK3puN25O?=
 =?utf-8?B?NGlKNm1IV1MyaHRtZkU1U0hVbVBOVGowVzc4b0x5ZUhyNzNIQ3NkYXR1Y3dq?=
 =?utf-8?B?Y1FNTXJ5VHdodFh6NWJ3RmNJZ3E4K09PVnF5b25MMTRhMVJsdjBRWkhIbHp3?=
 =?utf-8?B?cDRtVFlwcEh2djU1NndRTFhVYzIva3hvcUdmSFp1UFdtV3Bhck5XWE93VHMw?=
 =?utf-8?B?ZzU2T21NV3BlSDFYWEhJM28zSG82UUxBNnoyUnExcTlOd0pzUW5tQ0FibUdh?=
 =?utf-8?B?Z0J4d1VxcGZmWUdEOExkYkhSMzdBMllhSlRZUTlvcXBzd1gxa3lBZmppVUcv?=
 =?utf-8?B?QlRVYVRYY2JkSzkvdGlVVTJrSVJscE9FYXdud0trMTg3QWpZNXIvcTFvRk9u?=
 =?utf-8?B?eU1vaEVuWHNJMy9Jc3ZxMm13RWpKWDhVYmdqc2JUU2pTZWZTSXI5ZVFDR0hw?=
 =?utf-8?B?czd3bVFkRDBFeXpjNEVYVW5WKzBjZ0t4a1V5SGFwZVVoVG9idHBQaXhYaWRv?=
 =?utf-8?B?V0NtQTRJQXk2SWVzZG9Fd3hGUXdmTXc0ZURiRG5hTS9TQmJrLzg2YmJWTG1N?=
 =?utf-8?B?bVNHR09DVWhzUisxSWhjTFdEQ0dsZlA0dkpTcDFqVllGbVUwNkJrTDFrNU9k?=
 =?utf-8?B?WlFuaTkveTRETzRRYVhGc3BIYlJNdGZGWnNBcG94SWFTT0QvZHdxTjdONHZO?=
 =?utf-8?B?WXpQUG9sakxCeVV3d3RCTXhSTWtFVFJRNHhhdW9aMXF0ZlRqNzB2RWZKZzlo?=
 =?utf-8?B?bXkvT1RuZjR4bzlsaWlVTGlrRmdVdDhNbTB2YWlGcENJMm00eFZnTUhPdFdI?=
 =?utf-8?B?WmJtYVhzQytWNjduTjdNQ2g0NTdGQjYrWU5GYlJjUkh4eEJpbEN2VVVmTFFY?=
 =?utf-8?B?Ym90b1lxeUkyenhSMWpGdTFIelRxYy9XNytiRFNGSmppcmNhd3hqS3NxSVg3?=
 =?utf-8?B?WS94ei9XMFJpTDVsNFhqU2kzZy9jTjBvNmtkOUxEQmI1aHZIdFhnSmlvQWRx?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b09704df-b9c5-4b71-f079-08db13e6b32f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 08:36:17.6488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J39W33PmW8jihp3DUOsNPCv+MrJ5+OAJcmzbmXf65rtMJ0hbOdXNCOeIR4lGvvcucYpbsBmv00pQeLn5bog2G/JfaDFlv1Fn+Ts8UZocUfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5236
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 01/14] drm/i915/display: Add new member
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


On 2/21/2023 1:07 AM, Ville Syrjälä wrote:
> On Mon, Feb 20, 2023 at 05:53:48PM +0530, Ankit Nautiyal wrote:
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
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>>   .../drm/i915/display/intel_display_types.h    | 11 +++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>>   drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 +++++++------
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>>   13 files changed, 62 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index def3aff4d717..2d17b2a7e1d5 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1575,6 +1575,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
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
>> index 0bb429d3e8d7..cc44f0629f2c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3103,6 +3103,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>>   		return false;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
>>   	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>>   	pipe_config->shared_dpll = NULL;
>>   
>> @@ -3562,6 +3563,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>>   		break;
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
>>   
>>   	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
>> @@ -3960,6 +3963,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>   			bdw_get_pipemisc_output_format(crtc);
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = intel_de_read(dev_priv,
>>   						GAMMA_MODE(crtc->pipe));
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 748b0cd411fa..c28835d9db6f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1273,9 +1273,18 @@ struct intel_crtc_state {
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
>> index b77bd4565864..81fbef30c469 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -806,11 +806,12 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
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
>> @@ -849,8 +850,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
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
>> @@ -2036,23 +2043,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
>> -		    !connector->base.ycbcr_420_allowed ||
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
> still looks broken to me.

Sorry for missing the check, I'll add the missing check for 
ycbcr420_allowed here and same for HDMI, to avoid going for ycbcr420, if 
not allowed.

Seems like patch#10 too will get impacted. Shall I send the next 
versions of this patch, and patch#10 in-reply-to their respective mail 
chain?


Regards,

Ankit

>
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
>> index de856f4375fb..054b179d0b6a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -284,6 +284,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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
>> index c7e9e1fbed37..c0ae618360c3 100644
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
>>   
>> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>> +	if (connector->base.ycbcr_420_allowed &&
>> +	    crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		return INTEL_OUTPUT_FORMAT_YCBCR420;
>>   	else
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>> @@ -2195,23 +2195,25 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
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
>> -		    !connector->base.ycbcr_420_allowed ||
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
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
