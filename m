Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C6A64C448
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 08:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3238F10E219;
	Wed, 14 Dec 2022 07:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D1B10E219
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 07:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671002013; x=1702538013;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Tu1rpxq5raFXP0+fmGmifZDhvpPun2UakwSBZbi4NeA=;
 b=GI19fJCjgNtwHDD83M1mNGgfsn84wpH68gpQpB7WVrcKx34pCdHTRHHj
 xq+qCdbxNBxu5yISOMmECRhwkZzwUgFOls4NkDL6n80YyhImPNXxDEHXi
 5yOqXdWnmzUoc34EeElR0Et1E4zQ5Jxgrz8ndxpIWb/jr1ANHodXWJjqC
 /mCmt6xhAFEis8nNnCfJL2y7G4FyP/p7uGIjqIIcbcTrehT9tArNk1lUR
 bMpylXU1d3raeYLqtn+sxCTpctLID4tL12RFfx0lHe9mfiiRUZxi1mvrP
 w3OZV4mrYyHR6WuVKdmeztF/Lz9J4Xt9YYoaPGwmHaSu97vRcy1SK7IxJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="404600997"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="404600997"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 23:13:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="773235536"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="773235536"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2022 23:13:32 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 23:13:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 23:13:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 23:13:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 23:13:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jn10RqLYLmy+9/VUX+DgxPAdZwiFewAsMQQPC/wPlTZbxCRzWA/meeKHL2SOnmbpWpPwqDxG/yumy6L6V7De8NCcFWIMWDxsJRjotqfLDVDlsfbJlnyIwI0gRsIDukb7DsFNSXRgABSpt/rRay4XtztqVi7pSJGEov0WWIVF60pMvFgPm8FdCwTC7EHErhgBP2jegfDxh8KnZXmDnZ1/noy+ck48HirGjt3FQ9xcbSI1YZqPb89/gbkwneorODT/7T204SvNvCjthxkG2NDbgcOTEkLQeVtlbLGjuy/0O2jukHyZBYN58kfsAnICHM49989AGK0Y6vsBTfeySIcP9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fC6BiEjoWqSPlsN7i2QCCsjQa4fSbnA1Mycg7Kb4Wxs=;
 b=Ar3gJyqh333p7Z+Vdin6a7xOSsLUPyWbf7MbzSNk/MGkuD5Ey02G/n3XRGzKsUNt1nTO0h6NFWN9fTmvIXjd7RI54VxKSJxN5HPyrtkDt70VDyZA7flSTtAvGzTnkcYioU61/Y8tkzNJmDOW4Gjowhjumu2fygt8QqnDiRKT0vGkwceYwm9zH4PfekU2XfQUv6U8KaQoHCg4iG7oqZVgWehBFWQsSU18OWqwlvyxsU9Nl+9oWb0Vq7cSvA0fZoifEtYxyxy/oJS4FBRoPeLJfxJELqqoloBhZThAz6UxyV6XPzVqfC8KQrrlhf76RXM45gb5bZznPB56+nQbATyF/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5789.namprd11.prod.outlook.com (2603:10b6:a03:424::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 07:13:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c%5]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 07:13:28 +0000
Message-ID: <5c564d27-29f9-5908-f73f-aa791f31bedf@intel.com>
Date: Wed, 14 Dec 2022 12:43:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221213055106.2044535-1-ankit.k.nautiyal@intel.com>
 <BL0PR11MB3170C9A62B892B5619D8D943BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <BL0PR11MB3170C9A62B892B5619D8D943BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0128.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5789:EE_
