Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C02C6752318
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 15:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4191C10E0D9;
	Thu, 13 Jul 2023 13:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDFB10E0D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 13:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689253933; x=1720789933;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R8Yz2hi+mNfmBQAuamSzUv5Ws1WCLfoMq0vfl+hctoE=;
 b=KsDiy8kq41iUUd8Ipzulwfe+zZNnfzNXCoxnZ0PkrtUU78gq658d9kBF
 29s7Lgzu70Hoiomno56w3Bg+v2Hp57t1NUeiL9M0e2OlmBAuyZnwdUWAa
 bo6ECzhfxXb3weMbxZg5arqhm3u+gAtnaM1AkQz9gexQ2N4lJ+iwRlVmD
 zFuFEL2bLrWhsktX5m7VihzyXy4FwnwICc5K2PB1BfdKhdIPCD6DBLHHQ
 fvcGF/V593XzwRZxosUg5fSQFgqn+pc5Sm41/Gvz8/zRpy5GmRhcgbXHA
 YqoaaeAJeu8NIoTb0a0HtZDSdaiafQJSU7QW5/evySGsx7OU7Ytl50Ht6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="365216887"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="365216887"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:10:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="895991893"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="895991893"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 13 Jul 2023 06:10:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 06:10:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 06:10:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 06:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1NfQdmrqRjL6AC9sg8cW89turBEfF4uJ3sVmgM/brBCFIslmPpsXYVAHxKC1+H2dEC9VFVWCocn/51bxX3HCR8w+eUJbVZbosvVDEamgU2T36yW3Ymht9iFKDJ/RP/zmz4XbU4MWLBFGNRe0RaHktMUGYw+CPi+TWpKul0eWbYleT+kJOYMbIwc21AwqKI5iXE7NR5zcXrL3nRwBpNfbkoDgxqJLBk5KXUmpKbhp6ugSlOyJPrs9BUmLrG0mw+pMbGolpy/k22f2KtW60y7R0IWXYanbIFpdZRfZ3GG6HxNU9rYGRwgtEdumZ48jJVd5Cnjiz7k9PNvXcHwaTza1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yxHYimzykZuhzVeG9eu1V2h2TA1irvShp03Xm1kWWEI=;
 b=OcpjOHArezVY89yRT24XTsceYL9mpW91X6o36LyyqRY8p+66OtvteTSsmyRxXSyZvwDFopNyIhxOK+unwt4zfqQj7nCXEpKLJuO/2yb4Zy37aX4Pp8M/re+TZNmupg9OqG8hL80IsK+s88pMYgqF7xvtqkxRtBF6e38bZ/ZFCPXuYyH29vLUor7qTvSlxo3QKaIj8g1f/QC+EIqOvDF1pzD5Y+R3KwJSpL3TMbuccwdZNsNpYFwm4cXfzy3yOnFGKr8/MAHhNw0fruG2ygc+FxbYiWamaYTlC8DwH8lN/eTG/BqHZTnQ/kW1D4RSZbeSR0FsYi/tE0Rm8w18SgUGng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Thu, 13 Jul
 2023 13:10:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6d3f:8bb9:4a4c:7247]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6d3f:8bb9:4a4c:7247%5]) with mapi id 15.20.6588.022; Thu, 13 Jul 2023
 13:10:14 +0000
