Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3584475FFDF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 21:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1512410E116;
	Mon, 24 Jul 2023 19:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C4510E116
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 19:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690227616; x=1721763616;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L2/dBKERXi8SRbaK1uk0plhrw+RMb1tGDvXjFVwVqrs=;
 b=Mfeblcfc1BLnh4HqRYuQ5r8wswhsTpYb7zOcs0a3kYVvUFfp/4Dfh9yO
 nvz91HHkjqZsMx3qBEG6wC7P3q4Bd1yzSGuOL0Wr2m02jWo1B5Lml515s
 2MYf/y6EypOxpkoVyPjOqhEGIsvE6YakP8T6bMTMCHhvpgaVycxsVEbc6
 i5M50XYym1ReaDbVPFE1D5PrlQGBWCcAb6vw46LcgvXV48XTMdc1UeSQN
 aHrpmVVHGem577rr+0lPr3j8cJ1rJ9hMaZ0IRuEubvQpKYDX9ZcidnoHt
 YssB6lcPS69Kjr2YkGfPirabG6Ur+K8T7fMPfvD0Sc5NCoewgYvlAv+Xx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="398446024"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="398446024"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 12:40:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="972389995"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="972389995"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2023 12:40:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 12:40:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 24 Jul 2023 12:40:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 24 Jul 2023 12:40:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=baU/c5Xifm7Tt6OFOgDjuSoDK7BmmIHIhyAR/eC7w8+yYp/+h0vQpUO6wuCViLRYQyam94MtLcD6iTSEApzoy8eL3UHbsVCmV3iKtFyJTZD9H4cF/qezzy1uJ3MNwbEV5Ta1JNNnsvXv8I6lDEV4VNAqVepOcCK84qd8srg/NZd2g+FUKsa+QkzR8bqZH0tt8tH+ttDFTmo0zDMrkMl0UnXGDnqm4YhtFluW6WIf1tH8QD5cjQ8qGriJZ9c61C3GS/y9bd0W/zZ2Q8A4cC8qVjmONpHFoiPpNkufTyS0bZtbXcqWuHnepGpJOGLH2ojk6uFeBFdo1KnGtZ7vMokGjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3mlVjSh2YCL9QVVfz6s1GgG6Ett62roCFWgAz/sDBY=;
 b=QtvFQo8AP73PIhvhRVTEDLwrjWg7KG17rZ8gLGGURHunvejuw0nCawnDhcrzezbyLRUUfPId4A+zyG/EOHJyPe9WEq0ccbXOBryc7uK3/WC84ac5hXWkC1NN1irfS/IYv5i4ymM6dZSofMzzkFdR+29aMZk9ekEzEzgvCfShydDtJcVjNyQK/xD1WeP1nioe3CvEh0f8f5uvqckLk+t7sLwf9YxJwladTD/+qKIhQmUDRUMqn6836FmXPSfMoUcvDDADlSRZmsFKCvITvTPemIEL5E2D9XqnV94bI45Iq48bb96oJl4ULpCZ7y4aJXR+xcMTTdMKd+E9gJpzXEwTgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Mon, 24 Jul
 2023 19:40:12 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::e290:81f2:3cc4:439a]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::e290:81f2:3cc4:439a%6]) with mapi id 15.20.6609.032; Mon, 24 Jul 2023
 19:40:12 +0000
