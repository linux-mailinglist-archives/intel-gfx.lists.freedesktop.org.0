Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AE06D104B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 22:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6C210E059;
	Thu, 30 Mar 2023 20:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD69410E21C;
 Thu, 30 Mar 2023 20:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680209575; x=1711745575;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gGhW4HQi2RRaSsmhEnuPfotbYV7ssFzm1XIqz2trfeI=;
 b=iQ62UdShnmcxDxxA3CGwXXDDaS2fB0q7FUfR4TP41KFqxm1WqnqMny1H
 zMUCgCWXdvMOFTf2aYPhiJg5qHkRn1d5lmTnvHE16IIwG5gDTnFZQ6TX1
 cMlD+yHjK82KiyCyb2k3A+fu/clHNg7Q+8Py9TkHngjhchecJhr0V1SrX
 eZVqnTYWTIzTz/E7NMRDzMRH8CZKu4+Oux/D/Wxb0TXae4/wYgU7/reK3
 LaZtBtLFd6Tg7msS29qPL7cjAvJX1Y6+kdJPCpCmECYYXwNJceiqDoP6x
 xgjMO6nSBHmBUSra83rmUPL7KV2RFpazAJcfVwPvrcU8qEptLQndkukji A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="329806125"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="329806125"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 13:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="795816928"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="795816928"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2023 13:52:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 13:52:35 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 13:52:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 13:52:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 13:52:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IHihFMh/reVeB7uUft51Ago+G1CyTH+BWgJ6icRj60oyJucNKTgKvJ/yw4NNE/WlNSy99WScO0NgQZPOORKHyznspz+/bHnwINo8mYKoVwGQ2Np2aki3ujGD9G8Ae6/2IpBoEIAdToGWuHLPkc+0RmlfIfaEnWoHnIW8kg8YJRCCLp+n0WfSYyrpJeFrU79hSuGDH9o30B0IsHWiLA89v7yzrJEwro8ZwlUdziDXN+7thoUZd3DFTBvVIrbxlavgs0GHqa+AqLCwQozCrzROs2H6QoWt4LJY6hMYXSet3NRMAV+Kuzpx/VAenvuK3FGeAp/cmwc2fA7H9zdVJQ2mIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qpe62Zv6WjE1s002LcMwyk87E5/WXppU/zgVDWy9mkM=;
 b=oGWbJofsf855FUk3y9t10ruY7YriAxbPN2a8RooB0rrCK7Kh6bvAEiaSrnBl9+ptlxIrIDXqCxpIb/t0G5GbOZelrZ/C0oq8uuUJ3WGe0msJWaPCPvpgvOOTGZwbyeHnfv7QcQiUR5cLWCsH0ZLaWCXzuQfGOjsE1nOfcYRHR+dJvIArapLcq0G1EfPQ1SVmRUhltD0zLnbUgsepDeVeqT9Y/Jy/x45DpMtUUKbk0wMhf0o4NgD4LJifagLP/8L2gfnqEy94NGfqbz6Qt6DMgIhQc8Ycz+E1ca5+qNvT8cDZeLTsMNLq3sjwOVoY5svEVOfqR2BVh4LUNNGcryOtUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SA0PR11MB4717.namprd11.prod.outlook.com (2603:10b6:806:9f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Thu, 30 Mar
 2023 20:52:31 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250%7]) with mapi id 15.20.6222.035; Thu, 30 Mar 2023
 20:52:30 +0000
Message-ID: <f2b11473-cab7-25a8-e8cf-62ad409638d7@intel.com>
Date: Thu, 30 Mar 2023 13:52:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230324224959.1727662-1-vinay.belgaumkar@intel.com>
 <20230324224959.1727662-3-vinay.belgaumkar@intel.com>
 <ZCAmqEsDAxVt7ysy@intel.com> <99d669bf-54cc-1105-fe50-616db3aaeae2@intel.com>
 <ZCM3mchRbwxU15L1@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <ZCM3mchRbwxU15L1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR02CA0041.namprd02.prod.outlook.com
 (2603:10b6:a03:54::18) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SA0PR11MB4717:EE_
