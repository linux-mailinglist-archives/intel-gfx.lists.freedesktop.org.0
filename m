Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC2D58492F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jul 2022 02:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFFF10FF94;
	Fri, 29 Jul 2022 00:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7751131A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jul 2022 00:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659055249; x=1690591249;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=uB3NePnHmLcw0vumQx9YIunN/8pcxX0eHI/LSMGzyWI=;
 b=mEMkT8S4WUvK3PKSjEB1Qo2POF/lTAv33rH2Orr8wELgtV9e3Zxou+Ot
 YRHmvkmSWQ0o4RFe4bHXTiM0OAT2DJkLaO0k0KQ0jv4nKWBMM8q3x8wzL
 gGMHRR9IfN//80Az4y8q49Fu3w0oVYn0wUj2Gdi3k4hAN8YtvmU7ZgZ6S
 foRweWVys9LwalmThe6Cn0Cn0jMFvqtVABwuvik+30Kd8e60Grjx6xkwx
 PyFXK69FYmTjIGJoohEmhmYZqtTVWp6qimvtNXCnCpEeKw+3qqLSQku+q
 jXI+LQkK+/z4wnGuPOR1zmliHlwapWydQ0/5n/5ZkhBPYEkB28C3r+ALq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="275540652"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; 
 d="scan'208,217";a="275540652"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 17:40:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; 
 d="scan'208,217";a="777372951"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2022 17:40:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 17:40:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 17:40:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 17:40:47 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 17:40:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i2KQYLqZh2jCe37LwVl0zj4vNwszv9Z/SLPsjm0frIr3eJ6+8x4AmSoHZZnAp0aT0D2SJpQciNwFPmGqCrt89y9mDZi3nzVtiOUP+AX+5SjA8H0ivJ32TGY0IQm4JL8frYgQW+ac5UW0vRJcLmNn1JOPwjF5Fc7hbTA9xe9/W4CxlKpu1UZb+XpWaeEANQxg8AHtuK40qrWOW/vjYPowCJkjnft5pwzjQcykApToaCoGnY75uBRMt6CfcUSNbVhO1be5Tc1L2lNvTrhFqhRxrqTrC0mx9KnosFM7NJTdjl9lGXcX74csUSTag1V36xC3ghRaXWeqAc9xSLnbfOyqcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWFrzBQMDcMaNudTOr6Z3mtMkn7F7mXiiRXF4W+mxFg=;
 b=lis8jc3FxUvtkhxZWA3xU6zIXI4kQj3bxBKqs0qYndZSMTenk6mmCvjf7p1aHMwtD01aKIqlpUx+EjKKQJJ95twCZgnwjkABb1ZRX45mi3K4QU9oWY5FJGx3/OqTE36nCE2etF5oqlfGylpUJ2E3Aeuz7UtEgBS0LdFAEZNt27uVYxWANb1bb18VhCVOgDFT/6jkKknLsGSIbNPxp9FQgxf2HXQlVTs/SvoCPqX35+FCbnYr6gV7ETed9hw9ai8gcHQ7TVBg+sulHW07xCt3r4yYYvuqMVlfly0ZRhl6XVXLlMAK28q00dG7ZpASC7gK0cfM1qOHJFMVsnwAVOyeiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR11MB4036.namprd11.prod.outlook.com (2603:10b6:405:82::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 00:40:44 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12%6]) with mapi id 15.20.5458.024; Fri, 29 Jul 2022
 00:40:44 +0000
Content-Type: multipart/alternative;
 boundary="------------Qq0bFqWnh6MQr07qsg8xgpjP"
Message-ID: <128b661b-c1b9-2b0e-c3cd-f9c69c54a98f@intel.com>
Date: Thu, 28 Jul 2022 17:40:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
 <165903725178.21236.3726141006804418591@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <165903725178.21236.3726141006804418591@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0132.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::17) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0c3ab9fa-937f-444e-eaa9-08da70faf8c1
