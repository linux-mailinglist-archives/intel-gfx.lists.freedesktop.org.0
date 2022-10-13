Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFEF5FE37C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 22:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708F010E38A;
	Thu, 13 Oct 2022 20:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A13010E38A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 20:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665694098; x=1697230098;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QRzjIwGXVQwzfzTwRFyW1wFscav+uGwkD+JYcw9O9+E=;
 b=KrGUmb4riMS54y8vS8INcNPW6RH/dNeiuZkqnREBmBcQt+/F+egKIuqJ
 ZfKdvydQLrkndgqaAGB36CMvv13XeD8uIAItixah4eMSfVa9b3Vwh+pkc
 uteOu5pgGy3yKFY0NqQS6CmVMRXOd7FFC8u/cYKwH98hGwezd4TR2UJKv
 EBRNPGTospMogbm6N8O15wpnQRXlUKtTVgWyZv0xgzu54T8npIf5ki0f/
 bpqwlym3aYaKZAutvLDjG9PrfLgF6+x1bqdJQUDbm89Eqft2knWHPZu8H
 aVnlJEFb6gzM10Ct5sFj9kmuNw90MIow+sUmPMBAeqOug1DFbs/CLttI6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="331710330"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="331710330"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 13:48:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="769775349"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="769775349"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2022 13:48:17 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 13:48:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 13:48:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 13:48:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 13:48:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPapgEul4FcjmCc4t2LKQXKLHz5FDU1+OoMyU5pUsURXOVvTKr9sS0nyM+bgVzGX9RdFBJRoOQ0ireFe44CN2jk5qrXNzx3vgQkO9pUSfWlbWJpEzzdjG/+DhXi3dt/2kBfNZzBwgZRGQcZkLrHhWvVO4Wj7yInfWh74g3DRjFacU2leQ8J27QsjonEywwNRTbk6IDDBK163V05jcewearlsk6tff/BebUjSyYxyQaEDxtouRA6OsdNi3FtGgtH65kpu527HWX/RMqMw6epcfWtE3YRSzUc8ld79VVryOzdCE+rmBe/qs1SQJLy0dpbxwIKew43p6vVBjnkDUNCh0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iarYBhwNwPQwIP/jMPGAP+kQMaEEH4NqugAO+1bS49k=;
 b=FeJ4/2nIKgDgW8CeNwFx8+Bl/fEernniY5bNCP5G0jjJR/R8lXXCh2rWtPxbZM+dg2MPqLoLeykkWNeTGaNA6qYTgo4Gq6q5eSdO9uXJfFrxPJWShu1Aav0gqDoWAkSnSSXsoQOQqvVsJ1sn5Fd5dTYHU3GA1qY9qZ6nRFJEe0iKbmieMkoX92GuhwMH8uNXVINkDniiz+IvvTzX/E2tC4pyKA9L2jkC5SKoolAks2TbuQzedzAYfZ3qMa/Wy3Qw4gXJSwqw5QDtGxuRtMXU2bGsQBLO16iu7SZt8miite6RZMlvbaFXXQSSUyvyt+jRErx6TC6hH+/v1XxqBMArIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SA2PR11MB4954.namprd11.prod.outlook.com (2603:10b6:806:11b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 20:48:13 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%4]) with mapi id 15.20.5723.022; Thu, 13 Oct 2022
 20:48:14 +0000
Message-ID: <a43a158e-8772-729d-2e2f-bcc8dba1a8d0@intel.com>
Date: Thu, 13 Oct 2022 13:48:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-2-alan.previn.teres.alexis@intel.com>
Content-Language: en-US
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221006043834.606220-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0117.namprd05.prod.outlook.com
 (2603:10b6:a03:334::32) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|SA2PR11MB4954:EE_
