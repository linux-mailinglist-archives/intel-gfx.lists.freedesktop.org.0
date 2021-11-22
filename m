Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BD7459381
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 17:56:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E94D89D9B;
	Mon, 22 Nov 2021 16:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9883A89D9B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 16:56:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="321053562"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="321053562"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 08:56:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="474411061"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 22 Nov 2021 08:56:13 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 08:56:13 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 08:56:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 08:56:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 08:56:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UhVty6+aqZZ2ZRPk27aTwHPItPKgllSq66FC5x9FGikYT5Yu6UQHqhIkIrqwSuPl6u869o+bTLNSxpoavqjkKuqt6Fr/9X648YnsAoreU9WKwo3vXaSs+o1fVM1YKQ3y8DeYO9mThGrOvxCsXR0eYeY4XwOpF2hwsFDhf0PPf9lK0ePVuuBajvyJiLkiO5rwA+K5q+7iKtZiBpULjmGq8TsVl9L3uDFTxyHVVCMKtxfII84jTVyS5eNCsF0M6IU/fT33Uti3HYLR18LQBewzjPL6ZjmL4babPx9u5e3MCmn0nrgWUCplDPkI3QiMR2ZiTX47VZd+WyS0ZFsTMdHbiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2fvq20Pm7r8eBtCVYL7II9P5bYnwf/VSZdBTJBotyDg=;
 b=Qfn8YFwgrWFPI5j+cW3uxH+0/NdEnLDg6IEH6aiqAW4yvhsFSi0rY49Bc4PaLAND2r0LZLKQsIcnLVN2KGazPdIbtsYbyukI9x1j+BIY3SbGNiO7D8UlRUqWswurGc9Fe0Z8lg4SNMjh5K6zJPfxBnReoTUWo3eNA2YJOL/0WXTdSxxnoXb4ycdxM0Lqs9+OqXTLVYr6DUn7jbECeVICExNdJuWE6EJYXy7DF0Mwf40KfeC4jvc9tyqF3vo2ppyCQ5hYqqITv0MWvShUn1hgO+u+wgptWWUujP+AWFhU9ae8reKRHuhTc0UKNB+bRVu08/MW45ans40PF3pmqB4E4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2fvq20Pm7r8eBtCVYL7II9P5bYnwf/VSZdBTJBotyDg=;
 b=Y33wx+MjQVh4mV2jgtdI4pI78gossBGK1Rd6jvAeTJWO71hYAa/zNyo3hnYXg68SZJo6rb1TOQCvzTQNurYUnHslQV7rOWw9NYCDg0Igz0EBG0TS8QPI2I9fjhKDAMhPXV569acZJ+JV1/Zfj+bW7LzsRboCR7Jw1awpfT0a3tg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB4041.namprd11.prod.outlook.com (2603:10b6:5:195::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.26; Mon, 22 Nov 2021 16:56:10 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a5e8:312c:b70:a2a5]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a5e8:312c:b70:a2a5%4]) with mapi id 15.20.4713.022; Mon, 22 Nov 2021
 16:56:10 +0000
