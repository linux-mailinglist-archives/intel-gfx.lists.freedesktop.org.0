Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66267A24D2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579F110E659;
	Fri, 15 Sep 2023 17:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBB810E659
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 17:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694799050; x=1726335050;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uNyHj9UPpv25SnAK7ANIsdGY38R+RZgY+eYFab2+Cu0=;
 b=KEAiZWrZd9x/9tr8COPtAuiyvhm2dTKi31Xn0yrcDJnHA2ArvbZXXFRn
 HuGZSSYx34KHstOFBfDJMrLgsYAMdmxICKrFU6rFeL8+gs1J1AEPuacYC
 rWtJIqp/iCNEwQRlmyYekfO/kq+Rv8C35cNUBLtXLuUAF/uKKkL6+gKCN
 xpkE7NTKatKZRUBElAmQ/B55IPRP9ortnpvWYI6jmbRn9AxukvheCsO1p
 afqBjUeCGT+PJqVuKiFInZrfV7lAMUDpgiFeFmNgumT47o/Qr+pU11ZP4
 lMsdiE56dU/NbMz8ht4ksQhsQmkT51/I6DzkxznToCEhwyQk39gZ6AhgU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="465663122"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="465663122"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:30:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="918721883"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="918721883"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 10:30:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:30:49 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:30:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 10:30:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 10:30:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W+UKt28LLu4gxy337/Y3cGrsF/BWUG2QKgLAp8lsmjZlpDNdbi57YXTyS4YP11b7euWNdNOggkZLzRJMxFUCRWmytU9XIZ7y15LC0kCXjv5rlm0FCvEGoJSFjh+g5KScBYEeDcwFLdnQHZnp/4D1kA4FIdR8t6O3svKHYzq4Ln8+fGpb1Ww7GgaWOKmQzt9KLF5F40dT33dyP8HF79zLekK1Wv/qeEJlhZZuK5MaYZNI8DVaS/hDuyPb5VUN+6hFFqvQb1en8vftkAp/ldHIlm7CfYDqA0VvE1LG0eme7L3OEaH4O9bmpSm4STjL3ExqA6Skw/opPACFEShas2wNaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ol4NLhaRVOx84N84CFXeAnjUBMBSLF8heUhxpW8cxg=;
 b=YhjlS+5txir++LRen7hlYDLdyfKJ5CTvdspwYpCM8+f7qu9wuhZZc3XL7kgmbfHZwDhTxQEFQHgzUPMPXr7CmNd0yQBIuoMPnx85od11heCr6g6qp9kgIJM2VvCWst61uGLNcUqCn8mRonNHT0uwPagKHJ9HLebitbOiLq7okLXDVkEEKLnCH66NNfzGiKrKuDD3a8qttAcZK7JpyjqeLDqpqNYJuObT/oXdKHpu77Dqy0SaHbw+JbcvUKPt/XWisu0+JtCuEdm/4tJ9k/I9QrBECR0JIsF3dde54VU5WUNenxxqMzSFJq2KG7/a6C5twT8fxkNj1ZXKQSiuDKBatA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3398.namprd11.prod.outlook.com (2603:10b6:a03:19::19)
 by BL1PR11MB5543.namprd11.prod.outlook.com (2603:10b6:208:317::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.22; Fri, 15 Sep
 2023 17:30:46 +0000
Received: from BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359]) by BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359%4]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 17:30:46 +0000
Message-ID: <fdce464e-0fdc-487d-e71a-6cc9373cb22e@intel.com>
Date: Fri, 15 Sep 2023 10:30:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
From: "Balasubrawmanian, Vivaik" <vivaik.balasubrawmanian@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
 <a28eca84-3a55-0e00-6287-48a24de28b94@intel.com>
