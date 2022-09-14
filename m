Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C4D5B8C7A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 18:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6820410E96A;
	Wed, 14 Sep 2022 16:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F5410E96A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 16:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663171580; x=1694707580;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XnHpc+PZmIgWLzPh+JWYYZLWX05TwmnzAva/DxfRC0M=;
 b=Tnkh9XCp0DU0VRx01db73D38i1WAFuajCQxcekbQg2eBheIus7Vmcl22
 zZ8R6S0AU+l0VfWIDhOOvufwOylU/P/zXX3Ja4CLS7HGyNMFx9fGvO6vu
 REMwKLFQDqiDeJzFV2bXmrnIZu6JA+4sa7XV5kYVCvISNLpM6MAhWURpX
 gS2fq8ARZVkgg5jmZzJ23667ngsiuLr6FWmtJj/MRHQipb4TLXJziXPqr
 g/mvf/b/CKepkDxlBB4NWrRRuFQcQ5skzQKU1Gp89arkaMuNr+sTO4RNH
 OlwW9fYqdauYlSZj8ke9g8RPitfaGVB35U/HtvUvugcamv4xbfgZiZqn4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299827438"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299827438"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="616914018"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 14 Sep 2022 09:05:43 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 09:05:43 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 09:05:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 09:05:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 09:05:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fbti2jtUiqi3G5yFex2dEsCFQH+/FJOpqc/HWlwasg0ehFfXibaqOCt7JTfa8uGxgU6yclPS4Oqw1HJwokyWAYpvKBhWq6uUoda3ZvRI0XKmnUXAap5PN6BR3zAkr896NsqGHNufuEFpmwciXdfNLtskLNRDMkVTeGYxWIwgfv4JUqn0Dt/h1a6DT36OoT7S2cLDwNH5k89qR/Y6ERoY8xhlKkAWhLsmjmqX/wHTR3C2Ntsh7S5uWoqlCE7/ojGoxSytEBP+e5QpUQz/NlAmbcPBbj53J+VC2bcWHJVxSLKHCO790flVD7yMw60OqtIpHbyF82WScfnX1BkDLDtrKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NWkaZ8pPl/EXvzdQxUX8Bs/WwaKd9ITujXqUuMMWvII=;
 b=CLtUV1yKdyo1F1zD9o0M50PEsSnHrugvA362TeEB3zmvXwH14xQHg87hadn4Uxwbybkmdnrgf2RU20ZYK2x3yaKQQhPBCiiYaSYEZh/HDKo0+iEq/iNYDbKavmyEdW5dIYnV9UOU0FtYIZYnxlAkVl/r6c8EFUD74+Rd5WaKw/nmq1fUCf91Ze6JKelStgXdeX0VhRbGM8x7NXM1jsUopTZuiKKd59gaXCMfGk5fqtsnkdHMT3hB/hx33BC4960zTG3mezjHMIRwIUNrjwYnDbnqXneFP66nAaACkAH5HZfX8DmJc3OtSXiEDbpPlbIyyMfWkzRWY0/gnjo3ExrTCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 16:05:40 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 16:05:40 +0000
