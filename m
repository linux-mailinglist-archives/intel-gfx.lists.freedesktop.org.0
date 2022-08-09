Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD1358E3B5
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 01:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67BBDCAEA;
	Tue,  9 Aug 2022 23:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B85DCADD
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 23:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660087395; x=1691623395;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fQSapiN7yYF48d1xzmswazkYtsOJ5vlItIEV7mzK9l8=;
 b=DjUfR33nd1yUqxay0M9U9ZlW7bgNFsxsYaGQj0Ppu6hRC3pepg6qQBHt
 CIes2ZW3f/1OH+C+XnVcAdcPXPlhqsDZcjh6pt1qPO3jNHGta9z1W5nUx
 aAWTk7dkU8Hd/nZ03YGa1c++qlhQNr13dDxsrXgG8w2n/zrKIRSC86MvK
 b1bS/a3eYorkLokrulLtK/w2nkGQo4NAoef9qKiV+SeIMeZPTmF/rIQqv
 hCa++HkVt/41IMlqV1o3HAAc1Wxd2qq0YnT1hDZxdFtPSE13y+pm4hkGk
 ItIKqo10MVoUwlBQ0MBPrQ7sNaLt4oOkYlcLUvXSJFm6MFQwH7D1TdTPv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="277893420"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="277893420"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 16:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="747221887"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2022 16:23:13 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 16:23:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 16:23:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 16:23:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EuqNQCZ8aCkdfwV9ryDIIU7Sf6Nqbl63t0p+SMOjeY0maN0/aNkndKWGd5ZFHime7XNUfnHU0boXyYhfhDGOfjOVR0DUE6oOogXMhKNimNfqCP8HI2xCp3208xFkDvhUajnjf7dwROKSgbB6SqZGBJ40U+7XrNohL3PpD/+mSOqxQ7zW7ZyWGB65YOEK7gmsSYYjz3IP7qHo1vaGzSzVkPgpoCnr1K3AGAueaXf2WwEmbCwCnjYb1fSepphSRpq5Gsp4gNAQ6RWYBvz1qhAhBRUDTa6gkBSBvSwfKysMgkDDp6LXOegi8orBElGhvjHZlrzC2oX5imf26yOOoayOVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8mpducjylV4XY+nI1CfySkm1GSPMhnnKxyg8yD4B8cQ=;
 b=R08CtuPOH7ozM4oB3lCXTWdv2k1JDmTIuwYFGHWEBNxqhaqxU/JLLsHwJJi8qfz1kr4w+T5zvfbhhmssOZNm23GNllrIybvuQ7nODaifyer2/WMB6a+gMNGnkXqelv3gIkQWo4bUaAo2UitsWTt+Dj0CcXsQkkiMfXf6gPQ5pi7arFU1jgA8AOMyEfTh+LIwJ/AW8PXWZpsuSQs3+/oyH2O5l2MOACrcliv6m8/zlkcU/jJoEZNViLtK7vZ4oKyH5fZ9MtxcudqbL3CTV7s/gNPIUgJ9L8YJpvdednWqsgBzsduiwxtlIG0EhdRQhmqan6iHYDQ1sSuZzvxhFzljBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Tue, 9 Aug 2022 23:23:10 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%7]) with mapi id 15.20.5525.011; Tue, 9 Aug 2022
 23:23:10 +0000
Message-ID: <1268e30a-78fb-d988-ef1a-e059d2ddbada@intel.com>
Date: Tue, 9 Aug 2022 16:23:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Juston Li <justonli@google.com>
References: <20220809225700.2002634-1-justonli@google.com>
 <281b60de-017b-0b86-d35e-ee7bc619b1db@intel.com>
 <CAJD9tbxbcuz5U3Uu6bdoa=H_zRZCC2b6vrJH8O-dfNGC_S3SeQ@mail.gmail.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <CAJD9tbxbcuz5U3Uu6bdoa=H_zRZCC2b6vrJH8O-dfNGC_S3SeQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:40::41) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b84c26d-a0fa-4812-234d-08da7a5e1fb6
