Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2445F52332C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 14:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B36810E1D3;
	Wed, 11 May 2022 12:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9069610E1D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 12:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652272486; x=1683808486;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+BrlZtSXxOB2kyt89a/apEaBRmNjRKDkFIR2XzPckpk=;
 b=fwfD6exUsE5B9Q5pYR2l0bJvl1i9HdktQ4yKzAOYn0lZVmKBVrcC6AVu
 QVI942u+LY2p/VW2U54fAdx/+L+JI55VwbVMffTh4EG45lywm1m7Mzww6
 UImxrTUiKYzpAj58cw3knTgR/4taAu5uL7138gWyOnpKAFhV4PKixaBru
 904pVoP2l27Ew+53YoPdrFSqA98XErQqDDb5qDEzRDpibKNgp+Ld12kdB
 wvIAqC9rVN5gIxxCKEAoVq7Q5uQzZ6hfjgEYz6bDp5c+q8+Tdtp/RGp7S
 Ovph7009jSbjtw2Pp7dUfvZwrNJPmDFBU+Ak9ykUkDjQsb1as36xGiw/t g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="269352496"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="269352496"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 05:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="711463306"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 11 May 2022 05:34:45 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 05:34:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 05:34:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 11 May 2022 05:34:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 11 May 2022 05:34:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fcu32y7mV7W4I+3ZB0q6vsXy386vrmbPF06lJA75Mb3k9TFOuNHcArPoLdFV50DaLuEoMlMLkAaDnXVB/NPt4BtFKUvULimJ0o8nUqWwyQhnMK7OaUQV5yOWmmNkTcR0EIj/6JkJpETKb84Ub5vXBi0t1qxW2csGpTzJqdnSW6KtGPQtw9z5qUWN0+bh+G5CfVWjzLpI2evHkGjuzbYx2R1JB9RYfSEIUvUNgoDBgiF02QsgeMXJ7jVBHvTQAFSFySYdqDZ8blNLQOl6lD8uWzAlBFLvNqven/tCdK5iPJ778iTj6fu8o03obrAT1/QzG+hDXU45xxCN4dakE3Wr3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Y4kHXPiDzQJBOXi/IZBEbS2+ayENzhrFJnRq6LWR6c=;
 b=aQ1T5P/isWq0DyPxq9uh46iRgO7LydieCig0ZgEW6m3lBbtLbly9K3SIysj7dsFHSy3XuLvwhpQZAjddLLGEC2bSXqvC8BRKHYvZ8t4uXywuu0x8JWYjXAQx7+9Cguo/x/r1zBSwHnLK+1iNqz3XuunJSA1L4Me3/KUba+HlkSxjcVI/DoAbu1ydckIpSkbCepifAdhFpU0yHyhc4oieiEM66mDYKgSli6T/kRNn+hvdZ/FqY0fLqdtixT1QmY0t67thLQLGNH+/PDwNMSJ94VTXiTJjXOe2U4SLUrrhenVjC43Keu6c4pE71b5T5oky8bOYgjpYfZa1ncbaARDksA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH7PR11MB6474.namprd11.prod.outlook.com (2603:10b6:510:1f2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Wed, 11 May
 2022 12:34:41 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 12:34:41 +0000
Message-ID: <2c1189f7-82a9-aa3c-1fa8-6f706a115c92@intel.com>
Date: Wed, 11 May 2022 14:34:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20220511102509.19927-1-nirmoy.das@intel.com>
 <CAM0jSHNkp6M2Tp+8zuiGQQZp6nMhxyy1EPoKNbrnFpqJ2jpByg@mail.gmail.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <CAM0jSHNkp6M2Tp+8zuiGQQZp6nMhxyy1EPoKNbrnFpqJ2jpByg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM7PR02CA0018.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::28) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1cfe716-9dd2-43bf-9219-08da334a9ed1
