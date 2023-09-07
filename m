Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43958797F29
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 01:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D1710E839;
	Thu,  7 Sep 2023 23:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EE9810E837
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 23:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694128586; x=1725664586;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Jatxg+qUsikqKGmd17g+dehS81PBs/wAo1RNMlwrG8E=;
 b=ksbwEaUe6vEQsNOWJAn1+fTswEBU7/pCIYQLveC9HH4ieK1hk+wDd03e
 PYVWo2vPeBGCtwvwk2yP2E9dJcgKblpItY7iR+U9sclLocfK7gs9WD9un
 VYwfpzhuXSm7zXm5J4d0GslAJMhvVOGMSZC0cPPrlJg0aB91PGYAGbHKe
 9Tp3bect7MEuhPc5v8bxWuMoNMeLTQJ2246qwdntrYnJIemSzylsEzuN5
 Y3maMf8Ys1cBOdFHHC17dwD/wLP9voZiG1vDxyMMz2tW0eIxcPahqgymA
 eSnem3HKPLE9XFrDvaYhYWlSjQiJcJbJNUdYs9dqBOHFZ3LYHInFUi2Kw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="443931428"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="443931428"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 16:16:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="832403276"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="832403276"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 16:16:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 16:16:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 16:16:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 16:16:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 16:16:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRSCZmEdzfzFuj9o3hGZr/zb22MEMa+RJ5GWbNK2hNhumgIKPwl32Vsq/II+hJaITxZ+MDNdmNg0E+fFPYvEVI93ENr8+WkvyhGPVjKKAcDBZ8sDTZriTs7aC50MUbpu04t1Yu5LiraGQ3SerFmmHPx7VCOZSaNSU4gkIXqOopTGM3Tp+z2NWpM9XrKD4DWz/daFqeZ+KI1ZB9xPTTiqCw6Zbsgbef88KnfVda0hAlOjKsz4uCra3hjECQ15PwCy/oP7TNoP/tiEKgUMPmd1cu0J9jX2v/37MYMB5WRD9Js6l7yzwIpzAIL+2GiUNQbvqe4+dNiYcz1tBpLVQ6YgCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6TGd/HXEOOA2F4D0alzTfcgu1zGMlqfPLoblB+CjyIk=;
 b=b5DXz5nrIHftLPkZuzxuJHDEU9Euibo/UQ83EXzPD+lYRSErTieuiu3ZDWNjqwHuR/zXIGw3Gcft1GpnGjWOcQGEZRXh9NiiIKYPhV5JmIP2loH3JsXlAd+xZX8hiVBk1uhfQGH3QROvllac9KwQwpGcQlxLonMRqLYrM9hrfcPqbSci9b3O2JePbDuXaFjomUEa9xqsdZnxMKvYAgwdY81nUfQqSyNU5e4LGMNdb++CpiHSHomAGuGg3EeptdgfvmKJVnAZVOuZAKRpUtUCe/aDHfin+fFYqMDRsVpi3XHEL6KITiVVJyTb/0IsAFdn/i2aYXZqugqDTIgClaFEXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 23:16:03 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 23:16:03 +0000
Date: Thu, 7 Sep 2023 16:15:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
Message-ID: <20230907231559.GS2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230901045700.2553994-1-shekhar.chauhan@intel.com>
 <169363695002.7473.5402954161628951768@emeril.freedesktop.org>
 <BN8PR11MB3620B0B8E93FF6980184D2B0F7EEA@BN8PR11MB3620.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <BN8PR11MB3620B0B8E93FF6980184D2B0F7EEA@BN8PR11MB3620.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0163.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::18) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB7080:EE_
