Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6355B59FC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 14:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B0810E3F1;
	Mon, 12 Sep 2022 12:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C575E10E3F1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 12:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662984790; x=1694520790;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q+EZod0tFTuFF3ktRLzRJAQMQ5xUZPEJxAmj92cjUYE=;
 b=TNU/WSxTNblEIGPIZ0sP4LvoGIuswOPykFuHt0Qiv9h2qg87fn8xF3kQ
 oV68SnDKd8mOMXuQE9mTdHw61zsLPGVmpr01PMYbIQvT2WvS6+0vnUXhp
 54UrKH3YZJNyrlGfZ+wUrXGDY5dMW4N46G85k/rFDyZUPejjLydULZT/u
 Dx+oMq5ocQeiK+x7fxD2289lzuBAENhvFThU/DSZ9dR2ZaiH5F3Vfjt0+
 nYkdR9pA7FqXyLYHYGGJIAdGx50SD9MAmrfdg9p+WO6PlQ0GqehlvouNS
 /y/2mZvpGSbpajdyaf6XsT/q0rjbtNqSNZ/0MV1CkvI498nuBeJSx2AI+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="361800991"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="361800991"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="758375374"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2022 05:13:09 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 05:13:09 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 05:13:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 05:13:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 05:13:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gKa3XAcMBT/byQjpjJ0p54VhH/VQkQKj0lnxhe/uVkFw5TrIgYwNjjd+i6GTOpqlnqCUXnwr6Kr1iX8TXTPGa0tqQSXKghVJ7lP+5iAUKDfRM4pj2g3EPgPx5ZSMdeDS5ENir0SZlJacUHoNK5ZX/KfcABSEcNk9UWo9fbaOaYEFV/0+ZwG3XIXymudoolsWuMZ9oKhvV3qWFziDXGefFoU5WftFpDjVWyIqsy1ohDgZYNFD3HtD4Hc7Kku1yY8SfMAU0HhtqO7PZXa/znV3URkDafyk/yhC1U9uyUL8NeKIPWxSAZXEOP0h/4jMAhNssXIVfj3+bSZWpvyzPKXw1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3itQ4HFNGYHCkEEAF+N6MzB0M/gA3I4Zz7vqWdOIwSA=;
 b=WrLcSykMNVHSzY3fMjD6uwbI8b9yxYFimb4kg6tXu1TYU4Q1gbkmMFIzks+Y9iiFocs2LXl3Tz2mkzSHf+LleUjPnCVt0Y1XhWh5VXvCk4is3UIoyQuZ+ePMMYse5qCCkEZPdAPoK9sL+ycRYYQ37Mhs3pidGAm8iPfnqAbuux8jAGbCi1ofEbDLn1PQdew0TLjZ/rXd0Ki/1K8yXN81Gn37IOzbEXodNguaL8pJ8hN3TjsHCG9Y0os26B3usu58cziKDgZqUEMONc5gJwsDQVX0jT4NZEpEdAN6A3IMbb6uyqNn3IykeykPENVrnj5v9BNHz0OmG78wBchyskzHlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SA2PR11MB5177.namprd11.prod.outlook.com (2603:10b6:806:11c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Mon, 12 Sep
 2022 12:13:07 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee%7]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 12:13:07 +0000
