Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E56D66423CC
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2322810E0FA;
	Mon,  5 Dec 2022 07:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531F610E0FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670226311; x=1701762311;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wKh1p9zaU/bkgcUMw1ih3LDpwN7DSCmF8t7eWjeMG2Q=;
 b=Lcp7pG/BRR8XeN8YSCrrbkAYdZ1L/UNnJE+RGErvsnU6hI5eYOtuGPdz
 jGXNYB6NUD64HMwM5oqS9ALdSFyIjMK1HfOSlUsKGauRZDd6GHBH133lI
 TOWxkNZa9YhhLaOT8Xn4Rm0baWhqGWIIhCrHeowweM70y5DTllQvf6mGW
 BcrZIsITQsmMbxOP76XGHxKiVgvcJUBKglTZQxs9+Zwhy3H+XvyAlCSr2
 mLZ9fZ/d3KKqG1GdMFsgD0xPI5fhoLjmzTE0NukxmE/EQ3XKd5Ig3iX/P
 WCJ0ASMMtVSknEAV8bQNfBK5urxmdoRmMNVihoHdaVtAnCH24rYjoFfed g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="343276674"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="343276674"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:45:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="596109958"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="596109958"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 04 Dec 2022 23:45:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 4 Dec 2022 23:45:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 4 Dec 2022 23:45:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 4 Dec 2022 23:45:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDbIFait6mZF2KEXywSDuNddKS0PdHslf/I8r0H9bDYUn8mzVmJd0o1dKpTyTc1vF99qm51/40+ccFCbfOdHGeBWMpmBciBTajICxlt8u4v5Lno8OL/ZezwAhtNczgPjGYOUSbswrhYcM3bFAr+e2+8md4FPKpUPMgyt1yfL5uQ/h5lyQJcP1Gews7BuCGFtPg1HmteP5w3sDWfMHfI00VqGqqYtagxUSzFdZHDJJ+uMFVl7yIphBBU6dgjWzwwpTsqvjWyPeIGLyVHl4MKaWIWS35VMfKru2xF4xyglWGOKdH6e2wxgsP/YBXAX1gucIcHupo5XaHMdMDsLhuCuKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fdaWXdYIjkKK4GKZyalnaZy3cTvQKJsY/Mu4yGFHNVc=;
 b=bhNq7NWZZZQJ8jcNKeMtf6ri9IBuiYdbb236zENA7zEEW4YpGqA4nnGFSzB/H6rUHvrAv+A0kpMk90PSgRIasoIywQpeonI3MfbGJIrHyKjAzfBMw+8gWRBm3EG1pNlgR9GpGj+8lcmFzseldtKaKi8gD2W+0ABtxXKWlqTPvUxUezTkrSK0C3X7Az0WbqOEyTIwx0zq5DHCC9EXWZeoAUB/rvVtsBDeNuDDnXPELzPiG8NYlhT2edOdp+c1aQksDfEjlvgrXr+ec1qNVSkbTdFzHvMRo7XDeC/jECVjQ+5iWmL8HeKP39K2Po0olKLzZKP/oxekoXzyjUGwoMaE8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BN9PR11MB5481.namprd11.prod.outlook.com (2603:10b6:408:102::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 07:45:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::1829:fbe9:8351:a2a9]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::1829:fbe9:8351:a2a9%8]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 07:45:08 +0000
Message-ID: <cfb549e3-cb5f-e66a-3196-b940f344fb71@intel.com>
Date: Mon, 5 Dec 2022 13:14:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <tilak.tangudu@intel.com>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>
References: <20221130053427.2207600-1-riana.tauro@intel.com>
 <20221130053427.2207600-3-riana.tauro@intel.com>
 <87a6455uan.wl-ashutosh.dixit@intel.com>
