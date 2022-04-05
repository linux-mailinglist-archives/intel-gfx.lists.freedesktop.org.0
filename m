Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0F44F3D1C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 20:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C67610E62C;
	Tue,  5 Apr 2022 18:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7555B10E62C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 18:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649181902; x=1680717902;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=akE085O+SkN19WDodApldeF+ZA/UNiPJ7Q9ZGEOylvU=;
 b=Y8J5DkMU9bKjQs4U+xBLd5d5+rR+S+yYzaP9hv8kmp0mOTYdwSsGbQq8
 GQv7OzcwXCSF1BOzeEo8dMt3MDdsfmuBbbOcSBK5BJw60ZmZJGAZzEewF
 829/Px/ejI+GDmO1Mvlsd82P3poklgSXdla+tlC5YaaRfwOwAHwNMejPs
 OLbunB+aXMM3U6z3MTXv05lHVvOCjtJPXtEk4HhzlUXz7EMGpCA8r7HYB
 P3bDAXTRp+HgsiRxLhic2uiyJsHojoE7ctu0aSuTiDxHxLBDnMS5sI/Kl
 u+gtL0Y5BJlGDYJBRo1SfbbQM2jjdnEvqvrLj6cUo3s2vsfqBY1bKLg79 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="258412437"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="258412437"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="549163755"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 05 Apr 2022 11:05:01 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 11:05:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 11:05:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 11:05:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 11:05:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=izlKy1tY/SaAXx4eq3rLbOwseTLAcCFw0ShMK4guf+ay343UNByMfVPAzH1iKdgOIKxCS7YRN/Rf0VtWYWSySluKuP5pU9uxnHWNZoscw6vcVFxkKZuL98T5z5OXVn+azJx+A5JOjvbqU8NNMKldBrK8Tux+JmzUnV31mFmkUKb89EdNYj9gG16q8rJZZdAFYv0kIpQJenB7FqdRvzUkd7G/oJSqjytT62yGyHs8E1q78Pv0g7XTmybMcE6RhgrC1OWH/01ckIOpO7h1/jGfrOsqd+naIKHIqO68HvGR6+zaKQcJ6dwugT1QC5KwD4HGDt66zfGzm2kNg0QKrzw/sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LY6wmChWW8p+H9byvu5D594AwuJhI7qOurNWmIBGSnE=;
 b=BlihTdt8B66a0CvOFHaT53obBjClzICP8jhMmdNfXIj8RAVk0ivrJcmRXb8VnlelM5BsW/01CvdmaYPTfI0gdNLzl3vggB6Fkz0C8LUXWiSHo22H+hPMN53VmiBWs4CVOKiSMv05fhqzewXdkDczbkqdpo2vHxlfIGeIxX93kkdkrf7eDWevH0wiz/ZJPb2TR9DeL7u2Nzph53gxi+33f2wrZGDjyxjKJvDicJb/G3aLB8AiYeuNyN56Qhuyq+Q4HQc4fJQRxhSd0RuNdDNQbe+pIk4fwMkr5opLUuEPm8a0C8YI3YhCIj2W+I/WZv0CbkmuC64EnENr6L113n/pMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by DM6PR11MB3787.namprd11.prod.outlook.com (2603:10b6:5:143::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 18:04:58 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2%4]) with mapi id 15.20.5123.031; Tue, 5 Apr 2022
 18:04:57 +0000
Message-ID: <fcf7384d-7ee4-a261-9dd8-8ff0698c3365@intel.com>
Date: Tue, 5 Apr 2022 11:04:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220331204343.1256150-1-casey.g.bowman@intel.com>
 <20220331204343.1256150-2-casey.g.bowman@intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <20220331204343.1256150-2-casey.g.bowman@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0361.namprd04.prod.outlook.com
 (2603:10b6:303:81::6) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 364d810b-e8f2-42e8-2dca-08da172ecb7b