Message-ID: <765d5996-c3a1-07c2-6cc7-0ade0cda74a3@intel.com>
Date: Mon, 12 Sep 2022 17:42:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <Yx8VnClBmyDHCd3C@alfio.lan> <87czc06bkq.fsf@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <87czc06bkq.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0214.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::9) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SA2PR11MB5177:EE_
X-MS-Office365-Filtering-Correlation-Id: 705702d3-81e0-4d55-0b17-08da94b82650
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m5DSOVtrFxllPP41QtlYumH/RNjg9gPXED7zhT2htcJ5IQRUtt+C5oemRMcRFMSh1ROxDO4zWVh5TjtdrOa/KDASKvHyxpAuQs5TRXz9s+FeEsyLcPeJc2C2RyQyUfpFRGQaU49wFI3k9ICMX54blKcLRzS+n+CmcAxYrZFkIv4JK1mh7WpbzZHJaTzCRs7z++MqthZOyMQgtCP6xirEltJx4JrfeoKAaGf8DXJACAo5F7GlUgCu2UPea4nQdutMHesPEjY89I9PGewVAyz2aqfHphFiwqXzDfcNSqOd0CNIK1+8t/oKwBzHdC31P5A6vFCNp62goPUXmo/jk4Blo6i17HbZ3Tu5zKqrup5F01ier+uM4qtJMxK4JefESUHKSPY+jKQOQq0tlxcES0Ei6RH7C9XPVry9uzd3tUujKJC1B0MekeKDPrRuvEUdT3PmwyAXgE5bnbIpxNLVmP5B/++KyFIEljkNzvMjuvi3WWPorveGLfVTIhBCXJctZrCu2YHt7IOZt8fQVeWHP9h83spgDDSIzWkR0tlMG5wdWAkyN14lS0xPk8FIwlZOQBDugHdOylQ6LdY8quHFBOF34y73UkjcuuTVSYDT76xZOf/mwvqyD5GH4Ndq+zachCgvvS9hMRYg4OULs4fKR/YIwwIkaZp1RQMsng+bg/P11d08lVQCWMzBIfk1VvynbwAi0RI8lL51Mmp3UwBih4Pm/B5VTn1pS/SMarne3Fxa/4HoXd+YBuuf+n2zvJ5z3J5x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(376002)(396003)(136003)(346002)(4326008)(316002)(31686004)(5660300002)(86362001)(110136005)(66556008)(66476007)(8676002)(66946007)(31696002)(6486002)(2906002)(966005)(8936002)(478600001)(2616005)(38100700002)(6512007)(26005)(53546011)(6506007)(6666004)(186003)(41300700001)(82960400001)(36756003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S212aTkzNEM0cXE0S0VXY05scEs5S0R4dUtTcmkrRmlkZ3M1RVpCRk9LZ3RI?=
 =?utf-8?B?S1l4cDliSTZMck13cTR5RHJEOHBnMmV0bkVmUllOY1NUUnAxODZuZHFjTXpa?=
 =?utf-8?B?NlR2cU93TjJkdXFYY3pzSmhnaXBYdlVRZ1BpelJ5RkYxZWlralFhSkhzNWF1?=
 =?utf-8?B?MkNsdVdHc2hLWWxuSk1RcFhxN3BQajZZNmxHazJyQTVkdGJwckVTYzBZbUlu?=
 =?utf-8?B?VmlpbDRjczhWRFBzRWs1akF1aDlsSVZFRTdzZlVuU2RjeUtPWlhrSFg1eFVy?=
 =?utf-8?B?Zm9GcnVPK1Z5ZCtJUkVhUnlaYjY4S21MbkRBWjJ2UGNKR3ZmYk9zN1hFSUtt?=
 =?utf-8?B?a21CQmFqZXhtSk9QYkliczlyak0rUW04K0FhM1VleEZoK05xeGkvVlpTWDkr?=
 =?utf-8?B?RmsyRzh3UmRnRVRkQkt1YWNLbTk5cldaWkJ2MEFHeHB3amlacTFja3c0ZHFh?=
 =?utf-8?B?WHBVb3VBTkRpRWdaYktudzV2d2dNbmZSMURwTkUxNmhYQ0ZlMmtNREE1S1Vk?=
 =?utf-8?B?NUZZeXhQdFdwVXh5S2N6eEVjRDFBTytsUHRzM1dFKzFMNEo0RFJIQy95TGc0?=
 =?utf-8?B?N3lBRVdOb28wZlpvVVRoQlBZaFNmL2tkUDBxc1BIUEVWQUVpK2p0dXZXdGR5?=
 =?utf-8?B?U3pzdEp3Q2gwT2pwSEplZTFIcjQ5RjZCNzZ0b0tsWXhSNjlPYktyb2JyazZl?=
 =?utf-8?B?Rm5FSmFqTWxXbTZQVEsvZ0JVdjQySmpNYUQvNEtQY1VmTSs5WW8zcE9zOFRT?=
 =?utf-8?B?bGlpTE9lYVZKQjgwNThldU9hVmhkSVlzazM2Mm8wWk92cVhLbzhscFl1bzVQ?=
 =?utf-8?B?Uko1NnlLUnhlQTZzM1VWUGczdXhzY0JNTEl6bFRyZWVweGc2YkNEU0o3dGFV?=
 =?utf-8?B?UmtiV3ZBTWQzSHVMckZtUFNkbTc0cGhpRFozSlpkdkxNOE01bm1od0d1SzVF?=
 =?utf-8?B?djNNaDA1U2JIYlI0aW4xeVBGSTJ3QTRvWnVlT1AyTkIrUGdBQ0VScTVrMjc4?=
 =?utf-8?B?VytyMERGc0Q1aUd0MDRNdVJUQVNmSkk1WVNvTzdMWExGQWR6c1BGTnpPZ3JY?=
 =?utf-8?B?dkxZZTlnSlozZThKUmliaUJXbUNDTzdaeVpmQ29MeklIcS8vZ3BSRVVmbHBN?=
 =?utf-8?B?MHN6am9tU3p1NzBOVFlFdkhHY3F6cEpPc3hpbHVSZklmV3hxaHYrT2V4c2oz?=
 =?utf-8?B?cndWK1Q0cmJjbURzMmFJV0xNODF4VnRnSktLOXNTa0Q4UExTKzA1WGdpY1ZS?=
 =?utf-8?B?UFRjKzdmMDNlbW5GVEhDOWcyUG1KNXlqUzQvU3VSUG1Ec2VyQXdtNXQzaG5Y?=
 =?utf-8?B?Mmp0ODh3azNEQmhBb1k1Yi9lTENQQmRvQnFaQ2xwL3BQZkhLWXBUS3piZzdR?=
 =?utf-8?B?VTlBeXdQaVhsY3FtMTVabVdOc2VPMW9MWGl3VmhibzJzSWt4b3hXbWZEeHkr?=
 =?utf-8?B?Z1hFNitQYmZueU5QTnBLNkhxM2VUbUZROWpVNjVsWnpvL2dHWUZuVlE2aFJW?=
 =?utf-8?B?TkhZcUwxWDZ2ZnF0M3pwbWVTaFZ4cXdreE53b2RmWkJ2T2JBOWJrQWFwbUc4?=
 =?utf-8?B?U3BoZkhNYzd0RUdLYmR6WUJ5eTdqbDlLQnl6TFpKQm5GMjM0QVhaT1Rqd2dT?=
 =?utf-8?B?b1R2OUR5RVo2Z2VUYm5DeG4wVFE3ckFCSVdjTkl6QVJ2V1BaUHZOYUpLWG15?=
 =?utf-8?B?S0FBQS94R3daZGlMMVpoWWhndldkR3d0M0JUR2NpNGx5eStjOERkeGUyU20r?=
 =?utf-8?B?UTlEMC9zSll4ckx6MmxWK2lSMEN3QXFqdDUwWG5SQTR6bVdLL2dHMG9aZDdy?=
 =?utf-8?B?OU9XZ0twdW9SWUsyZTJPUm4rU2UzdklKSURpTTM2UkhKamlIcjRyNWFOb1hC?=
 =?utf-8?B?VTc2UXlBRGZRTUZPU3ZMMjBwRmlqYTQvaFRkNVNMak5ubEVzWUlVbm9MOW04?=
 =?utf-8?B?WEF2eDJnNURsbXlPd3FGaWNqS2kyQk9QSU82WGxzejBOSGRCRU1DRmk4aHRt?=
 =?utf-8?B?OXQwcy9Wd3ZFVzFwZGlSRGJlR0NJSjFkblJkR3pRRmpUNVBvSEk3WHc0ekIv?=
 =?utf-8?B?Y2NSN1FWdExyc2xkYjNpSWE3RzM3VVJsbCtFK2Z0a3RkY29UYkt1WGJPZFlY?=
 =?utf-8?B?MXFJcmRWcFNuTDBKWkRlcG95SnhtSVBPRkQ4ZmtiRkxJU080S3FlcmxHcDQz?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 705702d3-81e0-4d55-0b17-08da94b82650
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2022 12:13:07.1844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u+pgiynPHk3SI3YKQYenmVB7b5Juffyl9CX9B4gqBAEQGTIiT78jv8MBGd9V1r8TlHeZGHRUoovayodaPmvDvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5177
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] i915: CAGF and RC6 changes for MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I added Cc: in individual patches. So I thought it will pick 
automatically. But anyway I have to fix some of the comments. So I will 
fix those and resend the series. I will Cc relevant people.

