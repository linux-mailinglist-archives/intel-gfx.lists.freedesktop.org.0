Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7CC5B9051
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 23:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5D410E2EC;
	Wed, 14 Sep 2022 21:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B82810E002
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 21:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663192587; x=1694728587;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=6JvGImqjRd68OwaHyZhHsOD9SyXHdIlnsKkBUmk+jWE=;
 b=W592T4ZzaFxh1El65xMpZ/qPRmkgbmdKhxcvGT69rTR7sHSx33DNrK1M
 8gmNkISv+bMx6A+QDmLlMr6JBG2acJw3JVMw7CCI6Yp8feL9f3GEzKPD+
 Q6Q2tHAXBPvNd9TPz+KBaj2VfthiJZeoavyrj6a9mlUgPF9bd7YuhmzQO
 SkQXxHq7kIHtmGovue1l/Ria8IpNNqhCUmOMfrvRleLojdEKNbK6qV8ak
 rSTKLYfuEmnDSoI0A8lm0ZRacCrvSp1JtqMtyX2XCooS8idIQnZqabc41
 0r3zMyk049s0fp7gDvzLfhd4dVjRx3RBBaTaZaNBiTbtI5xQakM1hGH2+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278279264"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; 
 d="scan'208,217";a="278279264"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 14:56:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; 
 d="scan'208,217";a="685469566"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 14 Sep 2022 14:56:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 14:56:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 14:56:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 14:56:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SG9VqSAjYiFu8r3ubZb9giICgnf5NFJRYWsycSAaNWs0Hkxx4ilaGvre1VcA7gqtMs2TTe+SCZ5kVjHRHrespQGUiIMQQyqC21tRDveh1Xrm5VWJUVZzmzSUwI4HGeZAoqMXUahMoukbhJnM9fCo1Q7Z/Tu/KZAgsHyh/sHeXIPcG5C9Rfr7a/1iJUKNJ6MWWVgpb+0po9N6oaHvE/iDqYS891+UC9BB/kW4oGExw1hMxYNzmnIc/oZwqIb3Idyk9EYb+6F2OLGpuq0gFJI8n3p8zrXLNUUc9ZLbSJssnJnHDpGXHUkC+sDCAkmuel8GI53r2p4WmSUe06tYT1pZSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yxYj2Cn2Y2E7iOKMfAgM3Qy4s+j7Kd/KzsDQ9cE9z00=;
 b=GWDLd06Lhp01WLBAzyDxKoGFCijDuwrkrCk3osnu+w/2HysiQWmfnnqeYIpfsHZBt6tJCCV3/Chhm2NQxtoiwgFfbTQ/hM65elWBxeoT9PFJiM9oaw/+zsIztq1dTd9Ktz2oqEkqdivu80X2cYt/sL4bmtO0H5JtrOwEjaddaAa6WqSmh6MrCemR//DtPPToBMjeFdPwgpti5w1t8pNyGItb4z1ESF1Uk5MFBlH2x5IyRnf4NJA89Uf/gjUQBB0nGkG1UZSVTCe7/u0WfD9xlIhTiPXkqt80+9S1qd/dTVOWKLEBhkcb6Xvq3Z5iMvg7x9qeDAGHC9+HvQyFznhi+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 21:56:22 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::fcdf:8f15:5eaf:b57]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::fcdf:8f15:5eaf:b57%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 21:56:21 +0000
Content-Type: multipart/alternative;
 boundary="------------kyZ20bSf6rATUw8FqGkiU000"
Message-ID: <ccd775c7-d4e4-fd93-776f-f1f8fcf3ac26@intel.com>
Date: Wed, 14 Sep 2022 14:56:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220914005821.3702446-1-John.C.Harrison@Intel.com>
 <166317524318.30165.14177391157439982500@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166317524318.30165.14177391157439982500@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0154.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::9) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CY5PR11MB6258:EE_
