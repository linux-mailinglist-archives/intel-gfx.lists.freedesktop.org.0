Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C7959F483
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 09:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8720C10E058;
	Wed, 24 Aug 2022 07:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839BD10E058
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 07:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661327233; x=1692863233;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z2e+ZHjR+dwnc2w57aMWK/jReJC99mNQ235m9ORYuWI=;
 b=FiDxfJHHBIDQZTzvBOOLhlx+ZnM52pRYroBZ3YdY11/Vhhv32fmLgZrf
 50IViFBjj3gnYMMRD2c5WasVv9qe2UBp4+8ubEPFdEGLZq9yjVyw34cdD
 RN7Tpz34MvMEDC7bN0I4ch9UjORc0Mz0mtoyzz+nHnTdz/2GDt2j+23TU
 7xc2kbQztng6KmJtNXnAWnl+KX8R1KG7IZYbMhdl1m5etvdzNve/4Sc7y
 fwdajXMYdqPLbtnDGBml7Ba3i9hGyfVVhP0gsVfcH4jdjgioVesfKbDMH
 pahmRE2Vr6kQYddtuzPm0eH4AofOemH6SPtwpEF9yAXzfDpC1HcfNbLS4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="276920665"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="276920665"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 00:47:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="642759423"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2022 00:47:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 00:47:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 00:47:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 24 Aug 2022 00:47:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 24 Aug 2022 00:47:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GCiGi6LapOmpa8z9nZyjTYlRfs6Tl23ZPHxKYqzSExnVkPFjDFZZST7xDGeQ86Adk1GLHbtwnXOAdK6av1Px5AM2hx9my7NwERQhGQeLFWvIWdgI8SBpYJSOt09GDbwS66JrbF6KlgDd+VnfNc32tBNHlh/w78LbuvKTR4kqscYa2+bRuNap0JYegzVZ66c76RtTB6PiYJE+LhCg7ixENpqizYe/cbsxxDxFSKv8sZWTcDvSaYqHShbLbyqJPSvGFx4ExGj2T9qpuEoOO/QxZ3NpTxbijfaCDDhfUAXZA5shs64ZCpS+6REnbxIo9Yrn5zDd8jupPA5f4uR+xxN1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7uIDvC/u2iuKTURduuzWwslnhWJO+aG+onOrU8KB56M=;
 b=Yb6v5C7ys8pdrwGLYONaBoDoYIxPfIVv2OB0rKfLZHBvnWnMAIvcP0BGuTT00LE/7Txz+TnzEc1iB8a4iCCxtnGQn+QexDKVU9rKGl0pd4TqgLGtKE59pqN8CFO/EvnBpxyezmzgJTivwufueHfDsNwCpXdFxgFg8q2avnGa4mfciBKQLzl3HES4F+VN7pgiNyfs0JM20TRbxSwu0Fxg8oAZcRGZpkzqaHzq3HLmSPuEOyhMvpO/YYwM6GH2GidqHvIkTnazfnM4t3ju0Vki8j42levZth1ouohPxrM6fj/vhF4GUz6s4C6bLh8gkeE4sRgvIR6i8avbWBAGpnKwYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BYAPR11MB3464.namprd11.prod.outlook.com (2603:10b6:a03:7d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Wed, 24 Aug
 2022 07:47:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5566.014; Wed, 24 Aug 2022
 07:47:06 +0000
Message-ID: <ac194b47-3108-fbaf-8a5c-e132d3efabaf@intel.com>
Date: Wed, 24 Aug 2022 13:16:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
 <20220822105426.3521960-2-ankit.k.nautiyal@intel.com>
 <87h723kytt.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87h723kytt.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee3dbede-cda9-4d2e-f205-08da85a4d789
X-MS-TrafficTypeDiagnostic: BYAPR11MB3464:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aYPCgAiTBFlygivthGDy0a3gYmFYjg95cEK3GJ40zTRYw0HI5O/Ak1egFTNTKViep9svWc2FUIsrlauXK2Nv+AK9ZQTNmL9aBP29g2SCuu8RsAC2BgxhIWxfxEAAk9+VMmAqNOCoogFwNN5+Qz48pJLemFPxU52RduvebGXvPXfaHL9mXPEWpgHR/dTihepGyRPpogfn2qwN6MAcnauq3CibnunvgLAangPB54ZPJxJclJvJJcU5kneuy62VMYkwWI7ZAzGl22rA9EHDcu8TigvKHvbZCG0cof1jADScqsedYp0oF1WEn4HXcmyd/pSeSEN08Hh1XXTHwtJ4UmHxhyVDtxtr+zuHzywh9l2/kWjZKWmwjJ/T+G0bSnzg7IucMiy2+W6pNIoRv3QeJ7qGHCS6T3VWRKkTDIYS/9TQF2cTGXJdo4zgI8ROYEEknwtoi5tFvBDeSd2QXJ6CEbHEdC9A6T3V4shu8PQ5nHchDaxiA2io0s5WFnKC3MipPCvkOxUQQoPvUpmCwjt2MqsBV9iK4WYTESUv4+Vg9vrdjVNHGCoZX7DwNexAvTTfVrqmj1Nv9sXHs08ufeLgFnOzsnPgDVjMuKMHU0VPbVDHYRRWuJPQz+q+b2gG+oypxwX/AUNrP9/9SGoiflnHjJvBotSN7F+Ox8UV0VzJnMpUTd03eoy/+h3wyqetH9O9K+vlr63pFm15D/ByWxwhWrgo50aGTmXhKmVtSDRNIw5NG6CzruRNe6Bw3SsWPScgqqBV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(396003)(366004)(346002)(136003)(6666004)(6486002)(6506007)(2616005)(41300700001)(186003)(966005)(55236004)(6512007)(83380400001)(478600001)(26005)(53546011)(8936002)(2906002)(5660300002)(316002)(86362001)(66946007)(66556008)(66476007)(8676002)(4326008)(31696002)(31686004)(38100700002)(82960400001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wnl6RE9TdTNDSXRqR05NNnBNbHVxaktJbWxMejV5dlE5R09UQ0ZLM3BZSEdF?=
 =?utf-8?B?Qnc2QW9xMHdTanI5OHlXZ1oydWNUaFE1R1BYdWpEZU1iM1Q5Nzd5SkgvUmxH?=
 =?utf-8?B?bUdPQS9mTlc4UnVmKy94cnNZZk54QUpBSm9EekdsTWMyemlBNXdGR2plaTVF?=
 =?utf-8?B?bituSDRzV0pEV2EyZkRDSFI0YkUyUWJ5MFdYRGo1QjRCbzh3M0IwcHBLRG9r?=
 =?utf-8?B?bmtuamwySjhSa1pKZzVSNmR4T2ZSSW84Vjk4RUIyVEJyT2t4VDdxazV3TXA1?=
 =?utf-8?B?ZWt2dGFjME5mWis1MnI3V2t4RWRnTXBVMHJYQ0ZOMDhuRkkyMnZZUXBRRlph?=
 =?utf-8?B?bmdjZTA0aEZmUnZ1Q1hzVkRFbkdwVU12R0EyMXhGTUVmR0tjbXNidjFkcUp1?=
 =?utf-8?B?L1hsLzhLRmM5bHptMUplandGdStBeS9KaGRmWnJMTmFSQ1piQXB3QWQySlB6?=
 =?utf-8?B?MFNnNEJQWGt4RlZ6eUQ1RWF5aForMGx3OUtaSTdEZVpKWWNuZnFzNnkwYUxa?=
 =?utf-8?B?VGo1MWlabGZ3ZFNNaTlYdjVScHoySWpVNUN3T0cxR2UxSFRxMXRYaXcwdTZl?=
 =?utf-8?B?cEJMc3hERWRiVWpUSllYZHQ2VTdaOXpqVC9wRWd0SWxyMDNONjRCejBmcElD?=
 =?utf-8?B?TFhyWWNMVTlRTlpPV0V0bkpjQ3JNQm1KUlE1ZFptNlduL21MWmFNa0FJZGdI?=
 =?utf-8?B?bUlPaGllQjFUVER2YUl2bXg3U3JpNGJjVDBjTDdBU2kwc1VqbjF3aEdUeUVo?=
 =?utf-8?B?WUVpZEZrL0dwWXJYTUVFUmdjcWE3aDR1eGovcSsrQTVnTTl2aTE2Q0s4eUcv?=
 =?utf-8?B?Wm0zeHkzMy80KzZnOFJsTkpvWVMvQTd5ZWJxZUFaRDJ4cDJvYzhrOWJOTUZM?=
 =?utf-8?B?VlRyUG5KZmNKKzI2cG9jKzhZOVpPaERPL3NSaFUwMWF2b2hWK0djZFdmcDNa?=
 =?utf-8?B?RHBNbk1ibExJYWhidElvQm5NV3QwOHhPVURXRzhuM1NvV0ZRZVVzbVA4N2Uv?=
 =?utf-8?B?UFV1a2VDZ3JOYmlreUoyaXFhMXUxQmlQUE92MnJRanJnRmVTUEVvMmRvT3B6?=
 =?utf-8?B?ck5tbjVabWgzR0FibGlCTE9kKzZVZ3F3cFEycEttdi9jT1NMRkd6M2hjb2Ny?=
 =?utf-8?B?eEVkaWFRN3YwNHplZ0k5Sm5xRUJZRHpqQTZYdFZLb0JpVElnYVBJUmxMc2Rw?=
 =?utf-8?B?UFBVK1h2SFdtVzFUNkMrUVRyaHZ6ZWxTaE5qQXBkRnErZjFvVzN5ajhZcDVl?=
 =?utf-8?B?QTBaekxyQ2Fwa1ovZnQ5VmhObzZ5TGc2REdxakxsTFFWVzZ5bDZXaGFObFln?=
 =?utf-8?B?clNXUndjLzhLdmdWcUNYWkNyWXY0Z2RqV1BpYldLTUZ0VEljMmlNL05XMVdN?=
 =?utf-8?B?TFByTE1FSGViOXZCS0pCTEU1NjBzU2Z2OU5TUVZndDRhSHFWYlZZamVRaWZt?=
 =?utf-8?B?WXJwb0xGMVB6N3QxTGZQOGhZSEljNFJxMDBzd0V1V0c3aTdYdHFmcnRpUEZz?=
 =?utf-8?B?ZlYxTFp0K3NYUUZYc29LRU8vSjBVc1BRWkxUb3dXTjVIRVhsZytVQjdWVEZt?=
 =?utf-8?B?bFJzZ1VtTXpLVjJpRWhSdmVOTFBRQ0hDdzd2N1U5N3RWUW5BTnF6eEF6YllG?=
 =?utf-8?B?Zy9ZRjV0a290bm0yOVNPOE5GQTh4NlNNcjJ1MW1Rdm9wcGM0K2dpSVZEZnlU?=
 =?utf-8?B?QVV3MmRRQmRpSjNQUjhmMU42ZHZXa3J5dk1zSGVtNFFTZ3NleFBraGFqMW5Q?=
 =?utf-8?B?czVtSmtkN01LaTVUQm1mZnkzTWlCK3RxenFhWnEwcldxOTNabisyNkxCSDhF?=
 =?utf-8?B?aEZNMkxJcDVQcnRVRW5oeWZYWW04bDUrMWltaDMxR0RpdExnaFJPOW0vV0E4?=
 =?utf-8?B?NmFXcVZsWGxob0Q2Z3hjazgzdUlSQ0pkaDlwdGpFQ2hJcHYwNkJ5aTRsRXNR?=
 =?utf-8?B?WTJrMDltZ2FFZy8yU3prWHdLQk53LzVMODh2aGxkV3hYUk1IYnJXM3VGcVY4?=
 =?utf-8?B?OVVlVG85Z0lxVXZJTmdXdGJ6VG1GTStPWXRsWlVyUzkxaHdsY3BoODRRSlNo?=
 =?utf-8?B?SWxrS3B2Szg4NlhUcjU4bzROWjUxR2lzS2dyUjM3VUs5Rm9GR1JrSDJ1MitK?=
 =?utf-8?B?VG9EaW0zeUR5RGtxalJJT01qbmFwOENBV0prZTdwNHhrNWV0MHNBclp2UE1j?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee3dbede-cda9-4d2e-f205-08da85a4d789
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 07:47:06.7992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j+LPREA9u/72iKnNBDxLS4PB/ZdU9UXcZT7GHNyOY0CwRgWmLINSE/bb/tph4rGkC+CUwAZl4Q4X9hXZobj6HmFBGDwgCE4bRsZ+E8yDH64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dp: Add helper to check DSC1.2
 for HDMI2.1 DFP
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


On 8/23/2022 4:32 PM, Jani Nikula wrote:
> On Mon, 22 Aug 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add helper function to check if Downstream HDMI 2.1 sink supports
>> DSC1.2.
> If we do this, are we going to add helpers for all the details in
> display_info, when there's no conversions being done? I think the answer
> should be "no".
>
> i.e. why do we really need this?

Hmm well initially I was checking both the dsc_max_frl rate and dsc 
version, but dropped the dsc_max_frl rate check later.

(need another patch series to fix DSC parsing from HFVSDB: 
https://patchwork.freedesktop.org/series/107146/ )

In current form, this function does seem unnecessary,  I will drop this 
patch from the series.

Thanks & Regards,

Ankit


> BR,
> Jani.
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 32292c0be2bd..fdf82373a22d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -118,6 +118,15 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>>   static void intel_dp_unset_edid(struct intel_dp *intel_dp);
>>   static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>>   
>> +static bool
>> +is_dfp_hdmi_sink_dsc_1_2(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_connector *intel_connector = intel_dp->attached_connector;
>> +	struct drm_connector *connector = &intel_connector->base;
>> +
>> +	return connector->display_info.hdmi.dsc_cap.v_1p2;
>> +}
>> +
>>   /* Is link rate UHBR and thus 128b/132b? */
>>   bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
>>   {
>> @@ -2393,7 +2402,7 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
>>   	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
>>   	max_frl_rate = max_lanes * rate_per_lane;
>>   
>> -	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
>> +	if (is_dfp_hdmi_sink_dsc_1_2(intel_dp)) {
>>   		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
>>   		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
>>   		if (max_dsc_lanes && dsc_rate_per_lane)
>> @@ -2605,7 +2614,7 @@ intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
>>   	if (!intel_connector)
>>   		return;
>>   	connector = &intel_connector->base;
>> -	hdmi_is_dsc_1_2 = connector->display_info.hdmi.dsc_cap.v_1p2;
>> +	hdmi_is_dsc_1_2 = is_dfp_hdmi_sink_dsc_1_2(intel_dp);
>>   
>>   	if (!drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) ||
>>   	    !hdmi_is_dsc_1_2)