X-MS-Office365-Filtering-Correlation-Id: 394d294e-9baf-4a02-2a01-08dbaff867a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HYw7bkJA8DqPmRdambZI0kEql3PCAk0DXXqWTD9scKTuQ4IG2XGXWRI+l2aSgCFKpjJYZMPOHYhBvNLP+XBiH7lEihs9QNHm7acY2vsukxtZ6EwRDzTBe2fG7zvkqv8eUwTTtc/xA8ryxA/Kk4ZG09RLiDiU+Ck0cRYqoFoo+BF6N49wgm3alBrLsRPRSJanVf8sGjf/co0lhqA72kk0A1IdNazYCeP1nVbKg41+jTC156SvqR88HPf3YP9CiMQ6WD+CGzaZbxbD4TQqJ52XBAv2FOnLg1d+K9KNmMFtRCOpf37gOBTQPwuwJ6BPHNRTKNlKQKHWkSmiYP64CZy5XPC4Ik0Nm3kLpsD6jvTx79tOLFpQ/xuUcnxQaU0mmdWa4G5TnQ6Box9z8ohZoHRXJRlKYZ9sa113fWgFBddWhb/agR5FedZxDpYhGVPfWAZccOP5mNa5ePqwVWNN1M5nRnU+Hs8Hvb83vhsVoT5/NLKuQ+gNDOr2pn8TJPx5HJNNOEoDLmVTDzrZMskBleaPhizZlkgV5kBfjC9Bnjj0o4+lxXAKIg4d+ydpqsLa+Ik0RQye5SiscfRK6ynH3x3aRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(396003)(376002)(366004)(186009)(1800799009)(451199024)(6506007)(6486002)(6666004)(53546011)(966005)(83380400001)(6512007)(1076003)(478600001)(2906002)(26005)(66556008)(41300700001)(4326008)(5660300002)(6636002)(8936002)(66946007)(66476007)(6862004)(30864003)(33656002)(38100700002)(86362001)(82960400001)(316002)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTA1eGF2QWZZcWpDYmdtTDhrNVpXNzhaWndyckZXdzJLSUQ4YXdzSjdqRmZQ?=
 =?utf-8?B?WmNFdDZtLzR6WFhKU1k3R0VCak9ZL3NLM0p0VkFnWGd0T3RiYVhjRzlldTF6?=
 =?utf-8?B?SGdlZS9YRHdqTzIvVDF2bE9jc28vc3RLS3V5N3JsVTZDRnZjbE5PNjcycDI2?=
 =?utf-8?B?UWlrWkI0MEtvOVZoZGExcTBzMUZHZDVsZm81WnZ0ZkZzQWpKNUd1Rmx0T28v?=
 =?utf-8?B?MFVsZ09icFBQOXQwQjNRcEtBY3VQQUNrQk5VRkJSc1FVRHl1RVlOSTNjQWRv?=
 =?utf-8?B?dVdnY0JLN2lJQkEvYmp5elNmd2k2dVpZSDk0c2dMSC9RaHEvaFVTWk5mSUZK?=
 =?utf-8?B?TlQvS1BUQ2tvdVY1ek1iMENhQ2xQU2U3L0wvdGdtRU1pUnBVVDlwSE5yR0Iz?=
 =?utf-8?B?Wk93eFQzUkcxL0JZekN1aW15b1hjekF4UkZQM3JZUmJwWC8wVFVJSUZRVEI4?=
 =?utf-8?B?cWtWd3NwbTNkTGw4YzRFVUxLSm5sVEZYNGZ4bVFXd0h1WVhiUWtsZVQ5R0E3?=
 =?utf-8?B?YVBHSThEc0NvaytpZ3VYYVVjNHZMeG42ZmRLMFFCcHoyNklOVlNSSHB1aTF3?=
 =?utf-8?B?dkJLckZxZTFwUm9aVHpKOVJlSTFTNXYvdUxmY09PTDBuWU9VRElZUGdSUCsz?=
 =?utf-8?B?VGxnTm1jbndWYTd6ZFdpSFgrdVRUczU0TnQxcWtuOElyREsrakVRUWZnKzRo?=
 =?utf-8?B?cXdnd1hiSjRjenUxVXFwbW9XOUF1b3lLU0lKa1JmYUZHbGJEZURqcHlQaE9E?=
 =?utf-8?B?RUZRSHNXWUpwcVVielBvTnVyNm9yQ05neUt1NWdiV2d4TmQzQ21SRlhZdVVH?=
 =?utf-8?B?QWc0RlpmczlnY2Nra3JMYmpjN0s1dW8rZ0ZCWlgrU0ZHMHJ3eHJ3SE9VSkRT?=
 =?utf-8?B?R1JxSUdmSnh3NDY5bEh5dkFzS0xpWDVyL2RQWGRNNEg5bVYrempRNFRpMlBa?=
 =?utf-8?B?bUVVeWVBYURhKzdJbTBYUWlkdjBXWjFlREI4c2RVd1dmTTBUYlMrWm1keXhM?=
 =?utf-8?B?ZWk5SWJkNUxoZjFLbG9wYmJCdVJhTXprY0h3ZkR5em9KMFZ1dlIzY3VwRVl4?=
 =?utf-8?B?U1ZBa2dhNmhTT1VZR2p6QnpTZVFlQ0Z2VUVoazQydnkwa3Y2R0JjcElXKzk3?=
 =?utf-8?B?RjZjSWZJL2lXYVJPbEJLZVdTaEVYU2JjUk9GQTkwNGplb0ZQcEVKemg1dCsy?=
 =?utf-8?B?RHdyZThSUnpqMjNQbVNIakMzVWY5YnVzekhyVFhDVFJnNVU5UGoxQ0RRaE5z?=
 =?utf-8?B?NHpmRXh4OFJ6b3RtdGdoWUtDci9RL0VaZkZPTXZsY0lGV3JCcVdqb3pKeVpt?=
 =?utf-8?B?QldHN3Y4bHdyOGI5dzE0WUdtd0dNRVUzZ09LQXJNR2xISUMxWGxzZVlra1c1?=
 =?utf-8?B?blNQYUpRa3A1eGFvT2VvdnM3aXVNQU9QZTJpTnZRaFJKSGh4Y0dZVkFTRkhi?=
 =?utf-8?B?K2FtM0F6MmJUem1LZThTcUt1OWlySzU2czZqUkdLVGY0U2RRZXpKZlhlY1la?=
 =?utf-8?B?YVUrSm9PbENiRnZMN0lsR2VSME4yeDdpNElDSHdFTFhWNFFJcm11aTFodklS?=
 =?utf-8?B?a095VWJNdjYwWlNRdVlXMitkK0w5U3EwdVFMYjd5WkZLWEpwWnY3VUN2eXlG?=
 =?utf-8?B?eDl1QllNaC9Udk9GS3RmUk1BOFNyWVhTdGwrOEJCcjd5d1pQbGd2dSthelFn?=
 =?utf-8?B?eDZrNUVDQXA0K2YrVldxZVd1bS91ZklWb01WVVAyMkhSUGFYT3V2OGIvQTNN?=
 =?utf-8?B?ckRaM054Y1RkQTdOQnkwLzhhV1dST0lKWWZHUGdWR3o1akZxL2dvUjVORWI0?=
 =?utf-8?B?b1FRaGp6eHpYUUZSN3Jyd0ZRdUFDOEJpeEZVWTJLd0tmM3NTb2EzUlR1S0cv?=
 =?utf-8?B?V0I5REZnNGdxVWwxNjhvci9Fb3JZUU9wYWhaUXlIWHQ1R1pYaEYzU2Jac0l4?=
 =?utf-8?B?MU82S2locGZ6NXVtcHUxdUpCc3l4RFdqYkRBOUhrSkEreUZ0bmtQUSs1QVJG?=
 =?utf-8?B?NkxIUElFQnBCcVk0eEx0ZW1EQjgxNW9TS1dwLzNIQktiVEJFWDNiazg5WFov?=
 =?utf-8?B?akJGNU14a2U5UGlhdTB1M3Blb1VLWHBiaDkxMFZhRUVORm95aUQ1WG9BeGdy?=
 =?utf-8?B?aTJrbXdwNXpJNnh5eEkydjAwUkYwSDhMNjFHcklkMmJMSjFZMVVIQXlPQVRt?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 394d294e-9baf-4a02-2a01-08dbaff867a9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 23:16:03.4033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hRQtHBIGyexfMFi5uJrdS2/Nx3jddEmuZJSpWMO/W8kTovLJwZiuoLcUOc40HPLpQylvTOVkCmysZu8PX+YRlieMJXfkq+YoAZ063eh3RbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Add_Wa=5F14015150844_=28rev4=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 04:06:52AM +0000, Chauhan, Shekhar wrote:
