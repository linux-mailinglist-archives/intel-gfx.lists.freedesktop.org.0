Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FF4625E46
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEB810E847;
	Fri, 11 Nov 2022 15:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7EF10E849
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668180271; x=1699716271;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0wu65BhFrZUyXlfmdyg3NDnTPkoNsKCD1anw7QaPGpk=;
 b=B0t7qQqHmjEqUrl38+0ItxZhFKCztmOymmv+lDlgymQ6ExisnbaoqT/g
 ZRTAcBKHUkaecOKdtkqRypmcVDR4HAUQQYRRzULjV2kwpQ5mXUtEVjXLH
 c+qe67CEA1yOSB2tfrvJXFrsRIxODGIpgu45766veqMgFz04iNPy514am
 eawE0Rs2ORl4EdPrU5k/P7IfitR4VAplWOLM64euQknrRKfrfywyPtdJ5
 GDjzyhBQhJhcdKOU1bDB8CWvcLvLNtRupuaPAKsvkSXt0hSM01ApUsSH6
 eS0MW1IPBqz/z0Y7A3Ef45te889QsufM1+FoTF4PNYM+CXkbgcAa4KNFZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="291333632"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="291333632"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:24:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="762691720"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="762691720"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 11 Nov 2022 07:24:27 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 11 Nov 2022 07:24:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 11 Nov 2022 07:24:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 11 Nov 2022 07:24:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QisHhJ4+CtTD/nEZzU9v+bLmO2K+CR3Y/WhWmGv660pHHF2ibZ6qbCmCqsW/dkJDLHiMHB7IUa3cEAdDVt2mtoaRJ5N8PJCxQRA9C+59BAvOWN9vtXOk0vUVaMtZEsYcpZXeERLp1uI0sUXoEbKUK8sr11XtgoqdU9SNjJHtofzlU04cROrEqMwNKp3rjHqdfIKxOrfHU4tJpb2V0+0UubaRo0CpRE+qo+XtzH6d097YXvCKmlHKAD5xBVLxOnq8zJpfW0C4p+i7CUvCnpFurqoT216NQN0giH36HWu46dZx5QyT+6lkCiIurOLpQW8nH2FboV+yAro91ek6ZlPolw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QBZcd8K0mhkd4seHkA5vR6TT94qoZLEFZbRUqGe0osY=;
 b=hhvqlAftjekdxEsBUzVWritRCt9l8cYf6L3ry5Vh0Abp6iSJFyd6r01fVvkyB4FR0mXYuJl5p4f3Dz8R2Q/CUDFEUJUTOE7L1y6N9crgnNq1fFHDQ3GVWm8azKpVNs8ZITfVmXmajK/SnjAnA3U2cAHgQQk30dnF5+ptlPu1QfNBsBl+v/GNw0WhSioiJ/E7lZ2qs8izbqyaOY9XpFLbqZJqjrkAjg3NRO2BFXuI0CxVBZ3bV1WYVi+s2loVBhmpeRktEB43vvasUG8CrS9cTUq7Tgz8+/mILgdTdWB9Z//u+ldVnvv8g+UZC5LPJc+cD5vleuJP/d+S5/vNrMq9DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BN9PR11MB5481.namprd11.prod.outlook.com (2603:10b6:408:102::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Fri, 11 Nov
 2022 15:24:25 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Fri, 11 Nov 2022
 15:24:25 +0000
Message-ID: <7cf4dfd0-8e4b-6562-0da5-e1abbd748c8d@intel.com>
Date: Fri, 11 Nov 2022 20:54:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Riana Tauro <riana.tauro@intel.com>
References: <20221109112541.275021-1-riana.tauro@intel.com>
 <166802259456.3406.6816717674049077710@emeril.freedesktop.org>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <166802259456.3406.6816717674049077710@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::19) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|BN9PR11MB5481:EE_
