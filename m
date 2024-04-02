Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BD8894AFA
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 07:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AC710FA1E;
	Tue,  2 Apr 2024 05:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/dnPRsv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB7E10FA1B;
 Tue,  2 Apr 2024 05:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712037488; x=1743573488;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I/oPRc2y43Mv1Rlz+RIBIwZF1SjRA50Jl5mqdhmVAgA=;
 b=I/dnPRsvxWzw1qm0DBoZIXvRXh8Vn3aWACCAAIjjDxqOlYhE6Hz4qQp+
 j5g8AgAUe3wUbsOUrRBUWkaJ5Tl97zzx0+88vKw0RsqmxkgqXHP4/o4/N
 yQQlGwpaA+CvDpz4x6vUNEXcYIe8I70XtTA8SuJN0Ie75ARUfDXhjefvN
 DCfnxd8zSojt6oKXIJmKT8p95tNXJgBB5mPLCalMMoqzFBP4v0/FTJXpR
 sWI2lT1w0mOXTR+H3ZRX6VsKDA5IRze++uUmuPDqROc7C7/m5AJUit/f+
 Aoq2gEqDl/xPnMTRqpCPaynVhzcqcfZC6scdya5AVDuc5h3cqjGH/epaS w==;
X-CSE-ConnectionGUID: gs4pjmVGTwKcHDAQ3MaZCg==
X-CSE-MsgGUID: 9MpPfFE+TKey0/LZoeouzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="29665156"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="29665156"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 22:58:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="48952324"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 22:58:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 22:58:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 22:58:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 22:58:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 22:57:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITmMcjxqrjzUZZHHVHZcCUdCbKmqwu8mUAGHP1/xu8qy+e394xEssFnRRxOfS8Tg6vFpayXlbMuNz673OlIqEhW7Ym48jg3ApHhhJiLGbjMJaoNIkTY/FjxGLppZzBhUWpr7p80OyrBdcQN3dtOfjFA2fh+jNG3Zjvap7pVeHKxyXLqMjIDH/C/d4oBo6zlyIx7dbEj8Xg0W77vFb4tvi86dXekq1oSggvXSLaKPt0eL/GkTiCMTpoSRkQnr/ypO8vimXwTfnl74SK5V7IAIua8xOYBrDzwXuOd+bZpDx88+/Loadi4qwOSlqXVVn9ni5alQW3gnJQBzYkeUlFSonQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wMFTVrkOhUtwwvNSvSM8Q/rjkhC0FykYX/pHpyzrPXY=;
 b=WnrTaQKT4l6d4DAGPoTbybiC1ZzVU/P9YyhU5gzdI17s/cjlcK5eBsjHaxjmoRsaYJq7xesM04313fOyeh3/q+h13SN5JfNGCAk3HB2t4v+wbGvRvE7LvJy0YhY7Sr2PCjDIOaZLvQ/LrgqxpCGCE0GdVPY2mc/qvG6M+84joZan8i0GgMp1weGAbXLUqOzQYmGM/JWDOS5mdiQHl5VhAZbGPYz/FZ4TKrSk6vY4rsJnkaDKCbZAhLgL3S0k240Xkz6IMp5fNklSt3SpFK9ZNS4tayqRgTDnxJdgXOhJAtkvB97Bh+yWn89HML1L0QyjUpiDj/X5jbJ0ButA7Y/6sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4989.namprd11.prod.outlook.com (2603:10b6:a03:2d9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Tue, 2 Apr
 2024 05:57:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 05:57:18 +0000
Message-ID: <c79bbdbf-73f9-4fa4-8769-30839abab09c@intel.com>
Date: Tue, 2 Apr 2024 11:27:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Fix the computation for compressed_bpp for
 DISPLAY < 13
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
References: <20240305054443.2489895-1-ankit.k.nautiyal@intel.com>
 <SN7PR11MB67505CB6CA830E1553138A31E3342@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB67505CB6CA830E1553138A31E3342@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4989:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qfiVOZh6FOmC1speLxPjoT+xDQdgphZ2qWUjlJ40rYlhRYptFzDDCf4+rtSIOUeu06rrssMvh8DQL1N++yj/DsBSIF/mSiK2apnMPnHmnBtFih8+17EZgSq0lUvsv4xh9QxGhu0+FDxPzDdcLK2/4RYEe5iXVVMC+yIt+xNmZM92cYn533oZZ9iDjmGSJtmbVmDSpgblrvYdhIG8Yccktuk3QP4J7lEKWdq7x3mmx6DlkHpd0cqZwqDQx+sI4EiokpaT9uj3TKi8BKrYkqpXTbvXfp8Q3I3Dj/PHOKnyB7a92RDOEs+3KiGBKoFgY3rJ7aG5N1DQbuqIHecyU5rmtB7Ie8LqZt/G1ppP2OH1TpzV+BH/5cDayXCX17EO1VHkht4g/QdOnyxTaNvOpXLJUEVwpCfAVfMkodF3vrt2C/UsHFSOyxryPAGN2ARDH8835v7f5kKgwBUXnMTnEaW/fHVHx1fQKuMtBfSsqX3MyHBP6ojgHDLPBsDAcWIebiVUSZmyFucy8g9+Y+05Q0ipzAE/2fQ3hZavWJnfj0r7oH47dCBhdGzI34Cii+e1nhsknVce72lfBdUqDk/Tmb6EU5IpPO09bjhNBRa9Zxq59Po=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFUwOGlrNHhyK25ZeldodzhTMFJkWEVkWmhSZmFxa1Z5WENnVXhYV0c0dzdN?=
 =?utf-8?B?SThnZHRuYndkMkFIWWcrSldPVXF2emJYdXJ2SllZSkNQOXhmazUwR3p1Q01q?=
 =?utf-8?B?cVBQQlVNUDFEMkNyS3dtQ25aZXByaUJ1amlCRThYUndXV2VwU3kyTjBSalBo?=
 =?utf-8?B?NWR5VGp5bTJZc09lWmxmTnAwYVJ0TytLa2FYcDYySUhUK3FiYVJzTUc3SnVU?=
 =?utf-8?B?eWY5WnExVW53OHdWbCtrU3pjZ21RMW1iWElWN2N4RDVvQWlxTllmMGxIZ3VR?=
 =?utf-8?B?QmdtcmVKMXB6c05FSTQ5SnBlUUc1bmIvRGpleDlKY3ZGcmVMYkh4QmJjeVJR?=
 =?utf-8?B?cmpQM2dyaTdPb0VtMFF4Q3JBK2IwM1hoQkdvT3NreGpOL2JuS1hLdGlVc09x?=
 =?utf-8?B?ZjdDTnRRL0J3czBQQktVZHp2SncvTG9iTGJMc3c3aTZhQW5xeDlMR3BHNTVU?=
 =?utf-8?B?REMrOVVYUDBHRnlLRkxoeCtHUE5IVk9oWklLeVhDRjJkbG50WVM2TUFVUEFv?=
 =?utf-8?B?MTNCdzNXYXJhbEdPc2dRNmJXYURCaTJEMnVuRUpnbnR1NTRjbFZFVy9BTnRM?=
 =?utf-8?B?NHgyTWtkTzMwWFpvYy9CWnFjUmxjS3lEN2VpRDQ0M2dnZGY1dlg2aHNXanB3?=
 =?utf-8?B?Znlxbm9EZ3BNR0dYSzVVNFZaNHpqM29YclZBWmMrRnRIZ1pWempVaDRRcnFq?=
 =?utf-8?B?UFJYY1lBazgwMEY3SncyaWdNSy9aSFU0ekRGM1hvbHNtRTN5aTk4UDVaMlha?=
 =?utf-8?B?clYvUktoZitjbHIwWFZLdzhCNnltUWJuNWN0cFJZTFZoU3N6RTlYeEdTRHZm?=
 =?utf-8?B?K0dHdCtzRmpjbHljV0hMOU0wWEoxU0hUNlMrUXhlK2hmMEdZSmZHdTBXT3lH?=
 =?utf-8?B?ZlM3QTIrZmJKK1lqUHBCT2pXYXNXVVNyWjBPQ3VYcEZ5WThJRXhLNEZqTEhV?=
 =?utf-8?B?emhKWWozcVlodEZtSXE1dVJKN3ZlSzFNd2grVWNqTTRZa2k4bFF4dmdaaFkz?=
 =?utf-8?B?YnpVcFZEdUFhSWlTYzdyVHlyWWd1QlNKNk9FbGo5TkFxc0tDeVRmcVErTi94?=
 =?utf-8?B?bXFHOTd2cjltQVdVSlI4T1ExOVNaNitOVDdMK3RUc3hNSDNYNVlacE0weThM?=
 =?utf-8?B?Z1FMSU10ZnZLdjVVOXE3U2ZxMmpjKzM1YXJWa29FZ2hFN0tneFhYcnFMekM4?=
 =?utf-8?B?UmVaZWE0V2hJdnNlTXVmaExONnp4dGlZTnFxSXlOOUEzay9xbkFpNjRIczdx?=
 =?utf-8?B?Tk5EejczL0lpNzd4ZzF1dE5jNXBUN1FsMkVEZ0FkeGVGVXRVMDVjUytvUmlN?=
 =?utf-8?B?MFl5a3A4Ukpia3o0RWNlUmtEaVFMcVZhY09NSEpSNU1WTW9sZHIxc2VPbjdk?=
 =?utf-8?B?MjJiUWQ1aVByODBtb3VhRmFkSExQcmUycDZHdkV5N0FvY0ZsckIxZnE3UXJE?=
 =?utf-8?B?MUVjVm40SG5ZcmxHMDJwcTFQdURhMERVTkFaTHhEbW1OeEZSOGJsYlpLSGpZ?=
 =?utf-8?B?SGJZS3BXN0xYL1kvRlprRGw3czcyUW5uVE1SczdJbVJTdW5jdmJHNUdyYTJx?=
 =?utf-8?B?ejdyN0V4RHNyd045c3V0RnZUYkRmNjBVVWdiU3oreFZSS2prTWVkMU1BdEtU?=
 =?utf-8?B?RTgyaEFDR0k4N01aeWEvZWpxcy9mSU5lWGczdGJZTEltc3FvbzdZUGxWUWQ0?=
 =?utf-8?B?ZjJKdlNaNWg4b1NEVnNqRWdFSDhuRXI1SDlvUHRGQ2RhR0c3SGJrVDMwc0k4?=
 =?utf-8?B?MWtTbWNjb2YwT2ZYeEcreXlaeTZ4d2tnSVFyZ05OUzZ6dUJjZS8rT21Id09u?=
 =?utf-8?B?Z01jUkhORisxblZnaWE5SnF3SDdXdUQ1Y0hraVZheStSRDErOW16N1NHTjNG?=
 =?utf-8?B?YlRrd3BTbFJZKzl1NDJySFZoQ3BOd1BkTUF0alpWL1RsTWpnbGltQWM5MFhq?=
 =?utf-8?B?cVhzNWptRUdMZXJqam1wYVB0d1ZZcGRKeWxlL0FmTm5vaWNnSUd2K1h5TWtx?=
 =?utf-8?B?NlI3ME8wOG1rT3NmMkNpbWlYSEduY1Y0Y0YrRVVKOThWRjE0cGFyNGF5STRq?=
 =?utf-8?B?YXFkR3E3T3ZnQ2NGZ0tpQ0EvTXZ1WnhPUmFxYTZpMUhiVEVzS0ZBK0V5b3ZV?=
 =?utf-8?B?cTg0aXRkTHNUSXN2bE5HRmJ1WThYS1lVYUdBZkVveHhyZjkvSWp5RlUzRWpq?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f57184-039d-4e7d-13f1-08dc52d9c14d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 05:57:18.7546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YvsqJj0ik6R6cqFtuB23yWHmRpX2q0uNC0mfmu96KabakSf9yoBz9Iz4O4iSfnvJy1PrsoG4f5ZfnlezE651Os6kJVAKyWKWkm+WfMKWKDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4989
X-OriginatorOrg: intel.com
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


On 3/27/2024 9:35 AM, Kandpal, Suraj wrote:
>> Subject: [PATCH] drm/i915/dp: Fix the computation for compressed_bpp for
>> DISPLAY < 13
>>
>> For DISPLAY < 13, compressed bpp is chosen from a list of supported
>> compressed bpps. Fix the condition to choose the appropriate compressed
>> bpp from the list.
>>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review. Patch was pushed to drm-intel-next.

Regards,

Ankit

>
>> Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best
>> compressed bpp")
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.7+
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10162
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index e13121dc3a03..d579195f84ee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1918,8 +1918,9 @@ icl_dsc_compute_link_config(struct intel_dp
>> *intel_dp,
>>   	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
>>
>>   	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
>> -		if (valid_dsc_bpp[i] < dsc_min_bpp ||
>> -		    valid_dsc_bpp[i] > dsc_max_bpp)
>> +		if (valid_dsc_bpp[i] < dsc_min_bpp)
>> +			continue;
>> +		if (valid_dsc_bpp[i] > dsc_max_bpp)
>>   			break;
>>
>>   		ret = dsc_compute_link_config(intel_dp,
>> --
>> 2.40.1