Message-ID: <a7701b74-0231-6081-8278-c4f151c79a7f@intel.com>
Date: Mon, 22 Nov 2021 08:56:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.1
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211117060321.3729343-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <7b3a4b58-d604-9465-34e4-9cf167f110f6@intel.com>
In-Reply-To: <7b3a4b58-d604-9465-34e4-9cf167f110f6@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0P220CA0012.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::24) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 SJ0P220CA0012.NAMP220.PROD.OUTLOOK.COM (2603:10b6:a03:41b::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.22 via Frontend Transport; Mon, 22 Nov 2021 16:56:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3fb36879-a078-4654-55b3-08d9add8fc29
X-MS-TrafficTypeDiagnostic: DM6PR11MB4041:
X-Microsoft-Antispam-PRVS: <DM6PR11MB4041E873A32D870A678C6D55F49F9@DM6PR11MB4041.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: huVzneGSAsdOgetqSgjAMxoNu6H78Sz0tUHNxY4rsGxP6k2RmGFiXzB7gHy8xqj0v/Jk/RijKhH9QLXOwNnXHziJV8ZHUpnMStFdpcDhmoWRzE2r2bbGWaPPxZIUTcK2tcGhOivpj1aVyMzqmvdMDAvA4+zNSfTWa6dUQdE/+HuQUrB/3Qf2sxwy1rnB68lHZgTNCOqRd91WpIWRVftvxxqszRKSdAvLQSLqMAyGoL7eFKX75u8QZqAC6B/A7+WEt99vxbC+LavLJZIRiCqgnvTnyE4D+XOZj+nHq6Mr81DSP2PCY8Hp7EgyiqYr6lIdS1yCW/0jvX6qb4aOc/FxGueLWLjtGA/4PMmprVK8HR229wJVxOx+RgCAWWUud1CMZvaBV/rJ6Fd7aI5iu96sLKkl8IxeUUmArlL7AWB8IWTQyNGAMgYZgWLHx0w/s3bM7t2sPsmOIyCs3NJTa/FWQAXx8jxkIxH84rvw3IGvCuxD/d+FfppDJHHE6nt0u25/dAMxZYZomzvK10RqPb/+/HpQK8/Sx0Dc3+ZceSAIoS3Ez1LB4u3ESIby5INTrrH7zdx4+GFVS154ANBZBLq5dQFLCCTylKH74pRPlxFzrZs2oJRx+Gva5p84p59UAtGnhB7SoE5k184SvQuL0/SEPEb7TVttjXBIYuiBDseK4T/NSiPKAW82ul2LkuzXtXzMdubM8Up7nGIT2I9gD2UJUsrehZG15iMf2JKZzNSCbbOBWByyRJ+sQorcGYY75Znw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6486002)(86362001)(2906002)(66476007)(66946007)(31696002)(8936002)(15650500001)(186003)(38100700002)(8676002)(31686004)(316002)(2616005)(36756003)(45080400002)(53546011)(16576012)(83380400001)(956004)(508600001)(82960400001)(5660300002)(26005)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTM5R1FzdUJOL2lnQms5MjBKZXlNNmY5R1F5RHUydEJkcFgvakx5Q0RYK3BZ?=
 =?utf-8?B?ZHBFRk8reldVWEtUaForbUREMVd5SXpjWHBwWGJsU2w5dlJaekphbnhDREtZ?=
 =?utf-8?B?N09QSzIrd1dDWit6dDlwM2JRWWg1cGpteUhKNnAwM3NRSEdsbGF2K041Mmht?=
 =?utf-8?B?UEhlWmpHaGRmMjE4MWloSytoVXUwbXNLRFJKTkRKZE13Rmx6aGNkQWN6Rjl0?=
 =?utf-8?B?akZYM2tPT0hEMXdEbTVudVhYN0xFZEdoNmVVVVRGa3JGU01xdDZlNjdDanJV?=
 =?utf-8?B?V09JS3N5ZkhKRkNXdkh0ejNvYXNyMmtld0ErNkhnOHJtWnFVZVEwQmFrZmV3?=
 =?utf-8?B?Wkx3R3R4OXhENGtHMmFtUUp5WjRiU1N1c0dsQzZ5SzhBZE0yYkdNMFlWMUlY?=
 =?utf-8?B?SWFoNmlSclNyeWFDQ3M2TjQwZUN4Sm9Lai96SXgzZFIwSGk0cGVROHhVeTBJ?=
 =?utf-8?B?K2VqbUhocHRLak0vWFh0RkJ6aU8rUktxbTN3YkxZS2NZMzREdnR6dko3Q29V?=
 =?utf-8?B?amhvNFdISmFMV2tpV2FBdjVLeVk5WmxUQklQTjNlemNDU3RxSllQUnYzYWh1?=
 =?utf-8?B?Y2dNVjhROVR0M3NJYXhySHhvNi9lNlVjM3RrbDI5cW9hbHVPUmlsd1lhTzkr?=
 =?utf-8?B?ZWRjTHdCK1FkakZzY0tkbFZSR3VsakQ5UTQ0Zk83Q0V3VnJvZzh0L0preWU3?=
 =?utf-8?B?L3o3Uk5JUlY3Qm9TNjB0dzNvSzJWTFpES1NRMGJZcGJqVGhLNHJVQ2RvSVpr?=
 =?utf-8?B?ZFlSQWhKbUttRFJNMEdTN3ZiTjc5UTZ6ZlBPLzhDZ3h4dU1ScUVCT1MvWTQr?=
 =?utf-8?B?d0JDMnYzMUEzdmV3d2hVbXZLS3JVNXFxMXRLbU0yaDE5RnFET2F6b3BVWkNH?=
 =?utf-8?B?cXBwMVpDdW9OdVpIODlpbTJHV0tUUkxZVmNGcUVwWnZJcFhqRHVXRlZheGNF?=
 =?utf-8?B?bmxEd3M1Yzh4RE9rZ1liQU1NaTg2UGFOTnBqWVpha0RRVkZ2SG5XUVJBZEdO?=
 =?utf-8?B?YTRoblpncDluYndmbW1NRkxzQm12RkJLZ29idDVnWHhmQ1VtNzNFaXkzZ2NY?=
 =?utf-8?B?TkxPVkxYdGZrSWcxeXVhU0RtT3ZXbkhrSi9Ua2NLRDJsNU1DY2dVRUxHZ3p2?=
 =?utf-8?B?S0dTdzlVSVdsRzRPRnFGKzdhVEpXOWRJa0Q5dytMOTNVTGQwVTF4dXgrZmJn?=
 =?utf-8?B?dFpkUDVGeXlUS1hyTmNmcnNsS0dvdVlWenZLWkx3cnFyWDJSMmlUcmJvbnVH?=
 =?utf-8?B?bzNPWXdKU0pQclM5TjhqcExCVkFIZVBRUUh5UkFPYWZMTk9kbFV6Ly94Tk04?=
 =?utf-8?B?cXdnNzB6cmgwSDVNcWpWbmNaRVRUbENxRUhUOXJDdVZvendqVFJWdU4yUXJj?=
 =?utf-8?B?SVpBQzlNWGZlOFoyRllZUEJzQi9oWGdpYWFvODhKS3luQWdRbEtJZlJ5Q3VQ?=
 =?utf-8?B?MTZsMEpjZ0pHeGZuQWp1aFE3dHdwZ01tWXVQa29hMW9abXdaTG93Rk1vTkh3?=
 =?utf-8?B?UG9Wcm82eENKalA2NE8xbHNEWmlwN3lJT0xMeFVzcHBJUURhYThsRGRuMXND?=
 =?utf-8?B?VzltWlRKbHc3OEN2clBwV2I2cXNGelpoOStrQWNlNFN4MWlhZmplcm1MQ0k4?=
 =?utf-8?B?bXZiV2ErbG1PSHVBalB4dklTK0hVeUE3ZXJmM2FMZW0zVGFxZlJuTHJaWkVs?=
 =?utf-8?B?ME95YXYvZmYzV1dvajhscy9JZzB3YUZMYnFmS1o1UDVRMEIxcTkyc3RsU0lX?=
 =?utf-8?B?L0dqTmVjZTk1YVFjN0RSMm4xbGcvcVNPSFlON0ZsOEJ3QTl6Vmp0YVI4SUt1?=
 =?utf-8?B?WjVqdHIvVm55QmNVaEpqR3VxY3AwMkhBNDlacCtuZmo3RUlab0h1NXZkYzRK?=
 =?utf-8?B?VUpxQnB6RXhidmtidGl1QWloeHRlSHJOWHdaWUtLeExERlhQdXVjYlZ5RXJR?=
 =?utf-8?B?a1pCdWdVSmNPV3RIV3hWMXJESjNSd3NXdGh2VzZvbnR1RHpNbEJ1RFRkV3Zx?=
 =?utf-8?B?ZFk1Qmd0SXlWdHZONU4yMXBad2JrVG9BbkZqY2pyRzhkMnNSbHR1SlBWa2xo?=
 =?utf-8?B?Tkwyb0RrTnZzM3JkcHg3VEhVUTBYM1hYZm84TmJlMmNGYlhxVHl0eHNhT3BT?=
 =?utf-8?B?UkRNTnFKdzFxRTRUY3B1aW13K2E1WTA5ZnpCaWlyUnhuVDZtYWtXczBibW5X?=
 =?utf-8?B?bVhncDRqOUVBd25jTmVTR1g1R1MrOUM0TzA4RG9RbENxZGdPVE1nVW93WE5L?=
 =?utf-8?B?SWE2SjNYYU9SampWRnhSdWNKNGJ3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fb36879-a078-4654-55b3-08d9add8fc29
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2021 16:56:10.7074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SeleQT1jbY6Ky/x/dabrEDqHUAXb20YTmvvVv1KmdDwiSp7geVsEEL4lGLUSAYklGkuaEMEuQd/2cukMxtEk+5PoGhnvd7Iky4jc2oo0FNs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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



