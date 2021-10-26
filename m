Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9EE43B0BE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 13:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1497789D8E;
	Tue, 26 Oct 2021 11:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E1A89D8E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 11:05:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="209963828"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="209963828"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 04:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="578633817"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2021 04:05:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 04:05:27 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 04:05:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 26 Oct 2021 04:05:26 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 26 Oct 2021 04:05:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlvIkLvS9yKwkhyTFYROIlvMiiCOHifTiaeB18hPnqfpJ6Q2z1DPpvw4ErPdPhgnI/0e1aaozDMBJIqfXAFl314URyO7OGlFGcsfg1ZfbLhVzNIWDtbUWlLBnvIJ/VdyGFuj4/is6tAzOZjPlfZfYUym3dmdmle9b3xEvmBF+Dc1Ca7k18rnFL7lvk/SMJRwovlNd7nsNgWBAfFSynTfkQ+xs5ldv7R9Yvf3x71lgCnEDyLuOpLFcgfqQotfchLo2/UudTOj/Q8CM5E/YD9ibHjy7Qiscm6AIf5BOSCV6HLJCPEv3m7XApd3n4a5HSqU8gfE+TfgkM2GjA6kVBr2iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wZfPyIY3cFZQMtx/yx4OOr1MbU+s9DS5Odgh0tgjM98=;
 b=IlLHPWjHX31fV0AAiqVIImaA/JtAIIUkVOIts6CBBauvfroaFzIllmtxxBE1xK0O76y2iX46ryDt8D9L9RVcQUCkNF4Fd1/Ea33IFLb0FCywayof7YUyHKjT57IleSkI7EW+sVci6BQGIPtJmBxpbOxN2dSrZSiV4ArxNlknPq1vdZivuyGT9NqvoCuzATi33faciDj/M/pCszTrWPk9xucAaYy/PGi37RYlmVMkt2fcniImO3iJx18Q3E+BQa8ZU3TRB0snx1gRrYkmCUKKwFW7nPpHLO/gLVrgsArXeyCOnVaAXTNZQ2LzzjYUes/6FFh98/gGSrCRl1Uz6XoYRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wZfPyIY3cFZQMtx/yx4OOr1MbU+s9DS5Odgh0tgjM98=;
 b=BgWaSbJUN8Re8C6FU4DHHFW4y6lmmQgEPTf5DZ4ot4dQkd/re5azHyDpLDjLGEN+wEAVAZQPrEXHiFWvtZeJO5QcYh1zxYGlgFrSztLBXQQxfy47S+jMapk8t2YyOOrBYP3p7ybAEReJ3n/0ECPhBUGbz75yJq5e+f70JpCPsGo=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB2906.namprd11.prod.outlook.com (2603:10b6:5:6a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 11:05:24 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 11:05:24 +0000
Message-ID: <ef2554c7-9ddd-5bc4-a38b-e58d69f8b409@intel.com>
Date: Tue, 26 Oct 2021 16:35:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <imre.deak@intel.com>, <uma.shankar@intel.com>, <animesh.manna@intel.com>
References: <20211026053821.162028-1-ankit.k.nautiyal@intel.com>
 <87lf2gjk6n.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87lf2gjk6n.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR01CA0156.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::26) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.211.197) by
 BM1PR01CA0156.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:68::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.18 via Frontend Transport; Tue, 26 Oct 2021 11:05:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ad5a44e-f47d-4c86-df10-08d99870828a