X-MS-TrafficTypeDiagnostic: BN6PR11MB4036:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: woSvxnhFHr2QuhkqwHRxHaA36EGXO+33M1oL3KDtVKSknWrvMBapXPE4pdiyszuJ9Zyt8qP4ExyPZgBN6s3hzmVdTDqXjooo2jsIuWkrMnRVs6h4N4WTNRDITKvbCGAgm8AUqbQXNoia5SsorR2m+tHh0R+ucUO5amMg9PbUzjDtspiHbRBZ3Tn+g+tmoMycTjFQ9vxRV0sWCp9qHsKyK4XjKPU7nH3PN8h8r8s83I6CZOSN+djpdhLKyf9SdtIFbV7ybS5Oud0LapSnXcQYSQDwVbv4ZxWAjKFwctY7ThrnZxPIaQdw16eIeU6K0Jk8PRPEWuW1L/pw00xUBtTppqI0ZUQmHfqF6j/rVeoQIWI/7jMyFHOdLY75UxZoUB13m8JY4Wt3h6l1RXlyHlxYwLb2AoLjdnKfTLaYmFaaZIiA+2fkVaLr7GzXbB1r3CDT9t8tMGRMDvjDjUyMUq9g7AGxNINWfJaxvkp3wUx6/OYjP2H2uS27jlsQEByisolLRTAxqCZDiT1HqWmPseHIRHKKeRSou31WV0eA16G0S+RDGqq7vuLqwKLI36tOKox0U5DpvIYrle0ca4mUATKWVGKEPWWlnRhc3pP5AiSdUSLcbjE/uH3Wanma8RfN2OfC+IuVSEgixuIVPt2IzY1r7KkUcjGIsf8eKoefsMnNrfMlOJ4ndecoAE1Bdw8h0XdeVQUFl8DX3vSk7MFeLutO1JovFNeS/tZVrnCwiETFuHfXGbMtDS8CYHOSdOKWTuNyB3S4HteuKjI6UOjxCLtFDBOGDusnv/HKnU8VmrrCUgoCIzUuXvmA6oDav4loVe6IKAnyI3IZKul+ruXzpBV/4AQuWHcgGXFpfuw5lsa0q34J/+WkZCTK206v0GMlK4OH90wtTzDC8aYDIgdzkeCeXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(396003)(376002)(136003)(39860400002)(41300700001)(40265005)(2906002)(31686004)(86362001)(6486002)(316002)(66946007)(31696002)(36756003)(478600001)(6916009)(966005)(66476007)(66556008)(2616005)(186003)(166002)(38100700002)(33964004)(53546011)(26005)(6506007)(83380400001)(6512007)(30864003)(21615005)(5660300002)(82960400001)(8936002)(43740500002)(45980500001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVh1ZUowQTBBc2JHNXdOOHBMY0FRODdNT3VTTHQ1eVQrNmVkR00xY042NUVN?=
 =?utf-8?B?UlZMcGNWRHVjREFTaXp5UEs3czUzbXBJR0FYR2FaenBDS1J1SmFxR1grU0lC?=
 =?utf-8?B?YjZRajAwcXFtSmJVeXg4dGtPRTVmSlFiZEZ0WlJTS2thVlRDcmY5V3NJcHJP?=
 =?utf-8?B?bzhCMkFicXNFY0FmNXBqVnBySVFLeHZOMTkyWDNkaGJRemlWU2FjNlpHcmds?=
 =?utf-8?B?TkdTamNNbUwwY1hjY0hGUk16OUhYTHd3MXJBc0NzTHZHcGJXSEtQOW1jS0Rs?=
 =?utf-8?B?Ti8zVjFwbFdyK2NJTjVKWm1CV2xJclBBMjNNSS83UU5RNEFnOG81TDdlZmxC?=
 =?utf-8?B?dHZDRlA2Q1pHWWR1a2Yza0p3MmQ2ditlalFZU3ptWDd5bnhRWUdGcy8zOFo5?=
 =?utf-8?B?RjZRSmdHNGZNN2VDQXdEOTVhR1IrOXNxbGxPWWU2eEwrcHlxZTkvZWZ2WkIr?=
 =?utf-8?B?Yk5ZZDdzR1dheUNyQWRDOURrZ0ppdEdLL2JVMEl3aG8wNVdmS3ByYzZ6d01N?=
 =?utf-8?B?SW85QWttS1lYLzNyODhxRlV1Q1BveTRtUG1QZWRYVDU1WHZMZmFrekRtc0hQ?=
 =?utf-8?B?T0dZRUV1SmdNS1pqUkxEcytYcUc0V0pZMTV4UFhXa0xGb2V4eDNzUnFvWndm?=
 =?utf-8?B?NmxaeHdabE9jekVqUW1UcE82WFMxTWJPSnV6OVkxOTE2eW1UZ1JjRXF4WW9F?=
 =?utf-8?B?cFZpQzgzd1U5Y0hYcXhDTmxYY2RTZ2xPUEIvcDBlcHFqbnJvRVVkdmtXdlQ3?=
 =?utf-8?B?a1hHMFNvNExHeGVBSTREbHRUZW1zV05hN0dMeGlyZjdza3kybkFHc1ZGYXBL?=
 =?utf-8?B?SytMNHFKcGNXQmJsTnJYTmZrdWpOUFdRZHdUUGZzblgwZW9INzhCaG9WckZY?=
 =?utf-8?B?bEVwSXJNeWdubFNJN1VBZjFiQ0UwWGF1M3pKVGtKVEg1ZzFmWXJvT3dTQ2F0?=
 =?utf-8?B?V0dTMWhsbUR1eFUyRlE0Vjg1bDAyRXExdnJMMUFCOEY4Z3V2elV5and3Sm9G?=
 =?utf-8?B?MkFhOVVaRmNoQ3pZT28xNGJYRTFvZ3ZpWmJOR1VyYmRUVjh4K2ZnQ1h3Q2lM?=
 =?utf-8?B?dU0zb1VTcFkvS25PY2lNdTJ0ZUh2cnZOTVBoYk1iRmFaV0UzaDNwajhRVHBz?=
 =?utf-8?B?ZFc0dVlsbXhMQjdQVHJNdzIyTCtzNEloRkxweUhPNnR0VVRqRWc2a2ZISUFZ?=
 =?utf-8?B?bmhCeUc1aDMxU3Y5NXRKMlY4ZERaMTgyVUVvZURjVVpBd0VmWEpELzFRdE9L?=
 =?utf-8?B?V2J4c0h3VllMaHdJSDRkUTdxUk8vQWhhckh3UXV1U0ZwM25sWWxoSFFiSWFp?=
 =?utf-8?B?akw1U29OSW1yZU1URE5YVk5YRjJoUXpZWEVpMCtFeE44TDlCcW9jdU5qSlZF?=
 =?utf-8?B?LzFGOFlLeXFCeCtrMWNQUGZuWVEzRVVaMGhPekcvaVE1N0FkWXNqLzhXLzhr?=
 =?utf-8?B?cys0bVRJTEQzVFBGTFhEQmVrQ3o1VUNDMEdjUW9nVUx6U3dGaEZEaDVNL3Fq?=
 =?utf-8?B?WU1SVEhnckN5K0RzNk5YbkFtL016ZWx6Z3I5UWI0VlZEWEQyTmZnMHVqcEpT?=
 =?utf-8?B?UkphQW1FOVhXanY1QTZtNWt0WlFTeDc2S1lrRGp3UjJzUUdUL2dGRE1YMDdp?=
 =?utf-8?B?dWQ5Y3BVRXBoQXl2akgwRjhJYUNMQVE0K0JTR3ZoT3lWOStLY2k2REpsQ25o?=
 =?utf-8?B?SldENnFqUG05QUNBN3RLbGcrS3VWcVlYdHZPR0FPTTVjYTFiMjNMcjdxY3FS?=
 =?utf-8?B?dlg4clpXbW1LZjdRWkM1THVPR1VvUEcrMGEzWUt4c0lzOW9jYjBCQW1BUHZW?=
 =?utf-8?B?b3huQzI4cGxuYkhyb1BHdmVCMlNkY21ZSHVoZ2N5bUV1UGNoVi9oNXh5VmhI?=
 =?utf-8?B?d2VLdEpsZ011eWFheHdUTWQySlNpellkdlI1WXhUTXRNU3RtNGRmcW1ycjNJ?=
 =?utf-8?B?Z1NpOVhpMTUrVGZFdGZpb3UyQUZFNzhnY0o2bUhqcXN1OUErbXg4aFlLdk9X?=
 =?utf-8?B?b1pIbGUvSjM0clUzUDNFdlAwcFpMYlVrS2VDbGFRbHpKN2VrTXAvdzFCWm93?=
 =?utf-8?B?c1RIMlNnanQxakFUOEhxeTgyanlSLzkvVHJZV3dYbkFuaFFFOTBBbGE4Mm9E?=
 =?utf-8?B?R05XVEtaa1JrN0JQOHd0M3VyUjBFaGRzYmhEK2l1SjZOL2EvbVlGL1dvRzZw?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c3ab9fa-937f-444e-eaa9-08da70faf8c1
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 00:40:44.5658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: apucqa8z181Outc0K0W2DFdqZFjpkjm5lk7APvyZ4aNnesA4zi44wWSOIb6Rfnz3OO410XYN1CvCERoFXhb2VUaTohIryTeGYZpmKzuZz0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4036
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmFu?=
 =?utf-8?q?dom_assortment_of_=28mostly=29_GuC_related_patches_=28rev4=29?=
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

--------------Qq0bFqWnh6MQr07qsg8xgpjP
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/28/2022 12:40, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Random assortment of (mostly) GuC related patches (rev4)
> *URL:* 	https://patchwork.freedesktop.org/series/106272/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11946 -> Patchwork_106272v4
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_106272v4 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_106272v4, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/index.html
>
>
>     Participating hosts (38 -> 39)
>
> Additional (5): fi-icl-u2 bat-adlp-4 fi-hsw-4770 fi-kbl-8809g bat-jsl-1
> Missing (4): fi-rkl-11600 bat-dg2-9 fi-bdw-samus bat-dg1-5
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_106272v4:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>       o fi-skl-6700k2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html>
>
Unrelated failure. Looks like the system died right at the start of the 
suspend process. Non of these patches are related to suspend and most 
are GuC specific, where as this failure is on a SKL which runs in 
execlist mode. Also, the previous CI run passed without issue and the 
only changes between the two runs were in the error messages of a GuC 
specific kernel selftest. So seems like a random system failure.

John.


>  *
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_11946 and 
> Patchwork_106272v4:
>
>
>       New IGT tests (1)
>
>   * igt@i915_selftest@live@guc_hang:
>       o Statuses : 1 dmesg-warn(s) 32 pass(s)
>       o Exec time: [0.44, 4.17] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_106272v4 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-kbl-8809g: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-8809g: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@random-engines:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@gem_tiled_pread_basic.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>  *
>
>     igt@i915_pm_backlight@basic-brightness:
>
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3012 <https://gitlab.freedesktop.org/drm/intel/issues/3012>)
>  *
>
>     {igt@i915_selftest@live@guc_hang} (NEW):
>
>       o {bat-dg2-8}: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-dg2-8/igt@i915_selftest@live@guc_hang.html>
>         (i915#5763 <https://gitlab.freedesktop.org/drm/intel/issues/5763>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-hsw-g3258: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o fi-blb-e6850: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-blb-e6850/igt@i915_selftest@live@requests.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-blb-e6850/igt@i915_selftest@live@requests.html>
>         (i915#4528 <https://gitlab.freedesktop.org/drm/intel/issues/4528>)
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#5903 <https://gitlab.freedesktop.org/drm/intel/issues/5903>)
>
>      o
>
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#5903 <https://gitlab.freedesktop.org/drm/intel/issues/5903>)
>
>  *
>
>     igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9
>         similar issues
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-kbl-8809g: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@dp-crc-fast:
>
>      o
>
>         fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>
>      o
>
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>
>  *
>
>     igt@kms_chamelium@hdmi-hpd-fast:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>
>      o
>
>         fi-kbl-8809g: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +26
>         similar issues
>
>      o
>
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>
>  *
>
>     igt@kms_force_connector_basic@force-connector-state:
>
>       o fi-icl-u2: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html>
>         (i915#6008 <https://gitlab.freedesktop.org/drm/intel/issues/6008>)
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>  *
>
>     igt@kms_force_connector_basic@prune-stale-modes:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#4093
>         <https://gitlab.freedesktop.org/drm/intel/issues/4093>) +3
>         similar issues
>  *
>
>     igt@kms_psr@sprite_plane_onoff:
>
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>
>      o
>
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4579 <https://gitlab.freedesktop.org/drm/intel/issues/4579>)
>
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>      o
>
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301
>         <https://gitlab.freedesktop.org/drm/intel/issues/3301> /
>         i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@prime_vgem@basic-write.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         similar issues
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         fi-blb-e6850: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-blb-e6850/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2403
>         <https://gitlab.freedesktop.org/drm/intel/issues/2403> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>      o
>
>         fi-hsw-g3258: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-g3258/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#6246 <https://gitlab.freedesktop.org/drm/intel/issues/6246>)
>
>
>         Possible fixes
>
>  *
>
>     igt@debugfs_test@read_all_entries:
>
>       o fi-kbl-guc: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-kbl-guc/igt@debugfs_test@read_all_entries.html>
>         (i915#6253
>         <https://gitlab.freedesktop.org/drm/intel/issues/6253>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-guc/igt@debugfs_test@read_all_entries.html>
>  *
>
>     igt@fbdev@read:
>
>       o {bat-rpls-2}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@fbdev@read.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-rpls-2/igt@fbdev@read.html>
>         +4 similar issues
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o {bat-adlm-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html>
>  *
>
>     igt@kms_frontbuffer_tracking@basic:
>
>       o {bat-rpls-2}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html>
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o {bat-rpls-2}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11946 -> Patchwork_106272v4
>
> CI-20190529: 20190529
> CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_106272v4: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> f020039f4006 drm/i915/guc: Don't abort on CTB_UNUSED status
> 1defeab68fe5 drm/i915/guc: Support larger contexts on newer hardware
> c97896e7f4cd drm/i915/selftest: Cope with not having an RCS engine
> dd138ded891d drm/i915/guc: Add selftest for a hung GuC
> 9cb1b29adb99 drm/i915/guc: Fix issues with live_preempt_cancel
> 23018e0a3b4e drm/i915/guc: Route semaphores to GuC for Gen12+
>

--------------Qq0bFqWnh6MQr07qsg8xgpjP
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 7/28/2022 12:40, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:165903725178.21236.3726141006804418591@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Random assortment of (mostly) GuC related patches (rev4)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/106272/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/106272/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11946 -&gt;
        Patchwork_106272v4</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_106272v4
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_106272v4, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/index.html</a></p>
      <h2>Participating hosts (38 -&gt; 39)</h2>
      <p>Additional (5): fi-icl-u2 bat-adlp-4 fi-hsw-4770 fi-kbl-8809g
        bat-jsl-1 <br>
        Missing (4): fi-rkl-11600 bat-dg2-9 fi-bdw-samus bat-dg1-5 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_106272v4:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
          <ul>
            <li>fi-skl-6700k2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Unrelated failure. Looks like the system died right at the start of
    the suspend process. Non of these patches are related to suspend and
    most are GuC specific, where as this failure is on a SKL which runs
    in execlist mode. Also, the previous CI run passed without issue and
    the only changes between the two runs were in the error messages of
    a GuC specific kernel selftest. So seems like a random system
    failure.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type="cite" cite="mid:165903725178.21236.3726141006804418591@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_11946 and
        Patchwork_106272v4:</p>
      <h3>New IGT tests (1)</h3>
      <ul>
        <li>igt@i915_selftest@live@guc_hang:
          <ul>
            <li>Statuses : 1 dmesg-warn(s) 32 pass(s)</li>
            <li>Exec time: [0.44, 4.17] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_106272v4 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-kbl-8809g: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>fi-kbl-8809g: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random-engines:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@gem_tiled_pread_basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282" moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@basic-brightness:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012" moz-do-not-send="true">i915#3012</a>)</li>
          </ul>
        </li>
        <li>
          <p>{igt@i915_selftest@live@guc_hang} (NEW):</p>
          <ul>
            <li>{bat-dg2-8}: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-dg2-8/igt@i915_selftest@live@guc_hang.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763" moz-do-not-send="true">i915#5763</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-hsw-g3258: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303" moz-do-not-send="true">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785" moz-do-not-send="true">i915#4785</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>fi-blb-e6850: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-blb-e6850/igt@i915_selftest@live@requests.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-blb-e6850/igt@i915_selftest@live@requests.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528" moz-do-not-send="true">i915#4528</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5903" moz-do-not-send="true">i915#5903</a>)</p>
            </li>
            <li>
              <p>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5903" moz-do-not-send="true">i915#5903</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-kbl-8809g: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-crc-fast:</p>
          <ul>
            <li>
              <p>fi-hsw-4770: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar
                issues</p>
            </li>
            <li>
              <p>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar
                issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-fast:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
          <ul>
            <li>
              <p>fi-kbl-8809g: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-8809g/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +26 similar
                issues</p>
            </li>
            <li>
              <p>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103" moz-do-not-send="true">i915#4103</a>)</p>
            </li>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103" moz-do-not-send="true">i915#4103</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-connector-state:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html" moz-do-not-send="true">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6008" moz-do-not-send="true">i915#6008</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285" moz-do-not-send="true">fdo#109285</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@prune-stale-modes:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093" moz-do-not-send="true">i915#4093</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_plane_onoff:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072" moz-do-not-send="true">i915#1072</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send="true">i915#3555</a>)</p>
            </li>
            <li>
              <p>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579" moz-do-not-send="true">i915#4579</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>
              <p>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301" moz-do-not-send="true">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708" moz-do-not-send="true">i915#3708</a>)</p>
            </li>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-icl-u2/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301" moz-do-not-send="true">i915#3301</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlp-4/igt@prime_vgem@basic-write.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291" moz-do-not-send="true">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708" moz-do-not-send="true">i915#3708</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>fi-blb-e6850: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-blb-e6850/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403" moz-do-not-send="true">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</p>
            </li>
            <li>
              <p>fi-hsw-g3258: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-hsw-g3258/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246" moz-do-not-send="true">i915#6246</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@read_all_entries:</p>
          <ul>
            <li>fi-kbl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-kbl-guc/igt@debugfs_test@read_all_entries.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6253" moz-do-not-send="true">i915#6253</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/fi-kbl-guc/igt@debugfs_test@read_all_entries.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@read:</p>
          <ul>
            <li>{bat-rpls-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@fbdev@read.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582" moz-do-not-send="true">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-rpls-2/igt@fbdev@read.html" moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>{bat-adlm-1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867" moz-do-not-send="true">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@basic:</p>
          <ul>
            <li>{bat-rpls-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send="true">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>{bat-rpls-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708" moz-do-not-send="true">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v4/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11946 -&gt; Patchwork_106272v4</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_106272v4: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <h3>Linux commits</h3>
      <p>f020039f4006 drm/i915/guc: Don't abort on CTB_UNUSED status<br>
        1defeab68fe5 drm/i915/guc: Support larger contexts on newer
        hardware<br>
        c97896e7f4cd drm/i915/selftest: Cope with not having an RCS
        engine<br>
        dd138ded891d drm/i915/guc: Add selftest for a hung GuC<br>
        9cb1b29adb99 drm/i915/guc: Fix issues with live_preempt_cancel<br>
        23018e0a3b4e drm/i915/guc: Route semaphores to GuC for Gen12+</p>
    </blockquote>
    <br>
  </body>
</html>

--------------Qq0bFqWnh6MQr07qsg8xgpjP--