X-MS-Office365-Filtering-Correlation-Id: 96c2c327-f9c3-4e4a-0f4e-08db3160ada6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CUZYuRCg+Csz7cI/9/X16+yituF6Q5b18Gdr5chVOaLLrjIhownGF0nj/d4mWl3x3B/7Ijc1oV1CxpNARuHR/61wfybJafGlEybf8BuXj3dmULZYjOsNc46CHTARY79LdIO1SBZMljqHvnSKlFZxUByKEzv5AZkvyPo+hEVBktUHjMHmDZS2+zxrtj0ODRic2SIihveV06yOI5vRmcaBWgO/8y36ltDADRPo20/OSWz7UwwTM5PRN/qqcwKseAsppQDMouQjuxodTN5YwVO3SM2SEoqxqjR90K7+zFNkPWuaiACFp7TJ5NGKT8aBA394flzdiimw8jDcFTni5TZqe//+PuSn/OYeV/Q/RmHXbsSH67AFeFYWmF2e9mYtRnYyuaJIk6BhCGJrrV1LRH9KVIyEz5hDmnIkbnBTHjkAEuvtPSoNqCSvMI4dXeAKHkgmEbvqmQJOyMmxyg55rPhqWQAgO1WMYaG3cKBB+bVNKhXUyId1G27OvPJ96BH+jZmjBucb3vKwjZXsa5DuAv+rt8sl807r+LFLXG1yaauqwfffJt7ze6AqW/VaizwvkssVg8c+lUzDvIJmKvPZwBeIX9bvwQpgqYCNRBp3QtnxDO/nxrHXM/sVCLxxLDQKPMS6gdVm9lhUo1D0Tup0z7XRwg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(396003)(346002)(366004)(136003)(451199021)(6636002)(316002)(37006003)(478600001)(450100002)(36756003)(31696002)(82960400001)(86362001)(6862004)(8936002)(5660300002)(4326008)(66556008)(38100700002)(66476007)(2906002)(8676002)(66946007)(186003)(6506007)(41300700001)(53546011)(26005)(6512007)(83380400001)(31686004)(2616005)(6486002)(966005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TU9NSEJSeDJxOVd3dTJZaXFzNXl1YTZqWnhTd05IVWZYYWlwUmRhQTdlNFcw?=
 =?utf-8?B?bExHMEdKanhQTFVBY3ZNSHZpVGw1a1hPQWtiYlpnM0dTUkVlRThCTytuaVpK?=
 =?utf-8?B?RTIvL2RrckRieUtnN2ZVakEvbTFKMTZXekNrT2NLcmtaSFVZeFVWaEpCTzJo?=
 =?utf-8?B?THVheW5BSjNqZzd2dnRicmFHSnRYWnNRMHJuRmZKR3h3dURndWI1Z0ZvMHh2?=
 =?utf-8?B?UFZ4dmo5SzFsTVhZYm82MFQxV2JhK3c1Y2lQMEI3QUFpY2FVMS8wZWNaRFJV?=
 =?utf-8?B?dEhldWxsSkRPamV5T003NHg2N0I0MTA2MElBRk1yeW1UUmtvbVFLekhOdEhE?=
 =?utf-8?B?ZTlIM0JPRmZ1dFRNU01EdXE3NHVDMDJOZWNTNWlQeW1BRVpWVHN0Yi9yVUEz?=
 =?utf-8?B?bmxVclduQ2NTU3UzbTlDWkZWNVpDZDlvZ2NtR1VGbEdnSWlCdWNZeHF2YTFJ?=
 =?utf-8?B?bmIyblZZYTVtSEo2U0hVeGNxZWxScXpJMDE5ZHBTT2tSVkp5VUhHWjRBbzlv?=
 =?utf-8?B?SHRIcnVKWk9SRW1BNWVKcUlCdHZ5czRiNTA4aERUZXN1dFF3aXAxZktMdHRN?=
 =?utf-8?B?bFdFckNxZjNXK1ROZzRzRFNVMVpXcTM2WVBOZ1VmMUY0QnpQaDkxRDNIK1pB?=
 =?utf-8?B?dlVYY2NNeElSSFhidHU3bXlUUzhMbEo0TzFWbTZESUFCNi96OXNKc1lwNkpj?=
 =?utf-8?B?d1dqVFYxTDRRaXpjODk1eXk3ai9uYndwaUQ1TG15bVh4SFhFYXh3NWtyaHll?=
 =?utf-8?B?dmdITnN6dWFXTzE3a1R1TmJzN2ZGZGN0Mk4xd1Y3ZXhNdUpaTTUyMzcvUWNQ?=
 =?utf-8?B?em1DeDNPbjI1R2x6ZjlOZzhnbCtYekgwRTA3MzJQNUVMSGRGSU9VTUJvNmU3?=
 =?utf-8?B?cWFMNytnS0ZmNTlzdFVQajdMN3l1SU43b0VLSEI0bk9WVmZtTFAvMzhHMWov?=
 =?utf-8?B?cUU2alVBUGpnYUhCdXM2UFU5RjRpWTRrL3F0WktCeHZDaW1DVHN5bXo4SFR5?=
 =?utf-8?B?NTNOZThTR05UNU1vYnZvY0VUSW5Od2g1Sk1UQUsyZ2ExU1ZPMCt1TEc0L0RT?=
 =?utf-8?B?eFdzTnlWR29wZUlVeFNjRkkyREcyRTJDUEQ0VGFSazF0dzdya1VBMlVKU0Vn?=
 =?utf-8?B?ZWFCYW5sQWVzNkQvVzF2SUkxLzF1eVZvSzF3bzdTZUFURWJ6amdLQndQNlhw?=
 =?utf-8?B?eHJNd2hoeWNSdnZ6WVlRanFiUHJuSkZHMm5VTlpROUhHUVVtMm1ERHJ4dVJ2?=
 =?utf-8?B?TkdlT1Q3YlBDWmNUU2JSKzBqM0QxWkhGd2dkWkxKOTFQSnJseU5XT1h0S1BP?=
 =?utf-8?B?OS9qOS9BNlQ4MkV0bGtiTWE4MXlnMWZaVkowRzVkeFpwZjhHMHB4ZzBENVMw?=
 =?utf-8?B?RC9vcDJSbndQSjltZDdvZ0ppMGF5ekpTbTNCbUxBL0JJSFVZQzNVNFpseTVk?=
 =?utf-8?B?WWF5K2dUK3RKcWtPaHp5RXBNclBCZnNTTEtGVDJKT0IwaEpPNFVHb0svcnFx?=
 =?utf-8?B?Q1JkczdodWlhdnFQN3V0OWY5bnJ0YzVaUnphTS9SOXJ3MW1TbW1hS2hnZ1Nn?=
 =?utf-8?B?aVN0TjF1Y2gzSXVYakhhenJBT2VjKysxQURqVTlMYk1YM2p1T2UyUUF5dENM?=
 =?utf-8?B?ajc2TExOSVZWbnpOYXJVK3pCeUtKRlM1TVZhTnFqQ0tBSHVzb1Ezb2lGcmVO?=
 =?utf-8?B?RjYwSFR3TVZ0VjM4c0gza09oU2pqdzY4K2g2SDhjV29hYjFyYXNKSkhSK0ZQ?=
 =?utf-8?B?MmFaWG5oMWFoMElIWGllUUtrMmhUeDhlQWpvNkcyK3IvdGNqQlJIQ1Z2V0RV?=
 =?utf-8?B?NEd4a0x3ajg4QW1teG5rVWlNTVhDdGY0VEdIMGtIMkM0NitRQ1FDeGV0K0Za?=
 =?utf-8?B?SjVGcURJV2hxWXJxR01UYVZYdFUxTGM5Q3VtUzhYbG5LNVgzbnhid3hCVGpu?=
 =?utf-8?B?QlRUbEJ2VW1JQW1vYXE3bTM2UnhVMEhOVGRGL2w2Qmc2Sm9TZW1UY3F2anpO?=
 =?utf-8?B?TmZkWit0NklYZmpucG4vajAvRXFOS3VaZXBjY08vZTZjWmVKR3JGY3pVZHdL?=
 =?utf-8?B?aFJnblk4OXA4aEMvV2lRWHcvRTlIZi9CUXlTazFyajdEQ0NGNGlqZWt1bG9l?=
 =?utf-8?B?bHFpRnNNZ3pObkNFaFo3Vm1hUUlQTUp2ZUhRdGppRDJCa3o0Nm9MN1Q3azNR?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96c2c327-f9c3-4e4a-0f4e-08db3160ada6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 20:52:30.5054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o7G6X/qz8xO+SbloGi/akOaK4Tj4j7OL+WxP8sBRGLbhevnXQ6HcFjjHltvcKq9U9mgde5JaL5cG5YuLQRxUugDiw8dJdklIX395EG+gEbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4717
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915_guc_pc: Add some basic SLPC
 igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/28/2023 11:53 AM, Rodrigo Vivi wrote:
