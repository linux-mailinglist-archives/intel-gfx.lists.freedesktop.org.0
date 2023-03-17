Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA896BF0A8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 19:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6272F10E02D;
	Fri, 17 Mar 2023 18:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CDF10E02D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 18:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679077597; x=1710613597;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VYT3040GriS8CF7Wj6LByL4Y58PhDR8poqtYNhF+VDI=;
 b=Dpwj5bs+6ilpAvdHHnbAosr4/mOYvJ2ql42dp1qkqEyRlw0n7SarwjeO
 JkCopy8agE/2l35AHcUY0nme0Qnvzv89SRyKqAIz08iX7jXJfbwQuSlbw
 imG5NMKxdRQsN4Nk7EejxF4IpiR7FsG5tEcQvcHEUyDqaKKYn3riRrhME
 CwfcQzYKxM3y/cxFxSszz2N0f0lIC4S381YCEg9y+zN5YEPZKhUL9+7lp
 rnFXdhK0hdv05L+uyglLtcdhS+VDAu9jfa2Fl7NEAYdXOc1EmeE7rVoTl
 wz7lUG+IH6igWwCpylemBM7e8uQJfE/p2cDVp4tkSpq2TN5DXVBTylF6J Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424604620"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="424604620"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 11:26:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="744640888"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744640888"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 17 Mar 2023 11:26:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 11:26:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 11:26:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 11:26:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 11:26:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4KRu4WiSurYz+YMz99+6C9LoUiT1kyiUxwBlqGCpu52KLK6pFUsurEqiBwuj6VOEtjawlgUWo/y1uS9gogCj+gzMlDIUD4DVgFi1Dmzb0xMsyPZjAsMwUYwwWjMfh6tYh8NlWN9jYVimV48dINlIjmmcoGSZ0ANN/hB9S4H2ulORGdYUF0fHxG306obJMJzfXY8Nu8eQ/pofjt3u5uwax3Vl3vtbkh254j52IUFqrJ35efJQIVKKiGO84pQkFL8acZFrmA5CI1tRl/dxSixYkpYzrM8u66O2UAanv+VvPzjrA9U2EZFBtBrY1ha5aR+xvAWRJ5h7ljQxkQHHdKRhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VYT3040GriS8CF7Wj6LByL4Y58PhDR8poqtYNhF+VDI=;
 b=Yedb1mnf69i44sZqeyDNKGdqGbLKsugQ/1buV6hJwgmPvZ0nbPPPtOlR63QyIAfm/6Sj/+oXzZCe5MsNxatnMJNtz9LrtNdA3sQ4x5KyHnqKXWj29OBczlgkggDO4kwEzbwR9hjrmXR3rggg+SlRt3SZ8KiS1ZGBF7EexJyNxB5/JkHFZhs0y2i2TbKmIjoz6pWtgYx0kfsBcNVu5YO5G2e8Mp1zXMhg+XqIbxl3R53llUEEei52DjLnbxoAJry11orgPwPMnimAd2ixU6WlIZ8Oc4dVAIj8V2aN2H2IhjwS1gXxMRzMo2T15BjVqGZq1eClaBrI9BbboO19bcY/tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DS0PR11MB7622.namprd11.prod.outlook.com (2603:10b6:8:144::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Fri, 17 Mar
 2023 18:26:28 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5c78:a264:4cea:6fa5]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5c78:a264:4cea:6fa5%5]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 18:26:28 +0000
Message-ID: <5be75880-b96b-9ed1-b006-93eb84458abc@intel.com>
Date: Fri, 17 Mar 2023 11:26:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
References: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
 <20230316010101.2590309-3-umesh.nerlige.ramappa@intel.com>
 <87jzzgvy8k.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87jzzgvy8k.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0105.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::46) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DS0PR11MB7622:EE_