Message-ID: <9c86595e-a91f-8772-7e22-73bd4207458a@intel.com>
Date: Thu, 13 Jul 2023 18:40:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
 <20230713062924.2894736-4-suraj.kandpal@intel.com> <87h6q8f062.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87h6q8f062.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0019.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: a4b428c6-173f-4c60-873b-08db83a27f08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OVNB+lzlcpHeD2CvsTqCwS71CikLCnoxqzXr8PM9XfqvjpDfB3ZwINXljRLa0x5AM4+XUM1Xz9GKslaJUO5etY2XljiV2Mvr5f2zcO6VqZCaeJJnX0Kq+U7hbGrBKqKkEscIJQcc+BTf8r/h/wY8Wi4HsRisRIz6JW210WIs0EVJj3cOndmy26+FmCcaJc+M/zaIDRIorOY+Y8WXNhjpW42jRfKt9RVNT/mH3/W/FiGotG5Bc6enVdkx8GSXtkpQ3phGZWiCBLsp79cDyYF69t9qAa2UezEZjSOEpEu++cGOBTzjRi6icL3I4q6OWKkEoWQdWmRgXFWyO7rvE7los5wTy2O6CXwbI/WT3JvMxDjEGmSD0n3ozxtXUFG1mkLt9iUJLt3kX9lBY4bFRKWEgjIyUviJMCawsf3KipZd2fUTQRCCrQxKBA0z6wZnZLrG1mwyIhkybOMlWTTmpQLrv/QZIUK4v7TZ/5L6sCrlYxF0cQQzXNG2WGdRZhIAGaIhYArhWI6sIwgg7EEG7b7yaYiZfImp7RIfr+G7ijG+Ck4zUZATZPK+Xm4zO0uweVOcZrHzmtc2A4jISepeI+uk0+xIJ/aduZzeQ0lxMLvfikNyzuVkaBiCaUnG0P9rU4hfL2KO+awfT1WkgRRM3Jc4pg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(366004)(376002)(346002)(451199021)(110136005)(6666004)(6486002)(82960400001)(478600001)(30864003)(86362001)(8936002)(8676002)(2906002)(5660300002)(36756003)(31696002)(66946007)(4326008)(316002)(66556008)(38100700002)(66476007)(41300700001)(26005)(55236004)(186003)(53546011)(6506007)(2616005)(31686004)(83380400001)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUg4bzNZY0k2U2JBeGgrd1dadGtFa0d4S1hwRkorREY3djhqTDA3TVFmeUJL?=
 =?utf-8?B?SnNveHZYUDVEU1krcGFPR244cGZoWTM5ZXBKQVlONTU2UDYwVkF0K1dhRllq?=
 =?utf-8?B?S0w4MHViSmJhTkVYNG12aGJUWEhkbG52alJvYVl5VkFnWUJwKzkwcmwyWFN6?=
 =?utf-8?B?VXhwY003MFo4dHJqbk5weWxTa1pZaVp2Z1Yrdm1qM2lPTEpmeWwrR0JhYWdy?=
 =?utf-8?B?NStzd05IYVVHR2YvbnNWOWEzYVBEZnZTSkRKY2pkLzBDeE4rdFo5end2VTN4?=
 =?utf-8?B?UUpvdEJ0MlJTSGxEQWFHWkpYaURaYkw3bHpTcUVkcmJwSjRxbmRIWFFsQ2hD?=
 =?utf-8?B?V0g4cDQ4YzdtL2cyWFArZHB5b1dDWThCc1hCM283d0E0V3NhK3NNcFlvL243?=
 =?utf-8?B?RE1iMFVlQ1I1aDFJZVFLYnVqVUc4MkQrUW5BUlkwZHNuQ0YwNVUyRlQremFM?=
 =?utf-8?B?b0tZRC9CTjhLUkNMMGtOVWJWSk1NV3MrMXlEOFdzcU9NZHJMN29yN1Nnb3Np?=
 =?utf-8?B?U0p6U1l5bytkSjVFazkvSjJDVjVRTUYwQVA1ZU8rT1JRZ2dNdTFvWE54ellO?=
 =?utf-8?B?eXFxTURqNDV5Z0ppVUVRSDhEZDNYNTR3VmpFcm9DM1NQRUpUNTN3NU8rMklG?=
 =?utf-8?B?UXlpNU1NM2txRHVKVFRwSXYxWmhQYW9FdW9Ubndydjk4U0JSTHduVDluSDU4?=
 =?utf-8?B?ZGt6THcraDRSLzZwTDc0ZFNaYmNsSnlrclg2MEhpSjkyMzk5VmQ4VXpacVNo?=
 =?utf-8?B?bHBqTjljREhmQUpRU1VXQlBneTBoQXhvSi9VMHpuR0s5WWJrTUJJdTFaZmxP?=
 =?utf-8?B?bDU4eTBvZk5iRHdxc0Y3dWNLb1YzTmkrWWtOcHhwSGNOZlJhTW8rTUU1c1Rq?=
 =?utf-8?B?Vjk2Q1V1NWxYU2ltU0V2T1ZlSWxPamVzWnF3NFg3UkxXaG8wRVZtTEM1Qmo4?=
 =?utf-8?B?S200RVlTWmRVTnh2Ym42MCt5UkNWbEEzTnVyeXlqbFJTVTBnbVhkZ1d3Y1Fw?=
 =?utf-8?B?NkdZV3AzZ2ZDbnd5d3dZcGh6T2xmS3IrOEtraUhPTGlWdnNNakQwMUJhNm82?=
 =?utf-8?B?VjFzVjNxblIrUlJCblVYVHBkZlF3TmtYallZOURhSTNQMkpKc09odUNCWG4w?=
 =?utf-8?B?c3lISGhwdjNnU1htUDQ0R3lMOEEyamR3aCtTdFIxdTNEUzZvWUxRMC9WMlJ5?=
 =?utf-8?B?ZW4vcHFKVVRPcmQ3TlJieXJKYzFBT1B3Y2NDODhPRlIrVFFOOWVhTXJhN1Zw?=
 =?utf-8?B?NDFzZ2VxWmc4WDlOMGRCN3ZTTXNLZnBYbTlTRzBnT3JLbmhXQXJlSWR5cHF0?=
 =?utf-8?B?R2FhUW56Q0lPc2F5OU05L2diNm5QLzQzVHhUY0tJWDVqTnVwcUNPQVVpaUdM?=
 =?utf-8?B?VERHRURWL3BFcDkrREdSOGRwWWlnL2EydFFTZ042UThtL01KMnpjSjBOSlRK?=
 =?utf-8?B?Y2c4QnhySHVqVlpQUlMzendwUUxwbEo4dHFLaW85S1hnU0tENVVPQkRNRkFQ?=
 =?utf-8?B?MnhtYjhsSUI0L1MzMXliL1JONWVxWUJxRERHUExSU25HeTI2K0V6OC9kVHpG?=
 =?utf-8?B?MHd3ZzVhbmdCbnBSNGc0b2wySmJFaEMxN0NTRGtNZE93U05xdGFFOFZObWU5?=
 =?utf-8?B?UGgyOTdlSGU4NXl1bzNjdkc4Tk0rL2dOdlExdFd0dWVjWng5cXBuSjNQWVVI?=
 =?utf-8?B?anc4L0F2RDE5Zzh5dkNxb0I4dnowRGdlaG41VWZOa1dPNkxvYVpwUzdVNFlu?=
 =?utf-8?B?ZGVyMTk0NGczVkRXWjIvbGVsZWtZdWVTdkVObmMxSXgvMG9aN1RHWWNGTk13?=
 =?utf-8?B?VFRodVU2TUhSaTJEcmtMc3RtSGFhMmpaZTRtRW1weG9xalZlSGxGL0xSMzIv?=
 =?utf-8?B?cVhlY3hpdDRzamxlSUkwTGp3TTJBYVF1dzl4RXZIajRva1ZVOTErNHVUa2Yy?=
 =?utf-8?B?ZHZ6OW1pK3ZqanZTVzdmVnRYSVcvZGJiNXkrTGVINVpsWFJiczUzM29aeEk3?=
 =?utf-8?B?Unc2Q3NYVHM4WTFGNlNFZzNmem1rekhJWDRrTWc4NW9raXljQVhhdHZ3SjQ5?=
 =?utf-8?B?cVRMTHk3eVpHQ3p0aVUycytRTDV6dk5QS3FqTFBWeS9RaFdRa281eFkyRFdG?=
 =?utf-8?B?Y2dUV2lQUFhXQ1kyTkxhVG90UndSdC95SDN4azU4RFpmUzRsTG5RUDN5anhu?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4b428c6-173f-4c60-873b-08db83a27f08
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 13:10:14.3277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d3glJWZjZ+0Qm8lcanrTE0QWpWSRNk7L/pIQFo3fU3819zcFFpUf09sT5RL//fZNzlgDhq644ynvTZ8PR4kQdRI6VnuMMIN6nv6n9OCb9s0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915/vdsc: Add function to read
 any PPS register
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


