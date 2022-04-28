Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B595127E4
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 02:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062D910E2EE;
	Thu, 28 Apr 2022 00:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2EB910E2EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 00:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651104088; x=1682640088;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=Roa5fy417O/dg4OH6bSFF0l0Lzd6RODVNNT11jQKh+Y=;
 b=VClpxFYWdDfbq7dWON7mNt0t8GenC58cJdHvevYV/IzuamnHweyeeJc2
 F8SzTmFnBuwQ0R1NN7OWq8usIjM3r7bdnY8/81TDeP5+P/adTadadxxFl
 yax55k52L9KECNCEskutSYAjqdPjtxOxqBsFKXijHhWmgwn0gPWduMyUC
 m6axeOad3PM1Jxp19jgbInhuwfiQQrTA/KkojRGizoFtBi7V9ydM7R1Nh
 OC8P77ZI2qHeZboRDED7k0p/3jjFZ5lOKmgUiC9yYevjFjlZZ1ojZt0/2
 Au8EyOGHWU2nM9NS30Vk2WF12OalcdqH9lSo6Ii2Z2DWyHZVPOL1UApWL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="326601050"
X-IronPort-AV: E=Sophos;i="5.90,294,1643702400"; 
 d="scan'208,217";a="326601050"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 17:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,294,1643702400"; 
 d="scan'208,217";a="731071124"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 27 Apr 2022 17:01:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 17:01:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 17:01:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 27 Apr 2022 17:01:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 27 Apr 2022 17:01:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fdOGLV1SZLImRt9zRfFk5pAYfZNh0KF+EPonZAx9nM6JhxuM/7PpPPJU8Dhv7U6Ylq/cdBNGqEL8JZgwZh1toMcmYh2Rqd0c7JQtnqb/35q8mzvndcmnFEd3s3rV9S+hlUOM5jGztJRhh7PskThOR3oizbyzY91tTo4XM0/cslp85tgw+Cis5+6fNBujjkhLtSaPZxFfkU+pPu0zphPl/F2mCep7IAeXqjr49zZmhT3+PfIdtyw4KNacR5EATIxlQ3m8PljBTVfpJe/3Rwwuz2v0rBOJEZmkKNw0lCog+Bps1fQpgGjQGO5a58RkRfX87DGNQFMoxaLzYKgrSuiQ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SOgfsSQH7n1wGG7404CJ7zZt0OPX6hdislqoW4EH4jg=;
 b=NG7FJnbpBqhRaJL+1Y12+BvxuUu9bfPo0PkVRScXeV7/0W+/nSVsYxunAJvGEQVdt3WGXH2/JrREDVi+yHgHEPA2JBnqTDPY+JT1Pgr+em6kDw9s57ZetOfLq1yhz6oud8Yr6Bou0o0tngeJdjS4QHeq61CL3cwnkyYYXxnOWeVyJSCuT2fZ4vYcba8O/G2TRZ0hJ+6Zium7mPetMOdN7jUMtrR69ycr/Hn91oonffIQjmzMDhvXflkycsOsZ6XK2XYZltI9fth4jY6OqPWnds5xtuBzvFuRA5GBjl+l+LMGst2wS3SRS44qeIrvOrfd77Jc1e5g8YsPs8z82hwbFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Thu, 28 Apr
 2022 00:01:09 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5186.021; Thu, 28 Apr 2022
 00:01:09 +0000
Content-Type: multipart/alternative;
 boundary="------------5quf9cs04R3JIYXYIaZUSpPv"