X-MS-Office365-Filtering-Correlation-Id: a7708b24-4dc5-494f-395c-08dadda2b2ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XH0QdZvQjIX1UYEIeOh5gwCJ9GSd4o0HBLaDQjqcqj5dv95uYTyIznjBUNk30eP3IHAgJ7gUyZWzFnIDSfWec9GO89tc1Aj74aspixmX3yrhMSs2PgKEy+58ejUMdK4URzKyvUbDgnA+GnTLdUpgrSYGcasNoHNyG4LvsGULYr5InD/w/utQXesgHhJL3xzN+gd15tthN8F8fed5ai0EO/l7SrKJeqvEb88KKU9m+C4ruaht92IXUew+tGn97ou72Fx611K3DFYIl4ZkZU7CROp2Vv+Ne9qYmg7GSxrt9HOdv8E6t+zKAXo1TgfGVC7q73+SCxULSD4xHZ4EFKcY+GBCOkgmafqNOd6vXQt6H2Lldnoj2bJQrSZ1zBe4UVY/gBpqZaZOfKbkl+MlX79vGbdJMxuAR8TWsJSAX18wA1mqVhVrpouZnU8hF3mTwFstEa9zESNvtMxv90gbz0AdhCiVqwPOl7legiAxERL4raZiQ7eztXbtfmfIplXfWb+pR9SqF8D4IPsSze4q+Eco3TfxllOXDJX15Si/wdPOkcAq+Fz/Gll4JOd644m6bFFzu5gDy+lyP3pfT/iaOvEzaC3JJR4WwRB1oHfPTpVY3nzxmBgO8xzZ18XcT0cwqac5Op8b2O5XWrSb30JYkuRw6tpFX9Tb54QYRFLL87ql+OkHgF5VhPeeD+TbYqdCrNmZcqcJGFPJRFcOk/KMumt1gQLCRohSTsyaXZtX34I7EgA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199015)(2906002)(2616005)(82960400001)(38100700002)(110136005)(8936002)(5660300002)(6666004)(316002)(41300700001)(6512007)(26005)(36756003)(6486002)(478600001)(83380400001)(31696002)(186003)(31686004)(6506007)(66476007)(8676002)(55236004)(86362001)(66556008)(66946007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0xkYVRaVHJtcGJqY3doaDYvbTNXWlk1eHFnMmphbFc5SjkxNGM3eVBKcVla?=
 =?utf-8?B?aitPZ08yc3c2QTdtSDBXVVdRa09JcGFEZlhSNCtTb2dqWnBlWnhncENaTzFT?=
 =?utf-8?B?K1A0YXdJUEhBNmg3QUV4cFQ3MkNxV01NZWI4OWU5NFBFamNaZ1JnUWZxZDl3?=
 =?utf-8?B?RlMyempSSXREQUNWNmFwSFovaVR5NEQ1ajBjMkxMYW9jeE8rSEtBNkF3QTRM?=
 =?utf-8?B?Z2dMUE1VUDkvZ3RPNWhCQldGUDBZWFJKV1krbDc4WjlWVWRmVmRmZC9jOFN1?=
 =?utf-8?B?anFoT2JHUHBWbnovMG9QVFl0R0xmU3NTMTR6RWI2QWN2L2x0MXZOdC9UVVRB?=
 =?utf-8?B?bjRrNmpXU2ZlQ1VaV3VUZ3NiNGhZZVZvV2Nscm4wZUlyUVpkWmJ0UnQ1cjJO?=
 =?utf-8?B?M0NXMjNqTGs5Z0lWNlE0Z0l4aURxT0tqR3RHU2tPbkY2dXI1NndXZU51T0Jt?=
 =?utf-8?B?Y0hhQU5qcWRXMzltNVBiY2MyaVpzZ2t4clJ3Y3V3VnZPRzVya3ZSaVRDbFdl?=
 =?utf-8?B?TGptMk41NnBid1UrWlhoVlRrYzJobHZwUUVWb1B2U1Fnb2QzQjB4OG54ZGtM?=
 =?utf-8?B?TjVaNjJPU1lxUCtTeFZuR2M5S2M5UWFUZkJqOXV4c3NCM3NKYWxlbDRrRHJk?=
 =?utf-8?B?WHN4K2h3Um4xb29rdTNpRnhUWmFZUlBaajVZZDJMcFNNZU5USWs5R2RiVHl4?=
 =?utf-8?B?RkRCT2NIaDViVFJnNGhBYW1xSWVsVXJheEptWlZ4MUFHUC9ZdnlZZDdoanlW?=
 =?utf-8?B?d2s5YTJldEt0SWVTbzVBWEJydDlrWWhkMmFQUG5WSUZGNWsxQ3VKNCs5L25i?=
 =?utf-8?B?ZzZjTmRmNmtSVm1NN3pIdC85Zmwzc2t5UkFDRnhLcVB6dWEzTVFPWFNuZ3Z1?=
 =?utf-8?B?Slh3ZkwwbjV2WFY2dmJXUy9aNHNWNml2MWczMkJxSytWYjZHdEJKQk5DOWNt?=
 =?utf-8?B?M3d4SDIxcEpncFROZ05OSFBnaklXVExSMmRNWUY2WHQxRHhlbGpWUCtjZ2Vj?=
 =?utf-8?B?MDFnbHQwOHgyZnQxbTJUeG9JOFRuZ0hxV1g2SnhBK05yM1cvM3lGZThkeGNk?=
 =?utf-8?B?cjllNWVIdHpIREcyRnBMWDdLZk1EQ09veFBkblVQdHlGalJzUVVIZjgzUkJG?=
 =?utf-8?B?OVcrZWN3cGJ5aWRSMXJKTU5hNGwxcDJmV29RRGtIZnRRbjgyYk9JOW5GamE3?=
 =?utf-8?B?eEZKRTdueVYwaDJKK1RaOEpSUlplS25OeHJGV29xc1c0d0NBUUJsSlN6cUdX?=
 =?utf-8?B?ZEswRk9rYXNTRWJCV0ZuZCtjZGhVRVdYaXMyV2xTeUNwVTN1NXllQVE2OG5q?=
 =?utf-8?B?OEtyUWdpUVZvMXpXSzJDNDdRUE1uYXlTcHZXTWwwbXBTK0pzUFE5VU9CbnZv?=
 =?utf-8?B?dmNvZTdGQ1pCVWhUZ1J4N3F0enlTZVpQMG8wenozajZnSkwrNEpxRVRrOWpK?=
 =?utf-8?B?NnNhdXdYT0JiNWdPa1VuTUp0MFg2YVRndE43VEI0MzZSdXdQS3k5dDg5dXpm?=
 =?utf-8?B?Rk9NWWdEM1I1WHhUOTJ1cnR4a08rWUJ3SXFRUVdGbUhqbUJ2a3dTU3pIeStz?=
 =?utf-8?B?NmVUN0dnQTYzdHpSUC9kLzFUSTBFdWxmU3RqSGZNR0M5eVl4UTZvbUJEbys0?=
 =?utf-8?B?TU51d2NiZmRlMWVVWmIwRldJdmVLTVN3T3VxU0o5cUdudVVzaTFBalkxUFh2?=
 =?utf-8?B?blRmYWpJYnErazR2WUloWEkzMlZWcFhlbGxiN2t0UU1GazYrRWdUdmoxVXJ0?=
 =?utf-8?B?eWEvZk1wTEZVbW8zOHJ6MU1pU3VlV3V5bmFaZ1UvNG5xV0VYRysvRkpNb1dV?=
 =?utf-8?B?aVJZRWVmN2hYWkFXU3N2bS9BakJ0c0ZxNFJZZDVaRmNOTUhLYlVLdnpGRUNJ?=
 =?utf-8?B?S1ZzWFFMVFptbTFacTVTa2tZQTJOVWJzRURqZlBMOWxEQW4ycHdVS25lanVH?=
 =?utf-8?B?U2F4YkY5RHVxdGlyRnFXMHBvZFpKOEg4ckFvKy8zcnJlWU5GN296aEZUSkZ3?=
 =?utf-8?B?S3NCakxGUTRiWDdzbXZScjdYODJ4K3VvWjEwNHp2RzRjeVNyOURqWUJDVG90?=
 =?utf-8?B?ZllNS2t2RmJaUDBnNXM0cDZ1azkxcU1LUytaZXhFMElUS1E3cFQ5TEsrMFV6?=
 =?utf-8?B?b1p6UzREOFdrTVVOVTJTMjUvWUswZ2dTV0lVV0p0cEVlamRZeno1OVdneXZN?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7708b24-4dc5-494f-395c-08dadda2b2ff
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 07:13:28.8387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BOnV0igBFQ7O70FAEGLPtRyArQ7pw9Jwpt5PU9kknih79yNC46GBAOIkngYTql691PSH/+m9P6Uni6aEFL1jSnQyBqI3cFBgoCvpepfyhUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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


On 12/14/2022 9:16 AM, Murthy, Arun R wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Tuesday, December 13, 2022 11:21 AM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
>> platform supports TMDS clock > 340MHz
>>
>> There are cases, where devices have an HDMI1.4 retimer, and TMDS clock
>> rate is capped to 340MHz via VBT. In such cases scrambling might be
>> supported by the platform and an HDMI2.0 sink for lower TMDS rates, but
>> not supported by the retimer, causing blankouts.
>>
>> So avoid enabling scrambling, if the TMDS clock is capped to <= 340MHz.
>>
> Doesn't this clash with scrambling with low rates?

Hi Arun,

As per HDMI 2.0 spec, scrambling is always required when TMDS char rate 
 > 340Mcsc

So scrambling is optional for rate <= 340, if source and sink both 
support scrambling, it is enabled by the source.

Gen 10 onward HDMI 2.0 is supported, the max tmds clock is 594MHz, and 
scrambling is supported.
But there seem to be cases where for certain platforms that support HDMI 
2.0, there is an HDMI1.4 retimer chip and the max tmds clock is capped 
by VBT to less than 340MHz.
In such cases when an HDMI2.0 sink is connected, the driver checks for 
Gen >= 10 + sink scrambling support, and goes with scrambling even for 
resolutions that require lower clocks.
This creates problem as HDMI1.4 retimer chip doesn't support scrambling.

So in this patch, we replace the check for Gen >=10 with check if max 
source TMDS clock > 340 MHz (taking into account the VBT capping).

In general case for Gen>= 10 (when VBT does not restrict the max tmds 
clock), if sink also supports scrambling for lower rate, driver will go 
with scrambling with lower clocks too.

Thanks & Regards,

Ankit

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index efa2da080f62..c124fe667bc0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2244,6 +2244,11 @@ static bool intel_hdmi_is_cloned(const struct
>> intel_crtc_state *crtc_state)
>>   		!is_power_of_2(crtc_state->uapi.encoder_mask);
>>   }
>>
>> +static bool source_can_support_scrambling(struct intel_encoder
>> +*encoder) {
>> +	return intel_hdmi_source_max_tmds_clock(encoder) > 340000; }
>> +
>>   int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   			      struct intel_crtc_state *pipe_config,
>>   			      struct drm_connector_state *conn_state) @@ -
>> 2301,7 +2306,7 @@ int intel_hdmi_compute_config(struct intel_encoder
>> *encoder,
>>
>>   	pipe_config->lane_count = 4;
>>
>> -	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >= 10) {
>> +	if (scdc->scrambling.supported &&
>> +source_can_support_scrambling(encoder)) {
>>   		if (scdc->scrambling.low_rates)
>>   			pipe_config->hdmi_scrambling = true;
>>
>> --
>> 2.25.1