> On Mon, Mar 27, 2023 at 04:29:55PM -0700, Belgaumkar, Vinay wrote:
>> On 3/26/2023 4:04 AM, Rodrigo Vivi wrote:
>>> On Fri, Mar 24, 2023 at 03:49:59PM -0700, Vinay Belgaumkar wrote:
>>>> Use the xe_guc_pc test for i915 as well. Validate basic
>>>> api for GT freq control. Also test interaction with GT
>>>> reset. We skip rps tests with SLPC enabled, this will
>>>> re-introduce some coverage. SLPC selftests are already
>>>> covering some other workload related scenarios.
>>>>
>>>> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> you probably meant 'Cc:'
>> Added you as Signed-off-by since you are the original author in xe igt.
> I do understand you did with the best of intentions here. But since with
> the new Xe driver we are going to hit many cases like this. Please allow
> me to use this case here to bring some thoughts.
>
> First of all, there's a very common misunderstanding of the meaning of the
> 'Signed-off-by:' (sob).
>
> **hint**: It does *not* mean 'authorship'!
>
> Although we are in an IGT patch, let's use the kernel definition so we
> are aligned in some well documented rule:
>
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html?highlight=signed%20off#developer-s-certificate-of-origin-1-1
>
> So, like defined on the official rules above, in this very specific case,
> when you created the patch, your 'sob' certified ('b') that:
> "The contribution is based upon previous work that, to the best of my knowledge,
>   is covered under an appropriate open source license and I have the right under
> that license to submit that work with modifications"
>
> Any extra Sob would be added as the patch could be in its transportation.
>
> "Any further SoBs (Signed-off-by:’s) following the author’s SoB are from people
> handling and transporting the patch, but were not involved in its development.
> SoB chains should reflect the real route a patch took as it was propagated to
> the maintainers and ultimately to Linus, with the first SoB entry signalling
> primary authorship of a single author."
>
> Same as 'c' of the certificate of origin: "The contribution was provided directly
> to me by some other person who certified (a), (b) or (c) and I have not modified it.
>
> It is very important to highlight this transportation rules because there
> are many new devs that think that we maintainers are stealing ownership.
> As you can see, this is not the case, but the rule.
>
> Back to your case, since I had never seen this patch in my life before it hit
> the mailing list, I couldn't have certified this patch in any possible way,
> so the forged sob is the improper approach.
>
> It is very hard to define a written rule on what to do with the code copied
> from one driver to the other. In many cases the recognition is important,
> but in other cases it is even hard to find who was actually the true author of
> that code.
>
> There are many options available. A simple one could be 'Cc' the person and
> write in the commit message that the code was based on the other driver from
> that person, but maybe there are better options available. So let's say that
> when in doubt: ask. Contact the original author and ask what he/she has
> to suggest. Maybe just this mention and cc would be enough, maybe even with
> an acked-by or with the explicit sob, or maybe with some other tag like
> 'co-developed-by'.

