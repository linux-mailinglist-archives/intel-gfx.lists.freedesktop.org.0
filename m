Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A6A7BEA82
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 21:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D094110E1A5;
	Mon,  9 Oct 2023 19:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C858910E1A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 19:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696879461; x=1728415461;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JbGgW8O8Yf4NkeIDrQwEjQ+7QV5HTqy2Kz9QFcTaHXU=;
 b=PEqdxwBxenxYox0U3RY/kNiXxHuJ3EfTmM8k0xx8/EGUSl20rVRldig9
 33GrL5NMQBnVmOdcILzH1NON+m+h+VY4mlDFb85fjSz5EhuPWuqnY7f27
 I8+xn/8gmoxVz2LAGTeIvdqvpwoqHn2e3mq3eWkDh9s6xKLXRgzLxYZ/D
 J3wk0+vkag1yyAVs67uehVfyQCs1dGeWSzUKB/f9QvuIQgjGuzGmx2kGU
 xjvGNHB3nFqR4jE/TvtBtJ4iNdm3woLGoed+6PRbFunj9GhlamIDjdanB
 MYi1sGcUbB0roXtzBRo7YnJt0A8avN0A5bArqLHo10zr4+65QmBdLuwyg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387060664"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="387060664"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 12:23:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="1000336975"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="1000336975"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 12:23:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 12:23:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 12:23:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 12:23:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JR3eZf1jd4ofH4HsKiZ7FVON2citw1dZePB8dH3EiXcR4Pla+hHkqXKn+qrjgFKZCFO7Dc66IIdggDM+5aTAhgEbv8yVpLoQfTSwM6KW97yFB7sWbsJAKjQ3tZtz8AAbRRI9+SCvfQTXX7qKLHOYXo3vX6k8YrWT/TlAylv2Yz2rOk3azVcIhvwD0gHTpF6E6ZWT2MYWDQj4zHMf1xZc95usIur6YdJ5VWolfakAdSFgJMYBiH2RvDzRTbY+RlAIbGNLST8uM8kfd0+Q+W/x/r3Lb4nSUFTUZgAI95Ze6jZBgs4Q6bu2DZfDFai06JJk7QOghmucQeHzqKfA+tnxog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBsQ88LaOHhNK59A750yrg7Q0676QV8CKrDze77f7IE=;
 b=emCo49xBsvFyhaTDV9+PYEW4d8kAWOwiV+k0S190UPZzyUD5pY6Kdn9VOETPaK6en0xYbdzbrS2rJPWMGtRx0e59Q8r6vfhtEvUOQc4UpcW9F1wf4DyYO40HXsGKRekSMEBBohjxhNM5F6YJhLC/oP2T7TS+R2gQIsVoZwUO40BRd1U2LWkmGleGWgKiD/d6TRtTj1T3oJ89kYp9ZIUgMiPs63CbPV6Dy/Z9zKBAxQL3G57GTdswVkPS+1uJ4h5GPu/bb9D9t4g8DYBzR7xQejNvSbPb11J5mwVb2v0x0p3sF3lpoAY+5UtACCRrVeBslYDePt4Z5gjp2Y0INOypkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW5PR11MB5810.namprd11.prod.outlook.com (2603:10b6:303:192::22)
 by BL1PR11MB6025.namprd11.prod.outlook.com (2603:10b6:208:390::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.43; Mon, 9 Oct
 2023 19:23:42 +0000
Received: from MW5PR11MB5810.namprd11.prod.outlook.com
 ([fe80::c79d:298b:c747:6d65]) by MW5PR11MB5810.namprd11.prod.outlook.com
 ([fe80::c79d:298b:c747:6d65%5]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 19:23:42 +0000
Message-ID: <a85feb59-e5fb-99b2-7b5e-4838a3add9b0@intel.com>
Date: Mon, 9 Oct 2023 21:23:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <27bf7758-61e0-2587-1800-5aa4be42fffe@intel.com>
 <SJ1PR11MB6129C8B2AFEDD2399227698DB9CEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
In-Reply-To: <SJ1PR11MB6129C8B2AFEDD2399227698DB9CEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR5P281CA0049.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::8) To MW5PR11MB5810.namprd11.prod.outlook.com
 (2603:10b6:303:192::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR11MB5810:EE_|BL1PR11MB6025:EE_
X-MS-Office365-Filtering-Correlation-Id: d8c101e3-59bc-46ae-6380-08dbc8fd3f48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WMjpcSPsALX2oHo4nHT2nEIZ6rgPXQh17W+brOmwOO5A3uqKU3Nho9X0UNd3One3vSWDHx18EgH7DSTzrSToYbxMbPTMpj5yP6loP6Lr/HM/4uU6D+4c9KxzN7/Q6NOhnxjS5lTNIVAJDpnwMMnik78btRngDvWQ2t7gtLteyT+jcbUsLItcSO04oY5MUvUToLbMcNbMAqXknP8YUt6KJrU0+Ry4DaZ5tHObAnDyTze4fIurwPuaZ2Vt4RqFKL7LjYTAd04YiglhK7azCRfkMRJOmbxvvmL9h3Zhw2+Ej9iwinMPbNg3Qqk7czMNAWN1khC0fh4PJsU1C91TRBim3v/3FqhE+2wxC7/ezGteBnodW8LefIj0loZUKnphSqtVHoNJsouWHfd2MVrux5PuLVp68UzIKBJzP7oMWvcRdbSIltUfxyK1czZphIUxksUFhSiVrQdHIF+jVdK5KxLZC4ROOviZP5yC4Sady9J/vCuN46wMAr3JtqPcw3dXuRDhQrgZ9dotMwOyTQphFex7Q3N6IXh8/CjzaulufIS8im1UTDNXRdWv88kMGR6gcXHStELfECJiw2xvUyTvFET9rop/u6SiMpqe0uOeRnt0fUkz6WzHBzFZ4HmUp8AuXhnOAfZrfaTkY0Ws20MkpySr5L96vV4vz0afXJ5BeN74kf4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5810.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(6512007)(45080400002)(66476007)(66556008)(2616005)(6506007)(83380400001)(107886003)(26005)(3480700007)(316002)(54906003)(37006003)(66946007)(6636002)(8936002)(6862004)(8676002)(4326008)(53546011)(5660300002)(6666004)(41300700001)(2906002)(6486002)(478600001)(966005)(36756003)(38100700002)(82960400001)(86362001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajkyNnRVY1hLTDdRWCs2S2srZWZwWmNESVNiUktJZTdMZnY3Wi9LUnBqQ2pD?=
 =?utf-8?B?V3RQdC9yS3UwU09UbFNER2RrcW9pZjJnV0llN1drOVdpTVlyaU5qT3ZOUHJq?=
 =?utf-8?B?K29KNFRVVjlMZ0RQRndCeWFDWlh2R2psN1BXMXJ1ZVlxNEJNWEhoRXZ6U3RQ?=
 =?utf-8?B?SW5FZGlkTVpNdGNGNkFoeU5uY2hLNE8vRW8xd2xwUUp2SkdCMmZRTmdPWnVO?=
 =?utf-8?B?UEpLSlBtdzdhWVhGaWRCWXFKWEFkUW9SUHBWRGplNE9PSkxYajBxdGJBVzg1?=
 =?utf-8?B?eWV5aU0rZ0xISXhhazJqUTdlcG43QUpia2tueVd3Q29RcHdzVkIydlFmVVcr?=
 =?utf-8?B?TzF4eklzTE1iTTRUNWhRWnMyMk1BamwvWUdIZWlSck1yS0xrejlPS1lSRmxx?=
 =?utf-8?B?dmNuWW5xTXpUTzAxcEg5TXJtbWE5N2hBaEs2T1NBcGZhUmxpUnRmR1duUDNF?=
 =?utf-8?B?SWZoenNkbEh0dkpheHhUcWpJV3dhdCt1bmlmWktLdnpQd05BRTMyanJTclRM?=
 =?utf-8?B?UTYvZ3RXblhjRGRWbWhWa05kdURvMC9wanVOMy85Q2picSt6UEhkRUx3WFJ3?=
 =?utf-8?B?ZmZnZndycGsvVDdkUTVISTJ5RllDalZaMGpDZmUrQmR0T0poSnd3amNJWktv?=
 =?utf-8?B?UFUrejBvOWZKSDBEc0UxV2tPUDl0R1pXLzZuVGcxNDE1QitsQVBDLzV6N3Jx?=
 =?utf-8?B?UmZGZGxoaFRVQVlkVGs5SGVRaEFvVEpkcUlRRTEvR3BLaEVEazdDQXp4cEQw?=
 =?utf-8?B?T1ZJZnc0bTdNQ3pIbmJYY0dSVzNBUDRHanQ5WXNuUkVRQyswZmtGMHBQN1NR?=
 =?utf-8?B?MzRYeWNKRDJDU0ZPVUJFRkNHMnRJNnpjeng2TURFNjBCSUh1alRkaTRQb0JU?=
 =?utf-8?B?Wi9TVTZCSUtQRlFaUWI5SW1ScVFJNk1NK1U0OHN0UnlveFBMbHd2TktiZFhH?=
 =?utf-8?B?YWJIYXlIY0llOFF2QUlLZmZBY2IwcEFHVnJUWWVjQXBZSWJGM3hTZjBETVpY?=
 =?utf-8?B?bVNZSHJJa1Y3WmcvRDFzRHJ2bjFjaHlIdnhRelNIYlJ2aHVpTnZLUTlLTDJW?=
 =?utf-8?B?d1daSkZJUGg5VmVkOUFEa2lqTDVmYnpFd2REZ1RWenlhR0tqMjBENE9Nanlr?=
 =?utf-8?B?TzBHdzcyNlIrb3dEZ2ZQRFJ6WUE2cHpsODVqZ1BvcVNZWGQ0RndyczRlV2Nj?=
 =?utf-8?B?a0M2T1BsSnhlWEdMbzhIQzc1VDBvclJKdUVhTEljZE80Y3BRWlBjT0NJa1U2?=
 =?utf-8?B?aFNFdjBnTnIzais4Wk9CdlNocE9GSnZtOU92UnVZTG56T3hKYWc5eWRxNGMw?=
 =?utf-8?B?Qk01bzBHK2g3S1RzS3djcmtJT1FZdDdmZjNmY3pIVkJnRHpId2JZeGhtVWVr?=
 =?utf-8?B?NW9vbmxTRE9MamRpQWJLRDBVcEF5bkFZRkZLMm1ONXAxWlNFek1qMit5dDkz?=
 =?utf-8?B?ZzVjaDVxWDlGZkFHL0M4bjh2ejNjSzFqMHBNZ1kxeFQ1SHMrTTJac0U4Z3hq?=
 =?utf-8?B?a1dyYUZUVUgrYTRFWmgrTWwyQU5rMGhNU3FybWFqSWhjeVo3MXFzUS9ydXlp?=
 =?utf-8?B?bktQV09jMVRmOFJSN0NmVmVZWUxvNkNQZGVRamFJMm1acTYyalQyaCtYbXZX?=
 =?utf-8?B?Z2JnRXVRTTY3Y29aZTJFTlZYUTRFb2kwVlVOR3RhcmZHOW5jYkhKYzdHTmE1?=
 =?utf-8?B?VlBzRm5wYnAzdll4TnBqU3VRcjFiZzFaUXF2Q1NHcGdoMFVNSTJOblpOZTNp?=
 =?utf-8?B?TVVqTjgzRWlPQ2w3WmhEYW9tcnFReGc3emk5ZlJoL0gzeUd0QzNPZ0RhV3lI?=
 =?utf-8?B?ZDRyNE9vUnRKRWpBa1Rqenc5VWtpV3NZWXM1U3JaTGJqS2JsNzVlU0VHRVZR?=
 =?utf-8?B?Wm5sSVQ4dU5Ybm5SR0tLRmhjRG9leWwzTDJsdVZKT0g1Mk5LUHk0SCtDcmg3?=
 =?utf-8?B?QVVNRy9vTTJ5d3BoZGNndXNNZm5Lb1phcW91S2hhY2VHcHpIaWFNcEI2NTZs?=
 =?utf-8?B?OVZ6dTFrSFpreTVFRHJ0bmovTUJadW5ucnZQa1F1K1NYTzdnNCtCY2RjNi9a?=
 =?utf-8?B?dlZWUHRpcWtBa1paTnlFU2I1VTlER3FlY1IrdEMwOC9JQUlydHg5QVRPSDV2?=
 =?utf-8?B?dlR3aHdHNlNua2R1VFg0dmE5TVJYNktYZ1RjRW9wU1dYZkFEYjRvVDU0WjlM?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8c101e3-59bc-46ae-6380-08dbc8fd3f48
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5810.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 19:23:41.9536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kepoi8ZLdUk98GNTkdh1aqWt9HG1pYLSbjfQQAsjGqQy/M2CUj9LmEnw+r+JKPJHbifglZyrhbbANuRJrnMvGtsogm2Z/Mv+zvNyERf18fQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6025
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression in linux-next
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/9/2023 7:10 AM, Borah, Chaitanya Kumar wrote:
> Hello Rafael
>
>> Thanks for the report, I think that this is a lockdep assertion failing.
>> If that is correct, it should be straightforward to fix.
>> I'll take care of this early next week.
>> Thanks!
> Thank you for your response.  Please let us know when a fix is available.

It should be fixed in linux-next from today, by this commit:

https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=linux-next&id=b44444027ce7714f309e96b804b7fb088a40d708

Thanks!


> From: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Sent: Saturday, October 7, 2023 2:01 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: Re: Regression in linux-next
>
> Hi,
> On 10/5/2023 5:58 PM, Borah, Chaitanya Kumar wrote:
> Hello Rafael,
>   
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
>   
> Thanks for the report, I think that this is a lockdep assertion failing.
> If that is correct, it should be straightforward to fix.
> I'll take care of this early next week.
> Thanks!
>
> On next-20231003 [2], we are seeing the following error
>   
> ```````````````````````````````````````````````````````````````````````````````
> <4>[   14.093075] ------------[ cut here ]------------
> <4>[   14.097664] WARNING: CPU: 0 PID: 1 at drivers/thermal/thermal_trip.c:18 for_each_thermal_trip+0x83/0x90
> <4>[   14.106977] Modules linked in:
> <4>[   14.110017] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W          6.6.0-rc4-next-20231003-next-20231003-gc9f2baaa18b5+ #1
> <4>[   14.121305] Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3323.D89.2309110529 09/11/2023
> <4>[   14.134478] RIP: 0010:for_each_thermal_trip+0x83/0x90
> <4>[   14.139496] Code: 5c 41 5d c3 cc cc cc cc 5b 31 c0 5d 41 5c 41 5d c3 cc cc cc cc 48 8d bf f0 05 00 00 be ff ff ff ff e8 21 a2 2d 00 85 c0 75 9a <0f> 0b eb 96 66 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90
>   
> Details log can be found in [3].
>   
> After bisecting the tree, the following patch [4] seems to be causing the regression.
>   
> commit d5ea889246b112e228433a5f27f57af90ca0c1fb
> Author: Rafael J. Wysocki mailto:rafael.j.wysocki@intel.com
> Date:   Thu Sep 21 20:02:59 2023 +0200
>   
>      ACPI: thermal: Do not use trip indices for cooling device binding
>   
>      Rearrange the ACPI thermal driver's callback functions used for cooling
>      device binding and unbinding, acpi_thermal_bind_cooling_device() and
>      acpi_thermal_unbind_cooling_device(), respectively, so that they use trip
>      pointers instead of trip indices which is more straightforward and allows
>      the driver to become independent of the ordering of trips in the thermal
>      zone structure.
>   
>      The general functionality is not expected to be changed.
>   
>      Signed-off-by: Rafael J. Wysocki mailto:rafael.j.wysocki@intel.com
>      Reviewed-by: Daniel Lezcano mailto:daniel.lezcano@linaro.org
>   
> We also verified by moving the head of the tree to the previous commit.
>   
> Could you please check why this patch causes the regression and if we can find a solution for it soon?
>   
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003
> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/boot0.txt
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003&id=d5ea889246b112e228433a5f27f57af90ca0c1fb
