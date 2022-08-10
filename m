Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E226A58EE6D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 16:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6071C18A83B;
	Wed, 10 Aug 2022 14:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D59A11BC5C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 14:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660142065; x=1691678065;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ST2nhhmlemQ0Cofi1Avn7EtIyk/2ZiF7u60HbU+tbwY=;
 b=JYacRuV+ORhqFm62adNvhtuPcA7xvCwOH38LSfxppiP59F4E7uJjFr5B
 2/rhiYGvVkaZWpMohb8JJsr1g029mi96VP8fXkzXnslH6SyyocqNeMj4r
 HQKGVOACm5KyardTqH2cSq/+KT61/9Lxhxrmy5Spp2/8g/ZxM0dQAEdMa
 FLcZB8jO4i8CgwzPxp58HDLKhM4W8xyvgNDUA8/C52D9cYcyDXlP1ip8I
 ShUj7O+qI+4Y2EcPIAQ86NITLdMVLCCv7ulAqiET2EyoCYBI7PYj8Yqj4
 obN6RbFT4IBNfvfIJL8UebjjviYG89v0FEY0Ff8rsV/jdDSYg/0j8ysXO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="288662628"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="288662628"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 07:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="633799874"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 10 Aug 2022 07:34:23 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 07:34:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 07:34:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 07:34:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 07:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fBQveEX4V6sWYKclfvLM+d5MpNx4M+7j9zsliM/PBui9k7e6ArSPEkNXFTu9ONRWAvHeg0zcJRkkTJYsSgs9DymXKgkU7JLVHa/tXDTygo3lOrYezAQeB9z7JMMT388tqsHLW5sdzSgkssSXvHDL26OcZNgG7dcBfEmKppADpWs4JUaz6lVImSnY2skp6+gzH2O6rTy0EHcMyjwkaO6gWliOS7mBykOuxV7OBQbpwDUIMGE5UBsBDosrk8zFUKV5LOEE99uZ1b0KKIG2K1hvQFpRASbCizUtldSJEyjjZIESWbynjH/C3mZdmy8kDnl+z0mbSymahOwP/jzZxXOJBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QV8uSXEJ/XHwaToxggxFPePzLxFlQdtr9/LIYqXQ7TU=;
 b=c9VIGIVVr0+Poj6GOdbQHwgrXJXxT4NTWLUxPXRIOSOWg7/vZVfAkreWas2EbNYEGtGtxyESjwPsVWh+GKDfhIMs+c6/l+PBCGniK88tp4AlyaFfxMCsIM8tnqmoiPOUjRuSVtS7AHA6ySgj9MLlIPkF7a3l59TEhq9zs1ZIa0s/jXHXj1I68OdxgOJ0l/+NHbn4dhftbToQhHudH/uaPQM64dmFXfgFh4AEz98pJKTm2Ub6Loo6wJE9s54lTPD4d4Z9zXKXXlKeTrBT0RoQ6c3Cf0l0cMollxlDdBJijS89rDVETEv5rcVTmIKIQOv/zCFFZe80oCBdB6NFAsP/GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY4PR1101MB2085.namprd11.prod.outlook.com (2603:10b6:910:20::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Wed, 10 Aug
 2022 14:34:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 14:34:20 +0000
Message-ID: <8996fcc3-459e-ba09-bb0e-77e639790e15@intel.com>
Date: Wed, 10 Aug 2022 20:04:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220726072300.3950338-1-ankit.k.nautiyal@intel.com>
 <87zgglpg58.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87zgglpg58.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bad9d55a-3564-4cbe-095e-08da7add695a
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2085:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q7xzwkW6TXJX0R1KUWjzv5oWQNfWN+6sIdI79u2G/87kphYFPdIigPu79gPHwN7aE0UuIgEwW8/FIP75QetohYzCuadHj/PfpDrZpXlrHeeaYXyQxG5feRcDrgZ8QS5O2jQy3U6/dQe8/lzPbcjW2017aD/hZQQSYtq9s12+OvC60aLwQxYuzCQmObcWmDLtchJfwfSEtA5iv3FzS8X5CI+tz8AQaXn94qgV5pZTfLkholWBlmgz2ERL1UdvR+lcTc8lHDuvPlSnEbex1RbU///bavXD88geQOXgYqAQdQ8G0nCJEl9kxEQd4iCCFuUWeYaRwufQiFjpDpxesK8XWh5ssTtqA7sRp5ysGcL94RhycPJInon3CecMZTKwUI1m9pfDdXSP7TjJYTN/AQF60hprsuUmEyY4rXe+BFQ9ZkMpHqKHfx24ApInkGz8bNcHELmrcrV/IeR/TkEw//dIqXtGXRRVC5zJp5u8aXXhhRvCEaD5gT0HOY49mWd+7QhGXvJhJB40S3p5PsLRrenQ2hxZu5CZxjMr4hXtrdSNXw9TSGnyFnzKne+QIfCmofv6exYyN23ZSnQQZ/0kPOa4xTFeFM2xnS7+/gbxkwS4elXk7rjdGnJywY8MJPZVuWjWLVeLsVM6P2ILwkCCke6hqAhTSJ3uLWtAnrmhefFl74KZKJTS/P3zmZy16NkRHZ34rMh8WBBpx4ca+VoR0cuxq6nmkT/TPctJ0cjpb9n9KwkMXLgru5Qq82K7BJ2LXgBwHZmyB7DlNQXST19lKNohzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(346002)(376002)(396003)(39860400002)(66946007)(31686004)(8676002)(66476007)(66556008)(478600001)(966005)(6486002)(2906002)(316002)(36756003)(5660300002)(8936002)(82960400001)(6512007)(26005)(6666004)(31696002)(41300700001)(186003)(2616005)(86362001)(83380400001)(6506007)(55236004)(53546011)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L205Q3NCZXBVc1UxSEdETmlLdXZWS3NJYmVZd1dQSHBieXFZVi9oM0Z0b0VF?=
 =?utf-8?B?cSs1MHVpOTUyZ2djNDJ5TzFyNUJxL3o0Umdsd0RpZnFzbkkzc0hOMExtVVFq?=
 =?utf-8?B?ekxzbzJtTzRnVFZRTThUYUpSU1JaQUY3MlQ4RDYwNDJ6NHppZnJFLzZ4V3pu?=
 =?utf-8?B?Y3d6N1VKWlZtdkt5M3JzUUkzRHJBeXZMRkVkY1l3b3R6WE5yblRrQ1NBQ09j?=
 =?utf-8?B?TFlRSWcxeXB4UEV1eUFhWFpoZ1k3dE1ITHFVQnpXUlFyN3hPTkgyTndsWExq?=
 =?utf-8?B?L1JiZzl3cFFiU0RhNFUyUjNDV0ppZkdZNFNaY2VWazNHb1lBS0IvNUh1cXg0?=
 =?utf-8?B?ZExmTDFJTGdyOHBjQWVRT3hLVWwrN2xScC9PKzJha0R3MjI3NWpjMXlPaTh4?=
 =?utf-8?B?L2wrWEhyWnFWTEhnQ2ZtRWVWWDNXY2Q3WWZ2RDNNV01FMDB5dmtJalJRU2tH?=
 =?utf-8?B?MG5IaCtpeGUrRDFreUF6Z2NCbk0rWWtWb0x3aFVZdGpudllBZGhIQVZOQnhy?=
 =?utf-8?B?cU5iU0RBTnE1Y2JrNS8vZDAwWkFCWXVaNnZvNUR5YlVmUTVDWFI3WEw2enZk?=
 =?utf-8?B?Y1BqS2lyRDA0TEdkZHhDVEpCRkkzWm9YOTByNGxrMFQxYU5OKzFGSmMyNmZE?=
 =?utf-8?B?OTg3TXZwQ0FNaUFDZW9DVVZWbjVNa2ZGaUhtbnczWWtWY3JveGg3UWt1VHNO?=
 =?utf-8?B?emhvY3M5cU03bmN1dEl5K1AzN1FOWEhYYlBpMThsUlEvM1loTENYTFRzWHhK?=
 =?utf-8?B?NWtGeStQUGdlcjh5K2k3c0tFKzNzRUN0MEs0ZzltZ283SXR3NHFoc3FKVVN1?=
 =?utf-8?B?bS81eEc4dERjdTN4R1hDM01nUVJWTlpFaGFWRU10dXorcFk2RnN0QW1rM2Y2?=
 =?utf-8?B?c1NSZDRIYXdWS3hXSW1HeHY0MzdjRXBCZHY5ZEhiR1FGUWdQVS8yQ3ZIWnpU?=
 =?utf-8?B?VWMxbkdtMEd6YTV0T2wyVExBc2VIZm5sOFFxUTFONHRoSDB4Y1JydVpZbnc2?=
 =?utf-8?B?dzhRVTB5WXNiSnM1eFdMcXlNSTI1Z284a3pmeUFQQlZ4d2ROUVMyVldkS1pJ?=
 =?utf-8?B?dnJaMXN6L1BRUm5WYktmcHk2R1FMWnM3bGQvOXZaZXRNcllGR21LM1J1T284?=
 =?utf-8?B?ZzBPcFhybnNSYVhxVU5YY1JLUVRjbjYxenJrK3VycmIrKzcyREhVd0diL1ND?=
 =?utf-8?B?cG9OcEpHTStLNllBNGZVc2xkTlc2U296NWZFa1l3QjFUNnozUjM0MlJhT1h3?=
 =?utf-8?B?Ym9HMXVpc3h5YmZqdXQvNjQ2d3hHL0ttektnNTRKTnhwSVNsQVhnVjFsVVky?=
 =?utf-8?B?SUc5bGpUc1ltUFRXVlc5LzJ2YWhydzZxRWxvRlF2bVprbExkZXpKK0ZwVUlv?=
 =?utf-8?B?cTY0MVRrU3hmYUY2QTBicnhUTlJWWVBsVmZRSEVkZE5ZaVVFcklWbFJMSGFj?=
 =?utf-8?B?S2RJVXhzVXJjUi92RkVMTGUxRGQyNUl2REIyUWJhRDQ4V3pmN2R4dXJweGxR?=
 =?utf-8?B?d0tHL1RNcHBFR25LUGJLTmZmcXpVT0hXMzhUd0tMSmNGVDZ6RG1rY1p6OGdQ?=
 =?utf-8?B?TmJrdEVmQ2srQ0MxV3QzNC9wclJoTHp3MDd6enJBMll5VHA4VnFka0Y4ZHMx?=
 =?utf-8?B?ZloyOGQ5dWYyRSs2T05PTWVCOW1keVdBL2V3djZZN2k0ZWRLcWFqTFVtZlJE?=
 =?utf-8?B?Tit4ZnViWXdrYlZoMHhWa3FGQ2RBTlNVZ002S1JBNTl3UHVzUkZ6UlV2U2pE?=
 =?utf-8?B?dExIbUMrNHBGa0p4SFkzWkNucW9ha1hNOVNCZFBvNXpqMm5ZMGZ6YzMxTTd1?=
 =?utf-8?B?dVVtVGFHb3UwZ0lBdXJHdEFRUCtUaVFyYVpUaWZmY1A4bmtBNWxzeVlhdzFN?=
 =?utf-8?B?MUh5SmpwRTVCQ2laelRsYkJRRlI5ZkwybjVydmxOcVJscGtEVk5aMlJkYWVC?=
 =?utf-8?B?SmtlUWtLTTlqaG5iNzVwbWhxTGhzR0JDSlVJRlQwN2lTNmovaE5DNVRaL1lS?=
 =?utf-8?B?SG8zKythMi81OFlzQ0dNQk83YnVjQzk4QkJTSlFsTmg0dTdRdmNEMlNKZitK?=
 =?utf-8?B?Zk5NUGpzT0F3cmRjZzhDeDgzc1h2MmF5QTFVSllwRFNDZG5XK2RmYlZEdWtV?=
 =?utf-8?B?b0xBeG1wZXNBUjUzOXBKSk1ZWXM3bDJ6RGtrUUpoM0NFclZuRWhucHZpTzha?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bad9d55a-3564-4cbe-095e-08da7add695a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 14:34:20.3487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HRSxrtoUBB4r+Qd/ObUMLyCCk7vXD6nbcUleHsvzxkTrQv1x3NPGVgODFCVM4Ew7lruWYY4yeWtp6yDSLtgZgQltCHCwqKTiN94Si0EDe+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2085
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
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


On 8/3/2022 7:45 PM, Jani Nikula wrote:
> On Tue, 26 Jul 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The low voltage sku check can be ignored as OEMs need to consider that
>> when designing the board and then put any limits in VBT.
>>
>> Due to this check many DP sink that can be run with higher link rate,
>> are run at lower link rate, thereby pruning the resolutions that are
>> intended to be working as per bspec.
>>
>> However, some eDP panels are getting issues [1] with higher link rate.
>> So keep the low voltage check for eDP, but ignore for DP sinks.
> What's the root cause? This seems like guess work.
>
> BR,
> Jani.

Hi Jani,

The root cause for the issue#6205 is still not known. I did find out a 
missing WA which seemed to be fixing flickers with eDP HBR3 panel.

https://patchwork.freedesktop.org/patch/496283/?series=106967&rev=1

But it doesn't solve the issue 
https://gitlab.freedesktop.org/drm/intel/-/issues/6205 .

As you know, the low voltage sku check for combo phy port is not 
required as bspec says this should be handled in VBT but removing the 
check perhaps exposed the above issue seen on eDP.

Does it make any sense to have the low voltage sku check removed for DP, 
till we get root cause for the eDP ?

Regards,

Ankit

>
>
>> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/6205
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272
>>
>> v2: Added comment about eDP HBR2 restriction for JSL/EHL (Arun).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
>>   1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 32292c0be2bd..e50bba14e8c5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -405,7 +405,8 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>   
>>   	if (intel_phy_is_combo(dev_priv, phy) &&
>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>> +	    intel_dp_is_edp(intel_dp) &&
>> +	    is_low_voltage_sku(dev_priv, phy))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -413,11 +414,8 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   
>>   static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>> -
>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>> +	/* For JSL/EHL, eDP supports only HBR2 5.4 (SOC PHY restriction) */
>> +	if (intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -429,7 +427,9 @@ static int dg1_max_source_rate(struct intel_dp *intel_dp)
>>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>>   	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>>   
>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>> +	if (intel_phy_is_combo(i915, phy) &&
>> +	    intel_dp_is_edp(intel_dp) &&
>> +	    is_low_voltage_sku(i915, phy))
>>   		return 540000;
>>   
>>   	return 810000;
