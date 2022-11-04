Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E1061A140
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 20:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C7810E0CF;
	Fri,  4 Nov 2022 19:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E8C10E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 19:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667590825; x=1699126825;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=hq0XzzZVq/dI95+pw0rot/LGwtKauirVTyc3lKTjfYs=;
 b=PXwr/jf7ulee404ns9rlcnm86muJuMkFb3QSWvFv4+ucCrjIh/0fLYyU
 ZvU/7mgTK4iIwDRQ3cBpqWVUpifgwYricOP+/BJCtWteIwSgCjSBN91LL
 GF1ev6NbTFBYpxj2C8IQQQ86hb399SBATRDIK2VARRTLIoKvGSFB44SAm
 6rw8AF2HoOtnrU5Jpm9viKz1uB082Adi6KTU6G71SONcgQeqUKdo3isCl
 xMvJSUW5H0X32i4QSeqDoBRgjot7B3wyUvppV5x0qY0P6/vGpoW7+RRbU
 59cjKTV4CUe8p0wi9ISMVHYDMSh4L6Zc47pR7TDkZyWuUxTkQN3qBKPu5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="290444803"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; 
 d="scan'208,217";a="290444803"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 12:40:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="964460963"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; 
 d="scan'208,217";a="964460963"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 04 Nov 2022 12:40:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 12:40:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 12:40:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 12:40:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 12:40:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XyU1Aqx8s7l6Qyj2bA9m6n+7XIor5GJL1MB0oNLRffulu8EXsEncWnhZnA+XbcCf300Pqg1Kp/oaYgak5lAlsZ2GOUDeBJuKwJlMELczPfTqNWznQrGe0NBNW9bEY+3Xdajamj4RSnLDYgvwAnZOwPHMXTopiKalTr2+19n+pyPV1l59sYBC56a6DF2Rptfe66lVQGBSqf1g9J8uWfQw/3+tqNj/VoHuLNx5yHusgJUAzlFmazht6InpVewhyw+1/W3bepczKy7yshYoZ6Ny+OevRuO81D0/KxznlC+ko90EGP+Ldy1no4mSgNs1ALUAC5PEPp7GERw+ieMqLDLVYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LOFDR9UJeDQT5imFXePVFFS5gcgIAGs8G2TT0Kli2iw=;
 b=PggBkCbgfzNDgUWGy+PQwDCuOs7qIVTC6iwiwxPGhInptuOQYMWwGoL0eJTw6SQfOtWJfBT7pGqLj8hwrzXkROOHFOL+A8LIv/NWNgR+lRKSv23O6jaZMZvZVT3heeIYkDRm0N19PLZPWyaKeFVwYrUlwX+9NJ2rg/0wlFJtSW378ikIVoT+aArcqh589ssXjOrrbZU/VQPB7QjlWKTacNv0BDr7wKZh7C8ACtahhLpzwxEL3KIFdpxqlrOp+B0anRApiglA45RYlQDTE9FEcdzzjIy97Ahpuw0Y4DfhFSIvkNcNiRtao+RyxWPWyeNYxzwA/w4ZJICcy0K0mZXw4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Fri, 4 Nov
 2022 19:40:17 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 19:40:17 +0000
Content-Type: multipart/alternative;
 boundary="------------WsvA55OigPik04yQf1qvdXBd"
Message-ID: <07adb660-c385-a4b5-421e-397d97a30f40@intel.com>
Date: Fri, 4 Nov 2022 12:40:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20221102192109.2492625-1-John.C.Harrison@Intel.com>
 <166745073779.9191.16318346398015387444@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166745073779.9191.16318346398015387444@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0099.namprd05.prod.outlook.com
 (2603:10b6:a03:334::14) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB6545:EE_