On 11/18/2021 11:35 AM, Daniele Ceraolo Spurio wrote:
>
>
> On 11/16/2021 10:03 PM, Tejas Upadhyay wrote:
>> selftest --r live shows failure in suspend tests when
>> RPM wakelock is not acquired during suspend.
>>
>> This changes addresses below error :
>> <4> [154.177535] RPM wakelock ref not held during HW access
>> <4> [154.177575] WARNING: CPU: 4 PID: 5772 at
>> drivers/gpu/drm/i915/intel_runtime_pm.h:113
>> fwtable_write32+0x240/0x320 [i915]
>> <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper
>> fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
>> ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
>> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
>> snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp
>> snd_pcm prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci
>> btusb btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: 
>> i915]
>> <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
>> U            5.15.0-rc6-CI-Patchwork_21432+ #1
>> <4> [154.178154] Hardware name: ASUS System Product Name/TUF GAMING
>> Z590-PLUS WIFI, BIOS 0811 04/06/2021
>> <4> [154.178160] RIP: 0010:fwtable_write32+0x240/0x320 [i915]
>> <4> [154.178604] Code: 15 7b e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
>> 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
>> c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
>> 00 00 00 48
>> <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286
>> <4> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
>> RCX: 0000000000000001
>> <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
>> RDI: 00000000ffffffff
>> <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
>> R09: c0000000ffffcd5a
>> <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
>> R12: 0000000000000000
>> <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
>> R15: 0000000000000000
>> <4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
>> knlGS:0000000000000000
>> <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> <4> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
>> CR4: 0000000000770ee0
>> <4> [154.178682] PKRU: 55555554
>> <4> [154.178687] Call Trace:
>> <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915]
>> <4> [154.179284]  intel_pxp_suspend+0x1f/0x30 [i915]
>> <4> [154.179807]  live_gt_resume+0x5b/0x90 [i915]
>>
>> Changes since V2 :
>>     - Remove boolean in intel_pxp_runtime_preapre for
>>       non-pxp configs. Solves build error
>> Changes since V2 :
>>     - Open-code intel_pxp_runtime_suspend - Daniele
>>     - Remove boolean in intel_pxp_runtime_preapre - Daniele
>> Changes since V1 :
>>     - split the HW access parts in gt_suspend_late - Daniele
>>     - Remove default PXP configs
>>

