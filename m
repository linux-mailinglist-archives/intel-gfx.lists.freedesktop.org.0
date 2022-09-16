Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E78805BB418
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 23:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B443210E143;
	Fri, 16 Sep 2022 21:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D07E10E143
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 21:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663364915; x=1694900915;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0hduhngxP4lKhizH50N2fH9k3WIs9GLwKscMYWVmZL4=;
 b=TitsZJ/S9/ggm5mHmWN+S/1sIZmefQPP3o1+L3kUydda2MIwUnQUzxF3
 VOTnUPfXV6uBARgPMK/LwkrP7Ltk66vdQuWSWdRrPfLnBlScjUKScLR1l
 vJZH6OIAIksY19I92RVHVRRp1CvNaTkMSER/N9KaOxpVgUJQlI43JuACo
 jo+2n5ph5/V/bZv1AOM5AOl7hpyaoUFPNOEy3UA14RRpQ3EGwWaGpkOtL
 OMljHrQn0tdxf/pM7vrSWZ9mwWBW4ne67U1HrubDwpYm7hqnxFPdKT63E
 dLpKGQmTrC6abU3yjNgL4WSG0zrUdOiri56vpvhebFYhF+HI1y0t/3wcl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="299908076"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="299908076"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 14:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="617819440"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 16 Sep 2022 14:48:34 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 14:48:34 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 14:48:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 14:48:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 14:48:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sa8Scmoyk8gPJcgarY2503RKYGwaTSp6Z7IX024EvS7JSa39/35hbtYqnk0Pmwyuj9XMIOSfBG4eWMZ8+8l6J5FZYAWOFCpfWpLYuJd6/todm5DcDYrVHQvvfdPW5O84O+xSog5GdL+pnPFireQbhQcNqKhmUcV4wLVddFpAmBu5jEQCzaH/Kry6spc6TfaidxXHXTDLQRzwknfkFgBHupZixFtH0P6hMz/ndZ9zMbMOcoyKBME3L7EGkeBXspsJ1az+O1ZwnayIYFOdndoJgGokFCCkn/mN63/Q8EfHX0VZZVGI91stLLsEhJkkjhDsbnKxW+uOQDv9aFeRDqUeJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ua5Hg/0G2Y8ZZq5KKyBxTesor/oFmGWajHq01bHkhqQ=;
 b=J29D/sqlk2FmaU6dCMktKAgq1WMnPrIsShGoCDrtgtxY18R6QxTdt8tm1A34RUwa2XgZvAdJvHwUe1330xjSaqYxjme0vZlo+uyX7m08TswHLcxW2VTa/Bzw1COn83+gw6QyRC3yRLU/dN5O7hU0X9P7JYXEybyRlmL9yhtqKHw/G87iwnw0JKGQJGd7URRr+UX//zyAU+p5fhgXK5SIIPhRnlWJHrsl21nPEvJ/bK3s2xEf0kRdisgwfkSwJ++xZXiioZPRARIKzbCJDo0IFEvZrWyEoMcfjdZeJTsAyUvX+HCHGqzkaAUbfs9WPTGec65u9sgnkXoHHF9i3/KMDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM8PR11MB5605.namprd11.prod.outlook.com (2603:10b6:8:26::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.16; Fri, 16 Sep 2022 21:48:32 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 21:48:32 +0000
Date: Fri, 16 Sep 2022 14:48:30 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyTvLg90Ig0KdV0m@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-19-umesh.nerlige.ramappa@intel.com>
 <87v8pnuhea.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87v8pnuhea.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0270.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::35) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM8PR11MB5605:EE_