On 7/13/2023 6:17 PM, Jani Nikula wrote:
> On Thu, 13 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> Add function to read any PPS register based on the
>> intel_dsc_pps enum provided. Add a function which will call the
>> new pps read function and place it in crtc state. Only PPS0 and
>> PPS1 are readout the rest of the registers will be read in upcoming
>> patches.
>>
>> --v2
>> -Changes in read function as PPS enum is removed
>> -Initialize pps_val as 0 in pps_read func itself [Jani]
>> -Create a function that gets the required register and call that
>> in the common read function [Jani]
>> -Move the drm_WARN_ON one abstraction layer above [Jani]
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 276 +++++++++++++++++++---
>>   1 file changed, 242 insertions(+), 34 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index d48b8306bfc3..48273a3618c5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -303,6 +303,196 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>>   	return num_vdsc_instances;
>>   }
>>   
>> +static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
>> +				  int dsc_eng_no, i915_reg_t *dsc_reg)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	enum pipe pipe = crtc->pipe;
>> +	bool pipe_dsc;
>> +
>> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>> +
>> +	switch (pps) {
>> +	case 0:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_0;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_0;
>> +		}
>> +		break;
>> +	case 1:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_1;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_1;
>> +		}
>> +		break;
>> +	case 2:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_2;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_2;
>> +		}
>> +		break;
>> +	case 3:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_3;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_3;
>> +		}
>> +		break;
>> +	case 4:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_4;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_4;
>> +		}
>> +		break;
>> +	case 5:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_5;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_5;
>> +		}
>> +		break;
>> +	case 6:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_6;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_6;
>> +		}
>> +		break;
>> +	case 7:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_7;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_7;
>> +		}
>> +		break;
>> +	case 8:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_8;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_8;
>> +		}
>> +		break;
>> +	case 9:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_9;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_9;
>> +		}
>> +		break;
>> +	case 10:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_10;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_10;
>> +		}
>> +		break;
>> +	case 16:
>> +		if (pipe_dsc) {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe);
>> +			else
>> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe);
>> +		} else {
>> +			if (dsc_eng_no == 2)
>> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_16;
>> +			else
>> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_16;
>> +		}
>> +		break;
>> +	/*
>> +	 * Since PPS_17 and PPS_18 were introduced from MTL dsc check
>> +	 * need not be done
>> +	 */
>> +	case 17:
>> +		if (dsc_eng_no == 2)
>> +			*dsc_reg = MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe);
>> +		else
>> +			*dsc_reg = MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe);
>> +		break;
>> +	case 18:
>> +		if (dsc_eng_no == 2)
>> +			*dsc_reg = MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe);
>> +		else
>> +			*dsc_reg = MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe);
>> +		break;
>> +	default:
>> +		drm_err(&i915->drm, "PPS register does not exist\n");
>> +		break;
>> +	}
>> +}
>> +
>>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> @@ -930,16 +1120,64 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>>   	}
>>   }
>>   
>> +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
>> +				   int pps, u32 *pps_val)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>> +	i915_reg_t dsc_reg;
>> +	u32 pps_temp;
>> +
>> +	*pps_val = 0;
>> +
>> +	intel_dsc_get_pps_reg(crtc_state, pps, 0, &dsc_reg);
>> +	*pps_val = intel_de_read(i915, dsc_reg);
>> +	if (num_vdsc_instances > 1) {
> Btw going from (crtc_state->dsc.dsc_split) to if (num_vdsc_instances >
> 1) should also be a separate change, instead of baked into this one.

Also, lets stick to dsc_split. Number of vdsc instances tells total 
number of vdsc instances, with bigjoiner it would give 2, even without 
dsc split.


Regards,

Ankit

> BR,
> Jani.
>
>
>
>> +		intel_dsc_get_pps_reg(crtc_state, pps, 2, &dsc_reg);
>> +		pps_temp = intel_de_read(i915, dsc_reg);
>> +		if (*pps_val != pps_temp)
>> +			return true;
>> +	}
>> +	return false;
>> +}
>> +
>> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
>> +					      int pps, u32 *pps_val)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	bool is_dsc_diff;
>> +
>> +	is_dsc_diff = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
>> +	drm_WARN_ON(&i915->drm, is_dsc_diff);
>> +}
>> +
>> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>> +	u32 pps_temp1, pps_temp2;
>> +
>> +	/* Readout PPS_0 and PPS_1 registers */
>> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
>> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
>> +
>> +	vdsc_cfg->bits_per_pixel = pps_temp2;
>> +
>> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
>> +		vdsc_cfg->bits_per_pixel >>= 1;
>> +
>> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
>> +}
>> +
>>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> -	enum pipe pipe = crtc->pipe;
>>   	enum intel_display_power_domain power_domain;
>>   	intel_wakeref_t wakeref;
>> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;
>> +	u32 dss_ctl1, dss_ctl2;
>>   
>>   	if (!intel_dsc_source_support(crtc_state))
>>   		return;
>> @@ -960,37 +1198,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>>   	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>>   		(dss_ctl1 & JOINER_ENABLE);
>>   
>> -	/* FIXME: add more state readout as needed */
>> -
>> -	/* PPS0 & PPS1 */
>> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
>> -		if (crtc_state->dsc.dsc_split) {
>> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
>> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
>> -		}
>> -
>> -	} else {
>> -		pps0 = intel_de_read(dev_priv,
>> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>> -		pps1 = intel_de_read(dev_priv,
>> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
>> -		if (crtc_state->dsc.dsc_split) {
>> -			pps_temp0 = intel_de_read(dev_priv,
>> -						  ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>> -			pps_temp1 = intel_de_read(dev_priv,
>> -						  ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
>> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
>> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
>> -		}
>> -	}
>> -
>> -	vdsc_cfg->bits_per_pixel = pps1;
>> -
>> -	if (pps0 & DSC_NATIVE_420_ENABLE)
>> -		vdsc_cfg->bits_per_pixel >>= 1;
>> -
>> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
>> +	intel_dsc_get_pps_config(crtc_state);
>>   out:
>>   	intel_display_power_put(dev_priv, power_domain, wakeref);
>>   }