From: "Tauro, Riana" <riana.tauro@intel.com>
In-Reply-To: <87a6455uan.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::32) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BN9PR11MB5481:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f771378-f2fb-42c9-635d-08dad694a0ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5lRCOlRGpNfr/0AjX0g44Yexj2Crq8F/P78JngyO8l0B+Q77j4u8n8LzZE1UaK9CGZtadwKzv9gvYrZRbaISwI5zTjb2L21vlWdMOt2/JV4Hg+/QjWc0vFnf9eKICRLqkfaLIjBRwX9je3C42myeGETBlRIxWnvDjMg8d1xhJcrwmaZA32lmxCpxfakc8zYLnQ20Ic14bsIEbMmMkB/GGs9Ky2rg4vqfpTQZDk6qGtp73wMDaStUrcybIHwlljyhhyBw6CU2SYBwN+PBW9LaDgDyOePXlFm1t/D3BN/MFwMQTUFywT1zIKYJmFKHqRm6fxYGEEnujQuUTaFw30lKuieoQFNZmMDu5OkccVG+6Pm5JzzEvu6oXx1CnPB6i37rmKQGVy2tE0XI/xgAQ5Gd8ixI+qNcmVYlnjsQYFjJEkUWIDpLzdcdTV65hqXsi0f0zxpqW3cur2IDFhynaZU5GvQ4VkxD0bqXeffY1rmV7N0nZGCY0Omr6ODaUI58LBZ96DQe1VCpItFY2TI18Uy7MC2vKdBTUeiEprsvgEliPn8KhN7zntuG426tbyWa1IQhFYCLsu0z4hx+YENzcmTJIeKCCtS0I1AD3VIe2UFoSpnDH3LGsx4MyrG3k0Izxe/+UkokSgTVMpv+z/tFApAxo4pZLL2RCXgUmCM3XpdLT0NlkRTcJym4EdS2MzdWuQlSS993hb78XmdrdMx6NGEKZlVnBdac7/X/KiXa8pwEpAs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(376002)(346002)(136003)(451199015)(82960400001)(36756003)(31696002)(86362001)(6486002)(6636002)(316002)(478600001)(5660300002)(2906002)(66946007)(8936002)(66556008)(66476007)(8676002)(41300700001)(38100700002)(26005)(6666004)(53546011)(6506007)(6512007)(2616005)(186003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czFQM1drb0ZZQlpiNDJSSkxhSjFRVmtyVGFzSmwrSmNxMlJzNjhiVHNrakw3?=
 =?utf-8?B?ZTRVcHRlOHlQOW9jbG04bStZZjZyU0hxK3VjOHAvbFZ4TmRSam05ajdiWStP?=
 =?utf-8?B?SWM2K0k1TXJadGl1d0JYZkhKYmpMQkYwbVhGN3lWb0xGMWZnRWcydmhRRGJ2?=
 =?utf-8?B?VGpMVmlFeDNzNEwzKzJTMDlzKys3RjJTak5GWGppdWZWYTYvOW43L0d1UHlG?=
 =?utf-8?B?d3czUlFDRExNMGNoYWhCS3V6YWhtMGdjNU9acGQ0aU5UZFdEQlFzNjdUK2Nq?=
 =?utf-8?B?WWJCcmRRYXlXbHhlUG5rdGpvcmQwU0pSQkZuV3BKR1dxWGxGZ1E4QkhTYVIz?=
 =?utf-8?B?VUtUZVJVLzg2eVFmMW1xWGRtdDRialoxeDdpaitOMXh0bElHL0VsRHNoeUVt?=
 =?utf-8?B?aW1VTTFWbUVyUjUyd2MrakVFbkcwd1YzM0xzSkpnRXQ0aTJJUWwyS2FZNW1j?=
 =?utf-8?B?L3JxNXRMTEpYTjJOUDRkNVpEaGI1N1ZYQU1YOGVFdkNCS0FBRXBacFZPc2hs?=
 =?utf-8?B?YzNOaTJKdjFrNWsyakV0WStvaDdvZW1XYThMbzFFQXd4aDN3NnNMK09rRXRN?=
 =?utf-8?B?SFVvVk0rbDN2TlBYODhkTS91VThmSkhZQXl3U0MwVVRGQkVVNHpWTThmT2t2?=
 =?utf-8?B?dHVXeWtRaGZOSHZsbUlnNHZYeDF4aGxuVy8wZ09PUFNDa3FGZ2tqa21tR3RH?=
 =?utf-8?B?NHozMWhzVjJjKzdGU1ViMmdHL2J6dUphWjFTamFGM1pHZmdoM29oQ3NOd29w?=
 =?utf-8?B?U0xnQTlYaEF4Qy9JVWJUZytuaWsxdUE5MEpxTm9RUWIrZlVkZFQvVWF0OTZw?=
 =?utf-8?B?UVIvdEttNEYzTmw4cURXL2xxZXhMTmtvMVgxTXF2YWVBOUh4MXNDZFhLSWg3?=
 =?utf-8?B?NWtVUjIrbEdaVkJTY09LSG9vNU0xYStvZElyQ3kzRzQ3L0s2OVU2MTJIZCtN?=
 =?utf-8?B?bVdmTFFlclVqRFpoQlR3OTV6OXIrcktEOVhlcjRZY2tEOW4zUU5NSjRrcTBD?=
 =?utf-8?B?aDQ1NzRXNGt0MnF1WE1QNk82VGhnSXpyMHhzZWY4ejZPd0V5N25jRmJIRk5j?=
 =?utf-8?B?Z3FQeFptZmxwY1JQSE50cUdNNzVNZXlqckJIb2gzUXpWR3k2MFkwUkIvL0ds?=
 =?utf-8?B?bllucE4xdDlHV1g0ODQ0bFJlRHQ1YnRvdW10TjFZS0pHYXRtS0Y2RTNxWElw?=
 =?utf-8?B?bkpibXBXT3dGSEFrc0dESmtRQzV6SXpablpMa0lTbjhLVWZ3blNoVjUrYzk5?=
 =?utf-8?B?aUt4MnJSNUowaVRqSkYvb05BSkpONUVvWVFuR0ZMVW1rcDhTb1pGWVRkTEtq?=
 =?utf-8?B?MzRVTnFQVEY2VmZic2F6VE9USzFsUlR6eWNKaVFWUjk3aHRkRlpYZWR4TzZl?=
 =?utf-8?B?RFA2MHpSQWNWV1ZwMTBCVVFNeGQyM1p6Z3BaOGNEeGhqSit6UzZmMFV5V1Iy?=
 =?utf-8?B?dkJWajRHc1EyeE5DSXZ6MkhZWU9JSkZ4Mkl4YVRHTkdOWGd2K0U2clNDUUp3?=
 =?utf-8?B?dG80VmZXdStoa2pINFRsK09VTStmdmxET0VsYUZCcG1mTHRmUGdNZk8yRWEr?=
 =?utf-8?B?OGxCYkMwUzY3S2ZhZ2VtRHhwRVBON0tBU2pxcHowTU1vRWt3VHBZdlF0bUhB?=
 =?utf-8?B?OUFNTWY3YlEyc0lwQm1EV3hEYW1ZdzRuVitQNUZvSGVOR0VlM0xGbmVMdGxv?=
 =?utf-8?B?cCs1NEo1T0R3YTEvME9OWXNOMWRCT1c2SWpKRDJYbVdsdVFVRWovaUZlV0tx?=
 =?utf-8?B?aVR2aEpHdmFxdE01Y0p2R1pmMXYvU2pXazhUeFVicGJvVStuYkVmR0NkcTJy?=
 =?utf-8?B?NlcvM2pERTdBamthNDZyL2pNaHQycEhOVjJKalQxYmo1VG5XRlNOWnY3OTVu?=
 =?utf-8?B?VklQWTd6UEpFMmhKbGhqSHlWa29tWUltankyemtqa2lIVEtDK3BQUHlicFEr?=
 =?utf-8?B?WHhlOSs5Q2ZRTmk4Zm1QbjRWWWxJNVZwUjVVNEU4RjEyMldMZTEvUnRNbnZ5?=
 =?utf-8?B?STFUQlhpNkVGSkZRNTVNdmFMajZOQko1eCt5bW84VGw2bm5CaTgwTGhDSTI4?=
 =?utf-8?B?Z0lDOEtrZ2tsTVVaWTJhV2dtSVFXU09WZkZkTE4vZFVSSjc5UUZyOWpHNHNQ?=
 =?utf-8?Q?CIZVJhl6SML/MDo3jsEROQmuP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f771378-f2fb-42c9-635d-08dad694a0ed
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 07:45:08.4144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: guQVHrpeourh43rdlahTFVJcV22wQsro7T4RNwewKme12YsrWGEhYqEkEqQumaO+g+AlE1YesNrbzz3rFXbc1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5481
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 2/3] drm/i915/hwmon: Add helper function
 to obtain energy values
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