X-MS-Office365-Filtering-Correlation-Id: 090aa916-1de8-41ec-fd5e-08dabe9c664d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZgNjOrUfn6tXsdczwFBo8joJZ7KXDRblgH0YdiBv94lrMMuQ18oPD03ko9QREWIX9liOPvVTU/In1m6Cz7BHS1mkd5o9Vq7dSxKAFBK7pIUfh3GnMr2o8bgtJfKiJjXU4dDv1B5bU8t8xrJxZ3uUj2OGvsaqDmvNncb2NHyacijhTa/F/s4+P4raBwj5IxEk3Yq1tyygyhul2c4KM5PSPdLdeo+KheV0Ib7O2dxF9dMwQBMShjrDisC+x/S2UGDmg+U4Sa0Gl/TDRgUw0iu1CyWeml4UgEUTa7P+ExLXORd5kr3vew8aPf0FiSOmn4e4jReOq+tabKVHySGW5WKjF2ifLGpiZ9st28+qZwtqJIXzW2KnaKB47e+2LkRTM9rPa+036g0nNAHvYzTIgPqsxp7HorQYSqB80kjY/GbL+06SQChZP10n7k8D+C4078vQ1VNHKjXqMvYC5jpve8qnU/2xfwAy3z6ghKC0NJeLDZHhhUETHIDbWRueVufgQ1b8bFxOqKT4m2ssggXFxL3mBkC7b1yqMfKW839Zt0sE2120C0crbHUoI5iy2cxQt0f+griRBn5AUoe/lnY3H4prHKhcvkD2DBvI9vWHweMaWGLxMddOXzvKLAsHR11s2eGHnvzRIFXqjSN/151k+yAsWYJklT2XoyKhHirnjLCNV6P8cyT1SlKg3saRInZv2U2vneYxcvG6s/kpqO+1Gyi8qcMRK8hWmHPd0mcSCbTdznBTvVpl6UUkTteeZt8Z8ZXRTjDfjKt/SkWToCSuhehKoyDPrr/OdIsopcgfq+Xk1Qh8ndyNO6d5xAWx36icdaJbd567Zx274dqlkjZ7jksor2fCpfMIRJRDi6fC0izphvc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(376002)(346002)(39860400002)(451199015)(66946007)(316002)(38100700002)(82960400001)(166002)(186003)(31686004)(83380400001)(41300700001)(53546011)(2616005)(26005)(6512007)(6506007)(66476007)(33964004)(478600001)(6666004)(36756003)(6916009)(966005)(40265005)(6486002)(86362001)(8936002)(5660300002)(31696002)(66556008)(30864003)(21615005)(2906002)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akhHTWRGbjljMGVSczE1OWo4MG9iVGFEa0FreFRXY2s1QnUyNU44dFhTa3Qv?=
 =?utf-8?B?OEtYS1lXMlY3K0ZKaWxMekdLR3BjZ0lDM3E3Zzg1OU5SSFFmdVh1MGdUUCtu?=
 =?utf-8?B?c2g5NFFsWi80ZjB5bDJjaDg3MVMreXhSQzhrUkVIOW1Qand6VXB2ZUFnb0Fn?=
 =?utf-8?B?UG5OcmgxTzRFVHE5WFgzeGVCZlJVKzMxSFJIcmtUVVg5Q3pEenltTVUwbkF1?=
 =?utf-8?B?RVJQdm0rcXM1YmFmb1daNkxQOEZqQ0s4Ym5tQ1M4clZYWGM3a0lGS0FqU1E0?=
 =?utf-8?B?b1U3VU12REcvMmFMOUZyVk1oei9NZkxiemFhQ1llMmYveWUxTGQyYXljTTdT?=
 =?utf-8?B?akppTmxYWTRTWFNwSC95SU9rV1M0Mnk5WW5PMHZFeXZpM0dBajhheWMrUFR2?=
 =?utf-8?B?bWdVY2c0UHlRRlc2ekFEL2VyQ28ra1F0VllzSEswRlUwcTFkaG9tYWc4ZUZV?=
 =?utf-8?B?QWF4d2REeFpabU5MS3J5MEV5eWRLRUI1Wll4eEx0dlN6bW45K3VHYWRvVlpu?=
 =?utf-8?B?a3o5T21iMVB0VFcrY3gxVlFUM1o3Y0ppYWw3NVZyZzN0M2ZrU0dmV2pNZUQ5?=
 =?utf-8?B?ZlNTQ0VQWVhQT1FOQUxWMXlITHlRcmFjUVdYNS84NC9pS2xQN3Bjd25NbkpN?=
 =?utf-8?B?Y0kxdmY5dXdQWU1VM2xUZnZNbHZpZkNmR3VpQUFvalFIWU9uTXZneDJVamhP?=
 =?utf-8?B?aXhXUDJ2REtmMmEraVhNbXd0bktEUUhYYUJBaHU4SzNKRjRtMVZLV291MTRi?=
 =?utf-8?B?VEIvc01iT3pzWGtYMk1lRVo4YTJRc3E5ODExKzRseWtsWVMwZ0p0TEpCcnRk?=
 =?utf-8?B?YXhPQlZtTmxwNGw4MzNBdnNrTi9oenFXbVNzTGJqWXBCT2kvd0Z2MmhFdHNz?=
 =?utf-8?B?dEZQK1ZRdDVhdVFoeDIxYXFkQlU3Q2o5TjZUWTk3OGtkWkVKc3hqOW5ZR0or?=
 =?utf-8?B?anhhazVZUGozWWJ0d0NQbW1Ec2ZrWFYxZ3BNN2ZSbnlnK0NMY2xMajNTUk1r?=
 =?utf-8?B?S2ZkZjFCb3l1VkFHN3lhOGZrK3lMQTNGU1IyU095YWU2NVpGQ010WkQ5L01L?=
 =?utf-8?B?SEt0MmV1cDR4VVhVZVF5RGxsNTFSSGJUTXNoL1cwdXBrbFVnMlI2aTBIaFdO?=
 =?utf-8?B?SzRSVkkwRjQ0d2V3alhvRlJuM1J1Vk01eDJwTEljQm5UOEN3NXptZUE3UUZk?=
 =?utf-8?B?SDJRLzVsRlhNS0VCRXBaYU5kN29sald3OGpWR3l0SXY2VGlCamF2NWFTUmNi?=
 =?utf-8?B?QUdMNTdMSjNpMUVVT2RaaU1UVmlPZUNZaEhVK3JBek9wZmJwNUYzNVRrZEQw?=
 =?utf-8?B?a24zRHFkSGVYaUhUL1dLUVEyWWtpZnBkdm5mTm9SRHNjQ3JqNzhUZ0tiWENv?=
 =?utf-8?B?ZkhGWnBYZFE3UTBFZncza3ZtbFNRUmFpb1JicnRVdFAvUXpaUEh6Q1BOWW9I?=
 =?utf-8?B?Wkptcmd6dlZLdlUyNWxCRTFHMkpuVjJPSGtwdDRzamlMWXVpVDBMYm5sL0Fp?=
 =?utf-8?B?V1hjdlBmbVliazg1S0t2ZXo5MnNuVXd1UmhOYVV6TUYvNzloUVQ0TjcrZ2t5?=
 =?utf-8?B?Q2J0elQ0bFlscnB4aCt6NnFZUEtUMHZtYlYyeWJzaFhSQzlOMENpTXUwUjFM?=
 =?utf-8?B?ZmlCMzlVUDI5VWVNZHRDV1dsYTVKR0p2V0RHY09QZmtDNjhCVzRWaVFtTWZD?=
 =?utf-8?B?cU81ME1tc3BnZFZtUXVuc1BNd0IzR1VreWVsdGIrS0RxMm5rOVUyaWVaVlRE?=
 =?utf-8?B?OWVZbHNlOG0vc2dpb3Q1Y1JVY29tcTVqdVJGVUlTODNyUXc0VWlTQ1FFUlRH?=
 =?utf-8?B?WHY2SDFidGhHazhVUUZ6U0ttNU1kamJXQUZXMjdVbUpTNXBsbVoybEtNUVd0?=
 =?utf-8?B?Mkx3a1pMVTNhVjFZczlZTWdvdW9vVmFXaE0zNjBOQ0JkamZmU0RoNG9hRUlv?=
 =?utf-8?B?QTk2UkJvTENaR1JYVHB2NFJvYzE5SlZBdUVTK3dGTzBPUWVJUGxndFpzaW5x?=
 =?utf-8?B?bk5Pb3ZqQUhhYldGcVZwUDVtQy9MSmhPaFhKVks2dTBRNDVkalBKUDV4OFll?=
 =?utf-8?B?ZUdsbzdEVGc0M1p0eENWZ01VSStvaGRKM2YwU0drRm05QUExNjBPS3pYSzNz?=
 =?utf-8?B?SURrT2FXaElOdGdpdEUwaDBsTmhPM3c1N0FzOU4yZE1WTlh5OGpPWE5DRmts?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 090aa916-1de8-41ec-fd5e-08dabe9c664d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 19:40:16.9877 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCnDG2ZsS+yL7l90YRnImds4K61b6gGnshn5CpIa4fR6ybIydlIBrtJwKkkOUkY06CJepvkoQ/SWLL2IXGNI/Km3JL+CG5nW5vI/j+sKM8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_for_two_GuC_issues_=28rev2=29?=
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