Message-ID: <2179305d-d558-0d8a-8de8-771f4fe49df0@intel.com>
Date: Mon, 24 Jul 2023 12:40:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
 <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
 <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
 <6f981dd3-715a-6b7e-6c5d-d51610cddc88@linux.intel.com>
 <daeb0906-1b39-ebda-618f-dbce88f751bc@intel.com>
 <c1ebfb0f-f0d4-1204-750a-b169d4ddab54@linux.intel.com>
 <7db1b2b3-d496-1c70-a4bf-8ce08136fb10@intel.com>
 <b1e2ccdb-e79b-d584-031c-5d71e2f524f5@intel.com>
 <81e65fb5-813c-da53-dd12-909f18739ef2@linux.intel.com>
 <16fbe1d1-a9ee-6d80-9155-94643d760470@intel.com>
 <dffa8faf-7ee4-9f0e-2ce0-aea266724104@linux.intel.com>
 <5beeb696-d720-4d08-9644-a98402d34194@intel.com>
 <2d76238d-1cd5-09fe-3a7a-53c088560bde@linux.intel.com>
 <4059a0cd-cc3f-46a7-a1bf-bcbe74ac3d9f@intel.com>
 <a21ae2ef-07b3-199c-33b9-c1791aba393c@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <a21ae2ef-07b3-199c-33b9-c1791aba393c@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0150.namprd03.prod.outlook.com
 (2603:10b6:303:8c::35) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CH3PR11MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: 899ea98b-cecd-4353-6dab-08db8c7dcbeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UxWO6MNvfcwjNejLl4tnmQbbcUVU3jAGjOI787wNsj1Nnd990MD+ih2pDycieL7zBACz5SI67p5tPFIttJgnNOMA9mMCtswZO+xu//X2Grt0f4sVRdiEWZbmK9ANnTrXAX/7yGdOfUro6TIQzKJvgqwxkeqK2m4tDdNIDdchmQjsIGZhN2BEpYSOohYqZ/xE/H9NrOXEl7/8GQMHiHcsB6of4tFvYnFOeC871wz2+39oPh7BXyYvMIsSxv/JFr1DvWZViMX0bBsohqN3LFS9LuSPkDDMJJLIfvDrFwYuQegSnZjt9W05d1R5QGx29YuSv2pJNmy7bGvc5hdSdrpur3HY6G2O5q4geJf4/N6gSCBJLbOVKgxeWnGnNr6MBuvYRlrNbeW8dg35KmfyRuxCMYlNFqaP551jBR2HtufdfckPJxHXK+xG3K4ERsHA+hvi+Y0cqdft+8o2gICfYLpDAkNb9TKwqQ3nF5iaN2f9VsmTnZ2mlP2tLYRmSWYWsBqpzPrxs+UxnU7RZ0WH/DU91vjleXnSn4q17hc0BpZBKttN8bMlsg0EcgWITkRsfrJEliidspYK7ft7G3uwMKigjWXEsqHQmLNnKc4wicLjTHfBAqnN78OaEnDaOZhc/3M5QLR9p+uvxVfaXRJNbxq5953knxPJKb7qFZx47pqObh8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(39860400002)(346002)(396003)(376002)(451199021)(31686004)(6512007)(26005)(316002)(4326008)(41300700001)(6506007)(186003)(53546011)(54906003)(5660300002)(110136005)(6486002)(66556008)(8936002)(8676002)(66476007)(966005)(66946007)(15188445003)(478600001)(2616005)(15650500001)(83380400001)(2906002)(30864003)(38100700002)(82960400001)(86362001)(36756003)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVc3WHd5L3FkY1RiZTEvazNqWEZNMHNWSGFqNytNR0hVVndnLzJlc2t1eEEw?=
 =?utf-8?B?eDZYV3hVc1ArbWtqSUttd0Fid0ZpbDArOS9Bdmljbi93ZlVvTmhJa3RDUlZG?=
 =?utf-8?B?cE15UTdPRUI5alA4UGpNNDcwa2VKZDN1Y2hvakM4NnVibkJYWVVnY3hlaHNU?=
 =?utf-8?B?cVFQeEUzVnB1VXNuNTA0bkhlbklMZDNTeEk4QVJxZENoNnUvMXNLbVFrMUZG?=
 =?utf-8?B?djlPK1UyS3NyVUdkekdQRXZBV2hYTUgwK1hEVklTUm53eUMvTWVlK1IzeE5M?=
 =?utf-8?B?S2YzSXFydDZiUExDd0x0b1hjNEszanBGV2VHejhMZDRPRjlOWFdaZU5kS2sz?=
 =?utf-8?B?UnJLOXc4c3B2cWdQTG5EMGUwMGczRCtxQUFJZ2ZYY09aWFJXaEx1bStqUWJh?=
 =?utf-8?B?aG00MEVPa1paQ3R6cFZTaCtRQXBXK2RnVjNFdTNQRk9TejZjVitGTDd1UmNC?=
 =?utf-8?B?bno2ZU5vcmkyaExMTkFKb0dyMkxPWFRBbVVEdldIdWRLT0xWZTUwRVpWWHRn?=
 =?utf-8?B?Wjk5cUJuQ3ZBbmNNOWlFdUxjd3lGQ3NMZUFROFRIM2N4LytqdWgxK05TaWFJ?=
 =?utf-8?B?ajZpRHZnSURaU0FZaTBQdFJXSFJpNEhlRHdqd1dqeWhJV3JPYU5vUGlVOUQz?=
 =?utf-8?B?Mm5SalhWaXdMZ3hWaHFkK29lZnZRUVJxbEtjMVRRcm81ZC94SWR2QjBLSWRY?=
 =?utf-8?B?NHNmTFozUTF2alBvRmdVVitaYUd2MmlZdzVDK2VwbnBHQXJqbWhsSHBINnlP?=
 =?utf-8?B?c2lHUmt4Y04xSzl2NlVha3RmVi9BZVlHdlZSd1JZczJGc1M1SDd4N3hKVEw2?=
 =?utf-8?B?VlFkRVNEZGpOUFludHRhc3EzZnZpRjNHVGt0VHVqV0N2Q2hKRUhDT3cwam1Y?=
 =?utf-8?B?a0ZIMzdScTBXRUxWYWNtaW8xT0MyRE9NOTU0R0w1NWdHNXdYMlJldTZ2cHFR?=
 =?utf-8?B?QzBuMXVmVVFsamtBd0c5VVRqenkzMGlDZTE2cGNqTElqcmVka2ZPNUxOUkow?=
 =?utf-8?B?WlVzVU9TbzJLdEpTQ2ZzUkZSRWRJMzFrcEtZVURkcHFxelFBd2lYcEVBb1p3?=
 =?utf-8?B?K3BpbWZreDBoRDdDOWpNbXJadk1ScjR1OGcvcjI4b0hJZ3haZXNwOStiVjBC?=
 =?utf-8?B?MTRDSUwrTjNMYk1pOXpBQ2ZGZnZFSGt4aWxNSkpYSnZZRkRPUUdJOUVkZDAv?=
 =?utf-8?B?a2NEclBnZ0dma0FGY3hXL2trSzdtZmRkSWVJTGFLblBubis3czdaUkpPK0M5?=
 =?utf-8?B?bzJ4RHk4UTNOV1hkbjR1alJVTk1FZU9ERkNRWDY0Z3FGc25aeENxWEl1MmFl?=
 =?utf-8?B?bEtUS09iVjRwQldQUmxBdk5hczJzNXdoRnpKUHpuWHhLVWtsc1NmaGZVMWty?=
 =?utf-8?B?Ni9Ydy9LUllqcHE3NHMvY1dsRmMwZm1mS25jWndZcUo1WDhWMFJNKzdWcWJY?=
 =?utf-8?B?T3FVSUEyWFFBcllOSHpGWW41STZtcHZyZVdQMlIzNzlIY0V6a1VIcndjdC80?=
 =?utf-8?B?NU9ZTk1veEVkN3pjK1FOZ0xKUjNTSGUwZ0hNZ2F5WlNwelJoV09seTdJUmxZ?=
 =?utf-8?B?M1RvcnlwZWNobEtxeTNZNlo3em5mNllZOFJBQUxDYWNuZmFaRmJHR0w1cElp?=
 =?utf-8?B?QTJGNGdseWpCS1Z6SHlVK0hpbzEzMmNLU0wyK0dDNXcrWTVNL2NNVnlNQlRB?=
 =?utf-8?B?UXIwQmx1MEI5U1dRbzBzSnBDMlBXNld3R0lnWmhhTDF2bEFHaGxsN0pyazZE?=
 =?utf-8?B?ZjIrQWlWRkszR3BiQzNJZndkaG5yQVZVVmpWNVludHpiWHBNd1B4Ui9rbUZv?=
 =?utf-8?B?NDh4cVhKZEZ3RGptNnFnamR4ZU1USnVaVENiRUp5emh6VkJTNCttejZiODhu?=
 =?utf-8?B?NTVaTEt4MUtPRkl1OVpnMlJIVEFHTUU2Qzd3VHk4NTFSUkdoSGg1MTB0TzFo?=
 =?utf-8?B?L0RIc2ZNQkxCL1JHeFVGaDF2ZE91QnM3aGlWVzR3VjFrYTFUWVhzM3owcTlJ?=
 =?utf-8?B?Z3FlSHdxRTRJMWY3cnR0dkttVWVFQ2J2ZU1ZSTA4TElwbTAvYk8wNVRwV2Z2?=
 =?utf-8?B?bXczMFBzTFc4YWRYVS9SMlllMnVOOTlMSXRqSzI0ckVrdTVFZ25CVDg3YXdL?=
 =?utf-8?B?aSt6MVNqU3hHYkd1a3d1eVA3YVNCMG9NZThRNFo1VW5FRWQvS0JKb3hmL0NC?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 899ea98b-cecd-4353-6dab-08db8c7dcbeb
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 19:40:12.4655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e6tI7nwQVCd9GxKU+YGhtb4wr29EI0CgEYHrGLCdLKWeAz54plGPrLJgHo0bx512bAEuWsVB4GvHpXdP61CgFXAKKbJbOACsVy9b2aU8zPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: update request engine
 before removing virtual GuC engine
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/19/2023 05:43, Tvrtko Ursulin wrote:
> On 19/07/2023 11:41, Andrzej Hajda wrote:
>> On 18.07.2023 17:48, Tvrtko Ursulin wrote:
>>> On 17/07/2023 19:03, John Harrison wrote:
>>>> On 7/13/2023 05:11, Tvrtko Ursulin wrote:
>>>>> On 13/07/2023 12:09, Andrzej Hajda wrote:
>>>>>> Hi,
>>>>>>
>>>>>> On 13.07.2023 09:39, Tvrtko Ursulin wrote:
>>>>>>> On 12/07/2023 19:54, John Harrison wrote:
>>>>>>>> On 7/12/2023 09:27, Andrzej Hajda wrote:
>>>>>>>>> On 12.07.2023 14:35, Tvrtko Ursulin wrote:
>>>>>>>>>> On 12/07/2023 13:18, Andrzej Hajda wrote:
>>>>>>>>>>> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>>>>>>>>>>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>>>>>>>>>>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>>>>>>>>>>>> Hi Andrzej,
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 
>>>>>>>>>>>>>>> +++++++++++
>>>>>>>>>>>>>>>           1 file changed, 11 insertions(+)
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>          diff --git 
>>>>>>>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>>>>>>>>>>>          --- 
>>>>>>>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>>>>>>          +++ 
>>>>>>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>>>>>>          @@ -3461,6 +3461,8 @@ static void 
>>>>>>>>>>>>>>> guc_prio_fini(struct i915_request *rq, struct 
>>>>>>>>>>>>>>> intel_context *ce)
>>>>>>>>>>>>>>>           static void remove_from_context(struct 
>>>>>>>>>>>>>>> i915_request *rq)
>>>>>>>>>>>>>>>           {
>>>>>>>>>>>>>>>                  struct intel_context *ce = 
>>>>>>>>>>>>>>> request_to_scheduling_context(rq);
>>>>>>>>>>>>>>>          +       struct intel_engine_cs *engine;
>>>>>>>>>>>>>>>          +       intel_engine_mask_t tmp;
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> GEM_BUG_ON(intel_context_is_child(ce));
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>>>>>>>>>>>> remove_from_context(struct i915_request *rq)
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> atomic_dec(&ce->guc_id.ref);
>>>>>>>>>>>>>>> i915_request_notify_execute_cb_imm(rq);
>>>>>>>>>>>>>>>          +
>>>>>>>>>>>>>>>          +       /*
>>>>>>>>>>>>>>>          +        * GuC virtual engine can disappear 
>>>>>>>>>>>>>>> after this call, so let's assign
>>>>>>>>>>>>>>>          +        * something valid, as driver expects 
>>>>>>>>>>>>>>> this to be always valid pointer.
>>>>>>>>>>>>>>>          +        */
>>>>>>>>>>>>>>>          + for_each_engine_masked(engine, 
>>>>>>>>>>>>>>> rq->engine->gt, rq->execution_mask, tmp) {
>>>>>>>>>>>>>>>          +               rq->engine = engine;
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>      yes... here the context might lose the virtual 
>>>>>>>>>>>>>>> engine... I wonder
>>>>>>>>>>>>>>>      whether this is the rigth solution, though. Maybe 
>>>>>>>>>>>>>>> we should set
>>>>>>>>>>>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Setting NULL causes occasional null page de-reference in
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> i915_request_wait_timeout:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, 
>>>>>>>>>>>>>>> _THIS_IP_)
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> rq->engine after removing rq from context is (IMHO) used 
>>>>>>>>>>>>>>> as a set of aliases
>>>>>>>>>>>>>>> for gt and i915 (despite rq itself contains the alias to 
>>>>>>>>>>>>>>> i915).
>>>>>>>>>>>>>> without investigating further, but maybe that code is not 
>>>>>>>>>>>>>> even
>>>>>>>>>>>>>> supposed to be executed, at this point, if the request's 
>>>>>>>>>>>>>> assigned
>>>>>>>>>>>>>> virtual engine is removed.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Real tests show it is executed and the function 
>>>>>>>>>>>>> i915_request_wait_timeout is quite generic
>>>>>>>>>>>>> I guess it is quite typical use-case, the only question is 
>>>>>>>>>>>>> about timings - what happens earlier -
>>>>>>>>>>>>> finalization of i915_request_wait_timeout or context removal.
>>>>>>>>>>>>>
>>>>>>>>>>>>> The other point rq->engine is accessed after context 
>>>>>>>>>>>>> removal is i915_fence_release -
>>>>>>>>>>>>> there is long comment there regarding virtual context and 
>>>>>>>>>>>>> reuse retired rq.
>>>>>>>>>>>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" 
>>>>>>>>>>>>> is risky without this patch and KASAN complains clearly 
>>>>>>>>>>>>> about it:
>>>>>>>>>>>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer 
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert 
>>>>>>>>>>>> "drm/i915: Hold reference to intel_context over life of 
>>>>>>>>>>>> i915_request""), which was a partial revert of 1e98d8c52ed5 
>>>>>>>>>>>> ("drm/i915: Hold reference to intel_context over life of 
>>>>>>>>>>>> i915_request").
>>>>>>>>>>>>
>>>>>>>>>>>> Ie. if 1e98d8c52ed5 recognised the problem with 
>>>>>>>>>>>> disappearing rq->engine, then I am confused how 
>>>>>>>>>>>> bcb9aa45d5a0 left the rq->engine dereference in there after 
>>>>>>>>>>>> removing the extra reference.
>>>>>>>>>>>>
>>>>>>>>>>>> Could it be that the intel_engine_is_virtual check simply 
>>>>>>>>>>>> needs to be removed from i915_fence_release, restoring 
>>>>>>>>>>>> things to how they were before 1e98d8c52ed5? Could you try 
>>>>>>>>>>>> it out?
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> I have already tried something similar [1] and KASAN bugs 
>>>>>>>>>>> disappeared, or more precisely gem_exec_balance tests 
>>>>>>>>>>> passed. But I have been warned by Nirmoy guc virtual engines 
>>>>>>>>>>> can be created for only one real engine (ie. 
>>>>>>>>>>> is_power_of_2(rq->execution_mask) is true but rq->engine 
>>>>>>>>>>> points to virtual engine).
>>>>>>>>>>>
>>>>>>>>>>> [1]: https://patchwork.freedesktop.org/series/118879/
>>>>>>>>>>
>>>>>>>>>> Ugh.. Try involving media umd folks to see if they need a 
>>>>>>>>>> single engine virtual engine? Or we could always just not 
>>>>>>>>>> create it in the driver, I mean just use the physical one.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> In case there is single physical engine 
>>>>>>>>> intel_engine_create_virtual falls back to intel_context_create 
>>>>>>>>> (no virtual engine), but in case of parallel contexts there is 
>>>>>>>>> special KMD flag FORCE_VIRTUAL which enforces virtual engine 
>>>>>>>>> even for single physical engine. So it seems to be KMD concept.
>>>>>>>>>
>>>>>>>>> Anyway is it worth investigating how to make 
>>>>>>>>> "is_power_of_2(rq->execution_mask)" indication of dangling 
>>>>>>>>> engine pointer? It will not help in 1st case:
>>>>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>>>>>
>>>>>>>>>
>>>>>>>> There seems to be a fundamental problem here. Object 1 (rq) is 
>>>>>>>> holding a pointer to a reference counted and transient object 2 
>>>>>>>> (engine) but without taking a reference count for itself. That 
>>>>>>>> is a Bad Thing(tm).
>>>>>>
>>>>>> Engine is not ref counted (at least directly), hardware engines 
>>>>>> seems to be even persistent across whole life of i915.
>>>>>> I guess before introduction of virtual engines the assumption 
>>>>>> about validity of rq->engine was correct and developers used it 
>>>>>> to access rq->engine->gt, rq->engine->i915, etc
>>>>>> So the problems described here are probably leftovers of this 
>>>>>> change.
>>>>>> After virtual engines were introduced 
>>>>>> "is_power_of_2(rq->execution_mask)" was used to detect rq->engine 
>>>>>> is virtual.
>>>>>> And after adding parallel engines it does not seem to be valid 
>>>>>> check anymore.
>>>>>>
>>>>>>>> I'm not following the description in the revert patch as to why 
>>>>>>>> rq can't ref count the context/engine. Is there actually a 
>>>>>>>> recursive counting problem? Or is it just a lifetime issue 
>>>>>>>> caused by requests hanging around indefinitely because they are 
>>>>>>>> locked by a user process?
>>>>>>>>
>>>>>>>> Either way, jumping through convoluted hoops to ensure the code 
>>>>>>>> does not attempt to dereference a dangling pointer seems like 
>>>>>>>> the wrong fix. Removing the engine pointer when the request is 
>>>>>>>> completed and no longer dependent upon an engine (but before 
>>>>>>>> the engine can possibly be destroyed) seems like a much better 
>>>>>>>> solution. And then making the request handling code check for 
>>>>>>>> and cope with a null engine pointer. It sounds like the only 
>>>>>>>> problem there is the above mutex, but there is an alternate 
>>>>>>>> route to that? Although why a completed request would need 
>>>>>>>> access to a GT reset mutex seems confusing. If the request is 
>>>>>>>> done, then what connection does it still have to the GT?
>>>>>>>
>>>>>>> Agreed in principle but the question is how invasive would it be 
>>>>>>> to change the rules.
>>>>>>>
>>>>>>> With the latest info that the issue is really just the GuC 
>>>>>>> _parallel_ engine setup, and looking at the code, I wonder if we 
>>>>>>> couldn't just flag the rq->flags with "kernel context request". 
>>>>>>> The code in i915_fence_release claims the rq pool is only 
>>>>>>> relevant for those so it sounds it would be safe to skip 
>>>>>>> everything else based on that new flag.
>>>>>>>
>>>>>>> For the mutex_release path, presumable the bad deref is only 
>>>>>>> _after_ the wait, right? (Only once the request has been retired.)
>>>>>>>
>>>>>>> In which case caching the gt pointer at the start of 
>>>>>>> i915_request_wait_timeout would be sufficient.
>>>>>>>
>>>>>>> That should be a few lines fixup overall and then the idea of 
>>>>>>> allowing rq->engine to be reset to NULL can be explored more 
>>>>>>> leisurely.
>>>>>>
>>>>>> I guess:
>>>>>> - setting engine to NULL in remove_from_context,
>>>>>> - caching gt pointer,
>>>>>> - checking for null pointer in i915_fence_release
>>>>>>
>>>>>> should be enough to solve current issue. However I am not sure if 
>>>>>> there are no more dragons hidden in other execution paths. I will 
>>>>>> try inspect the code.
>>>>>
>>>>> What you have in this patch, cheat by replacing the engine, 
>>>>> *might* work for the short term *if* you can make sure all 
>>>>> parallel readers will see the updated rq->engine pointer in time, 
>>>>> before the old one gets freed.
>>>>>
>>>>> For the longer term solution - maybe making the engine reference 
>>>>> counted?
>>>> That was the point of the original solution - having the request 
>>>> reference count the context. The context is what owns the virtual 
>>>> engine. So ensuring that the context can't be destroyed while there 
>>>> are requests outstanding on it ensured that rq->engine would always 
>>>> be valid. Nice simple and clean solution.So why did that get 
>>>> reverted? What is the problem with VM_BIND and having requests 
>>>> ensure that their resources stay alive for the lifetime of the 
>>>> request?
>>>
>>> Don't ask me, but it perhaps it does read a bit vague from the 
>>> commit message on its own:
>>>
>>> commit bcb9aa45d5a0e11ef91245330c53cde214d15e8d (tag: 
>>> intel/CI_DIGN_563)
>>> Author: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
>>> Date:   Wed Jun 15 00:13:47 2022 +0530
>>>
>>>     Revert "drm/i915: Hold reference to intel_context over life of 
>>> i915_request"
>>>         This reverts commit 1e98d8c52ed5dfbaf273c4423c636525c2ce59e7.
>>>         The problem with this patch is that it makes i915_request to 
>>> hold a
>>>     reference to intel_context, which in turn holds a reference on 
>>> the VM.
>>>     This strong back referencing can lead to reference loops which 
>>> leads
>>>     to resource leak.
>>>         An example is the upcoming VM_BIND work which requires VM to 
>>> hold
>>>     a reference to some shared VM specific BO. But this BO's dma-resv
>>>     fences holds reference to the i915_request thus leading to 
>>> reference
>>>     loop.
>>>         v2:
>>>       Do not use reserved requests for virtual engines
>>>
>>> So I don't know what was the leak or was it permanent leak (?!) or not.
>>>
>>> Given VM_BIND has been abandoned maybe this could even be 
>>> unreverted. I don't see a problem with holding a reference for the 
>>> request lifetime right now but could be wrong..
>>
>> unrevert or alternatively hold reference to context only in case of 
>> virtual engines, as in this case their lifetime is the same?
>
> IMO it is simpler to go for always, especially if we have doubts 
> execlists virtual engines might have the same issue just harder to hit 
> due the RCU free path. (I have doubts at least.)
>
> It also probably does not make sense to have both 
> intel_engine_is_virtual and is_power_of_2 checks in 
> i915_fence_release. Since intel_engine_is_virtual will be safe with a 
> reference, then is_power_of_2 hack can go. So not a direct un-revert, 
> but un-revert with edits/improvements.
Sounds good to me. The 'power of 2 means virtual' thing does sounds 
quite hacky.

>
> First thing though would be to get hold of Niranjana and John to bless 
> the whole plan, given they were involved in the original reference 
> counting and the revert.
I believe it was actually Matthew Brost that wrote the original 
reference counting patch. I recall that I reviewed it and it looked good 
to me at the time. I was not involved in the revert. I only realised the 
revert had happened because I saw this thread and got confused as to why 
there was a problem at all!

John.

>
> Regards,
>
> Tvrtko
>
>>
>> Regards
>> Andrzej
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> John.
>>>>
>>>>
>>>>>
>>>>> Or if setting rq->engine to NULL then evaluating the paths which 
>>>>> derefence it. AFAIR these request retirement races have been 
>>>>> generally tricky/annoying.
>>>>>
>>>>> For instance under the i915_request_wait_timeout chain.
>>>>>
>>>>> 1)
>>>>> __i915_spin_request - could be racy if request gets retired 
>>>>> between i915_request_wait_timeout/dma_fence_is_signaled check and 
>>>>> __i915_spin_request dereferencing rq->engine.props?
>>>>>
>>>>> 2)
>>>>> intel_rps_boost - claims to be safe by serialising via 
>>>>> i915_request_retire/I915_FENCE_FLAG_BOOST but is it? What prevents 
>>>>> retire tearing down the engine between:
>>>>>
>>>>>     if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
>>>>>
>>>>> ---> HERE - if whole retirement happens here <----
>>>>>
>>>>>         struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
>>>>>
>>>>> 3)
>>>>> __intel_engine_flush_submission - could be racy to? What if the 
>>>>> whole process of consuming the request by the backend and 
>>>>> retirement happens between these two lines:
>>>>>
>>>>>     if (i915_request_is_ready(rq))
>>>>>
>>>>> ---> HERE <---
>>>>>         __intel_engine_flush_submission(rq->engine, false);
>>>>>
>>>>> Then "is ready" can be true, but by the 2nd line request retired 
>>>>> and rq->engine freed/NULL already.
>>>>>
>>>>> Lets hope I am just making unwarranted panic by being to away from 
>>>>> this area of the driver for a while. :) But if I am not, then it 
>>>>> could be that rq->engine is just overall too problematic and 
>>>>> perhaps we should have a look into making it reference counted by 
>>>>> the request.
>>>>>
>>>>>> Btw there is rq->i915 but code only uses "rq->engine->i915" which 
>>>>>> way shall we go? remove former or latter?
>>>>>
>>>>> Simpler/shorter option should be better.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>
>>

