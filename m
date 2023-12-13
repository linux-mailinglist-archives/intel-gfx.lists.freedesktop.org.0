Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788D6810D72
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34A110E720;
	Wed, 13 Dec 2023 09:30:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4441910E720
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702459829; x=1733995829;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gjyHqK9rlg23O/YUosjrZNBzVHRl9IK2sVDjE4S/RNs=;
 b=KYeytVhcAe3P2GomBS4hw79qoq4x1bN44UFRvjTMpN4g6K8lQTnPzT2B
 1osDOP0wiTm9uTHrdtjlJA4oSxvwhCpkkTah9ddsKVEWCOE7hICAk2h+b
 LxDHnEbTcA7PJDq8CSpY4f5arVs2ANx+++aW2HrIYSrpUwKVYhb8frOxd
 osXCtGOp8hGgb3m0/O1rpRw2l0Rhbj8Cn+75rPSSis+Dd7W9qtFXVyuZ2
 m0WV9Ch5kdoD1llV4Kj3XE9tqs0XfEiNuObnpPkkCLDk/0Ek33d26kpty
 p8iQfuTZ9LFbZIBuO6CSR2eckxdkJnaKLZ5pzpkVmxpNDhepMy8DnXBuK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1794849"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="1794849"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="21891366"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 01:30:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 01:30:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 01:30:28 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 01:30:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hprcP/iPCU7gkrxiW97AyXCFeKqXbQcsztvH3uvzq59pQKOr5He7DA5OdWAh0ju15rP15emLAeJZNqxmtSIttelFNhFqY75kkHJScAuFhTLpCY5K75J/5k1kMCdiD9ky5Lxm+YA1LWh94oDsafMSDrlmLFoWZ9WN7Np5j05839ROCNRSr6XSAnVXmXkaBz/nDl7AQb+RniSJgjWNbFFGGo8kZoRXk3X3kC5Y/Zcp13Uld1gb/wbnAEBK8vgB1ua9Bl3kqYYLTl8s1MLdFQ2KiKqgCW+vs5SaxrjNRLvRWXvVfOK19S5N2JveXUgPdZqNFe8WazLLAadCUfQrAVg0Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CGqSBqM3lDlsNkJgWNff0fDL6q+r0lESoUQfnTVXl7k=;
 b=lCzctI8Zx2awEGatKNADMBkWxS2XpZrpDOEY6tmJkeGPqBNqPbFla5j7LmE83SaUYe2yPkb/pcTNwB9C34RzXKmr+bYit1+MQ3QY6Q6/jmAZKSm73U6WSwxVtCLS1SjGYxGHjqjlBgiu82VgwFgNYMl80qtAD0oNDTOfrquTO6iHjyoOCID7k9HFHjm6qqmozc2rN3E/TyRirvCGAsuCXz5YKkaIP8rgPv76jm33PZ06LTeiJLW9OOecBEcM0Y7yOS8+ZapiZQQJhWNUSk8TsXW1Dtz4seecA8WhuURKlrs1W4U5YKcsmq34YuSQnbagNS+zQKsqX0GRwVDievA26Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 09:30:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 09:30:20 +0000
Message-ID: <5e84a9d2-d4cf-473e-be6d-6c837408f46b@intel.com>
Date: Wed, 13 Dec 2023 15:00:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Get bigjoiner config before dsc config
 during readout
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
 <SN7PR11MB6750BD3FD3B97C15BDB50A67E3B9A@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB6750BD3FD3B97C15BDB50A67E3B9A@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0214.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5894:EE_