--------------WsvA55OigPik04yQf1qvdXBd
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/2/2022 21:45, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Fix for two GuC issues (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/110269/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12332_full -> Patchwork_110269v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_110269v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110269v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 9)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_110269v2_full:
>
>
>       CI changes
>
>
>         Possible regressions
>
>   * boot:
>       o shard-iclb: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html>)
>
I have no idea what I supposed to make of this. Clicking the 'FAIL' link 
just produces an 'Access Denied' XML file, it's not even HTML.

Also, this patch has no functional change for any non GuC submission 
platform and ICL is not GuC submission enabled. So assuming this issue 
is not related.

>  *
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_suspend@fence-restore-untiled:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl10/igt@i915_suspend@fence-restore-untiled.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@i915_suspend@fence-restore-untiled.html>
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html>
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html>
>
As above, this is a GuC only change so will not affect SKL or ICL.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_110269v2_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@feature_discovery@psr2:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@feature_discovery@psr2.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@feature_discovery@psr2.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@vecs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>         (i915#4793 <https://gitlab.freedesktop.org/drm/intel/issues/4793>)
>  *
>
>     igt@gem_exec_balancer@parallel-keep-in-fence:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +2
>         similar issues
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk8/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk6/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@massive:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@gem_lmem_swapping@massive.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_pread@exhaustion:
>
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@gem_pread@exhaustion.html>
>         (i915#7248 <https://gitlab.freedesktop.org/drm/intel/issues/7248>)
>  *
>
>     igt@gem_tiled_wb:
>
>       o shard-skl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@gem_tiled_wb.html>
>         (i915#6990 <https://gitlab.freedesktop.org/drm/intel/issues/6990>)
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-tglb6/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb2/igt@i915_selftest@live@hangcheck.html>
>         (i915#5591 <https://gitlab.freedesktop.org/drm/intel/issues/5591>)
>  *
>
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-edid-change-during-suspend:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@gamma:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_color_chamelium@gamma.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@varying-size:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html>
>         (i915#5072 <https://gitlab.freedesktop.org/drm/intel/issues/5072>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-suspend@b-dp1:
>
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@kms_flip@plain-flip-ts-check@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +35
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html>
>         (i915#2546 <https://gitlab.freedesktop.org/drm/intel/issues/2546>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +59
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +4
>         similar issues
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr@psr2_cursor_blt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_writeback@writeback-invalid-parameters.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@sysfs_clients@busy:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@sysfs_clients@busy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>  *
>
>     igt@sysfs_clients@split-10:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@sysfs_clients@split-10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html>
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html>
>  *
>
>     igt@gem_mmap_offset@bad-object:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl4/igt@gem_mmap_offset@bad-object.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl7/igt@gem_mmap_offset@bad-object.html>
>         +3 similar issues
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o shard-skl: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#1804
>         <https://gitlab.freedesktop.org/drm/intel/issues/1804>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>  *
>
>     igt@i915_pm_rpm@basic-pci-d3-state:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/igt@i915_pm_rpm@basic-pci-d3-state.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@i915_pm_rpm@basic-pci-d3-state.html>
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         +1 similar issue
>  *
>
>     igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html>
>         +1 similar issue
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         +2 similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html>
>         +4 similar issues
>  *
>
>     igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
>
>       o shard-glk: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html>
>         (i915#118
>         <https://gitlab.freedesktop.org/drm/intel/issues/118>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html>
>  *
>
>     igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html>
>         (i915#7307
>         <https://gitlab.freedesktop.org/drm/intel/issues/7307>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html>
>         +2 similar issues
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_blt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>  *
>
>     igt@kms_vblank@pipe-b-ts-continuation-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
>         +3 similar issues
>  *
>
>     igt@perf@polling:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl9/igt@perf@polling.html>
>         (i915#1542
>         <https://gitlab.freedesktop.org/drm/intel/issues/1542>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@perf@polling.html>
>  *
>
>     igt@prime_mmap_coherency@ioctl-errors:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl3/igt@prime_mmap_coherency@ioctl-errors.html>
>         (i915#2295
>         <https://gitlab.freedesktop.org/drm/intel/issues/2295>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@prime_mmap_coherency@ioctl-errors.html>
>  *
>
>     igt@syncobj_wait@wait-all-for-submit-snapshot:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl10/igt@syncobj_wait@wait-all-for-submit-snapshot.html>
>         (i915#7109
>         <https://gitlab.freedesktop.org/drm/intel/issues/7109>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@syncobj_wait@wait-all-for-submit-snapshot.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>      o
>
>         shard-glk: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk5/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658
>         <https://gitlab.freedesktop.org/drm/intel/issues/2658>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk1/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#7248 <https://gitlab.freedesktop.org/drm/intel/issues/7248>)
>
>      o
>
>         shard-skl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl3/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#7248
>         <https://gitlab.freedesktop.org/drm/intel/issues/7248>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#7248 <https://gitlab.freedesktop.org/drm/intel/issues/7248>)
>
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588
>         <https://gitlab.freedesktop.org/drm/intel/issues/588>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-update-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl6/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_12332 -> Patchwork_110269v2
>
> CI-20190529: 20190529
> CI_DRM_12332: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110269v2: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------WsvA55OigPik04yQf1qvdXBd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 11/2/2022 21:45, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:166745073779.9191.163183463980153=
87444@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Fix for two GuC issues (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/110269/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/110269/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110269v2/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12332_full -&gt;
        Patchwork_110269v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_110269v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_110269v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_110269v2_full:</p>
      <h3>CI changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-iclb: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12332/shard-iclb8/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-ic=
lb8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12332/shard-iclb7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/bo=
ot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_12332/shard-iclb6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.htm=
l" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332=
/shard-iclb6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12332/shard-iclb5/boot.html" moz-do-not-send=3D"true">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard=
-iclb5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_12332/shard-iclb5/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12332/shard-iclb3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
332/shard-iclb2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/sh=
ard-iclb1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html" moz-do=
-not-send=3D"true">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html" moz-do-not-send=3D"t=
rue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110269v2/shard-iclb8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb=
8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html" moz-do-n=
ot-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110269v2/shard-iclb7/boot.html" moz-do-not-send=3D"true">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v=
2/shard-iclb7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110269v2/shard-iclb6/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard=
-iclb6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0269v2/shard-iclb5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/bo=
ot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110269v2/shard-iclb3/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/sh=
ard-iclb3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110269v2/shard-iclb2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html" moz-do-no=
t-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110269v2/shard-iclb1/boot.html" moz-do-not-send=3D"true">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2=
/shard-iclb1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.htm=
l" moz-do-not-send=3D"true">PASS</a>)</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    I have no idea what I supposed to make of this. Clicking the 'FAIL'
    link just produces an 'Access Denied' XML file, it's not even HTML.<br>
    <br>
    Also, this patch has no functional change for any non GuC submission
    platform and ICL is not GuC submission enabled. So assuming this
    issue is not related.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166745073779.9191.163183463980153=
87444@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_suspend@fence-restore-untiled:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl10/igt@i915_suspend@fence-restore-untiled.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@i915_suspend@fence-restor=
e-untiled.html" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@atomic:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor=
-vs-flip@atomic.html" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mm=
ap-wc:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-=
pri-shrfb-draw-mmap-wc.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb=
1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html"=
 moz-do-not-send=3D"true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    As above, this is a GuC only change so will not affect SKL or ICL.<br>
    <br>
    John.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166745073779.9191.163183463980153=
87444@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_110269v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@psr2:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@feature_discovery@psr2.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110269v2/shard-iclb3/igt@feature_discovery@psr2.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.htm=
l" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@gem_ctx_isolation@pre=
servation-s3@vecs0.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4793" moz-do-not-send=
=3D"true">i915#4793</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@gem_exec_balancer=
@parallel-keep-in-fence.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"t=
rue">i915#4525</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-glk8/igt@gem_exec_fair@basic-deadline.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110269v2/shard-glk6/igt@gem_exec_fair@basic-deadline.htm=
l" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2846" moz-do-not-send=3D"true">i915#2846</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@gem_exec_fair@basic-pa=
ce@vcs1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html" moz-do=
-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110269v2/shard-apl3/igt@gem_exec_suspend@basic-s3@smem=
.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>)=
 +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@gem_lmem_swapping@basic.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-=
send=3D"true">i915#4613</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@gem_lmem_swapping@heavy-=
verify-multi.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1=
09271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613=
" moz-do-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@massive:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@gem_lmem_swapping@massiv=
e.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-no=
t-send=3D"true">i915#4613</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@exhaustion:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@gem_pread@exhaustion.htm=
l" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7248" moz-do-not-send=3D"true">i915#7248</a>)</=
li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_wb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@gem_tiled_wb.html" moz-d=
o-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6990" moz-do-not-send=3D"true">i915#6990</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110269v2/shard-skl6/igt@i915_selftest@live@gt_heartbe=
at.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5334" moz-do-not-send=3D"true">i915#5334<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-tglb6/igt@i915_selftest@live@hangcheck.html" moz-do=
-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110269v2/shard-tglb2/igt@i915_selftest@live@hangcheck.=
html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5591" moz-do-not-send=3D"true">i915#5591</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:=
</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_ccs@pipe-a-missing-c=
cs-buffer-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-no=
t-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +3 similar i=
ssues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_chamelium@hdmi-edid-=
change-during-suspend.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"tr=
ue">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111827" moz-do-not-send=3D"true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@gamma:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_color_chamelium@gamm=
a.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-n=
ot-send=3D"true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@varying-size:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@varying-=
size.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/igt@kms_cursor_l=
egacy@cursor-vs-flip@varying-size.html" moz-do-not-send=3D"true">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5072" moz-do-not=
-send=3D"true">i915#5072</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.h=
tml" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk1/igt@kms_flip@flip-vs-ex=
pired-vblank@a-hdmi-a1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true=
">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@kms_flip@flip-vs-suspend=
@b-dp1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#18=
0</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_flip@plain-flip-ts-ch=
eck@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i915#212=
2</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upsc=
aling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/igt@kms_flip_scaled_crc@fl=
ip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2587" moz-do-not-send=3D"true">i915#2587</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i91=
5#2672</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +3 similar issues=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-d=
ownscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"tr=
ue">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-b=
lt:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-indfb-plflip-blt.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do=
-not-send=3D"true">fdo#109271</a>) +35 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw=
-pwrite:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primsc=
rn-spr-indfb-draw-pwrite.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-ic=
lb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2546" moz-do-not-send=3D"true">i915#2546</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_frontbuffer_tracking=
@fbcpsr-suspend.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fd=
o#109271</a>) +59 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</=
p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-c=
ur-indfb-move.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@kms_=
frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html" moz-do-not-send=
=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982" moz-do-not-send=3D"true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-re=
nder:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@kms_frontbuffer_tracking=
@psr-2p-primscrn-spr-indfb-draw-render.html" moz-do-not-send=3D"true">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-=
do-not-send=3D"true">fdo#109271</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_psr2_sf@cursor-plane=
-move-continuous-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/658" moz-do-not-send=3D"true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_blt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html" moz-do-not-=
send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110269v2/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html" moz-=
do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) +2 similar i=
ssues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-fl=
ip-overlay.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb1/igt@kms_ps=
r_stress_test@invalidate-primary-flip-overlay.html" moz-do-not-send=3D"true=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5519=
" moz-do-not-send=3D"true">i915#5519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_writeback@writeback-=
invalid-parameters.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2437" moz-do-not-send=3D"true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@busy:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@sysfs_clients@busy.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-send=
=3D"true">i915#2994</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@split-10:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@sysfs_clients@split-10.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-s=
end=3D"true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-i=
clb1/igt@gem_exec_balancer@parallel-contexts.html" moz-do-not-send=3D"true"=
>PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html" moz-d=
o-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb5=
/igt@gem_exec_fair@basic-flow@rcs0.html" moz-do-not-send=3D"true">PASS</a><=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_offset@bad-object:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl4/igt@gem_mmap_offset@bad-object.html" moz-do-not=
-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1982" moz-do-not-send=3D"true">i915#1982</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl7/=
igt@gem_mmap_offset@bad-object.html" moz-do-not-send=3D"true">PASS</a> +3 s=
imilar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" m=
oz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1804" moz-do-not-send=3D"true">i915#1804</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl=
6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" moz-do-not-send=3D"true">PA=
SS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb3/igt@i915_pm_rpm@basic-pci-d3-state.html" moz-=
do-not-send=3D"true">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@i915_pm_rpm@basic-pci-d3-st=
ate.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@toggle:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@toggle.htm=
l" moz-do-not-send=3D"true">INCOMPLETE</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_lega=
cy@cursor-vs-flip@toggle.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-tra=
nsitions-varying-size.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send=3D"tru=
e">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110269v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-=
transitions-varying-size.html" moz-do-not-send=3D"true">PASS</a> +1 similar=
 issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.=
html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i915#2122</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/sh=
ard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html" moz-do-not-se=
nd=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@b-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11026=
9v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.htm=
l" moz-do-not-send=3D"true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-down=
scaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-=
32bpp-linear-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
 moz-do-not-send=3D"true">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_flip_scaled_=
crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html"=
 moz-do-not-send=3D"true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.h=
tml" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/118" moz-do-not-send=3D"true">i915#118</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2=
/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html" moz-do-not-=
send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7307" moz-do-not-send=3D"true">i915#7307</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/sha=
rd-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html" moz-do-not-send=
=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor=
-0-5@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pi=
xel-format-factor-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"true">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176" moz-do-no=
t-send=3D"true">i915#5176</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plane_scaling@plane-do=
wnscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"=
true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-=
5@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-do=
wnscale-factor-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-s=
end=3D"true">i915#5235</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plane_scaling@planes-upsc=
ale-20x20-downscale-factor-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"true">=
PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_blt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-=
send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@k=
ms_psr@psr2_sprite_blt.html" moz-do-not-send=3D"true">PASS</a> +2 similar i=
ssues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-fl=
ip-overlay.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5519" moz-do-not-send=3D"true">i915#551=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110269v2/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overla=
y.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.h=
tml" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2=
/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html" moz-do-not-=
send=3D"true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl9/igt@perf@polling.html" moz-do-not-send=3D"true"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542"=
 moz-do-not-send=3D"true">i915#1542</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@perf@polling.html=
" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@prime_mmap_coherency@ioctl-errors:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl3/igt@prime_mmap_coherency@ioctl-errors.html" moz=
-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2295" moz-do-not-send=3D"true">i915#2295</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard=
-skl4/igt@prime_mmap_coherency@ioctl-errors.html" moz-do-not-send=3D"true">=
PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_wait@wait-all-for-submit-snapshot:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12332/shard-skl10/igt@syncobj_wait@wait-all-for-submit-snapshot.=
html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7109" moz-do-not-send=3D"true">i915#7109</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/sh=
ard-skl6/igt@syncobj_wait@wait-all-for-submit-snapshot.html" moz-do-not-sen=
d=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>
              <p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-glk5/igt@gem_pwrite@basic-exhaustion.html" moz-do-n=
ot-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2658" moz-do-not-send=3D"true">i915#2658</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk1/igt@g=
em_pwrite@basic-exhaustion.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248" moz-do-not-=
send=3D"true">i915#7248</a>)</p>
            </li>
            <li>
              <p>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-skl3/igt@gem_pwrite@basic-exhaustion.html" moz-do-n=
ot-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7248" moz-do-not-send=3D"true">i915#7248</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/=
igt@gem_pwrite@basic-exhaustion.html" moz-do-not-send=3D"true">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248" moz-do=
-not-send=3D"true">i915#7248</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/588" moz-do-not-send=3D"true">i915#588</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3=
/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-n=
ot-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:<=
/p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-=
exceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i91=
5#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110269v2/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D=
"true">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110269v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12332/shard-apl2/igt@runner@aborted.html" moz-do-not-send=3D"tr=
ue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
332/shard-apl3/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl3=
/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl8/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl1/igt@runner@aborted.html" mo=
z-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12332/shard-apl6/igt@runner@aborted.html" moz-do-not-send=
=3D"true">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#18=
0</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002" mo=
z-do-not-send=3D"true">i915#3002</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4312" moz-do-not-send=3D"true">i915#4312</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/sha=
rd-apl3/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runn=
er@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@abort=
ed.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html"=
 moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=
=3D"true">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4312" moz-do-not-send=3D"true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12332 -&gt; Patchwork_110269v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12332: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_110269v2: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------WsvA55OigPik04yQf1qvdXBd--
