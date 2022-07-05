Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB57567AAC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 01:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820A710E3DE;
	Tue,  5 Jul 2022 23:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F3110E65B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 23:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657063826; x=1688599826;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbpSNizuYNsHvxJ4kPZUzDk/Hzs+rdBGp04UXmE5saI=;
 b=cx58lK6FfxL4WHv55RGobi+ga4pUt8vX/4G6xarJHFLROLAmkcuVc8r5
 4p+bgaN50muOdCZZGodErWj1q56/I6qMiF02Md9MBQhW+vQYZFQdoT/1i
 l5d6EWhGhl+ogPypwBL0S7GTxFoDpAIwTB6Qcd596X/qF7njShTJg7Sxb
 Aom/yLrSZr7ZB6a55onPLWztETH5eEC9h/GL276A0aWyn/f60X5fF3lwg
 pGq/trY8NvL4zoHFiFwjUsp+vu9BeoB/dmNAIH7SShrAywg/rUgvb/EfM
 VuSeq+K/KqTLoVBddMC32yEWwakpCUdA7dZdeUswZ8zTlZAQIDqJSerN3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="266598685"
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="266598685"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 16:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="769825904"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 05 Jul 2022 16:30:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 16:30:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 16:30:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 16:30:23 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 16:30:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Grs7XjtRmUiRICb3nPc61t3muy/rORtkNKwOTWMkCLS/vEUKmDW/V2eRHAwF/WP2e2bnnLhm2QaRxgM3daL9UDc7jKKty2+xne/GQcE1J51Vm9Ao3HTk3i9bfn++I0kliWQoHwQ2xjZKOA2EgO1dcCZTRU/8MsG4s90htFLeRY4xgX0fM9f4Lc2O7xR5/1v6/FjXaVZPZ74WwtYH903sxvejpY/wNAfHNN1JGOirHavjgxYdTFNWOPmi+vt31OaGJqy+KfjX3ODCBKebWyiK9pSyDkbDr/G2pyKtA1r94xSFQZJusMx9KFqQgTmqUIllpQu63jt/TssNcsv+nZUPhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w2VMmOZTe9BY+yie2a0Vq55yILbbQgfgv3E8QGIB0mk=;
 b=Z8NLpPuhKdN/XJP4wfbg7AYI7Wu2oCPWaQkyMc7ivwOzAVZgQbSgaK53FRQc4er0hBmarMay+QX3ZhlE57pVUMisZZA2336Zjq9mpKdWaR0O/8HelznjnVbDam7agM/6SNv0SyWoErpLD8yu6STS1t8h94iSoHVRpV0AZ+qjE/zvw1ZQUZBjUo6gsf7CvpSu7uM+vrLdPl1Oq9UoGDt93yl1bKBCeO9XbiSZuUUGfLyHjQ+4iEyw8I1i3kjI6K/krrfs6vYpwBwAg7L0xgXTk6pRtrI1fbsK5o2gg0vXzR6jY/jZI6Mu+WPqVZoX58G9srlmapstU6nirFG4X0PPxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3564.namprd11.prod.outlook.com (2603:10b6:5:137::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.18; Tue, 5 Jul 2022 23:30:21 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::468:a5f:1b4f:8d7d]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::468:a5f:1b4f:8d7d%9]) with mapi id 15.20.5395.022; Tue, 5 Jul 2022
 23:30:21 +0000
Message-ID: <a120b625-4042-f616-b314-aed2013f324b@intel.com>
Date: Tue, 5 Jul 2022 16:30:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Zhang, Carl" <carl.zhang@intel.com>, "Ye, Tony" <tony.ye@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
 <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
 <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
 <913becb5-7ffe-ca7b-7acd-71c2ee3ade23@intel.com>
 <PH0PR11MB557934FC60F660B9ABB96CA987AC9@PH0PR11MB5579.namprd11.prod.outlook.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <PH0PR11MB557934FC60F660B9ABB96CA987AC9@PH0PR11MB5579.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR20CA0013.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::26) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a91d0d7a-b51b-4496-d94a-08da5ede540d