X-MS-Office365-Filtering-Correlation-Id: b2826b70-1769-4b44-60d7-08da969bf5e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: inE7GUYzxXJYbx59V32J/XGCO3T2JwqOfAoLvR5EOieV5mAk3tkdNPcUOlNbCyUkhWFmmxeNFWpHcygP7KQwH+DvO/0LQZJkEk57CzFASw6qkOFtHanfB5uN95nVjTOkctT6adMGkiVgKzazufSyo6Av3nJKO2horENy5n48xLPU60Gkx5CgsC5KYIp0HTIndvy+i7QH1FMp0GFz5V1OaUVRTEwp2tqCuUPOR1qphJEP30zVzAwHiU5JeIB5WJQAD5JKt9t2BkfIL0tVINvHq/g2lfCvtqFa/xK3wawZJNzbrokPSOyDWlhnFV5Sswi4MgC8V+S46XzsxftmquKjhqCRng051CX31vYAqoKXbUuc7C0MdBz4pbKcP8EYOf3E31zm54RBHBVGhU342QaAsmFChzBdPN3B1QV4KOGNHrs9eGq0RHKnfcTjCPJJDjYKEZO6M5oI6sOmEixjYomgQ6wV+oBtDuszSzRycNUcB6KfH+piEgw8ibnLaOm5rTsqnOsMg8tZ9vw5NzaTAwkQQvOudFRiF2Qggk4j8ihW+3wNGV85umPZHrx+X0zHBezNYWUAc8WQepwPoXrEMsdQhFw1VAL0G4Rb7BXdYSDqoljUlQs33taVDu/4FUvj4k4dNJXqrwMYkrmmi1XnJV81mmfcssst4wdRo/ZWCCfgay9OFSF8JweyUp9kAwtIP722KNRUKd7SQwBfh1gNC3ziuK0aMkiDzgmt4COFm2uytRrsbYhHKVZcqk7b3pymrq1X3UWSpPIbkekgzl2HVPUNGvyg5JOp6nRgGg7DziTSAeCmWi+4NZ8cv51YZZQV/ycMbTN0K+kMlJdYVIVcER82MtC4YhowDLvE9zo8iu/QtrE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(39860400002)(396003)(346002)(366004)(451199015)(26005)(38100700002)(5660300002)(41300700001)(40265005)(8936002)(2906002)(53546011)(966005)(2616005)(6486002)(31696002)(33964004)(30864003)(186003)(31686004)(316002)(6512007)(6506007)(86362001)(82960400001)(83380400001)(66946007)(36756003)(66556008)(166002)(66476007)(478600001)(15650500001)(6916009)(21615005)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUZyNXl2b1RtMXphN25YQmJSVnBUbHRWbCtIK0gwRzZiMTdQL0w5dXJGMFRv?=
 =?utf-8?B?R1FxdXNiRHBDckExMEhBb2tQckpKVlVpd29KNmsxcXIrVzRpOGxWc2FOYmww?=
 =?utf-8?B?NHJzN0xDQmNmK053RC96dzJtRmMwWmhVWm9ocE1DT216bGg1V21IWndhdDVy?=
 =?utf-8?B?WHNhb0ZMeDZrcjNjL1NmeDNmRUZNSmNtVXFwSHVnZERsNk5XayszTS93VEdj?=
 =?utf-8?B?RXNadURxSE5GeTYwaCtobnVMRU1Mazl5b2VPbTIvaCtLbTFZaTBTVjV4QlMz?=
 =?utf-8?B?MkJvSE5JNkFBaDkwdzJxZ3Q1RHRhSENBSzlmbzRYNHJmaXhPb2lhUSsrMURB?=
 =?utf-8?B?c092Mm5DTWRRcThjTDdTK0Z5QUVReFNiTlRBUzU2alNacGFZbVVWaXVJVWNX?=
 =?utf-8?B?eFVMVCtoUzlsNXVBVlArM1FQQzNaQTJkRkJhMGFIdDJFRmlFWkkwSkViSUtB?=
 =?utf-8?B?VTBMbHJYeEZvZzJNenR0QWxXTEwwdC84TXEzbXRWR3AxajN3ZU9ybnpQenFl?=
 =?utf-8?B?bWxSSEV2NUY1V0g2cDd5M2dHQm1DT3J6MSs0K3BEUmpodzBCaHJaWnl3ZG5O?=
 =?utf-8?B?ZDFRendFUVVSMllHZW5LaUlMM25VZzJacWlOdWxZNWdHeHliNGFGdkdVSnBX?=
 =?utf-8?B?bTAyNGlZcnI5T1RhZWhRRThjOGk5RUFWeVpsVkF2R3dJZFZnQWZ1ZnNnaG1i?=
 =?utf-8?B?VC9oUEsxRHV0SG5Pc2FtZXRMV1VxVzg5UzBuQ3FrelFabVdTVGpCNVhodnFJ?=
 =?utf-8?B?TzAxdEJmWlg2NW5iWTZSeTNneXlDNllTeGNzMHMyK2V4SzNGY1p2bTFERUdp?=
 =?utf-8?B?VHFqU2NZeW1iSlNkeG1VM0xkM1dSQ1JjYjVaUGZ5U0tNU2hTYjRVdFhjcVlZ?=
 =?utf-8?B?eXFGK1h1U3pHNitHK2N0U042OXc5czBPNXRNWUxFVXZnaEZlR1M4WHd5UHBD?=
 =?utf-8?B?OFA3aEdyeTVwVUR3S0l1bXFsRHEvUmhBRmNlVjRKZ3FSQ3JITjZLLytPbEpD?=
 =?utf-8?B?OU1RMkFmUGNpK1VzMERWTWZXckw5ZGs4NFJnVXRUb290U09Fd3NrSjBVbFV5?=
 =?utf-8?B?dTFndUZBMzhLdTBMSFl4U21Mb3RsdnB0SHNoUmtnSHlYbG9acXJEM0NwSFEz?=
 =?utf-8?B?UFA2L3E3ZmtVUGx3bXVFTkJteGY3OG9BeUF1d0lpT3R4cUVqYmtxL1BCdy9R?=
 =?utf-8?B?K2p5UHlnY1pCNE1RUmR5ZGp0UzlxNS85b2VxWWVYcmVCUzlNN2xaWDFGc1li?=
 =?utf-8?B?QTE0c21RTjJFTkxsY3JZOExuL3owWWtuTzR2bVZmeWRFS3BYRHZXUjVYL1d4?=
 =?utf-8?B?TGNDVUZzdkxubmNNTUZ4TmxMUThadGtqeWNoNFZhaEZKWUR3dWVINmpGODFu?=
 =?utf-8?B?WVk5SHBnWTdDTGFvR2ZMajZpUVJMVzZONklBZEFKUWxESkpDZWlYY2xGa3BS?=
 =?utf-8?B?REVSWDhjdWRjOXlzU25MTVJGY3g0Skw1bkNBUTRsaGRPN2pSQ0VnSnVHRWVu?=
 =?utf-8?B?eHAzb2FkSEIzWk5sM0dlQlV2R0pieHV0blBrNEtpbU9zOVNaMENPVGI5cUIy?=
 =?utf-8?B?QW9YZWhHQUpCdmR0V2xlWW9GcmxjRjYrNWVDYUxScEZGVGptM3BaVy9OUUxz?=
 =?utf-8?B?TjJmdTVOdGczbTVCdm80azM2d25BbVZycGFOVkQzSTVzaWsyRkR1VXhGZEhB?=
 =?utf-8?B?d3RuQ1FoeVkwd0xtWHg3bUk5MEV0ckE5bmJQRnlkSDk4cGtGV2tqL2pCZkds?=
 =?utf-8?B?RmliSHFvT0gxN01URkxKWE5TR3RmODQvaEQzTThsQzY5c3VoYnFETU5pYXBK?=
 =?utf-8?B?amhOaHRWSFF2RWV3MS91bXFCYzR4NHdZUDd5Nm9rWjBZZnZqWDd1cXlRZ0Vt?=
 =?utf-8?B?QU4vV1UrdXloWE1QL2liMnA1b1ZXSlkwZ1JJcmtKRUVFWi9iZkx0MElzN25a?=
 =?utf-8?B?NmRXU2l1Smo5UURaR2ttdnB2VFg3TGlUc1BYL25oQUtQTHFsSXNERGJhTGht?=
 =?utf-8?B?OFdtZTZkZk4zZGs5MExCTHJRc1d6bFpUeHp4MWJ6dUtVSUF3QWZ1NWdnVEJG?=
 =?utf-8?B?bkE5dWpCVGJQWUtNdG9KaG1HRU1KK2IvNndXMzNjbDUwa05MWndZK3pkZG1w?=
 =?utf-8?B?bzlsa1JHZHQxd25xY09qanhlc29XeWNmSHFDZUMvWXFOSEJhaU9kbGkxQUJT?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2826b70-1769-4b44-60d7-08da969bf5e7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 21:56:21.8681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /c6pbp2YXnqzLFBPAf5zC2j9jz1Eq3961j0VXXwefSk/xFomsvnC6fOVeeI9K2mC+nXEfa0BerrJf+tT8jEPaO0ccKSeviZrcKAs7VQX1a4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_bug_in_version_reduced_firmware_update_=28rev2=29?=
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

