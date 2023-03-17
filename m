Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F266BE7BA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385CC10E05B;
	Fri, 17 Mar 2023 11:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B5C10E05B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679051476; x=1710587476;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MI+jhn3PLd/LJdhV7gylnc/B8R/z/jgT5YPz5g/DGUI=;
 b=Rr2p3ZPrm0FVDUvvlSQSfYmNTF7QxQNFgo5XqjJhAs6/K1lRf1BxyDk8
 MUsDZ63eIv63lzllbR/mER50jhOA2IpXJWLi4gXYCSrYYOg5O0XlQTdYw
 AKJkatUQDTnqGsaOyTc3R6wihuR832OkfxIAGrCf28Nl/fNF12kuVDEVC
 ig/C0Rw43qsBXOk8faWAIwSnbLzMf3G5swQ1XFXr5D+2IlT4ZfVc/gz66
 n0/fo0zc5zhNT9yHdmUUuTvSLA2E+fCS0ulMipa3otI4UY5O09cX6fTaz
 XCEehUNx7gEr4rMPLL+ea7kzkpB60QeLhQs9hhTe89p3m1/20YtR2he2J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="424509143"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="424509143"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:11:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="769325558"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="769325558"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Mar 2023 04:11:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 04:11:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 04:11:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 04:11:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bCuZ70UN58ZC/5PDaDEBGO01dBu9V1/ifRdBl+pnU0ur3okX3LxIUX6JAy8SNVVO+fTLgZS7HRSv0bp20WUNWtcH9GqWbNtkj0l/c91j2w2ghJZOk1/rN9mzCmv0k3+9eWINpT99m8PO8tZ2b6Me935yf55jmXPcnKekXyhbLrafQ2pkWyCP7yqnrAcOAVtnSr18Iv4MuP6qKc3qDJMF8zlP2Mb4dNgdJ/s9zHZzc1dCrDWMpXSEpGO5LG0vlFyobsGWLj00jajImwhcS5A2RPRwaSASMBIM9GhviT5qvSypuSHbZMpXXaQ9ewOCx5djlws1hbcPzSStV0NLgADCAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4IazbJrELG+3wFAJWaI5uWU/7DNk6ufTL3fM93WLECM=;
 b=Ec0lY9al4XiPbFqHRqdhVm1amrf4jxn/8ZNyQ716XHI77HaEI0AqSIaGMiUmfV2wSpx8MO3XCCCuZc8Cm1ACDEW8BbecXzRxiJTO2UDQ0e5+dkMcNDE2y3L8y665HzpjvYB6vIFF6ynzxjWFz5lfkg8PeQWkAZj2FAnzHw55Yh0hkp2L1/54n5N+mWsd/tcreUWkOzxYnQHhrff8mCe6QDdvJ/Un1KCjVXWaIFWpy9HgwUlxJk2uUroHFDoOlY2yFR7+PrEj2RJ3boc2ONDXoz+rmlOuA7MryeAT3YbfBRDBX46aA8cBGaRLrRFKYewcrXlNw3oFhqk+jJjbDm69kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6371.namprd11.prod.outlook.com (2603:10b6:208:3ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 11:10:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 11:10:57 +0000
Message-ID: <7cf27e41-89a1-15f7-d0f8-e70a1e257ed9@intel.com>
Date: Fri, 17 Mar 2023 16:40:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-5-ankit.k.nautiyal@intel.com>
 <ZBOzgzZqK0mZD81H@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZBOzgzZqK0mZD81H@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6371:EE_
X-MS-Office365-Filtering-Correlation-Id: b9d934fa-249f-4dc7-03f6-08db26d84817
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MCZ0i2MlpcJ9JEDGlh3AGufPZ76lpH+8JtaJVPIpWoy7t6waa42XKWXPkfHVWVW6P4q/4LFtUZSBKQFnNHG/eUCgHg/2vrOfHSpmQ2gjSDo5HkNAUKRMANNy0Cj72q17ieCnfL0X7wiVboICG5loUqF7nXMQPo/LzxWbPSsDaJSgqv/fjQrMdtBmiD1Gpt+fDaP2QvS79+juikYko7NCzme6JDGFPFoXZ1i4K4w9TwO2l5xbi4xNGN8lx1ZXh+svV8ag16V/caSr+nGz7De1+5yj+JVtDcntMpaXLuAmyu+24XhBcKU6+T78ZUF7OnAA+9Osjt+4PbJ/SyHXGwVnH8NBfzyt374o9kX94i5QyxZWlw+OCx2BshjXxp2Kb+mjlOtLEXLRJMeaA6VmaEo9Sm9fZFcCVali525B0X5GA7K2/iWQg2AhYcRSY9i5EKJVS7XNTAc1czb3IQ0jBD4QGEUo6ZuB9mNA5Q+98ygQR3KttJuZ5M0Edtsaaf0FcWMGNUbLqssCjzlsdi75rxHq+HheBD+3RDbaYBtbENvznBWcbx73H60kZV7KHQqDkSJAqEJKi3ZvcaZ0Gn9mxkL+b2t9+RgtssrFQBgsgwrNNH2x0srfoDikfuyTUAr0V4zut2HlcDUsfyOPHmrpgyorDyw1X1qkWumncMM7F+CZe9fJ5LfyYtsunDA8RqKjouB2KiRoDS79qcvZfQuWUog9yKa5AojfwUT7PboBE55hEPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(39860400002)(366004)(346002)(376002)(451199018)(31686004)(2616005)(38100700002)(478600001)(41300700001)(30864003)(66574015)(83380400001)(5660300002)(6666004)(82960400001)(2906002)(316002)(66946007)(66556008)(86362001)(31696002)(8936002)(6506007)(26005)(6512007)(36756003)(186003)(53546011)(66476007)(6486002)(8676002)(4326008)(6916009)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V25qdytqTWF5b2FaVzJ6TXVLYzZxSjhNRDdxamtmR3hzZDhjODRVaWsybVVz?=
 =?utf-8?B?ZmhtT01vVUQrK3ZNeWxZNUpGYXpObUpQc1dMdWo2d2NMT3k5TVNyTVlSR3NT?=
 =?utf-8?B?MVQveFhCWGk1a3JjMFRYYzU2WEFjSFMvMEFMUzkzRU83bi9la2g0Uzdqa2wy?=
 =?utf-8?B?eTJkaCs3d1pBcnQ0akdIUzJ0a2N5cThHeUdqS3R2NHVmc0UzRW1WdnlyeXFJ?=
 =?utf-8?B?TitDU3E0Y3FsRzZTZmQzamVncmlQSWVqN3lIcUtpSTF3THlZam1URlVlWFkr?=
 =?utf-8?B?QWNEZWc0Y2Q0UnJvQXpLY1l5KzVzK3FIdi9jcHlLNzdjMTNoK0pMdGNsak9p?=
 =?utf-8?B?c2dPY1hzT0NkUGdzNGJKYlkzeWpDZnlmckdSaTBJVUZiK0NZQU5UNWNqR1lM?=
 =?utf-8?B?MmhtZjB4aGpnZlAvOXdlV0xKT0piL3N6SG5NcW5ndU9FWkdvTEVzOHdHMmNT?=
 =?utf-8?B?MExXSlM5TWZiQmN0ZVdkdzhxOGwweC95Nks5RkNsZXFVRmtQMUJWTEppK1da?=
 =?utf-8?B?a1p3MDE3ZzhwS2ZCYllpc3V4OU5PalhFbVp3SXdTQzBhRnc3TmoxS284czZt?=
 =?utf-8?B?NjdXc0NSamJ2Ymg1Tis4Si9ueXdXNHQrNzl2aDU4QUFna056YjRpajFRRmhB?=
 =?utf-8?B?QjlHbkRsczhoMUtuZldsKzgwZll5d2YvU3libjRQZ21sRVljVForTnlUNW8z?=
 =?utf-8?B?b3VBVEttMjVQM1ZlampQcHFEa0NISjZ1Szc0bVBUY1V6Z01NZVRScTEyblo1?=
 =?utf-8?B?dFdsNlhFaC9DZHg4WmpqRTJ1R1pUVGdxd2UyUEJLOGJ1Q1Z1STRCWldHOFMz?=
 =?utf-8?B?Y0pMNG94N054MlhLcFdaOGQ4dWY3aFlTdDRVOUtrNVByM2RWVUtwc1RTbkFW?=
 =?utf-8?B?eGhaQWxMeGxDRUViQTl6djVJN2tzVExNdEx2V04ySFdyZ0pUVmtPaEplMnYv?=
 =?utf-8?B?b1dWUjh5NlRPamNvMzkrMWE0bmRzaU53SGxxYzRldWdNUE1yRGNEeXEwNXRm?=
 =?utf-8?B?MkgwSlYyL3lxNVJPcENIQkFjQWEvY3NzNHhBUVlRNGNPNGZkc1BVNDdxSHlD?=
 =?utf-8?B?eEVDKzdRd1c4MFc3WHdUckFGWS9tbFJUdDVCRWdmUThoc3lIcUVqbTFwRmJZ?=
 =?utf-8?B?dUY1QnpXN0tVRWtzV0pmY05BSVVrSWYxdVYxK3NVWkhRUUIyVzlrZTVGQTNv?=
 =?utf-8?B?a2ovbzFnWWZoSzdoK3cvRTEyanVjTnMvbmRXL0I1VmhLY09lOWxiYW54WDNZ?=
 =?utf-8?B?TUZJWktBQzlvNU1ScDBNTWJYMkZEaE43YjNlZVlJOHJ5Z0dEcW1Zd0tTMnB5?=
 =?utf-8?B?MXV0UlZqOFRDSklnTE5iYWNJK3JURThVdUl3c1lTZXBxYVU2REk2QTNaTUhr?=
 =?utf-8?B?Um5Qb3VZQTlqUnIxTHhYV2JKbnRBbVZOZEZUeXIrNERIV1VMK1h6eWlhb0pp?=
 =?utf-8?B?YmpnZFB6akhmNGhqcFBnQTczNjRHVnZvZ3NVL2wzMEFKNTZhV2dtcG5aWnlG?=
 =?utf-8?B?cEUwWmNuRCtSbXJ5TnI5UXZnakxlNWZvcVQ3UXJmL2ErbTJUNGFnUitMaCsz?=
 =?utf-8?B?dXZKT0p2VmVQMlY2SWlibzNqdGx3Mm9aWGdWcDVMbWxYaGk0SmViYzk0N0xN?=
 =?utf-8?B?bjRWUWFBZzJ1Rm5OVWlROXI3SzdtYWgxd3dKb2VNQ1A3bmkzWFF6cHZiS3hR?=
 =?utf-8?B?UCtVb2h0aDNaUHBqL3hlWmV1a0FyZnd6VzR0NGc4cVQ5Z2N3N2s1UldlUFVX?=
 =?utf-8?B?a1N2Sk93SlpROERaYWlTdHZ2NUFod0VOUUN6V0htSTF4NVNzeHpIb2dWNmsw?=
 =?utf-8?B?bGFTd2NFRmRpYlJWYUxNcHd1cUJ1ZjJBdjl5dUNGTGx3ODZnYTNCMzAwTUg3?=
 =?utf-8?B?Z0ZLcFBVZUNjZmVjbFVMV3d5amIzQUlXeHB1MU5QODh4cWdoREgwQmlxM20z?=
 =?utf-8?B?MzlERG9HS3FpZ2daNEFnUFE1azdnRFNta1NrWk9ScE1EMFVkSDdTbk9YOU5C?=
 =?utf-8?B?YTVBOGtXVnAyVEdEbGEwVTVFYUY4VnpGNG1mR1cyVUQ2d0k3azIyUHYwK01n?=
 =?utf-8?B?RVZnajBzTjZYZ3ZRbHdoMFJSVFhiY3VJRm9YUTBGcXo5dXM2bUprKzZoS1p2?=
 =?utf-8?B?K01Ca1FwK1VxWnRvOXBVWnFOWFd6VXNIenRMTUtxSXh2MUQ1c2tJU3Bra1Fl?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9d934fa-249f-4dc7-03f6-08db26d84817
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 11:10:57.1222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kFpOY/PoQxFbCU13DdsCJZj6Crc8aNUdrSe0R+fiPYzbZUe1J9g5ODaZ2UUDBXeEGq2qo5MoWf7ZtbYFOv4Spw3E57T/4OHvoIva0Jm7Btg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6371
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 04/11] drm/i915/display: Use sink_format
 instead of ycbcr420_output flag
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


