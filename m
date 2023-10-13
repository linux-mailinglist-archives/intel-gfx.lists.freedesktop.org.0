Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835C77C8D93
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 21:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E912B10E640;
	Fri, 13 Oct 2023 19:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33EED10E63E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 19:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697224357; x=1728760357;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P5Ce73N1UF7U+LN92egsYWBUMwQhPBDMkm26BW+50M8=;
 b=joFPoq+5YMbF4moljaCMQUVRBjG7Z32TTeH2Zu0ym4S2BiAmFvdQuPGn
 uqWwCBVeFd4J9I6ti6mLSZY93HiHT7lgDz0PDEhAihhYz2koeLiNncPP5
 VcUsN/s5qaQ+h3pMN4lrIx8wUrH1qifBItZBuYMHIdJRn+6Xp0L7hwH1u
 kEylMiCFufEW32gzYDum7/lIwEgFHAzjYDnmo7ZiJu4JdBCKAmwKMfD0M
 nlTVxK2kCKHes1mDY+uotn5xhXth/9wc9xiqWaSbRE8V3064cuWCk6OEE
 ekmnRtV4Jk+VScAzziHOLOyoCvOzRi9vWhUpjXM7DEjEf9om6ppx18Dk/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="471477548"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="471477548"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 12:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="748453638"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="748453638"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 12:12:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 12:12:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 12:12:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 12:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1obQLCcPF7HSxmjL7Vn0SnNRMjtJBby2YW3B5yZWFWR3xrSCWcFp5ib/hmzIKPurU1G55NUV4a94N4Dd09luTpnY7qIDeZ6lvlxvBZCb9O1bqz1kKyDZrQY098YQNe4+3d+Vl8A2maFwrBqBZqVcIg+OvgHXvX+bQczobx6Q884xlJDB7yaWIaahg0ekrXoFNEQTOxV1JlRtu7nuehbSJsQQQ0FS07nDxJZeM7BQrStkDf1luDSTG5qkZmMF5I2EQpI0CCfU4AklJcxnc0xjiwKG+ITIat1+imT32VaPCtdaWtTzHSudL4ADYNzdXiKJ5zHPou8u6CyFzt9S3pzEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdSy44Ubvmv9ErxqQuXyqmsGgpLp/dWMOQPNFeSoe8k=;
 b=atNswiosYsotaz3LE00l4sGjYl0nNeks6xnQEjaLWKpFfeqYnPK8lKSCFXnlfFBtSkSr5Ckr3/yuN9YUbIMN+rqvyI9ogWPg27rQCr6oO23R5fqPKjnjBjrBxlSi0DmXJK2C2q59fEq+b5Or7rpOpLDQGM/JPO4sxb06hM6oNx9hnnhFisFoLakcA0nUOwhuvf0/TA4eTMiBiNbK328qwdjpp3tAUAVshCfiOsHVjuEdNKzdGnge4LDfv/7eX0GQk+8+CR/KlYDsAp5e+ska9xxzZuURcuUvFgEdl4sttyO3xlMW7S/k5ukeMadE/EPXeIoS+O9bLnBENCE2TjWRZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB5610.namprd11.prod.outlook.com (2603:10b6:510:e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Fri, 13 Oct
 2023 19:12:33 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 19:12:33 +0000
Message-ID: <1125fc7f-3f14-4ee8-bb3d-c39a30256964@intel.com>
Date: Fri, 13 Oct 2023 12:12:30 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-5-jonathan.cavitt@intel.com>
 <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
 <CH0PR11MB54443725C13D61E8D8EC164BE5D2A@CH0PR11MB5444.namprd11.prod.outlook.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <CH0PR11MB54443725C13D61E8D8EC164BE5D2A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0018.namprd02.prod.outlook.com
 (2603:10b6:303:16d::17) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d28bd05-0827-4bc2-93a9-08dbcc205a9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HlcfJ9PZEVYB5verRE5OAadKCC+5cMHbRwHjbYsSJ5TuNvqiSmgnVxKo9kZZ7LY4i+slh1TCatoMOWBjHkhIHbcwBaCX5kOUJervDSej5eFHQ7j3FBPigxoX89K3lgTwsi5HqT5Y9tviE0xMacqWNDPHxXkj282BElJKCRyT/pt3X04LgxQzLop46vV+XX0nph0uyx99U4C9kFv9UToQxAjmZr1h67U+NVZFIszzwMWYa2qHbDk26AeyhEjXe0A3jyPd6AwYlNB2L/LznMC3CkCSCFMwD19lPa8gDvvx/G1KEJkygsYbO7DxDmlZDzgrYCD7jv7YRWiEl4apI82Ui5xdkR7qI6x5DhQ9luUWiPELVGmutpXxgOPlxO5Chw8HlyzURNdXCszpFQTwScvnUpRIopemw7lk7ZVseWUkymaLM3k6+rUD5uUK6Xsi3oqllWxqk3GttuEuGRrybm3/BXTnQPJ31vIFpEPAs8FHYUt44WHu9SPzd4ke5Z61EyU2lN1Hu1XHDzHhgD1UyT/IUVJIAxszwc+NdCK5oFhGgK2MogdW712PVwWBSC84h5/XQN6mWk2jEFuwwgLIrTMkDo3MqZk+PjMb1d+IPlUKTMap+3HVVyRQcm7nU5rKRr15NP9eB8kiGqftm7ByZi1yOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(366004)(136003)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(6486002)(478600001)(4326008)(8676002)(66899024)(54906003)(15650500001)(66476007)(66556008)(110136005)(316002)(66946007)(8936002)(82960400001)(86362001)(2906002)(38100700002)(36756003)(5660300002)(41300700001)(31696002)(26005)(6512007)(31686004)(2616005)(83380400001)(6506007)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk9OMDZyV1g2NTNsdG1hWWVHL2FJeXg2dkFtVGRKVlFDZzNKNGNRM2R0MEZV?=
 =?utf-8?B?UGJ6MUpUWHZzejJTdDVMa3NsdGFLZGtCMmZ0cFBhbzVGbUY4V2dBQ1Nza1p6?=
 =?utf-8?B?eE5yczE1Rzc1dFE5ZUNTc0xPUGNGQ21MTWpJYkVRcklEbFFvR0NMcFNnSldI?=
 =?utf-8?B?QW8rSGMrSXNHWFk2Z3VKazJtT1k1QlZ5TEJWT1dYR1ErQXU4c2IybitwcnZu?=
 =?utf-8?B?VlhNVmdCbkd5WEJtbThpQkpvODdEN3NEMUVOdFB6dG1qTG9tM2gvV25BWnFr?=
 =?utf-8?B?Q0QwR0tVOVpRYmJPT0NYKzN3RHc2aDBmT25JUzFwRy8xMGI4VTlxRUxQMith?=
 =?utf-8?B?Q0tlaW5vR3N0U2hVMHFEcXRaOWpwQmx6SlRlMmNtaE5aOGROYkYxOEZsdlQ3?=
 =?utf-8?B?bFB3QnhWTEVvYVBES28vRTR2Q1FGamtwVGpwNnh3c2lieEFaanhuYnZqazNt?=
 =?utf-8?B?Z1RXZFFrYUdndXliYUtBQnhWUitlQWhKVnl2RDgxMEtKM3hCbE5seTJEM25S?=
 =?utf-8?B?azJHOHA4dm1SQm9TMjR0a0txUWoybnJvUjE2b0VhaTRwenJBTWQ0TXd6L1FH?=
 =?utf-8?B?MHBRbHFTUzl6SEhrS0txbFZ2T1JHRGVyUjIyK04wcW5QOEg1eVFUWUtwM05N?=
 =?utf-8?B?WnZMREpYRkNOK0Q0YlJYMm9qREw5K3RFcXBOWnd4QjUrTjRlS0daSDVJYzhy?=
 =?utf-8?B?MWEzanpCRnRDb3RsZlhDK3ArSkFlRXF1dElKVFRpRkE4MnBnTXRIejdpdll2?=
 =?utf-8?B?d21uZ005bGt1TURsellKb3BsclFHTzh0N3h1MEx6UDdDSVdIQkR0K0FtWU5D?=
 =?utf-8?B?ZjdWMm9YNGlzQVBvSk45bTdlZm9HczJrSnpHUTFiSjBjeitHQmZWd0pUbmNw?=
 =?utf-8?B?VjVNWVZrTFd5TUdaU01uSEdJMVNvd3YxTHRBS3M5bDlLZXg1UVpXN1ZDaEtT?=
 =?utf-8?B?NlBHZXBWL2RQK2hGTFNSbjNRK04xOHJYZGRWOVJ1d0UvbGxMTnpjcGw4MWdm?=
 =?utf-8?B?amtuamxDaUEwZUVqQXlJTjNnMklGSVQzRDM1QXJyRjAxajhWb2J3YVNXandS?=
 =?utf-8?B?VXRGUzBkc0FrOGh1MzZ3dm5lSldlNkZJREFwV3JzM1VNbExvQ0w1Y0x2UTBC?=
 =?utf-8?B?eHFONkhKbHRCN0tlRmwvNm9ybXpnTFFSRytYNjZkQVBDUkoyVDN2czRPaTdE?=
 =?utf-8?B?OHNIVHNyNU9xcSt3OXdEYzl6czZIR29HUzY0VFd5UUd0eXVSZ3VMWXAvczZT?=
 =?utf-8?B?SXNCN0UzOGtZWC9DWjFGY0FlcG1lY2pPYndxb1FRYW83eDhaeGRyNHY0MU5R?=
 =?utf-8?B?eUNqQXUvWnNlTzZ3SkcxenpXTHgyWUNvcXpKNUVqbXlJZmN4NzJtUFBUNHdG?=
 =?utf-8?B?dlJGUGkwditieHdUR2Q1SHVWWWJpZHJGOHBNeGxLU0tsdllFNzd2ZWJjYUs2?=
 =?utf-8?B?OWNoWWFXUGtnUHFoK1ZGbzh5MUpyM2QwUndmZGhJMS9MQUpsbmhQb3plZ0FG?=
 =?utf-8?B?Ykhlc0pJNnZSSGIxZGRJSzZSL3VOSkRSTzZQY1QwUXlVQm5Hbm8zY29ocU5t?=
 =?utf-8?B?NWdXUytRczd5SGQ3NXB5Wk1UQUxzSi9MMXAzRnpnMU8zZjAzbWE2UFFaYlpI?=
 =?utf-8?B?ZkV5c2dMTWo1a3o0WUNmUDdnN1ZZT3hDenNOTGVsRkQxTENvOXl2SHJZVjdM?=
 =?utf-8?B?MFU2TUMvbCs4L1dBNktjMkJZTFRZbWpmdndzVDlsRlNvdERlc3pwaVRRVUd4?=
 =?utf-8?B?R2k5dmEvTnFEVXVVaytNNzRoQ2tsdHd1YnZ6SWxxVncrSmVnQzBSRGp3ekNu?=
 =?utf-8?B?QlQyQnAvTDNJV210Qk5CZG05ZDhobjBTd0liWXR2ZmpyS0taYXFrSlMreFBE?=
 =?utf-8?B?dEJZa3pZcUpwSTd2YUNLSE0vSXBzYi9pQTRHSjE4VVJCUTh6NGhuNURkeVR5?=
 =?utf-8?B?RkdsTDFteURxeWZjLzRYMGhURnFieDNZdjM1dXRLTngva1hpM05VRVU2Vkc3?=
 =?utf-8?B?RDRQMTRKR0RHeDVoaVZHNGdOYjExVnI4MmFrdUcxZlVNTEZWdGd0NHkwVFZu?=
 =?utf-8?B?Zkl6SVlHMHErZk0vYVhNMGcweTBQbVZPOGNnallXbi81U2JUZ3pFMVBsWWFh?=
 =?utf-8?B?UERuSHY4WmNGcXNnVzhPRkloV1JZLzFNaHZjSTZNN2tvbHJmSWFDYUhQSVp5?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d28bd05-0827-4bc2-93a9-08dbcc205a9f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 19:12:33.5658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /rdsHBkDdhRsKjZgWzUM2il0JVhaN0mMee0iByZJYruWCb2C9U2YOGoaipXTAFW6PO6vcTCcYpp49oE6fWJdj8AN95AYhe8fUdry/gsAAxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/13/2023 07:42, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Harrison, John C <john.c.harrison@intel.com>
> Sent: Thursday, October 12, 2023 6:08 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <aravind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>; Krzysztofik, Janusz <janusz.krzysztofik@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.intel.com; jani.nikula@linux.intel.com
> Subject: Re: [PATCH v13 4/7] drm/i915: No TLB invalidation on suspended GT
>> On 10/12/2023 15:38, Jonathan Cavitt wrote:
>>> In case of GT is suspended, don't allow submission of new TLB invalidation
>>> request and cancel all pending requests. The TLB entries will be
>>> invalidated either during GuC reload or on system resume.
>>>
>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> CC: John Harrison <john.c.harrison@intel.com>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 22 ++++++++++++-------
>>>    drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 ++++++
>>>    3 files changed, 22 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> index 0949628d69f8b..2b6dfe62c8f2a 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> @@ -537,4 +537,5 @@ int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
>>>    int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
>>>    int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
>>>    				    const u32 *payload, u32 len);
>>> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>>>    #endif
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> index 1377398afcdfa..3a0d20064878a 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> @@ -1796,13 +1796,24 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>>>    	intel_context_put(parent);
>>>    }
>>>    
>>> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>>> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>>>    {
>>>    	struct intel_guc_tlb_wait *wait;
>>> +	unsigned long i;
>>> +
>>> +	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
>> Why the change from 'if(!is_available) return' to 'if(HAS_) {doStuff}'?
>
> I feel like this question has two parts, so I'll answer them separately:
>
> 1. Why HAS_GUC_TLB_INVALIDATION and not intel_guc_tlb_invalidation_is_available?
>
> Wake_up_all_tlb_invalidate is called during the suspend/resume path, specifically in the
> middle of suspend.  It's required for it to be called here to clean up any invalidations left
> in the queue during the suspend/resume phase because they are no longer valid requests.
> However, the suspend/resume phase also resets GuC, so intel_guc_is_ready returns false.
> In short, using intel_guc_invalidation_is_available was causing us to skip this code section
> incorrectly, resulting in spurious GuC TLB invalidation timeout errors during gt reset.
I'm not following this argument. If a reset is occurring then there is 
no need to issue the invalidate. And the previous version was skipping 
if GuC is in reset but this version does not. Which means it is now 
sending invalidate requests to GuC when GuC is not able to respond and 
therefore more likely to cause timeout errors not less likely.

>
>
> 2. Why use a positive check to perform and not a negative check to skip?
>
> In patch 3, wake_up_all_tlb_invalidate was originally called universally on all platforms
> during intel_guc_submission_reset, which is incorrect and not how was reimplemented here.
> I discovered this was the case and retroactively corrected it, as seen below.
> Because of how intel_guc_submission_reset is structured, a negative check to skip wouldn't
> make much sense there, so I used a positive check to perform instead.  This is a holdover from
> that implementation, and was kept to maintain consistency between patches 3 and 4.  It's
> probably not as big of a deal as I'm imagining, but I think it would be awkward if the initial
> implementation in intel_guc_submission_reset and the reimplementation in
> wake_up_all_tlb_invalidate weren't superficially the same, even if they were functionally
> equivalent otherwise.
I would argue that a bunch of early exit conditions at the start of a 
function is easy to read and maintain than adding nesting levels to the 
entire function.

John.


>
>
> -Jonathan Cavitt
>
>
>> John.
>>
>>> +		xa_lock_irq(&guc->tlb_lookup);
>>> +		xa_for_each(&guc->tlb_lookup, i, wait)
>>> +			wake_up(&wait->wq);
>>> +		xa_unlock_irq(&guc->tlb_lookup);
>>> +	}
>>> +}
>>> +
>>> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>>> +{
>>>    	struct intel_context *ce;
>>>    	unsigned long index;
>>>    	unsigned long flags;
>>> -	unsigned long i;
>>>    
>>>    	if (unlikely(!guc_submission_initialized(guc))) {
>>>    		/* Reset called during driver load? GuC not yet initialised! */
>>> @@ -1833,12 +1844,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>>>    	 * The full GT reset will have cleared the TLB caches and flushed the
>>>    	 * G2H message queue; we can release all the blocked waiters.
>>>    	 */
>>> -	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
>>> -		xa_lock_irq(&guc->tlb_lookup);
>>> -		xa_for_each(&guc->tlb_lookup, i, wait)
>>> -			wake_up(&wait->wq);
>>> -		xa_unlock_irq(&guc->tlb_lookup);
>>> -	}
>>> +	wake_up_all_tlb_invalidate(guc);
>>>    }
>>>    
>>>    static void guc_cancel_context_requests(struct intel_context *ce)
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> index 98b103375b7ab..27f6561dd7319 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> @@ -688,6 +688,8 @@ void intel_uc_suspend(struct intel_uc *uc)
>>>    	/* flush the GSC worker */
>>>    	intel_gsc_uc_flush_work(&uc->gsc);
>>>    
>>> +	wake_up_all_tlb_invalidate(guc);
>>> +
>>>    	if (!intel_guc_is_ready(guc)) {
>>>    		guc->interrupts.enabled = false;
>>>    		return;
>>> @@ -736,6 +738,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>>>    
>>>    	intel_gsc_uc_resume(&uc->gsc);
>>>    
>>> +	if (intel_guc_tlb_invalidation_is_available(guc)) {
>>> +		intel_guc_invalidate_tlb_engines(guc);
>>> +		intel_guc_invalidate_tlb_guc(guc);
>>> +	}
>>> +
>>>    	return 0;
>>>    }
>>>    
>>