Just realized this is also missing a fixes tag:

Fixes: 0cfab4cb3c4e ("drm/i915/pxp: Enable PXP power management")

Daniele

>> Signed-off-by: Tejas Upadhyay 
>> <tejaskumarx.surendrakumar.upadhyay@intel.com>
>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>
> Can you send a trybot with the PXP config enabled before we merge 
> this, just to make sure the issue is gone?
>
> Thanks,
> Daniele
>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 +++--
>>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 37 +++++++++++++++++--------
>>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 19 +++++++++++--
>>   3 files changed, 46 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>> index b4a8594bc46c..c0fa41e4c803 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>> @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>>       user_forcewake(gt, true);
>>       wait_for_suspend(gt);
>>   -    intel_pxp_suspend(&gt->pxp, false);
>> +    intel_pxp_suspend_prepare(&gt->pxp);
>>   }
>>     static suspend_state_t pm_suspend_target(void)
>> @@ -328,6 +328,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>>       GEM_BUG_ON(gt->awake);
>>         intel_uc_suspend(&gt->uc);
>> +    intel_pxp_suspend(&gt->pxp);
>>         /*
>>        * On disabling the device, we want to turn off HW access to 
>> memory
>> @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>>     void intel_gt_runtime_suspend(struct intel_gt *gt)
>>   {
>> -    intel_pxp_suspend(&gt->pxp, true);
>> +    intel_pxp_runtime_suspend(&gt->pxp);
>>       intel_uc_runtime_suspend(&gt->uc);
>>         GT_TRACE(gt, "\n");
>> @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>>       if (ret)
>>           return ret;
>>   -    intel_pxp_resume(&gt->pxp);
>> +    intel_pxp_runtime_resume(&gt->pxp);
>>         return 0;
>>   }
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c 
>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>> index 23fd86de5a24..6a7d4e2ee138 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>> @@ -7,26 +7,29 @@
>>   #include "intel_pxp_irq.h"
>>   #include "intel_pxp_pm.h"
>>   #include "intel_pxp_session.h"
>> +#include "i915_drv.h"
>>   -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>>   {
>>       if (!intel_pxp_is_enabled(pxp))
>>           return;
>>         pxp->arb_is_valid = false;
>>   -    /*
>> -     * Contexts using protected objects keep a runtime PM reference, 
>> so we
>> -     * can only runtime suspend when all of them have been either 
>> closed
>> -     * or banned. Therefore, there is no need to invalidate in that
>> -     * scenario.
>> -     */
>> -    if (!runtime)
>> -        intel_pxp_invalidate(pxp);
>> +    intel_pxp_invalidate(pxp);
>> +}
>>   -    intel_pxp_fini_hw(pxp);
>> +void intel_pxp_suspend(struct intel_pxp *pxp)
>> +{
>> +    intel_wakeref_t wakeref;
>>   -    pxp->hw_state_invalidated = false;
>> +    if (!intel_pxp_is_enabled(pxp))
>> +        return;
>> +
>> + with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
>> +        intel_pxp_fini_hw(pxp);
>> +        pxp->hw_state_invalidated = false;
>> +    }
>>   }
>>     void intel_pxp_resume(struct intel_pxp *pxp)
>> @@ -44,3 +47,15 @@ void intel_pxp_resume(struct intel_pxp *pxp)
>>         intel_pxp_init_hw(pxp);
>>   }
>> +
>> +void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>> +{
>> +    if (!intel_pxp_is_enabled(pxp))
>> +        return;
>> +
>> +    pxp->arb_is_valid = false;
>> +
>> +    intel_pxp_fini_hw(pxp);
>> +
>> +    pxp->hw_state_invalidated = false;
>> +}
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h 
>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>> index c89e97a0c3d0..16990a3f2f85 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>> @@ -9,16 +9,29 @@
>>   #include "intel_pxp_types.h"
>>     #ifdef CONFIG_DRM_I915_PXP
>> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
>> +void intel_pxp_suspend(struct intel_pxp *pxp);
>>   void intel_pxp_resume(struct intel_pxp *pxp);
>> +void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
>>   #else
>> -static inline void intel_pxp_suspend(struct intel_pxp *pxp, bool 
>> runtime)
>> +static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>> +{
>> +}
>> +
>> +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
>>   {
>>   }
>>     static inline void intel_pxp_resume(struct intel_pxp *pxp)
>>   {
>>   }
>> -#endif
>>   +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>> +{
>> +}
>> +#endif
>> +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
>> +{
>> +    intel_pxp_resume(pxp);
>> +}
>>   #endif /* __INTEL_PXP_PM_H__ */
>

