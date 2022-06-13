Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9FD549B39
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 20:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4CE10F5AE;
	Mon, 13 Jun 2022 18:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B9310F59D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 18:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655144059; x=1686680059;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H+nhQZaDEcfZd/NeZBw6AIDvDHugK4JfSy1K5virDp4=;
 b=c8+aEwZnwWTd213IiJqqMUsWJQBDWuKavnGBJA/wiGV7HrXotrAM0IhP
 6/WWPgmb9pPXB3c8SDDluQ/wNclrc1kl5GkAZhN+Ym4aHoBLHO1bITyPk
 Hx4kgHwrbsy5gzytWh3jeqCWht/F5qqqnelkhVBlOWgoWCse1azfTGxao
 eOWpI0sSlbJowFORJ7QuwF5UOkU5TCTnPGKrtoFwu0OIENmAWP05OlyVX
 /a0ud/vBmxIKtnKyiXT2mmgSvK7KhgdjxdSqlzp2EmVx/SqCPRIyVkojL
 Y+u88GgqryAb9oUuQJQbQ1LPWNI145qmYcaxzQSIZ0HkQAOltrMbd2fO4 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="303766741"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="303766741"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 11:14:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="557814282"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2022 11:14:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 11:14:04 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 11:14:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 11:14:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 11:14:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iNWKSf9PwiSt7d5QJ7kI7TueICMlh5/PMwbQqB4ejcqIfHNO/KTXnSU0W7OG2hJpG69I7KZAeKQZnJooECsa4s7QiSYTmD72d7X40Yk6mQkGDPPE2yv5jWYfKRsVkCNwIldp6G5fXq08POWe0msLnrP//gcg+jK1J0f5bnZAyCELhGj1kTob2yw6tVLU09DMPLdbrO9CCTX/DEBDFXC17tJUol6KcH8gwLp8zOlxP0eMAMFnQk/YcGkEgUmKYZiowKnQ/wHJXSDQ5fon7Xc1/UA47cH3812annYKmdReLXzdJgCaMDrZ4P8b+ZGtxToENQ5w8nYGTG1/W3lQc7JQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1nJ4l7QABNqo9OYPBOlhOwdHfIEbNBkvIfkr8wxMVGc=;
 b=ALOkmshW7IYZBDCOaa0wy9jtQAE37zAG0sHI7Mh5Rc6yr2dkB1yDmKApDnL9djkeakfvaHRu8tGenCbT1UqsemYNb/myz337SLkGvFVT8odao2CigfE/48q5q3h4EH7Mp06MFz5LCSS7M+/588NVi48D9jdjIDIJu45CuLxeMaLdmYmaToG94v/IyLS90nLNGvqkWlrByEv4cwjudUXIweetbCHs2mTSg5FLn3hbGKVfI68a8CrdG+AHsN17FrcOMeWZS94D5071ZqObV5Ns1uHSEFLxrkCU7mR9xB603HFYdBHvewmPNVkS2EYOuHX8juAVIrVQGpl3QJ4eVHmpgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3227.namprd11.prod.outlook.com (2603:10b6:5:5d::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Mon, 13 Jun 2022 18:14:02 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 18:14:02 +0000
Message-ID: <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
Date: Mon, 13 Jun 2022 11:13:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR13CA0018.namprd13.prod.outlook.com
 (2603:10b6:a03:180::31) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e306a425-9543-47f1-94e0-08da4d687e86
X-MS-TrafficTypeDiagnostic: DM6PR11MB3227:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB3227DE87E86CCC0F362CE3ADF4AB9@DM6PR11MB3227.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FU+IWNCBLt1qyiHwRPgsb1V1Epe9RR7BEAv7gXeJTkgyO3JwzogznhODBrwCiJkwuhcvgpW02/a41fZBJDnq3z53twHy5iwCq4/mqNmbwRVFPQXVgT4UQc2r0NO/3AR/I8cOyzFeO6naZpBUg0IJVtjgpOyNQLeXWLwuVwm6fNRsx1L0ha1rVhYxUvycyPCFHwIgGNt6raJD8CFKvaIH02xHv8b7VLgGV1OUj1SiKPuY/3e2aHP+5h5iNEYaeHuLJIBiXNUwT4ZL/XeaKng0z9+1+1se3BAjbKwg/rni/BgNL/3Z8nLEHhjNNv5acy4Yhm/ipypDYQ0K+fiQ0OfjrQ+5muPoarJd8IijRfUDrNoDs+cm2lv3DjthTiTmurGlaM1axB8dRrTDOsoWi2//jhgDDYzdG3cQP+vPJWPoZN4izi3/ZgGOJu7qXOkjiZvaor+EZy76S1whlWKJai1fDHftn2TsYXzJXjpwXP+DWkw8IuO+R2WUqIvPmfIafcrEv6OwwT+4Tnj/yIImIsJDyvFbOytY9dkSETZ0CXJLtQOvTUIE7VSlglxObXlc1zPaqUCMYwuT2O1Xiw4rXnqh8JC6euiIZNlXHaMFSCcM0qjOOO7XqXgA92oKg5Ja3Pql80ivVTrweUT3wA6lWK3OysY+6dOqpN/uoDMWB1Vl5DdfqqduZxO1Zmulcpqd3Qyx+2uWbWDGKEd7oW6lMvZ7338grmHkgRTkZXJekp3FTqhqee8P0V4QzwLjv/YcxL/9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66556008)(66476007)(8676002)(4326008)(6666004)(2906002)(66946007)(31686004)(6486002)(5660300002)(83380400001)(26005)(8936002)(508600001)(6512007)(6506007)(38100700002)(53546011)(31696002)(186003)(36756003)(86362001)(82960400001)(2616005)(316002)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THByTjYzTnZ1M3lhTk5RclowQjRyeHUxRk1WS1ppcEZCOU5rN0t4cElmNWRZ?=
 =?utf-8?B?RllKMXhHWUVuem15MEZMTWU4cHdnV0lHT3p4czRwVkU4WUtLNFV5Znh4REw5?=
 =?utf-8?B?Qk1VeFhjUlBOYVNOdTZWMWhXVWY1dmdrY1c2citDcW93MG1ENVgxQmhMTnZN?=
 =?utf-8?B?eWZ0ZERQSTZzVWNjUHJvT3RnSnF0VVJrQm9FSlpCNEsrU1dmOW00enhpNEw4?=
 =?utf-8?B?T01jZUkzbHcvQlMxaFRSZFlmMGpvZzdNNTNobGQ5dzh4eE5USTVLNVNBR0Nt?=
 =?utf-8?B?cU1PelRHaURxdnAwWTdFMm5ZRDZJK0hXL3FWWXZDeU44bVBGZktYT3pnWkEz?=
 =?utf-8?B?TmVSbHI1cmlJNEs1VEh2b2laZW15SWxUTm1nQ09oWDZ3VzNTbkd6cnBYbWsy?=
 =?utf-8?B?L2lrb2J5QTlRSEtiSEJFSmxOYXpEcVJVditRVm9HZDRoTTVDcE81OUE1TXc2?=
 =?utf-8?B?dzgxUkNpTEsrNXp2NDZXeDFSM2lOaFhKczJjMy9aNFNzVjdTbUJ4K1JYWHli?=
 =?utf-8?B?eDNnVG05MllneHJ3a2UvM2pyZ21UZndvVi92L3NsM2NwSGxaZ3RyTjE2Qmxj?=
 =?utf-8?B?RzdUemlVU3dLbU5IcHVQVVlHalJZTlBKN210dklna2NPNG9FZFY4K01yTHFZ?=
 =?utf-8?B?SVlvNUw0eGdsczlFQTZGc2JBdHgxYmNIUWEzWjdCZnVKS3ZpWU1BNUdPeXdx?=
 =?utf-8?B?bGttaE1vRjNQVG53dEI4TklWeDhJa3pXM0NxWHNmVGVLTFpOZkN3R29tVlBY?=
 =?utf-8?B?enhjQ0p0aEMvdG4ySGpsYWZSYmJpMTFQaEdyUVc5Rm1raS9xZUVBKzlTZmMw?=
 =?utf-8?B?OGxqZW9FbEpFT0V1Z2diVmg5cTlJcUxUUUowU3Q4MjZrZGV2ZEo3dVB2b2V6?=
 =?utf-8?B?RVdHdk53anZXeThqQ2REVVFFNGhYUTFOMkIybzlNMi8wTHFvR2NQdk9LMitW?=
 =?utf-8?B?TUFUcmp2Z2FHWWt6dDB5cUJxcURzalZmUWpqQmU0Y3ExSDBFajIvMVZKclZi?=
 =?utf-8?B?N1hSaTJMY25oSHU2NnBJVXJpU0VDU3V2NWdQVFl0WTgyeGVjV1lhOWQ5SmNB?=
 =?utf-8?B?VkkxcU9MeCs1QVJQbTRVSVVqTVl1aERsVllzdmFJR0hHa0ZKdEs4Z3dtazd2?=
 =?utf-8?B?ZHd0SjBqWU4zZ1VmaUdaa3ZjZEc1cDhSRjBPcWtLVWRPQlBCVEM4cG5ySWNt?=
 =?utf-8?B?aVcyUnFURS90Q1V4VnVHeUUrbUkxeEJDMTNBK1lqZnM4Z1A1R1NwVGhIdnpi?=
 =?utf-8?B?T2pvRkVRbjFib1FoOC9neGtqN3AvS2hYNG9VR1F0OFc4a1N3Wi94cmNDRUg2?=
 =?utf-8?B?TEZneXV4SHhBRGZ3VE9jUDlXanhmbnlybUgwWXptNFBLd1ByZ25FS1M2L0Ru?=
 =?utf-8?B?cENUSVo2THkrR0ZxQWwzRkdCVTFnajZ3SElSVTAwbVIrM1ZJc3VYY0t5QlVm?=
 =?utf-8?B?dDc0K2RxTElvVldsaFh4NXoyRjBEZDdJUmxUZ0hoUk5TcFB4SkVzZU9zRVk5?=
 =?utf-8?B?bGJoa3VNQlhBZ0U5VEtFb0RpRGErL0JrUEtlUlNabnNqR00yV2FNbGJSd0V4?=
 =?utf-8?B?L3BwbVFKekJ1OGVCNkd4YktIVFVsNS85aG9qZFh6THQ4M2o1eFRNNVl4YlBH?=
 =?utf-8?B?Z0xEcTJoaVp3Q1k5dWh1WktBamxzUEZjRzJ1UW5VWjNieDQ5czJCWi9RYmZn?=
 =?utf-8?B?S1VOb0NDdCsxSkl2aFlkakgxU3FndFNPMmJ3ZDlMc0FCRy8wYWNBQmdRcUdj?=
 =?utf-8?B?eHl4VDZjbUFFS1RFcFdKcWovczRzRk1FcXYwV3lWVW1ld3RBRVBiZmEwaHRI?=
 =?utf-8?B?YXdxbzg0ZlZxOGJXMHdPUUE1d0lId3QvMTBTTXl0MG52UjlPa3BjbDV5cko2?=
 =?utf-8?B?eUJURzNGWDk3VzRUTzlINGZNR3A3Q0FBZEhPVDk1SWQza2M0SGZPQ2U2SXk5?=
 =?utf-8?B?VGpUcUNVT0FCZk10WGhLQXN0MGZVRHJoNVQ2aEU0L2RJUFlLRW1iSS9uTUls?=
 =?utf-8?B?aTFtUFRVZlRNL1U4YnU0aWFwbW1ENVhDaWxxWHVSSEFHMDVCMCtIWW5nSXJI?=
 =?utf-8?B?YWZXZEU2dERwMmNuQ2tzdzJiWmNaYWJ1d0FxdXZnZ0tVSTRaN0R3SEdvUndM?=
 =?utf-8?B?RTVnVjhVUGpXQU1qVkx6dFNHMVpqbHh0M0doSDhVOFdDSkFXbjR6R3gvQ2to?=
 =?utf-8?B?Vy9ZbEFEbGVTcmZQcUJSK3htWGE1bUE5Y1NyZHlmOGhUQ0tSQXZYOEZNR1Rp?=
 =?utf-8?B?MlNTSmZTTWorejhkRHB6ODV6NWZNUStqWFcyVjltOEwrMEhpSm5GOHJNOWZm?=
 =?utf-8?B?a25ESXMyUGQ4OExkN0pGK3QyN091TncxZUE2WmIxS0w2dCtLKzhiRkRTRnI0?=
 =?utf-8?Q?nfpovHpLbcig00jTYU1xmwSj1fVK4IxlnPIKz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e306a425-9543-47f1-94e0-08da4d687e86
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 18:14:02.3541 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O4HxBGGQAWiptrfoBw4iR0n7HWoUhZMXGULslgrsn3tiw8hYuqIBvX8gboLtk3SBg/Fpg4iM88z6RDDEbhwdHHq43I7NSZd12TfcdYIZWR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3227
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>
>
> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>
>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP command. 
>>>>>>>> The load
>>>>>>>> operation itself is relatively simple (just send a message to 
>>>>>>>> the GSC
>>>>>>>> with the physical address of the HuC in LMEM), but there are 
>>>>>>>> timing
>>>>>>>> changes that requires special attention. In particular, to send 
>>>>>>>> a PXP
>>>>>>>> command we need to first export the GSC driver and then wait 
>>>>>>>> for the
>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC load 
>>>>>>>> will
>>>>>>>> complete after i915 load is complete. This means that there is 
>>>>>>>> a small
>>>>>>>> window of time after i915 is registered and before HuC is loaded
>>>>>>>> during which userspace could submit and/or checking the HuC 
>>>>>>>> load status,
>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>> loaded before
>>>>>>>> kernel init/resume completes).
>>>>>>>> We've consulted with the media team in regards to how to handle 
>>>>>>>> this and
>>>>>>>> they've asked us to do the following:
>>>>>>>>
>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load is 
>>>>>>>> still in
>>>>>>>> progress. The media driver uses the IOCTL as a way to check if 
>>>>>>>> HuC is
>>>>>>>> enabled and then includes a secondary check in the batches to 
>>>>>>>> get the
>>>>>>>> actual status, so doing it this way allows userspace to keep 
>>>>>>>> working
>>>>>>>> without changes.
>>>>>>>>
>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>> Stalls are
>>>>>>>> expected to be very rare (if any), due to the fact that HuC is 
>>>>>>>> usually
>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>
>>>>>>> Motivation to add these complications into i915 are not clear to 
>>>>>>> me here. I mean there is no HuC on DG2 _yet_ is the premise of 
>>>>>>> the series, right? So no backwards compatibility concerns. In 
>>>>>>> this case why jump through the hoops and not let userspace 
>>>>>>> handle all of this by just leaving the getparam return the true 
>>>>>>> status?
>>>>>>
>>>>>> The main areas impacted by the fact that we can't guarantee that 
>>>>>> HuC load is complete when i915 starts accepting submissions are 
>>>>>> boot and suspend/resume, with the latter being the main problem; 
>>>>>> GT reset is not a concern because HuC now survives it. A 
>>>>>> suspend/resume can be transparent to userspace and therefore the 
>>>>>> HuC status can temporarily flip from loaded to not without 
>>>>>> userspace knowledge, especially if we start going into deeper 
>>>>>> suspend states and start causing HuC resets when we go into 
>>>>>> runtime suspend. Note that this is different from what happens 
>>>>>> during GT reset for older platforms, because in that scenario we 
>>>>>> guarantee that HuC reload is complete before we restart the 
>>>>>> submission back-end, so userspace doesn't notice that the HuC 
>>>>>> status change. We had an internal discussion about this problem 
>>>>>> with both media and i915 archs and the conclusion was that the 
>>>>>> best option is for i915 to stall media submission while HuC 
>>>>>> (re-)load is in progress.
>>>>>
>>>>> Resume is potentialy a good reason - I did not pick up on that 
>>>>> from the cover letter. I read the statement about the unlikely and 
>>>>> small window where HuC is not loaded during kernel init/resume and 
>>>>> I guess did not pick up on the resume part.
>>>>>
>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>
>>>> GSC is an aux device exported by i915, so AFAIU GSC resume can't 
>>>> start until i915 resume completes.
>>>
>>> I'll dig into this in the next few days since I want to understand 
>>> how exactly it works. Or someone can help explain.
>>>
>>> If in the end conclusion will be that i915 resume indeed cannot wait 
>>> for GSC, then I think auto-blocking of queued up contexts on media 
>>> engines indeed sounds unavoidable. Otherwise, as you explained, user 
>>> experience post resume wouldn't be good.
>>
>> Even if we could implement a wait, I'm not sure we should. GSC resume 
>> and HuC reload takes ~300ms in most cases, I don't think we want to 
>> block within the i915 resume path for that long.
>
> Yeah maybe not. But entertaining the idea that it is technically 
> possible to block - we could perhaps add uapi for userspace to mark 
> contexts which want HuC access. Then track if there are any such 
> contexts with outstanding submissions and only wait in resume if there 
> are. If that would end up significantly less code on the i915 side to 
> maintain is an open.
>
> What would be the end result from users point of view in case where it 
> suspended during video playback? The proposed solution from this 
> series sees the video stuck after resume. Maybe compositor blocks as 
> well since I am not sure how well they handle one window not providing 
> new data. Probably depends on the compositor.
>
> And then with a simpler solution definitely the whole resume would be 
> delayed by 300ms.
>
> With my ChromeOS hat the stalled media engines does sound like a 
> better solution. But with the maintainer hat I'd like all options 
> evaluated since there is attractiveness if a good enough solution can 
> be achieved with significantly less kernel code.
>
> You say 300ms is typical time for HuC load. How long it is on other 
> platforms? If much faster then why is it so slow here?

