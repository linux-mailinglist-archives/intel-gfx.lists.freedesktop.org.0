Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A564AE649
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 02:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0475910E221;
	Wed,  9 Feb 2022 01:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F382B10E221
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 01:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644369309; x=1675905309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=61WILXSLgH+tWxIMpc6TErUnSh9Qr3cIXDQt0xjIZRQ=;
 b=RwpPY9CmYk7EgM+pCH31uqi8pRdtHqtyK8A0kWezEz1jBKHwKyzH6/cl
 dFEgnKrhPOuKJTIw0OkQ1AL6ITfSWReaQS5r9i5Rmnka0ijozWCBiSE3n
 7yAjjBTdogoaX+EB+R0mjQQdx5lZq5bLc+Jpk9xfAOD4SNRQkDxm1Kqjh
 3bdLoepZYNn4YjeqdOgiaEU+Hv/JKSTGreDgfPg6aw1sAHnYxVcYuIXff
 VRV7YXgDC59FWye0pwTBuRyoxhYKzKVuUUE0xQEFVF2yYosDcttFy7FgN
 jwPrGnKZjMmmhtNovdvkFdajA/0o6rvo0MOgj6CmeoPyeHhH1DrRe1E38 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248853236"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="248853236"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 17:15:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="499769450"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 08 Feb 2022 17:15:08 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 17:15:07 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 17:15:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 17:15:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 17:15:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TwQd/EnQ6rm9jv3PMwCH+pa1G3deIH3poNaHXZneSJjzRo4J1SrKhjCjM17RiJZUOLCPQ727C3OtSuYECaJndcowt3eAvq1OUQmetThjjIFd/SIhsa0fhyy1NLSulbPbh9ci9bGzwz3AMvoP1ALgYdsKlcWjNFU2k5aJl1upAxaV33SBVEaowNwQgKJTvLYrzfY/PnBv/0rE4bZT8RFNAOdcGsKJGlesxylRfQV1KCipJnqLKJCXGXDKR1TPU1uSCtU7Ua+hIMyu3bak1bhIya1entl7AO+D7qdIAG4UhFT7wptg+cmHnKli/7Vt0ljpgh9JxUx0zj/EUZY8odZitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0lCsANiCJt1Hv2FrQDBdmvks4WpFKk0teM847J6t1Y=;
 b=TpEg/a401KkgruHfHCH9VqFQkzFUgcDAghaEgrMlNjTShxeG8QYI5P1J9qmwg7Pt/t3caef/LCQbqW3LYDhhwhRvBMvfWDktZLoU3DUzXU1TJ/JIOSp6rI96/V0bfzA0oCzejHgZHsvXwQexd0Vik8RoBVsJYtHgt7isX2W4dB/ByE+YMOpxBGTIueTBvAZ2F52xQGDBFzpLyuKOrdVhd4AU1M3tH2KD/ilxvkbcB+9OtU7glRN+o7wur6Vkqj3z3Nd/99tvv8yIg1lGDiVEvqhO14EQYyienGaJXs23pqpbNfCw1A1pE1y+D9BgVJe33bEyTeNi81Nu7nWH/oecbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3593.namprd11.prod.outlook.com (2603:10b6:5:138::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4951.17; Wed, 9 Feb 2022 01:15:04 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::ed44:f436:839e:c501]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::ed44:f436:839e:c501%7]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 01:15:04 +0000
Message-ID: <e5ba2842-2677-46c9-cd18-17a70151fc05@intel.com>
Date: Tue, 8 Feb 2022 17:15:02 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.1
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220208070141.2095177-1-lucas.demarchi@intel.com>
 <20220208070141.2095177-3-lucas.demarchi@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220208070141.2095177-3-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0148.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::33) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdc12dc0-7804-4e51-92e9-08d9eb699a76
