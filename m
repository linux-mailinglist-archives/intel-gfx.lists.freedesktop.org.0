Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7007850A8BB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 21:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFD410E968;
	Thu, 21 Apr 2022 19:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE91910E968
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 19:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650567929; x=1682103929;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=sVo/hilHcpUMTaIfN5SMquFKEiqHOOqen1eIRuo3f7U=;
 b=gSOse3Seu0SJooR29aS4+hMKEx4PxsM5dxsPHJiwbkPIRHcJrhVmZWVP
 vqmHkoYVVKQnfl82bIgmT5tfMlRFUVFQixm1+Bqx2Q6PPkt1jov3awoP3
 yM7sUhnWrrke39EbddHEhrPz38Hb5hK09DQDIM8kKFMUtVfB8Zr7ilRvX
 +uz9PGLNy6/vZ4LCc6tKHVnKaxjP5BeG8AYIVHlSt6gmvJB6TS6maP0+e
 oFp5HXXOi39BA5hQ16pdETP05Us0iq7RiWBjQxcjdmbwHngpPX2TjWVYZ
 i5NLlGnMBj5veKAqi++MYewan73JwsOij1TG7G21eo1PuuFuWjub3ioRu Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="264621167"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; 
 d="scan'208,217";a="264621167"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 12:05:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; 
 d="scan'208,217";a="562702060"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2022 12:05:20 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 21 Apr 2022 12:05:19 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 21 Apr 2022 12:05:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 21 Apr 2022 12:05:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Apr 2022 12:05:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P14aq7Cry5nBoWFyJxYUK9Llyc61Y7kOp7FsO25KWCUWacL2MCMx+ioTngtdW3TB16rrryQ+Q81SVJhmJYOmnwrQ+TmB0a1wCKITVSFZHJOhMgwzwPAfvsbQVC3bS+2hRxCVHtY8Vhmrldi+nJ7wbUWZGEmAP3RZZ0pgt0u4YweTe/eUxxZQb7ekEE2j6jcCWu/41Vo6hTNvNZECGwDvh7W9LZIgSKjn8ZIVT1qU+nAuxhiIv/VL7y9atxZUlEW+VhbXoVeWOkWXyuYCIzm5u8cYGKAODPnUO2SAPdmLup0t/4TjiKpjugGq9oD0AEDG9WxhIGpevtAiFA/7s4jNIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o/PPAczhd/yRp14o1ec9Vx89MBkCfyk8tEoumzwCkk4=;
 b=KH627jp+9p1GM3InK6aBgN9EqQf9jyBEPTWs9quKq2nLhU/x07gDuzuuQNHoR8wOTy/OO/dZJaRtqv+XOZoU2Fm1CsNzRjZPPAktY5iBd3AygXZUnq7zZkPZMoycHhhNgZ4Mght8QuW3HdB0fzzsw5UiXbM6jNzPA7jLYBqC7cs+xieB0t7Ws7VRnpqNqomWaASKGFXaDyszn3F9FfNjKgvGbDB+qN5sqzEbuE2tF6DToYvK5Cz6JI4MW8Yb+4xgcg4bgLfjs+DL1dLqDlBP3tFAlYlOC0bmKGzVWyvsPGLkwRsJQuAvYDxYNGQpEpcbCCVUt98de4dghSL0Yeb90Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BY5PR11MB4354.namprd11.prod.outlook.com (2603:10b6:a03:1cb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Thu, 21 Apr
 2022 19:05:08 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5186.014; Thu, 21 Apr 2022
 19:05:07 +0000
Content-Type: multipart/alternative;
 boundary="------------d0FaQTbSBpaTBcauaDvCDlNR"
Message-ID: <c4fc11ee-17ad-86bf-36aa-feff2cc4aa96@intel.com>
Date: Thu, 21 Apr 2022 12:05:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, Alexander Usyskin
 <alexander.usyskin@intel.com>
References: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
 <165041742632.24581.4631977458912872690@emeril.freedesktop.org>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <165041742632.24581.4631977458912872690@emeril.freedesktop.org>
X-ClientProxiedBy: BY3PR05CA0001.namprd05.prod.outlook.com
 (2603:10b6:a03:254::6) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8cc55759-e9f5-4011-74ad-08da23c9d981
X-MS-TrafficTypeDiagnostic: BY5PR11MB4354:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB4354B2D07B9960CCB9ADF6C3F4F49@BY5PR11MB4354.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J6VAGclYONB+MLIMkBoiphQQk9N18lbgegZvE5n7lpMAgkY4tgIGRJ3FIEKFDM5iAANGM1c4fo3CpiTtKKj7QgV5ELEmmCzFSESb9WnOQDL3DubH8Xlap9stQNBy1foDJRBigMzuSWG6dEYZpvcKWqPcPhuMmzL2W9U1cY6PyfnWBEyBjQ8/4wUIZF1tM2BHWRkGLc/sg3ogS8iDCyZDq7Hb7WaVB4cgOFOP115fKxD0cLuI/L9QH4XNSkZDlNs7a6mJz594Wswd5f1iciOtr7mGNmx20rb8cuNcNDf3Mhe7wOs3fXajwCCiLl6vL8PlKhMjVi1BoKk0ZtDdt0jhq6MX8XmsNGbWDaxTbT2kh1gDA5+0i8OLXTRfUUbWL9qLoWo63jWH8mvAZyZie+pRynC3bsArv031pFTrOjjzJNYsXWzieGyW6nIbQSQTBwL603sXt6DuSUPZiYc/UddXCl1ghS7nKRP74Fvpu4SU+jz358pWyKTwyovQvKl8sfBxPnF3IaZm5qoGx+f+eUpvoMQYq8sGMHOS4G+N3s7kjDGwKmv/3UlxZTcA8f+i8lRFjga7IMvjYjYmO649rDlgD8TegbVFhv2EgQSFOdGOBFPJjJb3HdIQluEf+ZaN6FX7DP6cx33Bs+UPxf30ZW3B1gBtx2NZsJolrfWvhEuR3XwgGz4n/bDUHgkSz1Yr2mgKppqvdBZwt9jd0J008JUjLI/iTrFCDvAHz+9/1GykZekaqsLl/bWZCKK+rlYZLPMSXGwrm5gPho7/cUOnD2AkO8O6Ivmcf+NkVWehzakU8T2JIjKukRUloTublS9/0frx+c8YfPjAa9GD0WT2ZWte5/3i50l1JVflDMcQXw8KZU4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(966005)(53546011)(6486002)(33964004)(66946007)(40265005)(66556008)(26005)(6512007)(36756003)(6506007)(21615005)(31686004)(5660300002)(6862004)(38100700002)(66476007)(82960400001)(86362001)(2906002)(186003)(508600001)(31696002)(30864003)(8936002)(316002)(6636002)(2616005)(83380400001)(166002)(37006003)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXVmbmkwTG5RM0NTaFBtbi9HQXAvR3FLejRmRTQxRWRCRzlJL3ZPVGJnekpa?=
 =?utf-8?B?am9IcnphZlZSbCtLb1R4azNNMmJkejRseXBGam5WSjJhaXo4Q3dGeXczV3Mz?=
 =?utf-8?B?NVhTMi83MzBUOStJNUhnaE9QVy9LRzc4VVNCNGlFS2RrU2JHWGFoYWl6ZmdO?=
 =?utf-8?B?eVNyYjFIL1NQREp1bFhJOXlRQ085VW9pY0E1UjFCRUdPRy91b0xZVEw4aUk3?=
 =?utf-8?B?V01mUStTK1cxYURLTk8vemRZK3JiRGgwLy9jN1VmOVNEQnp3SU9qNll6RENv?=
 =?utf-8?B?cE53MGdTTU0vaXZlZjc0N1NFMEorSEwzUVlyaWI5NytNTEY0bjRRM2tINUhj?=
 =?utf-8?B?ZWlOaENTZStNLzFNSlpCcHZSdmdFenQ3YlgwazNOT2V6QlpwazRKQ3BJWHZi?=
 =?utf-8?B?RVVTcW9rOGFUZkFEazJhSFhrWWdBZWFHNHl2aWlhQTQ0VGN3bWJrLzJ0SmE2?=
 =?utf-8?B?aEd6b1FtOWZPZk0xd3VTU0MrbnNnOE1VTlNKdVdKaGlCVlB0VzhkRFVlbWpq?=
 =?utf-8?B?THJWYTcwNW1ITTZkZHFqU0hqZTRYMW80bmVGTHk0Y2dhbzZiTEYzditXQTRG?=
 =?utf-8?B?NWJxSFIwTHpMaU8zSjg2TW8zRlJpMDdDMzdEQlNGajlicEhBdkYzdG16V0Zx?=
 =?utf-8?B?L20zMVczOFEvOFF2b1VTTHJrMHRUVDBPR1FnTGMxWDlNL1p3M1dIcGF3STdF?=
 =?utf-8?B?cEo1eGtRRjQzL1RLRzA0NkZqcmhRZ2diYlJJeEFWbWVXRXBQYVBnY1Ftcml4?=
 =?utf-8?B?Zkdnb0Z2VTd1ZURKSU4rZDhSRFVWNXRjZ0t5TnpnNlIwK2hOWjhRekIxVmIz?=
 =?utf-8?B?NC9mcmIvay9wcnRVWWZPbE5DWVg1TDBUVjZOZEJ0bURMRmhVWFZ4ekYxc0ZP?=
 =?utf-8?B?SWVZdmNJS25BQXVTQTd4UWM3N2pwZHp3b0RiVEs5UHdjSWZWNkV5ekN1c0ZC?=
 =?utf-8?B?a3h0OTNhS25LUXNGT2xaRUFYTmlIUnpEQ0R6OGZnaHFnRmhpOERxN05mZVA3?=
 =?utf-8?B?NnpOKzUwT2Q4c2ZwejJWSElmUUhScUpRSW5hdlRaWEhmUlpkU0ZQUC9yM3RV?=
 =?utf-8?B?ZzFCQVQzUHdoMW5BRkJ3K2huU3l3Q2ZPSGNhcHc1QlQ0WHl0eWU4UCs1Yllm?=
 =?utf-8?B?NWhWT1RidHE2RzBwcXYveDV5ZTFtSU5lc2UzN21zSldHSFJPYUtzcXllUWpv?=
 =?utf-8?B?Qk5JNzRvRk55OGZKd05jUUoxdSthdmJTT0hLNWxEREF2dWx2NjJBcjFwVmpi?=
 =?utf-8?B?Mnc2WFovR2lNc1I3amdtWG1YbnJZQXhmcG54R2FVYncrZ3puVFhqTXMzVzVz?=
 =?utf-8?B?cE9CZVA4RmJYMFVrQlM1clpmYXdYYmcvL1pKZytkZ0NaK1d6T2NGNFp6RlRa?=
 =?utf-8?B?UjlZdDhSb3U0bUg5OVR0QnJXY1VRejBtV24xa2lQODdlc2wwZmdHbW5iZXZv?=
 =?utf-8?B?UFhDUXR4WkFJK2ZDT1RseEEyWjIzU01XYzNKWm41aVBhYXh1UGkzbkk2OVJQ?=
 =?utf-8?B?ZUw3allXaWtEeFlBZTFUWGEyTTdBaHlaSTVnQ2hSR3lURE1KMnMyV3RHN0U4?=
 =?utf-8?B?OENVV01CamIydFc4bGlrbkMvYWgyNU9GTXZGVlVZeFRDN3lZVFJDdS91bnIz?=
 =?utf-8?B?V2JGdmE5T0RkQ3hJMC9rYXllZTZzWWg5TTlTcVYvMDE4VE1zREI3a0FueFNl?=
 =?utf-8?B?bXZXVDRmVlR6ODY4NFMwZGREdDBHU2hmZnhlUHAraDduYUpaMGY0NmhKbFRz?=
 =?utf-8?B?RE14T0FwQ3B3TzRpTnY4TmZBbXV1WGpnTVVRdzdKU1VzL2libi9tSlVQMjFG?=
 =?utf-8?B?dVBic0NXY1lBdGJrRXZDKzY1NFhBVWhyTWRTS2lidGNJRU1MaDVPcDhBUGli?=
 =?utf-8?B?WFBrZWd1eUowZURvb2QxS3FCR2Y5TkRTMXorN0JsOVVUQmJTKzJBMGhUUm5r?=
 =?utf-8?B?NnpndW9xbE5HOGJJT2FXYnVCWXR4M2hGMXVES3ZQaXlHRlk1NDlqMHlZRytp?=
 =?utf-8?B?cC9XaG9GUzRlQW1lY2p6S3NZdnlKY04xRVlaRHdDZFhEN0lCZFQ2QXo4NkNV?=
 =?utf-8?B?SWtoSXp6SmlhVVdSTm43TGN2NS9Lc0trbmZ1aEh6SzV2cVFkbzgwODNQSFNp?=
 =?utf-8?B?YzlRSjFiVm81Y294Nms1Y3I2a0E5N1BGYlRUWnIyZzk0MDVnRXRnempsTDNK?=
 =?utf-8?B?WGRkZVlLMHloc3dwU0ZaL2Y3U1E0dnlOV0lQc2xFclRhYXlLQW1BQjZXZkNk?=
 =?utf-8?B?R0RIVThJV1kwZFUzRm91R0FDaTFGTmVWTmRpVmhvdWNzR2FZOGJ1bjYyTm4y?=
 =?utf-8?B?MDRDUTNlZ3BCVHpMYkNiS0p1a05kZWFxYldMRjE1b3FoK2h4Q0xPVlM3S0Jn?=
 =?utf-8?Q?MVSt5TUl8R3jCJcHZW7yWWqNJmUC+rpj7xJh8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc55759-e9f5-4011-74ad-08da23c9d981
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 19:05:07.8866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hS7gM05ZwtlbVU1VOYXUmnIOqW5+v6HSPkA/RQsFb81nRKR/O3bocvzbpZjpgOSCGw5/YlSFwOS2ENQ55NZtqrySmG0uQX2K00SLFJXhdmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR1ND?=
 =?utf-8?q?_support_=28rev7=29?=
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

--------------d0FaQTbSBpaTBcauaDvCDlNR
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 4/19/2022 6:17 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	GSC support (rev7)
> *URL:* 	https://patchwork.freedesktop.org/series/102160/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11520_full -> Patchwork_102160v7_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_102160v7_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_102160v7_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 11)
>
> Additional (1): shard-tglu
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_102160v7_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>

This is unrelated (code is not executed on TGL and is not display 
related anyway).
We already had an ack to merge the mei patches via drm-intel, so pushed.

Daniele

>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@gem_lmem_swapping@verify-ccs:
>       o {shard-tglu}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html>
>         +2 similar issues
>
>
>     Known issues
>
> Here are the changes found in Patchwork_102160v7_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@feature_discovery@psr2:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@feature_discovery@psr2.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@feature_discovery@psr2.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@gem_ctx_persistence@engines-mixed:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_ctx_persistence@engines-mixed.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>)
>  *
>
>     igt@gem_eio@in-flight-1us:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@gem_eio@in-flight-1us.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_eio@in-flight-1us.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>  *
>
>     igt@gem_exec_balancer@parallel-keep-in-fence:
>
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#5076
>         <https://gitlab.freedesktop.org/drm/intel/issues/5076> /
>         i915#5614 <https://gitlab.freedesktop.org/drm/intel/issues/5614>)
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>      o
>
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>
>      o
>
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      o
>
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>  *
>
>     igt@gem_exec_fair@basic-pace@vecs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2849 <https://gitlab.freedesktop.org/drm/intel/issues/2849>)
>  *
>
>     igt@gem_exec_flush@basic-wb-rw-default:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@gem_exec_flush@basic-wb-rw-default.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>      o
>
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>
>      o
>
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>
>  *
>
>     igt@gem_lmem_swapping@random-engines:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_lmem_swapping@random-engines.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-off-1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>  *
>
>     igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html>
>         (i915#768
>         <https://gitlab.freedesktop.org/drm/intel/issues/768>) +1
>         similar issue
>  *
>
>     igt@gem_userptr_blits@coherency-unsync:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@input-checking:
>
>      o
>
>         shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>
>      o
>
>         shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>
>  *
>
>     igt@gen7_exec_parse@basic-offset:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gen7_exec_parse@basic-offset.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +45
>         similar issues
>  *
>
>     igt@gen9_exec_parse@batch-invalid-length:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gen9_exec_parse@batch-invalid-length.html>
>         (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@i915_pm_rpm@modeset-pc8-residency-stress:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html>
>         (fdo#109293
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109293> /
>         fdo#109506 <https://bugs.freedesktop.org/show_bug.cgi?id=109506>)
>  *
>
>     igt@i915_pm_rpm@system-suspend-modeset:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html>
>         (i915#5420 <https://gitlab.freedesktop.org/drm/intel/issues/5420>)
>  *
>
>     igt@i915_suspend@forcewake:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@i915_suspend@forcewake.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@i915_suspend@forcewake.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>  *
>
>     igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>  *
>
>     igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>  *
>
>     igt@kms_big_fb@linear-32bpp-rotate-90:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>
>      o
>
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3777 <https://gitlab.freedesktop.org/drm/intel/issues/3777>)
>
>      o
>
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3777 <https://gitlab.freedesktop.org/drm/intel/issues/3777>)
>
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>  *
>
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-b-ctm-0-75:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-c-ctm-negative:
>
>      o
>
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-negative.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-negative.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +5
>         similar issues
>
>  *
>
>     igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         fdo#109279
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109279>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +13
>         similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-suspend:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#109278 <https://bugs.freedesktop.org/show_bug.cgi?id=109278>)
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>  *
>
>     igt@kms_flip@2x-flip-vs-modeset:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_flip@2x-flip-vs-modeset.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +2
>         similar issues
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html>
>         (i915#3701 <https://gitlab.freedesktop.org/drm/intel/issues/3701>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +2
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +64
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +7
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_lowres@pipe-b-tiling-none:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html>
>         (i915#3536 <https://gitlab.freedesktop.org/drm/intel/issues/3536>)
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +35
>         similar issues
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>      o
>
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>      o
>
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>
>      o
>
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>
>  *
>
>     igt@kms_psr@psr2_cursor_mmap_cpu:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +1
>         similar issue
>  *
>
>     igt@kms_psr@psr2_dpms:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_psr@psr2_dpms.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>  *
>
>     igt@kms_sysfs_edid_timing:
>
>      o
>
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_sysfs_edid_timing.html>
>         (IGT#2
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2>)
>
>      o
>
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_sysfs_edid_timing.html>
>         (IGT#2
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2>)
>
>  *
>
>     igt@perf@buffer-fill:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@perf@buffer-fill.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +50
>         similar issues
>  *
>
>     igt@prime_nv_test@i915_import_pread_pwrite:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@prime_nv_test@i915_import_pread_pwrite.html>
>         (fdo#109291
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109291>) +1
>         similar issue
>  *
>
>     igt@syncobj_timeline@invalid-transfer-non-existent-point:
>
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html>
>         (i915#5098 <https://gitlab.freedesktop.org/drm/intel/issues/5098>)
>  *
>
>     igt@sysfs_clients@fair-1:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@sysfs_clients@fair-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>  *
>
>     igt@sysfs_clients@fair-3:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@sysfs_clients@fair-3.html>
>         (i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>  *
>
>     igt@tools_test@sysfs_l3_parity:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@tools_test@sysfs_l3_parity.html>
>         (fdo#109307 <https://bugs.freedesktop.org/show_bug.cgi?id=109307>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_balancer@parallel-balancer:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html>
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk5/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846
>         <https://gitlab.freedesktop.org/drm/intel/issues/2846>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk4/igt@gem_exec_fair@basic-deadline.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html>
>         +2 similar issues
>  *
>
>     igt@gem_exec_params@rel-constants-invalid-ring:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl6/igt@gem_exec_params@rel-constants-invalid-ring.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@gem_exec_params@rel-constants-invalid-ring.html>
>  *
>
>     igt@gem_exec_schedule@wide@bcs0:
>
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl1/igt@gem_exec_schedule@wide@bcs0.html>
>         (i915#5725
>         <https://gitlab.freedesktop.org/drm/intel/issues/5725>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_schedule@wide@bcs0.html>
>  *
>
>     igt@gem_exec_whisper@basic-queues-forked-all:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html>
>         (i915#118
>         <https://gitlab.freedesktop.org/drm/intel/issues/118>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html>
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454
>         <https://gitlab.freedesktop.org/drm/intel/issues/454>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@i915_pm_dc@dc6-psr.html>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921
>         <https://gitlab.freedesktop.org/drm/intel/issues/3921>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346> /
>         i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html>
>  *
>
>     igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#3614
>         <https://gitlab.freedesktop.org/drm/intel/issues/3614>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend@c-dp1:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         +4 similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         (i915#3701
>         <https://gitlab.freedesktop.org/drm/intel/issues/3701>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>  *
>
>     igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
>
>       o shard-iclb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html>
>         (i915#5293
>         <https://gitlab.freedesktop.org/drm/intel/issues/5293>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html>
>  *
>
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>         +4 similar issues
>  *
>
>     igt@kms_psr@psr2_cursor_plane_onoff:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html>
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         +2 similar issues
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb4/igt@gem_exec_balancer@parallel.html>
>         (i915#5614
>         <https://gitlab.freedesktop.org/drm/intel/issues/5614>) +1
>         similar issue
>  *
>
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#5614
>         <https://gitlab.freedesktop.org/drm/intel/issues/5614>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#4148 <https://gitlab.freedesktop.org/drm/intel/issues/4148>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11520 -> Patchwork_102160v7
>
> CI-20190529: 20190529
> CI_DRM_11520: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_102160v7: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------d0FaQTbSBpaTBcauaDvCDlNR
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/19/2022 6:17 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:165041742632.24581.4631977458912872690@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>GSC support (rev7)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/102160/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/102160/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11520_full -&gt;
        Patchwork_102160v7_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_102160v7_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_102160v7_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 11)</h2>
      <p>Additional (1): shard-tglu </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_102160v7_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    This is unrelated (code is not executed on TGL and is not display
    related anyway).<br>
    We already had an ack to merge the mei patches via drm-intel, so
    pushed.<br>
    <br>
    Daniele<br>
    <br>
    <blockquote type="cite" cite="mid:165041742632.24581.4631977458912872690@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@gem_lmem_swapping@verify-ccs:
          <ul>
            <li>{shard-tglu}: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html" moz-do-not-send="true">SKIP</a> +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_102160v7_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@psr2:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@feature_discovery@psr2.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@feature_discovery@psr2.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@engines-mixed:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_ctx_persistence@engines-mixed.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099" moz-do-not-send="true">i915#1099</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-1us:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@gem_eio@in-flight-1us.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_eio@in-flight-1us.html" moz-do-not-send="true">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063" moz-do-not-send="true">i915#3063</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_exec_balancer@parallel-keep-in-fence.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5076" moz-do-not-send="true">i915#5076</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5614" moz-do-not-send="true">i915#5614</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_exec_fair@basic-deadline.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846" moz-do-not-send="true">i915#2846</a>)</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_fair@basic-deadline.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846" moz-do-not-send="true">i915#2846</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)</p>
            </li>
            <li>
              <p>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vecs0:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2849" moz-do-not-send="true">i915#2849</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-rw-default:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@gem_exec_flush@basic-wb-rw-default.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gem_lmem_swapping@parallel-random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>)</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_lmem_swapping@parallel-random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random-engines:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_lmem_swapping@random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/768" moz-do-not-send="true">i915#768</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@coherency-unsync:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@input-checking:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@gem_userptr_blits@input-checking.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4991" moz-do-not-send="true">i915#4991</a>)</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@gem_userptr_blits@input-checking.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4991" moz-do-not-send="true">i915#4991</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@basic-offset:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@gen7_exec_parse@basic-offset.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +45 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-invalid-length:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@gen9_exec_parse@batch-invalid-length.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856" moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109293" moz-do-not-send="true">fdo#109293</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506" moz-do-not-send="true">fdo#109506</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@system-suspend-modeset:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5420" moz-do-not-send="true">i915#5420</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@forcewake:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@i915_suspend@forcewake.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@i915_suspend@forcewake.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send="true">i915#5286</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send="true">i915#5286</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110725" moz-do-not-send="true">fdo#110725</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614" moz-do-not-send="true">fdo#111614</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3777" moz-do-not-send="true">i915#3777</a>)</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3777" moz-do-not-send="true">i915#3777</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723" moz-do-not-send="true">fdo#110723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615" moz-do-not-send="true">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send="true">i915#3689</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886" moz-do-not-send="true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886" moz-do-not-send="true">i915#3886</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886" moz-do-not-send="true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886" moz-do-not-send="true">i915#3886</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
          <ul>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-negative.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>)</p>
            </li>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-negative.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284" moz-do-not-send="true">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +5 similar
                issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279" moz-do-not-send="true">fdo#109279</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a>) +13 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274" moz-do-not-send="true">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5287" moz-do-not-send="true">i915#5287</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-modeset:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_flip@2x-flip-vs-modeset.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274" moz-do-not-send="true">fdo#109274</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send="true">i915#2122</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3701" moz-do-not-send="true">i915#3701</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280" moz-do-not-send="true">fdo#109280</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825" moz-do-not-send="true">fdo#111825</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +64 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280" moz-do-not-send="true">fdo#109280</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145" moz-do-not-send="true">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265" moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3536" moz-do-not-send="true">i915#3536</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-edp-1-planes-downscale.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send="true">i915#5235</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-a-edp-1-upscale-with-rotation.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176" moz-do-not-send="true">i915#5176</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-b-edp-1-upscale-with-rotation.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +35 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</p>
            </li>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068" moz-do-not-send="true">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</p>
            </li>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_psr2_su@page_flip-p010.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441" moz-do-not-send="true">fdo#109441</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_dpms:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@kms_psr@psr2_dpms.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441" moz-do-not-send="true">fdo#109441</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5519" moz-do-not-send="true">i915#5519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sysfs_edid_timing:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl3/igt@kms_sysfs_edid_timing.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2" moz-do-not-send="true">IGT#2</a>)</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@kms_sysfs_edid_timing.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2" moz-do-not-send="true">IGT#2</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@perf@buffer-fill:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@perf@buffer-fill.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +50 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@prime_nv_test@i915_import_pread_pwrite.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291" moz-do-not-send="true">fdo#109291</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5098" moz-do-not-send="true">i915#5098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-1:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl7/igt@sysfs_clients@fair-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-3:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@sysfs_clients@fair-3.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@tools_test@sysfs_l3_parity:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb8/igt@tools_test@sysfs_l3_parity.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109307" moz-do-not-send="true">fdo#109307</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-balancer:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send="true">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk5/igt@gem_exec_fair@basic-deadline.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846" moz-do-not-send="true">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk4/igt@gem_exec_fair@basic-deadline.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@rel-constants-invalid-ring:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl6/igt@gem_exec_params@rel-constants-invalid-ring.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982" moz-do-not-send="true">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl8/igt@gem_exec_params@rel-constants-invalid-ring.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@wide@bcs0:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl1/igt@gem_exec_schedule@wide@bcs0.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5725" moz-do-not-send="true">i915#5725</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl7/igt@gem_exec_schedule@wide@bcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118" moz-do-not-send="true">i915#118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@i915_pm_dc@dc6-psr.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454" moz-do-not-send="true">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@i915_pm_dc@dc6-psr.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-snb7/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921" moz-do-not-send="true">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-snb6/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race@bc-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3614" moz-do-not-send="true">i915#3614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html" moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3701" moz-do-not-send="true">i915#3701</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145" moz-do-not-send="true">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265" moz-do-not-send="true">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5293" moz-do-not-send="true">i915#5293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176" moz-do-not-send="true">i915#5176</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html" moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441" moz-do-not-send="true">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5519" moz-do-not-send="true">i915#5519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb8/igt@gem_exec_balancer@parallel.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send="true">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb4/igt@gem_exec_balancer@parallel.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5614" moz-do-not-send="true">i915#5614</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5614" moz-do-not-send="true">i915#5614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send="true">i915#4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1888" moz-do-not-send="true">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068" moz-do-not-send="true">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send="true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642" moz-do-not-send="true">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068" moz-do-not-send="true">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4148" moz-do-not-send="true">i915#4148</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11520 -&gt; Patchwork_102160v7</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11520: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_102160v7: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
    <br>
  </body>
</html>

--------------d0FaQTbSBpaTBcauaDvCDlNR--