Regards,
Badal

On 12-09-2022 17:37, Jani Nikula wrote:
> On Mon, 12 Sep 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> Hi Badal,
>>
>> you haven't Cc'ed anyone here... Please do CC the people
>> interested in the patches and dri-devel mailing list.
>>
>> If you don't mind, could you please resend the series either as a
>> V2, if you are going to change something, or as a RESEND, if you
>> will not change anything?
> 
> Anyway some of the patches have been merged already so a rebase is in
> order.
> 
> BR,
> Jani.
> 
>>
>> Thanks,
>> Andi
>>
>> On Fri, Sep 09, 2022 at 08:26:40AM +0530, Badal Nilawar wrote:
>>> This series includes the code changes to get CAGF, RC State and
>>> C6 Residency of MTL. The series depends on:
>>>
>>> https://patchwork.freedesktop.org/series/107908/
>>>
>>> We have included 3 patches from from the above series as part of this
>>> series in order for this series to compile. These are the first 3 patches
>>> authored by Matt Roper. Please do not review these first 3 patches. Only
>>> patch 4 and 6 needs review.
>>>
>>> v2: Included "Use GEN12 RPSTAT register" patch
>>>
>>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>
>>> Badal Nilawar (2):
>>>    drm/i915/mtl: Modify CAGF functions for MTL
>>>    drm/i915/mtl: Add C6 residency support for MTL SAMedia
>>>
>>> Don Hiatt (1):
>>>    drm/i915: Use GEN12 RPSTAT register
>>>
>>> Matt Roper (3):
>>>    drm/i915: Prepare more multi-GT initialization
>>>    drm/i915: Rename and expose common GT early init routine
>>>    drm/i915/xelpmp: Expose media as another GT
>>>
>>>   drivers/gpu/drm/i915/Makefile                 |  1 +
>>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>>>   drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
>>>   drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
>>>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 58 ++++++++++++++-
>>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 31 ++++++++
>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
>>>   drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
>>>   drivers/gpu/drm/i915/gt/intel_rps.c           | 22 +++++-
>>>   drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
>>>   drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
>>>   drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
>>>   drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
>>>   drivers/gpu/drm/i915/i915_drv.h               |  2 +
>>>   drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
>>>   drivers/gpu/drm/i915/i915_pmu.c               | 11 ++-
>>>   drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
>>>   drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
>>>   drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
>>>   .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
>>>   21 files changed, 325 insertions(+), 26 deletions(-)
>>>   create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
>>>   create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h
>>>
>>> -- 
>>> 2.25.1
> 