X-MS-TrafficTypeDiagnostic: DM6PR11MB3593:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB35930B9E777DC062EDF99FC6F42E9@DM6PR11MB3593.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: stSAWquy3pU2eFI+AoeIu+QhIP/U+jCdF9IBSZ4ucrN+fs4dBWwhywnROY1gNZlvtUjDML0CKl64WzhZOdsob9i726aNSZmqlsHT8viUeZrHfNu5eGDSDdDh+WNBG0QHc+v5cvJMRLqXTFQYHXGbVzyFSnQ3FeAgC54vA55vTw9x/hWaa6ULgmoXBhvgH7Vw36t4zMcpHRR1+XEF/NeWMox/hH1OnhmlDOl6aFKXvlBr1rshXm8Y9i5JLjanO2j4aIc/wlTX0Dyyk7/JwHcU8ns7WihqSAxk4am2wJDF4aNg9BWwv3SuxQ+9ZY55S8qgYanniAoX3KnEX9DjgrSUPVXaCne+YICcaJFZZeQE2Am8tvLPA5TYfG2a7ZshicLGRIlkXoqpjsC0KrSTaV02mNiCKfAPkjbgjhG3250LRlO2mVw8M4snNH8jJ/WsUBxgdRjqdIG+L6iweJ0gKkeX5Nt6NgzE2UO6UbSOFBDDHQb8wp/kr20hkFucThhwTU15HnyP/XBVsSZDr/hSz9mzLsRHNt2ff/9aiIXXbtwVOVFL4kXMUvgq3CRw7gJZAXUQxLB4b6MFgDvgEGcNVfwSQ1dnMlXh25OodK8Lt6gAL94cQYAvjaKmbRAiZ8gzJoQ7ePCVT5R/aFU5nNHwQynNbep3SwnR0VRB1GV0JaH+COns9bryixeBOgbaPvlYnHhpl5nWWn4fEwF4rK0HVsxrcDU+iTS8LW5GnI37VXCnR3LCn+u5Qm8bVwwDnK+pAkX6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(186003)(2616005)(8936002)(66946007)(66476007)(26005)(31686004)(66556008)(316002)(36756003)(8676002)(38100700002)(30864003)(6486002)(107886003)(83380400001)(54906003)(6512007)(6506007)(53546011)(4326008)(86362001)(2906002)(5660300002)(508600001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUk1VE1RaFBpT0FoVll0VjNuL0tod1ArTWFkalUvOWxPcmRXVVlRa3BLU3FM?=
 =?utf-8?B?ZFo0Y2RtVWN0K01MWUV2ZlB5UjEyNVVSRnV0dEwxb3RxZkMrRGlsa2R0ZVBy?=
 =?utf-8?B?MlRhNkJqNXFOQ0d0VzkxNUkxa0g3TzNvV2FBVzRNcHJnZTFEMlhUWXo2VzU3?=
 =?utf-8?B?ZWdoSUQzSUZEOVhubmNnL1d6ZU4vclZBV2c0Y045Y0hLY0IxSmNqVTlGUzZU?=
 =?utf-8?B?bkxHemR2TklwK3JRQjNVR3ZRSmErTHhsNi9kMlZJK0MvZG1MOTI5RWVjM1kv?=
 =?utf-8?B?aW10dG13b01icDJvRjRWV1pBckIrbkJ5M1oxUXV1ell6bzVDN2dPQklMVkhC?=
 =?utf-8?B?eXRGYkNFTnMybTQ2U3JzS2Z5NjNaVXUxRmpKN2Q2VklMS1JwemthVGZINFUr?=
 =?utf-8?B?M1NFaGozWmoyVkQ2aFVENnRaUXNteGdRRjZIM1ZpT0F4bk5ZVGV2WnpXTjF5?=
 =?utf-8?B?ekduc1BEVk9McEw1RjdkRzU5bjFJamFYc2VENzZnN3h2TjkrNzlPOG00amx6?=
 =?utf-8?B?cWJOU2R0ZzlBQ2VDdnVjMjdHcWZ0QXUwMGpwclAva29TeWNYTDdhQ3hFbmM5?=
 =?utf-8?B?SmpsVGZablR0eE9IamJMZkpEanVDM1pqNFV4VzBJNnQ0cFNHdE1uNEJuUUNx?=
 =?utf-8?B?MmFaZEV4TEJPWElFcFpRejU4d2VIN21zMnV1Tm1iN28vOWpHOVIvUjEyanhv?=
 =?utf-8?B?ZjJzSUpyMk5IZDVjTmZDcDM2K2NOb09ObHFUS3ZWRGtNd2tSeGNpOEJWeHg3?=
 =?utf-8?B?YkUzZ3Rrck5HS0FwSTFmK2VsNEhjaDdPd0xNdERsVGhrdWtTYkZ5blhyYnJR?=
 =?utf-8?B?S1gyOWwyZXl5WkFrMmRKWDNTdC9qTDFaRXpxeUhqc2VrbnZFUEQ2cHlTdXhy?=
 =?utf-8?B?WE5GeEpqMWpNbEhzMlpkc1UrUnF1aEpCdWJvQkJES2NpcTZUdm1RUzlnSlI4?=
 =?utf-8?B?MU0wZ2ZiQWw2RStEOVk1VWtJUnh4cHlOUjNQQmcvZ2tWemN1WERSMmZvSzZm?=
 =?utf-8?B?T2JESm9DdlRCS1hqbGkrRnhmbE5lS0d0TVRtWHQzeVNWMWowRDRhZVF4WExQ?=
 =?utf-8?B?TEZFUUJ6NFowU2MyVCt0a1EzTWxGTHhyVnQxbmNWdFNwbmZIRDN3Q2Q0Z3FZ?=
 =?utf-8?B?ckhCL3lSdUVIKzdZTjlZNCs1cERxN2p0ZFhKQjBVdno5bVVGdjVnMVFxQ1RE?=
 =?utf-8?B?U3RpSytHcmZTbWpGbUlRUzZXcjRjRGhUMVh3M1JBUDgwblJiakhBakw4Tm85?=
 =?utf-8?B?QiszNmJZdFFVeVdiOHNGekpDVHAvUEs5MExZWElwc0JRL3Q5dXVWUnBMcUNG?=
 =?utf-8?B?ZTExQkhCejJxUkE4TTRINklMQnpsVWZncGNFamVkNHRORSt1czVocFl2N0Q4?=
 =?utf-8?B?YkwrZjFReFZyazlGYmhxbHRoaFlUQWlWRWZYNjhUdTZoTitKdUpFN3hmMzdi?=
 =?utf-8?B?OW81cEpzS2JKYXEzMjlEYi8yU1pZckxTdjdyVHVQb0ZVWW1qRWNaMTBEQnBY?=
 =?utf-8?B?alZTenZaZGdUUkpTa0lGMGZoenVSTTdSSG1wR3JVeWYxWm4yZWNRWjlPSkJS?=
 =?utf-8?B?WHBOaXFwM2VtQXQyckt0alBSdkVDTjhXbTRiMUFhNkJrQ1h5WUR4QUhyMVJE?=
 =?utf-8?B?T2FDUjFuQ0IydkNFMDcvQ2Q1R1NMZ1R3ZUdiT0FIY2xHajhVY29OZXBlK0pu?=
 =?utf-8?B?YWtHejRnRVJuc2s0QWxmWFAyRDFqcGJtbFRnWkxGc3lOQmRMNWlNY0tJSVJZ?=
 =?utf-8?B?SmhNdWprcFlBcG9IR3NKNnVHUTB6RFdPWVVzd2xubXl0eEJTWURZYjdBblRY?=
 =?utf-8?B?WGZldjIwakN3T2lFalZDVVZnR0poUG5MVmgvcUdKMjRzZk0welIrRlZUYURM?=
 =?utf-8?B?cU5kWG9mTHpIMTZsbWI1aWV6MENoY1NXdkRmSlVaYkliRURISDY0L08yeG9U?=
 =?utf-8?B?NVlXV25TeGlvQnhNTTZwTm16RXJpNVNtS1prK1M0QU8rSTAzbjFINkNaM0Z2?=
 =?utf-8?B?Y3FTZW9zSzlOZjROdzByUWczK2dXZ3Y4RGNCMDl6cC9DN21Wa2RwR0phY0d0?=
 =?utf-8?B?bFdRVEZ5bVB1T2F5dVlpMDJNeE1veTloaktFNDNjVldZUTJwcVp5Sks2c09x?=
 =?utf-8?B?bUR0aFQzOFg3K2dVWHlVRlc1R2RmYi9vTjlseFN1a2pXajZzQ2ZCTTRnNnEv?=
 =?utf-8?B?UmRRRmJjdW5BbEsxOUZseTExWVJDS0xsZGcrZlRORGNuNVY5ajQvYUtSQkpk?=
 =?utf-8?B?Q1JjSkVGOHg1MUFCVEVGaCtVRi93PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdc12dc0-7804-4e51-92e9-08d9eb699a76
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 01:15:04.6597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nSJqLs4PL2kNW5p3s2VcKAhr8t/LXGJVcyHpzS0SxVi3I2mzMYRT0tkpx4zMw930ULqP1U3AIPVbMfy/LUuuI4fmyt6NU9ovnKVl9DvHiuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Use a single pass to
 calculate regset
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



On 2/7/2022 11:01 PM, Lucas De Marchi wrote:
> The ADS initialitazion was using 2 passes to calculate the regset sent
> to GuC to initialize each engine: the first pass to just have the final
> object size and the second to set each register in place in the final
> gem object.
>
> However in order to maintain an ordered set of registers to pass to guc,
> each register needs to be added and moved in the final array. The second
> phase may actually happen in IO memory rather than system memory and
> accessing IO memory by simply dereferencing the pointer doesn't work on
> all architectures. Other places of the ADS initializaition were
> converted to use the iosys_map API, but here there may be a lot more
> accesses to IO memory. So, instead of following that same approach,
> convert the regset initialization to calculate the final array in 1
> pass and in the second pass that array is just copied to its final
> location, updating the pointers for each engine written to the ADS blob.
>
> One important thing is that struct temp_regset now have
> different semantics: `registers` continues to track the registers of a
> single engine, however the other fields are updated together, according
> to the newly added `storage`, which tracks the memory allocated for
> all the registers. So rename some of these fields and add a
> __mmio_reg_add(): this function (possibly) allocates memory and operates
> on the storage pointer while guc_mmio_reg_add() continues to manage the
> registers pointer.
>
> On a Tiger Lake system using enable_guc=3, the following log message is
> now seen:
>
> 	[  187.334310] i915 0000:00:02.0: [drm:intel_guc_ads_create [i915]] Used 4 KB for temporary ADS regset
>
> This change has also been tested on an ARM64 host with DG2 and other
> discrete graphics cards.
>
> v2 (Daniele):
>    - Fix leaking tempset on error path
>    - Add comments on struct temp_regset to document the meaning of each
>      field
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h     |   7 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 128 +++++++++++++--------
>   2 files changed, 90 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 697d9d66acef..9d779de16613 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -150,6 +150,13 @@ struct intel_guc {
>   	struct __guc_ads_blob *ads_blob;
>   	/** @ads_regset_size: size of the save/restore regsets in the ADS */
>   	u32 ads_regset_size;
> +	/**
> +	 * @ads_regset_count: number of save/restore registers in the ADS for
> +	 * each engine
> +	 */
> +	u32 ads_regset_count[I915_NUM_ENGINES];
> +	/** @ads_regset: save/restore regsets in the ADS */
> +	struct guc_mmio_reg *ads_regset;
>   	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
>   	u32 ads_golden_ctxt_size;
>   	/** @ads_engine_usage_size: size of engine usage in the ADS */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 5290253b9132..7e41175618f5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -208,14 +208,18 @@ static void guc_mapping_table_init(struct intel_gt *gt,
>   
>   /*
>    * The save/restore register list must be pre-calculated to a temporary
> - * buffer of driver defined size before it can be generated in place
> - * inside the ADS.
> + * buffer before it can be copied inside the ADS.
>    */
> -#define MAX_MMIO_REGS	128	/* Arbitrary size, increase as needed */
>   struct temp_regset {
> +	/*
> +	 * ptr to the section of the storage for the engine currently being
> +	 * worked on
> +	 */
>   	struct guc_mmio_reg *registers;
> -	u32 used;
> -	u32 size;
> +	/* ptr to the base of the allocated storage for all engines */
> +	struct guc_mmio_reg *storage;
> +	u32 storage_used;
> +	u32 storage_max;
>   };
>   
>   static int guc_mmio_reg_cmp(const void *a, const void *b)
> @@ -226,18 +230,44 @@ static int guc_mmio_reg_cmp(const void *a, const void *b)
>   	return (int)ra->offset - (int)rb->offset;
>   }
>   
> +static struct guc_mmio_reg * __must_check
> +__mmio_reg_add(struct temp_regset *regset, struct guc_mmio_reg *reg)
> +{
> +	u32 pos = regset->storage_used;
> +	struct guc_mmio_reg *slot;
> +
> +	if (pos >= regset->storage_max) {
> +		size_t size = ALIGN((pos + 1) * sizeof(*slot), PAGE_SIZE);
> +		struct guc_mmio_reg *r = krealloc(regset->storage,
> +						  size, GFP_KERNEL);
> +		if (!r) {
> +			WARN_ONCE(1, "Incomplete regset list: can't add register (%d)\n",
> +				  -ENOMEM);
> +			return ERR_PTR(-ENOMEM);
> +		}
> +
> +		regset->registers = r + (regset->registers - regset->storage);
> +		regset->storage = r;
> +		regset->storage_max = size / sizeof(*slot);
> +	}
> +
> +	slot = &regset->storage[pos];
> +	regset->storage_used++;
> +	*slot = *reg;
> +
> +	return slot;
> +}
> +
>   static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
>   					  u32 offset, u32 flags)
>   {
> -	u32 count = regset->used;
> +	u32 count = regset->storage_used - (regset->registers - regset->storage);
>   	struct guc_mmio_reg reg = {
>   		.offset = offset,
>   		.flags = flags,
>   	};
>   	struct guc_mmio_reg *slot;
>   
> -	GEM_BUG_ON(count >= regset->size);
> -
>   	/*
>   	 * The mmio list is built using separate lists within the driver.
>   	 * It's possible that at some point we may attempt to add the same
> @@ -248,9 +278,9 @@ static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
>   		    sizeof(reg), guc_mmio_reg_cmp))
>   		return 0;
>   
> -	slot = &regset->registers[count];
> -	regset->used++;
> -	*slot = reg;
> +	slot = __mmio_reg_add(regset, &reg);
> +	if (IS_ERR(slot))
> +		return PTR_ERR(slot);
>   
>   	while (slot-- > regset->registers) {
>   		GEM_BUG_ON(slot[0].offset == slot[1].offset);
> @@ -277,7 +307,11 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>   	unsigned int i;
>   	int ret = 0;
>   
> -	regset->used = 0;
> +	/*
> +	 * Each engine's registers point to a new start relative to
> +	 * storage
> +	 */
> +	regset->registers = regset->storage + regset->storage_used;
>   
>   	ret |= GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
>   	ret |= GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
> @@ -299,34 +333,36 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>   	return ret ? -1 : 0;
>   }
>   
> -static int guc_mmio_reg_state_query(struct intel_guc *guc)
> +static long guc_mmio_reg_state_create(struct intel_guc *guc)
>   {
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
> -	struct temp_regset temp_set;
> -	u32 total;
> +	struct temp_regset temp_set = {};
> +	long total = 0;
> +	long ret;
>   
> -	/*
> -	 * Need to actually build the list in order to filter out
> -	 * duplicates and other such data dependent constructions.
> -	 */
> -	temp_set.size = MAX_MMIO_REGS;
> -	temp_set.registers = kmalloc_array(temp_set.size,
> -					   sizeof(*temp_set.registers),
> -					   GFP_KERNEL);
> -	if (!temp_set.registers)
> -		return -ENOMEM;
> -
> -	total = 0;
>   	for_each_engine(engine, gt, id) {
> -		guc_mmio_regset_init(&temp_set, engine);
> -		total += temp_set.used;
> +		u32 used = temp_set.storage_used;
> +
> +		ret = guc_mmio_regset_init(&temp_set, engine);
> +		if (ret < 0)
> +			goto fail_regset_init;
> +
> +		guc->ads_regset_count[id] = temp_set.storage_used - used;
> +		total += guc->ads_regset_count[id];
>   	}
>   
> -	kfree(temp_set.registers);
> +	guc->ads_regset = temp_set.storage;
> +
> +	drm_dbg(&guc_to_gt(guc)->i915->drm, "Used %zu KB for temporary ADS regset\n",
> +		(temp_set.storage_max * sizeof(struct guc_mmio_reg)) >> 10);
>   
>   	return total * sizeof(struct guc_mmio_reg);
> +
> +fail_regset_init:
> +	kfree(temp_set.storage);
> +	return ret;
>   }
>   
>   static void guc_mmio_reg_state_init(struct intel_guc *guc,
> @@ -334,40 +370,38 @@ static void guc_mmio_reg_state_init(struct intel_guc *guc,
>   {
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_engine_cs *engine;
> +	struct guc_mmio_reg *ads_registers;
>   	enum intel_engine_id id;
> -	struct temp_regset temp_set;
> -	struct guc_mmio_reg_set *ads_reg_set;
>   	u32 addr_ggtt, offset;
> -	u8 guc_class;
>   
>   	offset = guc_ads_regset_offset(guc);
>   	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
> -	temp_set.registers = (struct guc_mmio_reg *)(((u8 *)blob) + offset);
> -	temp_set.size = guc->ads_regset_size / sizeof(temp_set.registers[0]);
> +	ads_registers = (struct guc_mmio_reg *)(((u8 *)blob) + offset);
> +
> +	memcpy(ads_registers, guc->ads_regset, guc->ads_regset_size);
>   
>   	for_each_engine(engine, gt, id) {
> +		u32 count = guc->ads_regset_count[id];
> +		struct guc_mmio_reg_set *ads_reg_set;
> +		u8 guc_class;
> +
>   		/* Class index is checked in class converter */
>   		GEM_BUG_ON(engine->instance >= GUC_MAX_INSTANCES_PER_CLASS);
>   
>   		guc_class = engine_class_to_guc_class(engine->class);
>   		ads_reg_set = &blob->ads.reg_state_list[guc_class][engine->instance];
>   
> -		guc_mmio_regset_init(&temp_set, engine);
> -		if (!temp_set.used) {
> +		if (!count) {
>   			ads_reg_set->address = 0;
>   			ads_reg_set->count = 0;
>   			continue;
>   		}
>   
>   		ads_reg_set->address = addr_ggtt;
> -		ads_reg_set->count = temp_set.used;
> +		ads_reg_set->count = count;
>   
> -		temp_set.size -= temp_set.used;
> -		temp_set.registers += temp_set.used;
> -		addr_ggtt += temp_set.used * sizeof(struct guc_mmio_reg);
> +		addr_ggtt += count * sizeof(struct guc_mmio_reg);
>   	}
> -
> -	GEM_BUG_ON(temp_set.size);
>   }
>   
>   static void fill_engine_enable_masks(struct intel_gt *gt,
> @@ -609,8 +643,11 @@ int intel_guc_ads_create(struct intel_guc *guc)
>   
>   	GEM_BUG_ON(guc->ads_vma);
>   
> -	/* Need to calculate the reg state size dynamically: */
> -	ret = guc_mmio_reg_state_query(guc);
> +	/*
> +	 * Create reg state size dynamically on system memory to be copied to
> +	 * the final ads blob on gt init/reset
> +	 */
> +	ret = guc_mmio_reg_state_create(guc);
>   	if (ret < 0)
>   		return ret;
>   	guc->ads_regset_size = ret;
> @@ -650,6 +687,7 @@ void intel_guc_ads_destroy(struct intel_guc *guc)
>   {
>   	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
>   	guc->ads_blob = NULL;
> +	kfree(guc->ads_regset);
>   }
>   
>   static void guc_ads_private_data_reset(struct intel_guc *guc)