X-MS-Office365-Filtering-Correlation-Id: fc4abb44-24a7-44e3-31bf-08daad5c3f90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xU0A2xFrbVSGkIdyUAzqCYWmF0JC+jjEjDzlQSmOlQxCB+3B2PgC6kePGeYPFbbcS7AkSmcrgt/CEa9VfMD6LAM6tG1h92H6E4bIsZSSsRpk7h4ess/+0KcFLucNJdEd3bX0q1p3PwmfMZ4gVvA+hMxpQxh8U/IO2Z26TSO/5bEsQjmjzCx/U6Nlmv+NdRwOP2LYuE5azVpYUy45X3UDfU908zYdfTMT1AK3gYN/jKYlQezDIykXsppczwMfAHlQALOH/ilkSPr0l4DfiVKCAELsZXaeD0zqeHNuv8NJ/92bcbpCw7GMiS4nMBXhp29tA+Gi2fb9QO5TxH3CACRP2xlPDrPdHM5T5EGzJoamSxbOBXJkM//lTLysYkLJaylTWCxNC05i/XDmcFj07gHUX7KowPSby9JeFcef+j9/4eESoy/OG+rhg4UQqWizvn4TV5c4xhb4fNKZw/xTA2Kw9BP0lRW+Yko/NlvclgS6RNYN9FdiE249U4N3Bht7BmHeO2f4ipEeP/ZefY/G1u0DtHMnBs2d+VX01OQTMqqogfdRI32S270/7SDvz/2R/qlneYyvUXAl8dM+5O152S90IwtdyEO8W5Tlw5cn29rDjordkN9VKAUiTB7nIxPFvGeLf7JN8GkFDWZIGBzq8AHrwLWWhgQQMmZ3YRmLpUs7s/CMf6I1/wYKjaf4CqzahRGAMVKd31VrCgCBwAKsKuO2iwIqVQZo6XSnuEvzqzV8pvuSenFUaT0jeCzWpUDvXE1Bs7K2Uwg/FzTn9T/EhQoPJnLBatr0xOqbnyLTujWZmbo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(478600001)(6486002)(38100700002)(41300700001)(86362001)(83380400001)(36756003)(31696002)(66476007)(66556008)(66946007)(8676002)(6506007)(26005)(53546011)(316002)(31686004)(186003)(2616005)(2906002)(6512007)(6666004)(82960400001)(8936002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rmc3UGZMQmI2QzhVR2dKbG93V2JWVnVhZmZYY1VjWkF4WWFxTkFib3hqNXpn?=
 =?utf-8?B?NVJmM0NPSzlwdk0zNDh0b0RZaFRZYmwwWHJzdEw2T3Z2ZEI3b2l0a05zNVZo?=
 =?utf-8?B?NlZuSDdLdUY0aHkwdU4xd25SZ0MyVW55U0RnZUl1OUhCRUowbXFSSEJSaHhl?=
 =?utf-8?B?OGFQdkE5L2V5elV2ZUVKRHZ3Zzc4bFozRDd5S2x3UjE5bHJMR1kxNldsWDVS?=
 =?utf-8?B?RzhnS1Bka1cxT2pHYzBlOTAzL2M4Rmp1bXZIVGNyQXUycWlIVFB0L1RKQ3VP?=
 =?utf-8?B?OU5HM29iUnZwaEU1bzNrMXZlc2xKR0c4YzZMOXhSRlY0enBBcWtldkszb2ow?=
 =?utf-8?B?QU5Vc3EzMUU3eG5TYlRsaXdadUhJYkRBNUFrY0Qxd3p3Tzl3TDA4akJhZDZI?=
 =?utf-8?B?NHFsWUszY3NMdWxnWXBZNVBCU1hYNlIvUVh6dzUxRUV4eSswZTVlbHB6Vkl0?=
 =?utf-8?B?S3dTSWpnb0pvMWxMbkhVTDBOTDRiRmU1M1FEZldhcU9VdE4wQVhSd2NqYWJt?=
 =?utf-8?B?MlF1WFdpbkpBN09WOFJhV0FnM1hEbzJRUVhNME5FNFpwVnFEZWlycUltYzFV?=
 =?utf-8?B?a01oQW9FYzBMczNqTmVQZXh0V1B3WWE0NkxGUFdBQVJwYThycTZ6bTBsTkFn?=
 =?utf-8?B?T2NIYkR3Y1dlUXpkclNYNTA0UUxiaHlwdXNRcGNHQy9CQmgzY1gxeTZCYWp0?=
 =?utf-8?B?aDJwcWFicW45ODBCOFl6RXhlemhDV2ZJU2ZzMml0ZStYaXQ4b3dsakFRUzRV?=
 =?utf-8?B?a09hdkQ5bmRCY3pWakpjSzZpVGVOUE1KZ0RmclpMZDRkVXMrdUdoY08xVkM5?=
 =?utf-8?B?ZjBCQkpOcFpUMzRkVmxLN3duSS9mOWJkemZ4K1ZqWmZNeGtVMDJwekNuZDZ4?=
 =?utf-8?B?a05jQlFxUDc5SGFqdlFvdG5PQ3BTd3NTWnZodjZPSncxakp3eDNkY1k3RUxy?=
 =?utf-8?B?b3ZJaXExT1FoM3VrbTgxR3pza2tORXovTnFwWFJDdXNvVmVvSnNvdGs4YlVt?=
 =?utf-8?B?ODBIeWRZM1dkS2l2aGZrSTlJUmNHdGdtbnhvak9hY3ZhWEFaVktRZTV1UlAy?=
 =?utf-8?B?Q285amt6UFFMeGlGMCtDOElVa2puZFpBUFNoT2N3MVJnVjFBQ1UyTURMQmQ5?=
 =?utf-8?B?VTdPT05Ob1E3VFFWRU1QVWhzRDZzVnl0dERxMVJFVVh2bDdCZTM2eTlTTm1P?=
 =?utf-8?B?TGhlVFd1aGRaZGFsTC9XMm9Pc1dDMXRrMGMyZXJ6blQ4VWVnTHNrM2VyK1pI?=
 =?utf-8?B?KzdJbXkyc1E5WDZoK2Nmdmd0RURLSmJic3hsWU9Bc3VaRUpNbk1WcTc5U0o0?=
 =?utf-8?B?eHNlM1F2Mm9xZ1lDMnpsU0VERGhSclV6cUxRaGdQNHRzWlFicy9YcVViZGNJ?=
 =?utf-8?B?ZkJwTHR2bjVaclQrRU9PVmFGTlVqNHhOcnpPMW91YVNuKzBhdWZkcCs2RmM2?=
 =?utf-8?B?U1Bkd2FkdEFZWVN4RlVLaGZ4dVlEcWM4MGVIVTN6N0ZQYjVMVHVqRXUzbm5V?=
 =?utf-8?B?YmhSY3NtdUlBb3NaZVVMeVNUbUZoa2hYdXo4RE92WmdGZkpkaHV0SjJVRnpl?=
 =?utf-8?B?MkQxK0paWHR2RmhYQjQyeGVBQ2dRVWJyTlVpVXN0cS9yL2NQaXEySDROb2tu?=
 =?utf-8?B?YmpFVmpUWnZaNm1oSEhkS1lFZmtsU1pFbXhLeWNYdFpJVEpqUGxWd3ErNGhm?=
 =?utf-8?B?TGZkeUZTbmhIcFNPWnlYK1V4RjYxQ05ZMkI3Z3g5VkJ4aUN3NU5rbjI3Ty82?=
 =?utf-8?B?eG5nSlpvc2c2QkVaSnFwWURCQUJtSmpBWElBd1k1bk54aHBkMjZTS3dwdWpx?=
 =?utf-8?B?aTI3RnBINjFzN21PeDRESUYrOVVGM1lEQmZDWGtYNkwwbFdqUkFEMzdXTm1U?=
 =?utf-8?B?VGJHZGFSTHB6dnRvS0N3bWt2RUx6bkt1VU1Ldm93L3YyUUpKS3l5MTF3c3RF?=
 =?utf-8?B?UkJMRXVYeExMbEFReTEvM0lycnNjUlFFTUxLUUZyTVpWVHpIOFhVOWZyN0Mz?=
 =?utf-8?B?L0RpbXVQUjA0M0txOGprN2xPWVZXYVc3ZkVXdGxLYWFBbHR6aXRSM3lEbkU0?=
 =?utf-8?B?ODJPcXNDV1ludGplOUxyTE1YZ2tsT1pLYUVXWHpia2ZXR1djM3M0K2ZQbzJx?=
 =?utf-8?B?L0VZVlNIKzBNMUN3Q245NWVXU3lmNkpxZlM1QnZNUGtCeU9IRTlqVjI1V0x3?=
 =?utf-8?Q?KNODTgmCnXik2VO9knLW4Ik=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc4abb44-24a7-44e3-31bf-08daad5c3f90
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 20:48:14.3076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5Bi4piKXrzj23NvxM7qhZ9oGjCS6uXZDJXF0yyIKVlhRbSuNRum9+Bu6W8pE4cVUS4SvoSsw9RsXtJPTpwsiePRZuQbvSxvYn/rnQNuWTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4954
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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