X-MS-Office365-Filtering-Correlation-Id: a652da44-b2ed-49ed-a92d-08dac3f8d0a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tA2eetcVstjWIADJ38BDfIv1CNpAjk85F3mo4T8NtNikzXG2I1slZSiOrV/gbChDby4Ex0vkdywWXYrMkTQvAlQoXa6vTIpi6ui5tmJRccqI3RpOoYoe+9wruLhPiPr3YeVnwQP5XekqDqP5Cx7lF6if9PrJ08wvGhcSdyM3AvyuAqpDgwm2MHwLtaizDcibnUH8vaynoi8b5x51S/c1KClAC/rNMUFSSCn25V+UX9mAs2OCvedIZnzhOpTcQsFh3tEMTSzCYc1zvG8TyndhU+PrbJ76xn4wwLyyHsmRxUgInwzsqqyqtcqr6NnbfcElpGUmBP+wcBaq7XC13mYFvyzdRA+kpc18IKJ5/zT5EnSqEHEImca5aQreuFlJ6wpTijnPevKKFKfPMRQpVaEraHNQ4NzWq1Ua81fOtHj0HoymbJIOuqdIxrJvgW2EpUi826gz5j8Ov9A+2woJIev8m/uW0sW6PCgZpYE6IHlCM5h1JdJqmvK10xs6Dl+j3G0oI3mDdhomOR+39bp6a2LlRzTwRBbXaSKaM6fDEazXjDXmxOKUA0Yw1mqa2ipYWFj9HtrNKBMhNr31T7BF4rrkNVGg+mRLkX1pA8rO77tudKvU3zTK41XBHnhoXA7kI2xrp8KPvIlZs5x/fP+5HI3sWxYvxTTxqeQds3LwL4VYtTocCr8gCPMhFxHiV80JrM+nNf9+O7EHWfxm+5btPzelGmAYoUGSjQmovKIc8Og9W8OXt/lV69RCVnzqUt2cJflL1ys/hV3eYSmlOM0bOnUjGYM2XPzp0RpJSinJ/gtOD635ZarpxYniq9Hsp2UgIIprWJh+z50LVb0UPATNz/y3zsMf0k5Si6XHY6EsE9bKUkc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199015)(107886003)(966005)(55236004)(53546011)(6666004)(6512007)(26005)(2616005)(478600001)(6506007)(38100700002)(82960400001)(6486002)(86362001)(31696002)(83380400001)(186003)(36756003)(31686004)(8936002)(41300700001)(2906002)(5660300002)(110136005)(316002)(6636002)(66476007)(4326008)(66556008)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGdVZFMvNkhBSHRqVXpGSTlmSzJPcHpxeUhKb1A4UGt0OFJZc1B4eWNSR0hv?=
 =?utf-8?B?d1lqbDhQcDB4UWNmcXMxN0ZrQ0xROWJ3OWJ4TFNWQTh5K2pqT1BVK0krMDcv?=
 =?utf-8?B?ZjZyMzlINFpGZXViZERLUGc1aHQ3ZUsvekw1WUU2SlEzS2hmTkZSOE04aDNw?=
 =?utf-8?B?bTg3UXg1MjA5UURQM2l0K2FoTXJ4MTYyTmNQcFI5ZlNBOVUybDAxS3labmUr?=
 =?utf-8?B?Z2V1WjFudnJJM2N1OTlmNS9PMzBMdlphQ09nYTc4T2NydmRaZmZ4bGU0Mi9z?=
 =?utf-8?B?UUNjZzhkL1pEYk9SQXYzYlZzVzRYYkcwVnBrMWlaNWdQWm9FUEgyMzY4TXVC?=
 =?utf-8?B?bmN5a2E4WXc4V0RJU2NycmpHMkp4R3pDeGM3bExZeHNSWUVhV0dKbGhUdDdv?=
 =?utf-8?B?dUZoakVkUWVCMlJ3RUxPT0djZ214L0ROUWVpcnlaYllhTUxsWjZibURYRkk1?=
 =?utf-8?B?dTBKK05ocWo0WDExeVN0NVNxMU95R0ZIalpXWFlBMXZ1QTY4bmZHZUdSaU0r?=
 =?utf-8?B?K25ZU1Vwb1BsWVBldklmaDFEMWpqM3NseW9ta1FVUWVlbDl1N3dWOFZ4R0JI?=
 =?utf-8?B?MGp5dVZkWW9WeVZVckVpUnFXalNueWNPUWlRb0N0ZkRWc0tsTXhPdWgrL0ZD?=
 =?utf-8?B?S2orVzl6elZqdzlYWlZNZlVqN1RlZUU1cFI4N3RTN0VhVjg1ZUx0OEwrY2lK?=
 =?utf-8?B?WTROSlFpdC9BZHhXWGQ4SlRzWUt1R0lWUjNWMlpqUU11K0FSMXBGdVhob3NC?=
 =?utf-8?B?Q3NsOUE0eUdjY08xd2RCekRMTXFxWFZnQnVTVTJUdVk3ZkhHdmZDTXVkcFRa?=
 =?utf-8?B?ZFJxYWZSbTAyVG9KRVEyVXR1NEpQcWU2S2w3N3VIWW1tVks5dWxjeTVMLzUx?=
 =?utf-8?B?Nzl1MUdsUFNmVHg0RkNydWE5MDFNejFSRkIvRlZrWHR3d3ZKY2ZiRGZaVmJC?=
 =?utf-8?B?QVF3SzJWaE1jb0EzL1VRRkVOS0QzOW9OWVFtWW1Qb1o5VlhKQ0RyUi93UHVw?=
 =?utf-8?B?cXpPU043cW9XQStnQXNYWjQzamdyT04wenhQODhMN1RIODZ4dWVRNGNuZUdp?=
 =?utf-8?B?NUdJWkh5WjBPanY1aWl2Sit0SWRzNWVsTUp6alBZVkNZZG0vZU5WRU1PNzZj?=
 =?utf-8?B?SWtpNElHMEQ2QlpPMFc2QXdVaHFwd1EzOTVxdWVmRkxicVBqaUxCYXJXSmpX?=
 =?utf-8?B?M2JqUmorQ1JmYjc1RHRPQzFER2w4SVIySE1ndnF0M25IRmsvWkZNaUJJeWtz?=
 =?utf-8?B?OVRrK2ZQY3Y2b2pBRTJqVWNZclk2UkpmY0hhaEtMVHd6OEN3RlBlcTJDbkxM?=
 =?utf-8?B?Q0FWQUdOTk1Cdm9vZWd3Kzg3N2ZpMlZUQkkxNEtTWWgvSEo4T3lTeEZqTE4r?=
 =?utf-8?B?UnJVVHc1dk9LaDRlNzB6U1lBVkVIT0ppUFhoQnZnbmI2dmhuQ2djcURSdkcv?=
 =?utf-8?B?eElYS201WjdsbVdiNjVRU1g1SVlOcURuekVCcXJKU281dUJJd3ZJc3E3UWo1?=
 =?utf-8?B?VzBIU3JNUjBtTlNoRW1Jdk10K2F5cDZQZzdIYm5TVzRtelo1NkQ4MWVFVlli?=
 =?utf-8?B?WVJkS0s5bGZKNndsUkdjT0I0MGZCdm41OFFJZDQyeEMvTmxIY3BhZXY0cVE0?=
 =?utf-8?B?SWlEV1VJYXpSelpzaUg3cHF3Q0tqS3g5S3QvOWVUbThjY1ZOZExpWFhxK2tL?=
 =?utf-8?B?emlxTW1oQm1KRmpuU0dTUHAxdGJtMkIwdEJhL21FV1lDVWU5d293akY5bjR2?=
 =?utf-8?B?cTB6NzRSemJoaS9kSGM0M0ZNT2pQeGJSUk4zeEtna1pjczNyUjd3WnZ5cm1r?=
 =?utf-8?B?K3RpbWNWNGhURVFBVENhZnVtN2dtSEtJRHV4cWFUcndseG9LT3RjcXdQd0kw?=
 =?utf-8?B?TS9jbFdyeHBMYm9tRnBZSXd1ME9aV1cvWGhqcXRSeFp5QnkzWkRZd2I1QmFY?=
 =?utf-8?B?QWJ2UDBTTUcxUVY2eUwwWVdUQlN5cGtMREw1TVNDbUQ0MEkrZzFyUVJVMlJu?=
 =?utf-8?B?SWtiMnp3OTh5M0p1VXJaY05vNkR0RHRFZSthRjVBWC8wTjlJM3VwV2JNcU53?=
 =?utf-8?B?UktRdHpSVGxLSHBrcXZBSzNkM1h6SkVZbUNoclFhR09GZ0dYSFBzSGpHT25k?=
 =?utf-8?B?L0N6c0ErTUpvN2o1aU90U3RiZ0RtTGVja3dCNlg2cmovR05kQ2NyTXV5M3pE?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a652da44-b2ed-49ed-a92d-08dac3f8d0a1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2022 15:24:25.0141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c97rekqQx46at4mHaC6G5n4ZSksDUijRz0QDnKYlhOd3PplV6ewxRBO7GyOIYwd2bOO2JTXd4Ar+HNPHc5+Lbf516hIbfqdPyYAQUNwOQCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5481
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_selftest_for_slpc_tile_interaction_=28rev4=29?=
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