Message-ID: <1b9a2901-e1f2-7448-9c99-b13ffead85ae@intel.com>
Date: Wed, 14 Sep 2022 21:35:30 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, <", lakshminarayana.vudum"@intel.com>, 
 <",rodrigo.vivi"@intel.com>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
 <166317019186.30164.6557636010772973131@emeril.freedesktop.org>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <166317019186.30164.6557636010772973131@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::21) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: fe7bf3fb-3793-4846-8e13-08da966af7e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L3cA7V8jbqdNLdIVXEWToIy/zbjgdEcVc5t8eJ11esFqd92g1OdmNcz9jyn7c9L8h+Ob4DM6aY/s9nu1pfCP5MpyPRUMJl1xM4/2KD6zHJ890n1c4Vv/SqMqalVCRTS5z9MEXBF45S3AbXib1zTXEWIstrWB3Ce4PqlP/kanA+hTgRFhpNPYJYGV+elBwm7sIyPDCGn50YSsw+ILhvW8EF6dGqnjwpl8RPbHtMbc+KR15PoCdkmAdJCTnmN86er2RUUrtdoTH0dzATv6Md78v/fp1G+0A122tXxfLTXYSPxXCMF1SE/09XhifRY49dW42/K0PBmama8X7ro+S4AtccEirCEMKsebcgQWpYkg2FBxs4uw4xHEKI6lZXdo6WqWkuYbJeabuw6ZQvS29UFVPRg8tJfezWmRKPNr0DeVdcIaIe1vaTNc+4DCIjLDtxI7nAMFrdGBO0OzQGJ201BEcoX3Eda+msh+SCxI2mSKKOhvcmUZ3EkEIjXstDucIYMywlwZFtQOF/sSOok7zwUvtYtBQ8cNleJy5pqiy0/8izSiURiOB0BZGSOiuVFa31CyIEN43QrraaEgs9y7IJITSYleFh6S8Lib7EeuYn4X79xaPEwr++Osui/fIpxsD1PZ2XizC3G7rzjxeWzyHN2X58U5pzGbNuziEXL7YKD5eA1Gdi2oFgmSsH6c9t7QCct/HXZRh6gWJFm6/0MFXwm0A7Sllgc3JQBuZvAqqafTFv8izwpqFM4MHXX4KWeygELT5ho+iUsVV0WKnHPpw95vWNd9W/nVFmsTEQJTWx7coiIHZ0Vy7gbagc42xKZtj3gX5HRT6Xj+GleSC8UDZ81PS9Z8O6AdhmVYGjJGQWtQkJo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(5660300002)(6666004)(41300700001)(36756003)(66476007)(6506007)(31686004)(66556008)(38100700002)(6636002)(2906002)(55236004)(31696002)(53546011)(83380400001)(8936002)(2616005)(6486002)(478600001)(186003)(316002)(66946007)(86362001)(26005)(82960400001)(6512007)(966005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2h6SWdjY1FNeCtucUZtMFVTVlJ5UGdQMmI4VzEvYzJrZmJyTzlCc0FMaTg5?=
 =?utf-8?B?YzFmb1N4Tnl6ZFFFN1JRZFh2M2FKeFlyb09wSmNMZitpSDJLaDdhRWlON1VD?=
 =?utf-8?B?QWwrdzNteUp0di9ZMnhWb2oxb1NGbU9ZcndhMDBTM1piMU45R3BCMGhucWRD?=
 =?utf-8?B?bUVhaEpVTldnK3ZOcDVIY3Z4UTVwUXhra0pjWW5JblZ4STVoUjlNTVAxWm5T?=
 =?utf-8?B?bVNDSFJXOU9vOWczbXU3N21oaE5Vd0cyUU5iK2prWDVUeU5BWEltSjY0SHlj?=
 =?utf-8?B?UXNTZ0dBWDZGM1lVcGZaaVVxM0J2UUNzUGZMcEpnQjRqODQzcHhLUUtFakxr?=
 =?utf-8?B?RnFEVTkzbGxmd3dPcWtwZDR0U3lpdDhPVUlRNG1rYzY5ckZqVHRTbHhiZ1p3?=
 =?utf-8?B?bHpjRTUvUGNjbmNlNFcvdS9OL0NBa3dWOGc1RWQ3Sk45OGRmT1hnWVBqaVNs?=
 =?utf-8?B?c0J1S0c2QW5BOUU3dG1kMjdQbTVoL2JxQnl0UjVDQmlJVXFCM2RMR2trd3BK?=
 =?utf-8?B?ajR0WVp1Rnkza0lzV01BTHNFM1J2cHhXREwzbnRuRVFmRnV0RFlGOE1xNjNz?=
 =?utf-8?B?UUJCRFdkVmZIZnZ2TVdFcTNPWXRLcFpUMXBXejRWaVhXVHg1d0VTd2pCTEkx?=
 =?utf-8?B?MzlmTjB4T0E3R0JCeFBlSDI1Q3VENkdkTnAzNFFBak1laXRQV1dDa2tvUktv?=
 =?utf-8?B?T0tFbDZPT1g4d241Q2x6YmtESzhiWk1BWG9MN3N3ZjJiS1RuSVZmait4eHBV?=
 =?utf-8?B?UDlEYUt0ZzBqN3pkc2p5NHdleUJhV2FZRG5CQy85c0tQZWIrUzBVdXFiQ0J5?=
 =?utf-8?B?YTBoV0NtTVhxU2dXMzJ5VWxYbkVrb25jUyt2V3hkc2ZMYmM4WDk4RHR1Q1JM?=
 =?utf-8?B?bGZRam1YNkt5M1BqREFRN1JxQnp2ZWFKWjZQOUg1Vno4amhoR3J4aXhpNCtB?=
 =?utf-8?B?UUtpMDlZMkRJdVJmWHBzT3hrRXpqNjczSko3UjlJRE1sd3h4Rkt5ZDRHM0VK?=
 =?utf-8?B?RktqTXg2ZVpiY0Rjc080WGJmVkZyRE4yMUVPNnBKVlUwU3pjaS9ndlJaNXUw?=
 =?utf-8?B?OXlZNEloM2RHOTV4SHoxcXdhb3dTbjN6a0l2YmMyakNkWXk0Qm5CUzg1NGJm?=
 =?utf-8?B?eFFud3IwMUp5SjFyeUdXcUFYd2ROb2FZVFZvMXVrR2R6QTJScnhyb1RYNVU1?=
 =?utf-8?B?bmlmMTRTVWVaZUo2K0RDaGgwUTEybEtVMHpMbXVlR3BRQnRldHBSSVVVaUxp?=
 =?utf-8?B?ZHdCTEFFUnB4KzQ4UW1jd1dGOU91VVhsQ042bXlpZEUyeXh2N2w1WmJOWDRB?=
 =?utf-8?B?MGxFVlpLYXRSdklUaUFxMjM4NExPZXJhd0l2Z09lNFphbW1nVnNxdkRxanlJ?=
 =?utf-8?B?WkhPcUFLSDcvLy9IaEh6TFR6bWVkM1ZOY042NklqVUYyRkZlbWFIMXBvT3ht?=
 =?utf-8?B?Vk5LYThXMHNpTVAzSjB3UkxmQUJhcGJqaDJ5UElYYVF4eVFuY2MrSmJPYTJz?=
 =?utf-8?B?VmV2N25HTFpoUEJtTjNZNDFtWGdSdWRpU0g3R1BrbXVIZlFCQnk3N2FKbFIy?=
 =?utf-8?B?QS9yL09iZ1JWR1RwR2hDOEdJSHBKdURVcnN2MVlRdUhuRVVJL01GemF3Q0pO?=
 =?utf-8?B?NDVUT1B3MVllVmpnejBadXpheTgvUTJ5ZlVlb3hKczRwWHZFOFcwMkJYTzB2?=
 =?utf-8?B?b0Z4TDNBUUNCVk5zeHlmMHl3SHVlSHNGWk1JRUovSW9yb0I3bGFjSDBwQ1Q2?=
 =?utf-8?B?MWJYaGFKWU9wL1VNY1FVNThqMGxjZFR2Nkt5ajBybGMvRzRaNkhuKzkwQWRu?=
 =?utf-8?B?ZFFmSTMzRWhvWlZ3VVNDZnBFKzJndDh6OTdQbHZySEF3NExPaFFKeEZGV3VZ?=
 =?utf-8?B?WkY3aWxMOGtINWd0U3RUbUttUUZNV1M0WmtRYnpEc28vMUl6aXo4alZkeHZE?=
 =?utf-8?B?S1pYMHhPSFZTaUZ1SXpkSWtNNjl6ZWh1Wmt4Ym9hWndMU2F6U05VSkNrUXpR?=
 =?utf-8?B?Ry84T2hIb1FHdVdLL1NUMFFTY1J5NXdiUUVWa3gyVXorQVhWRTVkdGlsNUpS?=
 =?utf-8?B?YVBRVkVCMVZRVEJTR0dKSjZJbEFKME5MUm9PVHFrRWRIQVNvVFF3NHRQczJD?=
 =?utf-8?B?VE82cWxmZlZSMURhNXVWYVRoaUpVSTNmRy9VNnJZWkpvRTg2WWpoNnB5RkRr?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe7bf3fb-3793-4846-8e13-08da966af7e4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 16:05:39.9434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pg2gruZA8mmJZPtR5ADvzI23N1YYoQkoNbsRU4DBGHXwLJfB3ypglImyz0wm0lMZ618RWYjEGDJK+xC/TPHuLzVj68n4YuI11XYRIm+BMw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/DG=7B1=2C_2=7D=3A_FIXME_Temporary_hammer_to_disable_rpm_?=
 =?utf-8?b?KHJldjIp?=
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



On 9/14/2022 9:13 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/DG{1, 2}: FIXME Temporary hammer to disable rpm (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/108477/ 
> <https://patchwork.freedesktop.org/series/108477/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12134 -> Patchwork_108477v2
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_108477v2 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_108477v2, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/index.html
> 
> 
>     Participating hosts (40 -> 41)
> 
> Additional (5): fi-icl-u2 bat-dg2-9 bat-adln-1 bat-rplp-1 bat-jsl-1
> Missing (4): fi-ctg-p8600 fi-hsw-4770 fi-rkl-11600 fi-tgl-dsi
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_108477v2:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_pm_rpm@module-reload:
>       o bat-dg1-5: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/bat-dg1-5/igt@i915_pm_rpm@module-reload.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/bat-dg1-5/igt@i915_pm_rpm@module-reload.html> +2 similar issues
Hi Lakshmi ,
With this series i915_pm_rpm test are expected to fail  on DG1/DG2 as 
this patch disables runtime PM.
Could you please re-report the result so that BAT can resume.
Thanks,
Anshuman Gupta.
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     igt@i915_pm_rpm@basic-pci-d3-state:
> 
>       o {bat-dg2-8}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html> +2 similar issues
>   *
> 
>     igt@i915_pm_rpm@basic-rte:
> 
>       o {bat-dg2-9}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html> +2 similar issues
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_108477v2 that come from known 
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
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@i915_pm_rpm@module-reload:
> 
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>   *
> 
>     igt@i915_selftest@live@ring_submission:
> 
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html> (i915#5904 <https://gitlab.freedesktop.org/drm/intel/issues/5904>) +30 similar issues
>   *
> 
>     igt@i915_suspend@basic-s2idle-without-i915:
> 
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html> (i915#5904 <https://gitlab.freedesktop.org/drm/intel/issues/5904> / i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-fast:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8 similar issues
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>   *
> 
>     igt@kms_force_connector_basic@force-connector-state:
> 
>       o fi-icl-u2: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html> (i915#6008 <https://gitlab.freedesktop.org/drm/intel/issues/6008>)
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_frontbuffer_tracking@basic:
> 
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>) +12 similar issues
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/fi-icl-u2/igt@prime_vgem@basic-userptr.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
> 
> 
>         Possible fixes
> 
>   * igt@i915_selftest@live@guc:
>       o {bat-rpls-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12134/bat-rpls-1/igt@i915_selftest@live@guc.html> (i915#6471 <https://gitlab.freedesktop.org/drm/intel/issues/6471>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108477v2/bat-rpls-1/igt@i915_selftest@live@guc.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12134 -> Patchwork_108477v2
> 
> CI-20190529: 20190529
> CI_DRM_12134: a84a8c8d23dac90008acab56508b4dab70d6148d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6655: 1c26b484df1d07ddb403883c88b8b82db7d63877 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_108477v2: a84a8c8d23dac90008acab56508b4dab70d6148d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> bf2345672e11 drm/i915/DG{1, 2}: FIXME Temporary hammer to disable rpm
> 
