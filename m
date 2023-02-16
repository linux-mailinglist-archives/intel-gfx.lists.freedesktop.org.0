Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A8C699E62
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 21:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A061010E37E;
	Thu, 16 Feb 2023 20:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A97E10E37E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 20:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676580974; x=1708116974;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QFNeJB66Ok1chLRdkQllVDaiz108jksET4H3N62RT8U=;
 b=NmrtmloKtqDgo7DoH1WWBBJY6xlV5JxiFI+aZyIp+NXeLW1eyoeCUNsE
 eCm9VaAh4LVYivG/WgajQSfbHvMzm+xfxuOSOtE9bxVhSi3cQXshcbVpq
 gHSJrmxYXdZ88Il7L1aLGHxZwbP6xasRM4kLsVT1rC3JiLYSLlPER6/FS
 ybqfXML50t7fBIEctVZSyk/uI1E6vJoXKHKW3XaTVVLeCCsOs90MWCev4
 IqSi/WUIgZ5fBlHNFS7S+mQB3qUwcjVaGcB2h234+6ycRXWDe8ulLMKUR
 mzlBAdWA32DpRfZlCYZ8100KZs2FM6gU+a4BMGc5IzEPeV8Uc7w3yrV6Y w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="315549118"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="315549118"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 12:56:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="738992498"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="738992498"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 16 Feb 2023 12:56:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 12:56:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 12:56:11 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 12:56:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKYYSQhFlpiizBnXZsxKKMeW2cU3l/7yTgunI8aatsw+Mo4S4qwOaMELQJQXMpViiZ5WwiKhJjrrbDDnCn4yhFtFfyI7UDlnPTkd44YtAa9vWy3bfSo0Mmrk5bIv14XUjvd4rWBh3ONL8i9gw6Gs+x4qI4o43m10dIVvLHHX8YyRk71PfdILf3v9xKnSe1ynkVz9UnHBspX0tuVt1LppOYJ3Iwu5lTuaQcdGlZ18zldvqfp1A5Lch6wKRZBq0r+HNO40oK2+U4x09nUMu9tQdXPhd+ilUm7gtDeYxWjbHSytA7aaU2ehCJFhN9etyxICb6f3smLKSOSra3nRMO4Azw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f8LAinJPB7dJajzVU057TyGPCaQc4COox5+cmBZZTIM=;
 b=LZ5h1KmfY6NJNQDZlnpdH/0+CC+7sgpgzDWthikv/pQtAm+PgBd8Si6iO+BoYKLjU/g9Y44Ki6a6hRyXYX8qVjd6l0/fWPWO45r2dYFcBRV506eRv4zl/6so1sp6FOPJq26z4ot56GMM3j2wF7C3eeQEzhY7SawvGl3pCRoG5Ob6Awg25dduowUK7hmsnldwYgirbnAuNKm+2jKFCJ/1cboEHOiSQV7YL8zGDrpJ0unBtoVHgtXMcBIVjUJEGNse2K9G1ll1dYd12iNUMda6Mj/up6oMT+ry1tdGZu2Uj27KZSoHn/lJl4mDzmv/JcVzJolH87lDh4VXV9WbnJBIZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Thu, 16 Feb
 2023 20:56:10 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 20:56:09 +0000
Date: Thu, 16 Feb 2023 12:55:59 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+6YXzhGWHZnqJT1@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-6-umesh.nerlige.ramappa@intel.com>
 <87lekx2895.fsf@intel.com> <87r0upmr4i.wl-ashutosh.dixit@intel.com>
 <87fsb5zdka.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87fsb5zdka.fsf@intel.com>