On 11/10/2022 1:06 AM, Patchwork wrote:
> *Patch Details*
> *Series:*	Add selftest for slpc tile interaction (rev4)
> *URL:*	https://patchwork.freedesktop.org/series/110248/ 
> <https://patchwork.freedesktop.org/series/110248/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12363 -> Patchwork_110248v4
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
Pushed to drm-intel-gt-next.
Thanks for review and patch.
Br,
Anshuman Gupta.

> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/index.html
> 
> 
>     Participating hosts (40 -> 36)
> 
> Missing (4): fi-ctg-p8600 fi-hsw-4770 fi-cfl-guc fi-bdw-samus
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_110248v4 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_exec_gttfill@basic:
> 
>       o fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12363/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> (i915#7229 <https://gitlab.freedesktop.org/drm/intel/issues/7229>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o
> 
>         fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
>       o
> 
>         fi-rkl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@gt_timelines:
> 
>       o fi-apl-guc: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12363/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html>
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-rkl-guc: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12363/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html>
>   *
> 
>     igt@i915_selftest@live@slpc:
> 
>       o {bat-rplp-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12363/bat-rplp-1/igt@i915_selftest@live@slpc.html> (i915#6367 <https://gitlab.freedesktop.org/drm/intel/issues/6367>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v4/bat-rplp-1/igt@i915_selftest@live@slpc.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12363 -> Patchwork_110248v4
> 
> CI-20190529: 20190529
> CI_DRM_12363: 28f3fbf3ad9cc809521c7a308e29dfc27c445730 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7049: 790ed4ea5e08969979cfe5b25e428e4a0ba148c2 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110248v4: 28f3fbf3ad9cc809521c7a308e29dfc27c445730 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 132a56588f64 drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction
> 