X-MS-TrafficTypeDiagnostic: DM6PR11MB3787:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB37878E8E2E4848B269B26E71DDE49@DM6PR11MB3787.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xa3txHCEnYMhTvfnR6mrg/vr1A5F+UrvNIRsgnwXFqpz9Q5bOvQ+HMIlm5BJtQq7urgWlSwuGXRJoyTQG3Lgx5c+ljy2ic8MBLwNKG7ZXQ8BRugGdUbx1v5H1H/1oOkExaVkhggsQB5m42eZ+j3Z40GqZM59wK59ysu+2+wb2xHOXiT+RXs6pv7W6y2mEeS19fQS2TGYMMyWJKGM0+W6DG1lGp0AjqbgjHEDoOe2uj5b4DAnL9xUiPB/C202ed9NpPy9dU/7y2dxBaJSjfPHhXYohnpZnZCjsdst3JVI9bxoVI+J+0qjEUhPdmFwqXmNLGcHocsr9Mi6byWgY/WffXPZ3aSy9uQaC874M+gmezlzNdtzZY58J19sKX9lEN8ENwyauEAIXsC+pdMs1Gjjx7cupCuQV9D76RGum8bhpyPl/+b3wyFOdyKobHcmFqT87gRlvg20YxY+waTXKOHpHGC6yZJ1zQU9Kc8GTaSpHlSIyIFYl6T58SrZAxvohHk2XE+4MyJe8imaTXGa4JEy2HVc1GIld60tdS1eBZQwbySK48I0nqOpIcMOskrdXNu9ZtvVpcTWEHDDmgwj585ObrkLdiwdwI+54OY8cBI3gZqfgncG2DrCgCleLHEKwx3tTHGSmJ3mBV2KH13e1pZBxngdDJlivEG7ibhsxEuMK8tDROQbmDH9ie56KSx9BZ59cpTV/nFG5ksg8VlJifon+oYnlUij0H3584072MCeeSI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31696002)(6506007)(82960400001)(66476007)(66946007)(4326008)(508600001)(8676002)(53546011)(6512007)(6666004)(2906002)(6486002)(66556008)(86362001)(8936002)(38100700002)(26005)(5660300002)(2616005)(316002)(6916009)(31686004)(186003)(36756003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2JHMk8vcmQxbWZna1JMOTlHd0VQNG9LS05GVUhvOWpFMWlFWTVXd1A2eExx?=
 =?utf-8?B?azh3ZWdoY0FUVENFSXlMWWt6Q1M1cEt6QUlaVGdveWNLUjZrUERpb3VKT2V1?=
 =?utf-8?B?KzdhQnlpV3A1QSsxV2U5Qm1uVE1DT2c2K3dzOGhSLzVlSlZnNW5xVEdHcmty?=
 =?utf-8?B?TmZKZ3ZOdWtlTUVURmY4Z0VZbzY0Tzc4a2N1cStlUkc5WGhBUEJlUXZhdlBa?=
 =?utf-8?B?NDI1YzQyWDUxc28yRGRReldrak03anIxQnZ3eldUZ2VHaVdoVHA2a21hczU4?=
 =?utf-8?B?T0ZMWjRERjA0ZEN1enBTTVpiQlB4R0dzbmJubWk1a3JCRDZUV3RrMEcrMnpK?=
 =?utf-8?B?RXU4cEhhV0NibVBvUGppYWRRcVF6OVA1eFRqZ3dYd3NQZFZra0JmMzJ6c3Av?=
 =?utf-8?B?NTBkRHhoTVhzV0FEVER0MmNVT1dHMEpsQXkyYnJUcjNUQzV5T0RiTUhVR09V?=
 =?utf-8?B?TzVYQTdRTldyYU92U2VrTDRDYmRNRU9PMDEzMFkwMSsvbmxTVzR1WitpSC9q?=
 =?utf-8?B?M05rMEZaa0gxVTA4RTFmTWFycFl3ZE80ZWJCazhuYm5sVFBjR2s4N0FEMDVo?=
 =?utf-8?B?UUtsMGk5bGozVmdUczlwaS9Fcno5ZldzSkduSEIzQ0dLT1h1dm1TTkdCL0hk?=
 =?utf-8?B?M01iTXRpOCtpemxuY09LMFM3VTFFV0JURmd0OG1MRGV3bitFaWkzL0hlVm5i?=
 =?utf-8?B?VkZ2am5TRU5jM3VzTEYwU3hnVFoxVmNXT3JGSzRNd0luVHQ4M0xNK2cyOXF6?=
 =?utf-8?B?Y1MycTk5VWhCMjQ1ZTFab3JpdFlVK3ZzMCsrVDhvU3U3Q0xnK2ZMTWlCaVkw?=
 =?utf-8?B?cUNRT2VobTFiV2h3WnpyL3NiOVlyTWw2NlM4djlyVm1LSVpucy9KeDhqWWRL?=
 =?utf-8?B?bW14ekx5NDRrTHNLbDY0Mk9XclBuUFJkd3p1cU9VMlROUTZyWVRUc2V0QVFQ?=
 =?utf-8?B?VnZTWFZCM045ZjNyRkJRa2hOYkl5MW9LL1hNenkrNk9pK0FKcm0rUkR3N1hs?=
 =?utf-8?B?cXJ3R3NCRGw5QVQrVjNhdmVTbHZRbmRZeUNMZjRUcTJhZVAvT1MwY3dEOGk3?=
 =?utf-8?B?L0hzWkloOHV3M0pISllubjJ6aTRrZ1EreDR4VXlqVWxpZE9Sc0lDZmJtYTdu?=
 =?utf-8?B?QXVNejdROFUzWTV3QW9QalZ1UVExd2o4RGpBbGgvMFVaQWxTc1lTWUdoR1JZ?=
 =?utf-8?B?dlFIU0xMT2gvUndUOU1jS2pQa1E5WjNNVlgzMTBrSFNpQ01vOUVGVG93WXlC?=
 =?utf-8?B?TDd4NGw1cnZFU1VaencvbmkrZHN4Rmc5U2lETnR6bFNWWlcyODU0TzVjMnhN?=
 =?utf-8?B?NzRXUk93RlJpeXZEMUl4eGxaTXdJTmJ0S1VpZUx0WWNqUkxRQmRsV2FCUllH?=
 =?utf-8?B?clY5WTFVRngyMTE4SjRJN255aUVMbVFBcnk0eEo2WEZFemZIUUdWQWZxZERu?=
 =?utf-8?B?RFdUdVlhWE9uallRd3lGbDJ4dHVaL3VoL2ZxMkhyNTJPNlRxVlNIbVp1VlNn?=
 =?utf-8?B?UGZUeFFxT0o2bkdSYzhZZ0d3UXprNVZWSU5xTWhSRnFlcHRydWxlODl2ZXp2?=
 =?utf-8?B?eGlSVGVXT2pGanl2WDZJR3N1SXZIOEtrS2Z3OEpHSng1Y295ZHVqUXFvSGV2?=
 =?utf-8?B?OHczTjJ6U2tqdkNxTTZDckRZZHpDbnkxK3JPOEVucFJKZkJMY2poaWhVVnVt?=
 =?utf-8?B?ZDJ4bGJZUkJLcEZPWm5VcS9wNUNnYXVuSm81dU5kL3FQcnN6YXk2MlFvdkFi?=
 =?utf-8?B?TkgxWmRNc2hKd2Jxb2UzWEc2and0VHh1eWlXUENBYnhSZTNBRit2RUd1dTM5?=
 =?utf-8?B?NGRDeVhxUE1hZlNWMWx0N09SNlZSd0ozeVc3U2FlMm5FMzdwQjdiQUdDU0xY?=
 =?utf-8?B?akM0SGRJc0FqZTJwMHZaSXlrTHBxZEV6Z0RlNzM1Q0NRSTcyRzMrNDZ6Uktr?=
 =?utf-8?B?VGUxQzJQUGpLYWZXQWxscHJJZm93cnJMSkVaU1lEUy9CdkRtcmlYdVB3cFl0?=
 =?utf-8?B?RXZYMUNDSG5VdDZ2NVF0c3NPbSszanJBU3F1b0hKNUQ2ZklHemVZVDhLa3Fw?=
 =?utf-8?B?K0dpWmhEOXVaV09oYTkwc1RQRyt1V2xYWFN4aVRLelZiNGVDWk5XemRFQ1Jh?=
 =?utf-8?B?aEQ5VzdkUmIybVBMUFBBc294Ly9qOEtFc2dRRDBtS3NqV2ZrcC9obk9NVDVE?=
 =?utf-8?B?RCs2Y0NwQ2kwUFJmZlN5Q2hwT2t2emlnV0luMHlDQUk2UE1JM09wWU4rOWJk?=
 =?utf-8?B?MGFPN2xQSmFiNmZsSHYzV0dZVWhWTUhTa3M2ekpvQUl3SjBmbUVTK2xHeGJz?=
 =?utf-8?B?T1BDREJBQVl1WWFuNVlTdnB6aTJlMUUvTUd2Q081dUJJaCtJNzViSGdqNXBV?=
 =?utf-8?Q?YrG0tPetjy0WXL9s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 364d810b-e8f2-42e8-2dca-08da172ecb7b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2022 18:04:57.8940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /kgHfKalCAXBJOFylJczYxp0iYuNPOuN79hbHIemEQC2BWEaI5zSseCGFkfkRLjvPXUDtirMxqldCkzStrBxDYPEcbnrMxWuXKCEoGFBbGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3787
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 1/1] Split i915_run_as_guest into x86 and
 non-x86
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
Cc: lucas.demarchi@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

@Jani/Lucas, any other thoughts here?

Regards,
Casey

On 3/31/22 13:43, Casey Bowman wrote:
> Splitting i915_run_as_guest into a more arch-friendly function
> as non-x86 builds do not support this functionality.
>
> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index b2d89c43f24d..ea7648e3aa0e 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -32,7 +32,10 @@
>   #include <linux/types.h>
>   #include <linux/workqueue.h>
>   #include <linux/sched/clock.h>
> +
> +#ifdef CONFIG_X86
>   #include <asm/hypervisor.h>
> +#endif
>   
>   struct drm_i915_private;
>   struct timer_list;
> @@ -428,7 +431,12 @@ static inline bool timer_expired(const struct timer_list *t)
>   
>   static inline bool i915_run_as_guest(void)
>   {
> +#if IS_ENABLED(CONFIG_X86)
>   	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +#else
> +	/* Not supported yet */
> +	return false;
> +#endif
>   }
>   
>   bool i915_vtd_active(struct drm_i915_private *i915);

