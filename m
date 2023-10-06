Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8354F7BC05E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 22:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1EF10E56A;
	Fri,  6 Oct 2023 20:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EDA510E56A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 20:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696624244; x=1728160244;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ik3PWmgSttFl1nByAn+SARDWr/hZ0NPXp927sQLYN5c=;
 b=gBhMFsBt62zAGI27Lu84d++mOC6UWrezRQJ2C/a9eUC6/RRPoflN2HqK
 x+O1K2kD+wptOfhjqEaXDFGjlBhG8cQWBix1X5vMC9MmdzfzrAuKwD8+6
 5p8p/fm45uREgmohnQMbwNjEAxAbKCdQSRuLe7IoP706zt3rc27ygHNKE
 +97W1/sGVx6MFQNznPYXkjeScmv4LSu+SpfpPwHhBbcGki8oQDo9eHzmx
 8nwQXZv+m7qUfOq1SxBt8kx9NV5c3JxyebhqAIqHcXhmEd1M2dJIJNIrn
 IEei0y3EXhOekaVnG2Mvyab/uR4h7BLDM45I3SKm/kl2RDDYVNM0BWUb6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="450323870"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
 d="scan'208,217";a="450323870"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 13:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="822635000"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
 d="scan'208,217";a="822635000"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 13:30:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 13:30:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 13:30:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 13:30:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 13:30:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TIhoc3BrcW/63bsea3W5imdMF6F2b88XAzSmUTy06JsZeRL3/h4LCH3yP8drYpbpRGJpWmNqrEWGnAYfMtdy9LZRbimfa5Nhc4XR2rhf58h2abuZ0jEM48Xld+7EeRQBqT5Ge4pIfV8oBWRiR6Tqu3FYSlgOofj33y1tCzxn4FEMlB+yRdjEElBU8Kn+rMmCtrpXGKfW0TG0DTarN5absg9l4kqx22mtWy1N2GxPw160qTgIApGhcp2VVHK+HjG+K997R8ZwfItKdb7L4hJ4fyOiWDLHdteE8JObSi871j6GKwcvBDCldi77Gmcc48J8ZB0pgiwR3TDBti2XWgD0Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3aeFBjTTDvyVIa1w7lH+vos6xMVvWE74uki/w1vXP3k=;
 b=aMgVpFtIEX9Ett5sBcxzTPv4BPYcVVtEwahq+Foc0h4JUKFwq6EukRqY1r2vX8TrpBXsNoOnlYT6WKFQfO1CjyJj9rzQ4DfZiOtk2tdeOj8XNYXN5LLN1bmOh5msjyWGYGEGGzeJ9jfF1CuYB553wvEmO4Wd3FOtPXs5MD0U2BJB9ESYE/9EJ2KXNMoybCkUfNrFZ14yOS4nULR4vAlrO2heQgmNDR28P/RA6hx31j0APbV6dEk8OXbH7hPEgA/WJV7nO2j4ZVpYofL1xKq1uL1Ib6/ksqDjy+V9HCaIlKGim/LAxsgq0m3ighQaZTFz0yNFb58wdrkaUsCc92JeFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW5PR11MB5810.namprd11.prod.outlook.com (2603:10b6:303:192::22)
 by MW4PR11MB7152.namprd11.prod.outlook.com (2603:10b6:303:222::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.39; Fri, 6 Oct
 2023 20:30:40 +0000
Received: from MW5PR11MB5810.namprd11.prod.outlook.com
 ([fe80::c79d:298b:c747:6d65]) by MW5PR11MB5810.namprd11.prod.outlook.com
 ([fe80::c79d:298b:c747:6d65%5]) with mapi id 15.20.6838.016; Fri, 6 Oct 2023
 20:30:40 +0000
Content-Type: multipart/alternative;
 boundary="------------mEvqkdgAte8Me0i6iNVf9vm8"
Message-ID: <27bf7758-61e0-2587-1800-5aa4be42fffe@intel.com>
Date: Fri, 6 Oct 2023 22:30:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
In-Reply-To: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-ClientProxiedBy: VE1PR03CA0014.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::26) To MW5PR11MB5810.namprd11.prod.outlook.com
 (2603:10b6:303:192::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR11MB5810:EE_|MW4PR11MB7152:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cc237a4-cef8-4a6a-914a-08dbc6ab1b61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dx7QsNSILNc+6Ab4mhmtRqtWctJ6ryMXK4fmQbSKSETlFjx7HiOUfnZ3htlkNJYJPxPvGPwmgQgm3O6gxKXjCVHKNVBzfm4es0+jyJvlNk4WxUyBToqrsjOcx8UYHCRZE0jwY3b5GFT4aV3Mnv2dvkwG8FsTeR98iuNRTi6DMiAA/lIkIzx20fapWVRTfivD3sUQNuGm+8wuVXJU0bkv3fonTExullbchYSsLe6k7E8xzep4CDmBb7jvOYC6pv/zmWv3Svab2DpL+5cEyInemEmFaLCeihJeoqINBa5XNrpwF+OAugsOadnXziQv7LRAM84Xn/j8gQt93ZehfA6QhzS+FQZinXex3IdVewWXF/19MucmnzTpcvroo8hckbP0vgwpaWz/a/VbUNcTRwpFejaYZshKJ9euHKhcKkQHEfhsVAkOq38D4GQe0sba8D9tXzm+go2E3vsdXWiWEUq0KzGbpt0sw4ccqd+nAZBsNxh3cn9tzLC4aTQt5KYMlXloGkWocnyuht0wB1yRz/lC7VeGi4jvldyupbrKvziODUgvWTxO9DI9Pvt3/3iGQ0PTyT7WaFSlNYqc9iwsoG8IzPdfW2K1gijETR4HhDPYm/AZSllTcZzxFDzKHTHQah3lfsxIbUDYwBhQ/YvU2RZ7iLJ0/Xw+MCOel4bPHIPcsGk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5810.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(346002)(39860400002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(2906002)(478600001)(966005)(6486002)(166002)(45080400002)(6666004)(36756003)(26005)(107886003)(38100700002)(83380400001)(31696002)(6506007)(53546011)(82960400001)(6512007)(2616005)(86362001)(33964004)(316002)(8936002)(4326008)(8676002)(41300700001)(31686004)(5660300002)(21615005)(66946007)(6862004)(66556008)(66476007)(3480700007)(37006003)(54906003)(6636002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1BuK2xJbFJJaHFPMTlhdDJQSUN2QmlIc09aT1U0S2tINHVsSzlZdXdYQSt3?=
 =?utf-8?B?dVdMRUt2RisxUDR3OXQzM1p2MTNZYXpDTzZUZU82WVRsZVhWbkNWOERSNlFl?=
 =?utf-8?B?Q2xwS3ArcnYzVFhXOU83WEE1aWZUSkRRZFNyb0hMczJvQkFlZjJZVGd0UERq?=
 =?utf-8?B?VHZkamFLcmhiVXR1WjdQRlFBTGxjV1Z3aTZ2dW14UjFraGxmMWo3NlFqaE85?=
 =?utf-8?B?N1N2NFhBUWRVV3hKOWZtY3BKREQ5OTBhb3k5YmloUlNkNGJmQkFrWEFEc0FD?=
 =?utf-8?B?d0xJY2IxYWNJYXQrM3NoOENBWm1MY0FLRW5RUkMrVkZYNjArMDRGaU5NbjhG?=
 =?utf-8?B?UUs0NmtnRWcrR3RYWjYrZSt3dFpDcWNodFYwV1AxamxLRENWc2hNMEk5dGlu?=
 =?utf-8?B?WDBRckVsZEFGRVlTeG5HNUpNRk1DamlqcVB4OXNHeVE3RHBPYkJsdW50Um11?=
 =?utf-8?B?RkNsU3gvTEZndnkwdktPZHlVTlVueERNaTlBQ1RvYURtNDNXdWJ1TGJTdDlJ?=
 =?utf-8?B?dlhYdTMzV0cxSFJIdnhUNnBDUnFoZlRjR1h3dWNha2NjRG44eGRmQlNUOEJY?=
 =?utf-8?B?UkdoTnpaZzJXaXlFWEhlc2gwUm5Wako5eWVCZ1BMZjk5V3pNaG1DU01uUzNK?=
 =?utf-8?B?OUNIek5hMS9EdnFOWmIrRWV2SFJ1bUlIa0pqV0t0ZGYyOElSTWJpVWZiTHJq?=
 =?utf-8?B?RzkzUHFsN3R2OERRN25SUFlHNHljbTVNV2tJL25NVlE5cklkZi96cXFRMC9x?=
 =?utf-8?B?My8xYkIxUDN0cXJxQ21zNWo5dXphdGVNTlZvTjhobXFXU240WVpwNzh0VFg2?=
 =?utf-8?B?RjRtUFZKdllsdmZ2V0lFWWFDZUtERWZWRkZqUnA1TWFIQVNHZFRGR1dLVW5O?=
 =?utf-8?B?SzNabDdOdGNpek93WFRlWk50QzQvSVF0aFZDVi83SURSSmx6OUZhUU1wWHRN?=
 =?utf-8?B?N1VqME44bEZma1JIOVducTk2VVRZdzNnVlE5UnJjblc4TmtibFlXRC8wWm5x?=
 =?utf-8?B?b29neHBtUWJldnZZWHRIZXVydlNoU3JMRVFyeUxyWjQxOUJPaXo4QzdyM3F4?=
 =?utf-8?B?a3ZndENJb3dETmVOU0pqZ3Jud0ZpdlZmUE9JUzkrSTFTVk1EUTBkN2ZobUFq?=
 =?utf-8?B?ZUVVcVpqdTNhbmhPSGcyYklHRU5DUkh4RjVhVFI4UWZRM01HN0szQmZrK3VO?=
 =?utf-8?B?RDJwT1pFSzg0T3V1b1dmK2x1YVNpUGdpenVoT0N1aDd1T09YK0RTMG1jTGFL?=
 =?utf-8?B?STZ3alVQdVlBaDJ4TUNPVWtNYVdKQ3lTMDZGWEpoWlZCRGFna3BXMWNOb3hF?=
 =?utf-8?B?UVVlUTI3YlhoOFBTTTc3eHNzbS8rYzdVZXFpN0F2V3M4TXJaVnEvZ0x1M0VG?=
 =?utf-8?B?R0JaMW9aczBDMjhQemRLanBFdzFnbWdGblZGRFZrTW5tRWxrY1B2RGRZSnZn?=
 =?utf-8?B?UkExcnZ0VVZxNzM5eGxMTFUrYkE0WDZLRTlISkgwaGJhay9MbXl0bUFTY21h?=
 =?utf-8?B?TmNvOUZYdEF3dFNsRXFYWUFmY0E2YWhGYXF1QWdDb2xqVENhdXUyMHN4THlo?=
 =?utf-8?B?aC8vSkZSNFVRa2lzYnorSkNWVW1CeG44SGFJY3orMHMwenJrT2RQSHBnQ0xx?=
 =?utf-8?B?bjlHN0M2TTg4QVNSbENGOHZwV1UvNmRtdXdoMzNKN2NjRm5BSG4vWEo0Y1dB?=
 =?utf-8?B?QUY1VllZdXg5OXozRnk2bUpGRzgrWnJneVI1cEVWNngrWUFrZm10QTBvRTE2?=
 =?utf-8?B?aTFHQlZHdVF3MnZsY1p2R3FvQTdUWTRHNTRCN0E4MWpPY01OQStlc3M4RGhH?=
 =?utf-8?B?Tm1adThpbGtnMGJFRFh0KzUrWVkrUnBWUjRlMGdCV2h4VW1DVmFKSUw5TmNl?=
 =?utf-8?B?UmRwMElTTENpNGZTZlhUaExnVUlxc0R5OGlkSTdtdk12eTBiS0pyK1dGclVH?=
 =?utf-8?B?LzZ1NW1IZUg5WUFXWmhrTENyUGRkb2pwSnpiczVPYXZub1dVU3FnbS9ONm5M?=
 =?utf-8?B?eUFwUGNvSHp0anZ6NkdqSDZOUTlSZTc0VG9IMmFYWEZ5dUh1L09PNXE0bkw1?=
 =?utf-8?B?Sk8wb0JLQlBhTWEybC9qNmxiS2dpcnZkd0MwS0U0V3BXZTdQaW1TbXdBRWht?=
 =?utf-8?B?TlkwTEcxQjc1eXhsNHdvRStVai9sNWJ5dWY4cjNLM0xhYUlpbUhWVEdRSlJN?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cc237a4-cef8-4a6a-914a-08dbc6ab1b61
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5810.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 20:30:40.5137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +lkDLK8kgqI7mFTpzHMa/egPwNXaCfiSUK6E2PLzfHhh77tl/C6gVXHWAtt9hFhNS94fhkfRMs4iZeYca15W8n6LlS4BNrQIumiGh3sgNXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7152
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

--------------mEvqkdgAte8Me0i6iNVf9vm8
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 10/5/2023 5:58 PM, Borah, Chaitanya Kumar wrote:
>
> Hello Rafael,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team 
> in Intel.
>
> This mail is regarding a regression we are seeing in our CI runs[1] on 
> linux-next repository.
>
Thanks for the report, I think that this is a lockdep assertion failing.

If that is correct, it should be straightforward to fix.

I'll take care of this early next week.

Thanks!


> On next-20231003 [2], we are seeing the following error
>
> ```````````````````````````````````````````````````````````````````````````````
>
> <4>[ 14.093075] ------------[ cut here ]------------
>
> <4>[ 14.097664] WARNING: CPU: 0 PID: 1 at 
> drivers/thermal/thermal_trip.c:18 for_each_thermal_trip+0x83/0x90
>
> <4>[ 14.106977] Modules linked in:
>
> <4>[ 14.110017] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G W 
>       6.6.0-rc4-next-20231003-next-20231003-gc9f2baaa18b5+ #1
>
> <4>[ 14.121305] Hardware name: Intel Corporation Meteor Lake Client 
> Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS 
> MTLPFWI1.R00.3323.D89.2309110529 09/11/2023
>
> <4>[ 14.134478] RIP: 0010:for_each_thermal_trip+0x83/0x90
>
> <4>[ 14.139496] Code: 5c 41 5d c3 cc cc cc cc 5b 31 c0 5d 41 5c 41 5d 
> c3 cc cc cc cc 48 8d bf f0 05 00 00 be ff ff ff ff e8 21 a2 2d 00 85 
> c0 75 9a <0f> 0b eb 96 66 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 
> 90 90
>
> Details log can be found in [3].
>
> After bisecting the tree, the following patch [4] seems to be causing 
> the regression.
>
> commit d5ea889246b112e228433a5f27f57af90ca0c1fb
>
> Author: Rafael J. Wysocki rafael.j.wysocki@intel.com
>
> Date:   Thu Sep 21 20:02:59 2023 +0200
>
>     ACPI: thermal: Do not use trip indices for cooling device binding
>
>     Rearrange the ACPI thermal driver's callback functions used for 
> cooling
>
>     device binding and unbinding, acpi_thermal_bind_cooling_device() and
>
>     acpi_thermal_unbind_cooling_device(), respectively, so that they 
> use trip
>
>     pointers instead of trip indices which is more straightforward and 
> allows
>
>     the driver to become independent of the ordering of trips in the 
> thermal
>
>     zone structure.
>
>     The general functionality is not expected to be changed.
>
>     Signed-off-by: Rafael J. Wysocki rafael.j.wysocki@intel.com
>
>     Reviewed-by: Daniel Lezcano daniel.lezcano@linaro.org
>
> We also verified by moving the head of the tree to the previous commit.
>
> Could you please check why this patch causes the regression and if we 
> can find a solution for it soon?
>
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>
> [2] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003
>
> [3] 
> https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/boot0.txt
>
> [4] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003&id=d5ea889246b112e228433a5f27f57af90ca0c1fb 
> <https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003&id=d5ea889246b112e228433a5f27f57af90ca0c1fb>
>
--------------mEvqkdgAte8Me0i6iNVf9vm8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class="moz-cite-prefix">On 10/5/2023 5:58 PM, Borah, Chaitanya
      Kumar wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com">
      
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello Rafael,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoPlainText">Hope you are doing well. I am Chaitanya
          from the linux graphics team in Intel.<o:p></o:p></p>
        <p class="MsoPlainText"><o:p></o:p></p>
        <p class="MsoPlainText">This mail is regarding a regression we
          are seeing in our CI runs[1] on linux-next repository.<o:p></o:p></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
      </div>
    </blockquote>
    <p>Thanks for the report, I think that this is a lockdep assertion
      failing.<br>
    </p>
    <p>If that is correct, it should be straightforward to fix.</p>
    <p>I'll take care of this early next week.</p>
    <p>Thanks!<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoPlainText">On next-20231003 [2], we are seeing the
          following error<o:p></o:p></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">```````````````````````````````````````````````````````````````````````````````<o:p></o:p></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.093075] ------------[ cut here ]------------<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.097664] WARNING: CPU: 0 PID: 1 at
            drivers/thermal/thermal_trip.c:18
            for_each_thermal_trip+0x83/0x90<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.106977] Modules linked in:<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.110017] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            W&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.6.0-rc4-next-20231003-next-20231003-gc9f2baaa18b5+
            #1<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.121305] Hardware name: Intel Corporation Meteor Lake
            Client Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS
            MTLPFWI1.R00.3323.D89.2309110529 09/11/2023<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.134478] RIP: 0010:for_each_thermal_trip+0x83/0x90<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:10.0pt;font-family:&quot;Courier
            New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp;
            14.139496] Code: 5c 41 5d c3 cc cc cc cc 5b 31 c0 5d 41 5c
            41 5d c3 cc cc cc cc 48 8d bf f0 05 00 00 be ff ff ff ff e8
            21 a2 2d 00 85 c0 75 9a &lt;0f&gt; 0b eb 96 66 0f 1f 84 00
            00 00 00 00 90 90 90 90 90 90 90 90 90<o:p></o:p></span></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
        <p class="MsoPlainText">Details log can be found in [3].<o:p></o:p></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
        <p class="MsoPlainText">After bisecting the tree, the following
          patch [4] seems to be causing the regression.<o:p></o:p></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">commit
          d5ea889246b112e228433a5f27f57af90ca0c1fb<o:p></o:p></p>
        <p class="MsoNormal">Author: Rafael J. Wysocki <a href="mailto:rafael.j.wysocki@intel.com" moz-do-not-send="true" class="moz-txt-link-freetext">
            rafael.j.wysocki@intel.com</a><o:p></o:p></p>
        <p class="MsoNormal">Date:&nbsp;&nbsp; Thu Sep 21 20:02:59 2023 +0200<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; ACPI: thermal: Do not use trip indices
          for cooling device binding<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; Rearrange the ACPI thermal driver's
          callback functions used for cooling<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; device binding and unbinding,
          acpi_thermal_bind_cooling_device() and<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; acpi_thermal_unbind_cooling_device(),
          respectively, so that they use trip<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; pointers instead of trip indices which
          is more straightforward and allows<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; the driver to become independent of the
          ordering of trips in the thermal<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; zone structure.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; The general functionality is not
          expected to be changed.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; Signed-off-by: Rafael J. Wysocki <a href="mailto:rafael.j.wysocki@intel.com" moz-do-not-send="true" class="moz-txt-link-freetext">
            rafael.j.wysocki@intel.com</a><o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp; Reviewed-by: Daniel Lezcano <a href="mailto:daniel.lezcano@linaro.org" moz-do-not-send="true" class="moz-txt-link-freetext">
            daniel.lezcano@linaro.org</a><o:p></o:p></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
        <p class="MsoPlainText">We also verified by moving the head of
          the tree to the previous commit.<o:p></o:p></p>
        <p class="MsoPlainText"><o:p>&nbsp;</o:p></p>
        <p class="MsoPlainText">Could you please check why this patch
          causes the regression and if we can find a solution for it
          soon?<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoPlainText">[1] <a href="https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html" moz-do-not-send="true" class="moz-txt-link-freetext">
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html</a>?<o:p></o:p></p>
        <p class="MsoNormal">[2] <a href="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003" moz-do-not-send="true" class="moz-txt-link-freetext">
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003</a><o:p></o:p></p>
        <p class="MsoNormal">[3] <a href="https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/boot0.txt" moz-do-not-send="true" class="moz-txt-link-freetext">
https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/boot0.txt</a><o:p></o:p></p>
        <p class="MsoNormal">[4] <a href="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003&amp;id=d5ea889246b112e228433a5f27f57af90ca0c1fb" moz-do-not-send="true">
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231003&amp;id=d5ea889246b112e228433a5f27f57af90ca0c1fb</a><o:p></o:p></p>
      </div>
    </blockquote>
  </body>
</html>

--------------mEvqkdgAte8Me0i6iNVf9vm8--