X-MS-Office365-Filtering-Correlation-Id: e42f632e-a912-4665-42ab-08db27151f99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /aYhy56X0nSH3mHMAhGX9iWrsjPyfTgB+9SsWdjsWuECFunXlHWd0BpTOF2nHoQMcfyCmK4CsusB3lnRM78/RSuEnzARZI7vwBLWEKr6WLdInQ95w8oUo73eqRrne/Cmulluqwk6D/qWvONDamEUsIdgRxfJwkM/8/7vvUKo5qV7CKP7CJ2P0GSe54FQKJtJLencynZMINFQf7Xl3zAN6yg58wCzYegf0ZiSs8ZffHgNgp/QlBla/3oHgO36q8+F5lguuWeDmSvcpNt1niEYdzGvD2zWpc8PDvGWaVv+la3bAkxnrRfYDSSEgxm7AYEUl/OQz5SaT2BJ4iPDNjix3EpGWyRXq0/1YT4UkH5slOgunbvasT4agNFs34bAN55IWPAqM7tZW3wfYnM5MBJQMVYjjWnsZ5AcwkkM8p0Vt+2tc0uEzm0/D1HoGq/8VRrtN5Iq4Dad5GA5JCj67+XH5skSmsDqa+/JACll/vleGsFgtH05nbkjTedIfmzxL1FHTPcEehQjk7/G4fRl8K59E0K2FYheQniGV00fga1Ivcy6KyDl4+JgniGGnqV8qkPVy5SA6AldrpTlueQONXRDMAhDv/gSdoU8DhIwzImW9jM8yCxcqnNP4IePZTxKEQHJWFB4S5nag9cDG8rNuXdAApppllA5/Vtx1YBqz48Oyns8eFweXsgVogTKCWx0a9s4PrGsXQBg9YkYYpnSkxyD+kLANTBKz4XJl/UghpFBhdM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199018)(186003)(316002)(36756003)(6506007)(110136005)(86362001)(6636002)(6486002)(478600001)(5660300002)(8936002)(66476007)(66556008)(4326008)(8676002)(66946007)(2906002)(41300700001)(4744005)(6512007)(31696002)(2616005)(38100700002)(26005)(82960400001)(83380400001)(53546011)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnoyelNwb2x5ZnBOY2RRemJMYTJyYkl4TVRUQ3IxRTVsUWd3QVdoS1IrdnNa?=
 =?utf-8?B?RmtCbFh5dTdybGlGWHdqSXJlYnVwQkpNbXRkb1dpM3QzdGQ2Q0tUNmFkVWk3?=
 =?utf-8?B?NVJyMjhTdjVuVCtQZjFRZDhSamZ3ek90ZSt5bVhXOGgyb1p1VE8vWXhIY2Rr?=
 =?utf-8?B?TkVKN2wyUWVvVGdMSEV4QTNVS2Z0SjhLYTVYTjRWS0JvVjhybXlZbCs4VlR2?=
 =?utf-8?B?VkRjQkFGOXpNaEZrWXVTUE1LR2tPa1JzZUUrcElzV05lQUc3MHd3YndxdHJH?=
 =?utf-8?B?RFUxaUNVOCs3Mkt1OXZneGRPTEEva0dzVmxWTDM5MzExT2dReEJORktKQzZT?=
 =?utf-8?B?QUgzdUxQTkdkeXVBSDZZRDNYdlQrRzN0RUR5SjJEUlVLVGlESUZib0ZpQlA5?=
 =?utf-8?B?ZFU3dnFkOWlPc3l5SVpBZWhCSnZHOXRwWS9xdFFzOUxIK2x6T3l5aWFhblhC?=
 =?utf-8?B?SUc2YXNCb0o4Z1owTWYzeVBrVTV0UWM5Rzd0UGxva1g0bmVYditnOW5ZbU9v?=
 =?utf-8?B?UUNUdmhsSUxxS3JoL3RnZDhJUDI5dHhYbzF1WEJ5UEljTUVLNjRoMjFCNHBU?=
 =?utf-8?B?b0JuNEppeFp3dnMrVXhkQXVRSVp1Vk5kOG51YTZ4eXpKRTBaUUtkN0FRWkhK?=
 =?utf-8?B?QjJ0TTBNdUE3clpTcUthRTh2cHlXbDFWVklWVTRDU1NKRHRucVJVYVRKaTFX?=
 =?utf-8?B?MGpBdnYwbzZIWWlxVXQxazA5Q05haUt4VlNRcHY2OE9oT1hRZ1RuSDJCcC9G?=
 =?utf-8?B?OWowZnlWZi90WVRZODVSVmhtaFRqdnkyWGEvanBTVnp1N2NOSS9ldHd5d2xL?=
 =?utf-8?B?allmdGpJTUNsNGdJOXN2Y3UxUW9wVWRzaTRjYzE4aWZHaTBkTHU4Ujk1aUht?=
 =?utf-8?B?YU5WY2pjMnZVU2xJaW5LR1NSQnRHRkhESVhnc29OT1NkNnJGanFFVGdtWlNX?=
 =?utf-8?B?MlpEeWdlRS9qYysvMUo1MXVmUnNjVktuRVErQjZTd1pXOWlScmo0UjVEVGUw?=
 =?utf-8?B?UzNxYzhMamtaMUZldW9IZURhbFFkMDc2bHlsVm9GZllMcTlRT3BWRUFLUHpa?=
 =?utf-8?B?cCt0WlpZbkpzZHhzZGoxeVNhZUp4dU9qMUZpY2hkcVJjNm84NnlrbE5pVllY?=
 =?utf-8?B?OG1heEI5WlFKYVdURmZoOHM5OGFIZHk2dkhxaG8rVGx5MVYzTmZxL3hXaEJv?=
 =?utf-8?B?NkZjWnJOZlBoTm1VR1B6VlZFdGpqdWc2M2dEMVFRcUEzVkIyVXFPNWNSQ2Fl?=
 =?utf-8?B?L1lKTzZCWUI4YW1hRE5nck9PYUliRitUdUkwRTliVkF5UVB2RnlhcHY2SXNq?=
 =?utf-8?B?aEtrRmNxd285ZGMvd25VRWZUcTZLcGdTNTRZYkhkaFNoM3V0NHY0OTdkeTZJ?=
 =?utf-8?B?QlZCbnBueUNFTVhFRFpGOUxzV0lNVFBJQy9WKzJ2alJzVjRHekh6T3ZRL1Nu?=
 =?utf-8?B?ODdZcjA0aENBWTdHWnBCQ2IzSVorQ1BXMkxiWlJZYlhuSDBZVC9udW44eVRN?=
 =?utf-8?B?VG5qWG9jYlF3U3JEYUdHdFpOZ1JOMjg4cXMxc1UyYTRVTExTL3VGYmNoZVBZ?=
 =?utf-8?B?Y2tJUTMvY3pBRDF5c2U4UFh5QlgvNndDRndTN3dQRmFsaklJdUxyd1NEV29h?=
 =?utf-8?B?dGxKNU9ENTJYY3lzNS9kbmlZS0gyTUJ2aVJRb1MvWjRueEk5dVlaMGdkKytC?=
 =?utf-8?B?eVBjVy9JRHo0MFJuNW5Dby9KT056TEZXTnMyTzBwTHFVMGxIMmYvd2xCemZO?=
 =?utf-8?B?MmNUaVVqQi9kSmR2Q25XUUF2SVJoY0xZMGYwRUJ1QjRBeE5rbWo3RWR6SUNJ?=
 =?utf-8?B?blVXdlBDeC9sWUprb1lHQkpINmszbG5yU1Z5UUZBdVM1NWdJSVkyazBJU1FZ?=
 =?utf-8?B?VmFURTg3a3dmZUNmQ1RMVEFhMFRnWjlwV1NNeDRiWXJlaW5QNHZmejVQelZy?=
 =?utf-8?B?b0hvUWNCRWl1My9tUFhqZG52Qld0UTJOZXhhcWcyTTJaaTNpNndYc3dNaWVu?=
 =?utf-8?B?VFRVOWdsNDMzVnFMdkg1NEJHQVFWTE5Xby9ZLzE5cU5mM3gwSkFhRDlGckd2?=
 =?utf-8?B?RmtYSzZoTzdnWG41OHdzNlVZSTBYcEdKeUxNOTJsZW1Zd2QzdThjWDRCc3RO?=
 =?utf-8?B?cUtqSjFpOGhNaEx4RWJrS1k0VDB1Z3Q0M2lIenVhZHNQZ1hHMkZiMUdIU3B1?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e42f632e-a912-4665-42ab-08db27151f99
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 18:26:28.3334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pWkxMLX/6WMdmYSqqzNoE9VH4M3kMPZmduFJmf9ayWFv/FuF6Q4gF7f1yIXDdYvlMm+siFpYdMbxqrkcosYFwVmvEbhWv4qDoAu/qe8QRiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 02/12] drm/i915/mtl: Synchronize
 i915/BIOS on C6 enabling
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/16/2023 8:43 PM, Dixit, Ashutosh wrote:
> On Wed, 15 Mar 2023 18:00:51 -0700, Umesh Nerlige Ramappa wrote:
>> From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Hi Vinay,
>
>> If BIOS enables/disables C6, i915 should do the same.
> So MTL bios has a control for enabling/disabling C6? Both RC6 and MC6
> individually or collectively?
Yes, we can toggle both independently in BIOS.
>
> What happens if bios has disabled RC6 and i915 enables it: just that it
> will bust OA?

Yes, since OA init will rely on this information.

Thanks,

Vinay.

>
> The patch itself LGTM if the above is true, I can R-b it after I hear about
> the above.
>
> Thanks.
> --
> Ashutosh
>
>> Also, retain this value across driver reloads. This is needed only for
>> MTL as of now due to an existing bug in OA which needs C6 disabled for it
>> to function. BIOS behavior is also different across platforms in terms of
>> how C6 is enabled.
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
