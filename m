Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF9B643C97
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 06:07:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2C310E0A5;
	Tue,  6 Dec 2022 05:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804E110E0A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 05:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670303231; x=1701839231;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6XRzz/E1y3OICfU4C8kq2LR4p/HoSwU9IqugVn7nCSI=;
 b=MO2msdJ4zKWRfHFtGXLBqO+DtYTr62Ywu69TBXlP9Xc6GvUsJtS7BHAO
 hP4OHi81l4pc5gdclza6pD+YmE2mmxjIJWU5zudHQehBczXKQWVKkGm9J
 EAy60c10Ri/RBx2OSiQ3uHlm5iW1XH6ZjniKAWvgamcJxXodTIj/Wa5rz
 54qQ/2JOXQnX/MpgochxwFD7De5kZ2EsisDISaXO8N952ojXw+KjL5aTP
 8gzNV1t0cXVoZ/nqdst+ZPvEfhwSoseyowTh+bLkhNdkMrrK93vgSZ7Mg
 SuVoVmINJhhKd9ObH79xhR6IcqYNchLimq+SHna+61H0MDbV/LZc8gDuK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="378699622"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="378699622"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 21:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="596448222"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="596448222"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 05 Dec 2022 21:07:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 21:07:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 21:07:00 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 21:07:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VD9uTjlOiv4N/D+JzVfrqxFhjDoSzNYPHOcdkYHBsGcpGERbpKM7WD7FXup+EZIm5dBOUF0H8gbr2Z8sey8YQzm3MpQdLzlHDzO8XwOQu0sFxzf+odnaoNxaiYLqJ67vTo2zzYQ2ie2mR5Cx3AJErqq9skU2YLRiMclOS3zocPHAqA91AcdS0rWnmECZwQVnjDsfLTD6+ainm8m/CBkURvff/3INkOnwJqtFPaCO2oEMCG7jF3flpZFhdW7cPye+G8FaOHJtY2GL4ihiSV/Fnv7ajUVZg7zHk43RwdC8FSpVd7q5bRsppPocz1HjVaVm4sPGu38s+oSGCb6W698/dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crvTzVnPSCfAMeH3cu5ORwp+4jH4EJ30iccJA9dZ7jY=;
 b=oeBwOBlmsTNT8eGJY2QyiAyv75NMR1QSQpUTj/09itTmypA/uzKEobgPHwgm4E84JFqNNq5PCRCJ/MiW9USlEDOUz5D3t629IOL/djetm76z8180TcFxhYJxKc+wNuwZDFD8SodwAeS/KVlkJ/mBHAHIQKQpH8ch3GOQRjRG4G5yb/bYnAhxDCwXV/JfWsEjPRHb8Z4WPYLDA7PwX5jxFfUdoITRoDObF9g4971BOOpoziPBk391zzDuk1wnLvNLrRH5UZA9NmnczlqUBjpoJ3kT33A+pPmfw9kPDgTAMahxDna0UkR7x1IuWSrP/HpOwXfKEOZFxkQJy8emkYAfTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SA0PR11MB4559.namprd11.prod.outlook.com (2603:10b6:806:9a::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 05:06:53 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::f7a8:6d03:2464:2afd]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::f7a8:6d03:2464:2afd%5]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 05:06:53 +0000
