Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C819F6EF93C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 19:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B6B10E9A7;
	Wed, 26 Apr 2023 17:23:21 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7E7892ED
 for <Intel-GFX@lists.freedesktop.org>; Wed, 26 Apr 2023 17:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682529799; x=1714065799;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+WAQ1CPfT+iHzykM3+0Np2kzLAGUFS9JdBnVm0KHtgg=;
 b=ABgwLZe4Ld7dZZTtPoIBaijyMVPduJ4d77HD4eoa4SeA6F8nfeaFq9D4
 O9r62Mw0213ID5eW1MYMSHkATohgJdc6DSHAtarsttTnD/Ber88QFptvB
 grB1kqzXigiUhexOtQo4or7wOMhi8wdc2gn+dl1fxG28rXTvwUYvRPEeD
 sr3B5DOKfhsCmmteFlYd84qXx8kBJkNS8+b2lbpH9ElL0wo1qPccB3e8A
 Fuo/qqxOslQNPc4LnUV0rlxeTLwYk/cDA4VB1mmu3VP80Hht4UiMaa3g3
 sfP/rFbExQ2AGzMovosNfjGoSzyikTlqpl7zUsxb9fN/x0/DA6/ZkQmYz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="349121347"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="349121347"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 10:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="783403090"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="783403090"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Apr 2023 10:23:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 10:23:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 10:23:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 10:23:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 10:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQbqnXmugq46D2GUVwvz+0KPfT+8rQlGmQLSEvMFs6l9xpDg9beE2s+i4ICFegJLngeJN+5ypbKHZZ3QBPXp4D9nZ2xwlFg7oIbTcU0SxaZUU+O1hWB+Me1ximM9LWr/W4S60HBmmTOvSbQ0qaocrSxadKfld99BZ6dXEAac1tazutoBnYKiMXg44Wn9NbdDlv5SDxpPl1vXJHGFHoahZ9Ni05sdTm8A5DArNZQa68H0gs7XLuhH9W/B6VBfxa5I6FoI3TrRy0wxWYwIrSaYk9TogmUcRGtCPidBpm+DdoB3JYw7UEm2RMzhB5mGLzH66hzxA3RWJ/RIADEPFzhVoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9iJs0tBETlysG6UQ+Ftlid+/FM8cSeeJsNS9VRBS0ew=;
 b=DRzG3pvsKEIJ+iU40Jmw02l2QRgGStacryWKjkETcBBdgIb54UdLsfOKyecQ/5Xfuf03BbkIepWGeR6TP5lN+MqGOVYOCkmYI0Dtw4rIgyvTWWmX75bsZiBq9QKJ0suauzcjqtjQG15TfKfuBkP8xegkQps+436810qVqKU20Zw+WWyloPQy8UA9l07AP2AbL2QNt7PosuE4gXuLNvNFZsBrC45I08KzaPIbeHJudQoZnS9HWkZQxbNPllq/3hyukQmIYTX20MM853Hf0T/JwEJwDL3xJEGtsbK44yACLr/0UDVDg5flIafns7I4mmMqM0DyzHvUMEoYNFEm7gbdZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CH3PR11MB8316.namprd11.prod.outlook.com (2603:10b6:610:17b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Wed, 26 Apr
 2023 17:23:14 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2687:6af2:e0ca:c1e3]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2687:6af2:e0ca:c1e3%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 17:23:14 +0000
