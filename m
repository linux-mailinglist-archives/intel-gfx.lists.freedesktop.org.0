Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A66EED63
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 06:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD9A10E004;
	Wed, 26 Apr 2023 04:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E727810E004
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 04:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682485105; x=1714021105;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oDBgkpvFJdniD5UTn5Bj5T2xrj/yVYtJcEPWIn1O7VQ=;
 b=BtXVU0lqlU647E3btqnvFFMZ/gbgQAOxpWoelfIMw4P6vl0279ruvYdF
 bNCwBpRCbWCpq5ET5/ZSfTL5C9g36VQnrQRarNjJ8RFjmqE8IrGfA1ze2
 N+c7ONhba0YwmY5v219DRmppa9cgK5pQINkKZ9ApzaCg/2xJdaF8vkJ/Y
 hdx56seokMtkEKkq6yF3fKSX2d1lI4DutbGplhpDl0iSyVRLAgwvMLCDz
 rXm5aI2z4RvwqvhK5pUm/IL/kTraOjsOchlb7blwqrXS1uLNIJKcHVAL+
 3CJBalCUTj6uyK/CIpZ9H8o1mmNt6WbchsxlTt5d6tuvZHypzvD+xHF0m A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="433272401"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="433272401"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 21:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="671199926"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="671199926"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 25 Apr 2023 21:58:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 21:58:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 21:58:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 21:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gexlCe2TxqZmZNpZtZN9fosk9/g1Wb45OKcgLUNJqmsnrvtVUn393Tscp7VlpQfp2jF/u9IHG38mPnhkJ76JLvE3Hks42QzAfxgNk3DuLxRQuS8r3Z5JcePKgf3gVuLhJIRo34m7m0GEF3/DwaIYdk7miEPKdR37CfhgsAX7SZ0ALGkIJB01+BpMjZXyb5v7+TczrQUfHSkO4ZvUX1V4tLvvPpMRNOFJQ7VTl8ahtxacoM5WBmmMqNmwDr+vo5l1R7pLwpYc7O/fqF7bjv5cAqC0D7dFjv8+1IE/o+r9QmIfNYaIBg7J5l5aCFtNXm16tQyEVhhUR4oDSDvgmhXEJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WpNInrD+0Qbgn6Hn40TbLPWtHjDAOP7NUUrI7+64cKo=;
 b=PxaohK6QjIKJtgpZPTihqcJXs+W8BXVpmLbrOrE5mU5OYbYAW1GbLO563UIxM68kncPe7v4Y5wuS4LawQeIJHKcC/KQK3WFPqUtXSkYuByEqxVEJnF2iBdTi8PY4wf9q6b48cfGdT6qdNuXNswrSenwFS3fDwXVy326IvdOUl2j425atxcJn0mOjP5tGc9LDkj1IaGjinUWit75SzPGsHmYcd7nL0OnnstYMjFHXbrQdzS8g657ZlgguNfc156DgBWpMd0Q6fYMX2deXOeYGUIYkNDDweD6vzXO+UyrOVImQnsdCbob9YZhZvVmfUTyCgmtUrfmUUm5uRPBwPrXdXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7292.namprd11.prod.outlook.com (2603:10b6:930:9c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Wed, 26 Apr
 2023 04:58:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%9]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 04:58:22 +0000
Message-ID: <0b9f3525-26b4-65fb-b042-4098f7052d9a@intel.com>
Date: Wed, 26 Apr 2023 10:28:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-4-ankit.k.nautiyal@intel.com>
 <ZEZ2rWpuujlwbMN5@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZEZ2rWpuujlwbMN5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0231.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7292:EE_
