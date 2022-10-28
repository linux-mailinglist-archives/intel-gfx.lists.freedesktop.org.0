Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E1D610A3D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 08:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576D810E764;
	Fri, 28 Oct 2022 06:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2580010E764
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 06:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666937995; x=1698473995;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aLssMT36mMyKebfn36aBSzoG+vDlK58xOTAzsh5kqcQ=;
 b=GgvV7FF4feBhKD2D65SQp8V7qM7U3eTpz2TeykE8u2HtPJ43vCkAgfxN
 YrCsyU3mfo50vYSMBnaQ7HJpD1dafEjsJSAnDWnfNsHNHiWuawbOo6Q8G
 cZ7tb7CKjuk2cGVv9wOxo+8GyiGypn5SvfTLUSJIjQN/2zrbyOfx2SHVN
 GtgXpIfil+1R4RIACzmM9gykSvLjfblOE6yDDk4YBu9+Zb5lo1If99PQA
 gaws05hicSKPhSZHBihHR0T/nOnxHhdBOxSsLdro+36VIu36t3n5DLsQu
 Gg1n0VHkoCbCSGHVS0OsbzZy884CvP9MoIl7LKJhI9QwZzW/M6GDpy73N A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="306030652"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="306030652"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 23:19:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="696104571"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="696104571"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 27 Oct 2022 23:19:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 23:19:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 23:19:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 23:19:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 23:19:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCus1UtpIoDb4jTSOOq0ecHlAvCV1DG3cfAUWmBWi7z71FCABW3t7dnqbMrcM1ZzNFH/fYCSt7Hk/9hcIDnJFF6ZQsS4fhZ66h/MYpyrCYBS32DRO9LXtesExOKgHQzzu3npAbiXg5Ajxfb2VsPSWywBEx36mSdQruAt+8kB8OicjQ7QCSsrXGxDMDsWBBwGz+VFvuozrW8BIYa8D/1Ab7TILI+IbRPSIgsibHAQJheWfkGw/CXbHdTDop8IWETx6nEWxRjz7qYS0SKZ9eAwgVATMU0+8G6gmStS0EWoY5PpkY2I2gHKEGlyNU1jA3cr0XvA76W9I0OptZWsBu2uXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDBMl1CjMb8/hjjhnxKhNkPfezG0fsuoT4TDuw+QTkE=;
 b=IwcVqgsY8DpdrbgWxArkfK450spyQ/Xmcs3XOjkKUDyRP8sJu7IuWDhu+2Irs58IvZve4zDZCShP1j0srywk1qYb+/5025+zucty0qXqzr/QluDQIm1d8joL2z6A3KyYzzH5GiU1ceftBnsyb3/ZCvLTkPYzFszIDAFRmFFRrKltVP6BPNVVyo8uei+xad6UQYE0xSbMbvMkYAnuvxspWXnSBJyQ+YicfGqcs2M0Q7NwNeb7olQyr0KA2fewjx9UB+bAJeTl6oM4R7vNWZDX0sJgxFjPz0wmUqNq8vDrB8VXn8RBoWW4HLTdj3ymvpRpKgfDXE0X2dmpv8zX3R11fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4884.namprd11.prod.outlook.com (2603:10b6:303:6c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 28 Oct
 2022 06:19:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 06:19:51 +0000
Message-ID: <2c1b9639-f1bb-2020-4843-aad899312c5b@intel.com>
Date: Fri, 28 Oct 2022 11:49:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
 <20221011063447.904649-6-ankit.k.nautiyal@intel.com>
 <Y1F9PtGbXTqDR867@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y1F9PtGbXTqDR867@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4884:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fcbfa73-7abd-45bc-09e5-08dab8ac6be4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dSsW5E8OASQ1rpDNpYKL+ePebh7R/b1UapKPSSh3y5CIXDR2aFwb27Y3Y/418AyuJWg/iUt1za70iNMhuUAwDebGJNxKYV/+ub02Spxx5ia41205VWjWvuKB6jwylLQJ/ROeAHOzA0f7ogC3c+wv7nEnayOG/oe6lX3/sEs2xIH76uYZXDfhAqR1638i+g9ukBJcuyaw2T9dHTYBLwGIcy1ri9kW8DB1g5daC6u377RIN8zQEmQRqa/sPAewzi4LBJIHnQGP45XMwRP1i5wxs3dSsrzweUOME8uf1A2BxMYyb/3b/9J5leijxZKuubxWrUvNk7Iuwuii7O5xS6p4Xfs3o7fqnIGe4y2UAU2x4vwlIzlNBU8VC6AYL+k8F0IondmTeILc/cbXZdjks3j2mHiraN7jIZCvE7A7qNHd+89quOot1sDvyGdUQ0tsk4EFWs1qzh804RR38ZXJ2Cx9iWx8gfR/+wjUqpKwVHstITju51gT7Zxa7KwHLHkdEeTyj3v/iRNe7aZMqhFK5nigNYFlHadpXPjm2NnVvutT+mXkOg7thZQTK2odyHHNtTw8HWhTptL3t7y2iXNRRe8YXIdk1E/DR3eh0FcyRVPXp7FcOJIYB/UDrLgiKzyD0oILM+2x2TfHkx55ILDhO8rboKIJm4j1/JcFUYTVbY1yfNCBlkPNq7ieE8i7eAy5Ahrh0YkG00S2gossX2/EYdr1rFl5pnsI/C3gpcIRJMPAeHBOGDJgCol9VLKz7JaIHO0EvQwE9YhSfHABT1vvz7J6jPPVzzMEVcCg1+TYF/ihrpc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(346002)(136003)(39860400002)(451199015)(6916009)(316002)(6506007)(26005)(53546011)(55236004)(478600001)(6486002)(5660300002)(6666004)(8936002)(2906002)(86362001)(31696002)(4326008)(8676002)(66476007)(66556008)(66946007)(41300700001)(186003)(2616005)(82960400001)(83380400001)(38100700002)(6512007)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWNsUExCc3VhSUFHckptLzN3dTE4NEkxMjBZcmZJSGdleVBhUytmS2J5QTJj?=
 =?utf-8?B?UVFiVmJSRW12b2RuREU0OG56bnBTZWdhaHZEZWNqWHNSRFl5YXp4NzNKQUxa?=
 =?utf-8?B?YTErc01mcGwvcTU4bnVacXptMTFiTlRiRlluMU8xbkhLL284d3dIN09BQ1BX?=
 =?utf-8?B?a1BGbzNhZW03LzdnYm1adWpJOStwS0dJTyt0dVE0Q0lxdFRnUlJHZVovdHlr?=
 =?utf-8?B?UFdFcnZ3RGROZjlwemlYeUVtOWtQYXJXNVBxL1NpdjZoNGprSWNVRjZqMzFr?=
 =?utf-8?B?RTBwaDMwZkRVbE5mOVBRMldlNk5SbFlGK0M1V045WURwaVBPMHE2TFc1a3c4?=
 =?utf-8?B?cHlySFoyU3VlWE1qNEJ5eUV2dFpHZHVqODRjMStUdExIenFYdnl3RXdmajlT?=
 =?utf-8?B?dEUwaHBPZ3IxTnhKeWhOMVlVNzhIWGV6ZU5vMWd3L3drbkdTN3lwNzl0Sm1x?=
 =?utf-8?B?TUZUSVZNM0RQc1lRUStHNU1KcWVUQWprWGRFZ1VseVRSYlRzR1dFSkQ0eFEx?=
 =?utf-8?B?NjdHWSs3ZVM3M1JIOWhmM09ydFkwYkJIREVzTU9CT1FwVTNVQzdTZk5uZGVT?=
 =?utf-8?B?eXgwN3BZS2VPTnNXWEpldUgrV0VXdG9pVWxka2pmdGtCQm52aVZrSXJxNThz?=
 =?utf-8?B?NXBJNklFMGJPSy9qcGhraWE4c2lTZHZ2SzNhN1pKZGVSR1BtdlNMQ29kc0tv?=
 =?utf-8?B?N0tlZTNaVFdqMVpSRmxaaFJsVmR3dEg1TXRqdWR6Z29hNmppVlNud2dZbWZM?=
 =?utf-8?B?c1drOTc4aGNnTVlRNUtlUjlsNEp2L2NPR0dzWW1Nc0JzMFVJaGh0T25DcktP?=
 =?utf-8?B?N0h5ZjVBdHQ1bDdZN3RmZDNVeHpGUi84S1VtNzA2anQ1MkRlMWh0aHJXakhM?=
 =?utf-8?B?NTh1eDdmZFdxNkhlY3FoTVkyc1B6ZVRaTnp2ZnFYYW5CK0p4TElsekEzMlJr?=
 =?utf-8?B?MWR1UTJzTlNqOXVrSGN6TStFTUg0UTFwY25LVk5kVkhPcXd2Y1RaeFI1N3FE?=
 =?utf-8?B?KzNxbnp0SXJ5by9lL0l2WmNxN0UzRFFZNnhubStFcHBocUkwdDFScHZPZldO?=
 =?utf-8?B?TUZlUmlFem1VMHIzTkpVWjZiQytSaUFnMGNQbVBWQXA1NXlVSXF2ZUZJQTJO?=
 =?utf-8?B?TlEzYSs0T09zcHNFeVZFWGE2VjlBd0lobFlSWmU4QzhmcFBOdVNpaHJFS3lC?=
 =?utf-8?B?eVp6R3EwS1ZBUlBLVGU4M2ZucUFSV3VXczRJMEFRWVJ5bS9BMXNXQjlqYVZt?=
 =?utf-8?B?cWprSkhCUmo0NmN4ejEzSFh5ZFBkU2RDWU1UNnpvUk1IQzhkTzg3dGpZVmp0?=
 =?utf-8?B?aG1PV0h6L0UraEZXNTZYRkU0eDNENTlrRnFraFNQY25UZ1IzVzlEejg2Y3Zu?=
 =?utf-8?B?czY3N3VTdjJyeHdqMDZDQWIwTlVNTlhOTG14V1hGbTU0cDRpOU5VRWFaK1JX?=
 =?utf-8?B?WWhzZDFrWjZTWmk0M3pzckdsRER0eFpVTXcvTE5PRU1xYmwrTFM3RE1RUzBl?=
 =?utf-8?B?T2hpMjFXNHdsVmpoU09pcVF4bW1WVnJpdk9EK2R1V2JRWlorampyc1lYdWNn?=
 =?utf-8?B?RE9xQ3AvcnVPQWJoNVhQaXR1bTJraE1ZcXZtNUFWOExLYWtWMkF4U0Rlbi9Q?=
 =?utf-8?B?U0ZVMlZ3d2c1Rm9DanlSWndYM0V1Nko5a3ZLYXNpZVI5aEQvL3Z1SlVkanl4?=
 =?utf-8?B?dVVJZ3JlT2FuVjRKWDltdWplemZ5SmQ2THN5bVE0UkhCb2pqdEZRTE5ScS9x?=
 =?utf-8?B?Q0VLUjI1RmNYdkJuQ2M2YjYwVWxQdjdiUUZKQklZdTB4ODZTNnNVQnhTeE5P?=
 =?utf-8?B?bHprVmJFRUJUSHpXaEVYbGJ6OWRvNHlqR0pXUkVDak5MYVFKcjY4dTluWGR1?=
 =?utf-8?B?RGhOR25KUWEvM3doNHFaeDhsMDZYZTZjYzN2bVV4OVVCejE2aWlXNHBrTDYw?=
 =?utf-8?B?OGlENitBZVNjV1YxVkJFWWFyU2NOSkRkMHJFMVBUV2lPR2d1M1VYMExaNWtn?=
 =?utf-8?B?dXl2ZUhPMTczb044RVd5ZTdCWEhXTmMvKzNDKzZ2eHZEcWplbzJGK3lEejFL?=
 =?utf-8?B?emZwUWErVUtNRlVHbVUrTnZCejd0UE9wcTZ5RHdpS3RWQldxUDZQQ2ErV1ZW?=
 =?utf-8?B?ZkdRRmJGMDB0UXo1U0RxaXBVQUlNUGw3SHB4bXBWQTV1eFArWUdQell3cU5h?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fcbfa73-7abd-45bc-09e5-08dab8ac6be4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2022 06:19:51.3775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XHtN3VV3cxSRNlrMpUN3KTxYG0l4voH9dd9fM+jK2LkpxBROazugON6EkZ/68lgQCmtRxYaJ9a9G6RepqRa2JZ9CLQchoUeUaIJbOlJQJ8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4884
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 5/8] drm/i915/dp: Use sink_format in
 dp_is_ycbcr420
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