On 12/3/2022 3:42 AM, Dixit, Ashutosh wrote:
> On Tue, 29 Nov 2022 21:34:26 -0800, Riana Tauro wrote:
>>
> 
> Hi Riana,
> 
> Mostly looks good but I have a little nit below.
> 
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> index c588a17f97e9..57d4e96d5c72 100644
>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> @@ -442,6 +442,34 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
>> 	}
>>   }
>>
>> +/**
>> + * i915_hwmon_get_energy - obtains energy value
>> + * @gt: intel_gt structure
>> + * @energy: pointer to store energy in uJ
>> + *
>> + * This function checks for the validity of the underlying energy
>> + * hardware register and obtains the per-gt/package level energy
> 
> Do we every use this function to find real package level energy? I don't
> see it. I think what we mean here is that package level energy if there's
> only one gt and gt level energy is not available, correct?
Yes. When gt level energy is not available function should return the 
package energy.
> 
> So I think we should make this explicit in the code below. Also change the
> comment above to say only per-gt level energy.
> 
Will change this.
>> + * values.
>> + *
>> + * Return: 0 on success, -EOPNOTSUPP if register is invalid
>> + */
>> +int
>> +i915_hwmon_get_energy(struct intel_gt *gt, long *energy)
>> +{
>> +	struct i915_hwmon *hwmon = gt->i915->hwmon;
>> +	struct hwm_drvdata *ddat = &hwmon->ddat;
>> +	struct hwm_drvdata *ddat_gt = hwmon->ddat_gt + gt->info.id;
>> +
>> +	if (hwm_energy_is_visible(ddat_gt, hwmon_energy_input))
>> +		hwm_energy(ddat_gt, energy);
>> +	else if (hwm_energy_is_visible(ddat, hwmon_energy_input))
> 
> So if we get here and we are finding gt level energy there must be only one
> gt, correct?
> 
> So probably we need to do something like (maybe in intel_gt.h?):
> 
> static inline int intel_num_gt(struct drm_i915_private *i915)
> {
> 	struct intel_gt *gt;
> 	int num_gt = 0, i;
> 
> 	for_each_gt(gt, i915, i)
> 		num_gt++;
> 
> 	return num_gt;
> }
> 
> And then the above check becomes:
> 
> 	else if (intel_num_gt() == 1 &&
> 		 hwm_energy_is_visible(ddat, hwmon_energy_input))
> 
> So this way we are basically always returning gt level energy from
> i915_hwmon_get_energy.

Is it okay to use this macro instead of adding a new function?

if (!HAS_EXTRA_GT_LIST(gt->i915) && hwm_energy_is_visible(ddat, 
hwmon_energy_input))

Thanks
Riana
> 
> If ever we need package level energy in the future we can add a new
> function which takes a 'struct drm_i915_private *i915' arg (and uses
> i915->hwmon->ddat).
> 
> Thanks.
> --
> Ashutosh
> 
> 
>> +		hwm_energy(ddat, energy);
>> +	else
>> +		return -EOPNOTSUPP;
>> +
>> +	return 0;
>> +}
>> +
>>   static umode_t
>>   hwm_curr_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>>   {
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
>> index 7ca9cf2c34c9..1c38cfdbb7e9 100644
>> --- a/drivers/gpu/drm/i915/i915_hwmon.h
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
>> @@ -8,13 +8,16 @@
>>   #define __I915_HWMON_H__
>>
>>   struct drm_i915_private;
>> +struct intel_gt;
>>
>>   #if IS_REACHABLE(CONFIG_HWMON)
>>   void i915_hwmon_register(struct drm_i915_private *i915);
>>   void i915_hwmon_unregister(struct drm_i915_private *i915);
>> +int i915_hwmon_get_energy(struct intel_gt *gt, long *energy);
>>   #else
>>   static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
>>   static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
>> +static inline int i915_hwmon_get_energy(struct intel_gt *gt, long *energy) { return -EOPNOTSUPP; }
>>   #endif
>>
>>   #endif /* __I915_HWMON_H__ */
>> --
>> 2.25.1
>>