X-MS-Office365-Filtering-Correlation-Id: 560ebcbf-6409-4ba4-e051-08da982d32f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S684I3bqZxh3fioc9x9nG3W6nOX4o6U2C24aj4jH7SINrboCBUt5ni682elrPrKgvFEkEVGmtUwzQ1bpLouHXxLc0Jk5nn3DGIjjJvjh/xvfJI4v3+DbzLsFgGLUnP0fxflpoh7HfMu2uHg3aAmKF9dxMIqZzXx2R6yld4tbRwnE44159PXu2RgTjm2yE7ew0iBFmBTKWY8gOkyxtUREjyuGHclvf7eTq+A1f0CKAC9P/MGwBUNal9f4L99SEIlEycUU5eQr9wncKDrzk679b/YDCO3sld7BfUYuDEESaA2L7Vaq+udfi83wvrXOgYCIMIwZJGXynLFhhYsZgkHyFk2J1tFthV/5PoWM8rW2EK/W0LY/xC56QqCiUYSqeYeelt1lS8Oy5vv0yyTKxMwyrMfTm6sDKyHDIQ5oPzfSfXWbGNMIlZFZprM/5Xs5mDcZJlNoIbXZARnH/KRo4pUXEmTdOx3GKxRaRJFgzA5InJOPyXbySX35TGySv5JS+HUxsTHxO0FiLLxO/2Hv7CUlez7U/9PW4q6WKSQQvTXe1zI5idWKnJrigt2cmAWcOuLKLsOeSQOSNXUWlITQtv3J0cUz8t8dTwjPU1e+XsJnhVB1ezDNHWtmTLcc0j3f2dGtdbnYp2eKvNhU+KMxVm9HOTpmsiqpNi83PFrz3XgYOvqBLzCIeVrLG60zf2+VoTwdxsglpcl31VV2tJaBNIupbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(396003)(366004)(39860400002)(346002)(136003)(451199015)(33716001)(2906002)(66476007)(82960400001)(38100700002)(5660300002)(6862004)(8676002)(8936002)(316002)(66556008)(4326008)(66946007)(6636002)(86362001)(54906003)(186003)(478600001)(26005)(6512007)(9686003)(83380400001)(6486002)(6506007)(107886003)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGhtZnJ2MGNZeXlISmRhd0luZDJwaFlWNDd5Q2srOG9OUUlsaFdjRXE3cTlP?=
 =?utf-8?B?NzJwcmdXazVaclJlS2QrZ2xqTEFzbTRKZGpwNlM1MUJlaU1MSU9YRHRZSzlP?=
 =?utf-8?B?NS9IWStnNVpMRi9MNHFUOTdldWJPUEZTL2pIS0JYUmM3QUtkSDZQYTBGUFhH?=
 =?utf-8?B?bGJLdm85N09FWFZKbytVV3FTbDJFbFZPelZRbDhCMVdmOFQ2d2hkMFlkeWw2?=
 =?utf-8?B?ZFpwclNNL1BrakR6TE9lT2hLY2E5cUt3QkRpUndyYUxXcVVlaUFHbEFRY0VK?=
 =?utf-8?B?VkJBNm0zVzZGQ0ZXZXc0WDdCZEV4OFY5aVo0WE1hbXhyTW8yZ0tEQ2JURm9p?=
 =?utf-8?B?SS8zNVRKQ1ZMemNsaC9wNENQL0Q5cXgrWWNOenlUZVlIRjRCM1Y5M1A2SytM?=
 =?utf-8?B?N3hJckF2TXlzRDI1Q0tVaHlTTWsrUlU3ZzJzKzRCMXowbDZ5QnhyeklnUW5X?=
 =?utf-8?B?QWdId0FJeWtjamhFVmhvQnJKRm1zbU15enJXWUxleVluUFYwTEtESVJ2TUl0?=
 =?utf-8?B?QXk5SkR5aHRMWERTQm5malZ0RUxTZGkyQ2xHKzRQY2d3OXByeWUxcUJJY002?=
 =?utf-8?B?dllPeU1uRTZKc3F2eDgxdXZxUEhZNmJHU0pLSlhHQzFTSjZjNXdKaGxLSldO?=
 =?utf-8?B?bUFwakJuR1pFQlRaLzQxbXlRdzRucVlKajFNZlJFcktnUkl2YmhwWjNiVjdR?=
 =?utf-8?B?c2dzbUVsUk1HdG50NlNFT1FLanNrNGU4TnN0Snp4cVJpaHk5TkN4SWZURytQ?=
 =?utf-8?B?L3B0Z0toYWRnbXdBRGxkcWNiUUJDNFRHZGVCRHE4bUZrQUlidUpnbkFKOTNh?=
 =?utf-8?B?ZWI1cGFQSTlleWpuTHVEQU1aVC9rME9BanpRUlJnTEQvcytxSStobzFjYnpE?=
 =?utf-8?B?cy9Oa09pcTl0eVlLVzZKZlZUNmtLblFSZXNXVDNkWmI5VnJqcGFkc09kRk9D?=
 =?utf-8?B?RnBpZmkva2M3T1JpaVFLby9MWFVsM04rK2dyM25GOUNOMmhQTjRPMkRlZDlE?=
 =?utf-8?B?amJjaEVYUHRlZ2VJYzJVRGs5SzI3bVM4cXdlQkZhZ0pscUE1ZnBhcU5FdkR2?=
 =?utf-8?B?bDZlblNxdkFvUEZGcU41eC9CMk94WXlGMm1KdUVEcUhLeHJUTjVLa3NRVkhl?=
 =?utf-8?B?dHVlYkMraW9uSXhHZCt6Yi82dkp3T0JQZW1hOGROVlhWUFVqblc2Y3BIeTNa?=
 =?utf-8?B?ZWg1b0E5dE81KzlUcXdYMmhsbmlGTWxNNVFrUmJyajBVMDV1YjFqZVNVbVRt?=
 =?utf-8?B?QlJvM21yT1YxOHVKb0Z6WlZrQmEwZTBsUGI0OTN5OU5tbm5iOHVieFBuWUJY?=
 =?utf-8?B?cXR2YnkwLzhmbklYZ3Q3bmxIcUh4ZWFZaWpVMjloOENJSk1zUFJhQ3ZqM1da?=
 =?utf-8?B?RGxLT3prS2ViNHh3aHJ0Nm9QMU1PWFQ1cGRPNWlBL2tlbFR6NDNhcVRYaHZP?=
 =?utf-8?B?bVUxWnNBd1pSSFJKY0xnNFhPS2Z5Sjh5NW1BNGtUY2lmbTZYQzFDcS9vTFVn?=
 =?utf-8?B?TEx6WGhUbE1PQkF4ZFh6UFQ4dUd6RGlONGZRZ1BLUHFDbWJYUWVsK0xhV1pK?=
 =?utf-8?B?MUh2TENEejJiMCt1S29Rd3AyY1RiMVRFWm9yMTdNc1BpQmxrR3A2bDdON3dJ?=
 =?utf-8?B?VGQ2aUxDclU3c3E0czcyY1ZWSk1SdUltSzJPc2txWGdYazJ0RG1XNEl6Y0Zq?=
 =?utf-8?B?dnBLRzJ5b1NNRytlTStDTzBjT0I5T0FmcGtoMTJ6Z093NWNlYU9EZ1BBeTFi?=
 =?utf-8?B?bytqU0x0M09zd2ROVjdlTzFLdi9qOWhRa2FoazYrV3ZyamFkVTdLU0NxWm9u?=
 =?utf-8?B?c2wyZERMRjhzOGd5bjAyOTI1WTdvU2g1UDhVM0ZGSnRPWnlHYVFQL2JLZ1Qv?=
 =?utf-8?B?bGIvR3U4ZS9mZkN1UFlNOTc3MG4yWEFMWlY1VHNCN1Y5RXkrMXhqaVdMdTFY?=
 =?utf-8?B?WGJYbG5rZ0llUnFjb3plSG9lNjNuRnRxcnY3S1lzNTBJSmRVVjZLdXRTQ3JI?=
 =?utf-8?B?cFA2cHVLOENmM0ZhQ2xCb0hOakZhbFByTFh5QnNOOGdackNMbTdqUHEvMFlW?=
 =?utf-8?B?QTlqUlVtZG1Zb0trRGtMSk8yRXQ0MjVoV2wxbFhOclR2TUNkazBzb3lubEVz?=
 =?utf-8?B?eGcydzNYcTZ4RTFpT1h4NXVvdkdzV21LVzFuRkFrcEptVjNGK21MVWFvNmp6?=
 =?utf-8?Q?33dwi8D7i6ZdsMBzd+lEZ1U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 560ebcbf-6409-4ba4-e051-08da982d32f6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 21:48:32.3586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0DrWLabGtw/saKrNbgRuFLnqWzNB2LiwFOhRFi6SXODwLy2ephsnDxY/SbBh9B/wwHtQr3HYwYQEWmGumGDeu/rz1gg+xQUvH5NGFEcol74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5605
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 18/19] drm/i915/guc: Support OA when
 Wa_16011777198 is enabled
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