Message-ID: <e8305b0f-b59c-2406-92a4-58254d9b6701@intel.com>
Date: Mon, 5 Dec 2022 21:06:50 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:74::27) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|SA0PR11MB4559:EE_
X-MS-Office365-Filtering-Correlation-Id: 4455e9c9-f9cf-48f6-d344-08dad747b074
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HNnO8Jm2d+lfbA0vl1y/6mzPH0NSDywGkdqY41WgIkkCNEvYEnB2F1zMZCAhyETcRQT1/g5yDN2f8l9A800WeqCckBQVrYF8qcXuIF8yv1J2A7keNYcpJ9tVNEOmrSU7ala13EsbC7b9yeU4qI1olwNZ1PBEhzy9mWa3iCUxtUrDVzeRTjORrEvZIGAdQ0B/sLTIaSrDu9MVVeauoDm4B1YXeLMRvHHSN4AeYSNl9gEWwxKD0EIIdtEu22M2tgqMfqWzyNeYaiaKxMAW+0k7NyYFx27apot2mTsPpsb1Wl1tFsdV6SH6q/YxhgpwZIUQvs1mdpmk2m0j+ZlespuIldRPKWrOf1Dec5FH7EU9tUP96MyLjpRlIm74p3wIdc/nkNAQulgtXjnuHKjln+MQDjQKtU4Aify0MofpUKpIWP4TaYUl07vkxKRV9V+mN+b1FuvmoSNGNvMyD/ksQfLqheNkWcoQVHqU2eerK3dGENb3EYAK52p6D3Q4lXA+KbMdw/Lh8Dy6+o+Lgo7TRIkgsHXYNDgP4a9bUuh0OA5nPnYheRSPu2bFllAxB8D6Ob/6YvMYKuXTnXw/LIMBE+o7uPVnOzUVjjsGTeMcaysThYHmrfKtkLSL9QjocHrh1lqMJDTfcNtIuK9zEbp1XlglGBgbSq1fqJMemHqLGljOsvil6mepOd/foXyzIjZ2OO7q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199015)(41300700001)(6486002)(966005)(36756003)(478600001)(8936002)(5660300002)(26005)(186003)(6512007)(316002)(38100700002)(82960400001)(83380400001)(6506007)(30864003)(53546011)(86362001)(2906002)(31696002)(66476007)(66946007)(66556008)(2616005)(31686004)(8676002)(43740500002)(45980500001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3hIZ0JsRVhHbVhkcnVpRkw3NnBMeDFnRTVqR0NqUnhyUFltQmp3ZXc0YURN?=
 =?utf-8?B?SWM2UWdWcjV4M1JxRXpsd0xaNlJOSE5yV3luUlUyS2lCSmw4bDczUXZTWHA0?=
 =?utf-8?B?VjgrZllVVyt6T3QxN2hqVjg5SmoxU0xPVGdVQ1I3RGpYTENTQU1QKzRPVGpz?=
 =?utf-8?B?VFZ1WFIreStHKzdVckE5VU0vNUZ6KzAwaXNMdXFuaEk0UXEwYkRNNkw2bUpW?=
 =?utf-8?B?TGtCVDVhb2pNSEFCM0d4WEFKc3gyYWo3WVdsc2I5SU1pSFNKWkRSR25tY050?=
 =?utf-8?B?bE1Ob3o1bkRpcGVReEZVbitDcndkWC9FTEhUTmRmcHZWWG5jUWNZKzZDS2Qz?=
 =?utf-8?B?M3VuZmlvSmloNURxeGt2TGNzTldMNjNBV2dLUW0yWTM1eEgrb01kb1lqSzBX?=
 =?utf-8?B?T2lyUWloVEx0QTQwRTM4dDVabnBUV1BFWDBNU1p1aXI1ZUtib1ZDdFdNK1Ir?=
 =?utf-8?B?SmlyYkhTUmRETGduR0l2R0xva1p4QmpPYXpYYnpwaklWUW1wWXpzYkQ4K2VN?=
 =?utf-8?B?cy9DNUN6Ukxkai9QZUxaQXo2Q0o1UWFmMHBPd1FoOWFkcklMZnFRZVkvcDhN?=
 =?utf-8?B?a3NqTmFjK0NWWXpvcEwzNmRYSUVtbTV0WmNnenFiV2JvcktjWG5TYThFU3NU?=
 =?utf-8?B?VEIybE01SDkzUEFxaTcxVEoxS1hmV1Z0c0VXRExua0ROSGYrR0pFNEswd0hS?=
 =?utf-8?B?YmE3SUVZbUh6OXRlWDFtSG9sT1hzUGVmcVIvUWorRUhPR1FtY0tneVJIUmJn?=
 =?utf-8?B?ZVlDTjVkRHhuKzI3OEpQTTl6Kys1ZEhTZkpuL0p1Mlc3R2xUSHI2NVByS1U5?=
 =?utf-8?B?UTFtU1JUTmN1Q0ZNT3VxVXo1YjhXOERUV1NkQWpNcDdNK3Z3RnkzMkRMMDBu?=
 =?utf-8?B?Zmo2TlRCaXhKQ3R6Q1FmbVJwTEpaS2pKcUU1SUMwWk96S29WMEJGU3NZWnRC?=
 =?utf-8?B?bnZSVmJLclRxREg2b2szTjY4Z2E5YTJ0aVRJRzlIMnZuS3VxWFgwSGpTdkxa?=
 =?utf-8?B?VFFYaFo5STY4UzZHZVVhcENWRk04MWZWT3B1WjdKRW1tdHlQZEJqa3Nua2hZ?=
 =?utf-8?B?emRGb2JveEgrWlBIaTZPOUs5R3dOWDUwZUlYbDNYOVhiVWl5TE5tcnprQ21k?=
 =?utf-8?B?OFpTakN0U2FZdExid3U4Tjk2NURRdlplM1d0bG9ySjVQWnNhbDAvTFhSV0Q2?=
 =?utf-8?B?WkFwRVdLQUZkenpteTk5eGdrRUg4bGF5b1lZQU9mUnh5c2RCQ2tHNGpNZHJ2?=
 =?utf-8?B?bDdyZU5GVHdmMTE0RTNTN2cvYXlCL1laaFlxZzBhN2pTaksrOUFFWG1jTVUx?=
 =?utf-8?B?U0FXNnMxNTR0Q0FGTkpkRWpCejRQU2luSmUwKzB3UjZBYXd0T3ZHSXdwdjNo?=
 =?utf-8?B?SE1TRGk4ZThpNTQ3aFB4aExzVWs1MUtOZFdVK01tNzh1eW0yc1UwV084N3Zn?=
 =?utf-8?B?eGQ4N3pMVmpjTzRFdGlvaFJXMVBXVVUwc1FMeUx1empzUm5nak1FUEQ4OGNM?=
 =?utf-8?B?TmVJajNDZk5vblBOY3RhODgzcVduenNjdTFtcVpOaVUvY3lZNlhMMjJBajRK?=
 =?utf-8?B?QTN6Q01FNmlTdHo1UnYyNjArVnhzM21oZnVHbW1wOExQMTNwdk1KT29TQlNH?=
 =?utf-8?B?R29Ca2pTcUtHTVc1eWtueHRwUlVYM1VnUzNIK3VsT0pFT3AxUjdZNi9WcHpq?=
 =?utf-8?B?OTVJekNENmlEcWlTOG1XNkI4ZnJybExCTG9HOU50dFF4RlI2UTc2aU5pMTVC?=
 =?utf-8?B?SWs0VC8zeWkvTVU3WFJMTU94NEMxdjMrQXMrc0ZpdzRPSzIvc1p3bWVIL3Jx?=
 =?utf-8?B?SjBhRDlvOVlwUXpxbGhud0I5NVZDRXpuVFMwZUdBL0hVcWNvdmxKSW0rVnBh?=
 =?utf-8?B?aTNuQzk1RnA4TExhSmhXMFJhbFYvOHhYamViVGNUUEpSVmtUZW1rZ0xGK3M2?=
 =?utf-8?B?TTU3K2xyMGMzT2c3a3ZSTjdDMytRc2VGaGt2dkc3VXlyQ1FPcm5LdlJwMGhO?=
 =?utf-8?B?eDJoRkdBbG1Cb2VnZjBXajFxelRSZldFR1dBRS9jbWtwTWRMNjJsaUVGbnA1?=
 =?utf-8?B?QkdPbW51QUhZeUsyY2JFMTRxRU9pRWp1NmJrUkZIRzBEb0ErZkVXakdRZW5U?=
 =?utf-8?B?Q3RGQ1RtMWVVbjFTdVZtT29ZbWx0b0NGU05SYzZsdGJWNlhjbGRBOWlpNGRP?=
 =?utf-8?Q?gdp0GGxqHnPIOZClJtj0sNc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4455e9c9-f9cf-48f6-d344-08dad747b074
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 05:06:53.1785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Muc0mR2WsvSjeLSG2PFHMZybteIw9hDIgxvEws4A8VehtJj8dRK34hXKRb3Wxpf4DWPvQiXZ2K+5iNttgHwLsOKw+oBAUX69II4QsZjZhA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4559
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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



On 12/5/2022 4:03 PM, Alan Previn wrote:
> Starting with MTL, there will be two GT-tiles, a render and media
> tile. PXP as a service for supporting workloads with protected
> contexts and protected buffers can be subscribed by process
> workloads on any tile. However, depending on the platform,
> only one of the tiles is used for control events pertaining to PXP
> operation (such as creating the arbitration session and session
> tear-down).
>
> PXP as a global feature is accessible via batch buffer instructions
> on any engine/tile and the coherency across tiles is handled implicitly
> by the HW. In fact, for the foreseeable future, we are expecting this
> single-control-tile for the PXP subsystem.
>
> In MTL, it's the standalone media tile (not the root tile) because
> it contains the VDBOX and KCR engine (among the assets PXP relies on
> for those events).
>
> Looking at the current code design, each tile is represented by the
> intel_gt structure while the intel_pxp structure currently hangs off the
> intel_gt structure.
>
> Keeping the intel_pxp structure within the intel_gt structure makes some
> internal functionalities more straight forward but adds code complexity to
> code readibility and maintainibility to many external-to-pxp subsystems
> which may need to pick the correct intel_gt structure. An example of this
> would be the intel_pxp_is_active or intel_pxp_is_enabled functionality
> which should be viewed as a global level inquiry, not a per-gt inquiry.
>
> That said, this series promotes the intel_pxp structure into the
> drm_i915_private structure making it a top-level subsystem and the PXP
> subsystem will select the control gt internally and keep a pointer to
> it for internal reference.
>
> This promotion comes with two noteworthy changes:
>
> 1. Exported pxp functions that are called by external subsystems
>     (such as intel_pxp_enabled/active) will have to check implicitly
>     if i915->pxp is valid as that structure will not be allocated
>     for HW that doesn't support PXP.
>
> 2. Since GT is now considered a soft-dependency of PXP we are
>     ensuring that GT init happens before PXP init and vice versa
>     for fini. This causes a minor ordering change whereby we previously
>     called intel_pxp_suspend after intel_uc_suspend but now is before
>     i915_gem_suspend_late but the change is required for correct
>     dependency flows. Additionally, this re-order change doesn't
>     have any impact because at that point in either case, the top level
>     entry to i915 won't observe any PXP events (since the GPU was
>     quiesced during suspend_prepare). Also, any PXP event doesn't
>     really matter when we disable the PXP HW (global GT irqs are
>     already off anyway, so even if there was a bug that generated
>     spurious events we wouldn't see it and we would just clean it
>     up on resume which is okay since the default fallback action
>     for PXP would be to keep the sessions off at this suspend stage).
>
> Changes from prior revs:
>     v8: - Remove pxp_to_gt macro (Daniele).
>         - Fix a bug in pxp_get_ctrl_gt for the case of MTL and we don't
>           support GSC-FW on it. (Daniele).
>         - Leave i915->pxp as NULL if we dont support PXP and in line
>           with that, do additional validity check on i915->pxp for
>           intel_pxp_is_supported/enabled/active (Daniele).
>         - Remove unncessary include header from intel_gt_debugfs.c
>           and check drm_minor i915->drm.primary (Daniele).
>         - Other cosmetics / minor issues / more comments on suspend
>           flow order change (Daniele).
>     v7: - Drop i915_dev_to_pxp and in intel_pxp_init use 'i915->pxp'
>           through out instead of local variable newpxp. (Rodrigo)
>         - In the case intel_pxp_fini is called during driver unload but
>           after i915 loading failed without pxp being allocated, check
>           i915->pxp before referencing it. (Alan)
>     v6: - Remove HAS_PXP macro and replace it with intel_pxp_is_supported
>           because : [1] introduction of 'ctrl_gt' means we correct this
>           for MTL's upcoming series now. [2] Also, this has little impact
>           globally as its only used by PXP-internal callers at the moment.
>         - Change intel_pxp_init/fini to take in i915 as its input to avoid
>           ptr-to-ptr in init/fini calls.(Jani).
>         - Remove the backpointer from pxp->i915 since we can use
>           pxp->ctrl_gt->i915 if we need it. (Rodrigo).
>     v5: - Switch from series to single patch (Rodrigo).
>         - change function name from pxp_get_kcr_owner_gt to
>           pxp_get_ctrl_gt.
>         - Fix CI BAT failure by removing redundant call to intel_pxp_fini
>           from driver-remove.
>         - NOTE: remaining open still persists on using ptr-to-ptr
>           and back-ptr.
>     v4: - Instead of maintaining intel_pxp as an intel_gt structure member
>           and creating a number of convoluted helpers that takes in i915 as
>           input and redirects to the correct intel_gt or takes any intel_gt
>           and internally replaces with the correct intel_gt, promote it to
>           be a top-level i915 structure.
>     v3: - Rename gt level helper functions to "intel_pxp_is_enabled/
>           supported/ active_on_gt" (Daniele)
>         - Upgrade _gt_supports_pxp to replace what was intel_gtpxp_is
>           supported as the new intel_pxp_is_supported_on_gt to check for
>           PXP feature support vs the tee support for huc authentication.
>           Fix pxp-debugfs-registration to use only the former to decide
>           support. (Daniele)
>         - Couple minor optimizations.
>     v2: - Avoid introduction of new device info or gt variables and use
>           existing checks / macros to differentiate the correct GT->PXP
>           control ownership (Daniele Ceraolo Spurio)
>         - Don't reuse the updated global-checkers for per-GT callers (such
>           as other files within PXP) to avoid unnecessary GT-reparsing,
>           expose a replacement helper like the prior ones. (Daniele).
>     v1: - Add one more patch to the series for the intel_pxp suspend/resume
>           for similar refactoring
>
> References: https://patchwork.freedesktop.org/patch/msgid/20221202011407.4068371-1-alan.previn.teres.alexis@intel.com
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../drm/i915/display/skl_universal_plane.c    |  2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
>   drivers/gpu/drm/i915/gt/intel_gt.c            |  5 -
>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  2 -
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  8 --
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 -
>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  2 +-
>   drivers/gpu/drm/i915/i915_driver.c            | 18 ++++
>   drivers/gpu/drm/i915/i915_drv.h               |  7 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 94 ++++++++++++++-----
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  9 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  8 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  | 47 +++++++---
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h  |  4 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 16 ++--
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  6 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 10 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 31 +++---
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  8 ++
>   23 files changed, 184 insertions(+), 110 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 76490cc59d8f..4b79c2d2d617 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1848,7 +1848,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
>   {
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   
> -	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
> +	return intel_pxp_key_check(i915->pxp, obj, false) == 0;
>   }
>   
>   static bool pxp_is_borked(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 7f2831efc798..46e71f62fcec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>   
>   	if (!protected) {
>   		pc->uses_protected_content = false;
> -	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
> +	} else if (!intel_pxp_is_enabled(i915->pxp)) {
>   		ret = -ENODEV;
>   	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>   		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
> @@ -271,8 +271,8 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>   		 */
>   		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   
> -		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
> -			ret = intel_pxp_start(&to_gt(i915)->pxp);
> +		if (!intel_pxp_is_active(i915->pxp))
> +			ret = intel_pxp_start(i915->pxp);
>   	}
>   
>   	return ret;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 33673fe7ee0a..005a7f842784 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
>   	if (ext.flags)
>   		return -EINVAL;
>   
> -	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
> +	if (!intel_pxp_is_enabled(ext_data->i915->pxp))
>   		return -ENODEV;
>   
>   	ext_data->flags |= I915_BO_PROTECTED;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 29e9e8d5b6fe..2ea49bc21ed3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -869,7 +869,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   		 */
>   		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>   		    i915_gem_object_is_protected(obj)) {
> -			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
> +			err = intel_pxp_key_check(eb->i915->pxp, obj, true);
>   			if (err) {
>   				i915_gem_object_put(obj);
>   				return ERR_PTR(err);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index d114347c004e..28278cc607e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -8,7 +8,6 @@
>   
>   #include "gem/i915_gem_internal.h"
>   #include "gem/i915_gem_lmem.h"
> -#include "pxp/intel_pxp.h"
>   
>   #include "i915_drv.h"
>   #include "i915_perf_oa_regs.h"
> @@ -762,8 +761,6 @@ int intel_gt_init(struct intel_gt *gt)
>   
>   	intel_migrate_init(&gt->migrate, gt);
>   
> -	intel_pxp_init(&gt->pxp);
> -
>   	goto out_fw;
>   err_gt:
>   	__intel_gt_disable(gt);
> @@ -803,8 +800,6 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>   	intel_rps_driver_unregister(&gt->rps);
>   	intel_gsc_fini(&gt->gsc);
>   
> -	intel_pxp_fini(&gt->pxp);
> -
>   	/*
>   	 * Upon unregistering the device to prevent any new users, cancel
>   	 * all in-flight requests so that we can quickly unbind the active
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> index dd53641f3637..5fc2df01aa0d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> @@ -12,7 +12,6 @@
>   #include "intel_gt_mcr.h"
>   #include "intel_gt_pm_debugfs.h"
>   #include "intel_sseu_debugfs.h"
> -#include "pxp/intel_pxp_debugfs.h"
>   #include "uc/intel_uc_debugfs.h"
>   
>   int intel_gt_debugfs_reset_show(struct intel_gt *gt, u64 *val)
> @@ -99,7 +98,6 @@ void intel_gt_debugfs_register(struct intel_gt *gt)
>   	intel_sseu_debugfs_register(gt, root);
>   
>   	intel_uc_debugfs_register(&gt->uc, root);
> -	intel_pxp_debugfs_register(&gt->pxp, root);
>   }
>   
>   void intel_gt_debugfs_register_files(struct dentry *root,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index 6f6b9e04d916..8fac2660e16b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -76,7 +76,7 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
>   		return gen11_rps_irq_handler(&media_gt->rps, iir);
>   
>   	if (instance == OTHER_KCR_INSTANCE)
> -		return intel_pxp_irq_handler(&gt->pxp, iir);
> +		return intel_pxp_irq_handler(gt->i915->pxp, iir);
>   
>   	if (instance == OTHER_GSC_INSTANCE)
>   		return intel_gsc_irq_handler(gt, iir);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 16db85fab0b1..c065950d0bad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -304,8 +304,6 @@ int intel_gt_resume(struct intel_gt *gt)
>   
>   	intel_uc_resume(&gt->uc);
>   
> -	intel_pxp_resume(&gt->pxp);
> -
>   	user_forcewake(gt, false);
>   
>   out_fw:
> @@ -339,8 +337,6 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>   {
>   	user_forcewake(gt, true);
>   	wait_for_suspend(gt);
> -
> -	intel_pxp_suspend_prepare(&gt->pxp);
>   }
>   
>   static suspend_state_t pm_suspend_target(void)
> @@ -365,7 +361,6 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>   	GEM_BUG_ON(gt->awake);
>   
>   	intel_uc_suspend(&gt->uc);
> -	intel_pxp_suspend(&gt->pxp);
>   
>   	/*
>   	 * On disabling the device, we want to turn off HW access to memory
> @@ -393,7 +388,6 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>   
>   void intel_gt_runtime_suspend(struct intel_gt *gt)
>   {
> -	intel_pxp_runtime_suspend(&gt->pxp);
>   	intel_uc_runtime_suspend(&gt->uc);
>   
>   	GT_TRACE(gt, "\n");
> @@ -411,8 +405,6 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>   	if (ret)
>   		return ret;
>   
> -	intel_pxp_runtime_resume(&gt->pxp);
> -
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index f519aa4a004a..0b6da2aa9718 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -30,7 +30,6 @@
>   #include "intel_rps_types.h"
>   #include "intel_migrate_types.h"
>   #include "intel_wakeref.h"
> -#include "pxp/intel_pxp_types.h"
>   #include "intel_wopcm.h"
>   
>   struct drm_i915_private;
> @@ -275,8 +274,6 @@ struct intel_gt {
>   		u8 wb_index; /* Only used on HAS_L3_CCS_READ() platforms */
>   	} mocs;
>   
> -	struct intel_pxp pxp;
> -
>   	/* gt/gtN sysfs */
>   	struct kobject sysfs_gt;
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> index 4f246416db17..534b0aa43316 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> @@ -32,7 +32,7 @@ int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc)
>   
>   	GEM_WARN_ON(intel_uc_fw_is_loaded(&huc->fw));
>   
> -	ret = intel_pxp_huc_load_and_auth(&huc_to_gt(huc)->pxp);
> +	ret = intel_pxp_huc_load_and_auth(huc_to_gt(huc)->i915->pxp);
>   	if (ret)
>   		return ret;
>   
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 4e1bb3c23c63..d716d12c7fc9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -73,6 +73,8 @@
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_rc6.h"
>   
> +#include "pxp/intel_pxp.h"
> +#include "pxp/intel_pxp_debugfs.h"
>   #include "pxp/intel_pxp_pm.h"
>   
>   #include "i915_file_private.h"
> @@ -759,6 +761,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>   	for_each_gt(gt, dev_priv, i)
>   		intel_gt_driver_register(gt);
>   
> +	intel_pxp_debugfs_register(dev_priv->pxp);
> +
>   	i915_hwmon_register(dev_priv);
>   
>   	intel_display_driver_register(dev_priv);
> @@ -790,6 +794,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>   
>   	intel_display_driver_unregister(dev_priv);
>   
> +	intel_pxp_fini(dev_priv);
> +
>   	for_each_gt(gt, dev_priv, i)
>   		intel_gt_driver_unregister(gt);
>   
> @@ -933,6 +939,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	if (ret)
>   		goto out_cleanup_modeset2;
>   
> +	intel_pxp_init(i915);
> +
>   	ret = intel_modeset_init(i915);
>   	if (ret)
>   		goto out_cleanup_gem;
> @@ -1168,6 +1176,8 @@ static int i915_drm_prepare(struct drm_device *dev)
>   {
>   	struct drm_i915_private *i915 = to_i915(dev);
>   
> +	intel_pxp_suspend_prepare(i915->pxp);
> +
>   	/*
>   	 * NB intel_display_suspend() may issue new requests after we've
>   	 * ostensibly marked the GPU as ready-to-sleep here. We need to
> @@ -1248,6 +1258,8 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>   
>   	disable_rpm_wakeref_asserts(rpm);
>   
> +	intel_pxp_suspend(dev_priv->pxp);
> +
>   	i915_gem_suspend_late(dev_priv);
>   
>   	for_each_gt(gt, dev_priv, i)
> @@ -1360,6 +1372,8 @@ static int i915_drm_resume(struct drm_device *dev)
>   
>   	i915_gem_resume(dev_priv);
>   
> +	intel_pxp_resume(dev_priv->pxp);
> +
>   	intel_modeset_init_hw(dev_priv);
>   	intel_init_clock_gating(dev_priv);
>   	intel_hpd_init(dev_priv);
> @@ -1643,6 +1657,8 @@ static int intel_runtime_suspend(struct device *kdev)
>   	 */
>   	i915_gem_runtime_suspend(dev_priv);
>   
> +	intel_pxp_runtime_suspend(dev_priv->pxp);
> +
>   	for_each_gt(gt, dev_priv, i)
>   		intel_gt_runtime_suspend(gt);
>   
> @@ -1747,6 +1763,8 @@ static int intel_runtime_resume(struct device *kdev)
>   	for_each_gt(gt, dev_priv, i)
>   		intel_gt_runtime_resume(gt);
>   
> +	intel_pxp_runtime_resume(dev_priv->pxp);
> +
>   	/*
>   	 * On VLV/CHV display interrupts are part of the display
>   	 * power well, so hpd is reinitialized from there. For
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a8a5bd426e78..7a4e9dc15b69 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -72,6 +72,7 @@ struct intel_encoder;
>   struct intel_limit;
>   struct intel_overlay_error_state;
>   struct vlv_s0ix_state;
> +struct intel_pxp;
>   
>   #define I915_GEM_GPU_DOMAINS \
>   	(I915_GEM_DOMAIN_RENDER | \
> @@ -364,6 +365,8 @@ struct drm_i915_private {
>   		struct file *mmap_singleton;
>   	} gem;
>   
> +	struct intel_pxp *pxp;
> +
>   	u8 pch_ssc_use;
>   
>   	/* For i915gm/i945gm vblank irq workaround */
> @@ -919,10 +922,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
>   
> -#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
> -			    INTEL_INFO(dev_priv)->has_pxp) && \
> -			    VDBOX_MASK(to_gt(dev_priv)))
> -
>   #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>   
>   #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 5efe61f67546..cd863aa4c697 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -3,13 +3,19 @@
>    * Copyright(c) 2020 Intel Corporation.
>    */
>   #include <linux/workqueue.h>
> +
> +#include "gem/i915_gem_context.h"
> +
> +#include "gt/intel_context.h"
> +#include "gt/intel_gt.h"
> +
> +#include "i915_drv.h"
> +
>   #include "intel_pxp.h"
>   #include "intel_pxp_irq.h"
>   #include "intel_pxp_session.h"
>   #include "intel_pxp_tee.h"
> -#include "gem/i915_gem_context.h"
> -#include "gt/intel_context.h"
> -#include "i915_drv.h"
> +#include "intel_pxp_types.h"
>   
>   /**
>    * DOC: PXP
> @@ -39,18 +45,26 @@
>    * performed via the mei_pxp component module.
>    */
>   
> -struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
> +bool intel_pxp_is_supported(const struct intel_pxp *pxp)
>   {
> -	return container_of(pxp, struct intel_gt, pxp);
> +	if (!IS_ENABLED(CONFIG_DRM_I915_PXP))
> +		return false;
> +	else if (!pxp)
> +		return false;

nit: this could be squashed in a single line:

     if (!IS_ENABLED(CONFIG_DRM_I915_PXP) || !pxp)

not a blocker

> +	return (INTEL_INFO(pxp->ctrl_gt->i915)->has_pxp && VDBOX_MASK(pxp->ctrl_gt));
>   }
>   
>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>   {
> +	if (!pxp)
> +		return false;
>   	return pxp->ce;

nit: this can be squashed as:

return pxp && pxp->ce;

same for the is_active below. not a blocker

>   }
>   
>   bool intel_pxp_is_active(const struct intel_pxp *pxp)
>   {
> +	if (!pxp)
> +		return false;
>   	return pxp->arb_is_valid;
>   }
>   
> @@ -74,7 +88,7 @@ static void kcr_pxp_disable(struct intel_gt *gt)
>   static int create_vcs_context(struct intel_pxp *pxp)
>   {
>   	static struct lock_class_key pxp_lock;
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   	struct intel_engine_cs *engine;
>   	struct intel_context *ce;
>   	int i;
> @@ -109,7 +123,7 @@ static void destroy_vcs_context(struct intel_pxp *pxp)
>   
>   static void pxp_init_full(struct intel_pxp *pxp)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   	int ret;
>   
>   	/*
> @@ -138,31 +152,63 @@ static void pxp_init_full(struct intel_pxp *pxp)
>   	destroy_vcs_context(pxp);
>   }
>   
> -void intel_pxp_init(struct intel_pxp *pxp)
> +static struct intel_gt *pxp_get_ctrl_gt(struct drm_i915_private *i915)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = NULL;
> +	int i = 0;
>   
> -	/* we rely on the mei PXP module */
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
> -		return;
> +	for_each_gt(gt, i915, i) {
> +		/* There can be only one GT with GSC-CS that supports PXP */
> +		if (HAS_ENGINE(gt, GSC0))
> +			return gt;
> +	}
> +
> +	/* Else we rely on the GT-0 with mei PXP module */

This comment doesn't really explain why we exclude the case with 
media_gt. I would have preferred a line to explain that the module only 
works for pre-media_gt platforms. not a blocker.

> +	if (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !i915->media_gt)
> +		return &i915->gt0;
> +
> +	return NULL;
> +}
> +
> +int intel_pxp_init(struct drm_i915_private *i915)
> +{
> +	i915->pxp = kzalloc(sizeof(*i915->pxp), GFP_KERNEL);
> +	if (!i915->pxp)
> +		return -ENOMEM;
> +
> +	i915->pxp->ctrl_gt = pxp_get_ctrl_gt(i915);
> +	if (!i915->pxp->ctrl_gt) {
> +		kfree(i915->pxp);
> +		i915->pxp = NULL;
> +		return -ENODEV;
> +	}
>   
>   	/*
>   	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>   	 * the full PXP session/object management and just init the tee channel.
>   	 */
> -	if (HAS_PXP(gt->i915))
> -		pxp_init_full(pxp);
> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
> -		intel_pxp_tee_component_init(pxp);
> +	if (intel_pxp_is_supported(i915->pxp))
> +		pxp_init_full(i915->pxp);
> +	else if (intel_huc_is_loaded_by_gsc(&i915->pxp->ctrl_gt->uc.huc) &&
> +		 intel_uc_uses_huc(&i915->pxp->ctrl_gt->uc))
> +		intel_pxp_tee_component_init(i915->pxp);
> +
> +	return 0;
>   }
>   
> -void intel_pxp_fini(struct intel_pxp *pxp)
> +void intel_pxp_fini(struct drm_i915_private *i915)
>   {
> -	pxp->arb_is_valid = false;
> +	if (!i915->pxp)
> +		return;
>   
> -	intel_pxp_tee_component_fini(pxp);
> +	i915->pxp->arb_is_valid = false;
>   
> -	destroy_vcs_context(pxp);
> +	intel_pxp_tee_component_fini(i915->pxp);
> +
> +	destroy_vcs_context(i915->pxp);
> +
> +	kfree(i915->pxp);
> +	i915->pxp = NULL;
>   }
>   
>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp)
> @@ -173,7 +219,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp)
>   
>   static void pxp_queue_termination(struct intel_pxp *pxp)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   
>   	/*
>   	 * We want to get the same effect as if we received a termination
> @@ -238,13 +284,13 @@ int intel_pxp_start(struct intel_pxp *pxp)
>   
>   void intel_pxp_init_hw(struct intel_pxp *pxp)
>   {
> -	kcr_pxp_enable(pxp_to_gt(pxp));
> +	kcr_pxp_enable(pxp->ctrl_gt);
>   	intel_pxp_irq_enable(pxp);
>   }
>   
>   void intel_pxp_fini_hw(struct intel_pxp *pxp)
>   {
> -	kcr_pxp_disable(pxp_to_gt(pxp));
> +	kcr_pxp_disable(pxp->ctrl_gt);
>   
>   	intel_pxp_irq_disable(pxp);
>   }
> @@ -278,7 +324,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
>   
>   void intel_pxp_invalidate(struct intel_pxp *pxp)
>   {
> -	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
>   	struct i915_gem_context *ctx, *cn;
>   
>   	/* ban all contexts marked as protected */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..04440fada711 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -9,15 +9,16 @@
>   #include <linux/errno.h>
>   #include <linux/types.h>
>   
> -struct intel_pxp;
>   struct drm_i915_gem_object;
> +struct drm_i915_private;
> +struct intel_pxp;
>   
> -struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
> +bool intel_pxp_is_supported(const struct intel_pxp *pxp);
>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
>   bool intel_pxp_is_active(const struct intel_pxp *pxp);
>   
> -void intel_pxp_init(struct intel_pxp *pxp);
> -void intel_pxp_fini(struct intel_pxp *pxp);
> +int intel_pxp_init(struct drm_i915_private *i915);
> +void intel_pxp_fini(struct drm_i915_private *i915);
>   
>   void intel_pxp_init_hw(struct intel_pxp *pxp);
>   void intel_pxp_fini_hw(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> index f41e45763d0d..0eee51c4a772 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -3,9 +3,6 @@
>    * Copyright(c) 2020, Intel Corporation. All rights reserved.
>    */
>   
> -#include "intel_pxp.h"
> -#include "intel_pxp_cmd.h"
> -#include "intel_pxp_session.h"
>   #include "gt/intel_context.h"
>   #include "gt/intel_engine_pm.h"
>   #include "gt/intel_gpu_commands.h"
> @@ -13,6 +10,11 @@
>   
>   #include "i915_trace.h"
>   
> +#include "intel_pxp.h"
> +#include "intel_pxp_cmd.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_types.h"
> +
>   /* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
>   #define MFX_WAIT_PXP (MFX_WAIT | \
>   		      MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 4359e8be4101..8ae4a459236e 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -9,18 +9,20 @@
>   #include <drm/drm_print.h>
>   
>   #include "gt/intel_gt_debugfs.h"
> +
>   #include "i915_drv.h"
> +
>   #include "intel_pxp.h"
>   #include "intel_pxp_debugfs.h"
>   #include "intel_pxp_irq.h"
> +#include "intel_pxp_types.h"
>   
>   static int pxp_info_show(struct seq_file *m, void *data)
>   {
>   	struct intel_pxp *pxp = m->private;
>   	struct drm_printer p = drm_seq_file_printer(m);
> -	bool enabled = intel_pxp_is_enabled(pxp);
>   
> -	if (!enabled) {
> +	if (!intel_pxp_is_enabled(pxp)) {
>   		drm_printf(&p, "pxp disabled\n");
>   		return 0;
>   	}
> @@ -30,7 +32,19 @@ static int pxp_info_show(struct seq_file *m, void *data)
>   
>   	return 0;
>   }
> -DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(pxp_info);
> +
> +static int pxp_info_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, pxp_info_show, inode->i_private);
> +}
> +
> +static const struct file_operations pxp_info_fops = {
> +	.owner = THIS_MODULE,
> +	.open = pxp_info_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +};
>   
>   static int pxp_terminate_get(void *data, u64 *val)
>   {
> @@ -41,7 +55,7 @@ static int pxp_terminate_get(void *data, u64 *val)
>   static int pxp_terminate_set(void *data, u64 val)
>   {
>   	struct intel_pxp *pxp = data;
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   
>   	if (!intel_pxp_is_active(pxp))
>   		return -ENODEV;
> @@ -59,23 +73,26 @@ static int pxp_terminate_set(void *data, u64 val)
>   }
>   
>   DEFINE_SIMPLE_ATTRIBUTE(pxp_terminate_fops, pxp_terminate_get, pxp_terminate_set, "%llx\n");
> -void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
> +
> +void intel_pxp_debugfs_register(struct intel_pxp *pxp)
>   {
> -	static const struct intel_gt_debugfs_file files[] = {
> -		{ "info", &pxp_info_fops, NULL },
> -		{ "terminate_state", &pxp_terminate_fops, NULL },
> -	};
> -	struct dentry *root;
> +	struct drm_minor *minor;
> +	struct dentry *pxproot;
>   
> -	if (!gt_root)
> +	if (!intel_pxp_is_supported(pxp))
>   		return;
>   
> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
> +	minor = pxp->ctrl_gt->i915->drm.primary;
> +	if (!minor->debugfs_root)
>   		return;
>   
> -	root = debugfs_create_dir("pxp", gt_root);
> -	if (IS_ERR(root))
> +	pxproot = debugfs_create_dir("pxp", minor->debugfs_root);
> +	if (IS_ERR(pxproot))
>   		return;
>   
> -	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), pxp);
> +	debugfs_create_file("info", 0444, pxproot,
> +			    pxp, &pxp_info_fops);
> +
> +	debugfs_create_file("terminate_state", 0644, pxproot,
> +			    pxp, &pxp_terminate_fops);
>   }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
> index 7e0c3d2f5d7e..299382b59e66 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
> @@ -10,10 +10,10 @@ struct intel_pxp;
>   struct dentry;
>   
>   #ifdef CONFIG_DRM_I915_PXP
> -void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *root);
> +void intel_pxp_debugfs_register(struct intel_pxp *pxp);
>   #else
>   static inline void
> -intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *root)
> +intel_pxp_debugfs_register(struct intel_pxp *pxp)
>   {
>   }
>   #endif
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> index 2e1165522950..bce20a86e05a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -18,7 +18,7 @@
>   
>   int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;

This is called from outside the PXP code, so we need to check the pxp 
pointer before de-referencing it (see also pxp->pxp_component further 
down this function). It does look like the stack it's kind of circular 
so it should be safe (pxp bind -> huc load -> this function), but IMO 
better stick to the rule that all functions called from outside need a 
check.

With this fixed:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

>   	struct intel_huc *huc = &gt->uc.huc;
>   	struct pxp43_start_huc_auth_in huc_in = {0};
>   	struct pxp43_start_huc_auth_out huc_out = {0};
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index c28be430718a..da0ee619daec 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -3,14 +3,18 @@
>    * Copyright(c) 2020 Intel Corporation.
>    */
>   #include <linux/workqueue.h>
> -#include "intel_pxp.h"
> -#include "intel_pxp_irq.h"
> -#include "intel_pxp_session.h"
> +
>   #include "gt/intel_gt_irq.h"
>   #include "gt/intel_gt_regs.h"
>   #include "gt/intel_gt_types.h"
> +
>   #include "i915_irq.h"
>   #include "i915_reg.h"
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_irq.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_types.h"
>   #include "intel_runtime_pm.h"
>   
>   /**
> @@ -20,7 +24,7 @@
>    */
>   void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   
>   	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
>   		return;
> @@ -62,7 +66,7 @@ static inline void pxp_irq_reset(struct intel_gt *gt)
>   
>   void intel_pxp_irq_enable(struct intel_pxp *pxp)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   
>   	spin_lock_irq(gt->irq_lock);
>   
> @@ -77,7 +81,7 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
>   
>   void intel_pxp_irq_disable(struct intel_pxp *pxp)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   
>   	/*
>   	 * We always need to submit a global termination when we re-enable the
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 6a7d4e2ee138..892d39cc61c1 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -3,11 +3,13 @@
>    * Copyright(c) 2020 Intel Corporation.
>    */
>   
> +#include "i915_drv.h"
> +
>   #include "intel_pxp.h"
>   #include "intel_pxp_irq.h"
>   #include "intel_pxp_pm.h"
>   #include "intel_pxp_session.h"
> -#include "i915_drv.h"
> +#include "intel_pxp_types.h"
>   
>   void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>   {
> @@ -26,7 +28,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>   	if (!intel_pxp_is_enabled(pxp))
>   		return;
>   
> -	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
> +	with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref) {
>   		intel_pxp_fini_hw(pxp);
>   		pxp->hw_state_invalidated = false;
>   	}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 85572360c71a..ae413580b81a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -20,7 +20,7 @@
>   
>   static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
>   {
> -	struct intel_uncore *uncore = pxp_to_gt(pxp)->uncore;
> +	struct intel_uncore *uncore = pxp->ctrl_gt->uncore;
>   	intel_wakeref_t wakeref;
>   	u32 sip = 0;
>   
> @@ -33,7 +33,7 @@ static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
>   
>   static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_play)
>   {
> -	struct intel_uncore *uncore = pxp_to_gt(pxp)->uncore;
> +	struct intel_uncore *uncore = pxp->ctrl_gt->uncore;
>   	intel_wakeref_t wakeref;
>   	u32 mask = BIT(id);
>   	int ret;
> @@ -56,7 +56,7 @@ static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_pla
>   
>   static int pxp_create_arb_session(struct intel_pxp *pxp)
>   {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   	int ret;
>   
>   	pxp->arb_is_valid = false;
> @@ -90,7 +90,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
>   static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
>   {
>   	int ret;
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   
>   	/* must mark termination in progress calling this function */
>   	GEM_WARN_ON(pxp->arb_is_valid);
> @@ -141,7 +141,7 @@ static void pxp_terminate_complete(struct intel_pxp *pxp)
>   static void pxp_session_work(struct work_struct *work)
>   {
>   	struct intel_pxp *pxp = container_of(work, typeof(*pxp), session_work);
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   	intel_wakeref_t wakeref;
>   	u32 events = 0;
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index b0c9170b1395..d50354bfb993 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -11,25 +11,20 @@
>   #include "gem/i915_gem_lmem.h"
>   
>   #include "i915_drv.h"
> +
>   #include "intel_pxp.h"
> -#include "intel_pxp_session.h"
> -#include "intel_pxp_tee.h"
>   #include "intel_pxp_cmd_interface_42.h"
>   #include "intel_pxp_huc.h"
> -
> -static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
> -{
> -	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> -
> -	return &to_gt(i915)->pxp;
> -}
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_tee.h"
> +#include "intel_pxp_types.h"
>   
>   static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
>   				    void *msg_in, u32 msg_in_size,
>   				    void *msg_out, u32 msg_out_max_size,
>   				    u32 *msg_out_rcv_size)
>   {
> -	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
>   	struct i915_pxp_component *pxp_component = pxp->pxp_component;
>   	int ret = 0;
>   
> @@ -79,7 +74,7 @@ int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
>   {
>   	/* TODO: for bigger objects we need to use a sg of 4k pages */
>   	const size_t max_msg_size = PAGE_SIZE;
> -	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
>   	struct i915_pxp_component *pxp_component = pxp->pxp_component;
>   	unsigned int offset = 0;
>   	struct scatterlist *sg;
> @@ -127,8 +122,8 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>   				       struct device *tee_kdev, void *data)
>   {
>   	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> -	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> -	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
> +	struct intel_pxp *pxp = i915->pxp;
> +	struct intel_uc *uc = &pxp->ctrl_gt->uc;
>   	intel_wakeref_t wakeref;
>   	int ret = 0;
>   
> @@ -164,7 +159,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
>   					  struct device *tee_kdev, void *data)
>   {
>   	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> -	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> +	struct intel_pxp *pxp = i915->pxp;
>   	intel_wakeref_t wakeref;
>   
>   	if (intel_pxp_is_enabled(pxp))
> @@ -183,7 +178,7 @@ static const struct component_ops i915_pxp_tee_component_ops = {
>   
>   static int alloc_streaming_command(struct intel_pxp *pxp)
>   {
> -	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
>   	struct drm_i915_gem_object *obj = NULL;
>   	void *cmd;
>   	int err;
> @@ -244,7 +239,7 @@ static void free_streaming_command(struct intel_pxp *pxp)
>   int intel_pxp_tee_component_init(struct intel_pxp *pxp)
>   {
>   	int ret;
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = pxp->ctrl_gt;
>   	struct drm_i915_private *i915 = gt->i915;
>   
>   	mutex_init(&pxp->tee_mutex);
> @@ -271,7 +266,7 @@ int intel_pxp_tee_component_init(struct intel_pxp *pxp)
>   
>   void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
>   {
> -	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
>   
>   	if (!pxp->pxp_component_added)
>   		return;
> @@ -285,7 +280,7 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
>   int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
>   					 int arb_session_id)
>   {
> -	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
>   	struct pxp42_create_arb_in msg_in = {0};
>   	struct pxp42_create_arb_out msg_out = {0};
>   	int ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index f74b1e11a505..7dc5f08d1583 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -12,12 +12,20 @@
>   #include <linux/workqueue.h>
>   
>   struct intel_context;
> +struct intel_gt;
>   struct i915_pxp_component;
> +struct drm_i915_private;
>   
>   /**
>    * struct intel_pxp - pxp state
>    */
>   struct intel_pxp {
> +	/**
> +	 * @ctrl_gt: poiner to the tile that owns the controls for PXP subsystem assets that
> +	 * the VDBOX, the KCR engine (and GSC CS depending on the platform)
> +	 */
> +	struct intel_gt *ctrl_gt;
> +
>   	/**
>   	 * @pxp_component: i915_pxp_component struct of the bound mei_pxp
>   	 * module. Only set and cleared inside component bind/unbind functions,
>
> base-commit: 886c7f9510ce20f099d27d9e7d9de32402c9e5e6