On 3/17/2023 5:55 AM, Ville Syrjälä wrote:
> On Tue, Mar 14, 2023 at 04:34:08PM +0530, Ankit Nautiyal wrote:
>> Start passing the sink_format, to all functions that take a bool
>> ycbcr420_output as parameter. This will make the functions generic,
>> and will serve as a slight step towards 4:2:2 support later.
>>
>> v2: Rebased.
>>
>> Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c   | 33 +++++++--------
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 50 ++++++++++++-----------
>>   drivers/gpu/drm/i915/display/intel_hdmi.h |  5 ++-
>>   3 files changed, 44 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c31ec9c91c64..b49d113357e4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -967,7 +967,8 @@ static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
>>   
>>   static enum drm_mode_status
>>   intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>> -			  int clock, int bpc, bool ycbcr420_output,
>> +			  int clock, int bpc,
>> +			  enum intel_output_format sink_format,
>>   			  bool respect_downstream_limits)
>>   {
>>   	int tmds_clock, min_tmds_clock, max_tmds_clock;
>> @@ -975,7 +976,7 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>>   	if (!respect_downstream_limits)
>>   		return MODE_OK;
>>   
>> -	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
>> +	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
>>   
>>   	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
>>   	max_tmds_clock = intel_dp_max_tmds_clock(intel_dp);
>> @@ -998,6 +999,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>>   	const struct drm_display_info *info = &connector->base.display_info;
>>   	enum drm_mode_status status;
>>   	bool ycbcr_420_only;
>> +	enum intel_output_format sink_format;
>>   
>>   	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>>   	if (intel_dp->dfp.pcon_max_frl_bw) {
>> @@ -1024,18 +1026,22 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>>   
>>   	ycbcr_420_only = drm_mode_is_420_only(info, mode);
>>   
>> +	if (ycbcr_420_only && connector->base.ycbcr_420_allowed)
> drm_mode_validate_ycbcr420() already checks for this combination.
> So I don't think we should need to redo it here, and we didn't
> before.

I missed that. Yes indeed this is redundant.

So will just set sink_format as YCbCr420 based on ycbcr_420_only flag.


>
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	else
>> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +
>>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
>>   	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
>> -					   8, ycbcr_420_only, true);
>> +					   8, sink_format, true);
>>   
>>   	if (status != MODE_OK) {
>> -		if (ycbcr_420_only ||
>> -		    !connector->base.ycbcr_420_allowed ||
> But here we do need to keep the allowed flag check since
> drm_mode_validate_ycbcr420() doesn't care about 420_also() modes.

Ok will retain the check for connector->base.ycbcr_420_allowed.


>
>> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !drm_mode_is_420_also(info, mode))
>>   			return status;
>> -
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>>   		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
>> -						   8, true, true);
>> +						   8, sink_format, true);
>>   		if (status != MODE_OK)
>>   			return status;
>>   	}
>> @@ -1271,19 +1277,10 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>>   		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>>   }
>>   
>> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>> -				 const struct intel_crtc_state *crtc_state)
>> -{
>> -	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>> -		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		 intel_dp->dfp.ycbcr_444_to_420);
>> -}
>> -
>>   static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>   				     const struct intel_crtc_state *crtc_state,
>>   				     int bpc, bool respect_downstream_limits)
>>   {
>> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
>>   	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
>>   
>>   	/*
>> @@ -1303,8 +1300,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>   
>>   	for (; bpc >= 8; bpc -= 2) {
>>   		if (intel_hdmi_bpc_possible(crtc_state, bpc,
>> -					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
>> -		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
>> +					    intel_dp->has_hdmi_sink) &&
>> +		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
>>   					      respect_downstream_limits) == MODE_OK)
>>   			return bpc;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 1ad0540c13ee..15bf64a217c2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -1793,11 +1793,6 @@ static bool intel_has_hdmi_sink(struct intel_hdmi *hdmi,
>>   		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
>>   }
>>   
>> -static bool intel_hdmi_is_ycbcr420(const struct intel_crtc_state *crtc_state)
>> -{
>> -	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420;
>> -}
>> -
>>   static int hdmi_port_clock_limit(struct intel_hdmi *hdmi,
>>   				 bool respect_downstream_limits,
>>   				 bool has_hdmi_sink)
>> @@ -1871,10 +1866,11 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>>   	return MODE_OK;
>>   }
>>   
>> -int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
>> +int intel_hdmi_tmds_clock(int clock, int bpc,
>> +			  enum intel_output_format sink_format)
>>   {
>>   	/* YCBCR420 TMDS rate requirement is half the pixel clock */
>> -	if (ycbcr420_output)
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		clock /= 2;
>>   
>>   	/*
>> @@ -1901,7 +1897,8 @@ static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bp
>>   }
>>   
>>   static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>> -					 int bpc, bool has_hdmi_sink, bool ycbcr420_output)
>> +					 int bpc, bool has_hdmi_sink,
>> +					 enum intel_output_format sink_format)
>>   {
>>   	const struct drm_display_info *info = &connector->display_info;
>>   	const struct drm_hdmi_info *hdmi = &info->hdmi;
>> @@ -1911,7 +1908,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>>   		if (!has_hdmi_sink)
>>   			return false;
>>   
>> -		if (ycbcr420_output)
>> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
>>   		else
>>   			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
>> @@ -1919,7 +1916,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>>   		if (!has_hdmi_sink)
>>   			return false;
>>   
>> -		if (ycbcr420_output)
>> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
>>   		else
>>   			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
>> @@ -1933,7 +1930,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>>   
>>   static enum drm_mode_status
>>   intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
>> -			    bool has_hdmi_sink, bool ycbcr420_output)
>> +			    bool has_hdmi_sink,
>> +			    enum intel_output_format sink_format)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(connector->dev);
>>   	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
>> @@ -1946,12 +1944,12 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
>>   	 * least one color depth is accepted.
>>   	 */
>>   	for (bpc = 12; bpc >= 8; bpc -= 2) {
>> -		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
>> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
>>   
>>   		if (!intel_hdmi_source_bpc_possible(i915, bpc))
>>   			continue;
>>   
>> -		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
>> +		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
>>   			continue;
>>   
>>   		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
>> @@ -1976,6 +1974,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
>>   	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
>>   	bool ycbcr_420_only;
>> +	enum intel_output_format sink_format;
>>   
>>   	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
>>   		clock *= 2;
>> @@ -2000,14 +1999,17 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   
>>   	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
>>   
>> -	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, ycbcr_420_only);
>> +	sink_format = ycbcr_420_only ? INTEL_OUTPUT_FORMAT_YCBCR420 : INTEL_OUTPUT_FORMAT_RGB;
>> +
> Please try to stick to common style between here and
> intel_dp_mode_valid_downstream() to avoid a some of the
> head scratching when comparing the two.

Alright will just have similar style check as in DP case.


>
>> +	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
>>   	if (status != MODE_OK) {
>>   		if (ycbcr_420_only ||
>>   		    !connector->ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(&connector->display_info, mode))
>>   			return status;
>>   
>> -		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, true);
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
>>   		if (status != MODE_OK)
>>   			return status;
>>   	}
>> @@ -2016,7 +2018,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   }
>>   
>>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>> -			     int bpc, bool has_hdmi_sink, bool ycbcr420_output)
>> +			     int bpc, bool has_hdmi_sink)
>>   {
>>   	struct drm_atomic_state *state = crtc_state->uapi.state;
>>   	struct drm_connector_state *connector_state;
>> @@ -2027,7 +2029,8 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>>   		if (connector_state->crtc != crtc_state->uapi.crtc)
>>   			continue;
>>   
>> -		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
>> +		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink,
>> +						  crtc_state->sink_format))
>>   			return false;
>>   	}
>>   
>> @@ -2045,14 +2048,13 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
>>   		return false;
>>   
>>   	/* Display Wa_1405510057:icl,ehl */
>> -	if (intel_hdmi_is_ycbcr420(crtc_state) &&
>> +	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
>>   	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
>>   	    (adjusted_mode->crtc_hblank_end -
>>   	     adjusted_mode->crtc_hblank_start) % 8 == 2)
>>   		return false;
>>   
>> -	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink,
>> -				       intel_hdmi_is_ycbcr420(crtc_state));
>> +	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink);
>>   }
>>   
>>   static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>> @@ -2060,7 +2062,6 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>>   				  int clock, bool respect_downstream_limits)
>>   {
>>   	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
>> -	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
>>   	int bpc;
>>   
>>   	/*
>> @@ -2078,7 +2079,8 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>>   		bpc = 8;
>>   
>>   	for (; bpc >= 8; bpc -= 2) {
>> -		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
>> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
>> +						       crtc_state->sink_format);
>>   
>>   		if (hdmi_bpc_possible(crtc_state, bpc) &&
>>   		    hdmi_port_clock_valid(intel_hdmi, tmds_clock,
>> @@ -2108,7 +2110,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
>>   		return bpc;
>>   
>>   	crtc_state->port_clock =
>> -		intel_hdmi_tmds_clock(clock, bpc, intel_hdmi_is_ycbcr420(crtc_state));
>> +		intel_hdmi_tmds_clock(clock, bpc, crtc_state->sink_format);
>>   
>>   	/*
>>   	 * pipe_bpp could already be below 8bpc due to
>> @@ -2293,7 +2295,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   		return ret;
>>   	}
>>   
>> -	if (intel_hdmi_is_ycbcr420(pipe_config)) {
>> +	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> While the sink_format vs. output_format distinction doesn't really
> matter for HDMI it might be clearer to use output_format at
> least in places like this where we're clearly 100% concerned with
> what comes out the end of the pipe. That is also what the DP
> counterpart code checks here.
>
> For a lot of the other cases the in the HDMI code it's a lot less
> clear currently which is the more appropriate choice, and maybe
> in places neither is entirely correct with the way it gets used
> currently.

Yes indeed, I did get confuse. The things pertaining to : what comes out 
of pipe, should have output_format.

I will retain the function intel_hdmi_is_ycbcr420 and re-evaluate 
whether we mean to check output_format or sink_format.

Thanks & Regards,

Ankit


>
>>   		ret = intel_panel_fitting(pipe_config, conn_state);
>>   		if (ret)
>>   			return ret;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> index 774dda2376ed..d1e27247b657 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> @@ -9,6 +9,7 @@
>>   #include <linux/types.h>
>>   
>>   enum hdmi_infoframe_type;
>> +enum intel_output_format;
>>   enum port;
>>   struct drm_connector;
>>   struct drm_connector_state;
>> @@ -45,8 +46,8 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>>   bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
>>   				    const struct drm_connector_state *conn_state);
>>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>> -			     int bpc, bool has_hdmi_sink, bool ycbcr420_output);
>> -int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output);
>> +			     int bpc, bool has_hdmi_sink);
>> +int intel_hdmi_tmds_clock(int clock, int bpc, enum intel_output_format sink_format);
>>   int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
>>   			   int num_slices, int output_format, bool hdmi_all_bpp,
>>   			   int hdmi_max_chunk_bytes);
>> -- 
>> 2.25.1
