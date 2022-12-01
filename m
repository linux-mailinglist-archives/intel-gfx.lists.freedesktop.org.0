Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB71063F4AB
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 17:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE2010E63B;
	Thu,  1 Dec 2022 16:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090A610E63C
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 16:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669910448; x=1701446448;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3XNy+xs1qBDgXV65KxI/azyxRQS+HJK2goOu/qPxG0Y=;
 b=VHMKKhS7CU6RSacxTOdFNmCqc3qbH9MKVkGIpF097QtU0J3wRaIuEE01
 Ud4pkG1Pc/Ola16uJRZ01ND1jdYTdgH+dVDf28Xhw/+mtIv7hjUZNdLmx
 6SSer6YEURWkyoX81tdDqUliJ6VIqwnYQKW/UHITX72Vxn83iHDtWAetj
 83Jfhgd2zUYew79lFZpj2azy0cGp/P8UJ9/g7XU4UED4D42oDdsex7Km6
 WhkEhoBOou8Hsw0py7Dc1qtFTPSlSXT/pSVR/h9DiQBPkCZ7dUu5IdKov
 /VcrBZrzRUX4gMTL4DJG+h32k7vD04QyGbob8/+Vq7i9c/yFY8RkVQXXc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="295414063"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="295414063"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 08:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="708118576"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="708118576"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2022 08:00:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 08:00:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 08:00:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 08:00:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 08:00:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGgzxVaAork2izE2rCDEmIA+zwsWS47mXn9trdtRXTQsTBitCIeanhWjuczef4JLTHiR5Ud5TsF+Q3kqnJIWecR1gSe7ykQY8FWP90DHwgKscGGPLsj+sVR9TWBvHr9kHcXTyHibGHJsszzc5NZecu86PP9fQK/DFJEK2u89keoHQ2W9hiav3ViBce4QgDsPS8JmxVWfQogbAOd8TZVcYB4yeW2QutAFPW2NUeXSN3/4SyP1Nnm69TKWiVlMCScK/LBabmBYlQjvK7IAgv7psvsIeKDiCVzzfa9+KvlmC4iQLXC5kr/Lv5X6t2vygg9N/6Um0GL0L9WGon5oXHqsVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j2azUnJH1tR9gYBvFCGKVjAf0au6mGKjP3YqM/yd+UE=;
 b=ARDqryPUKxAQ3a7TVdWwSZIR+FFbs3B9rQeT+bKCUWUZsATIJh86NrBXeziiJpDRYrvrx6S1FJ3150pJweQyRUWWlfXw/7UlQLAwebOlTArv7IxkJxId2T/4DvsuMVi1jOIDGP5FQBuukYyDmr+aeFst6zAdGLrZKwZRqlPU1RdwckvjtUUP5yNqr1sxrDBxbfuLFzU4lsAAANBm8TRSHmfEjqvKE33x61uUXRySRqhvOFQ1Nz5m+GPtAg3wYGUohJEYemV+QwwpnMhZwA08SXMmLw5w39tS2AhKycogNQfIw1EtgmO0Vmh8Ru5TDYKuQ8fXMryE51xuqPDrbucz2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9)
 by CY5PR11MB6113.namprd11.prod.outlook.com (2603:10b6:930:2e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 16:00:40 +0000
Received: from CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::ab38:d40a:7f9a:3362]) by CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::ab38:d40a:7f9a:3362%7]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 16:00:40 +0000
Message-ID: <5ef8da01-3f44-f0c0-4c15-c5773f6b211c@intel.com>
Date: Thu, 1 Dec 2022 08:00:37 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.0
Content-Language: en-US
From: Wayne Boyer <wayne.boyer@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20221130170723.2460014-1-wayne.boyer@intel.com>
 <166988517042.14635.14083833982972293303@emeril.freedesktop.org>
 <8f6538f8-9d40-2370-441b-9ff3cab1942f@intel.com>
