Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAE96C7319
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BA810E4A9;
	Thu, 23 Mar 2023 22:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8AC10E4A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679610580; x=1711146580;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=vaYCs22E+rA19BOJiUhtNBfpVBINpS+w9vOuK3nDFk0=;
 b=O/HKm/C+TMheFpCoP4mUigXAmZvJaOKnKr4NFAaT5qZQjx0Pt3XgcQfL
 0onmBMLBJBs7M8zrPeghxXoBVwXSRb+NJF1SCmXfGf9mj9O6rA8Ek8dz1
 6Sd3we408O1EnIE0/CZjMOMYrjPZGPi+EmX5dm4UMiM5r/f3SGv5MdTyZ
 aLBL40Juioj8dDRnQyEvnoSBhpP5pA8+QCOVcVCIroVYTYAKpHlWK5l12
 vbAktH5afEv9gRE5GmjzwoABNQIKcd/qKRmRemxcrmoJBc3pOON1CM2Lj
 1+D03I9wMvbIuhXaSbCXhFoE8gfpGkGgZl4+5g02j2uMuvTK+1lMBuHwJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="402221130"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; 
 d="scan'208,217";a="402221130"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="682456140"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; 
 d="scan'208,217";a="682456140"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 23 Mar 2023 15:29:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Mar 2023 15:29:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 23 Mar 2023 15:29:39 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 23 Mar 2023 15:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNk6yTmyQnggZrG4T5bjkQA3VQZ6FIelyntAOPJJUKar4cb981BeRk6DjeF72eMPk1H8KMgJIEh9x67PsNe9R9UbV38MKMSsYr9jXo43gri5ww06wVe8Q/m7ZMA4Q5Uuhk/nnFwqa+7zDLz9kG01QbV5toBzj6VSlBiy+kBNAYuJloRNv+O//mzW1jpr4ce/eT5lmweIrQ6DapRMJicSsQ8Apm8J0uqrEl+rgIh5SkXPqI/+GjOxlWfYe6XnJe6XvCd1TEB6f+OFV+WPUYO4nK931yAr8/eD9gXOTerG8s/bBix9QjOVd1k0zdzn+TaqMzxIqhbqT3slsjR3lza29w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j3KP4JaETCQt7vQvaP+0txh6kLX4KVVJCGzxHgDdNaw=;
 b=V+eiberV3Wg/oLLkR+ed2ZObcjDGtxbXd5bbcjXgds0tuh9Y9fQJ9fi6mUtr9Q7LicADqOSSj6boNU5WZEFAsH0b2RVkIlGyfqr2zb6xZ4UMOxY2E8QApt5zcRXIsCSodPREcM2xkiBaAUu9RXm2ukdmN/PG6i0wc47Qtv7x6TgyEMX3/9c4jKVIRpi0jZQYsUZHC7VXZ8o21/xtfWLX/+dRSFH2KhFMSBVfeVsvBkUEBHNrSMEHTUQJ38c8PJtj/uFmhJP5+wHIv+3zV21UWMy10y3v6JRyvY8HDS5CICh3uYh1eu8UKnwN7/Bj2GisWGSQFukexMwKC7XkRC9B6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Thu, 23 Mar
 2023 22:29:28 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::5399:6c34:d8f5:9fab]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::5399:6c34:d8f5:9fab%6]) with mapi id 15.20.6178.038; Thu, 23 Mar 2023
 22:29:28 +0000
Content-Type: multipart/alternative;
 boundary="------------RW4yslElGvUaPO0hduMFTfwG"
Message-ID: <6a4671d5-1acc-fef4-a92c-243a1a0ca0a2@intel.com>
Date: Thu, 23 Mar 2023 15:29:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20230316220632.3312218-1-John.C.Harrison@Intel.com>
 <167953994437.6630.9155841610442978897@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <167953994437.6630.9155841610442978897@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::25) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW4PR11MB7104:EE_