--------------kyZ20bSf6rATUw8FqGkiU000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/14/2022 10:07, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Fix bug in version reduced firmware update (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/108461/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12132_full -> Patchwork_108461v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_108461v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_108461v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (11 -> 11)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_108461v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_pm_sseu@full-enable:
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@i915_pm_sseu@full-enable.html>
>
Failure is unrelated. This platform is running with GuC completely 
disabled and the patch only affects GuC loading.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_108461v2_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Possible fixes
>
>  *
>
>     boot:
>
>      o
>
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html>)
>         (i915#4386
>         <https://gitlab.freedesktop.org/drm/intel/issues/4386>) ->
>         (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html>)
>
>      o
>
>         shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html>)
>         (i915#4392
>         <https://gitlab.freedesktop.org/drm/intel/issues/4392>) ->
>         (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_create@create-massive:
>
>       o shard-iclb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>         (fdo#109313 <https://bugs.freedesktop.org/show_bug.cgi?id=109313>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb1/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb6/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@verify-ccs:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@gem_lmem_swapping@verify-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@verify-random-ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_lmem_swapping@verify-random-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_softpin@evict-single-offset:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_softpin@evict-single-offset.html>
>         (i915#4171 <https://gitlab.freedesktop.org/drm/intel/issues/4171>)
>  *
>
>     igt@gem_workarounds@suspend-resume-context:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/igt@gem_workarounds@suspend-resume-context.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@gem_workarounds@suspend-resume-context.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +2
>         similar issues
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>  *
>
>     igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>  *
>
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-audio:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_chamelium@hdmi-audio.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +6
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-edid-change-during-suspend:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_chamelium@hdmi-edid-change-during-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +69
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html>
>         (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@cursor-plane-update-sf:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr@psr2_sprite_plane_onoff:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr@psr2_sprite_plane_onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +114
>         similar issues
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_writeback@writeback-invalid-parameters.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>  *
>
>     igt@sysfs_clients@fair-7:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@sysfs_clients@fair-7.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_eio@in-flight-immediate:
>
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb2/igt@gem_eio@in-flight-immediate.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb6/igt@gem_eio@in-flight-immediate.html>
>  *
>
>     igt@gem_eio@reset-stress:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb1/igt@gem_eio@reset-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb5/igt@gem_eio@reset-stress.html>
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_whisper@basic-fds-forked:
>
>       o shard-iclb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked.html>
>         (i915#6695
>         <https://gitlab.freedesktop.org/drm/intel/issues/6695>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_exec_whisper@basic-fds-forked.html>
>  *
>
>     igt@i915_pm_dc@dc9-dpms:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html>
>         (i915#4281
>         <https://gitlab.freedesktop.org/drm/intel/issues/4281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html>
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         +1 similar issue
>  *
>
>     igt@perf@stress-open-close:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/igt@perf@stress-open-close.html>
>         (i915#5213
>         <https://gitlab.freedesktop.org/drm/intel/issues/5213>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@perf@stress-open-close.html>
>
>
>         Warnings
>
>   * igt@runner@aborted:
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#6599
>         <https://gitlab.freedesktop.org/drm/intel/issues/6599>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#6599 <https://gitlab.freedesktop.org/drm/intel/issues/6599>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12132 -> Patchwork_108461v2
>
> CI-20190529: 20190529
> CI_DRM_12132: 6c93e979e5426070b3de3df81c468548328d1162 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_108461v2: 6c93e979e5426070b3de3df81c468548328d1162 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------kyZ20bSf6rATUw8FqGkiU000
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 9/14/2022 10:07, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:166317524318.30165.14177391157439=
982500@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Fix bug in version reduced firmware update (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/108461/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/108461/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108461v2/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12132_full -&gt;
        Patchwork_108461v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_108461v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_108461v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 11)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_108461v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_pm_sseu@full-enable:
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@i915_pm_sseu@full-enable=
.html" moz-do-not-send=3D"true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Failure is unrelated. This platform is running with GuC completely
    disabled and the patch only affects GuC loading.<br>
    <br>
    John.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166317524318.30165.14177391157439=
982500@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_108461v2_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>boot:</p>
          <ul>
            <li>
              <p>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12132/shard-apl1/boot.html" moz-do-not-send=3D"true">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl=
1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12132/shard-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1213=
2/shard-apl2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_12132/shard-apl2/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-a=
pl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12132/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_121=
32/shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12132/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-=
apl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12132/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
132/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12132/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4386" moz-=
do-not-send=3D"true">i915#4386</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108461v2/shard-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard=
-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108461v2/shard-apl2/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10846=
1v2/shard-apl2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108461v2/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl=
3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108461v2/shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108461v2/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108461v2/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/sh=
ard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108461v2/shard-apl8/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8461v2/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html" moz-do-not-send=
=3D"true">PASS</a>)</p>
            </li>
            <li>
              <p>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12132/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk=
1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12132/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1213=
2/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_12132/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-g=
lk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12132/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_121=
32/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12132/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-=
glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html" moz-do-not-s=
end=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12132/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
132/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12132/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392" moz-=
do-not-send=3D"true">i915#4392</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108461v2/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard=
-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108461v2/shard-glk2/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10846=
1v2/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108461v2/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk=
3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108461v2/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108461v2/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108461v2/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/sh=
ard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108461v2/shard-glk8/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8461v2/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html" moz-do-not-send=
=3D"true">PASS</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_create@create-massive:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_create@create-mass=
ive.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4991" moz-do-not-send=3D"true">i915#4991=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb3/igt@gem_exec_balancer@para=
llel-contexts.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#=
4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-glk2/igt@gem_exec_fair@basic-deadline.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108461v2/shard-glk2/igt@gem_exec_fair@basic-deadline.htm=
l" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2846" moz-do-not-send=3D"true">i915#2846</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108461v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs=
0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>)</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@gem_exec_fair@basic-none=
-rrul@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108461v2/shard-glk1/igt@gem_exec_fair@basic-pace-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb1/igt@gem_exec_fair@basic-pa=
ce@vcs1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_exec_flush@basic-b=
atch-kernel-default-cmd.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109313" moz-do-not-send=3D"=
true">fdo#109313</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-tglb1/igt@gem_huc_copy@huc-copy.html" moz-do-not-se=
nd=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108461v2/shard-tglb6/igt@gem_huc_copy@huc-copy.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2190" moz-do-not-send=3D"true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-ccs:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@gem_lmem_swapping@verify=
-ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do=
-not-send=3D"true">i915#4613</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random-ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_lmem_swapping@verify=
-random-ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10=
9271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613"=
 moz-do-not-send=3D"true">i915#4613</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@gem_pwrite@basic-exhaust=
ion.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2658" moz-do-not-send=3D"true">i915#2658</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-single-offset:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_softpin@evict-single=
-offset.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4171" moz-do-not-send=3D"true">i915#4171</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-context:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-apl7/igt@gem_workarounds@suspend-resume-context.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@gem_workarounds@suspen=
d-resume-context.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"tru=
e">i915#180</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-apl2/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108461v2/shard-apl3/igt@gen9_exec_parse@allowed-single=
.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-=
not-send=3D"true">i915#716</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108461v2/shard-glk3/igt@kms_big_fb@y-tiled-64bpp-=
rotate-180.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1888" moz-do-not-send=3D"true">i915#188=
8</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138" mo=
z-do-not-send=3D"true">i915#5138</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_ccs@pipe-a-bad-pix=
el-format-y_tiled_gen12_rc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not-s=
end=3D"true">fdo#109278</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:<=
/p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_ccs@pipe-a-crc-prima=
ry-basic-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not=
-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +3 similar is=
sues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:=
</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_ccs@pipe-a-missing-c=
cs-buffer-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-no=
t-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +2 similar i=
ssues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-audio:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_chamelium@hdmi-audio=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / =
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-no=
t-send=3D"true">fdo#111827</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_chamelium@hdmi-edid-=
change-during-suspend.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"tr=
ue">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111827" moz-do-not-send=3D"true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downsc=
aling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb5/igt@kms_flip_scaled_crc@fl=
ip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2587" moz-do-not-send=3D"true">i915#2587</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i91=
5#2672</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mm=
ap-cpu:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" mo=
z-do-not-send=3D"true">fdo#109271</a>) +69 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_frontbuffer_tracki=
ng@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109280" =
moz-do-not-send=3D"true">fdo#109280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_plane_alpha_blend@pi=
pe-b-alpha-basic.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D108145" moz-do-not-send=3D"true">f=
do#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
265" moz-do-not-send=3D"true">i915#265</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_plane_alpha_blend@pi=
pe-c-alpha-opaque-fb.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D108145" moz-do-not-send=3D"tru=
e">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265" moz-do-not-send=3D"true">i915#265</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_psr2_sf@cursor-pla=
ne-update-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#1=
11068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658"=
 moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_psr2_sf@primary-plan=
e-update-sf-dmg-area-big-fb.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/658" moz-do-not-send=3D"true">i915#658</a>) +1 similar issue</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr2_su@page_flip-p0=
10.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-no=
t-send=3D"true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr@psr2_sprite_plan=
e_onoff.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271=
</a>) +114 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_writeback@writeback-=
invalid-parameters.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2437" moz-do-not-send=3D"true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@prime_nv_api@i915_nv_r=
eimport_twice_check_flink_name.html" moz-do-not-send=3D"true">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291" moz-do-not-s=
end=3D"true">fdo#109291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-7:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@sysfs_clients@fair-7.htm=
l" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-sen=
d=3D"true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_eio@in-flight-immediate:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-tglb2/igt@gem_eio@in-flight-immediate.html" moz-do-=
not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3063" moz-do-not-send=3D"true">i915#3063</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb6=
/igt@gem_eio@in-flight-immediate.html" moz-do-not-send=3D"true">PASS</a></l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@reset-stress:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-tglb1/igt@gem_eio@reset-stress.html" moz-do-not-sen=
d=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5784" moz-do-not-send=3D"true">i915#5784</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb5/igt@gem_ei=
o@reset-stress.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7=
/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-t=
glb3/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send=3D"true"=
>PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-icl=
b1/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send=3D"true">PAS=
S</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-fds-forked:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked.html" m=
oz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/6695" moz-do-not-send=3D"true">i915#6695</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/sha=
rd-iclb6/igt@gem_exec_whisper@basic-fds-forked.html" moz-do-not-send=3D"tru=
e">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc9-dpms:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4281" moz-do-not-send=3D"true">i915#4281</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@i915_pm=
_dc@dc9-dpms.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes=
:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspen=
d@pipe-b-planes.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108461v2/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspe=
nd@pipe-b-planes.html" moz-do-not-send=3D"true">PASS</a> +1 similar issue</=
li>
          </ul>
        </li>
        <li>
          <p>igt@perf@stress-open-close:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12132/shard-glk8/igt@perf@stress-open-close.html" moz-do-not-sen=
d=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5213" moz-do-not-send=3D"true">i915#5213</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@p=
erf@stress-open-close.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@runner@aborted:
          <ul>
            <li>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html" moz-do-not-send=3D"tr=
ue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
132/shard-apl2/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1=
/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do=
-not-send=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257" moz-do-not-send=3D"true">i915#5257</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6599" moz-do-not-send=
=3D"true">i915#6599</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html" moz-do-not-=
send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108461v2/shard-apl1/igt@runner@aborted.html" moz-do-not-send=3D"=
true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108461v2/shard-apl8/igt@runner@aborted.html" moz-do-not-send=3D"true">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10846=
1v2/shard-apl8/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shar=
d-apl3/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180" moz-do-not-send=3D"true">i915#180</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do=
-not-send=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257" moz-do-not-send=3D"true">i915#5257</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6599" moz-do-not-send=
=3D"true">i915#6599</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12132 -&gt; Patchwork_108461v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12132: 6c93e979e5426070b3de3df81c468548328d1162 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_108461v2: 6c93e979e5426070b3de3df81c468548328d1162 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------kyZ20bSf6rATUw8FqGkiU000--