In-Reply-To: <8f6538f8-9d40-2370-441b-9ff3cab1942f@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR13CA0115.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::30) To CO1PR11MB5108.namprd11.prod.outlook.com
 (2603:10b6:303:92::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5108:EE_|CY5PR11MB6113:EE_
X-MS-Office365-Filtering-Correlation-Id: f484b105-07d2-492b-cba2-08dad3b53140
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HHNHCF/WWreerP18bkmmHjfv4TQf1qlYTIypn5e7g76at+7n3utj2mSkcEmK2oPACdAqlOR+npFDBl+9XS/YtE7RbUYNOMNZYdw/+xr9EiVgSOv0T6j0bkPmxINBMwNiIIAX6vMXa3y+teEq7M5QOqxT32EbQWc1u5bIsvMGjEPvZMCk+XrIucQVfcH45knD9Xnaf/WCF6MGFjV7g3d/8F/XjGezMFP50wVYYg4xLr4V5g694VL3c2BglcXTA+AvuQ2sdoY+VIslxxIEgsmzav99x0+qOPEy3mALi2py7PD1trYw/4+8H8VFFQ70WXFf6nIurRh4/4EzGp7xVB8zi43mGXHyDbS7YF/sFFLQSlY3+MRREj4MVN5cEwSTsRI8zu4q24w4z9dDg3Rzi54vDzlhGktHkCIld/3e0XQxnkmnBZsTC+pCcSG0nUB4Ln+LS0mIODe1HqdaEJgiWiS6pexisauK5V2s6MWZSdwvwLQ9J6BhSg1M6CDXRErrgZ+e+jyCIG6IZRGb90D1JpiW3xYZ+toM8A+g3Zwc7okHWztK4mAQUj2qDt8sqNlBMxC8Aymn8elAx13PjulFnrubqHb4w6+ot0VX7tObXBGjFkjXEvtUakbgiC0CteXKJvPOgktERt0+M2q61E7bP0uFnJAn/NnmNbWms0MKts1X2wejCXGQWdcYBRJX8+fbOEj3vIdMSgS1f3Q/2budScST3j3IPbLxjqnPbwEaTP0AIeMnFgxAbRXzQganJ2cRxjYCNC8g5LGjnk6l9vyPPlIMxf2WtFQg4QG5Fmitvo1r/pc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5108.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199015)(53546011)(316002)(44832011)(6486002)(6506007)(26005)(966005)(478600001)(66556008)(6512007)(6916009)(66946007)(66476007)(4326008)(31686004)(107886003)(6666004)(41300700001)(5660300002)(30864003)(8936002)(2616005)(186003)(83380400001)(36756003)(2906002)(82960400001)(38100700002)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTdYbytzckdHdmF6WnhLNHBLM2NEUHVaQXE2K0U0OWpOS1d1NmNSSW9oN2RF?=
 =?utf-8?B?WFNQT3ZDZ0c2RzZGc2wwR3FzZi9HNjhhZmk0MVdSaER5NmVDTGdBWElnajg4?=
 =?utf-8?B?MVJFRWd4RURPOWZKMHJBRGdXVEFCRDJZZzNPNXlhL2xFRUxoWjJrS2twT3Bl?=
 =?utf-8?B?dHhUK0ZFcjhPT2x3T3Q2aFl1M0lVNyt2MFhjaVVJMlF3WDVIalg3ZTUyVnNj?=
 =?utf-8?B?Q3BkYWhHdzZXRENtWEdaRG15eGpDd2JLWGpLYU5sVEhFaFRqdTNnZG9qeVZ1?=
 =?utf-8?B?L21iRUp1SzBGTFlkUkxCWWkxZ2hiNE80QXQxWDFueE1lMG9hYlhXRFgzN0dH?=
 =?utf-8?B?R1lnOXJxbzdVeGlyNitLMkFWc3I3ZzhVY1F0OGo0aWFCZkxUSjREckQyUzl0?=
 =?utf-8?B?TEtkYWdaaXMrUXd2eGxyYlMra3lZTFFkZU0xUm4yR1Fsc0NmVGNtMno2a0pm?=
 =?utf-8?B?cHRVOXhqZk9UZkp2a0oxMzNPOEhHelo5bkU5UTBVdmdXa1NzSmp4TXVnN2t2?=
 =?utf-8?B?OEw4d1MySU41ZS9UamovRTMrMHJUUDVVU1RrU0lRVVgyVEdiZ2pYOFRsNTd5?=
 =?utf-8?B?dmxCTlF4OVRrM04zcjcrejNuOGhrSkE1N0tad29JSjBsazByM3BCMXRuZUJK?=
 =?utf-8?B?QkM3ZkN2eGkzM1RiNEtoMGpmeDYycWZwT3k5QkFUK01LSFU1YVBNZHZjdTZl?=
 =?utf-8?B?UzVFZjUyWWtRemtRSDR4R0VWdjJVV1ErRngxcE4vT3RJOU5VejloV25OVXhx?=
 =?utf-8?B?UkM5T2tWaU1XYW0zdE93Z2ZoTjhHQ3ViYlRRUlJOTGFkaXE3enNqdm1ILzl2?=
 =?utf-8?B?aFRHQ1lEU3VHSUE3SHdlbVVFOEYweGprK0RMK0tUbnhTeUk2UFVLY25ONWF1?=
 =?utf-8?B?NUZuS1Nqck93NU9udnVuRHhVcEpOVXlKd0EyZ2RDaElKZUo2dEwrc2Y3dzEv?=
 =?utf-8?B?SkJaRGo5YkN5dXNVWmVrQ250TWZnTHpDd2l6c2svWmY4TGdXMXFsYUsvZTRU?=
 =?utf-8?B?MTZ0SDVCRXFsaVhHcEVUaE9RcUxwV0lGdWNmQlovOHg2emtScFZKbzVPeWpB?=
 =?utf-8?B?ellGc0M2NU5ydHhYeEk4c2Jrd3oxUFdydVE1UUltcUNwaXF3VXVuL2RVclUw?=
 =?utf-8?B?bnhibVdHeTN1c1BWckJ4V1dyN3RMbHBJeG11WDRTMlFhT0xyMzM1NnZqb0ti?=
 =?utf-8?B?YURzeGpGZGoyWlAvajdGUWZSMGVjTGdSRjVZS1V5eVZBQlhvVWZCQlJBd2hK?=
 =?utf-8?B?Y3RtOFdWWDFxMm1OblZ5SHFscjZRWW1XT0V3QXE5SDNkNEdTdFovZkMvdnhL?=
 =?utf-8?B?UHREY2RvZkdZNkpKYzVNMXdFZzdET1FFZUpEU1Vxb1A0ZGoxbnlva2lpTk1Z?=
 =?utf-8?B?c2t2VDJnSXp2M3FTNWpmNE9xRTRDd2puRWNieS9tcG9hWlpxaU5vUnBDQTQz?=
 =?utf-8?B?dCtmOGkvM3NBaisrUXc5ZkJSTkk0QWUzUFlJbzJTYyt4YUpMczZFQ2VRbGdB?=
 =?utf-8?B?RmhFU1ZZODVrelBRRys1dEF6N2hEUHdQdGc3cy9MY3l3SnpXcm1KK29NZG15?=
 =?utf-8?B?Zzc0NXlIT1BoMWRlYmFhdW9GSndSK2FXQmtDR09DUDZrMDBMaWxGVFRhejYv?=
 =?utf-8?B?SG01NkYvT2p5eTNCRkl4alVjWWRLRk1lbXZJV0x5MldTNFNhOFRkZmdENFU3?=
 =?utf-8?B?aHZ0Z0QwTldGOU4yMGlSOUNheVlSbFZDL0xOZUFSRHBSS2lwYUUzT2kxRS94?=
 =?utf-8?B?Nm1IY3cwcU95bm90dnpqUGxsdEJIZ25IeWtoZkpmYUxVVFZHZkh6TkhLdzJj?=
 =?utf-8?B?UmZvWVlTN1I2ZnJia3lCTDRHY1NLb3cxMjVQNm54bFdkeEZHVE05S05SNk90?=
 =?utf-8?B?VzN0MmtibDlXaTJGOEVONlgwOHphb3g4NnE4NmV6MVdDR1hFSm1sdFdCdk5B?=
 =?utf-8?B?WUhwR0R1eWUwNi9VeXpadHo3Tkk2Z09ES1RRU3JwN25VV3RqZzRkM043RUkr?=
 =?utf-8?B?Z0FJZnF6RVlSOGE1L0ozVk5yRmEvQWM0NU1INGtVY3F0ZzVtelVsdmhuS2wv?=
 =?utf-8?B?K3NibFdCZEhtcUJrSDlNY3Zma1duejhwb1FnT1FxcVdNY1FkQnNEOXJwenhD?=
 =?utf-8?Q?LNUthoObVckYx0oI1CHUJgQ7d?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f484b105-07d2-492b-cba2-08dad3b53140
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5108.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 16:00:39.9449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vvxDMM20mAWSmWNha1SKwtGfTQqQ9I9G2E7bWw+GB5Uw/laFM67V2L9UlCKpghZQvHDFKXacZkM3dMxMOAe76A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6113
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Implement_recommended_caching_policy?=
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
Cc: saix.nandan.yedireswarapu@intel.com, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Sai Nandan as Lakshmi is out of the office.