X-MS-TrafficTypeDiagnostic: DM6PR11MB2906:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB2906F72F66399B080288AD69CE849@DM6PR11MB2906.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rr/LVq2DLCXKi+cMBFEZABkTjEstHmgTiU2FBjzCaqWIkcNfBVlBETu/ujkoq0oosHaJQITdQoAVdQVxVgQ7vpCEOqRK5LP+pi+54yrDAIeUZGa9qZB5xun2o7tDxpLIzLC8GhRusRDNBkZDUDBgGJEIb4YJIoUEwnVA8z1UGzEw2kWmln8KONB7T4iUU6hS7hjLeZe7MI1pHX4TxX7R8JeOCnz1EUMZrW0aYcqTQxtKjArI1gvqftmUNOeWKnOEkicUGdE835/kCtnfr+4AwwXocWxFbTGfVtFMVPAMP5xSJ/hLQorGDqtqsCWyNkq4Jln/89TnT3DdYAVs6MFQ8FZPknF6F6iUN+8Zk2EnywqQwFH93HAIJ+HOGZO4G5pqJysWIYU+6FWYJqk2xO1bTGiQ2tRWYi90nsSHU2+eIS80o4fU7VnptSmMpNYFe4NO1k1txKNq0AL+uVGL8Pbcy2I9hSS47D0ANEWV/3LRx3DyeLBMpj7qwdbKGEYyYNt55Yet2EHR72ySHpWikt3ZS48PeJg+KHO6oBuB4OACORjcZiHFIIcYoAkeXXOLueLVHdXzjFsPNI255dSI5Jlv+XdexdZJ/QGzhF03NWgw0pIZ0xH6QhbjslcnuHtX0/XCUgFzCJRGjK4iuvBNoFBEjyBsiR9or2wtIVD0+0e3W+cnUFlnNNseh4DhjBz9S2C5smipBNdkjLzoqtyrNWAD9YNhYNdHPj96sdw0bvQjvjTl1D26rIpn+ZqMEY/zxWnM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(16576012)(2616005)(83380400001)(26005)(31696002)(508600001)(956004)(4326008)(8936002)(2906002)(6486002)(6666004)(5660300002)(66556008)(86362001)(66946007)(186003)(82960400001)(66476007)(31686004)(38100700002)(316002)(1006002)(36756003)(55236004)(53546011)(16453003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mi9NMWJzQzJwRGJ5Y09mUkNrVDM1SGFvKytnd1BlN2RjK1BRdk5HS0NPSjRW?=
 =?utf-8?B?aGk3STJBb3ZaMW04aDdwVmduZEJmL0I5YmlXMktuOXI5L1FYRGh2TEYxWnpR?=
 =?utf-8?B?Ykx4ZjFmeUtJTnFGRDZGbytDQisrSFp4dGNsKzg2cCtldkJyOHhUNWtBMThP?=
 =?utf-8?B?KzI0YmdxdEQ4TzVQUzJhVnZJZDZ6dGx5bElha3VJZnlMRzNXVHNheVcvVUV1?=
 =?utf-8?B?RmJNUW1xaEFoS3RzQ1Y1dng4cGhvL3VvSitObUduLzFUeG5hU3BBOXh0VkZv?=
 =?utf-8?B?SUlBYU1CSko1UlBnVFJsMHBoZUpFWnl5SXBDaHNqKzJrSGVJSWhmdis3eU9W?=
 =?utf-8?B?OXhHc3haYzY0eXRIQTBBNDByTlMwSXdzaXhESEhQN2tEZzdFM3piazM4dmY5?=
 =?utf-8?B?WVFCdEE4b2NBaHlqM3FsOHJxMGRvK01ZNWlnOGEzZTV2ekM5aWMvN3VIY1d0?=
 =?utf-8?B?TXBzUWpzVS9yQnZKOG1aV2w0VTJmREwwTXhJNzV6QU5nTnBhc0ZyQzQxZ0Yx?=
 =?utf-8?B?VTMwR0xPU0xLUHREYXVOUXl4S2dGY2RqeTdSRlZselN5MDNDTDd5RUVhc1NF?=
 =?utf-8?B?VTJJaDZzbEg1T1NhcTZGZEJJZTk5Z3p5MWhhNjVOTytXRG1YZzRUTDZzY3lV?=
 =?utf-8?B?S3EwWVN6RFlJVlQrMWhGbERaNmNEQlRSTHYvZUJROWY0a3FReUZtVjNaZ29K?=
 =?utf-8?B?U1dOQThWWmt6aFBRMjdrYWVNdUg2aXZseU1tTVJ6dGhaSTZYb3dRSVlMMGZF?=
 =?utf-8?B?Uy81WlBKcm5BTHA5bzAwcDduY0hHZTRqNUtNbi9GOGZyR1N1dkdUeDRvM1hk?=
 =?utf-8?B?eWFvakpVU0RPK29sTTJYRmxDMllkZFE1SDIreVd5aThpcG5XalE2c211Um0r?=
 =?utf-8?B?QXl3QjI5Mm1xOEVvR3kreEI1Q3FRaWd4NldETnhUby9HSWtQK3JJcktKZDdu?=
 =?utf-8?B?YXJiOGlkWXR3N0Y0akZ5S0ptelJsZUVKVW55NGhHVDd5UGxlNHJTTVU5VDBs?=
 =?utf-8?B?aUR5RkhLN3dUV2tDSUJYM0wzUlMvaXF6ZjZFakNyZXJvL3o1cFVYZFYvSTJk?=
 =?utf-8?B?Vy9NN1pyeDhHV1JJQTQ4ZlNQWlVUVzQ4QzBwa1l0NysyWDlqS0xhNTJzTzAz?=
 =?utf-8?B?RkdVblI5RWdaS3kyMGJXbEVESy93TjdkcjBEK1ZFaXY5bUtidDl2RmY1MXZp?=
 =?utf-8?B?MG83Z0h3Yis2UkZCYWFPL2R6ODhUUnJMU2xGWFRna3ZCSmhXUDlERlJkSTY1?=
 =?utf-8?B?c2psUTBEbXV3ajkxY2UyaXBObWRGK0dNUHVWNWJsaWZtSTV4Q2JhWHhDTlNN?=
 =?utf-8?B?em1xMGZPSUl5RUZsdUw4QWJWZVZEdGFpODZzMUJlQVR3VzEvUXpscTFKMlRu?=
 =?utf-8?B?R0pmcytxK01FTHRTY3lOTWNMZEtDV1pVc0pXMlVLSDVFeWVvRnppbmc5MEpo?=
 =?utf-8?B?aXRmYkhoZDVaK3V2ZWRTQTFVVmRnREs0dGJFWkJScHRyKytNY1g3YTFTUmtm?=
 =?utf-8?B?WENseWVwM3VYM1dNRi9BVzBhWlgyQjh6U0dIcUIwQW4wZnFPbWd1RHFyTnlI?=
 =?utf-8?B?Z2I5eEg0Ym4vVGxHcmw0cUc1SllsalViUXpZd1NXclZ0ZkplMVNZV2RPT1Vz?=
 =?utf-8?B?Z2I0MzFSK0NBMFk2b3BielBFRHlJb1RTTmhLTWRNQlVCQzJFYVBjcXd3bDVP?=
 =?utf-8?B?b3VpZDJ2aDgvdGY2WmlFR3pQNDduRUVUQ0M1bTE1Y2xGbDhnVDVpWm42QTBa?=
 =?utf-8?B?am55M0NWMEVvZG41WklNaGM2UU5tUUdrK2tYUFd1TFNpQXdvSE1VVjl1QzVI?=
 =?utf-8?B?bFA0WTRQajBBYlJ1ZkhMVFJFUDZlOE1YMEZ5WnY3V0FIZXlrZ21GTEdTdGpM?=
 =?utf-8?B?d1lMSE9NSzRETjlwNzA1UW5PUGJrbWxPd2s0Q3BiR1dMbTRZWDY3ZDd5akpx?=
 =?utf-8?B?ZzUwck9pNTFrV3FnYWIyQ2I3RHNCMklUSW8vRHA4bnJ1QVAwTUhaUjBqc2gz?=
 =?utf-8?B?ZEh3UThldm9kTGNiQ1ZPQ3ZuTzNMU1d0NEc3VHpPZ1dzaUN2UFV3S2Juelpo?=
 =?utf-8?B?RHUxZm5GMklxamdtbjNKSG4wdGVuRk0ydGx1NVFUM2h5ZHg0VzVBUU1rTXdN?=
 =?utf-8?B?aGxTVm81c3FJWFNGc1VKaTR2SHgycW5IT2RxdG5keGhXT0Nwa1BLQzA4RkRq?=
 =?utf-8?B?cllybFdYcFd0bm9TWno0aDk5MVRIcWdEUlM5SlgydHZLRndxS29nY3dzOTRq?=
 =?utf-8?B?ZXlSODh2OUpYeGJSN3M5c2xleG93PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ad5a44e-f47d-4c86-df10-08d99870828a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2021 11:05:24.6690 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SVOPwEpYB8S0v9+Esaoc4+F8bkKYH32j5clJh4zVSVVtP7yBT13+I0/RZs7g51T2NT/VlbIoHZiauIoqezYwRgOl4JbG4aQEw0HnzLoboBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2906
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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


On 10/26/2021 1:23 PM, Jani Nikula wrote:
> On Tue, 26 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The low voltage sku check can be ignored as OEMs need to consider that
>> when designing the board and then put any limits in VBT.
>>
>> Same is now changed in Bspec pages.
>>
>> v2: Added debug print for combo PHY procmon reference values
>> to get voltage configuration of combo PHY ports. (Imre)
> Seems useful, but out of place in *this* patch.

Sent new patch for this, but just realized that have missed the comment 
below *face palm*.

Will update in-reply-to the new patch shortly.

Thanks & Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_combo_phy.c    |  4 +++
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 32 ++-----------------
>>   2 files changed, 7 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> index 634e8d449457..01ff86b3ff91 100644
>> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> @@ -112,6 +112,10 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
>>   
>>   	procmon = icl_get_procmon_ref_values(dev_priv, phy);
>>   
>> +	drm_dbg(&dev_priv->drm,
> drm_dbg_kms please.
>
> BR,
> Jani.
>
>> +		"Combo PHY %c PROCMON values : 0x%x, 0x%x, 0x%x\n",
>> +		phy_name(phy), procmon->dw1, procmon->dw9, procmon->dw10);
>> +
>>   	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
>>   			    (0xff << 16) | 0xff, procmon->dw1);
>>   	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f5dc2126d140..693d7e097295 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -385,23 +385,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>>   	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>   }
>>   
>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
>> -{
>> -	u32 voltage;
>> -
>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
>> -
>> -	return voltage == VOLTAGE_INFO_0_85V;
>> -}
>> -
>>   static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>   	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>   
>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -409,23 +399,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   
>>   static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>> -
>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>> -		return 540000;
>> -
>> -	return 810000;
>> -}
>> -
>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>> -{
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>> -
>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>> +	if (intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -468,7 +442,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>   			max_rate = dg2_max_source_rate(intel_dp);
>>   		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>   			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>> -			max_rate = dg1_max_source_rate(intel_dp);
>> +			max_rate = 810000;
>>   		else if (IS_JSL_EHL(dev_priv))
>>   			max_rate = ehl_max_source_rate(intel_dp);
>>   		else