X-MS-TrafficTypeDiagnostic: PH7PR11MB6474:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <PH7PR11MB64744EABCAC155196631932F99C89@PH7PR11MB6474.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FoE4y6WfjTC7fyT6A0aTyColXxkvf2biJOTEQzGzj3ccSjQo5FEKWjlRXBozkRwINWvYfkt+nnvRWgLpxkAfXNDVJSbkK75d4UvSA5KkxZtG0YEI9LY40/ozbzG1U366973ti04uQsXGinOShjgs7oG0korJvkNk1/Bq0H3WX/fMWxbIjBlOrJIO4HBmvASlkYwgD5e+jmlVREmyJ5GmtalHUxWwlWzrGgYMspj/JlzXOo9jFaUAzF7XmwuLFaShMZqRapWp3UIVHEss0DVi0y15uFqPjsV1wyGsLDW4uSbNtdYBo3WjMpvN1h9LhY2wTiWpsZBl78JOKkVU32zJm1W7eo9SLAwFmX2nWV4gKWtWu5v22BybxndHsyXQ9BmyrowmpF0iztxWGiS/apsamTCaTqcTzEmBqA7rB3biy1OLSUxwp6sGV57ECtKeN4/bnxhQoiEUTmoD1sCU47KYzrVWsVYCFDgHUKyNJ+aPCgLWIBWKk38vCrcbsh97rp9NbdziQoBPvputKM9dRn9PI4Ub5Qt8Yapaq4Xizr65ey/Vk0oATtkJlW4uC11cW9w5R0MoTCxhDwqPdXhig5d8VU4U0vR/sdV7mRrjCqp5dGXflptMQizbO7XMZvDCtpuzQ7BX1GL6fjsihOx/rQ6ATCpfOTwl1DHmAFm03MwXRIqVhdq2iTPx5qoBzfSbhDGkr4HqauEQdIpteRJXIUqICTSNhFRUl5LksdkwTUbZ2sQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(54906003)(6916009)(6506007)(83380400001)(36756003)(53546011)(26005)(6512007)(6486002)(31686004)(316002)(6666004)(508600001)(2616005)(186003)(82960400001)(4326008)(107886003)(5660300002)(66476007)(8676002)(66556008)(2906002)(86362001)(8936002)(31696002)(38100700002)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1Vvd2o2ZlRhVmJEcUI5WGllOFM5Y3RFaXlwVFVIdm1Dd0RBTDlDM3dxZThr?=
 =?utf-8?B?MkRVYUdUaU0zZW5RZVlKQnZMbU5IbjJvc3MreUxlR1U3QkZjUVYwSFhwUkhn?=
 =?utf-8?B?MFozOXJ4Z0FKaVQyN2dNVWVxSC9OMzBkdWxZSlNSN0thTWdIaS8vb2g2c211?=
 =?utf-8?B?Yk9tNGVMZnNmd3VZbjBGbEEwWDFvUTB3bVRoeXQ1QVRwbzdXTm5lQktPbmRt?=
 =?utf-8?B?VllOUzVSSFJ0SVo3VmVhTnYrTU1xWHl6a0ZMNkw3VE9FUzZLbjZPU3VMVjlI?=
 =?utf-8?B?WGVHNTZrK3FSRCtLWmNvemRiNzVXV3p4T0laRWxGeEVNN1U0UVpEWk5JdjRS?=
 =?utf-8?B?U1BBR3NvZ3JGeGtXNlF1Vmo3eWxOOXoxZW9hMVc4a1lJRjFRZlNqZ2lrSGdT?=
 =?utf-8?B?eVd4c2d3Z0k4TlNIdkw5K1AvSk8ycFBVcjlIOENMYkJtRk5JQWFnOE9xOTIy?=
 =?utf-8?B?c1luMU9DNFp6MkxieWtOcjZoYi9OUDNWd3VzOHJYdkZaZkx5U0ZyanUzS29q?=
 =?utf-8?B?UER1cnAxZVBqTVc1Y05BUVBwOFNqcDZycVMyajBaOEV0RmZQTjd1RzMrNk53?=
 =?utf-8?B?R3VGcVF0UzJ2ZHRITHRZU0c4VStRMHZlMC8wTC9CSEJvaTFCOG5pMUtVeXJR?=
 =?utf-8?B?cWE1WDZIbEJnNUZPV1pNQlkyMEdreGZ2dUNtUFg4elQrYWVWSFFyU0ZFZUZ3?=
 =?utf-8?B?ZmFPMGtCL28xVzdYMWphckc5THcwUC9IY2hsL1hXTDJETkk4Q2d6d1FEVUwr?=
 =?utf-8?B?dFREbFNMR2NMMFljdXFkY0VFbEo4RFRaU0tUYzhuQmNxdmJFMjI3TStodVkw?=
 =?utf-8?B?cTZDMGRWdUxSSkI4eXRZS2FkNXFLZ1JtcjVBRHJyUzg3a0JYTi9xTUNxbGZS?=
 =?utf-8?B?aVdPYjVwa2hmek80RjBHNHh6dnczTjRHOUM1RHNqWlpaLzlXN3AvSGt0TVFm?=
 =?utf-8?B?YnhTamJzVkE2U0dGVVM0ekMwRW1BUGtTdjJkV3JiWmcvbDVOSGVpdjRGcGYw?=
 =?utf-8?B?THFiU2hpd0VUZVJmYjBnbm1uVXJkRFptTk5XdHh1dVhmcHAvNEZBYmFQUDMw?=
 =?utf-8?B?b09ZY0N5M0lnaDB3aGg2WU90dk5YTHVyUjRUMTZQRnVZbmkzR2tjbm43VHJK?=
 =?utf-8?B?Y1dWTHlUV3BDUjRhdFVNMWRpWWNiMmF2N1JJdjR6MHVoMU1nUHZkMUFBZ0NF?=
 =?utf-8?B?cktJU1R6L2NYc25PYzRNc2I3WklhTzVtSW9pVEdEU0h5SjQrNk5keXBPU1Mw?=
 =?utf-8?B?b0tlS3pmOUNpSlFiejBvMHBsN3hTa0t1S2UvT1Z3ZUY3dzhsWE1uNnZmNDV0?=
 =?utf-8?B?dmhCQ0hMb0Y5bU9ERTRQK1NhUDIzc1B1Y0d5S0d4SkdvZGdpY3Q3bUVlS1g4?=
 =?utf-8?B?YTlkN0Y4Vm9vTnZqWXc0R1NZUVEyREliSW9NM3JqZHBSSk1UV2Z4dGlGNHkx?=
 =?utf-8?B?cUhBTzljQTVVS0hodVBmeTFNL1ZFYkZIcGpzUllXQzdkQ1A3UFpXbkp5VDlM?=
 =?utf-8?B?UGxGOU5seDZTVThyZWQ5NjNFVVZGNHJ2VUVUNG1wSW14REpoUXd1aVlKWmJP?=
 =?utf-8?B?MG1lRHVPTGJkNGFZK2o2VUJ0RjBrSlJuSlR5dkpqeE5YUUYwSFRRUkhjZStU?=
 =?utf-8?B?dmhlcFRXQ1lmQWo4RWoxdXNaR1d5TlVSMmhVTWdvM2tZQTZwN2Q1dUY0dEd6?=
 =?utf-8?B?L0Rzd3d5Tlp1bnFLUDlzUEN4UU0rd0d4VCtTMFVCYTQ1WjZFRW5OSzdnZUpr?=
 =?utf-8?B?Zk56c3J0UWNuSXVIOVp4Y3orV2R3eXl6Q2YrSlRKK0VTVERNUW16bktsRHAv?=
 =?utf-8?B?RGR1MzduSDJxMndqTnFDaGdxL21KSzZQS3AvY1pwNUxsVURXQ3pGUm16K0I4?=
 =?utf-8?B?YmdZSmJVT2VzRFQ1UE5DNjVGdWpRbTM4VFJBS1VSQjQxT0ZEVnIwSHY3cnVi?=
 =?utf-8?B?cVhDWVowWjRLUXRDNnA3OGFSa0djUW43TEwvZVlpVDFmY3pRaG5RN29RSXNh?=
 =?utf-8?B?WnRmWDlFZ3VvajBYSDQyMDEwaStwRkpmbVBQUHRJRzRDMjdKWkpiakRiMGJn?=
 =?utf-8?B?L1htVm13bndCMStwNDk3VlVZSXZNSURCdW1LbVgrTE1OVEV5K2VrUVhtUEV4?=
 =?utf-8?B?ZUs4eWU0ZzU2WUNWN0JqbDhtSkFSSzdtSVRkczliSTVKYUVGZW5MWHhjbE9q?=
 =?utf-8?B?UjBVbHdmWjcvd2kyS2Z6ZVZtSWpoNG1uQjlBdGoyQnlTRitUYW5PQkY4dWRm?=
 =?utf-8?B?V3MxSVFJa3cvaWYvb1VjYlY5RXo0L0hGTDhqWnNuL1JUS3M0Uit1clV3UVBm?=
 =?utf-8?B?dEVkRWtPUUcyZ01QeEdSNEhoYkJGQWhSNFo2VWpwVGRsOUxHdFFYQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1cfe716-9dd2-43bf-9219-08da334a9ed1
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 12:34:41.3977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7dCZ8uG8LdFRC57sXCdtz9pGCHs7rbXNzYGx7QTGSaU2Iyc82STXyNxdI2cYf9+td4xc53IVWV+SWSVK9QR8eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6474
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: don't treat small BAR as an
 error with CSS
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/11/2022 1:31 PM, Matthew Auld wrote:
> On Wed, 11 May 2022 at 11:25, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> Determine lmem_size using ADDR_RANGE register so that module
>> load on platfrom with small bar with css  works.
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>> I once reserved a dg2 machine with small bar and module load failed on
>> it. I can't find that machine anymore hence sending this as RFC.
> AFAIK we currently don't want to load the driver on such dg2
> configurations, until we first have all the uapi bits landed.