The GSC itself has to come out of suspend before it can perform the 
load, which takes a few tens of ms I believe. AFAIU the GSC is also 
slower in processing the HuC load and auth compared to the legacy path. 
The GSC FW team gave a 250ms limit for the time the GSC FW needs from 
start of the resume flow to HuC load complete, so I bumped that to 
~300ms to account for all other SW interactions, plus a bit of buffer. 
Note that a bit of the SW overhead is caused by the fact that we have 2 
mei modules in play here: mei-gsc, which manages the GSC device itself 
(including resume), and mei-pxp, which owns the pxp messaging, including 
HuC load.

>
>>> However, do we really need to lie in the getparam? How about extend 
>>> or add a new one to separate the loading vs loaded states? Since 
>>> userspace does not support DG2 HuC yet this should be doable.
>>
>> I don't really have a preference here. The media team asked us to do 
>> it this way because they wouldn't have a use for the different "in 
>> progress" and "done" states. If they're ok with having separate flags 
>> that's fine by me.
>> Tony, any feedback here?
>
> We don't even have any docs in i915_drm.h in terms of what it means:
>
> #define I915_PARAM_HUC_STATUS         42
>
> Seems to be a boolean. Status false vs true? Could you add some docs?

There is documentation above intel_huc_check_status(), which is also 
updated in this series. I can move that to i915_drm.h.

Daniele

>
> Regards,
>
> Tvrtko
>
>>
>> Thanks,
>> Daniele
>>
>>>
>>>>> Will there be runtime suspend happening on the GSC device behind 
>>>>> i915's back, or i915 and GSC will always be able to transition the 
>>>>> states in tandem?
>>>>
>>>> They're always in sync. The GSC is part of the same HW PCI device 
>>>> as the rest of the GPU, so they change HW state together.
>>>
>>> Okay thanks, I wasn't sure if it is the same or separate device.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>