X-MS-TrafficTypeDiagnostic: CO1PR11MB5105:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZAIDElHFTAS3d2vzVAvNB8mOmzi+YpF1dbs16zs0pGuea8J/0y/RP52ln2PcN+wNqPAVTLQ41i5Ia3NqqlJrqmcRx4oq963FdOaxXwVAtj0H+uowvTe7GIabdlrfHah1zP8mEl5bHRr3Dq6jiP80idfO+RDgyniPOeZudydvHhvLfPfZQP2g1S+0lkZ2P4IKA2pXMpF+mW9Enu1KZuoddiBaRpfGsl6835TvQGHx7/zPNSfpYtZAXBw82BIdKWk1ks2B8Jr/SNr77Lk8AFgy5l/sVBVoIcA2F5G1++CNZujnzvWc0PhEzcZI7pJhpScLzB+TY8sL4VT1WwlfhVXO0ecl7kWS8jtfAxIuWLiOQp1Ygje82aWtcj98n/nXDlreMOVes6LwkqxcQGEgtMFbkZTSS2OaK0EeNqbam9+RmtgJVAMEpyxKD6dJHSnLY61JLe2KEnI8DnL+47cX9OGG/EgmUvXnx3lHtSvUv5vDVc2mg3mfrUeGvWqmuWJ7CBklW16c+joGSuoaCDFfCd01ljSN8A1SN1oOWqDQ686OqPa1VblhvTWz2aAOQkZ0nIFFFjm3oSuVjkzF5VJVAfJ63lPTv+JPvNrZoM8VYrvhiOfgykQ2b9lmwIGaPFpkC1+QT2tOEOibW3qEsf0/2zfUmyRH/zdhK2L6fsvRUBG8GGU3UQ9b1mm4islIa35Lvwh+8+BZgXXvdoDL+SnxzAHN0KujkDsOahu3rk1H39TDIFhO6KkolYLaMqSaJQmhznEREXvHki2Uc2zBbE39zVMM9uWm1J5D9QOlYEOm8WuAuexVBZic9oyikdJnke8z0Lszid3SRy2YQGjDfmgg5tjnSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(39860400002)(136003)(396003)(366004)(6512007)(6506007)(26005)(53546011)(36756003)(316002)(8676002)(41300700001)(82960400001)(31686004)(2906002)(4326008)(107886003)(2616005)(6486002)(38100700002)(66946007)(66556008)(66476007)(478600001)(6916009)(186003)(5660300002)(31696002)(86362001)(8936002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEtENkgxM0o5YkI2YTlsMzhqbnFickpuand6UHAzcHFEUlJ1YTYvWkN2cytM?=
 =?utf-8?B?N1I0aDQ1TzYwWS9nUFJrcjBreGxzTGFEMWRWUmkyYlkxUWk5T0FhbWJqTTBC?=
 =?utf-8?B?T0pDckl4TWRiRVp4K1RBdGluY2pYQUdMY0JmL2p1Y3hHOW13aEhkSEdyc3lz?=
 =?utf-8?B?elRXNVN0VG1Fd3orSDVTQ1l3d3g2YnFUNmhWUktWWURXQkZFeWIxRytJWU9r?=
 =?utf-8?B?VFZXa1FsdVFjUmFBRlBYWUJJeVJHaWZCelk0WjBnVmhKTUhDYUQ2aytnV1kx?=
 =?utf-8?B?enliS1JQaHhzRmVQZVpkQU9HWVBxR1RnaHBuUHIvYlE1ZTR1dzA0R21icHdC?=
 =?utf-8?B?d2pMdGdBZnU3eTVVc2hDRkJ4SHgrdEJHVWk5aGZPcml0Mmp3MHlIR040NzJz?=
 =?utf-8?B?SGVkZk1zMUNCT2lZL3ZaWEhMMCswdjZWOXdtQW5ZTUVVSEl0TFVQamRRdHpl?=
 =?utf-8?B?Qi9WaFVXeW5jVFFJN3Z1MHlyTGRmN1lhYTFkWVVKVVVvTktVa25qeTh3Q2NW?=
 =?utf-8?B?b2YzN001d294LzEzVzczempVcWVCNWlOdHozaURpTXp2bFJROW5OYks4aFFM?=
 =?utf-8?B?RXBhekFYNDRrVmJsZWJ2Tjl3MU5kcTRTVXpURVFRYyt3bGFOWGtra1Z5SHVF?=
 =?utf-8?B?UTczeEZyQVd1dzB1SFA0MWxKdXZJbUxMTGF1ZTBTSm83TXU1d0tGeTVac0Jp?=
 =?utf-8?B?bXFsOS94RDhSSVNLMDFMZFRNWGs1Wnc3TFppSU5aUy9LcXk4MGZvQy9FR2N5?=
 =?utf-8?B?bEdTTG9oQWpEdlJHeDdKOTNyZCtRTWFSNHJSVUJKa283ZlhOQTRhdzFuMis4?=
 =?utf-8?B?c3FpajRIc1lGUHBRNTlBdVIxdWJyeWN0RnNId044T0l0bE9mOWJBbVZKRmkv?=
 =?utf-8?B?N1Q3V3BsWjFTR0x3TG12U3pBTnFsYTM4ZzBYdWlHMEN2VUlDSVU3RDF3cmxz?=
 =?utf-8?B?RnVESDNKYzVLdmhVakg5R28xaXBCcEtZb2Z1ZHZhZHJxR1F4WEZmMGZKenBj?=
 =?utf-8?B?Wk5uMG1GNVhVaEhrdUV2Z0Z5R0lxMVRPTjE4STUrK1lzNUhjUXU1c2psWG5K?=
 =?utf-8?B?M1N5ODlwN0paUGN5KzNCb25YWStvTEt6eHd3VVdSdHduRElLSXhzN2ZPNDQx?=
 =?utf-8?B?eUZyNXdUY2N0UlVvMDJQNlFwZzgyN1R4U1g2ZlJIMi83Z1h6aVVvcUlmVlNI?=
 =?utf-8?B?ZmNJbmtIb2ZCazNDSE1MM1RmTDkwMm5XRDg3VjJlNS95K3JSdGF5Slk1OEox?=
 =?utf-8?B?YmVlc3hBeE5xTExueGJYQm1WTzM4aHZwcFU1UEIvL2NGS21hUDRsdnV4VjQ4?=
 =?utf-8?B?TTFob0dGcVdDQ1JJNzk5ZjdKOGNEaW5BenRSd1VjRXlLaGRwcjBBbHhqcG5N?=
 =?utf-8?B?WHhOVGJNdFhrN2ZNd2NKaHcxNFIrMnh3OThQNkJPZFlrdGpVeDF4NUZzdEMy?=
 =?utf-8?B?R09Sc3NEcGpISVZ4UWVZR09zZEZrYWE5bE1wVUMwQmlUaFRIR1d4M1hKM01T?=
 =?utf-8?B?QmdmTmp1OEVweXh6M1R0NTlrRlJueU9pYXhLbTQrVFdEWmthNHBSZWZDcjYy?=
 =?utf-8?B?UTNxU1NLdkt3VEJ3cVhBT08rVGQ4RkdIM05lQWNFL2NNMUxacUVIMDhqVFVW?=
 =?utf-8?B?Z2wxbk5PdGFkV2dhbjhGenh1cS9RcktPMXFaT3k5bHp6NmtNSmdOenBJMkp4?=
 =?utf-8?B?NmRDdzJYTEYyUmNjL25xRGZIQUNWS0NJOGVSNzdkNUUwSVpiZmFubEllaDMz?=
 =?utf-8?B?dzVXajcrcXpFMkI2OS9GODNyVFhScW01NjQ1K1hMT2hCaHNWOEZxdmVZMEdl?=
 =?utf-8?B?TzVmNTFHbFNWSlJ4cmxkdmY0a2N0d2k2aGNKbEQwaG1DMVFrK2RzeTE1VGxM?=
 =?utf-8?B?VXlqUXM0TkVKSXlJN3hqYlQ0YlhHR3pYejF6NVFFRHVseXRUN0VReDUzcXNR?=
 =?utf-8?B?UjE5aDRrRGc0QmNmYUxoOTJHTnhYbmRJUG5KN3Q4akhVQ3RadUVpdGRrQW93?=
 =?utf-8?B?TjZ3Q08wN3dOUmFmUldYQW5KT1QzekFsZ3doS05QL3FtbW9uSXYyVFRRWWRQ?=
 =?utf-8?B?dmhqdlBNbTFQRk9zY3YvNzNFTk53U0F3a2JnbWVpaEduRnhEd3NRZkRKeFo4?=
 =?utf-8?B?S21RaGU1eklxVm9aSklnRDl1ejhhTHJDM3NYZXc3VTF3WkEvK0tUeDM2VDZz?=
 =?utf-8?Q?4m+S0MqCLNW2YXelrKL+9LI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b84c26d-a0fa-4812-234d-08da7a5e1fb6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2022 23:23:10.5609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ugNFilYskJ4DpG9g5wV5ckYrg1iSZdzHraoeSe2zr1rQtpLgfGj0/6wd2Nuw76Pwd604zXRzoewMr/Zb9yCQMjs/47R5uR86CnI8Asd7dec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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
Cc: intel-gfx@lists.freedesktop.org, alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/9/2022 4:20 PM, Juston Li wrote:
> On Tue, Aug 9, 2022 at 4:10 PM Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com> wrote:
>>
>>
>> On 8/9/2022 3:57 PM, Juston Li wrote:
>>> pxp will not start correctly until after mei_pxp bind completes and
>>> intel_pxp_init_hw() is called.
>>>
>>> Signed-off-by: Juston Li <justonli@google.com>
>>> ---
>>>    drivers/gpu/drm/i915/pxp/intel_pxp.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> index 15311eaed848..3ef9e4e1870b 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> @@ -184,7 +184,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
>>>    {
>>>        int ret = 0;
>>>
>>> -     if (!intel_pxp_is_enabled(pxp))
>>> +     if (!intel_pxp_is_enabled(pxp) || !pxp->pxp_component_added)
>> pxp_component_added being true only indicates that we've called
>> component_add and not if the component is currently bound. For checking
>> the current state of the component you can look at the
>> pxp->pxp_component pointer, which is set/cleared on component
>> bind/unbind. Note that pxp_component has to be accessed under
>> pxp->tee_mutex.
>>
>> Are you actually seeing a scenario where the user manages to submit
>> before the bind is complete? the bind is async to i915, but I've always
>> seen it complete before control was given to the user to start submitting.
>>
>> Daniele
> Opps! I made a typo sending it out. Indeed when I tested it was with
> pxp->component_add.
> I did not have pxp->tee_mutex though so I'll add that too.
>
> We moved initialization earlier so it does try to call pxp_start() before mei
> finishes binding.

I'd also suggest to use a different error code if that is the case, so 
userspace can differentiate between !enabled and !ready and only retry 
in the latter case.

Daniele

>
> Thanks
> Juston
>
>>>                return -ENODEV;
>>>
>>>        mutex_lock(&pxp->arb_mutex);