On 10/5/2022 9:38 PM, Alan Previn wrote:
> In preparation for future MTL-PXP feature support, PXP control
> context should only valid on the correct gt tile. Depending on the
> device-info this mat not necessarily be the root GT tile and
> depends on which tile owns the VEBOX and KCR.
>
> PXP is still a global feature (despite the control-context being
> accessed via the owning GT structure) so let's also update HAS_PXP
> macro be called with the i915 handle instead of the gt handle.
> the correct gt-ptr access to grab the pxp handle.
>
> Update intel_pxp_init/fini aware of PXP-owning-GT to only initialize
> the PXP control-context of the correct GT structure.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c           |  4 ++++
>   drivers/gpu/drm/i915/gt/intel_gt_types.h     |  5 +++++
>   drivers/gpu/drm/i915/gt/intel_sa_media.c     |  4 ++++
>   drivers/gpu/drm/i915/i915_drv.h              |  6 +++---
>   drivers/gpu/drm/i915/i915_pci.c              |  1 +
>   drivers/gpu/drm/i915/intel_device_info.h     |  1 +
>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 22 +++++++++++++++++---
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>   8 files changed, 38 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index b367cfff48d5..e61f6c5ed440 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -850,6 +850,10 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
>   	gt->name = "Primary GT";
>   	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
>   
> +	/* device config determines which GT owns the global pxp-tee context */
> +	if (VDBOX_MASK(gt) && !INTEL_INFO(i915)->has_nonroot_pxpgt)
> +		gt->pxptee_iface_owner = true;
> +