Ok, makes sense. I have sent out another patch with you Cc'd.

Thanks,

Vinay.

>
> Thanks,
> Rodrigo.
>
>>>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>>> ---
>>>>    tests/i915/i915_guc_pc.c | 151 +++++++++++++++++++++++++++++++++++++++
>>>>    tests/meson.build        |   1 +
>>>>    2 files changed, 152 insertions(+)
>>>>    create mode 100644 tests/i915/i915_guc_pc.c
>>>>
>>>> diff --git a/tests/i915/i915_guc_pc.c b/tests/i915/i915_guc_pc.c
>>>> new file mode 100644
>>>> index 00000000..f9a0ed83
>>>> --- /dev/null
>>>> +++ b/tests/i915/i915_guc_pc.c
>>> since 'guc_pc' is not a thing in i915 I'm afraid this will cause
>>> confusion later.
>>>
>>> I know, guc_slpc also doesn't make a lot of sense here...
>>>
>>> Should we then try to move this code to the 'tests/i915/i915_pm_rps.c'
>>> or maybe name it i915_pm_freq_api or something like that?
>> Sure. I was trying to make these guc/slpc specific since host trubo/RPS
>> already has coverage in IGT.
>>
>> Thanks,
>>
>> Vinay.
>>
>>>> @@ -0,0 +1,151 @@
>>>> +// SPDX-License-Identifier: MIT
>>>> +/*
>>>> + * Copyright © 2023 Intel Corporation
>>>> + */
>>>> +
>>>> +#include <dirent.h>
>>>> +#include <errno.h>
>>>> +#include <fcntl.h>
>>>> +#include <inttypes.h>
>>>> +#include <stdlib.h>
>>>> +#include <sys/stat.h>
>>>> +#include <sys/syscall.h>
>>>> +#include <sys/types.h>
>>>> +#include <unistd.h>
>>>> +
>>>> +#include "drmtest.h"
>>>> +#include "i915/gem.h"
>>>> +#include "igt_sysfs.h"
>>>> +#include "igt.h"
>>>> +
>>>> +IGT_TEST_DESCRIPTION("Test GuC PM features like SLPC and its interactions");
>>>> +/*
>>>> + * Too many intermediate components and steps before freq is adjusted
>>>> + * Specially if workload is under execution, so let's wait 100 ms.
>>>> + */
>>>> +#define ACT_FREQ_LATENCY_US 100000
>>>> +
>>>> +static uint32_t get_freq(int dirfd, uint8_t id)
>>>> +{
>>>> +	uint32_t val;
>>>> +
>>>> +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
>>>> +
>>>> +	return val;
>>>> +}
>>>> +
>>>> +static int set_freq(int dirfd, uint8_t id, uint32_t val)
>>>> +{
>>>> +	return igt_sysfs_rps_printf(dirfd, id, "%u", val);
>>>> +}
>>>> +
>>>> +static void test_freq_basic_api(int dirfd, int gt)
>>>> +{
>>>> +	uint32_t rpn, rp0, rpe;
>>>> +
>>>> +	/* Save frequencies */
>>>> +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>>> +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>>>> +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>>>> +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
>>>> +
>>>> +	/*
>>>> +	 * Negative bound tests
>>>> +	 * RPn is the floor
>>>> +	 * RP0 is the ceiling
>>>> +	 */
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
>>>> +
>>>> +	/* Assert min requests are respected from rp0 to rpn */
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0) > 0);
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rp0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpe) > 0);
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpe);
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>> +
>>>> +	/* Assert max requests are respected from rpn to rp0 */
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpe) > 0);
>>>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpe);
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
>>>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rp0);
>>>> +
>>>> +}
>>>> +
>>>> +static void test_reset(int i915, int dirfd, int gt)
>>>> +{
>>>> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>>> +	int fd;
>>>> +
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>>> +	usleep(ACT_FREQ_LATENCY_US);
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>> +
>>>> +	/* Manually trigger a GT reset */
>>>> +	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>>>> +	igt_require(fd >= 0);
>>>> +	igt_ignore_warn(write(fd, "1\n", 2));
>>>> +	close(fd);
>>>> +
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>> +}
>>>> +
>>>> +igt_main
>>>> +{
>>>> +	int i915 = -1;
>>>> +	uint32_t *stash_min, *stash_max;
>>>> +
>>>> +	igt_fixture {
>>>> +		int num_gts, dirfd, gt;
>>>> +
>>>> +		i915 = drm_open_driver(DRIVER_INTEL);
>>>> +		igt_require_gem(i915);
>>>> +		/* i915_pm_rps already covers execlist path */
>>>> +		igt_require(gem_using_guc_submission(i915));
>>>> +
>>>> +		num_gts = igt_sysfs_get_num_gt(i915);
>>>> +		stash_min = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
>>>> +		stash_max = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
>>>> +
>>>> +		/* Save curr min and max across GTs */
>>>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>>>> +			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>>>> +			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
>>>> +		}
>>>> +	}
>>>> +
>>>> +	igt_describe("Test basic API for controlling min/max GT frequency");
>>>> +	igt_subtest_with_dynamic_f("freq-basic-api") {
>>>> +		int dirfd, gt;
>>>> +
>>>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>>>> +			igt_dynamic_f("gt%u", gt)
>>>> +				test_freq_basic_api(dirfd, gt);
>>>> +	}
>>>> +
>>>> +	igt_describe("Test basic freq API works after a reset");
>>>> +	igt_subtest_with_dynamic_f("freq-reset") {
>>>> +		int dirfd, gt;
>>>> +
>>>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>>>> +			igt_dynamic_f("gt%u", gt)
>>>> +				test_reset(i915, dirfd, gt);
>>>> +	}
>>>> +
>>>> +	igt_fixture {
>>>> +		int dirfd, gt;
>>>> +		/* Restore frequencies */
>>>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>>>> +			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
>>>> +			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
>>>> +		}
>>>> +		close(i915);
>>>> +	}
>>>> +}
>>>> diff --git a/tests/meson.build b/tests/meson.build
>>>> index 7d2168be..3ebd3bf2 100644
>>>> --- a/tests/meson.build
>>>> +++ b/tests/meson.build
>>>> @@ -202,6 +202,7 @@ i915_progs = [
>>>>    	'gem_workarounds',
>>>>    	'i915_fb_tiling',
>>>>    	'i915_getparams_basic',
>>>> +	'i915_guc_pc',
>>>>    	'i915_hangman',
>>>>    	'i915_hwmon',
>>>>    	'i915_module_load',
>>>> -- 
>>>> 2.38.1
>>>>