X-MS-Office365-Filtering-Correlation-Id: 561780ee-0109-458c-e75d-08db4612dc77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /seKdLMlxFXa0e71nFfGWl+40s80wcqmgK+OcQovhwZK70XTiy2bp58QxXd4OF+wsQ6PCj9kA6An6TFHjxK+uKcwj/DFWaFH1EAaIaaD7E2bXbXc5EyY887IQ97zJgNI2ucbxemcX93qh3uTFBHpXJqXNJOuRy8f/yidoocabucUSdJNxs+KEpKupsLIRKVuq+5HzmdWKhU8JSy/sFq93iq3ylP0z5kcuyz2RCRjTBH8y7HAUw4NPm1qyOFQfkjXfZwdoY7tyXoaMbYgcVgbIS1puGs0B6RkCDFgvWc7Uzn7wO0BtXWq2W08T/maq7DuBcwJVZdJapSfOi8ST+dMhVTriauJ6mjtiG9mEj7qMs3NJ4jpPnHcbMomndX8iaPLGbiZsmop8YS8HZCK1KHORss3bzF427o8c01S675HEKkxSuGYE13M5Dtm0btOCINZ0YlhefFojHJ6o/oHOvl3qjiPDAVFuBhAk8UxY0n2UE7xoP8sIOFkwlJLogEdBqmmpqjCvYxZC6w++pr4B5gBPaDYxh1aL4gWQSKrnX5TW8Hv5oC58xFek22pk6iyROw3XaZsjVEnR91qAp+4d2erdJs6MeyNdlmAsizKFMd+W4mbvT54FcncPEsbaHpaj4gmCaCEtKNGx2Nwe3Jc9mbU0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(376002)(39860400002)(451199021)(66574015)(2616005)(83380400001)(82960400001)(2906002)(5660300002)(30864003)(31686004)(8676002)(186003)(53546011)(26005)(55236004)(6512007)(8936002)(38100700002)(6506007)(41300700001)(66946007)(36756003)(6486002)(6666004)(478600001)(86362001)(4326008)(6916009)(66476007)(31696002)(66556008)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHNVTURDRVBHWkd6RlVQN1J0WG10L0Z3NHZySmI1Mno4VHRmdGk1eE5mUU1L?=
 =?utf-8?B?bGl2dmVIYTFhQk1wclJlNmxDYldCL3M2M3grbGxOb0VoTWlzaHJWa2o3YXM2?=
 =?utf-8?B?T2Exc3RBRUpWSDJZMzlNMjZQOHR4M29oVDBlMmdVdnBlQWlHMUxrSllUd2oy?=
 =?utf-8?B?UGhzTUFVdjZSdVlMcENtKzVtbFd5UWJRdTVRVmZHWFJIdVlPK3VncUxjcEJV?=
 =?utf-8?B?YlFhbjVuWUNXUWp3czFsRFlGNld0RWFSQ3E2MHQ0ckNoLzhsVlJZNnBnWW0v?=
 =?utf-8?B?ZlI2RmhLQ0pVMlVMQXM1NlRJeGpkVFF4OGdPQ0tBRjlKSHN5NHFHNzVraTJM?=
 =?utf-8?B?NzhVY2NJRWpsRjNsOXNlUFhMWGpMR0gxWWIzOVZObktyVXYrU1dsdy95akZD?=
 =?utf-8?B?ZE5jWFNOcUVCREloQ1RucUdVTTAzTmxqSURNc0NsSkJHV0libnkwNnhqb0xQ?=
 =?utf-8?B?VStMS3lPeUVKQmh2UTZmTCtIT2NrSHkzWDUzMllESStHTkxzUDZMYjVEeU1r?=
 =?utf-8?B?blFlK2JzdndvbnRKY2V1YlBOL0YzV3JrZGRWS3BSU2V4OWhta3JTTmN2em1o?=
 =?utf-8?B?WW43c0pnREpSYXR1aUNWRDI4MFZ0aGJaanZFbEpwSW9aVWZJUFUxQUgxbFRI?=
 =?utf-8?B?RnhuUExIMmNFQmdTek1QT05wZTNlRnNwUmpUc25jU1dMNFl2MEZhKy9MUlFT?=
 =?utf-8?B?UHpJV2tzRTRWNG9pQU1ucThSaWVOUWEyYVJNUXVxOHN3bHB2Y1BOd2pPTHdH?=
 =?utf-8?B?VWRlOUJmRnlMRm5OYkIzeEhBY1dOWkM1RjFncVlzd283cDFORmxiQVNvekxY?=
 =?utf-8?B?Y0ZxV3JRbTlleVhLeHluQ3VCZlYrTG01YVZLajVvZjhVMExrWE9Sbjdya1lJ?=
 =?utf-8?B?S1BVZ29YRGlMa2UyV2gybGk2Sk9qR2pCaTR2NndlMlpYVHM4YVJrWHlNYXhX?=
 =?utf-8?B?c3c3S21kTDVOVXlsNzFxY2xrZWcxY0wvcHJQZndBR1dXZW5OWXp2dElDdllu?=
 =?utf-8?B?ellOUXNaNkhMT0NaZzRJcjNJWWZkOW43c1VTbWNrZjBOVG9pc1pRZXdod1Yw?=
 =?utf-8?B?dzVMOVBCK202Zm9FL0oyY0tTcG1JcjREcTVUTW9aSnFDQXRnNkhyTm1HeVk0?=
 =?utf-8?B?UVBXQ214T0t0QzZJRFUyVzgvQWxxWmp2WEVFUW9ST3NaYmFudXViaFljeVZa?=
 =?utf-8?B?ZVc2QjZONVpLeUw3ZnlXZllPc25wMC9tOUNoRk9jcTgxN3luMWQ1WitTU1VL?=
 =?utf-8?B?b1FKMEwzSm9BNHNWYjlpRnlPaTVjVG5ESzJmNGdrK1RlSWNzZFBnSjI0VTB5?=
 =?utf-8?B?L3VpZEp5d1hDQkxNV1R2dWl0bjVHNWExeDNTSzI5b2tFblpIdDN6b25GcllU?=
 =?utf-8?B?SnZxTHRGUnJacXBMK0dHbTRzN0RlUmF0UnJUQTgwakE1ZkltSDlBaUN0ckVX?=
 =?utf-8?B?L3BKZkpnK2xoYUo5MUNPNEU0b0x6V3NOcTVTblNQOUdhQWJ4SkFIc1pjRGgr?=
 =?utf-8?B?cis3UGxOL1NzNlVyNFlhUjJZNnZqVXJxRkM4b0JmTUxtdjMwalNVaTFrOCt6?=
 =?utf-8?B?Q0RET0tSaTg0Rzk3NEZCd3h6Zk9BNm9GbFZrRG5mQndaOE4vODBqRlEwQ2h1?=
 =?utf-8?B?RnJGWTBuN0hSdjUyK1lreVpSeHRZaEo0d1dBZVpHSUV3Uk1lejJBSS9rcWQ1?=
 =?utf-8?B?bVM5aHJsaHdhaERqbGRySjBZSE0yT2N1WXdPTW95bFJUc2pDWXlwdnFDOC9U?=
 =?utf-8?B?OGZyWXhYQ3JxeHVPdng4cVZHMi9jWmFHTVJuQWh0Vnp2MHB0U1hQSDd3NWhq?=
 =?utf-8?B?cmhJdEFPK0QwdE5naXRkMXg3K3lTNUZLY2RiSEFJTHJrdlAxWGR2RW1PdHVk?=
 =?utf-8?B?ZDIwK3hPRXpiTHRRM3dJU2NCdW5UejkrQzMyTlU1ckV5aFpRaTl4Z2RYUFN3?=
 =?utf-8?B?QmdxTDhzeDJCV1MrbkxEV3VJemJDMGZ2L0M4OVM5clBTUitwUFJMUm1aUU1v?=
 =?utf-8?B?ZHZ4ODBTYXVtM3F4L2FvREcwVFhVZlFWczF1VnRNM1BTaUQyQjYyWlhPWWky?=
 =?utf-8?B?MzBKTlRvQUQ0L2JEWEdISWY4WTBMWGZNMDhNd2RKb1I2Z1NXOXEvY0lESUJx?=
 =?utf-8?B?MXlNMzU3bU5uUEFDUUNBZExadFc4VG9WZUFHU2hBaDlER2ViUmJWc2tUWUFj?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 561780ee-0109-458c-e75d-08db4612dc77
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 04:58:22.7059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IPDux5T3CCeULLx5KoL5DeEM31dXW/m98pBcfgJyDOSztXEm4hWjCZIrGgCrPZ1yB9RYys5LA9lHD2zYJcM1aEAeET9JYWZxORBAWSortP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7292
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/dp: Replace intel_dp.dfp
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