> The failures presented in the Fi.CI.IGT are for RKL and DG1, which the patch doesn’t target. At the same time, the two failed tests are both related to display, which shouldn’t be impacted by a GT workaround.
> 

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> -shekhar
> 
> From: Patchwork <patchwork@emeril.freedesktop.org>
> Sent: Saturday, September 2, 2023 12:13
> To: Chauhan, Shekhar <shekhar.chauhan@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: ✗ Fi.CI.IGT: failure for drm/i915: Add Wa_14015150844 (rev4)
> 
> Patch Details
> Series:
> drm/i915: Add Wa_14015150844 (rev4)
> URL:
> https://patchwork.freedesktop.org/series/123074/
> State:
> failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/index.html
> CI Bug Log - changes from CI_DRM_13588_full -> Patchwork_123074v4_full
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_123074v4_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_123074v4_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (9 -> 9)
> 
> No changes in participating hosts
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_123074v4_full:
> 
> IGT changes
> Possible regressions
> 
> ·         igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html> +1 similar issue
> 
> ·         igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html> +1 similar issue
> Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> ·         {igt@kms_dirtyfb@dirtyfb-ioctl@drrs-dp-2}:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-dp-2.html> +1 similar issue
> New tests
> 
> New tests have been introduced between CI_DRM_13588_full and Patchwork_123074v4_full:
> 
> New IGT tests (26)
> 
> ·         igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-offscreen-64x64@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-256x256@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-random-128x128@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-random-128x42@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-random-256x256@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-random-256x85@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-random-64x21@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-random-64x64@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-rapid-movement-128x128@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-rapid-movement-128x42@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-rapid-movement-256x256@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-rapid-movement-256x85@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-sliding-128x128@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-sliding-128x42@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-sliding-256x256@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-sliding-256x85@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-sliding-64x21@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> 
> ·         igt@kms_cursor_crc@cursor-sliding-64x64@pipe-c-dp-1:
> o    Statuses : 1 pass(s)
> o    Exec time: [0.0] s
> Known issues
> 
> Here are the changes found in Patchwork_123074v4_full that come from known issues:
> 
> IGT changes
> Issues hit
> 
> ·         igt@api_intel_bb@object-reloc-purge-cache:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html> (i915#8411<https://gitlab.freedesktop.org/drm/intel/issues/8411>)
> 
> ·         igt@device_reset@cold-reset-bound:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@device_reset@cold-reset-bound.html> (i915#7701<https://gitlab.freedesktop.org/drm/intel/issues/7701>)
> 
> ·         igt@drm_fdinfo@busy-check-all@bcs0:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@drm_fdinfo@busy-check-all@bcs0.html> (i915#8414<https://gitlab.freedesktop.org/drm/intel/issues/8414>) +4 similar issues
> 
> ·         igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
> o    shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html> (i915#7742<https://gitlab.freedesktop.org/drm/intel/issues/7742>)
> 
> ·         igt@feature_discovery@display-2x:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@feature_discovery@display-2x.html> (i915#1839<https://gitlab.freedesktop.org/drm/intel/issues/1839>) +1 similar issue
> 
> ·         igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html> (i915#5882<https://gitlab.freedesktop.org/drm/intel/issues/5882>) +9 similar issues
> 
> ·         igt@gem_ctx_sseu@invalid-args:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html> (i915#280<https://gitlab.freedesktop.org/drm/intel/issues/280>) +1 similar issue
> 
> ·         igt@gem_eio@reset-stress:
> o    shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg1-17/igt@gem_eio@reset-stress.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-15/igt@gem_eio@reset-stress.html> (i915#5784<https://gitlab.freedesktop.org/drm/intel/issues/5784>)
> 
> ·         igt@gem_exec_balancer@bonded-pair:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gem_exec_balancer@bonded-pair.html> (i915#4771<https://gitlab.freedesktop.org/drm/intel/issues/4771>)
> 
> ·         igt@gem_exec_balancer@invalid-bonds:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html> (i915#4036<https://gitlab.freedesktop.org/drm/intel/issues/4036>)
> 
> ·         igt@gem_exec_balancer@sliced:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@gem_exec_balancer@sliced.html> (i915#4812<https://gitlab.freedesktop.org/drm/intel/issues/4812>)
> 
> ·         igt@gem_exec_capture@pi@ccs0:
> o    shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-6/igt@gem_exec_capture@pi@ccs0.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-3/igt@gem_exec_capture@pi@ccs0.html> (i915#7765<https://gitlab.freedesktop.org/drm/intel/issues/7765>)
> 
> ·         igt@gem_exec_endless@dispatch@ccs0:
> o    shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-5/igt@gem_exec_endless@dispatch@ccs0.html> -> TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-7/igt@gem_exec_endless@dispatch@ccs0.html> (i915#7016<https://gitlab.freedesktop.org/drm/intel/issues/7016>)
> 
> ·         igt@gem_exec_fair@basic-none:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gem_exec_fair@basic-none.html> (i915#3539<https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852<https://gitlab.freedesktop.org/drm/intel/issues/4852>)
> 
> ·         igt@gem_exec_fair@basic-none-share@rcs0:
> o    shard-rkl: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842<https://gitlab.freedesktop.org/drm/intel/issues/2842>)
> 
> ·         igt@gem_exec_fair@basic-none-solo:
> o    shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-2/igt@gem_exec_fair@basic-none-solo.html> (i915#4473<https://gitlab.freedesktop.org/drm/intel/issues/4473>)
> 
> ·         igt@gem_exec_fair@basic-none-vip@rcs0:
> o    shard-glk: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-glk1/igt@gem_exec_fair@basic-none-vip@rcs0.html> (i915#2842<https://gitlab.freedesktop.org/drm/intel/issues/2842>)
> 
> ·         igt@gem_exec_fair@basic-pace-share@rcs0:
> o    shard-apl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-apl3/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842<https://gitlab.freedesktop.org/drm/intel/issues/2842>)
> 
> ·         igt@gem_exec_fair@basic-throttle:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@gem_exec_fair@basic-throttle.html> (i915#3539<https://gitlab.freedesktop.org/drm/intel/issues/3539>)
> 
> ·         igt@gem_exec_flush@basic-wb-pro-default:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gem_exec_flush@basic-wb-pro-default.html> (i915#3539<https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852<https://gitlab.freedesktop.org/drm/intel/issues/4852>) +5 similar issues
> 
> ·         igt@gem_exec_params@rsvd2-dirt:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gem_exec_params@rsvd2-dirt.html> (fdo#109283<https://bugs.freedesktop.org/show_bug.cgi?id=109283> / i915#5107<https://gitlab.freedesktop.org/drm/intel/issues/5107>)
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_exec_params@rsvd2-dirt.html> (fdo#109283<https://bugs.freedesktop.org/show_bug.cgi?id=109283>)
> 
> ·         igt@gem_exec_reloc@basic-cpu-gtt:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gem_exec_reloc@basic-cpu-gtt.html> (i915#3281<https://gitlab.freedesktop.org/drm/intel/issues/3281>) +2 similar issues
> 
> ·         igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html> (i915#3281<https://gitlab.freedesktop.org/drm/intel/issues/3281>) +10 similar issues
> 
> ·         igt@gem_exec_reloc@basic-wc-gtt-active:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_exec_reloc@basic-wc-gtt-active.html> (i915#3281<https://gitlab.freedesktop.org/drm/intel/issues/3281>) +3 similar issues
> 
> ·         igt@gem_exec_schedule@reorder-wide:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html> (i915#4537<https://gitlab.freedesktop.org/drm/intel/issues/4537> / i915#4812<https://gitlab.freedesktop.org/drm/intel/issues/4812>) +2 similar issues
> 
> ·         igt@gem_huc_copy@huc-copy:
> o    shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-glk1/igt@gem_huc_copy@huc-copy.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190<https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
> ·         igt@gem_lmem_swapping@basic:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_lmem_swapping@basic.html> (i915#4613<https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 similar issue
> 
> ·         igt@gem_mmap@big-bo:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gem_mmap@big-bo.html> (i915#4083<https://gitlab.freedesktop.org/drm/intel/issues/4083>) +5 similar issues
> 
> ·         igt@gem_mmap_gtt@big-bo:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gem_mmap_gtt@big-bo.html> (i915#4077<https://gitlab.freedesktop.org/drm/intel/issues/4077>)
> 
> ·         igt@gem_partial_pwrite_pread@write-display:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@gem_partial_pwrite_pread@write-display.html> (i915#3282<https://gitlab.freedesktop.org/drm/intel/issues/3282>) +1 similar issue
> 
> ·         igt@gem_pxp@protected-raw-src-copy-not-readible:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gem_pxp@protected-raw-src-copy-not-readible.html> (i915#4270<https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2 similar issues
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html> (i915#4270<https://gitlab.freedesktop.org/drm/intel/issues/4270>)
> 
> ·         igt@gem_pxp@verify-pxp-stale-buf-execution:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gem_pxp@verify-pxp-stale-buf-execution.html> (i915#4270<https://gitlab.freedesktop.org/drm/intel/issues/4270>)
> 
> ·         igt@gem_spin_batch@user-each:
> o    shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-8/igt@gem_spin_batch@user-each.html> -> DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-4/igt@gem_spin_batch@user-each.html> (i915#8962<https://gitlab.freedesktop.org/drm/intel/issues/8962> / i915#9121<https://gitlab.freedesktop.org/drm/intel/issues/9121>)
> 
> ·         igt@gem_tiled_swapping@non-threaded:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@gem_tiled_swapping@non-threaded.html> (i915#4077<https://gitlab.freedesktop.org/drm/intel/issues/4077>) +10 similar issues
> 
> ·         igt@gem_userptr_blits@unsync-unmap:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gem_userptr_blits@unsync-unmap.html> (i915#3297<https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2 similar issues
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html> (i915#3297<https://gitlab.freedesktop.org/drm/intel/issues/3297>)
> 
> ·         igt@gen3_mixed_blits:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gen3_mixed_blits.html> (fdo#109289<https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
> 
> ·         igt@gen7_exec_parse@basic-offset:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@gen7_exec_parse@basic-offset.html> (fdo#109289<https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 similar issues
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gen7_exec_parse@basic-offset.html> (fdo#109289<https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1 similar issue
> 
> ·         igt@gen9_exec_parse@batch-invalid-length:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@gen9_exec_parse@batch-invalid-length.html> (i915#2856<https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1 similar issue
> 
> ·         igt@gen9_exec_parse@bb-start-param:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gen9_exec_parse@bb-start-param.html> (i915#2527<https://gitlab.freedesktop.org/drm/intel/issues/2527>) +1 similar issue
> 
> ·         igt@i915_module_load@reload-with-fault-injection:
> o    shard-dg2: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html> (i915#7061<https://gitlab.freedesktop.org/drm/intel/issues/7061> / i915#8617<https://gitlab.freedesktop.org/drm/intel/issues/8617>)
> 
> ·         igt@i915_pm_backlight@basic-brightness:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@i915_pm_backlight@basic-brightness.html> (i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#7561<https://gitlab.freedesktop.org/drm/intel/issues/7561>)
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html> (i915#7561<https://gitlab.freedesktop.org/drm/intel/issues/7561>)
> 
> ·         igt@i915_pm_dc@dc9-dpms:
> o    shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-tglu-5/igt@i915_pm_dc@dc9-dpms.html> (i915#4281<https://gitlab.freedesktop.org/drm/intel/issues/4281>)
> 
> ·         igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
> o    shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html> (i915#1937<https://gitlab.freedesktop.org/drm/intel/issues/1937>)
> 
> ·         igt@i915_pm_rc6_residency@rc6-idle@rcs0:
> o    shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#3591<https://gitlab.freedesktop.org/drm/intel/issues/3591>)
> 
> ·         igt@i915_pm_rpm@dpms-lpsp:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@i915_pm_rpm@dpms-lpsp.html> (i915#1397<https://gitlab.freedesktop.org/drm/intel/issues/1397>)
> 
> ·         igt@i915_pm_rpm@dpms-mode-unset-lpsp:
> o    shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html> (i915#1397<https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1 similar issue
> 
> ·         igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html> (fdo#109506<https://bugs.freedesktop.org/show_bug.cgi?id=109506>)
> 
> ·         igt@i915_pm_rpm@i2c:
> o    shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-10/igt@i915_pm_rpm@i2c.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-2/igt@i915_pm_rpm@i2c.html> (i915#8717<https://gitlab.freedesktop.org/drm/intel/issues/8717>)
> 
> ·         igt@i915_suspend@basic-s3-without-i915:
> o    shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-6/igt@i915_suspend@basic-s3-without-i915.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html> (i915#4817<https://gitlab.freedesktop.org/drm/intel/issues/4817>)
> 
> ·         igt@i915_suspend@forcewake:
> o    shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@i915_suspend@forcewake.html> (fdo#103375<https://bugs.freedesktop.org/show_bug.cgi?id=103375>)
> 
> ·         igt@kms_addfb_basic@basic-x-tiled-legacy:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_addfb_basic@basic-x-tiled-legacy.html> (i915#4212<https://gitlab.freedesktop.org/drm/intel/issues/4212>)
> 
> ·         igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs.html> (i915#8502<https://gitlab.freedesktop.org/drm/intel/issues/8502>) +7 similar issues
> 
> ·         igt@kms_big_fb@4-tiled-64bpp-rotate-90:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html> (fdo#111614<https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +2 similar issues
> 
> ·         igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> (i915#4538<https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5286<https://gitlab.freedesktop.org/drm/intel/issues/5286>)
> 
> ·         igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> (i915#5286<https://gitlab.freedesktop.org/drm/intel/issues/5286>)
> 
> ·         igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> o    shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html> (i915#3743<https://gitlab.freedesktop.org/drm/intel/issues/3743>)
> 
> ·         igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html> (i915#5190<https://gitlab.freedesktop.org/drm/intel/issues/5190>) +11 similar issues
> 
> ·         igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html> (i915#4538<https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5190<https://gitlab.freedesktop.org/drm/intel/issues/5190>) +4 similar issues
> 
> ·         igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html> (fdo#110723<https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +1 similar issue
> 
> ·         igt@kms_ccs@pipe-a-bad-pixel-format-yf_tiled_ccs:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_ccs@pipe-a-bad-pixel-format-yf_tiled_ccs.html> (i915#3734<https://gitlab.freedesktop.org/drm/intel/issues/3734> / i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095<https://gitlab.freedesktop.org/drm/intel/issues/6095>)
> 
> ·         igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc.html> (i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095<https://gitlab.freedesktop.org/drm/intel/issues/6095>) +3 similar issues
> 
> ·         igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html> (i915#3689<https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095<https://gitlab.freedesktop.org/drm/intel/issues/6095>) +2 similar issues
> 
> ·         igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html> (i915#3689<https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#3886<https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354>) +3 similar issues
> 
> ·         igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs.html> (i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095<https://gitlab.freedesktop.org/drm/intel/issues/6095>) +5 similar issues
> 
> ·         igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
> o    shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-glk4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3886<https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1 similar issue
> 
> ·         igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html> (i915#3689<https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#3886<https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095<https://gitlab.freedesktop.org/drm/intel/issues/6095>)
> 
> ·         igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html> (i915#3689<https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354>) +13 similar issues
> 
> ·         igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs.html> (i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354>) +6 similar issues
> 
> ·         igt@kms_cdclk@mode-transition@pipe-a-dp-2:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_cdclk@mode-transition@pipe-a-dp-2.html> (i915#4087<https://gitlab.freedesktop.org/drm/intel/issues/4087> / i915#7213<https://gitlab.freedesktop.org/drm/intel/issues/7213>) +3 similar issues
> 
> ·         igt@kms_chamelium_color@ctm-max:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_chamelium_color@ctm-max.html> (fdo#111827<https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
> ·         igt@kms_chamelium_color@ctm-negative:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_chamelium_color@ctm-negative.html> (fdo#111827<https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_chamelium_color@ctm-negative.html> (fdo#111827<https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
> ·         igt@kms_chamelium_frames@dp-crc-single:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_chamelium_frames@dp-crc-single.html> (i915#7828<https://gitlab.freedesktop.org/drm/intel/issues/7828>)
> 
> ·         igt@kms_chamelium_frames@hdmi-aspect-ratio:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_chamelium_frames@hdmi-aspect-ratio.html> (i915#7828<https://gitlab.freedesktop.org/drm/intel/issues/7828>)
> 
> ·         igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html> (i915#7828<https://gitlab.freedesktop.org/drm/intel/issues/7828>) +8 similar issues
> 
> ·         igt@kms_content_protection@atomic@pipe-a-dp-2:
> o    shard-dg2: NOTRUN -> TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_content_protection@atomic@pipe-a-dp-2.html> (i915#7173<https://gitlab.freedesktop.org/drm/intel/issues/7173>)
> 
> ·         igt@kms_content_protection@dp-mst-lic-type-0:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html> (i915#3299<https://gitlab.freedesktop.org/drm/intel/issues/3299>)
> 
> ·         igt@kms_content_protection@mei_interface:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_content_protection@mei_interface.html> (i915#7118<https://gitlab.freedesktop.org/drm/intel/issues/7118>) +1 similar issue
> 
> ·         igt@kms_content_protection@uevent@pipe-a-dp-2:
> o    shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_content_protection@uevent@pipe-a-dp-2.html> (i915#1339<https://gitlab.freedesktop.org/drm/intel/issues/1339>)
> 
> ·         igt@kms_cursor_crc@cursor-onscreen-max-size:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_cursor_crc@cursor-onscreen-max-size.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1 similar issue
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
> ·         igt@kms_cursor_crc@cursor-random-512x512:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_cursor_crc@cursor-random-512x512.html> (i915#3359<https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1 similar issue
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x512.html> (i915#3359<https://gitlab.freedesktop.org/drm/intel/issues/3359>)
> 
> ·         igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html> (fdo#111825<https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +1 similar issue
> 
> ·         igt@kms_cursor_legacy@cursor-vs-flip-toggle:
> o    shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html> (i915#8248<https://gitlab.freedesktop.org/drm/intel/issues/8248>)
> 
> ·         igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html> (fdo#109274<https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354>) +3 similar issues
> 
> ·         igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> o    shard-apl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> (i915#2346<https://gitlab.freedesktop.org/drm/intel/issues/2346>)
> 
> ·         igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html> (i915#9227<https://gitlab.freedesktop.org/drm/intel/issues/9227>)
> 
> ·         igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html> (i915#9227<https://gitlab.freedesktop.org/drm/intel/issues/9227>)
> 
> ·         igt@kms_dsc@dsc-with-output-formats:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_dsc@dsc-with-output-formats.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840<https://gitlab.freedesktop.org/drm/intel/issues/3840>)
> 
> ·         igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> o    shard-snb: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-snb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111767<https://bugs.freedesktop.org/show_bug.cgi?id=111767>)
> 
> ·         igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
> o    shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html> (i915#79<https://gitlab.freedesktop.org/drm/intel/issues/79>)
> 
> ·         igt@kms_flip@2x-flip-vs-fences:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_flip@2x-flip-vs-fences.html> (i915#8381<https://gitlab.freedesktop.org/drm/intel/issues/8381>) +1 similar issue
> 
> ·         igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
> o    shard-snb: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html> (i915#8841<https://gitlab.freedesktop.org/drm/intel/issues/8841>)
> 
> ·         igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html> (fdo#109274<https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +1 similar issue
> 
> ·         igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
> o    shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-4/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html> (fdo#103375<https://bugs.freedesktop.org/show_bug.cgi?id=103375>)
> 
> ·         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html> (i915#2672<https://gitlab.freedesktop.org/drm/intel/issues/2672>)
> 
> ·         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html> (i915#2672<https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 similar issues
> 
> ·         igt@kms_force_connector_basic@force-load-detect:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285<https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285<https://bugs.freedesktop.org/show_bug.cgi?id=109285> / i915#4098<https://gitlab.freedesktop.org/drm/intel/issues/4098>)
> 
> ·         igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
> o    shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html> (i915#6880<https://gitlab.freedesktop.org/drm/intel/issues/6880>)
> 
> ·         igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html> (i915#8708<https://gitlab.freedesktop.org/drm/intel/issues/8708>) +16 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html> (i915#8708<https://gitlab.freedesktop.org/drm/intel/issues/8708>) +4 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html> (i915#3458<https://gitlab.freedesktop.org/drm/intel/issues/3458>) +2 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html> (fdo#111825<https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +3 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html> (i915#3458<https://gitlab.freedesktop.org/drm/intel/issues/3458>) +9 similar issues
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html> (i915#3023<https://gitlab.freedesktop.org/drm/intel/issues/3023>) +3 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html> (i915#5354<https://gitlab.freedesktop.org/drm/intel/issues/5354>) +33 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html> (fdo#111825<https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825<https://gitlab.freedesktop.org/drm/intel/issues/1825>) +6 similar issues
> 
> ·         igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
> o    shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-glk4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +34 similar issues
> 
> ·         igt@kms_hdr@invalid-hdr:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-7/igt@kms_hdr@invalid-hdr.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228<https://gitlab.freedesktop.org/drm/intel/issues/8228>)
> 
> ·         igt@kms_hdr@static-toggle-dpms:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_hdr@static-toggle-dpms.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228<https://gitlab.freedesktop.org/drm/intel/issues/8228>)
> 
> ·         igt@kms_hdr@static-toggle-suspend:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228<https://gitlab.freedesktop.org/drm/intel/issues/8228>) +1 similar issue
> 
> ·         igt@kms_plane_lowres@tiling-y:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_plane_lowres@tiling-y.html> (i915#8821<https://gitlab.freedesktop.org/drm/intel/issues/8821>)
> 
> ·         igt@kms_plane_scaling@intel-max-src-size:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html> (i915#6953<https://gitlab.freedesktop.org/drm/intel/issues/6953>)
> 
> ·         igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2.html> (i915#5176<https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3 similar issues
> 
> ·         igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-hdmi-a-1:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-hdmi-a-1.html> (i915#5176<https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3 similar issues
> 
> ·         igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-b-hdmi-a-1:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-b-hdmi-a-1.html> (i915#5176<https://gitlab.freedesktop.org/drm/intel/issues/5176>) +5 similar issues
> 
> ·         igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html> (i915#5235<https://gitlab.freedesktop.org/drm/intel/issues/5235>) +15 similar issues
> 
> ·         igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html> (i915#5235<https://gitlab.freedesktop.org/drm/intel/issues/5235>) +5 similar issues
> 
> ·         igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
> o    shard-snb: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +25 similar issues
> 
> ·         igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-2:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-2.html> (i915#5235<https://gitlab.freedesktop.org/drm/intel/issues/5235>) +15 similar issues
> 
> ·         igt@kms_prime@basic-modeset-hybrid:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524<https://gitlab.freedesktop.org/drm/intel/issues/6524> / i915#6805<https://gitlab.freedesktop.org/drm/intel/issues/6805>)
> 
> ·         igt@kms_psr2_su@page_flip-nv12:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@kms_psr2_su@page_flip-nv12.html> (i915#658<https://gitlab.freedesktop.org/drm/intel/issues/658>) +1 similar issue
> 
> ·         igt@kms_psr@psr2_cursor_mmap_cpu:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_psr@psr2_cursor_mmap_cpu.html> (i915#1072<https://gitlab.freedesktop.org/drm/intel/issues/1072>) +1 similar issue
> 
> ·         igt@kms_psr@psr2_dpms:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_psr@psr2_dpms.html> (i915#1072<https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3 similar issues
> 
> ·         igt@kms_psr@sprite_mmap_gtt:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_psr@sprite_mmap_gtt.html> (i915#1072<https://gitlab.freedesktop.org/drm/intel/issues/1072>) +1 similar issue
> 
> ·         igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html> (fdo#111615<https://bugs.freedesktop.org/show_bug.cgi?id=111615> / i915#5289<https://gitlab.freedesktop.org/drm/intel/issues/5289>)
> 
> ·         igt@kms_selftest@drm_format_helper:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_selftest@drm_format_helper.html> (i915#8661<https://gitlab.freedesktop.org/drm/intel/issues/8661>)
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_selftest@drm_format_helper.html> (i915#8661<https://gitlab.freedesktop.org/drm/intel/issues/8661>)
> 
> ·         igt@kms_vblank@pipe-d-ts-continuation-idle:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@kms_vblank@pipe-d-ts-continuation-idle.html> (i915#4070<https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#533<https://gitlab.freedesktop.org/drm/intel/issues/533> / i915#6768<https://gitlab.freedesktop.org/drm/intel/issues/6768>)
> 
> ·         igt@kms_vrr@flip-suspend:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@kms_vrr@flip-suspend.html> (i915#3555<https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
> ·         igt@kms_writeback@writeback-pixel-formats:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@kms_writeback@writeback-pixel-formats.html> (i915#2437<https://gitlab.freedesktop.org/drm/intel/issues/2437>)
> 
> ·         igt@perf_pmu@busy-double-start@vecs1:
> o    shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-12/igt@perf_pmu@busy-double-start@vecs1.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html> (i915#4349<https://gitlab.freedesktop.org/drm/intel/issues/4349>) +3 similar issues
> 
> ·         igt@perf_pmu@frequency@gt0:
> o    shard-dg1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@perf_pmu@frequency@gt0.html> (i915#6806<https://gitlab.freedesktop.org/drm/intel/issues/6806>)
> 
> ·         igt@perf_pmu@rc6-all-gts:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@perf_pmu@rc6-all-gts.html> (i915#8516<https://gitlab.freedesktop.org/drm/intel/issues/8516>)
> 
> ·         igt@v3d/v3d_submit_cl@simple-flush-cache:
> 
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@v3d/v3d_submit_cl@simple-flush-cache.html> (i915#2575<https://gitlab.freedesktop.org/drm/intel/issues/2575>) +8 similar issues
> 
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@v3d/v3d_submit_cl@simple-flush-cache.html> (fdo#109315<https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +1 similar issue
> 
> ·         igt@v3d/v3d_submit_csd@bad-multisync-extension:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@v3d/v3d_submit_csd@bad-multisync-extension.html> (i915#2575<https://gitlab.freedesktop.org/drm/intel/issues/2575>) +1 similar issue
> 
> ·         igt@v3d/v3d_wait_bo@unused-bo-0ns:
> o    shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-2/igt@v3d/v3d_wait_bo@unused-bo-0ns.html> (i915#2575<https://gitlab.freedesktop.org/drm/intel/issues/2575>)
> 
> ·         igt@vc4/vc4_mmap@mmap-bad-handle:
> o    shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@vc4/vc4_mmap@mmap-bad-handle.html> (i915#7711<https://gitlab.freedesktop.org/drm/intel/issues/7711>) +1 similar issue
> 
> ·         igt@vc4/vc4_perfmon@create-single-perfmon:
> o    shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@vc4/vc4_perfmon@create-single-perfmon.html> (i915#7711<https://gitlab.freedesktop.org/drm/intel/issues/7711>)
> 
> ·         igt@vc4/vc4_tiling@get-bad-handle:
> o    shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-10/igt@vc4/vc4_tiling@get-bad-handle.html> (i915#7711<https://gitlab.freedesktop.org/drm/intel/issues/7711>) +7 similar issues
> Possible fixes
> 
> ·         igt@gem_busy@close-race:
> o    shard-glk: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-glk8/igt@gem_busy@close-race.html> (i915#6016<https://gitlab.freedesktop.org/drm/intel/issues/6016>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-glk4/igt@gem_busy@close-race.html>
> 
> ·         igt@gem_ctx_freq@sysfs@gt0:
> o    shard-dg2: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-12/igt@gem_ctx_freq@sysfs@gt0.html> (i915#6786<https://gitlab.freedesktop.org/drm/intel/issues/6786>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html>
> 
> ·         igt@gem_eio@hibernate:
> o    shard-dg1: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg1-14/igt@gem_eio@hibernate.html> (i915#7975<https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213<https://gitlab.freedesktop.org/drm/intel/issues/8213>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-19/igt@gem_eio@hibernate.html>
> 
> ·         igt@gem_exec_fair@basic-pace-share@rcs0:
> o    shard-tglu: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842<https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html>
> 
> ·         igt@gem_exec_fence@basic-busy-all:
> o    shard-rkl: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-6/igt@gem_exec_fence@basic-busy-all.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-1/igt@gem_exec_fence@basic-busy-all.html>
> 
> ·         igt@gem_exec_suspend@basic-s4-devices@lmem0:
> o    shard-dg2: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html> (i915#7975<https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213<https://gitlab.freedesktop.org/drm/intel/issues/8213>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html>
> 
> ·         igt@gem_lmem_swapping@smem-oom@lmem0:
> o    shard-dg1: TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html> (i915#5493<https://gitlab.freedesktop.org/drm/intel/issues/5493>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html>
> 
> ·         igt@gem_ppgtt@blt-vs-render-ctx0:
> o    shard-snb: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html> (i915#8295<https://gitlab.freedesktop.org/drm/intel/issues/8295>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html>
> 
> ·         igt@i915_pipe_stress@stress-xrgb8888-untiled:
> o    shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html> (i915#8691<https://gitlab.freedesktop.org/drm/intel/issues/8691>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html>
> 
> ·         igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
> o    shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i915#1397<https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
> 
> ·         igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> o    shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> (i915#5138<https://gitlab.freedesktop.org/drm/intel/issues/5138>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> +2 similar issues
> 
> ·         igt@kms_vblank@pipe-a-ts-continuation-suspend:
> o    shard-dg2: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-12/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
> 
> ·         igt@kms_vblank@pipe-b-ts-continuation-suspend:
> o    shard-dg2: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html> (fdo#103375<https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
> 
> ·         igt@perf_pmu@busy-idle@ccs0:
> o    shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-6/igt@perf_pmu@busy-idle@ccs0.html> (i915#4349<https://gitlab.freedesktop.org/drm/intel/issues/4349>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-3/igt@perf_pmu@busy-idle@ccs0.html>
> 
> ·         igt@sysfs_heartbeat_interval@nopreempt@ccs0:
> o    shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-1/igt@sysfs_heartbeat_interval@nopreempt@ccs0.html> (i915#6015<https://gitlab.freedesktop.org/drm/intel/issues/6015>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@ccs0.html>
> 
> ·         igt@sysfs_preempt_timeout@timeout@ccs3:
> o    shard-dg2: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-5/igt@sysfs_preempt_timeout@timeout@ccs3.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-5/igt@sysfs_preempt_timeout@timeout@ccs3.html>
> Warnings
> 
> ·         igt@i915_suspend@basic-s3-without-i915:
> o    shard-rkl: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html> (fdo#103375<https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html> (i915#4817<https://gitlab.freedesktop.org/drm/intel/issues/4817>)
> 
> ·         igt@kms_async_flips@crc@pipe-a-edp-1:
> o    shard-mtlp: DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-5/igt@kms_async_flips@crc@pipe-a-edp-1.html> (i915#8561<https://gitlab.freedesktop.org/drm/intel/issues/8561>) -> DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html> (i915#1982<https://gitlab.freedesktop.org/drm/intel/issues/1982> / i915#8561<https://gitlab.freedesktop.org/drm/intel/issues/8561>)
> 
> ·         igt@kms_content_protection@type1:
> o    shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg2-12/igt@kms_content_protection@type1.html> (i915#7118<https://gitlab.freedesktop.org/drm/intel/issues/7118> / i915#7162<https://gitlab.freedesktop.org/drm/intel/issues/7162>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg2-6/igt@kms_content_protection@type1.html> (i915#7118<https://gitlab.freedesktop.org/drm/intel/issues/7118>)
> 
> ·         igt@kms_fbcon_fbt@psr:
> o    shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-2/igt@kms_fbcon_fbt@psr.html> (fdo#110189<https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955<https://gitlab.freedesktop.org/drm/intel/issues/3955>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-4/igt@kms_fbcon_fbt@psr.html> (i915#3955<https://gitlab.freedesktop.org/drm/intel/issues/3955>)
> 
> ·         igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> o    shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#4816<https://gitlab.freedesktop.org/drm/intel/issues/4816>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#4070<https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#4816<https://gitlab.freedesktop.org/drm/intel/issues/4816>)
> 
> ·         igt@kms_psr@primary_page_flip:
> o    shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-dg1-15/igt@kms_psr@primary_page_flip.html> (i915#1072<https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-dg1-16/igt@kms_psr@primary_page_flip.html> (i915#1072<https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078<https://gitlab.freedesktop.org/drm/intel/issues/4078>) +1 similar issue
> 
> ·         igt@sysfs_preempt_timeout@timeout@vecs0:
> o    shard-mtlp: TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13588/shard-mtlp-7/igt@sysfs_preempt_timeout@timeout@vecs0.html> (i915#8521<https://gitlab.freedesktop.org/drm/intel/issues/8521>) -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123074v4/shard-mtlp-8/igt@sysfs_preempt_timeout@timeout@vecs0.html> (i915#8521<https://gitlab.freedesktop.org/drm/intel/issues/8521> / i915#8865<https://gitlab.freedesktop.org/drm/intel/issues/8865>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Build changes
> ·         Linux: CI_DRM_13588 -> Patchwork_123074v4
> 
> CI-20190529: 20190529
> CI_DRM_13588: da6378eaa945d44a75141f9d9de5e237edb0e660 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7464: 7464
> Patchwork_123074v4: da6378eaa945d44a75141f9d9de5e237edb0e660 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