X-ClientProxiedBy: BY5PR13CA0017.namprd13.prod.outlook.com
 (2603:10b6:a03:180::30) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ0PR11MB8270:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f30cca4-6ac6-4a78-c14f-08db10603b11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 40bv2xPIJTOKqhpcZ+DsoDjy049x2VMsZIFouPG3Y2n0pMERSWe5xrqhNDxuBCuH+NaF2JxbAWU1w3JnQrGtOhFgQmSlTXGbu2II8FTei8cTbN0lHPPjoBBGsNskh1OvZO+fII8+jaDIwlZzt3IG9T2OlL+LNjPwBQqhxbioWh07ddUBs5B5ACwI6FsHwNT7A+jZbggLhdxx/hdKOXE1tOzNjGaKtqVZq/dUtk8yPeYGJqmES8PACVAh/ENzfs1xEivOn99fGQUmv66dTHIHZXqM8yuFckrriyLSjxn8C1fkgLlOPeztiyawK5QHOupBEbqrR312lanfBKWPXIcNxmmVE86EopA+lGCMe4dtoalJo2x7zDqHuHySuVqujqZegTNzYNgLduL25oi8f6cO/+V26kt8WRKCVZy75bGZKI5asuHAOCpekWb9CO583AHtQxKj6MkuswsopFUUNzqKaxeMP1S7afBIwJMUgVk3kJOaUpRrvSdN5pazPil8zS0qKM5ADYAmX3q5l6jZs9ZPRVW6K7eIZa1s0o4hon0IbaW3HMY8PML6QscfFSCTdfXFSu5t0EBtfHfA00F/KFdJ6iut2kUnSS5brhfvs0gRIVQQYZS3EGyM6mAEcQZJribIarj5pwDVhaVAQTvwrOO5+x5w8D5IulrPq2ZDAjClC+r6Ydc1xC0ibf1Kf1GortRq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(396003)(366004)(136003)(346002)(451199018)(186003)(6666004)(6506007)(6512007)(8936002)(26005)(478600001)(86362001)(41300700001)(83380400001)(5660300002)(82960400001)(2906002)(54906003)(6916009)(4326008)(66556008)(8676002)(66946007)(66476007)(6486002)(38100700002)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWNuUERJSXBUZDNsS3NGd0VPOWh6V210R0M1aHJZS3VsSWlrM2ZpU0xkNTFQ?=
 =?utf-8?B?eU4rZkIxdW9TL3JUVWVPUkI1L3owY1hPM3VxSEFlSFFHekkvRDB5MC91b3hX?=
 =?utf-8?B?WTczU3RhZzA2OXJLcUlKZVREMmhpaWcyT3RUSHVXR3dFVlp3aEExY2V2NzNM?=
 =?utf-8?B?bnEvUTlPTnp1Q1VWR3QyUFAvNzJHNjl5WUU3VGVUYUxGTHVMdTk5OVZWVTN2?=
 =?utf-8?B?V0ovUENYekJjQk10K1NGMCtnRVppdVhWYnFjMURJamNMTXZOQ1RSTXlPUm5G?=
 =?utf-8?B?aEdhc1NLSHVkMTBnUC9rTHpuV0VLMmR6R0pPZU9Ta1kwUmRmb3U2V2FyMzRr?=
 =?utf-8?B?VksyNHhGUHRObDBhWll6VzZuT0dYUzc1ay9yaVN4YlhmNHBqUmZNSGtJNDBw?=
 =?utf-8?B?VGlnRytocFppdjcxbzYvbFpiR0d6cS9LblVVRjBDRU9yYzU5NkNHd3dFT09M?=
 =?utf-8?B?YjBQd01vOTAzY2U4NWk2clhJL2w3elRBTG5IbmpaQ0s1aWJiaUtCMVA1VjFL?=
 =?utf-8?B?OVJlY2lrRDZCby9uRDRwZU9ITmQ3Q1ZWMVJJdFdkaWwxclZxaGZRTnZYSk0x?=
 =?utf-8?B?Zm1vUm96ZFlSOXZ1WUhGOTFJSm9LUUErQldwOGxXVTRKcFVVQzIrM256R01p?=
 =?utf-8?B?L3FZdVQ4dUwxenFIOUc1Y2JhTWdYS0lZUm5qVE9vNGlBT2lPYXZya21SeXg4?=
 =?utf-8?B?dVFRMTVWcVlaWHRhMlBrOTFya3RwYURXWHUvUzRLc2Y1MGNsTHhLZmlUR1U1?=
 =?utf-8?B?ZWw2L01MQy9pelZvSnU2UktXNDlSTExuSkRSSlFrTU5INU9PWGt2OXFIbkIv?=
 =?utf-8?B?b0tsV29kTUdsVUEwSmhTNTJodkVyOFMrMWRsZWlnNzM1dVEwN3lmajdMbmxp?=
 =?utf-8?B?VVBES0ZaMFQ3SUZKZnhNQ1BNd3hvdTE3eDRENUdlQk1xUHVuZlNYL3g2SVBh?=
 =?utf-8?B?OE9UT1NZTjJ6a0R0RmwxdGlaazVEWHNoQjVNdjVqUWNlc3lCK1hod2RIUHdn?=
 =?utf-8?B?S1hoVTB2T0ttemVPdjNWdnRDTng4bTA2QzViVlgwOGR2ZnFLRlkrczFHbHJm?=
 =?utf-8?B?UWNVUEhwbnZEQ2JWQ05YZWJNdm1IOEJnVHN1T0hQMVN3RkJ5M3lUQUxGUG5I?=
 =?utf-8?B?UjNSRHVLTFM1YnpyMVlxS25FT3NqMlNXdTdhamZyV2JJVDh1NHFyUFZYdVc2?=
 =?utf-8?B?MlFWYlJDdGJrbXBuWTBDWGdVajFQbE03Y293NWlscUlBSW9JUVBpdVNOdDlV?=
 =?utf-8?B?TE1ab0s2OXNPSGpnUU92dXdGS2JMc1pKcFRqaGdKaVV3WTVIUm1WNjNnK3hV?=
 =?utf-8?B?WkNDT1BlVHh0R3Vmb0h2RHNqbFMwSFdoRzUwVnlXOWh4M1FDRnZnNFA1OG1M?=
 =?utf-8?B?Ty9VMmwveE1zUXJpb20ySjJpMFpYQ0dvL1BJUFR3SlB5SnpsVVZteEFpS0ll?=
 =?utf-8?B?cVRJN1h2UFBVOUJOOCtOMTdqWVBaM29FU1dEcGFxdzkwaGo2ODNZemxycDh1?=
 =?utf-8?B?b3ZOZlJVUGpTcTNpOWVyZUJzOWw1ZjZqTGxBVFh0Sm5rb2NoTTRVc2xqVnNl?=
 =?utf-8?B?MmduWEJPSjZYZW1aR2ZXRC9ZU28zYThVK09kSi9nZ0xqWjE0aTFPOFYrZHpC?=
 =?utf-8?B?QmFXY1h0cjdTTzdCL0tBWWFiYVFyT0JKbG1DZlE3b291eURuNzV3a3hIOWhU?=
 =?utf-8?B?R3ByMTN2cmRvTmlmaTdyMFlabVhaR0hoeE1IWmp1cUxlWDZoVGxPMUVGWGVG?=
 =?utf-8?B?WDZlRmJDdFNONjRJRkttc244T0gwWHArcWo5aENKamJ5UG9vcC9NVGNYVzVX?=
 =?utf-8?B?NkNEbjc4aWpiL3hhUDdpS0ZMVmxwSHprTll5Z2xlNk5peXI3ZlZwYi9nRlh4?=
 =?utf-8?B?N2tOSGd5aXhuVVBwQW52Y2FaTjU1cURDL1c5ZXJ5ZXp2ZC84VXFrRGduRHdR?=
 =?utf-8?B?MHdva0xJTTNCbkFKeEMvVG9vM3dwUEJaaCtKQ1lOVU81bG9nMWdCczlHKzFS?=
 =?utf-8?B?OVU5ZDNSbTlQRGZiZEpIdHg0R0dKK2Z2QUJ1L2NGSUt2a1hBVUJWcjZtUzJ2?=
 =?utf-8?B?QmpkVlZDaWFuemNzaThOTzJNNno5eXA4N2Fwa3ZIWWdtQkZqaFZSdmVDMzVQ?=
 =?utf-8?B?SlFnZGhscUppdGQxdWZvR1NjWlNUVDc4a2MwRkRxRy9lUjB2Yk0rVnRiWXda?=
 =?utf-8?Q?407NNIxwHMjt11MtjjFbuhQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f30cca4-6ac6-4a78-c14f-08db10603b11
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 20:56:09.9012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zU5F7fRK0N9a8toc/XAzXCKrxemfauqeIBgv0zR2sfHE3aLxeazvCbeZpUtmz1maOkOU+iPV3+x+yqZlkvJH3zmP/l//K1YEb7zNgeuonjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8270
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/perf: Group engines into
 respective OA groups
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 08:10:29PM +0200, Jani Nikula wrote:
>On Thu, 16 Feb 2023, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
>> On Thu, 16 Feb 2023 02:51:34 -0800, Jani Nikula wrote:
>>>
>>> > +static int oa_init_gt(struct intel_gt *gt)
>>> > +{
>>> > +	u32 num_groups = __num_perf_groups_per_gt(gt);
>>> > +	struct intel_engine_cs *engine;
>>> > +	struct i915_perf_group *g;
>>> > +	intel_engine_mask_t tmp;
>>> > +
>>> > +	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
>>> > +	if (drm_WARN_ON(&gt->i915->drm, !g))
>>> > +		return -ENOMEM;
>>>
>>> No warnings or messages on -ENOMEM is standard policy.
>>
>> Hmm I think this is the only error for which this code is failing the
>> probe. So if we are not going to fail the probe, we should at least allow a
>> WARN_ON? Exception proves the rule?
>
>A whole lot of other things are going to go bonkers on -ENOMEM, and
>getting that warn isn't going to help anyone...

Should I just add a debug message here instead of warn_ON?

>
>Maybe we do need to fail probe on this after all, but it just seemed
>pointless at the time it was introduced a few patches earlier.

Sorry about that, I will fix the order of patches.

Umesh
>
>BR,
>Jani.
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