Message-ID: <f4dd9891-5830-126e-c07b-d151d43c5431@intel.com>
Date: Wed, 27 Apr 2022 17:01:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220427165550.3636686-1-John.C.Harrison@Intel.com>
 <165108595317.24236.5305527991812078324@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <165108595317.24236.5305527991812078324@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::33) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eeb51f98-d909-4f32-6d5a-08da28aa332d
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_
X-Microsoft-Antispam-PRVS: <PH0PR11MB488627D41E224F0670CE20BCBDFD9@PH0PR11MB4886.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mqNjAr63B4wb5TDE0kqtZrNMHzF4EAM1H1mI6XET3pYoPiP5XQ8zBSMpjO43VHRC+93KvZZ/nkW8vPAvLropXXXIV+lKHsPpJ/MdhhuVrP23j4XBNsBGzo6gDHLZulfE600dEQejvdBIMNi8ynQLh8EVwJKRdexeV0Z01Y3kmG0l547iUXaes0t1BSRz26OQqvXJdVy8O04M62F8obOLwTCjlnn2/6FPmOTOohUaDEZ80eaHhqPMRZVnJRqaIxwLZL++4qMGREF7zlQDj4QHm1E9sQUxycCwKiPs7Eoyo8M+iOcwmwwJ6N5vYXdwDFECKfb7rQTKZvczTPQu59n0naCWpsr9UECKT8L4H0YLcC8gUNia1xYh8V0SbrazndEPRGZYiGdeEf0ZYeTMF9ZSFcEujAvj/5vUbXCZ2yv7jmB1hoaFVm6yAPB1Ee+2RPKqPc2p3vBDMaMrkoNMDIkluMxSC8reOGQ+LLgdyDMsLXzzcCG5wk65JXjCrtef/FPrVvNPd3+xY+pifYSWcu8cpzhBRaGjg0UTWRTkgBx35P8zuciBh+DpZArLgezJaE2keYZdJFv4km6yBDRdSNJn/YwefRXWxe7QpSrXbzo6E/3I3V5iKekUlbSJQaEtAfrIufx6YuMnJ5Q+Kot8kSJzyn9Tog3xwbnWwCrKlijeAPELSqjqk67+7IKcXBQHORcsaBFuKWtDB26DLYRYG7Ka/9bOqxtnDhmgHRTACQKLw9TCAn8hQkwS/isD+PJIBlJRZhlMU9riyxvRX1JG48C5vDh7io5ugFUrJ3j6eftLrbwdZhqBFgiAYrXruGo7hL1rLlpWn4RIS8Bq8yqgS3jo8f22vb8zh5VezloN7FY8vxc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6916009)(66476007)(53546011)(21615005)(508600001)(6506007)(316002)(66556008)(186003)(26005)(33964004)(66946007)(2906002)(83380400001)(40265005)(86362001)(966005)(166002)(5660300002)(38100700002)(6512007)(30864003)(6486002)(82960400001)(31696002)(2616005)(36756003)(31686004)(8936002)(45980500001)(43740500002)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1R0dW9JVUE3c2JaaURhSTJONmtOcWkwa0RPL1VSQ3BHQlg4MGhUVk93Qk1a?=
 =?utf-8?B?VGFxYUVVcEpEZG5wSUVCNUd2OUt3MkVLMU5vaWZTZVNRTGw3QVd2bEZnS25m?=
 =?utf-8?B?R1JoS0RneDNqWW1yci9wU3JvT1dPTVkzTUhWbmFWTlB6dGVvMzBLeU0yQW5u?=
 =?utf-8?B?MzJ3WCtydkZYeWMxRFpiNmlhR0hEdWdBWUJLNU5KaEJQdzhoSHI0TVBtZDV4?=
 =?utf-8?B?bllSMndMYXpoSVQ1bG5PKy9GcVpoT0Q0QzMxT0ZYS0hJbEVrUHc1OFZBdzM4?=
 =?utf-8?B?UUJXNE5XVWtGUkQ4NXNkRTNXN3RhcHAzYm5MTE45b3pmSnJnYXB5YWFRK3FW?=
 =?utf-8?B?UnV1T0d0R3hOSGJYc1JEUXI0MFZpTXQwM2w0SElBNHI5elFRbzByMnVMRytv?=
 =?utf-8?B?RVJnaHFXTVlRVnhYNzJaVG1GOTAvQms2a3UyVkhyVXVScXBaOHNuTUkrUWlM?=
 =?utf-8?B?VWFWb0gzeGlCeXpUWFdid3ZoNXFyMkcwOXZwMERHTDYvK2tGVWZJTDhDejQv?=
 =?utf-8?B?WndhUkMyQnhrdElENVBGTWM0YTBpRjJXOEFGM2o5Nm5wYis4NjQrNEIzL3JV?=
 =?utf-8?B?SElucUZkL2t5bHp5UGdPZTN2cm13TWdVZ29BWDFrR0NoaVBGT3JKVWZtWXda?=
 =?utf-8?B?QlEzRi82MSt6VkcvekRUSHFlYkZUTXFWUVhzUEx5MnM0NkczbHFPRzhONmtB?=
 =?utf-8?B?VUVpSW5iTXZta2VCb3UxbndzQ0N3OG1manVMSXpSQ2FyQkRsM2VKWWo1UGxY?=
 =?utf-8?B?WVN4MFc2SWJJbWgvanY2TXZla0ZwWDZ2K3VJekJNQyt4LzFDYjhHWGN4U3BX?=
 =?utf-8?B?b043TjdCd3VzM1VuWUJ5TzNZWi9VNlhHV0tiMldkZ3ZqekE3c3NUR1VQR3ZX?=
 =?utf-8?B?QjIrT1ZYUTJWaDlqY1dhdXFHbzI5N3BvRjZHZnQ4RUN5UzdxSmFaOXAvbmcy?=
 =?utf-8?B?WGd1ZzRuZmZ0cXU0OHJjUFVvMnJncFduaU00aE1sN3M2ZUI3Z1Fwdzh5QjM1?=
 =?utf-8?B?aEFIWFl0VzRTMmFiUUJiOE01Qytvc2FRK1NZcFpFcFZQeGpoSGxmSzdrTzlw?=
 =?utf-8?B?Y2ZVbUdGR01sUGl0RHhEeCs1TE0yNGtUQTlOUW1XRThmVUM2Rmorc2VXa0Jk?=
 =?utf-8?B?bk9zSmdralBBQXhteU1CY0hKT2xFeHJYclg2V2wyN3c4SlFjQ0VnZktVMlJN?=
 =?utf-8?B?eWN2THBSUkNWdS9sLzlDR3J0eVA4dkQ2cG05T2xsV2RwSXFUK2oxM0RnRmk3?=
 =?utf-8?B?Y0ZNTFIzb0c1MXBIVGtTQmRENytVazVQaUtTV1ZUeWU4NXRUdS9jR2FTNTVk?=
 =?utf-8?B?dDBIVHM3YjZhMTV4a1lXa2RoaWQyR2Fac3Fmd0NuVG83ZklMdGN6dHpFUHhs?=
 =?utf-8?B?azJVSmlLQncvTWVyZEdmRUFsRnRPeDRKRnYzbXN0K2ZPMVhpUm4yU2ZZWkRO?=
 =?utf-8?B?YW1aUGFQUm9HTkZtMC9mdUhsUWZGTXhuWGJRaUV4TDFEQUFDd1pLRTVqKzNG?=
 =?utf-8?B?ZE1pSlVuR0FlWCtya0prYmx1eFRzTHh5TUVqNHppb3oxYVhPZjg3Y290Mjhp?=
 =?utf-8?B?ZEltcXR1eEh4Y2dXbEZ4cngxdUc1eUZiNHhxeGl2QitEdG9McXpzTEUrRHlN?=
 =?utf-8?B?eWN1WUtubG9vaHp5MDRyU2dSM1IwYllVN3g2M1U1Z2p4a3NPRXlWQmovdUpV?=
 =?utf-8?B?d0NnNHdQdzEvNmtQTzdOWVlTSXJDSkdFazhnaDZId3R4b2pWaWtwT29aSDR6?=
 =?utf-8?B?djZpL1A5N1ZycFBRTTJ3K3NjU2hDNXQzc25XUjVPMU1WT0dpSHFVWkV6SG1v?=
 =?utf-8?B?c1pBRlZBS0lmaEtRbUFSOWU5cy9VTWxHNHhmRkpLWXhHdVZMVC9oYUc0UDg4?=
 =?utf-8?B?YW5XWjQ5Z0lKK21CZ2dyK3RHMHlFNU1SdWlRVXExVkd4NG1WZnptQVFxWGJ2?=
 =?utf-8?B?UlNEOFlZUWRYRmlIRS81UjZwZE9ZWXBIOWJ3OFVHWVB1K1hnOGtlSTBreHRR?=
 =?utf-8?B?OTVsWGFxUWpneXpYWlh1eWd0aTRPYlg0TDZsaFcxeTFROFlJWlNUOVI4bnlM?=
 =?utf-8?B?SUtGcVZuRTRYTkJMcFZFcktOTDlTK1ZHTGovMGpzRDhleVZZTFIxckJPQmtC?=
 =?utf-8?B?eVh5L3JEY0xuRS84L0tSNEVlWXgrSlNsMU5xL3NOdkN0c2ROV1BsMHp5SHhX?=
 =?utf-8?B?d0VOWkRsNW1La2c5OVBUVlFoK2JhYUNSa2Z3ejg4dDZoclQ1S2xUNGtOS3lJ?=
 =?utf-8?B?SEtDaGJCdUR1cE5LSWtyV1pKMUpGMUdzSURjU3VmZjVScmZVNGwyM0ZsTERx?=
 =?utf-8?B?SjloVVBVbzRKT1lOVldoeHl5TzlsTnBQb0xya01RUzdHYzZMSnZvT2tqUk94?=
 =?utf-8?Q?UB2u/JnCdPLrWyH0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eeb51f98-d909-4f32-6d5a-08da28aa332d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2022 00:01:09.7325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MInQF/XMviaQHV08CpF4BV44mnIhn3vhNCE2Ceordl+aGNRovGHiDGFR+VYkJonbWx/GlFSjUHaFlwGK3Yxd25lGX5Ea1PTTsimK7cqD5QU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4886
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW5p?=
 =?utf-8?q?tial_GuC_firmware_release_for_DG2?=
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