X-MS-Office365-Filtering-Correlation-Id: 80afba40-4074-4f42-8752-08db2bee106b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gDV18+fv9t6qoRZswnUu/UZKbiCllV5gzZsx9GukbOpwYfF9Ri0cujDO1KEjGCDZ7Qr2v0tgQYR4psaQDPPttsyqrBVR5jXu64UozB9zgnzmH3TT1CS8e80N7zBzlvRhKinSR8pqIUnzefD7l9QPugvT7EZu8ukeduH2UtWj2QEBYgezlQdq86QnLxRFCeMlE9ELXej4tz4WtOoBP7LwDsgh8+hbKq+A66yqVFdiWJ3Kehss5nGDN5VAgaDyHRVXmOMYDrbZ1vKQple0eeAA4B6EZQ05OfvfhhJk+jTb9H2AC5/Xr9UQPoNdXhKTrSxA0RW6/815KLXvpX2bEktgI2bHMSyjWzlGjXFS5b8bWxoG9AF7Fa29uGlkeXKB3RHlu9Ayl00qI/++xEC1TDxTju594yH6H9Jm70DiNrVaHAKh3KiYUtHmzIYupLEpnCHsNR73wk8uB8fhKKHVRMgC6akEO/gHCIDNySXt4jeLuFy7cMV9FOOG4yr9Odp3za7vtHC5Tz+PjvOInjMMHC19g+4ETDb1oHJ0qpPiUQmFBuFKUcNstKhX9EwWtsYx37eaMFawtewUsQuNVS7leozDHyaSSG6uFb74NG8dhTzUovfjxLfEIoxwCrDAgUkU8C1d5b6Q7bE1JmXH74B+Z9xfG7gErnMkw9GzSg8h4FWI41w1q62p0sxfvKFosHVaAgS+I4AVqKqDnlS/0NaWurpjqxhyhB8ql9y3JJn3TkMRQt91SOt/khS95htu0OTFt4vE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199018)(478600001)(21615005)(66556008)(6916009)(66476007)(30864003)(66946007)(316002)(5660300002)(41300700001)(82960400001)(8936002)(26005)(40265005)(53546011)(6666004)(33964004)(6512007)(6506007)(2616005)(186003)(6486002)(83380400001)(966005)(31696002)(86362001)(36756003)(166002)(38100700002)(2906002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEZkdVk1NkplbVk1d3Y4cXgxZnlHU1pPUnFabW1uUXM5bEgzbVJzUFZZVHgy?=
 =?utf-8?B?OXVDd0NQUEU2cEc2REJJcGxLdHE5NVZYSFBIWlRiUDNsdTl4emZqM29jL0R4?=
 =?utf-8?B?YWNVdTljUjdiK2tZaEM2cElHK2pSTjJUMWxyYzFCODRYZkNXazlJZmFiSXNU?=
 =?utf-8?B?UlVVdWE1bUYvTXBDd2hKWXluaGc1L25rUjEyWGE4TXhZd0xHUmFrRkZmYVZG?=
 =?utf-8?B?Q3JydUFDUmNxVkVRQnNPdWlPYlRaOGIxYklpK2NTRTFrcW1RQ2tvUzk1STc5?=
 =?utf-8?B?VXE0MmJ1a2tZR0NJZHpFbWxWczV2UmJva2psU0NJc25XbTRKdUsrYWU0MG5L?=
 =?utf-8?B?VGR0VUVDTDBJNy9SMGUzM3R4TFQzaVFXcGhqUDZ2YUViNDgzTnhPUkhYSGxx?=
 =?utf-8?B?dXFXV0V4NnFIOWZSVHNIMFpBRHJjWEozZHZZQUMvOUw4aW1KMjJQK3A2Mll5?=
 =?utf-8?B?ZUQvY2tscWp2L01ZUlNyTjhXdU9xR3o5WVZHTlhCV3BSeGFFQmE4bTA2Ry9Y?=
 =?utf-8?B?QnVRaUZnOXUyL3pJVG1mYkxrYkpaMjI2azV1NDh6Y0lwd21rMW1xTnpRek50?=
 =?utf-8?B?MTUwVkI0c2w2UDhWbUx5N3BITTcxZG1idmNFR0MzdUI5Z2EwZk1CR3lPNG8x?=
 =?utf-8?B?bXhQTGhTZFdsS3dZYUE3TUhaNkxmZUc3YmthM0FBN0hRM1d2aTNPdW0wVmtv?=
 =?utf-8?B?QUVyVllEeVZ2eWJ1WW8rT0F1N01WTk1qallXeGFYMmhuamVKTWdjVWpsUlYw?=
 =?utf-8?B?andUcVdrZEY1dWVvRjFlVFRkSy83Tll3c3c3M3JDZGNZRVV3aUJ6d09LMUxy?=
 =?utf-8?B?U3Z1Rmw3djR1dURDZTRCcVJmVG5sbHRNNEZPMmZ3UHdWS3pzS0VxZlJKem9V?=
 =?utf-8?B?NUg4LzhpSGtsV2RNMkQwQW1zOWxZdmFUMGM4QUoydndEeUVUdmxZeDdSZm5J?=
 =?utf-8?B?ZWdkTnpwYTJRZjBXMEJoWmdQOUJTZ2JXMU1KSEtlbUduVVU3eHpJcjM3N3Rz?=
 =?utf-8?B?NEswS0F3OExjLzRza0oyY1d4RjA3Tkx1QkNCVEZILzJsejdyOFFQVUtZekVk?=
 =?utf-8?B?RDVvaStoZjVjdkpEaWx0d0d3YUZ3NEt5bWV1eFoyQzRBQmZ2V0xsdDBUVFUw?=
 =?utf-8?B?ZDFZdWJadlIrUTZSY1kvRWREWEtmVTFOcFhMTnR1eXhqTkFBYmp5ejRQVDJY?=
 =?utf-8?B?RE81Vk5xaEJWckxMQXpVQ1l0UDcxckR4VGVjTDh2WXcrdG45Mk9WVC9VT2ZT?=
 =?utf-8?B?VndGOXZXZjNLcVA3cDJ2NHVTRy84V1lrK0VmS2UrTEJ4Q09iZnRjdGIxYmIr?=
 =?utf-8?B?Z1ZlcTdWU3JCcXFPSnBXcWlKaVcyTE1RS2xKcVlGT0R2MEd6cWlJcnExb1Zy?=
 =?utf-8?B?VDM2dWRFU0FscDMvcDB6N01mNDFSa3djTTdvQW0yU1hGTG9GZ2hiemhzUkZ0?=
 =?utf-8?B?TldpaVFQcC9yVCtINy92UFlqWTNPMVpkL3RxeWd5VHMzWE8rbzJrWWFCc2Uz?=
 =?utf-8?B?WUlOdXpuY3IxTDVUbmhiV0pKYm8wTUNsUU9DNTZXSldZVGY2Y21uSVhlSVI3?=
 =?utf-8?B?dUFyazF0bURXb3Bubld0NlhXSFYwTWxZODFKRDdmRlI1MTZkaUpMdGVDTHg2?=
 =?utf-8?B?UW5FWmZRVnA4QVJqMzh5YXhMd3gyU3oxalB1aWx6OUdsMG9tbVRRY3VaMG1r?=
 =?utf-8?B?MWoxaW93VjZodUx1cXJtL2VEMFhuRGpxWmxVZ3hVZldUNXN6ZFZackpDMmpS?=
 =?utf-8?B?d0xkSkdIdDRtYnlHRGlibmliSWdTTUUyZzNGOUNoY2RHNVpKRkVPcVBDVm8r?=
 =?utf-8?B?UnBWOHRqMHFGRjExQ1lnNWRQMFBZRWRnb21oZzlqZk9SNkd2ZkdZMklyaXJN?=
 =?utf-8?B?RlFMWjYyb2t5NTN2a3ltUkJCVXJFVHUvcTZWR3JtdGV5ZUN3SExqUjB5Qnc2?=
 =?utf-8?B?anp1b2gwNkd4NkRPSVBKaVZaOUZPRTNXbVBqTElsdVJ6MS80NUtFckdCbEdy?=
 =?utf-8?B?K1ZheGIxY256dE9nTjhyOG50WHVaWmJERDF2dW0yK2tWK3p4TW1UYWNpVHhk?=
 =?utf-8?B?NHFRdG1lRzlUVjQ0clkrZFNCRlBCUEFmSWFIRTRLS1lrOHF4dk03RDV6ZGZ4?=
 =?utf-8?B?ZjZiK3dFT1RpWkdrdTlIZWJlR3czYXdQT2JmbE8zVDZ2bHVoRnhWZW1BSm5o?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80afba40-4074-4f42-8752-08db2bee106b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 22:29:28.3094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zCObZI1r4eGXBtTaUboJadVADSxslJmGflpUEP9xyNTR86xCDTujlCmiG5Qmd9biH/uqVm4pWavFJ9H1yugPfYlq4tW91dgsD1CVOif2S/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW1w?=
 =?utf-8?q?rovements_to_GuC_load_failure_handling_=28rev3=29?=
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

--------------RW4yslElGvUaPO0hduMFTfwG
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/22/2023 19:52, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Improvements to GuC load failure handling (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/114168/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12902 -> Patchwork_114168v3
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_114168v3 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_114168v3, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/index.html
>
>
>     Participating hosts (37 -> 35)
>
> Missing (2): fi-tgl-1115g4 fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_114168v3:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
>       o fi-hsw-4770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_114168v3 that come from known 
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
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-skl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/fi-skl-guc/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/fi-skl-guc/igt@i915_selftest@live@hangcheck.html>
>         (i915#8073 <https://gitlab.freedesktop.org/drm/intel/issues/8073>)
>  *
>
>     igt@i915_selftest@live@migrate:
>
>       o bat-atsm-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-atsm-1/igt@i915_selftest@live@migrate.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-atsm-1/igt@i915_selftest@live@migrate.html>
>         (i915#7699 <https://gitlab.freedesktop.org/drm/intel/issues/7699>)
>  *
>
>     igt@i915_selftest@live@slpc:
>
>       o bat-adln-1: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-adln-1/igt@i915_selftest@live@slpc.html>
>         (i915#6997 <https://gitlab.freedesktop.org/drm/intel/issues/6997>)
>  *
>
>     igt@kms_chamelium_hpd@common-hpd-after-suspend:
>
>      o
>
>         bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>
>      o
>
>         bat-adln-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc:
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html>
>         (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>)
>
>      o
>
>         bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html>
>         (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_suspend@basic-s0@smem:
>
>       o bat-rpls-2: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html>
>  *
>
>     igt@gem_exec_suspend@basic-s3@lmem0:
>
>       o bat-dg2-9: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-dg2-9/igt@gem_exec_suspend@basic-s3@lmem0.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-dg2-9/igt@gem_exec_suspend@basic-s3@lmem0.html>
>         +3 similar issues
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>       o bat-dg2-11: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-dg2-11/igt@i915_pm_rps@basic-api.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-dg2-11/igt@i915_pm_rps@basic-api.html>
>  *
>
>     igt@i915_selftest@live@reset:
>
>       o bat-rpls-1: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-rpls-1/igt@i915_selftest@live@reset.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#7981
>         <https://gitlab.freedesktop.org/drm/intel/issues/7981>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-1/igt@i915_selftest@live@reset.html>
>  *
>
>     igt@i915_selftest@live@workarounds:
>
>       o bat-adln-1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-adln-1/igt@i915_selftest@live@workarounds.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#7467
>         <https://gitlab.freedesktop.org/drm/intel/issues/7467> /
>         i915#7981
>         <https://gitlab.freedesktop.org/drm/intel/issues/7981>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-adln-1/igt@i915_selftest@live@workarounds.html>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:
>
>       o bat-dg2-9: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375> /
>         i915#7932
>         <https://gitlab.freedesktop.org/drm/intel/issues/7932>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html>
>
>
>         Warnings
>
>   * igt@i915_selftest@live@slpc:
>       o bat-rpls-2: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-rpls-2/igt@i915_selftest@live@slpc.html>
>         (i915#6997
>         <https://gitlab.freedesktop.org/drm/intel/issues/6997> /
>         i915#7913
>         <https://gitlab.freedesktop.org/drm/intel/issues/7913>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@i915_selftest@live@slpc.html>
>         (i915#6367
>         <https://gitlab.freedesktop.org/drm/intel/issues/6367> /
>         i915#7913
>         <https://gitlab.freedesktop.org/drm/intel/issues/7913> /
>         i915#7996 <https://gitlab.freedesktop.org/drm/intel/issues/7996>)
>
These patches only change GuC firmware loading (reporting of errors and 
longer timeouts). None of the above issues are related to GuC firmware 
loading. Therefore, they are not caused by these changes.

John.

>  *
>
>
>     Build changes
>
>   * Linux: CI_DRM_12902 -> Patchwork_114168v3
>
> CI-20190529: 20190529
> CI_DRM_12902: c8333f1c10ebbdaad7a642cc66041b4f90bc81be @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7211: c0cc1de7b2f4041ca68960362aa55f881d416bac @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_114168v3: c8333f1c10ebbdaad7a642cc66041b4f90bc81be @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 247aa4568644 drm/i915/guc: Allow for very slow GuC loading
> 0c9bcdd1e7e7 drm/i915/guc: Improve GuC load error reporting
>

--------------RW4yslElGvUaPO0hduMFTfwG
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 3/22/2023 19:52, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:167953994437.6630.9155841610442978897@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Improvements to GuC load failure handling (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/114168/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/114168/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12902 -&gt;
        Patchwork_114168v3</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_114168v3
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_114168v3, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/index.html</a></p>
      <h2>Participating hosts (37 -&gt; 35)</h2>
      <p>Missing (2): fi-tgl-1115g4 fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_114168v3:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
          <ul>
            <li>fi-hsw-4770: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html" moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_114168v3 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-cfl-8109u: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334" moz-do-not-send="true">i915#5334</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-skl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/fi-skl-guc/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/fi-skl-guc/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073" moz-do-not-send="true">i915#8073</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@migrate:</p>
          <ul>
            <li>bat-atsm-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-atsm-1/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-atsm-1/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699" moz-do-not-send="true">i915#7699</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@slpc:</p>
          <ul>
            <li>bat-adln-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-adln-1/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997" moz-do-not-send="true">i915#6997</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
          <ul>
            <li>
              <p>bat-rpls-2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send="true">i915#7828</a>)</p>
            </li>
            <li>
              <p>bat-adln-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send="true">i915#7828</a>)</p>
            </li>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send="true">i915#7828</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
          <ul>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a>)</p>
            </li>
            <li>
              <p>bat-rpls-2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s0@smem:</p>
          <ul>
            <li>bat-rpls-2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html" moz-do-not-send="true">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
          <ul>
            <li>bat-dg2-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-dg2-9/igt@gem_exec_suspend@basic-s3@lmem0.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375" moz-do-not-send="true">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-dg2-9/igt@gem_exec_suspend@basic-s3@lmem0.html" moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>bat-dg2-11: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-dg2-11/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-dg2-11/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@reset:</p>
          <ul>
            <li>bat-rpls-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-rpls-1/igt@i915_selftest@live@reset.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983" moz-do-not-send="true">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981" moz-do-not-send="true">i915#7981</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-1/igt@i915_selftest@live@reset.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@workarounds:</p>
          <ul>
            <li>bat-adln-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-adln-1/igt@i915_selftest@live@workarounds.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983" moz-do-not-send="true">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7467" moz-do-not-send="true">i915#7467</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981" moz-do-not-send="true">i915#7981</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-adln-1/igt@i915_selftest@live@workarounds.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:</p>
          <ul>
            <li>bat-dg2-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375" moz-do-not-send="true">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7932" moz-do-not-send="true">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@i915_selftest@live@slpc:
          <ul>
            <li>bat-rpls-2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12902/bat-rpls-2/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997" moz-do-not-send="true">i915#6997</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913" moz-do-not-send="true">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114168v3/bat-rpls-2/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367" moz-do-not-send="true">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913" moz-do-not-send="true">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996" moz-do-not-send="true">i915#7996</a>)</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    These patches only change GuC firmware loading (reporting of errors
    and longer timeouts). None of the above issues are related to GuC
    firmware loading. Therefore, they are not caused by these changes.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:167953994437.6630.9155841610442978897@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12902 -&gt; Patchwork_114168v3</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12902: c8333f1c10ebbdaad7a642cc66041b4f90bc81be @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7211: c0cc1de7b2f4041ca68960362aa55f881d416bac @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_114168v3: c8333f1c10ebbdaad7a642cc66041b4f90bc81be @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <h3>Linux commits</h3>
      <p>247aa4568644 drm/i915/guc: Allow for very slow GuC loading<br>
        0c9bcdd1e7e7 drm/i915/guc: Improve GuC load error reporting</p>
    </blockquote>
    <br>
  </body>
</html>

--------------RW4yslElGvUaPO0hduMFTfwG--