On 10/20/2022 10:24 PM, Ville Syrjälä wrote:
> On Tue, Oct 11, 2022 at 12:04:44PM +0530, Ankit Nautiyal wrote:
>> Use the new crtc_state member sink_format to check if DP DFP will use
>> YCBCR420.
>> The earlier intel_dp->dfp members are not required as decision to use
>> color format conversion by the PCON is computed and stored in
>> crtc_state. Also drop the intel_dp argument in the helper function.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++--------
>>   1 file changed, 5 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 99d72b345907..d8ef4dccf0c1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1177,19 +1177,16 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>>   		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>>   }
>>   
>> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>> -				 const struct intel_crtc_state *crtc_state)
>> +static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
>>   {
>> -	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>> -		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		 intel_dp->dfp.ycbcr_444_to_420);
>> +	return crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420;
>>   }
>>   
>>   static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>   				     const struct intel_crtc_state *crtc_state,
>>   				     int bpc, bool respect_downstream_limits)
>>   {
>> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
>> +	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
>>   	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
> I think I'd take this a notch further and start passing
> the sink_format to most (maybe even all?) places that
> currently take a 'bool ycbcr420_output'. That could also
> serve as a slight step towards 4:2:2 support.

Makes sense, will modify the functions as suggested.

Regards,

Ankit

>
>>   
>>   	/*
>> @@ -1986,7 +1983,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   
>>   	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>>   
>> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
>> +	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>>   		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> @@ -2001,7 +1998,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   					   respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
>> +		if (intel_dp_is_ycbcr420(crtc_state) ||
>>   		    !connector->base.ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>> -- 
>> 2.25.1