On Fri, Sep 16, 2022 at 02:41:01PM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:54 -0700, Umesh Nerlige Ramappa wrote:
>>
>> From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>
>> There is a w/a to reset RCS/CCS before it goes into RC6. This breaks
>> OA. Fix it by disabling RC6.
>
>Need to mention DG2 in the commit message?
>

will do

>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>  .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |  9 ++++
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 45 +++++++++++++++++++
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |  2 +
>>  drivers/gpu/drm/i915/i915_perf.c              | 29 ++++++++++++
>>  4 files changed, 85 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
>> index 4c840a2639dc..811add10c30d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
>> @@ -128,6 +128,15 @@ enum slpc_media_ratio_mode {
>>	SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO = 2,
>>  };
>>
>> +enum slpc_gucrc_mode {
>> +	SLPC_GUCRC_MODE_HW = 0,
>> +	SLPC_GUCRC_MODE_GUCRC_NO_RC6 = 1,
>> +	SLPC_GUCRC_MODE_GUCRC_STATIC_TIMEOUT = 2,
>> +	SLPC_GUCRC_MODE_GUCRC_DYNAMIC_HYSTERESIS = 3,
>> +
>> +	SLPC_GUCRC_MODE_MAX,
>> +};
>> +
>>  enum slpc_event_id {
>>	SLPC_EVENT_RESET = 0,
>>	SLPC_EVENT_SHUTDOWN = 1,
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> index e1fa1f32f29e..23989f5452a7 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> @@ -642,6 +642,51 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
>>		slpc->boost_freq = slpc->rp0_freq;
>>  }
>>
>> +/**
>> + * intel_guc_slpc_override_gucrc_mode() - override GUCRC mode
>> + * @slpc: pointer to intel_guc_slpc.
>> + * @mode: new value of the mode.
>> + *
>> + * This function will override the GUCRC mode.
>> + *
>> + * Return: 0 on success, non-zero error code on failure.
>> + */
>> +int intel_guc_slpc_override_gucrc_mode(struct intel_guc_slpc *slpc, u32 mode)
>> +{
>> +	int ret;
>> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>> +	intel_wakeref_t wakeref;
>> +
>> +	if (mode >= SLPC_GUCRC_MODE_MAX)
>> +		return -EINVAL;
>> +
>> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> +
>> +	ret = slpc_set_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE, mode);
>> +	if (ret)
>> +		drm_err(&i915->drm,
>> +			"Override gucrc mode %d failed %d\n",
>> +			mode, ret);
>> +
>> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>
>nit but I think let's switch to with_intel_runtime_pm() since all other
>slpc functions use that.
>