Ok, sounds good.

>   The last
> patch in that series then turns this on, or at least that's what I
> have locally.
>
>>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 11 ++++++++++-
>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> index f5111c0a0060..a55eecac104e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> @@ -100,10 +100,19 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>>          if (!IS_DGFX(i915))
>>                  return ERR_PTR(-ENODEV);
>>
>> +       if (IS_DG1(uncore->i915)) {
>> +               lmem_size = pci_resource_len(pdev, 2);
> We can drop this, since this is set below also.
>
>> +       } else {
>> +               resource_size_t lmem_range;
>> +
>> +               lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
>> +               lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
>> +               lmem_size *= SZ_1G;
> We can move this under HAS_FLAT_CCS.
>
> I think we need another patch that then just gracefully returns
> -EINVAL if this is a small-bar configuration, along with maybe some
> helpful drm_err() or so, which can be removed once we properly support
> it?

I will resend with this suggestion.


>   Also it looks like we are returning ENODEV in some places here,
> which looks iffy.


We do

         io_start = pci_resource_start(pdev, 2);
         io_size = min(pci_resource_len(pdev, 2), lmem_size);
         if (!io_size)
                 return ERR_PTR(-ENODEV);

Is this return looks iffy?


Thanks,

Nirmoy

>
>> +       }
>> +
>>          if (HAS_FLAT_CCS(i915)) {
>>                  u64 tile_stolen, flat_ccs_base;
>>
>> -               lmem_size = pci_resource_len(pdev, 2);
>>                  flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
>>                  flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
>>
>> --
>> 2.35.1
>>