On 12/1/22 7:13 AM, Wayne Boyer wrote:
> The failures below appear to be unrelated to my change which is
> restricted to PVC.
>=20


> On 12/1/22 12:59 AM, Patchwork wrote:
>> *Patch Details*
>> *Series:*	drm/i915/pvc: Implement recommended caching policy
>> *URL:*	https://patchwork.freedesktop.org/series/111491/
>> <https://patchwork.freedesktop.org/series/111491/>
>> *State:*	failure
>> *Details:*
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/index.html
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_12456_full -> Patchwork_111491v1_full
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_111491v1_full absolutely
>> need to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_111491v1_full, please notify your bug team to
>> allow them
>> to document this new failure mode, which will reduce false positives in =
CI.
>>
>>
>>     Participating hosts (11 -> 11)
>>
>> No changes in participating hosts
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in
>> Patchwork_111491v1_full:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   *
>>
>>     igt@gem_exec_fence@syncobj-invalid-wait:
>>
>>       o shard-skl: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
4/igt@gem_exec_fence@syncobj-invalid-wait.html> -> WARN <https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl4/igt@gem_exec_fence@syn=
cobj-invalid-wait.html>
>>   *
>>
>>     igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a:
>>
>>       o shard-tglb: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tgl=
b7/igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a.html> -> INCOMP=
LETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-tgl=
b3/igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a.html>
>>
>>
>>     Known issues
>>
>> Here are the changes found in Patchwork_111491v1_full that come from
>> known issues:
>>
>>
>>       IGT changes
>>
>>
>>         Issues hit
>>
>>   *
>>
>>     igt@gem_ctx_param@set-priority-not-supported:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@gem_ctx_param@set-priority-not-supported.html> (fdo#109314 <ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109314>)
>>   *
>>
>>     igt@gem_exec_fair@basic-none-solo@rcs0:
>>
>>       o shard-apl: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl=
2/igt@gem_exec_fair@basic-none-solo@rcs0.html> -> FAIL <https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl6/igt@gem_exec_fair@basic=
-none-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/=
issues/2842>)
>>   *
>>
>>     igt@gem_exec_fair@basic-pace@vcs0:
>>
>>       o shard-iclb: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b7/igt@gem_exec_fair@basic-pace@vcs0.html> -> FAIL <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@gem_exec_fair@basic-pa=
ce@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2=
842>)
>>   *
>>
>>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#4613 <ht=
tps://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 similar issue
>>   *
>>
>>     igt@gen3_render_mixed_blits:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@gen3_render_mixed_blits.html> (fdo#109289 <https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109289>)
>>   *
>>
>>     igt@gen9_exec_parse@bb-oversize:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@gen9_exec_parse@bb-oversize.html> (i915#2527 <https://gitlab.f=
reedesktop.org/drm/intel/issues/2527> / i915#2856 <https://gitlab.freedeskt=
op.org/drm/intel/issues/2856>)
>>   *
>>
>>     igt@i915_selftest@live@gt_heartbeat:
>>
>>       o shard-skl: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
9/igt@i915_selftest@live@gt_heartbeat.html> -> DMESG-FAIL <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@i915_selftest@l=
ive@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel=
/issues/5334>)
>>   *
>>
>>     igt@i915_selftest@live@hangcheck:
>>
>>       o shard-tglb: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tgl=
b7/igt@i915_selftest@live@hangcheck.html> -> DMESG-WARN <https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-tglb3/igt@i915_selftest@liv=
e@hangcheck.html> (i915#5591 <https://gitlab.freedesktop.org/drm/intel/issu=
es/5591>)
>>   *
>>
>>     igt@i915_suspend@debugfs-reader:
>>
>>       o shard-skl: NOTRUN -> INCOMPLETE
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-skl6/igt@i915_suspend@debugfs-reader.html> (i915#7233 <https://gitlab.fr=
eedesktop.org/drm/intel/issues/7233>)
>>   *
>>
>>     igt@kms_big_fb@4-tiled-addfb:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_big_fb@4-tiled-addfb.html> (i915#5286 <https://gitlab.free=
desktop.org/drm/intel/issues/5286>)
>>   *
>>
>>     igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html> (fdo#111615 <https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111615>) +1 similar issue
>>   *
>>
>>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-skl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html> (fdo#=
109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#3886 =
<https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>>   *
>>
>>     igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html> (i915=
#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>>   *
>>
>>     igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html> (fdo#1116=
15 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111615> / i915#3689 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3689>) +2 similar issues
>>   *
>>
>>     igt@kms_chamelium@dp-edid-resolution-list:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_chamelium@dp-edid-resolution-list.html> (fdo#109284 <https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109284> / fdo#111827 <https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111827>) +1 similar issue
>>   *
>>
>>     igt@kms_cursor_crc@cursor-random-512x512:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb5/igt@kms_cursor_crc@cursor-random-512x512.html> (i915#3359 <https:/=
/gitlab.freedesktop.org/drm/intel/issues/3359>)
>>   *
>>
>>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size=
:
>>
>>       o shard-skl: NOTRUN -> FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-siz=
e.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) =
+1 similar issue
>>   *
>>
>>     igt@kms_flip@2x-plain-flip-interruptible:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_flip@2x-plain-flip-interruptible.html> (fdo#109274 <https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109274> / fdo#111825 <https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825> / i915#3637 <https://gitlab.free=
desktop.org/drm/intel/issues/3637>) +1 similar issue
>>   *
>>
>>     igt@kms_flip@flip-vs-suspend@a-dp1:
>>
>>       o shard-apl: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl=
3/igt@kms_flip@flip-vs-suspend@a-dp1.html> -> DMESG-WARN <https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl6/igt@kms_flip@flip-vs-=
suspend@a-dp1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/iss=
ues/180> / i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>=
)
>>   *
>>
>>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsca=
ling@pipe-a-default-mode:
>>
>>       o shard-iclb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downs=
caling@pipe-a-default-mode.html> (i915#6375 <https://gitlab.freedesktop.org=
/drm/intel/issues/6375>)
>>   *
>>
>>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscalin=
g@pipe-a-default-mode:
>>
>>       o shard-iclb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscal=
ing@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/dr=
m/intel/issues/2672>) +1 similar issue
>>   *
>>
>>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@=
pipe-a-valid-mode:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscalin=
g@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/in=
tel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issu=
es/2672>) +1 similar issue
>>   *
>>
>>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@=
pipe-a-valid-mode:
>>
>>       o shard-iclb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscalin=
g@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/in=
tel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issu=
es/2672>) +4 similar issues
>>   *
>>
>>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-up=
scaling@pipe-a-default-mode:
>>
>>       o shard-iclb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-=
upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.=
org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/=
intel/issues/3555>) +1 similar issue
>>   *
>>
>>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-=
wc:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mma=
p-wc.html> (i915#6497 <https://gitlab.freedesktop.org/drm/intel/issues/6497=
>) +1 similar issue
>>   *
>>
>>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-=
cpu:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mma=
p-cpu.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
280> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111825>)
>>   *
>>
>>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>>
>>       o shard-skl: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html> -> DMESG-WARN =
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl6/igt=
@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html> (i915#1982 <https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982>)
>>   *
>>
>>     igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
>>
>>       o shard-skl: NOTRUN -> FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-skl4/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html> (i915#4573=
 <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +2 similar issues
>>   *
>>
>>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@p=
ipe-b-edp-1:
>>
>>       o shard-iclb: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11491v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format=
-factor-0-5@pipe-b-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/d=
rm/intel/issues/5176>) +2 similar issues
>>   *
>>
>>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-=
5@pipe-a-edp-1:
>>
>>       o shard-iclb: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111491v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-dow=
nscale-factor-0-5@pipe-a-edp-1.html> (i915#5235 <https://gitlab.freedesktop=
.org/drm/intel/issues/5235>) +5 similar issues
>>   *
>>
>>     igt@kms_psr@psr2_cursor_mmap_gtt:
>>
>>       o shard-tglb: NOTRUN -> FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html> (i915#132 <https://gitlab.f=
reedesktop.org/drm/intel/issues/132> / i915#3467 <https://gitlab.freedeskto=
p.org/drm/intel/issues/3467>)
>>   *
>>
>>     igt@kms_psr@psr2_sprite_plane_move:
>>
>>       o shard-iclb: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b2/igt@kms_psr@psr2_sprite_plane_move.html> -> SKIP <https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@kms_psr@psr2_sprite_p=
lane_move.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441>) +2 similar issues
>>   *
>>
>>     igt@kms_vrr@flipline:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-skl4/igt@kms_vrr@flipline.html> (fdo#109271 <https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271>) +41 similar issues
>>   *
>>
>>     igt@kms_writeback@writeback-check-output:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-skl6/igt@kms_writeback@writeback-check-output.html> (fdo#109271 <https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#2437 <https://gitlab=
.freedesktop.org/drm/intel/issues/2437>)
>>   *
>>
>>     igt@sysfs_clients@recycle-many:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-tglb6/igt@sysfs_clients@recycle-many.html> (i915#2994 <https://gitlab.fr=
eedesktop.org/drm/intel/issues/2994>)
>>
>>
>>         Possible fixes
>>
>>   *
>>
>>     igt@fbdev@unaligned-read:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-1/igt@fbdev@unaligned-read.html> (i915#2582 <https://gitlab.freedesktop.or=
g/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111491v1/shard-rkl-6/igt@fbdev@unaligned-read.html>
>>   *
>>
>>     igt@gem_ctx_exec@basic-nohangcheck:
>>
>>       o shard-tglb: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tgl=
b3/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.free=
desktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111491v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangchec=
k.html>
>>   *
>>
>>     igt@gem_eio@in-flight-contexts-10ms:
>>
>>       o {shard-rkl}: TIMEOUT
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-3/igt@gem_eio@in-flight-contexts-10ms.html> (i915#3063 <https://gitlab.fre=
edesktop.org/drm/intel/issues/3063>) -> PASS <https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111491v1/shard-rkl-2/igt@gem_eio@in-flight-contexts-1=
0ms.html>
>>   *
>>
>>     igt@gem_eio@in-flight-suspend:
>>
>>       o {shard-rkl}: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-4/igt@gem_eio@in-flight-suspend.html> (fdo#103375 <https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D103375>) -> PASS <https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111491v1/shard-rkl-6/igt@gem_eio@in-flight-suspend.html> =
+1 similar issue
>>   *
>>
>>     igt@gem_eio@suspend:
>>
>>       o {shard-rkl}: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-3/igt@gem_eio@suspend.html> (i915#7052 <https://gitlab.freedesktop.org/drm=
/intel/issues/7052>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111491v1/shard-rkl-2/igt@gem_eio@suspend.html>
>>   *
>>
>>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b8/igt@gem_exec_balancer@parallel-keep-submit-fence.html> (i915#4525 <https=
://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb1/igt@gem_exec_balanc=
er@parallel-keep-submit-fence.html>
>>   *
>>
>>     igt@gem_exec_fair@basic-none-share@rcs0:
>>
>>       o {shard-rkl}: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-6/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitlab=
.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gem_exec_fair@basic-none=
-share@rcs0.html>
>>   *
>>
>>     igt@gem_exec_reloc@basic-wc-read-noreloc:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html> (i915#3281 <https://gitla=
b.freedesktop.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc=
-read-noreloc.html> +18 similar issues
>>   *
>>
>>     igt@gem_pread@snoop:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-6/igt@gem_pread@snoop.html> (i915#3282 <https://gitlab.freedesktop.org/drm=
/intel/issues/3282>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111491v1/shard-rkl-5/igt@gem_pread@snoop.html> +3 similar issues
>>   *
>>
>>     igt@gen9_exec_parse@bb-chained:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-6/igt@gen9_exec_parse@bb-chained.html> (i915#2527 <https://gitlab.freedesk=
top.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111491v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html> =
+4 similar issues
>>   *
>>
>>     igt@i915_pm_dc@dc6-dpms:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-5/igt@i915_pm_dc@dc6-dpms.html> (i915#3361 <https://gitlab.freedesktop.org=
/drm/intel/issues/3361>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111491v1/shard-rkl-6/igt@i915_pm_dc@dc6-dpms.html>
>>   *
>>
>>     igt@i915_pm_dc@dc6-psr:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-1/igt@i915_pm_dc@dc6-psr.html> (i915#658 <https://gitlab.freedesktop.org/d=
rm/intel/issues/658>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111491v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html>
>>   *
>>
>>     igt@i915_pm_sseu@full-enable:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-1/igt@i915_pm_sseu@full-enable.html> (i915#4387 <https://gitlab.freedeskto=
p.org/drm/intel/issues/4387>) -> PASS <https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111491v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html>
>>   *
>>
>>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>>
>>       o shard-skl: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html> (i915#25=
21 <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS <https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl9/igt@kms_asy=
nc_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>>   *
>>
>>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html> (i915#184=
5 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https=
://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_ccs@pipe-a-=
bad-pixel-format-y_tiled_gen12_rc_ccs.html> +22 similar issues
>>   *
>>
>>     igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1:
>>
>>       o shard-skl: DMESG-WARN
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
6/igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1.html> (i915#1=
982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl1/igt@kms_cu=
rsor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1.html>
>>   *
>>
>>     igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>>
>>       o shard-skl: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
9/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html> (i915#5072 <https://git=
lab.freedesktop.org/drm/intel/issues/5072>) -> PASS <https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_cursor_legacy@cur=
sor-vs-flip@toggle.html>
>>   *
>>
>>     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
>>
>>       o shard-iclb: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html> (i915#2346 <http=
s://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb8/igt@kms_cursor_leg=
acy@flip-vs-cursor@varying-size.html> +2 similar issues
>>   *
>>
>>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>>
>>       o shard-skl: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html> (i915#79 <https://gitlab=
.freedesktop.org/drm/intel/issues/79>) -> PASS <https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_flip@flip-vs-expired-v=
blank@c-edp1.html>
>>   *
>>
>>     igt@kms_flip@plain-flip-ts-check@b-edp1:
>>
>>       o shard-skl: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
9/igt@kms_flip@plain-flip-ts-check@b-edp1.html> (i915#2122 <https://gitlab.=
freedesktop.org/drm/intel/issues/2122>) -> PASS <https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_flip@plain-flip-ts-ch=
eck@b-edp1.html> +1 similar issue
>>   *
>>
>>     igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html> (i915#1849 <h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://g=
itlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_frontbuffer_tra=
cking@fbc-shrfb-scaledprimary.html> +20 similar issues
>>   *
>>
>>     igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-1/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html> (i915#3558 =
<https://gitlab.freedesktop.org/drm/intel/issues/3558>) -> PASS <https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_plane=
@plane-panning-bottom-right@pipe-a-planes.html> +1 similar issue
>>   *
>>
>>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe=
-b-edp-1:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235=
>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pi=
pe-b-edp-1.html> +2 similar issues
>>   *
>>
>>     igt@kms_psr@psr2_sprite_mmap_gtt:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b1/igt@kms_psr@psr2_sprite_mmap_gtt.html> (fdo#109441 <https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109441>) -> PASS <https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.=
html> +3 similar issues
>>   *
>>
>>     igt@kms_psr@sprite_mmap_gtt:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-5/igt@kms_psr@sprite_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop=
.org/drm/intel/issues/1072>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111491v1/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html> +3 sim=
ilar issues
>>   *
>>
>>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#5461=
 <https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS <https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_psr_=
stress_test@invalidate-primary-flip-overlay.html>
>>   *
>>
>>     igt@perf@blocking:
>>
>>       o shard-skl: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl=
6/igt@perf@blocking.html> (i915#1542 <https://gitlab.freedesktop.org/drm/in=
tel/issues/1542>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111491v1/shard-skl6/igt@perf@blocking.html>
>>   *
>>
>>     igt@perf@mi-rpc:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-6/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/int=
el/issues/2434>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111491v1/shard-rkl-5/igt@perf@mi-rpc.html>
>>   *
>>
>>     igt@perf_pmu@enable-race@rcs0:
>>
>>       o shard-tglb: INCOMPLETE
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tgl=
b7/igt@perf_pmu@enable-race@rcs0.html> (i915#6453 <https://gitlab.freedeskt=
op.org/drm/intel/issues/6453>) -> PASS <https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111491v1/shard-tglb6/igt@perf_pmu@enable-race@rcs0.html>
>>   *
>>
>>     igt@prime_vgem@coherency-gtt:
>>
>>       o {shard-rkl}: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl=
-4/igt@prime_vgem@coherency-gtt.html> (fdo#109295 <https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109295> / fdo#111656 <https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111656> / i915#3708 <https://gitlab.freedesktop.org/drm/in=
tel/issues/3708>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111491v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
>>   *
>>
>>     igt@sysfs_heartbeat_interval@precise@rcs0:
>>
>>       o {shard-dg1}: FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-dg1=
-15/igt@sysfs_heartbeat_interval@precise@rcs0.html> (i915#1755 <https://git=
lab.freedesktop.org/drm/intel/issues/1755>) -> PASS <https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111491v1/shard-dg1-19/igt@sysfs_heartbeat_inte=
rval@precise@rcs0.html> +1 similar issue
>>
>>
>>         Warnings
>>
>>   *
>>
>>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i91=
5#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb1/igt@km=
s_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i915#658 <ht=
tps://gitlab.freedesktop.org/drm/intel/issues/658>)
>>   *
>>
>>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> (i915#2920 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@kms_psr2_sf@o=
verlay-primary-update-sf-dmg-area.html> (fdo#111068 <https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freedesktop.org=
/drm/intel/issues/658>)
>>   *
>>
>>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html> (fdo#111068 <https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freedes=
ktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-are=
a.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>>   *
>>
>>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>>
>>       o shard-iclb: SKIP
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-icl=
b1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> (i915#658 =
<https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr2_s=
f@primary-plane-update-sf-dmg-area-big-fb.html> (i915#2920 <https://gitlab.=
freedesktop.org/drm/intel/issues/2920>)
>>   *
>>
>>     igt@runner@aborted:
>>
>>       o shard-apl: (FAIL
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl=
2/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12456/shard-apl3/igt@runner@aborted.html>, FAIL <https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12456/shard-apl1/igt@runner@aborted.html>) (fd=
o#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#300=
2 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4312 <https=
://gitlab.freedesktop.org/drm/intel/issues/4312>) -> (FAIL <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl8/igt@runner@aborted.=
html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sh=
ard-apl6/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111491v1/shard-apl6/igt@runner@aborted.html>, FAIL <https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl1/igt@runner=
@aborted.html>) (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271> / i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>=
 / i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#=
4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>>
>> {name}: This element is suppressed. This means it is ignored when comput=
ing
>> the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>
>>     Build changes
>>
>>   * Linux: CI_DRM_12456 -> Patchwork_111491v1
>>
>> CI-20190529: 20190529
>> CI_DRM_12456: 7a3c5315507ed0f4a9b0aa07ce6df1b3d28ebc35 @
>> git://anongit.freedesktop.org/gfx-ci/linux
>> IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>> Patchwork_111491v1: 7a3c5315507ed0f4a9b0aa07ce6df1b3d28ebc35 @
>> git://anongit.freedesktop.org/gfx-ci/linux
>> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>> git://anongit.freedesktop.org/piglit
>>
>=20

--=20
Wayne Boyer
Graphics Software Engineer
AXG SCSS Platform Enablement