X-MS-TrafficTypeDiagnostic: DM6PR11MB3564:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xn3SMwYsc8YSg4HgqBmQOJFAfHQkyqqRHKCZil9beYR/giM/aLSp8+QpSlMmSLz6k4VVhauQD1L4DRasjHatVCqr8ivLjQ/WbA/nlJ+dzQNH4yquxukAzn0XN1Xa6ZzH5anNM8k01ooNWREb+F1fvApjX/oKtFQy3ZEHNH+68CYCnWa4rK5clHMqpAat8UhoS5yFmZjc62LYlUKX9ZIHWVbgjZY93G+b/xX+kLlYCTV/s0gfZ80IrajXC5aI7YbnssWOSwxTUy+FYT5GvGK0cX/IkncVIVXsWCWocn5E48a07bpevuXTKx0ptrcd16ri6e7gQfK5yFsXSrVmbJog1fzTqDpUWu+4debcVxzovaFyWchMpcL1+3gDM5kbcGY5mG0tt0S4JYrHlLouUFR//ailhxNKrQeZY4yCLk/N5mRuEoJK4q4Lq9pj2+tP3y+wTHA6LVFMgqko+d7A9BTB6OT4f2Cr1tf+XqhpY1e4xzWtFSipihrbmtEHxJnQ68YC2uZ6JxAuqCoynOM1Y1+fToxBHUGzoH3srOmznmlJrpoxr5cwwajzLSRsyhRS2KrI4OpYIiH3mgKC5YR4Hgx0jBJ0sKr2ZMCbMNTU3jknDzGMtcZsaOrCPfOx/aa6nVe2tMAvilmbqngD0HfDVUowgWys7DIYKrytJyfL8f4BAbYEDpniCH4gqKrCm4qOocLcSXc0j3hsmeXDdA6Yu0D9yCPHNnqABOF9b5EbcVdbvGIIpDgVUklsRBbArJbYZ8NZtmo4zyQW/Qchq3HfSZxzxiS/gqEZ+Lrf7+Hsp3cvUBvY2ot3MlNbgTrFVLDL2cjs7pt32Lb546qDhQ0U9gc+LTWwiR5m1jJVxxzy1CnrMHCkJmXW5epMpIcR7cR8CKwH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(376002)(39860400002)(346002)(136003)(53546011)(6506007)(8936002)(478600001)(5660300002)(2906002)(41300700001)(82960400001)(30864003)(6666004)(8676002)(4326008)(66476007)(66556008)(38100700002)(66946007)(36756003)(186003)(6486002)(110136005)(31686004)(26005)(54906003)(6512007)(31696002)(86362001)(2616005)(83380400001)(316002)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0lSbGNIUnJqNHhuMk8yYkRKYUN1Q2ZndXJnckVRQzFTSEdyTEpUQlJ2djBm?=
 =?utf-8?B?cUZ6dDlIMng4MVdyUS9ZekdTdloxZlY3WjR5RWp1OHgxSG0xUlFjQll0M1hE?=
 =?utf-8?B?UlZGTU1ZMGZYSDZqL1pFVUdSaHNWdTdpV3FkN253c0NNNmZEdncyTG1mVDRk?=
 =?utf-8?B?OHF2T3htcEJWSzJsSEZjZ1lvYXMxeTJmMHVibWh3ZC9KYjJWMmcvQjNSbENm?=
 =?utf-8?B?cnBTQTl4STAvMmJ4TFVENDhRQWxrUG5MTVZVTkF2d0tzVXpiMjRBWW9zaWcw?=
 =?utf-8?B?MFVQMTkzUGhSS3phQTZoZ25SejRLYTh6MU9EeTltb2RRV2VSc1JIU0EvZ25v?=
 =?utf-8?B?YU15S2Ryai8yd29mWXM4cGYwZ09kYjJxMUFPSEV5TlFTSm1qZ2RraXlvTFls?=
 =?utf-8?B?cTJJUW94ZXNSWkZLNG5nUGRPUnhFVkNVSDZ3STd4QmN3VGtoMFdmbTQ2SjRt?=
 =?utf-8?B?cHdKZlBqV3BHOVFLTGVlWmdPdSsyS09RUEtNMUkzZjNLNXJXT05OZk9TMTdi?=
 =?utf-8?B?MUVBcklvMEV5QTAyT2lpbG1uQllicjNuRkIzNlAvVWhNaEF6ckNlZGZqM1F1?=
 =?utf-8?B?SGpmeTJKeDVYa1dxZDB5S0tGVG9nNGdrbjdBbVBCOW53MTU0NkdNSStKTEVZ?=
 =?utf-8?B?MFoweUJ1dTFUbTgxQXk3c1ZCam1VekZyMUxxcXhQYk1nVXhVSkNlM1VJWmRm?=
 =?utf-8?B?a3IyNE9nT1hTVjFScVZETEN3cHpoejlrY0NvZWJOSE11Y1FXekhra3B6WlB2?=
 =?utf-8?B?djl0NEc2NGpwRExRc2lNYWROQmRrQVJab1dsSnd3NHdkdE1GZk9NM2p3am5Y?=
 =?utf-8?B?emJUYWZrRkZxNHFCWW9kbDZ6Z0VmakFJRzVUWWsvRWw4MnlsekloVlVqRWJ0?=
 =?utf-8?B?MDZHYWNJMXNHUHJaV1crbnR5ZTNPdGFPYlB0a0JOK1ZSZ3FPSE4zT21KWDdR?=
 =?utf-8?B?dEdNS3ZNdEVqWnhYZC95cW94VFo2ZFV2UVdLR3dSMlIwVG9GSGVNRE84SXkx?=
 =?utf-8?B?aVFHc2pIMmRVbm9SK3F2dnlUWlh5eUxobEdzejc0aWl5ckdwYzlodXowK2hW?=
 =?utf-8?B?dC9nQi9mUHIyYlB0dWh1UUhybm1Xdlo1RzJPV3pkcDM5YjhGSlREb3NYa2NR?=
 =?utf-8?B?UHZxbWJYeHZjZ0duSmJWZXUxUVdYaFg2RmFuSDBHVFJLcSsweVQwL1FSTmxv?=
 =?utf-8?B?dWxkKzVjWkdZc3lhTHhlKzI1dEpWbDZsMEJBZ1pxUTd3QSt2ZHBldVllYXZM?=
 =?utf-8?B?R0xwUDdlMmkrWlBGTnRDRHRkYkN4cHJqUWxzL000RVoxeGE4V2hueXVDaEdY?=
 =?utf-8?B?SElJN0lBdTlEaHFwcVQyWHJTdUYvekxwcGw3RGlPVmJQcjZqSW4xT2w1MzB6?=
 =?utf-8?B?SUljd0orMFVCRGtZTlpmWmdKYzFvSkd4T3lrcGlFTjNidTExWlVVSXpiNk5S?=
 =?utf-8?B?WUlnNVBhR0h3TFRtT3N2OXdUM0NCR2lTSzI1VjJJZjE2YUJMYlQ4QWtrdHdQ?=
 =?utf-8?B?aVRyTGNZZHBzejZJM1RRc1RRTmFjOTFqUi9lYzdKM0l2ZUNBcDlJeTkyTGZX?=
 =?utf-8?B?OFBldWt5dGZ0RjZnWEVyV2ZiQW1odStadVZTUjQ1d1B0QThLTUZlNU9IRWRU?=
 =?utf-8?B?THNGV0dSNnJhSlpmTjNIZmlQemJZZHREMDJaYWR5SEREWUt6ZUd6ckdvMDFw?=
 =?utf-8?B?U09Kc1ZrNVo5VWsvYzlvZ1YrWVlsUXdwSnhtOTZYK3VHak5La2Rsc1RacUJO?=
 =?utf-8?B?anJSSEQrWTR1VWNqTlJ6ZEQ2Y2l1UEgyUlZwcUpmUzI2WXJETkN4N3YzemEx?=
 =?utf-8?B?Zit2dHNXZis3b05vcVFCenpqQStBTmpQMUI4NUhYb1lyUVNlTHpRSW5rSmxQ?=
 =?utf-8?B?Z05GWXJYOTF4Y0JIL2NxcUNOWGhKb3pjdmIvMjFJR2Ewdy9SNDlrSWwwYkRr?=
 =?utf-8?B?Vi9QWS9IcGtJL2tRMkw5UWNzaS9TR2NiTVg5Vi9Gd3JtamJZT3ZtUzMrYkFD?=
 =?utf-8?B?K0JGQU53bFBzYnNvYnFjcnV2RWpPOFAxSklNcEkyMkI2ZkFBT0ZmMHNKV1Z6?=
 =?utf-8?B?QXJOMm10R2ltemFDMUhqRzBSdUFpN0JnQm8wT3FnWWcrRFhTSUVmektmUkk2?=
 =?utf-8?B?YzJwalpoazZ4OUk3Q1RlcnBjdlFaZUFJMEFnSlM3bWZGMWV1MmVJWlc3K0RJ?=
 =?utf-8?Q?upmWCG+8L/ajwaD1/ZLmITA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a91d0d7a-b51b-4496-d94a-08da5ede540d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 23:30:21.4165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5UcwvBcKGb6i0V28d89aRxEaXE+c0Zc/rEK3uG6s91p+U13qIX25INC9rr6Kpy/vpkS4Jhc2XsChBf4j+kQ+DvO3q56tf73bcpRgBhrz7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3564
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/15/2022 7:28 PM, Zhang, Carl wrote:
>> On From: Ye, Tony <tony.ye@intel.com>
>> Sent: Thursday, June 16, 2022 12:15 AM
>>
>>
>> On 6/15/2022 3:13 AM, Tvrtko Ursulin wrote:
>>> On 15/06/2022 00:15, Ye, Tony wrote:
>>>> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>>>>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP
>>>>>>>>>>>>>>> command. The load operation itself is relatively simple
>>>>>>>>>>>>>>> (just send a message to the GSC with the physical address
>>>>>>>>>>>>>>> of the HuC in LMEM), but there are timing changes that
>>>>>>>>>>>>>>> requires special attention. In particular, to send a PXP
>>>>>>>>>>>>>>> command we need to first export the GSC driver and then
>>>>>>>>>>>>>>> wait for the mei-gsc and mei-pxp modules to start, which
>>>>>>>>>>>>>>> means that HuC load will complete after i915 load is
>>>>>>>>>>>>>>> complete. This means that there is a small window of time
>>>>>>>>>>>>>>> after i915 is registered and before HuC is loaded during
>>>>>>>>>>>>>>> which userspace could submit and/or checking the HuC load
>>>>>>>>>>>>>>> status, although this is quite unlikely to happen (HuC is
>>>>>>>>>>>>>>> usually loaded before kernel init/resume completes).
>>>>>>>>>>>>>>> We've consulted with the media team in regards to how to
>>>>>>>>>>>>>>> handle this and they've asked us to do the following:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load
>>>>>>>>>>>>>>> is still in progress. The media driver uses the IOCTL as a
>>>>>>>>>>>>>>> way to check if HuC is enabled and then includes a
>>>>>>>>>>>>>>> secondary check in the batches to get the actual status,
>>>>>>>>>>>>>>> so doing it this way allows userspace to keep working
>>>>>>>>>>>>>>> without changes.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded.
>>>>>>>>>>>>>>> Stalls are
>>>>>>>>>>>>>>> expected to be very rare (if any), due to the fact that
>>>>>>>>>>>>>>> HuC is usually loaded before kernel init/resume is
>>>>>>>>>>>>>>> completed.
>>>>>>>>>>>>>> Motivation to add these complications into i915 are not
>>>>>>>>>>>>>> clear to me here. I mean there is no HuC on DG2 _yet_ is
>>>>>>>>>>>>>> the premise of the series, right? So no backwards
>>>>>>>>>>>>>> compatibility concerns. In this case why jump through the
>>>>>>>>>>>>>> hoops and not let userspace handle all of this by just
>>>>>>>>>>>>>> leaving the getparam return the true status?
>>>>>>>>>>>>> The main areas impacted by the fact that we can't guarantee
>>>>>>>>>>>>> that HuC load is complete when i915 starts accepting
>>>>>>>>>>>>> submissions are boot and suspend/resume, with the latter
>>>>>>>>>>>>> being the main problem; GT reset is not a concern because
>>>>>>>>>>>>> HuC now survives it. A suspend/resume can be transparent to
>>>>>>>>>>>>> userspace and therefore the HuC status can temporarily flip
>>>>>>>>>>>>> from loaded to not without userspace knowledge, especially
>>>>>>>>>>>>> if we start going into deeper suspend states and start
>>>>>>>>>>>>> causing HuC resets when we go into runtime suspend. Note
>>>>>>>>>>>>> that this is different from what happens during GT reset for
>>>>>>>>>>>>> older platforms, because in that scenario we guarantee that
>>>>>>>>>>>>> HuC reload is complete before we restart the submission
>>>>>>>>>>>>> back-end, so userspace doesn't notice that the HuC status
>>>>>>>>>>>>> change. We had an internal discussion about this problem
>>>>>>>>>>>>> with both media and i915 archs and the conclusion was that
>>>>>>>>>>>>> the best option is for i915 to stall media submission while
>>>>>>>>>>>>> HuC (re-)load is in progress.
>>>>>>>>>>>> Resume is potentialy a good reason - I did not pick up on
>>>>>>>>>>>> that from the cover letter. I read the statement about the
>>>>>>>>>>>> unlikely and small window where HuC is not loaded during
>>>>>>>>>>>> kernel init/resume and I guess did not pick up on the resume
>>>>>>>>>>>> part.
>>>>>>>>>>>>
>>>>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume
>>>>>>>>>>> can't start until i915 resume completes.
>>>>>>>>>> I'll dig into this in the next few days since I want to
>>>>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>>>>
>>>>>>>>>> If in the end conclusion will be that i915 resume indeed cannot
>>>>>>>>>> wait for GSC, then I think auto-blocking of queued up contexts
>>>>>>>>>> on media engines indeed sounds unavoidable. Otherwise, as you
>>>>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>>>> Even if we could implement a wait, I'm not sure we should. GSC
>>>>>>>>> resume and HuC reload takes ~300ms in most cases, I don't think
>>>>>>>>> we want to block within the i915 resume path for that long.
>>>>>>>> Yeah maybe not. But entertaining the idea that it is technically
>>>>>>>> possible to block - we could perhaps add uapi for userspace to
>>>>>>>> mark contexts which want HuC access. Then track if there are any
>>>>>>>> such contexts with outstanding submissions and only wait in
>>>>>>>> resume if there are. If that would end up significantly less code
>>>>>>>> on the i915 side to maintain is an open.
>>>>>>>>
>>>>>>>> What would be the end result from users point of view in case
>>>>>>>> where it suspended during video playback? The proposed solution
>>>>>>>> from this series sees the video stuck after resume. Maybe
>>>>>>>> compositor blocks as well since I am not sure how well they
>>>>>>>> handle one window not providing new data. Probably depends on
>> the
>>>>>>>> compositor.
>>>>>>>>
>>>>>>>> And then with a simpler solution definitely the whole resume
>>>>>>>> would be delayed by 300ms.
>>>>>>>>
>>>>>>>> With my ChromeOS hat the stalled media engines does sound like a
>>>>>>>> better solution. But with the maintainer hat I'd like all options
>>>>>>>> evaluated since there is attractiveness if a good enough solution
>>>>>>>> can be achieved with significantly less kernel code.
>>>>>>>>
>>>>>>>> You say 300ms is typical time for HuC load. How long it is on
>>>>>>>> other platforms? If much faster then why is it so slow here?
>>>>>>> The GSC itself has to come out of suspend before it can perform
>>>>>>> the load, which takes a few tens of ms I believe. AFAIU the GSC is
>>>>>>> also slower in processing the HuC load and auth compared to the
>>>>>>> legacy path. The GSC FW team gave a 250ms limit for the time the
>>>>>>> GSC FW needs from start of the resume flow to HuC load complete,
>>>>>>> so I bumped that to ~300ms to account for all other SW
>>>>>>> interactions, plus a bit of buffer. Note that a bit of the SW
>>>>>>> overhead is caused by the fact that we have 2 mei modules in play
>>>>>>> here: mei-gsc, which manages the GSC device itself (including
>>>>>>> resume), and mei-pxp, which owns the pxp messaging, including HuC
>>>>>>> load.
>>>>>> And how long on other platforms (not DG2) do you know? Presumably
>>>>>> there the wait is on the i915 resume path?
>>>>> I don't have "official" expected load times at hand, but looking at
>>>>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to
>>>>> load both GuC and HuC:
>>>>>
>>>>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC
>>>>> loads huc=no <6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware
>>>>> i915/dg1_guc_70.1.1.bin version 70.1 <6>[    8.158634] i915
>>>>> 0000:03:00.0: [drm] HuC firmware i915/dg1_huc_7.9.3.bin version 7.9
>>>>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication
>>>>> [i915]] GuC communication enabled <6>[    8.166111] i915
>>>>> 0000:03:00.0: [drm] HuC authenticated
>>>>>
>>>>> Note that we increase the GT frequency all the way to the max before
>>>>> starting the FW load, which speeds things up.
>>>>>
>>>>>>>>>> However, do we really need to lie in the getparam? How about
>>>>>>>>>> extend or add a new one to separate the loading vs loaded
>>>>>>>>>> states? Since userspace does not support DG2 HuC yet this
>>>>>>>>>> should be doable.
>>>>>>>>> I don't really have a preference here. The media team asked us
>>>>>>>>> to do it this way because they wouldn't have a use for the
>>>>>>>>> different "in progress" and "done" states. If they're ok with
>>>>>>>>> having separate flags that's fine by me.
>>>>>>>>> Tony, any feedback here?
>>>>>>>> We don't even have any docs in i915_drm.h in terms of what it
>> means:
>>>>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>>>>
>>>>>>>> Seems to be a boolean. Status false vs true? Could you add some
>>>>>>>> docs?
>>>>>>> There is documentation above intel_huc_check_status(), which is
>>>>>>> also updated in this series. I can move that to i915_drm.h.
>>>>>> That would be great, thanks.
>>>>>>
>>>>>> And with so rich return codes already documented and exposed via
>>>>>> uapi - would we really need to add anything new for DG2 apart for
>>>>>> userspace to know that if zero is returned (not a negative error
>>>>>> value) it should retry? I mean is there another negative error
>>>>>> missing which would prevent zero transitioning to one?
>>>>> I think if the auth fails we currently return 0, because the uc
>>>>> state in that case would be "TRANSFERRED", i.e. DMA complete but not
>>>>> fully enabled. I don't have anything against changing the FW state
>>>>> to "ERROR" in this scenario and leave the 0 to mean "not done yet",
>>>>> but I'd prefer the media team to comment on their needs for this
>>>>> IOCTL before committing to anything.
>>>>
>>>> Currently media doesn't differentiate "delayed loading is in
>>>> progress" with "HuC is authenticated and running". If the HuC
>>>> authentication eventually fails, the user needs to check the debugfs
>>>> to know the reason. IMHO, it's not a big problem as this is what we
>>>> do even when the IOCTL returns non-zero values. + Carl to comment.
>>> (Side note - debugfs can be assumed to not exist so it is not
>>> interesting to users.)
>>>
>>> There isn't currently a "delayed loading is in progress" state, that's
>>> the discussion in this thread, if and how to add it.
>>>
>>> Getparam it currently documents these states:
>>>
>>>   -ENODEV if HuC is not present on this platform,
>>>   -EOPNOTSUPP if HuC firmware is disabled,
>>>   -ENOPKG if HuC firmware was not installed,
>>>   -ENOEXEC if HuC firmware is invalid or mismatched,
>>>   0 if HuC firmware is not running,
>>>   1 if HuC firmware is authenticated and running.
>>>
>>> This patch proposed to change this to:
>>>
>>>   1 if HuC firmware is authenticated and running or if delayed load is
>>> in progress,
>>>   0 if HuC firmware is not running and delayed load is not in progress
>>>
>>> Alternative idea is for DG2 (well in general) to add some more fine
>>> grained states, so that i915 does not have to use 1 for both running
>>> and loading. This may be adding a new error code for auth fails as
>>> Daniele mentioned. Then UMD can know that if 0 is returned and
>>> platform is DG2 it needs to query it again since it will transition to
>>> either 1 or error eventually. This would mean the non error states
>>> would be:
>>>
>>>   0 not running (aka loading)
>>>   1 running (and authenticated)
>>>
>>> @Daniele - one more thing - can you make sure in the series (if you
>>> haven't already) that if HuC status was in any error before suspend
>>> reload is not re-tried on resume? My thinking is that the error is
>>> likely to persist and we don't want to impose long delay on every
>>> resume afterwards. Makes sense to you?
>>>
>>> @Tony - one more question for the UMD. Or two.
>>>
>>> How prevalent is usage of HuC on DG2 depending on what codecs need it?
>>> Do you know in advance, before creating a GEM context, that HuC
>>> commands will be sent to the engine or this changes at runtime?
>> HuC is needed for all codecs while HW bit rate control (CBR, VBR) is in use.
>> It's also used by content protection. And UMD doesn't know if it will be used
>> later at context creation time.
>>
> from UMD perspective, We don’t care much on the normal initialization process
> because, I could not image that a system is boot up, and user select a crypted content
> to playback, and huc is still not ready.
> of course, We are  also ok to query the huc status twice, and wait if the status is "0 not running"
> to avoid potential issue.
>
> I suppose the main possible issue will happen in the hibernation/awake process, it is transparent to UMD.
> UMD will not call ioctrl  to query huc status in this process, and will continue to send command buffer to KMD.

I think there is an agreement that it is ok to return 0 to mark the load 
still in progress and 1 for load & auth complete. However, double 
checking the code it turns out that we currently return 0 on load 
failure, even if that's not particularly clear from the comment. I can 
easily change that to be an error code, but not sure if that's 
considered an API breakage considering it's not a well documented 
behavior. I believe that on pre-DG2 userspace considers 1 as ok and 
everything else as failure, so changing the ioctl to return an error 
code on failure and 0 for load pending (with the latter being a 
DG2-esclusive code for now) should be safe, but I'd like confirmation 
that I'm not breaking API before sending the relevant code.

Thanks,
Daniele

>
>> Thanks,
>>
>> Tony
>>
>>> Regards,
>>>
>>> Tvrtko