In-Reply-To: <a28eca84-3a55-0e00-6287-48a24de28b94@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0049.namprd11.prod.outlook.com
 (2603:10b6:a03:80::26) To BYAPR11MB3398.namprd11.prod.outlook.com
 (2603:10b6:a03:19::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3398:EE_|BL1PR11MB5543:EE_
X-MS-Office365-Filtering-Correlation-Id: 6334c95d-8c70-4edc-3736-08dbb6117ed9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QG6ierNQbyUtuNKU+rXQAyPDy9+h5VI1CUdXmfSTbPuBYUNaN6n4mkCp7MazHne1edYs0mVcQk0Gb+CcM13nAvGv5GWJatuysdCEAuPzXGDErOrM0DTgEym3IIJL+KQhzv2ENQPFpvBKHhdBWKOmQAwHn211nK2OHhjv5tJ7iTiSmEpELFOgju9K7n+3dZv2p3CqOIuiOS4KY6XxdgwXd+gNXZj0luZkMSdJonn9vN7O61ZMHpdVLTJrGgYq0c0xcPhbsXuJjeODSS4S6VIXN1Qpeddg7Le9o47PdfoVKvy5hJIQZroNkSgBBFAcof/tY+aEr8x/9Kj6cGasTefxaIegG2Icb8lmw6er04PCmc9WTbUzOF9CWY6v9IUj+fzsdOLAB8WUKtutxyDYTJQgBr9EvGSWLMt/fdGeoNQNzGPYHvBPUl+V+IlD8gg1dm3BHDAEZMKDCkdCaM2rB4z1uzZb2LOEyIeQR1+ZFoFlJPe+t7mF9Rw1ZHK+QUXbx/xHdAhwmZzFy+VWn+FMSUIE/TFPNOjkkbFy/9HlScEV4boK0Giv890aoH/QRwAg7ZGjW8bdQLGWOAltUACOmZb43jC70tuip5PqGQ2BPMXUbeyb4wMr36gIPNuVUKkHOOecLvPJPLlk3+RKNfKs1ZG/JA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3398.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(396003)(376002)(136003)(1800799009)(451199024)(186009)(6506007)(53546011)(6486002)(6512007)(478600001)(83380400001)(26005)(2616005)(2906002)(66946007)(66476007)(66556008)(316002)(6916009)(5660300002)(41300700001)(8676002)(8936002)(36756003)(86362001)(82960400001)(31696002)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWdiRHBtbjRLVGFiNkdjZmlVdldvcWl3TGpOUkRZSFF4RDR3aW9Sb2FKclor?=
 =?utf-8?B?VDhlUmVPb2R4ankxYVgraUN6cjZOdXhKRnd3QlphMzdVaUxvY1N3L1hUTERZ?=
 =?utf-8?B?UXh5WnBDODN6TVQzWndkQ1VDbGlaeXdXWTA3ZGUvdkpiNlF2dkZIYWRkY0lr?=
 =?utf-8?B?TC9IU1RJcGtjZmNNZWt4NFYvbmlUclNkbDYyY0kxQ3dJUk9DWFBZc1pveW5X?=
 =?utf-8?B?dFRxdlRmWmx5dW8wS0tabUQvSDQvaVpVQm8rZnp6a1BHTGYyZ3I2ZUU1d1NB?=
 =?utf-8?B?Q2R4eENud0luRFdCcXd0ZG9FeXRXSTA5cTJjcHZqVmVMUGRQRzNSRWtleXFB?=
 =?utf-8?B?OVRRRXIralFqUmFScUFCK2hwKzFNSHlCbGxQVjA3QStRcnprYll1eTdOVzBW?=
 =?utf-8?B?ejFrcHJUN1ppaEhvbkpYZnRqU0tjVzFSM3N2SENmL2crZWh0eStjciszWFBy?=
 =?utf-8?B?ejZXdDc4VElkaUtFeUFJdTFnYUtESHNXRUkySFVsTlJSZnd5dVpuTnJKMTg1?=
 =?utf-8?B?d29tczlSQnJtY3VWcUhUd2JTTHNpeFoxMjJLTkM4ZEVtVHBFQ2VEOFlla1k4?=
 =?utf-8?B?bGZRdmJ4U3ZjUWVMSHA0QUI2dysrWldpZld5RTkxVU9Cbkx1eWtSYk1FZGxl?=
 =?utf-8?B?Y2pqZFBpYUZscU5zdzlZL0M1K2Q2TGlHeVQxQW5Cd3hsUmhQS1lXYjNRZTY0?=
 =?utf-8?B?d0JYcm9xSE5jMUxnbnhCamNhOVRrRlIxaWhWc0ViU2ZSQVhTNkFZcTNaZCti?=
 =?utf-8?B?akpSUDFVQ3Y5MXRtRVZWTG4vQnY3all5ai9tZ2pYM0orOVE5NmZFSEpCYzll?=
 =?utf-8?B?MTBxbzVoV0hJVnVTVUtmZU5SVmtZaU96MnJBUTJ1VUxGa3ZabTRFZS85UVkx?=
 =?utf-8?B?N1MrVm5oVFRDSngxYmdVREVlTHhxdTlwWVY5SWcvbmdxbUNnRTVXWEZHRThy?=
 =?utf-8?B?Q1Zoa3VLaTBiT3NVNDNGZUZPQ0w0d01zd0hNclQwQkdUWUtIQkc0cm12Mllx?=
 =?utf-8?B?QTZxektzUExMcFNxRkQ5TkNOYTNYeGFOYzlaMGVZYitNRS9NN3RYYlkxMlNr?=
 =?utf-8?B?Y2kxSDlSWkc3SVdsYzh1bWI1TzVmeVNSR0plQnFjc0RtTCtXWDNvSlB5czJh?=
 =?utf-8?B?bVdrV3B1Y29ibXhWVDlpcDhiZGlWTGo3VFZjM1hrZTVreXJZdmZQUFR4ZjZN?=
 =?utf-8?B?SVVvUzBHTlJmTXpmTTU0TUhmaFljQldDM3g1MXJacE51NG1Id3QyR3kwa0E5?=
 =?utf-8?B?MXZTcDEzTXNSVExNMFgyMGg5UEx0NU4wLzVmQ0h1OFR3a20zQUlIbGdjNWM1?=
 =?utf-8?B?dnZqc3M5VHl5eURxUXIzdFNCRFpONWx2VnBGVUx1SURFOU1na25kYkI1cUpO?=
 =?utf-8?B?clphV0k3d2ErRnJHaW05RjQxekpzZkFMOTR1OWJsc0JERDRYeU54aVB3bHFo?=
 =?utf-8?B?SjliSWJDVUgxTVdwQko0Um1MOEgrLzk1aXNKVVR4ZWs4TjdnSHE3Sk9tdW1U?=
 =?utf-8?B?MmhIcGVpUzl1cVQ2alcyQ0xmTnI4MjFZelI2SDdEQWp1a25KOEUyeFZ6Z1Zw?=
 =?utf-8?B?MWJiemRxRmdqbDZEVVp6bElDQTNyY3FocktWQ2hrZXBwQzFETzRyekNBOU80?=
 =?utf-8?B?M3U2QklpS1c5a1Job01EVTRSVXVnYXh1a3dIYllUZVJkSE9LSW9wVGhsZUlG?=
 =?utf-8?B?dm81Zi9WZ3p3SHNDSkx1TEUvTU5RZk1Ick43YjJqSElaTlpuUFJCY3YvZVJE?=
 =?utf-8?B?M0tBRE9SSXA1YlhCTlZlT3JaVWhwTkRmb2N1M0diMy9OZk1TZkV6OW02aTVn?=
 =?utf-8?B?MThPd2Z4bE9kdmRkYm5PTFhGK1hKczQ2Z2FkTXZSMEFaQzJqMk1ZbTduTkxQ?=
 =?utf-8?B?MWpkQ0NTTGR6ZUJZajg5Z3dacUFnd3pPYzRNTFN2NEhBakkreXFrWWwybEhY?=
 =?utf-8?B?ZFN3WHg2SjRRRTVQQm1OSU4xSENna28rYkdTV2tleGVqeElZblpKTVdQclVx?=
 =?utf-8?B?cXIxcDF5RDRQditKVStnOS9QaUwvdG9mSVp2NXREekxsT1gyazFDOVQ2V1BB?=
 =?utf-8?B?UTcrMjlva3g4blVhWXMwZW9vaU5OT25ubGZPbFJ3bDBwRGo5eCt2d1dEUUhq?=
 =?utf-8?B?YUhyUlpmM1hXM2FROTQ4aC9WaXlTN2pIOFhWUnVqMUZ6T3RzNDF1TjBndGh1?=
 =?utf-8?Q?W+dUwmVE7rNR3+wTZs1VTj8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6334c95d-8c70-4edc-3736-08dbb6117ed9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3398.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 17:30:46.2843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vb3KCOUWd7vPSybRCqh3rNTVbpCg+qnCosBE8PR/S0zrzw8MhXZN/Nz1OS6NobwGAPIqamZ/rFFgUBzAPxw/p+22l0EavLzguN3De8oBI5wyiUZNNsswaNsF5+YcWEJG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/pxp: Add drm_dbgs for
 critical PXP events.
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

On 9/14/2023 3:03 PM, Balasubrawmanian, Vivaik wrote:
> On 9/13/2023 3:57 PM, Alan Previn wrote:
>> Debugging PXP issues can't even begin without understanding precedding
>> sequence of events. Add drm_dbg into the most important PXP events.
>>
>>   v2 : - remove __func__ since drm_dbg covers that (Jani).
>>        - add timeout of the restart from front-end (Alan).
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c |  2 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 15 ++++++++++++---
>>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  4 ++--
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  6 +++++-
>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  1 +
>>   5 files changed, 22 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> index 5f138de3c14f..61216c4abaec 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> @@ -321,6 +321,7 @@ static int i915_gsc_proxy_component_bind(struct 
>> device *i915_kdev,
>>       mutex_lock(&gsc->proxy.mutex);
>>       gsc->proxy.component = data;
>>       gsc->proxy.component->mei_dev = mei_kdev;
>> +    gt_dbg(gt, "GSC proxy mei component bound\n");
>>       mutex_unlock(&gsc->proxy.mutex);
>>   <snip>
>
> Can we move the debug print to outside the mutex block?
>
> review complete conditional to the above fix.
>
> Reviewed-by: Balasubrawmanian, Vivaik 
> <vivaik.balasubrawmanian@intel.com> 
> <mailto:vivaik.balasubrawmanian@intel.com>
>
> <snip>
>
>> base-commit: 45460a37f9be43072b509ca6044b215648f56221
>
>