--------------5quf9cs04R3JIYXYIaZUSpPv
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/27/2022 11:59, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Initial GuC firmware release for DG2
> *URL:* 	https://patchwork.freedesktop.org/series/103230/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11550_full -> Patchwork_103230v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_103230v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_103230v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 13)
>
> Additional (3): shard-rkl shard-dg1 shard-tglu
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_103230v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_parallel@engines@fds:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/igt@gem_exec_parallel@engines@fds.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/igt@gem_exec_parallel@engines@fds.html>
>
>
>         Warnings
>
>   * igt@gem_eio@unwedge-stress:
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb5/igt@gem_eio@unwedge-stress.html>
>         (i915#232
>         <https://gitlab.freedesktop.org/drm/intel/issues/232>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>         +1 similar issue
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@kms_rotation_crc@primary-rotation-270:
>
>       o {shard-rkl}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-270.html>
>  *
>
>     {igt@kms_sequence@queue-idle@edp-1-pipe-a}:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/igt@kms_sequence@queue-idle@edp-1-pipe-a.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl5/igt@kms_sequence@queue-idle@edp-1-pipe-a.html>
>
None of the above are DG2 and this patch only changes the GuC firmware 
version used on DG2. Therefore, they are not related to this change.

John.


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_103230v1_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-apl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/boot.html>)
>         (i915#4386 <https://gitlab.freedesktop.org/drm/intel/issues/4386>)
>
>
>         Possible fixes
>
>   * boot:
>       o shard-skl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html>)
>         (i915#5032
>         <https://gitlab.freedesktop.org/drm/intel/issues/5032>) ->
>         (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl10/boot.html>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_balancer@parallel-balancer:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +163
>         similar issues
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_exec_flush@basic-wb-set-default:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb2/igt@gem_exec_flush@basic-wb-set-default.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-snb6/igt@gem_exec_flush@basic-wb-set-default.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +4
>         similar issues
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl1/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gem_lmem_swapping@parallel-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@verify-ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@gem_lmem_swapping@verify-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>  *
>
>     igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html>
>         (i915#768 <https://gitlab.freedesktop.org/drm/intel/issues/768>)
>  *
>
>     igt@gen9_exec_parse@basic-rejected-ctx-param:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html>
>         (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>      o
>
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb8/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>
>      o
>
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1937 <https://gitlab.freedesktop.org/drm/intel/issues/1937>)
>  *
>
>     igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +2
>         similar issues
>  *
>
>     igt@kms_big_fb@linear-16bpp-rotate-270:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-270.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3777 <https://gitlab.freedesktop.org/drm/intel/issues/3777>)
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3777
>         <https://gitlab.freedesktop.org/drm/intel/issues/3777>) +2
>         similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +6
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +4
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +20
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-mode-timings:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_chamelium@hdmi-mode-timings.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +4
>         similar issues
>  *
>
>     igt@kms_color@pipe-a-deep-color:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_color@pipe-a-deep-color.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-0-5:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_color_chamelium@pipe-a-ctm-0-5.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-d-ctm-0-25:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-0-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +12
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_content_protection@lic.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         fdo#109279
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109279>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html>
>         (i915#3444 <https://gitlab.freedesktop.org/drm/intel/issues/3444>)
>  *
>
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_flip@2x-flip-vs-expired-vblank.html>
>         (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>)
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +6
>         similar issues
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         (i915#3701 <https://gitlab.freedesktop.org/drm/intel/issues/3701>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3701 <https://gitlab.freedesktop.org/drm/intel/issues/3701>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +6
>         similar issues
>  *
>
>     igt@kms_invalid_mode@clock-too-high:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_invalid_mode@clock-too-high.html>
>         (i915#4278 <https://gitlab.freedesktop.org/drm/intel/issues/4278>)
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +4
>         similar issues
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +2
>         similar issues
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_dpms:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_psr@psr2_dpms.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>  *
>
>     igt@kms_setmode@invalid-clone-single-crtc-stealing:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +58
>         similar issues
>  *
>
>     igt@kms_vrr@flip-dpms:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_vrr@flip-dpms.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_writeback@writeback-check-output:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@prime_nv_pcopy@test3_4:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@prime_nv_pcopy@test3_4.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>  *
>
>     igt@syncobj_timeline@invalid-transfer-non-existent-point:
>
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/igt@syncobj_timeline@invalid-transfer-non-existent-point.html>
>         (i915#5098 <https://gitlab.freedesktop.org/drm/intel/issues/5098>)
>  *
>
>     igt@sysfs_clients@sema-25:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@sysfs_clients@sema-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +2
>         similar issues
>  *
>
>     igt@sysfs_preempt_timeout@timeout@vecs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/igt@sysfs_preempt_timeout@timeout@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl3/igt@sysfs_preempt_timeout@timeout@vecs0.html>
>         (i915#3259 <https://gitlab.freedesktop.org/drm/intel/issues/3259>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_eio@in-flight-contexts-10ms:
>
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html>
>  *
>
>     igt@gem_exec_fair@basic-none@vcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@bcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html>
>  *
>
>     igt@gem_exec_flush@basic-wb-rw-before-default:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-snb5/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>  *
>
>     igt@gem_exec_whisper@basic-fds-forked-all:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         (i915#5843
>         <https://gitlab.freedesktop.org/drm/intel/issues/5843>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/igt@gem_exec_whisper@basic-fds-forked-all.html>
>  *
>
>     igt@gem_softpin@softpin:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/igt@gem_softpin@softpin.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/igt@gem_softpin@softpin.html>
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip.html>
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         +1 similar issue
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346> /
>         i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>  *
>
>     igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html>
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_mmap_cpu:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html>
>         +1 similar issue
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         (i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb6/igt@gem_exec_balancer@parallel.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@gem_exec_balancer@parallel.html>
>         (i915#5614
>         <https://gitlab.freedesktop.org/drm/intel/issues/5614>) +1
>         similar issue
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#5614
>         <https://gitlab.freedesktop.org/drm/intel/issues/5614>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588
>         <https://gitlab.freedesktop.org/drm/intel/issues/588>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#5341
>         <https://gitlab.freedesktop.org/drm/intel/issues/5341>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-snb4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_su@page_flip-xrgb8888:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (i915#4148 <https://gitlab.freedesktop.org/drm/intel/issues/4148>)
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
>
>      o
>
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl3/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11550 -> Patchwork_103230v1
>
> CI-20190529: 20190529
> CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_103230v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------5quf9cs04R3JIYXYIaZUSpPv
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 4/27/2022 11:59, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:165108595317.24236.53055279918120=
78324@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Initial GuC firmware release for DG2</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/103230/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/103230/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103230v1/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11550_full -&gt;
        Patchwork_103230v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_103230v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_103230v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 13)</h2>
      <p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_103230v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_parallel@engines@fds:
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl2/igt@gem_exec_parallel@engines@fds.html" moz-do-=
not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103230v1/shard-skl2/igt@gem_exec_parallel@engines@fds.h=
tml" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@gem_eio@unwedge-stress:
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-tglb5/igt@gem_eio@unwedge-stress.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/232" moz-do-not-send=3D"true">i915#232</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-tglb2/igt@gem_ei=
o@unwedge-stress.html" moz-do-not-send=3D"true">FAIL</a> +1 similar issue</=
li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@kms_rotation_crc@primary-rotation-270:</p>
          <ul>
            <li>{shard-rkl}: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_103230v1/shard-rkl-5/igt@kms_rotation_crc@prim=
ary-rotation-270.html" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_sequence@queue-idle@edp-1-pipe-a}:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl4/igt@kms_sequence@queue-idle@edp-1-pipe-a.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl5/igt@kms_sequence@queue-idle@=
edp-1-pipe-a.html" moz-do-not-send=3D"true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    None of the above are DG2 and this patch only changes the GuC
    firmware version used on DG2. Therefore, they are not related to
    this change.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:165108595317.24236.53055279918120=
78324@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_103230v1_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11550/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11550/shard-apl4/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1155=
0/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11550/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-a=
pl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11550/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_115=
50/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11550/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-=
apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11550/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl2/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11550/shard-apl8/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
550/shard-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11550/shard-apl1/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03230v1/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_103230v1/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard=
-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl7/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_103230v1/shard-apl7/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10323=
0v1/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103230v1/shard-apl6/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103230v1/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl=
6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103230v1/shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/=
shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_103230v1/shard-apl3/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
103230v1/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl2/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_103230v1/shard-apl2/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/sh=
ard-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103230v1/shard-apl1/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3230v1/shard-apl1/boot.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4386" moz-do-not-send=3D"t=
rue">i915#4386</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-skl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-skl9/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11550/shard-skl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1155=
0/shard-skl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11550/shard-skl6/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-s=
kl5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11550/shard-skl5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.=
html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_115=
50/shard-skl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11550/shard-skl3/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-=
skl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11550/shard-skl2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
550/shard-skl10/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html" =
moz-do-not-send=3D"true">PASS</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5032" moz-do-not-send=3D"true">i915#5032</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-=
skl9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl9/boot.html" moz-do=
-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_103230v1/shard-skl9/boot.html" moz-do-not-send=3D"true">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230=
v1/shard-skl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/boot.htm=
l" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_103230v1/shard-skl7/boot.html" moz-do-not-send=3D"=
true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103230v1/shard-skl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/boot.html" moz-do-not=
-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103230v1/shard-skl6/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/s=
hard-skl5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl5/boot.html" m=
oz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103230v1/shard-skl4/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03230v1/shard-skl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl4/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_103230v1/shard-skl3/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_103230v1/shard-skl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard=
-skl2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl2/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_103230v1/shard-skl2/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10323=
0v1/shard-skl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl1/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103230v1/shard-skl10/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_103230v1/shard-skl10/boot.html" moz-do-not-send=3D"true">PASS</a>)</=
li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-balancer:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3/igt@gem_exec_balancer@para=
llel-balancer.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#=
4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl6/igt@gem_exec_fair@basic-flow=
@rcs0.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</=
a>) +163 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103230v1/shard-glk5/igt@gem_exec_fair@basic-pace-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb1/igt@gem_exec_fair@basic-pa=
ce@vcs1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</=
a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-set-default:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-snb2/igt@gem_exec_flush@basic-wb-set-default.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103230v1/shard-snb6/igt@gem_exec_flush@basic-wb-s=
et-default.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109=
271</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl1/igt@gem_huc_copy@huc-copy.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-se=
nd=3D"true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gem_lmem_swapping@para=
llel-random.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send=3D"true">i915#46=
13</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@gem_lmem_swapping@verify=
-ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do=
-not-send=3D"true">i915#4613</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gem_render_copy@y-tile=
d-to-vebox-y-tiled.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/768" moz-do-not-send=3D"true">i=
915#768</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@gen9_exec_parse@basic-=
rejected-ctx-param.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2856" moz-do-not-send=3D"true">=
i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>
              <p>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11550/shard-iclb8/igt@i915_pm_dc@dc6-psr.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103230v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html" moz-do-not-se=
nd=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/454" moz-do-not-send=3D"true">i915#454</a>)</p>
            </li>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@i915_pm_dc@dc6-psr.html=
" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/454" moz-do-not-send=3D"true">i915#454</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@km=
s-lpsp-dp.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1092=
71</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937" m=
oz-do-not-send=3D"true">i915#1937</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_big_fb@4-tiled-16b=
pp-rotate-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send=3D"true">i915#=
5286</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_big_fb@linear-16bp=
p-rotate-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110725" moz-do-not-send=3D"true">fdo#1=
10725</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11161=
4" moz-do-not-send=3D"true">fdo#111614</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip=
:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rota=
te-0-async-flip.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@km=
s_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3743" moz-do-not-send=3D"true">i915#3743</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-as=
ync-flip:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-hflip-async-flip.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" =
moz-do-not-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3777" moz-do-not-send=3D"true">i915#3777</a>)</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-a=
sync-flip:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_big_fb@yf-tiled-max-=
hw-stride-32bpp-rotate-180-hflip-async-flip.html" moz-do-not-send=3D"true">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
 moz-do-not-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3777" moz-do-not-send=3D"true">i915#3777</a>) +2=
 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p=
>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_big_fb@yf-tiled-ma=
x-hw-stride-64bpp-rotate-0-hflip.html" moz-do-not-send=3D"true">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723" moz-do-not=
-send=3D"true">fdo#110723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_ccs@pipe-a-crc-prima=
ry-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-se=
nd=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_ccs@pipe-a-random-cc=
s-data-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +6 similar issues<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_ccs@pipe-b-random-=
ccs-data-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not-se=
nd=3D"true">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +4 similar issue=
s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p=
>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_ccs@pipe-d-bad-rot=
ation-90-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not=
-send=3D"true">fdo#109278</a>) +20 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-mode-timings:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_chamelium@hdmi-mod=
e-timings.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109284" moz-do-not-send=3D"true">fdo#1092=
84</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" =
moz-do-not-send=3D"true">fdo#111827</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-a-deep-color:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_color@pipe-a-deep-=
color.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109278" moz-do-not-send=3D"true">fdo#109278</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-d=
o-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_color_chamelium@pipe=
-a-ctm-0-5.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109=
271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827"=
 moz-do-not-send=3D"true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl10/igt@kms_color_chamelium@pip=
e-d-ctm-0-25.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1=
09271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11182=
7" moz-do-not-send=3D"true">fdo#111827</a>) +12 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_color_chamelium@pi=
pe-d-ctm-blue-to-red.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not-send=3D"tru=
e">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284" moz-do-not-send=3D"true">fdo#109284</a> / <a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-not-send=3D"true">fdo#11=
1827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_content_protection@l=
ic.html" moz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1319" moz-do-not-send=3D"true">i915#1319</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_cursor_crc@pipe-a-=
cursor-512x512-rapid-movement.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not-se=
nd=3D"true">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109279" moz-do-not-send=3D"true">fdo#109279</a>) +1 similar iss=
ue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.h=
tml" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl1/igt@kms_cursor_crc@pipe=
-b-cursor-64x64-random.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3444" moz-do-not-send=3D"tr=
ue">i915#3444</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_cursor_legacy@2x-l=
ong-flip-vs-cursor-legacy.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=
=3D"true">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109278" moz-do-not-send=3D"true">fdo#109278</a>) +1 similar issue=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-t=
ransitions-varying-size.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-icl=
b7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.htm=
l" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2346" moz-do-not-send=3D"true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_draw_crc@draw-meth=
od-rgb565-mmap-cpu-4tiled.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5287" moz-do-not-send=
=3D"true">i915#5287</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_fbcon_fbt@fbc-suspen=
d.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982" moz-do-=
not-send=3D"true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_flip@2x-flip-vs-ex=
pired-vblank.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">fdo#1=
09274</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp=
1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@kms_flip@flip-vs=
-suspend-interruptible@a-dp1.html" moz-do-not-send=3D"true">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not=
-send=3D"true">i915#180</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_103230v1/shard-skl6/igt@kms_flip@plain-flip-fb=
-recreate@b-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i9=
15#2122</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downsc=
aling:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-6=
4bpp-ytile-downscaling.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb=
2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3701" moz-do-not-send=3D"true">i915#3701</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downsc=
aling:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl2/igt@kms_flip_scaled_crc@flip=
-64bpp-ytile-to-16bpp-ytile-downscaling.html" moz-do-not-send=3D"true">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz=
-do-not-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3701" moz-do-not-send=3D"true">i915#3701</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw=
-pwrite:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_frontbuffer_tracki=
ng@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html" moz-do-not-send=3D"true">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109280"=
 moz-do-not-send=3D"true">fdo#109280</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_invalid_mode@clock-too-high:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_invalid_mode@clock=
-too-high.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4278" moz-do-not-send=3D"true">i915#4278=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl3/igt@kms_pipe_crc_basic=
@suspend-read-crc-pipe-c.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-sen=
d=3D"true">i915#180</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_pipe_crc_basic@suspe=
nd-read-crc-pipe-d.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/533" moz-do-not-send=3D"true">i915#533</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_plane_alpha_bl=
end@pipe-a-coverage-7efc.html" moz-do-not-send=3D"true">FAIL</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145" moz-do-not-send=
=3D"true">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/265" moz-do-not-send=3D"true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl4/igt@kms_plane_alpha_blend@pi=
pe-b-alpha-transparent-fb.html" moz-do-not-send=3D"true">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/265" moz-do-not-send=3D=
"true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_plane_alpha_blend@pi=
pe-c-alpha-transparent-fb.html" moz-do-not-send=3D"true">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/265" moz-do-not-send=3D=
"true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
5@pipe-a-edp-1-planes-upscale-downscale:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-do=
wnscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_103230v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scal=
ing-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5235" moz-do-not-send=3D"true">i915#5235</a>) +2 similar issue=
s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b=
-edp-1-upscale-with-rotation:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_plane_scaling@upsc=
ale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation.html" moz-=
do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5176" moz-do-not-send=3D"true">i915#5176</a>) +2 similar iss=
ues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@kms_psr2_su@page_flip-p0=
10.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-no=
t-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_dpms:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_psr@psr2_dpms.html=
" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-fl=
ip-overlay.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb8/igt@kms_ps=
r_stress_test@invalidate-primary-flip-overlay.html" moz-do-not-send=3D"true=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5519=
" moz-do-not-send=3D"true">i915#5519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-apl1/igt@kms_setmode@invalid-clon=
e-single-crtc-stealing.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"t=
rue">fdo#109271</a>) +58 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@flip-dpms:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@kms_vrr@flip-dpms.html=
" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-check-output:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl7/igt@kms_writeback@writeback-=
check-output.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1=
09271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2437=
" moz-do-not-send=3D"true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_pcopy@test3_4:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-iclb7/igt@prime_nv_pcopy@test3_4=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109291" moz-do-not-send=3D"true">fdo#109291</a>)</=
li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl6/igt@syncobj_timeline@invalid=
-transfer-non-existent-point.html" moz-do-not-send=3D"true">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5098" moz-do-no=
t-send=3D"true">i915#5098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@sema-25:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_103230v1/shard-skl9/igt@sysfs_clients@sema-25.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-se=
nd=3D"true">i915#2994</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl9/igt@sysfs_preempt_timeout@timeout@vecs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103230v1/shard-skl3/igt@sysfs_preempt_timeout@tim=
eout@vecs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3259" moz-do-not-send=3D"true">i915#325=
9</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_eio@in-flight-contexts-10ms:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html" moz=
-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3063" moz-do-not-send=3D"true">i915#3063</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-tg=
lb8/igt@gem_eio@in-flight-contexts-10ms.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html" moz-do-=
not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-glk5/igt@=
gem_exec_fair@basic-none@vcs0.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@bcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html" moz-d=
o-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-tglb8=
/igt@gem_exec_fair@basic-pace@bcs0.html" moz-do-not-send=3D"true">PASS</a> =
+1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-=
not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@=
gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/s=
hard-snb5/igt@gem_exec_flush@basic-wb-rw-before-default.html" moz-do-not-se=
nd=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html"=
 moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5843" moz-do-not-send=3D"true">i915#5843</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/s=
hard-skl2/igt@gem_exec_whisper@basic-fds-forked-all.html" moz-do-not-send=
=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@softpin:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl10/igt@gem_softpin@softpin.html" moz-do-not-send=
=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982" moz-do-not-send=3D"true">i915#1982</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-skl8/igt@ge=
m_softpin@softpin.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2521" moz-do-not-send=3D"true">i915#2521</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/sha=
rd-glk7/igt@kms_async_flips@alternate-sync-async-flip.html" moz-do-not-send=
=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html" =
moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shar=
d-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html" moz-do-not-send=3D"tr=
ue">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tra=
nsitions-varying-size.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send=3D"tru=
e">i915#2346</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/533" moz-do-not-send=3D"true">i915#533</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-glk1/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send=
=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10323=
0v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.htm=
l" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i915#2122=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03230v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1=
.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp=
-1-pipe-a.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1188" moz-do-not-send=3D"true">i915#1188=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03230v1/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a=
.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-fac=
tor-0-5@pipe-b-edp-1-planes-upscale-downscale:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0=
-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5235" moz-do-not-send=3D"true">i915#5235</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3/ig=
t@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-=
edp-1-planes-upscale-downscale.html" moz-do-not-send=3D"true">PASS</a> +2 s=
imilar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2=
/igt@kms_psr@psr2_sprite_mmap_cpu.html" moz-do-not-send=3D"true">PASS</a> +=
1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.h=
tml" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4939" moz-do-not-send=3D"true">i915#4939</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230=
v1/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-no=
t-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb6/igt@gem_exec_balancer@parallel.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@=
gem_exec_balancer@parallel.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5614" moz-do-not-=
send=3D"true">i915#5614</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html"=
 moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5614" moz-do-not-send=3D"true">i915#5614</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/s=
hard-iclb7/igt@gem_exec_balancer@parallel-contexts.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4525" moz-do-not-send=3D"true">i915#4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/588" moz-do-not-send=3D"true">i915#588</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb3=
/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-n=
ot-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11550/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-=
pipe-c.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5341" moz-=
do-not-send=3D"true">i915#5341</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_103230v1/shard-snb4/igt@kms_pipe_crc_basic@com=
pare-crc-sanitycheck-pipe-c.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-=
sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1=
/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-ic=
lb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068" =
moz-do-not-send=3D"true">fdo#111068</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658</a>) +1 si=
milar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11550/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html" moz-=
do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109642" moz-do-not-send=3D"true">fdo#109642</a> / <a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D111068" moz-do-not-send=3D"t=
rue">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658" moz-do-not-send=3D"true">i915#658</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-iclb2/igt@kms_psr=
2_su@page_flip-xrgb8888.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4148" moz-do-not-send=3D"t=
rue">i915#4148</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html" moz-do-not-send=3D"t=
rue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1550/shard-apl7/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl=
4/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@a=
borted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/igt@runner@aborted.html" m=
oz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11550/shard-apl6/igt@runner@aborted.html" moz-do-not-send=
=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11550/shard-apl3/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-=
do-not-send=3D"true">i915#180</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send=
=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5257" moz-do-not-send=3D"true">i915#5257</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl6/igt@r=
unner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.ht=
ml" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.html" moz-=
do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_103230v1/shard-apl8/igt@runner@aborted.html" moz-do-not-s=
end=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_103230v1/shard-apl2/igt@runner@aborted.html" moz-do-not-send=3D"t=
rue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103230v1/shard-apl2/igt@runner@aborted.html" moz-do-not-send=3D"true">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230=
v1/shard-apl1/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard=
-apl3/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/180" moz-do-not-send=3D"true">i915#180</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915=
#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312=
" moz-do-not-send=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5257" moz-do-not-send=3D"true">i915#5257</a>)</p=
>
            </li>
            <li>
              <p>shard-kbl: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html" moz-do-not-send=3D"t=
rue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1550/shard-kbl7/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl=
7/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@a=
borted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@runner@aborted.html" m=
oz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11550/shard-kbl4/igt@runner@aborted.html" moz-do-not-send=
=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11550/shard-kbl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shar=
d-kbl1/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl1/igt@ru=
nner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl3/igt@runner@aborted.h=
tml" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-se=
nd=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5257" moz-do-not-send=3D"true">i915#5257</a>) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt=
@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@=
aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.=
html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/igt@runner@aborted.html" mo=
z-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103230v1/shard-kbl4/igt@runner@aborted.html" moz-do-not=
-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html" moz-do-not-send=3D=
"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103230v1/shard-kbl1/igt@runner@aborted.html" moz-do-not-send=3D"true">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1032=
30v1/shard-kbl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/sha=
rd-kbl4/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl4/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runn=
er@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl7/igt@runner@abort=
ed.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html"=
 moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103230v1/shard-kbl6/igt@runner@aborted.html" moz-do-=
not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_103230v1/shard-kbl7/igt@runner@aborted.html" moz-do-not-send=
=3D"true">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180" moz-do-not-send=3D"true">i915#180</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-=
do-not-send=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5257" moz-do-not-send=3D"true">i915#5257</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11550 -&gt; Patchwork_103230v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_103230v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------5quf9cs04R3JIYXYIaZUSpPv--