Hi Ville,

Thanks for pointing out the issues and suggestions.

I agree with the suggested changes and corrections and will make the 
changes in the next version.

Regards,

Ankit

On 4/24/2023 6:01 PM, Ville Syrjälä wrote:
> On Fri, Mar 31, 2023 at 03:46:03PM +0530, Ankit Nautiyal wrote:
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
>> v5: Simplify logic for computing output_format, based on the given
>> sink_format. (Ville).
>> Added scaler constraint for YCbCr420 output.
>>
>> v6: Split the patch for Scaler constraint for Ycbcr420.
>>
>> v7: Simplify the policy for selecting output_format:
>> Always try for RGB first, followed by YCBCR444, and finally by YCBCR420.
>>
>> v8: Removed redundant comments, minor refactoring. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 178 +++++++++++++++++-------
>>   1 file changed, 125 insertions(+), 53 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 450cb8ba3805..837532952936 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -827,24 +827,92 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>   	return 0;
>>   }
>>   
>> +static bool source_can_output(struct intel_dp *intel_dp,
>> +			      enum intel_output_format format)
>> +{
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	bool ycbcr_supported = true;
>> +
>> +	/*
>> +	 * No YCbCr output support on gmch platforms.
>> +	 * Also, ILK doesn't seem capable of DP YCbCr output.
>> +	 * The displayed image is severly corrupted. SNB+ is fine.
>> +	 */
>> +	if (HAS_GMCH(i915) || IS_IRONLAKE(i915))
>> +		ycbcr_supported = false;
> That extra variable seems rather pointless...
>
>> +
>> +	switch (format) {
>> +	case INTEL_OUTPUT_FORMAT_RGB :
>> +		return true;
>> +
>> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
>> +		return ycbcr_supported;
> could just 'return !GMCH && !ILK' here
>
>> +
>> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +		/* Platform < Gen 11 cannot output YCbCr420 format */
>> +		if (!ycbcr_supported || DISPLAY_VER(i915) < 11)
>> +			return false;
>> +
>> +		return true;
> and 'return DISPLAY_VER >= 11' here.
>
>> +
>> +	default:
>> +		MISSING_CASE(format);
>> +		return false;
>> +	}
>> +}
>> +
>> +static bool
>> +dfp_can_convert_from_rgb(struct intel_dp *intel_dp,
>> +			 enum intel_output_format sink_format)
>> +{
>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>> +		return false;
>> +
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
>> +		return intel_dp->dfp.rgb_to_ycbcr;
>> +
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return intel_dp->dfp.rgb_to_ycbcr &&
>> +			intel_dp->dfp.ycbcr_444_to_420;
>> +
>> +	return false;
>> +}
>> +
>> +static bool
>> +dfp_can_convert_from_ycbcr444(struct intel_dp *intel_dp,
>> +			      enum intel_output_format sink_format)
>> +{
>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>> +		return false;
>> +
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return intel_dp->dfp.ycbcr_444_to_420;
>> +
>> +	return false;
>> +}
>> +
>>   static enum intel_output_format
>>   intel_dp_output_format(struct intel_connector *connector,
>>   		       enum intel_output_format sink_format)
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	enum intel_output_format output_format;
>>   
>> -	if (!connector->base.ycbcr_420_allowed ||
>> -	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>> -		return INTEL_OUTPUT_FORMAT_RGB;
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_RGB ||
>> +	    dfp_can_convert_from_rgb(intel_dp, sink_format))
>> +		output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	if (intel_dp->dfp.rgb_to_ycbcr &&
>> -	    intel_dp->dfp.ycbcr_444_to_420)
>> -		return INTEL_OUTPUT_FORMAT_RGB;
>> +	else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
>> +	    dfp_can_convert_from_ycbcr444(intel_dp, sink_format))
>> +		output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
>>   
>> -	if (intel_dp->dfp.ycbcr_444_to_420)
>> -		return INTEL_OUTPUT_FORMAT_YCBCR444;
>>   	else
>> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +
>> +	drm_WARN_ON(&i915->drm, !source_can_output(intel_dp, output_format));
>> +
>> +	return output_format;
>>   }
>>   
>>   int intel_dp_min_bpp(enum intel_output_format output_format)
>> @@ -2761,6 +2829,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   					   const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	bool ycbcr444_to_420 = false;
>> +	bool rgb_to_ycbcr = false;
>>   	u8 tmp;
>>   
>>   	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
>> @@ -2777,8 +2847,24 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>>   			    str_enable_disable(intel_dp->has_hdmi_sink));
>>   
>> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>> +	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
>> +		switch (crtc_state->output_format) {
>> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +			break;
>> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
>> +			ycbcr444_to_420 = true;
>> +			break;
>> +		case INTEL_OUTPUT_FORMAT_RGB:
>> +			rgb_to_ycbcr = true;
>> +			ycbcr444_to_420 = true;
>> +			break;
>> +		default:
>> +			MISSING_CASE(crtc_state->output_format);
>> +			break;
>> +		}
>> +	}
>> +
>> +	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>   
>>   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>   			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
>> @@ -2786,13 +2872,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
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
>> @@ -4582,57 +4667,44 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>>   	intel_dp_get_pcon_dsc_cap(intel_dp);
>>   }
>>   
>> +static bool
>> +intel_dp_can_ycbcr420(struct intel_dp *intel_dp)
>> +{
>> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420) &&
>> +	    (!drm_dp_is_branch(intel_dp->dpcd) || intel_dp->dfp.ycbcr420_passthrough))
>> +		return true;
>> +
>> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
>> +	    dfp_can_convert_from_rgb(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
>> +		return true;
>> +
>> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
>> +	    dfp_can_convert_from_ycbcr444(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
>> +		return INTEL_OUTPUT_FORMAT_YCBCR444;
> return true
>
> The rest looks good.
>
>> +
>> +	return false;
>> +}
>> +
>>   static void
>>   intel_dp_update_420(struct intel_dp *intel_dp)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
>> -
>> -	/* No YCbCr output support on gmch platforms */
>> -	if (HAS_GMCH(i915))
>> -		return;
>>   
>> -	/*
>> -	 * ILK doesn't seem capable of DP YCbCr output. The
>> -	 * displayed image is severly corrupted. SNB+ is fine.
>> -	 */
>> -	if (IS_IRONLAKE(i915))
>> -		return;
>> -
>> -	is_branch = drm_dp_is_branch(intel_dp->dpcd);
>> -	ycbcr_420_passthrough =
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
>> +	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(intel_dp);
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
>> -- 
>> 2.25.1