Message-ID: <0f23e701-8d7d-2fc4-192d-4c0497587a24@intel.com>
Date: Wed, 26 Apr 2023 10:23:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
References: <20230406222617.790484-1-John.C.Harrison@Intel.com>
 <20230406222617.790484-2-John.C.Harrison@Intel.com>
 <97546a0ca475345fd18f8d80fafa5f7a11e34101.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <97546a0ca475345fd18f8d80fafa5f7a11e34101.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0156.namprd03.prod.outlook.com
 (2603:10b6:a03:338::11) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CH3PR11MB8316:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b61ea65-3028-4a32-1e85-08db467aeafb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G2BXR9FDDbLZnRhvZhTxlrnpaGJgP7EbqjM152qWmQlSJLbKCgRxYSdTyZgIFwqKeZjDskrWXIc1Ik4kRuaqDGqjwYll38i2l7ovxB1f+a8abfeWrPhxgXNnzkcF7UNqIghKLYxAEXCOqwOiNcGUtY5ypvzePc81BnCclJHOwBHLSDrDCvT4VAu7pqYcV9kuLsrW9pU1scFpLxj/fkKplleq6Dl4hjy2cuaqAksc2JHxormBDYrhgcBJ5+5VSZqrGUZbKF/CnnIJYUNg3J9O5YVpkMvL0DmSRDuAUJVZlO9R+4JpJ5FscsJgSs+KAFVAi1e+4ZAkh1vsuEZLtM81vzH5whr37WYhtKtP4j0HxNzhcUiRMqtVCH9tv9TgGUP+eOjn4CAOhG+15xG5XdWMqTm0oGzyCvlK9Ta11+6EMbNcpxa79qrek5s8CWAv10ggLmBajfiYYrRDxK9uL8nDFNtMINz15rLJNFC2DhBXSmsE8HeES0aw4D3tXdE7dILlAONg48PcQbAUUQWpsa8Rngz0TQTR2cxjAZqa6ZfusEDSMv4Q1JUgEJb2guFKudvA8Pr4rXMmPAES/cTmrH+zLXqTQidx7DM4VxCX19ynJEGQSvtKq6kRES1W97Ajx3SrDk0AX66IsZ3nthFKNb7TpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(376002)(346002)(39860400002)(451199021)(31686004)(2906002)(86362001)(26005)(186003)(6506007)(6512007)(66556008)(110136005)(66946007)(66476007)(478600001)(6486002)(31696002)(38100700002)(53546011)(36756003)(2616005)(82960400001)(8936002)(316002)(41300700001)(8676002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFlxcWhOeUF3YkY4a2w4dmZUYUN0RGUySm1nbU9BZG5zNDVXaVZuSTlBY2xy?=
 =?utf-8?B?RHRWdVlmdXZwNzFORjIxYU5nYlNzN0pFUkYvUW1nSDdQVXJoUk9qcjd1SlJU?=
 =?utf-8?B?YXgyR1VxbExPUitXeDV2NjlUdmY5c3BTOWYvaDVUd0hCemExSmovQ3V0RmV4?=
 =?utf-8?B?a3NDY2RwNElwMXBlWlpPcFdGL3hTQiswRDdCWWNHRFBibC9Qclk5RlhqVnJO?=
 =?utf-8?B?Znd2NWJDWGVpb05rSkZGRjhMNnkwUy9jc2Q5cTV4SURxQjZOMEMxakxOM2c1?=
 =?utf-8?B?Njh5UjdEZmhpR2pCMU0yRXVXQVJDVXo1Y3lBeEJPblZuQjdJMk90bWR6T3FH?=
 =?utf-8?B?UHhXakYvbjJROFFod3VUWE5WWmI1QXdrTVNmZmw5QjgxV2VHL3MwVXE2SFZQ?=
 =?utf-8?B?QlJ5Y3lwak9ER1JPYjQ5eUZ5MjNseXE5RThXRUZrKzQ4V2l3L1Z2VjZmSncx?=
 =?utf-8?B?d0pnTlVwb1ZSaUVoWG1hMGMyb2UrQVh0Y0pZaENDMDUrYWNEdlBFKzdTZTJK?=
 =?utf-8?B?d3o5QTZWZlVPckJlb3BIdHBueUgyQnd3c1ZmVmZBL2xUNXJEL3pXSmRFM2h5?=
 =?utf-8?B?SXVDNENQQ2ZoQVdUMFkvcDQrN09TSi9xak5FeDkxK1NOL2UxZkQvZGY4SGdH?=
 =?utf-8?B?MHJsUVZLRDZwbzRIbVptR1FZV2d5M0RsTy92Q1prYUVNanJQZUR0VHRaMUJx?=
 =?utf-8?B?RlUreWFCOGJzQlpxdWNvRDE0eC91NGFna1NWSFdwUHNxcTlldEo0NG5seGZu?=
 =?utf-8?B?enNzQ3BvZGppZkFrODl2ZnNMTGhBVlBNYk0xY3Z5blJYZXd3bGRob3pyRXRp?=
 =?utf-8?B?SExuY21aNDcrRU9MenlmbVkvNm0yZ2hZbDR4MWgveXF6dlVwLzJjdmV5alRI?=
 =?utf-8?B?RHlNTDJmMHlldVQ2L21VaURqc2dlV0xXUmVNNmJNbjhMTjBRZzMxZ3libmNk?=
 =?utf-8?B?VG0rYndCalR2b3U3dHRwN0ZRSnZEZk1oRWRoVkR6YWVpcloxNUt5QUovbmhB?=
 =?utf-8?B?d3gyOXp5Y2ExVkRhSE00Y3JWTzQ1QlJNV2NNVDVJT0RkeUs0cmdvOCtyaXlp?=
 =?utf-8?B?ZEpKSDRsWnppQXdVamZlRVg0ZmZxY0dYWklldUF3b3VFbWJRd25aU0hNQWpu?=
 =?utf-8?B?RkoyREZWc0ZaNDFwOThsWUU0eEs2ZW9hcmZuNkQ1NG5MVXJ6N0RNb21XcXFX?=
 =?utf-8?B?dUpTSFNmLzZCQ3Z3Tmp4NEFEL3NPSms2U29LUDdRRkdqb0pJR2VZdTdKcFJY?=
 =?utf-8?B?bTZqNWsyaHRBYkMyN0JHbXZyR09CU0hKc1hYc0xGeVI4MlBocnZPMzhvenhC?=
 =?utf-8?B?bzVkcFJqTVNhSFQ4cStiTEs1WTgvQ2Q3cjRTbWxTRXZ5OFhWeFVMdkRDRytl?=
 =?utf-8?B?UWFOS0daNU8zUlR0a3NOTTBaVjFsZHFhWjBWYllyMTQyZTB2UkJ2MzJBMjFv?=
 =?utf-8?B?V3RYR2oyZjZXWTNHZnpPVzQ0anYwSldjaU5KWEdya1JvTDdyNXc3R0ZYMGp2?=
 =?utf-8?B?THlxMFhWWDlBVDVjZjdtQWp2b1FrM3IvSi8xaVJPSE5iYldhOFVyOFQ5eW1j?=
 =?utf-8?B?QzVZMldGOHRmS29WM0V1OXZ3blZIaEtNM0hWRG1YRHBMQTBZM2JRbWFrdzRB?=
 =?utf-8?B?RTBTWEZWM3BrNFV6Mml1TlVuakRFNndLWUkzYkdjRVZLMWhxN3NwSmFMQ3Zq?=
 =?utf-8?B?bEtMN1RURWgwdTBjdUFXbGhLU3NxN01BYU5nUUFDWitnUnJ0RzB2S0ZQbldk?=
 =?utf-8?B?bDFyMTFhV1IvS3lhMGFtT0Fza3o1Q3c1VGNaVjBlSEQwUDF6NnlodE5laTVl?=
 =?utf-8?B?OWJ0ZnFOZHdZOHdFbXUybU84RXhLend0VmpWa0lHWkhxL09ZdVZUNzJ4SnEv?=
 =?utf-8?B?a05aekU4alh3dEorM1R5ZWZtNGZmdkNRN2YrSFNTMmVRZlB5K2dHMFYvSEdI?=
 =?utf-8?B?S0pNcGR6UkxVS2ZUMDlnSFltUlUxWnhkNDVYMnVUNGxOSFdkRG40MFo4RDg1?=
 =?utf-8?B?WjhLL0lkY2VFZGZQMERsSHhGdlU2VTF3VkhLU1Z0U3JZZkZibVhWVVhuNjIy?=
 =?utf-8?B?cHlHOWxLbmlwOWRCMzNzeTlSWHVWWmF5ZDR0S0lia3pwcVpVUksrbCsxOEFL?=
 =?utf-8?B?enJmS3cvVWhZbUF4aEpEZW51VlNFTG9ybG5lZ0RUQTlwQXI3VE0zRXRhLzI1?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b61ea65-3028-4a32-1e85-08db467aeafb
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 17:23:14.6660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dU+ZoNqF9oW31ohl6/GZuXovsSFMij43U84viMxqrqSNHqsCkbgke8c5YG+osWG0CNZ8+DLADIKqEKgTI7fGRBQcQAOO29OWfvcSQczBXxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8316
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Don't capture Gen8 regs
 on Xe devices
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

On 4/25/2023 10:55, Teres Alexis, Alan Previn wrote:
> On Thu, 2023-04-06 at 15:26 -0700, Harrison, John C wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> A pair of pre-Xe registers were being included in the Xe capture list.
>> GuC was rejecting those as being invalid and logging errors about
>> them. So, stop doing it.
>>
> alan:snip
>>   #define COMMON_GEN9BASE_GLOBAL \
>> -	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
>> -	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }, \
>>   	{ ERROR_GEN6,               0,      0, "ERROR_GEN6" }, \
>>   	{ DONE_REG,                 0,      0, "DONE_REG" }, \
>>   	{ HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN" }
>>   
>> +#define GEN9_GLOBAL \
>> +	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
>> +	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }
>> +
>>   #define COMMON_GEN12BASE_GLOBAL \
>>   	{ GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0" }, \
>>   	{ GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1" }, \
>> @@ -142,6 +144,7 @@ static const struct __guc_mmio_reg_descr xe_lpd_gsc_inst_regs[] = {
>>   static const struct __guc_mmio_reg_descr default_global_regs[] = {
>>   	COMMON_BASE_GLOBAL,
>>   	COMMON_GEN9BASE_GLOBAL,
>> +	GEN9_GLOBAL,
>>   };
>>   
> alan: splitting out a couple registers from COMMON_GEN9BASE_GLOBAL into GEN9_GLOBAL
> doesn't seem to communicate the intent of fix for this patch. This is more of a naming,
> thing and i am not sure what counter-proposal will work well in terms of readibility.
> One idea: perhaps we rename "COMMON_GEN9BASE_GLOBAL" to "COMMON_GEN9PLUS_BASE_GLOBAL"
> and rename GEN9_GLOBAL to COMMON_GEN9LEGACY_GLOBAL. so we would have two gen9-global
> with a clear distinction in naming where one is "GEN9PLUS" and the other is "GEN9LEGACY".
>
> But since this is a list-naming thing, i am okay either above change... OR...
> keeping the same but with the condition of adding a comment under
> COMMON_GEN9BASE_GLOBAL and GEN9_GLOBAL names that explain the differences where one
> is gen9-legacy and the other is gen9-and-future that carries over to beyond Gen9.
> (side note: coding style wise, is it possible to add the comment right under the #define
> line as opposed to under the entire list?)
>
> (conditional) Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>
I'm not entirely sure what you are arguing here.

My reading of the original code is that COMMON_GENX_ means the registers 
were introduced on the named device but a are common to later devices. 
Whereas GENX_ means the registers are specific to that device alone. 
That seems a pretty straight forward and simple naming scheme to me.

John.