will do
>> +
>> +	return ret;
>> +}
>> +
>> +int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc)
>> +{
>> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>> +	int ret = 0;
>> +
>> +	ret = slpc_unset_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE);
>
>Looks like slpc_unset_param() is not present so that needs to be added to
>the patch too, otherwise probably doesn't even compile.
>

yes, looks like a recent patch removed it. I will add it back here.

>> +	if (ret)
>> +		drm_err(&i915->drm,
>> +			"Unsetting gucrc mode failed %d\n",
>> +			ret);
>> +
>> +	return ret;
>> +}
>> +
>>  /*
>>   * intel_guc_slpc_enable() - Start SLPC
>>   * @slpc: pointer to intel_guc_slpc.
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
>> index 82a98f78f96c..ccf483730d9d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
>> @@ -42,5 +42,7 @@ int intel_guc_slpc_set_media_ratio_mode(struct intel_guc_slpc *slpc, u32 val);
>>  void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
>>  void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
>>  void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc);
>> +int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc);
>> +int intel_guc_slpc_override_gucrc_mode(struct intel_guc_slpc *slpc, u32 mode);
>>
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 132c2ce8b33b..ce1b6ad4d107 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -208,6 +208,7 @@
>>  #include "gt/intel_lrc.h"
>>  #include "gt/intel_lrc_reg.h"
>>  #include "gt/intel_ring.h"
>> +#include "gt/uc/intel_guc_slpc.h"
>>
>>  #include "i915_drv.h"
>>  #include "i915_file_private.h"
>> @@ -1651,6 +1652,16 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>
>>	free_oa_buffer(stream);
>>
>> +	/*
>> +	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
>> +	 */
>> +	if (intel_guc_slpc_is_used(&gt->uc.guc) &&
>> +	    intel_uc_uses_guc_rc(&gt->uc) &&
>> +	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>> +	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
>
>Do these steppings need to be tweaked, otherwise ok as is too.

Probably the G11 can be dropped, but I would leave it as is.

Thanks,
Umesh