I'm not convinced that we need dedicated has_nonroot_pxpgt and 
pxptee_iface_owner flags. MTL moves the GSC inside a GT and the owner of 
PXP is the GT where the GSC engine resides. So we could have a checker like:

bool intel_pxp_supported(struct intel_gt *gt)
{
         /* we only support HECI PXP from the root GT */
         if (HAS_HECI_PXP(gt->i915))
                 return gt_is_root(gt);

         return HAS_ENGINE(gt, GSC);
}

I'm aware that the GSC engine code is still not available, but we can 
special case for MTL for now and then replace it when the GSC code lands:

bool intel_pxp_supported(struct intel_gt *gt)
{
         /* we only support HECI PXP from the root GT */
         if (HAS_HECI_PXP(gt->i915))
                 return gt_is_root(gt);

         /* TODO: replace with GSC check */
         return IS_METEORLAKE(gt->i915) && !gt_is_root(gt);
}

Then we can use intel_pxp_supported(gt) instead of 
gt->pxptee_iface_owner and we can drop has_nonroot_pxpgt. Might also be 
worth merging this with HAS_PXP for a unified check, but that can come 
later.

Daniele

>   	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
>   	ret = intel_gt_tile_setup(gt, phys_addr);
>   	if (ret)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 30003d68fd51..fd554ec415cd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -279,6 +279,11 @@ struct intel_gt {
>   		u8 wb_index; /* Only used on HAS_L3_CCS_READ() platforms */
>   	} mocs;
>   
> +	/*
> +	 * In a multi-tile GPU, only one GT-tile can contain
> +	 * the single valid global pxp + tee context.
> +	 */
> +	bool pxptee_iface_owner;
>   	struct intel_pxp pxp;
>   
>   	/* gt/gtN sysfs */
> diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i915/gt/intel_sa_media.c
> index e8f3d18c12b8..038344b48760 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sa_media.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
> @@ -36,6 +36,10 @@ int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
>   	gt->uncore = uncore;
>   	gt->phys_addr = phys_addr;
>   
> +	/* On MTL, the standalone media owns the global PXP/TEE context. */
> +	if (HAS_PXP(gt) && gt->info.id == 1)
> +		gt->pxptee_iface_owner = true;
> +
>   	/*
>   	 * For current platforms we can assume there's only a single
>   	 * media GT and cache it for quick lookup.
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 90ed8e6db2fe..9fd0c065aa23 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -928,9 +928,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
>   
> -#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
> -			    INTEL_INFO(dev_priv)->has_pxp) && \
> -			    VDBOX_MASK(to_gt(dev_priv)))
> +#define HAS_PXP(gt)  (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
> +		      (INTEL_INFO((gt)->i915)->has_pxp) && \
> +		      VDBOX_MASK(gt))
>   
>   #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>   
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 38460a0bd7cb..6ee1cd6f1194 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1149,6 +1149,7 @@ static const struct intel_device_info mtl_info = {
>   	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
>   	.require_force_probe = 1,
> +	.has_nonroot_pxpgt = 1,
>   };
>   
>   #undef PLATFORM
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index bc87d3156b14..8508d3795593 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -167,6 +167,7 @@ enum intel_ppgtt_type {
>   	func(has_mslice_steering); \
>   	func(has_one_eu_per_fuse_bit); \
>   	func(has_pxp); \
> +	func(has_nonroot_pxpgt); \
>   	func(has_rc6); \
>   	func(has_rc6p); \
>   	func(has_rps); \
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 5efe61f67546..a18dfeca919b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -138,11 +138,22 @@ static void pxp_init_full(struct intel_pxp *pxp)
>   	destroy_vcs_context(pxp);
>   }
>   
> +static bool _gt_needs_teelink(struct intel_gt *gt)
> +{
> +	return intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc);
> +}
> +
>   void intel_pxp_init(struct intel_pxp *pxp)
>   {
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   
> -	/* we rely on the mei PXP module */
> +	/*
> +	 * In current platforms we only need a single pxp component but must reside
> +	 * within the owner gt.
> +	 */
> +	if (!gt->pxptee_iface_owner)
> +		return;
> +
>   	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>   		return;
>   
> @@ -150,14 +161,19 @@ void intel_pxp_init(struct intel_pxp *pxp)
>   	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>   	 * the full PXP session/object management and just init the tee channel.
>   	 */
> -	if (HAS_PXP(gt->i915))
> +	if (HAS_PXP(gt))
>   		pxp_init_full(pxp);
> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
> +	else if (_gt_needs_teelink(gt))
>   		intel_pxp_tee_component_init(pxp);
>   }
>   
>   void intel_pxp_fini(struct intel_pxp *pxp)
>   {
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +
> +	if (!gt->pxptee_iface_owner)
> +		return;
> +
>   	pxp->arb_is_valid = false;
>   
>   	intel_pxp_tee_component_fini(pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 4359e8be4101..7b37f061044d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
>   	if (!gt_root)
>   		return;
>   
> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
> +	if (!HAS_PXP((pxp_to_gt(pxp))))
>   		return;
>   
>   	root = debugfs_create_dir("pxp", gt_root);