X-MS-Office365-Filtering-Correlation-Id: 502ecc5d-9d98-46fb-0c15-08dbfbbe1fa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 64GUMOi27VWU1lxyRV1G5ZbInua3ipNiu/IVr/DrXoimyJ4bLaAJjR1z/oMS74b4mobmJyLaVNu2yBF68Rv5TkQHnKcQ8AF1WjQKNCLiJR1gYxtwxBaewURM8zW5BlHfcnqvYo4VVtRmbQhHWYEdbQs/9I36PUgXN3CPXDmN6iWe9zLCqMeaEzRAyENNzUCmZ95/aA2x75WkaJUF8ja9HCr9xlMSqgE95c2JaCtIDF3a3R26rMx6ljU4IDNX9u+Lzc1sV9+SwNnrDiXkgaskqVoTyz0WkbarcXUBF1rtFYeDHyEcD9cNSjCBqK9v2XwsrI4QVlg4vnzreKwoui7z3S9A2GNsjvwhfhRYRhpA4CsJ2huoSq6dzcMhwTN2BSJlebxkWLW7KByEAmael8QGa/9RpmN+TXSx4nIaZkoSvXViFCngNHt1iDXNU5XwFqkSZf8/hi1BVYFlwAbzdUiJZzeqm6BxtYEyAxGU/JbgReFFQ2tvrty8iiek2ABi9Qq5f/d79BEMZAuF+M6ObgowXlSQwjiPr7nAFK7zsLzQVuAZXhMwDVwYfzh/jUvqeno1qSQdB/vhnfVxWua6VVRg60grQR60Ct0sKS6nx9DMbFrwvtUzDTgeIy2iTGH4HGABwvMeIeXlbz6SCO4TxzQRPg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(346002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(8676002)(4326008)(316002)(8936002)(31696002)(6486002)(110136005)(478600001)(66946007)(66556008)(66476007)(54906003)(86362001)(2906002)(5660300002)(41300700001)(36756003)(82960400001)(38100700002)(26005)(6512007)(6666004)(6506007)(53546011)(55236004)(83380400001)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkxoK1JrZVBqaDNQTDFhbzB2aG9HZ1JKekllcXNpb251dzd3Y2tyQ1FSN0ZB?=
 =?utf-8?B?L2FFd1BGczM3eStiTHpjMnYvSWhlTlRWNjE0VWl3Z3hMcTBadUM0L0hPY1k0?=
 =?utf-8?B?MldWME9uYVpTdHdXR245aTlTL1EvMmYwZjd6TEl3S2E5NnRPZnAwcGNrSkh3?=
 =?utf-8?B?YktJQ2pSeVducE5Sc1hLRHpaYVNscW0vMWEyeTJXRFRsN1k0dU1YbUROZjB4?=
 =?utf-8?B?bFN6RnpvYjMxRUErN1BuT3F6Nm5EdGlzeFJoZU9pSlIyMzV2aUJldjZCR1Vm?=
 =?utf-8?B?OSswNm5iVU9zbmI0Rlo3Uml5OTBzdHY2eUwrL1BKSHYvTHZLWkdDZXdRellS?=
 =?utf-8?B?YWxTWTVHcnFsSmg5bG1rUGV6eDhBMjNMV0pBSnRPMkh6UmxKTUUzTXdVZlEr?=
 =?utf-8?B?bnZiNHJkWUl4NVlsZkM1MnV5cnZSMlplMWlPWVR2TE1kcUVSUUZ2bENrTm1H?=
 =?utf-8?B?RmVoSTVOOWVHdnRHaWRNR1M5SnFBWHRLRklrUWtOM3c3SVJnZCtaaDV6Ukhl?=
 =?utf-8?B?UVlVWWV2VEhmakVxM3VXOUVzU0lnWlBVMHRnREFBNjlXaDBpRTltNXc4RHQr?=
 =?utf-8?B?WUNRd0Jvc0I3dHVaUGtsQ1k4dTVGNm5ueXg0cHFoaUZYcEVjQXRYbG5qSmx6?=
 =?utf-8?B?WGpORldpMStlVlZBbkdWd0FKaHBWOHpSamVSV3BkYk12T2hhT1lwekRicGxj?=
 =?utf-8?B?ZDdSN2Q2MjJyR3IxUFQ3R0YzeHNtWURkUm9NVTlYelYzSXhxMFlablRsRDhX?=
 =?utf-8?B?dWpCTDNZSjFaRjE2YTZzYm96RGEyZUIyOElPWUxPcFByVjhyUmh5SWFuZmxK?=
 =?utf-8?B?ZkhiUjJyZk1hd1EzeTZoSTNJZnNiY2o2cnNQajltM0VFZlVYdEZwejZ2czN4?=
 =?utf-8?B?WUFVVDZPTkc5VjUzLzJydW4vb1dYaWRFWlZLT1hESDAwYmQ1cnM3NVVjZnIx?=
 =?utf-8?B?U1pnZ3BjY20xUHZpYUZycVgrYzNkamRIeU8vemg2YWdhanBQMTRQVFRUMU9T?=
 =?utf-8?B?QVlja085R3l1dWNxZkNQbEVPN1dIcEtmdjFFYXpJcUUwTUZrcEd5S1VyYTg0?=
 =?utf-8?B?S0NJV0pwS2xYQ0M5U3FDeTJ5bUF2VTNheXJxanNjQXhtU0dWQ0hDNHBVekVa?=
 =?utf-8?B?azRPckxLRFpuQnJSd01oSURrdXRuNi9XYngwcG5DNWExeVhlZ0RGL09qRWJG?=
 =?utf-8?B?L0lmZDFpY1MxK1NCbXB4NGZRSm1jZXN2Qk1uemdhSEQ1SnJiUG95eEEwWnls?=
 =?utf-8?B?RW80RXpJbVNUVWdER2JyNGtYaW4wdkZRY1hoSkhPeEt0YlcwOVVjSkJUczlk?=
 =?utf-8?B?RHNYRnMwZk96Y3UveXNBWUFVU3MyNElVa2MvRzhRSGVKUEVZcFV3Vm53MUxr?=
 =?utf-8?B?QkZaeWgrUGMrclJBYWRRdVFHbUNVTkRkb3VPdUhDdHptMnYyZGZLSmQ1TGp5?=
 =?utf-8?B?Wko2b3JNTjc1WDlNYzFNMWkrQzB4ZzNRK2MzYVVOcUZaNHdqSElWZ2pETUtZ?=
 =?utf-8?B?eWR5SUhkYkJNY05iWDZQM1BCTld3aU9zeEs5ODN4c3oycDQyWlZ6MWFyWnVy?=
 =?utf-8?B?dGwzOW95VG9Ib2JOTXBMRnh5NGYzQnNLcDMva3FiTHU3TG5PVmxmb3kyZmRW?=
 =?utf-8?B?Y1o5a3BhR3lXdk84ZzByZHIyekRXMFFaS0V0UXBaQmNsaTFiYWRyT0Zhdkk1?=
 =?utf-8?B?bDZjYmFQNFBjK1Q3bnJqa3c0eUs5NWxhTllOZCsxUVNGTk1pTVlvZTU5b1dk?=
 =?utf-8?B?elljNjNaYXBOc0xEcytSclRHT2x6MWtnSm12TW9qKytCZUpjRFR2MEVqM0hF?=
 =?utf-8?B?M1NObG5pdHkvWXZCSFpUcGVuYSsvUkNOVG1KKzR0UEdLN2FIZlhkQkdhemc4?=
 =?utf-8?B?WXlTbzJNUGZjV1BxQnFIeFpwaHR6WUEyWkJDenk5S1FLVHB1aHQ5U280b09k?=
 =?utf-8?B?aW5RcER1M2NMc0tmTDN4MTNDT0VKWVNHMUpZblBUdC8veUVoVnR2S0JZTmFU?=
 =?utf-8?B?L0RwSGNCTm1jRWtVTFF4dWc4MlRxYldEbGhmMXNVT2JubHhORGU3bTZkSzNm?=
 =?utf-8?B?bzlZTjMxQVIybjlGeFNKQmRqVVNSSjRHR0tEMGtDcUNzRnZ6V2xmSnFpNDh3?=
 =?utf-8?B?d0xRaWp6WHlacStpa0lpUStZY0JRbldmWm1WbERtSnpNdVJLWmhQQUIwLzRJ?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 502ecc5d-9d98-46fb-0c15-08dbfbbe1fa7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 09:30:19.9852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eqFVqOHr+HrZSnDCy9WeyGt4F0GEPtuiptIUvRXo2kfwqKXoWz9hJ2KqFEZicTcAyGoAtSOdgDlwV5r4s1f1y8CNGY+A5EwjSJZ0laEFqig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5894
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


On 11/23/2023 11:57 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Wednesday, November 22, 2023 12:16 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Manna, Animesh
>> <animesh.manna@intel.com>; jani.nikula@linux.intel.com; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH] drm/i915/display: Get bigjoiner config before dsc config
>> during readout
>>
>> Currently we get bigjoiner config after the dsc get config, during HW readout.
>> Since dsc_get_config now uses bigjoiner flags/pipes to compute DSC PPS
>> parameter pic_width, this results in a state mismatch when Bigjoiner and DSC
>> are used together.
>>
>> So call get bigjoiner config before calling dsc get config function.
>>
> LGTM.
>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, pushed to drm-intel-next.

Regards,

Ankit

>
>> Fixes: 8b70b5691704 ("drm/i915/vdsc: Fill the intel_dsc_get_pps_config
>> function")
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Animesh Manna <animesh.manna@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 959db3f61e84..e086caf3963d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3694,8 +3694,8 @@ static bool hsw_get_pipe_config(struct intel_crtc
>> *crtc,
>>   	if (!active)
>>   		goto out;
>>
>> -	intel_dsc_get_config(pipe_config);
>>   	intel_bigjoiner_get_config(pipe_config);
>> +	intel_dsc_get_config(pipe_config);
>>
>>   	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>>   	    DISPLAY_VER(dev_priv) >= 11)
>> --
>> 2.40.1
