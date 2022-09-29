Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7676A5EEEB2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66B010E989;
	Thu, 29 Sep 2022 07:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C3510E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435826; x=1695971826;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2HHXZq546kq9WVQ40/PW0ItGC4Ug7da0Q5GNee445u8=;
 b=e5qgfuqgXzEV4TxeBblBStl2l8kaeemkVh3y5i12p2QjRGT9mkIWJQoT
 2DSttNlKQl50kWuwUU2mtmxAUtloFo6hC1gymkiOkFMoj2qMNDWRni4PG
 o3vjJg2qMGjXzEJbIVz0TTDC94rSGpzgtcp30jFcv9MWnqVp9ffluwTrp
 7+N0wyGu3li7mkJdTWOrEgO75Y/BvtlBMr9okf5yLqtSGdIaMemREEqdx
 hLJUKwncSGfK/Gc+HjEeHIeIRc8E5/UBjeoQUIWVTdIzeyhgEN8sIPiZ9
 A4HBpMVt2+iWALX1BnDK3YnYw/edTvqb4V6YHzXggJQU58DINwQKMe4S6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="328190298"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="328190298"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="690709318"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="690709318"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 29 Sep 2022 00:16:58 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 00:16:57 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 00:16:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 00:16:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 00:16:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+6eRN+f4XlQEvOPuRTwzCkDN6Qy+QPI2PWtvZ1aVzicl95UusRNZMQbbIrBO6OVRQBQp78II0pF2PB2hxJNXOMhobFbJY8Eic4OWlEdltvD0sMTTkOj9f7iImJgzbfQjVSRvG6MdABBBD5k/4PbhxKkq7Pr80s2JpJ6QImXSnWl7kH0Prk81vUHQBB6sUkQ3H8ZukOft0JgWZ/A1pywXGBol2j4nSUtr+Qz2XM54lkkyqPJfXWtD9Sjw4Dh72TfyX4d6DZPT6AlCnhJJ8imb771RR9Si18UyACEQTv0INUWPaBbxzrqlue2qrbI+Wgl0na8mK12d2XU98O8Ch7qUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xx2H8VjuaBESfrRwOPpCpahSkFiE+u5vyl423HjWWvs=;
 b=jUbL7p17Ny382Ub97kkZNHHPG40hQPL8XnfHZkug0/HfsYgtG7hJ56Nq5QBOCKvxqnBnC/eqRAzhJJa8ALi5taXGyG9zTRPGwdQ8a381BqTE9FOpobcZdCO8KEmBIB5p9kgRpma4V5heN70Iae0ApmFBn5e7Zsc+voGihFozGuWQu0ivynljahriZzRClQ4A7Fnk/9j7SClLPRKUiVz75+qrCPI9sv5BLdheY7Y7bEUB0eOYQ5NkKjuYfQ9lMJHU/C+z5fzhdCOz6ENYMi0chWc5WDUxIt+LydBELfVtKMDtva0n193MMJ0Y82m/G/aoTpGtPZQFtFIcIZsjvqIJ3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BL1PR11MB5413.namprd11.prod.outlook.com (2603:10b6:208:30b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.18; Thu, 29 Sep
 2022 07:16:54 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3755:4837:1896:43f3]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3755:4837:1896:43f3%2]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 07:16:54 +0000
Message-ID: <a014b592-6949-cb21-e4b5-f094ee01629a@intel.com>
Date: Thu, 29 Sep 2022 12:46:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Riana Tauro <riana.tauro@intel.com>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <166398490595.5803.3808234893298934883@emeril.freedesktop.org>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <166398490595.5803.3808234893298934883@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0205.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::12) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|BL1PR11MB5413:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bf8cd88-cd71-4537-a758-08daa1ea963b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bGccFhdoAVW86VUTpW2bRbggdjSZKIQtDTZr+NlQFSGPeml6UIffzmunoYGDeN7Zc/TkFPQ76MViTj3HRQK9s5icOwH4usGQLeAifTDB2+5hlIGuCU2iUk0yDS/gIWbcP2ZEwbKVRIUKgdYz6PJD7OfIYe7zRpHraqHCChZ9svuv1cO8EzMab0O58xU1Xp6DNpJDf8TBMVBS8xX5dqOhdEPhyYy5A4dqBBc0hdNaE6oSz1Lei9HCc+TySuUPm2KzzJy26h9NL55BKX2q+khAG/7PKi8fRZYwMGlzn0LN8jh+A1Rc5BC2u/EhmebRSJjr6pT+RzWu7E32IC4XaPkIGfFFzmwxWp1Y41WETUqaseaMIKLvaDgmirJvx3AXQWEPuMS4g/x/L0/NKCbbpryIRM/XDctSz8Ilr3ufRSHtrOKrQ3UWBdq37CedSgNRoDED+7wJUxSfCmLMjfzfP78w78jHxNVD+FzjyspfKnml8d2I0BsPv0ZJGIfjKcExRDFjF27sWmhDp11D/aMAIS4HVLud+EycTDVk50j69xFD0ZmJqj1bcOoRR8RJ9uFaumsXskceW6XyYjanhrA8X3r5LQ76y7fdG6YT09fFPVKceJ7Z1QyntGM0a3HCwsTkbp1jKNJmNMavJbV2K22DcakxbAHiFHgJgn7gaIIL9pPnWG3WOD1dByRNH+otNwBt6ppqqAuNwbZ2Jll+SL5fWbmsrRWU6EhfA1gYAX8rt/ed/zggdpqOEfikHIE79KqR5B18cQOS4mJBLZpi1f96G1g17L4dVqFgx2rLM6sHAFSiVlYLAN8hqnykdvLM5Uo9Gzibz0TkaG5yrfi0/LuIjLQayasRYiWJt+CVrtILbSKVNZQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199015)(31686004)(66476007)(26005)(6512007)(186003)(2616005)(36756003)(478600001)(6506007)(38100700002)(316002)(82960400001)(2906002)(6486002)(966005)(55236004)(53546011)(6666004)(83380400001)(6636002)(8936002)(110136005)(5660300002)(66556008)(66946007)(31696002)(41300700001)(86362001)(30864003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmFMSDdGenlMYUVqRkc4Yy9GNnZLM1F5cGt3aXUrRzFPQlhXRTZ2bjRHMFA3?=
 =?utf-8?B?d0hVYUJOR0hBb2xqVUJHeU5sNklsZGc2YnJKdmg3RjJ4aUYrRTZZMHp6MDZO?=
 =?utf-8?B?OGpYTDBqTGxvNzErL1l0dHBpTFZzK2VPNE9ZL2dZbC9saFBjRlc3VWJ2aGJv?=
 =?utf-8?B?V1FjU3d6LzJ6VEJ6blEwL0tvcVNFUUF2MDEvenZxMlZ2SXRtdG5qZkRXSlNj?=
 =?utf-8?B?RGpBR282Y1paUS9EZXZmUEJxSUJpUHYwMXhMM2dDZERVTXlHdTJVa2JsS3pG?=
 =?utf-8?B?TWoveFJ0ME56dFBueFRkbnp5aTkyaUZ2a0xuS2Vra1B0V0F1R1NZQkhqZjZJ?=
 =?utf-8?B?c2Y0eXN4NWNPM3M3aVlSYmVRakxYRlpPc3BSYUNLT2lwaEdTMXF1YUJWTGpx?=
 =?utf-8?B?My9GS29JQzdzMFdEOXlKSFg1UjE3V2g0OFptTFpETzF1ZTg3RkZNbzViNTBy?=
 =?utf-8?B?SlZkNHl0cUJnRjMxT3hyMFRNeFBmVTlhamJ4UzAwbzJjZzJBR2FaQSsvaTRu?=
 =?utf-8?B?QTdDVk1wZ0JkZGRRYUxUeWhLVDgvRzRHNkd4M0JhcVhLN1IzZmlNM2pjT0JM?=
 =?utf-8?B?WGJTSHp0cmlyOUFzVFM5TUU0ZkhLaFZZVG0zTUxRZUM3NzVBSDlSVjZXZUlX?=
 =?utf-8?B?dm9UZ2dwdC9GUHRNN09XLzk3cEQybElsT3ZzUzBURUNGejl6eE1seGJSSmwz?=
 =?utf-8?B?YjZabk54ZUN2allrSDVwS3lEVU56dE5MK0NGQmg5eGg2SUdEb1c0U08wb0lF?=
 =?utf-8?B?bnVuWnBZSjB4R3pONzM1SVlHVWtKTlBwR3JXV2dMNDd6dmFMOEZxQkdpT2F5?=
 =?utf-8?B?czdJOVNmT2NzNTJBdUdGVVhMcjg5Q0FENUtob3ovRkQxNmpGVFkveWVveldx?=
 =?utf-8?B?QzZpenJPNUlSbXJ6SWtqcHNsQWJ0RlQ5Zys2ZmhhbUxFQjQ1cGk1NVBaZnBJ?=
 =?utf-8?B?Nm5XWVo2L3JjSTh4UG51eFJXK3d4SHQzeHhZTzUyL3F1Q24zMFJxa0t2L0Vs?=
 =?utf-8?B?Nm53eENZYVJkdnVSYmd3aThDZnEvVzArRVl6dmNVcGJmSVRhU241SDlJUWll?=
 =?utf-8?B?TGE4NFd5dWdaQ0NsVXpxUDYxYndXclpiL0NFL012amE4OHZHelowWVh3bzNr?=
 =?utf-8?B?YkRWQWxqUEZacmhXRTR6b0t5UUMzMjd3b0YrQ2Via1drWHRIYXhFY2NwQ3Fy?=
 =?utf-8?B?cE9OMjlkTUdrOEx5VTI1SUJ6K3Irc1R4VkhiUUFucXV1Z2FXWmZLRnlwbEZN?=
 =?utf-8?B?T3dDdWJCMkM4Zm5yV1VNNHpnSXROZTZEb1VYWDhCako0SDJLY20zdktNYS9Q?=
 =?utf-8?B?ZlFacVpackF4MEVRT1FUdUxDMG1aYTlkTFdaMnlBeEppSzNKZENFWEJDTUNm?=
 =?utf-8?B?ekhlVG9BNTdXdXdtT0w2akRPbElmRVF0ckFrQ2xtU1N3bFQzTGo5cVovT2di?=
 =?utf-8?B?UlZjSE1ZVGgrUVc1a3RwcTNWYVJWUUJhM2JIWEEvMDNyczllVGhCSjdjN2o4?=
 =?utf-8?B?ZDFoUmkzc1BlWnhPb1Z6UWkyLy9SNHNod2ZDSVRHdW51dVArblUvb0RGQjIy?=
 =?utf-8?B?dVlEM0tsYVhBc0RxTlc4RFNEQU95cnhOSkljMmZiRjRSVVV1WXp6NWJvTXVU?=
 =?utf-8?B?UEw5UzUzYWZMem9BUlovaXpxZVhUYjNRK0x4VFJTNllyVi9USVhHM3puczBq?=
 =?utf-8?B?T1c1aEtTMm5mRkszZ09lVGZTajNuUzczV0gwOXdlZGsrc1pqc21xMERBa2M5?=
 =?utf-8?B?VElqaXB1VjF2Sis5bU1RVVA3b3JEYytrelE3cUQvN3Baa0FIRmpEZEhNYktq?=
 =?utf-8?B?TWJCN0QrN05wVnEvbXhyTHN6MXYzZ2o4NVQ2Vlh2dm9IckMwQndJb3ZpM0x1?=
 =?utf-8?B?MDI1OXpMeGY3eVRBQnlSNlVvRDdYU0pEc2QyTm9rbmhEWGVYZzhlRno5SmFr?=
 =?utf-8?B?Y0NFQlhaRmhyNy9pMHhHUjJWbTkzNFVuS0hwRDdPNVBYZklqclhobWdBVWxt?=
 =?utf-8?B?Myt6WHVHaVBTbjZWK0x4eGp4eG1NV2NHRHpJQWJDd0RzQ2p1VXdtNWpvT0U3?=
 =?utf-8?B?a3JwTmVCakRwcHpGeW5xamlsQXF3YitlOFZ0TGU5d3ZTdVEwczBmVTh6dXlY?=
 =?utf-8?B?dVgzV1hJZElFU0NXMFJKamZPYzJ4SWpFUnRnQ0Vjdm1Bd1ZJMzdRRnRHWjVC?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf8cd88-cd71-4537-a758-08daa1ea963b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 07:16:54.2506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +jMWczEZaN8oUsSiRkCf38Jt+zD2H1AK1Tf8EbhqnBK8B+gqx0Q8FIzjoIU3wHQ3yAIlWhguezVYbm96nYihNN4Z9HaWdhjAiELKuslTL6E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5413
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_SLPC_selftest_live=5Fslpc=5Fpower_=28rev2=29?=
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



On 9/24/2022 7:31 AM, Patchwork wrote:
> *Patch Details*
> *Series:*	Add SLPC selftest live_slpc_power (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/108900/ 
> <https://patchwork.freedesktop.org/series/108900/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/index.html>
Thanks for patch.
Pushed to drm-intel-gt-next.
Br,
Anshuman.
> 
> 
>   CI Bug Log - changes from CI_DRM_12174_full -> Patchwork_108900v2_full
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
> 
> 
>     Participating hosts (10 -> 9)
> 
> Missing (1): shard-tglu
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_108900v2_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-glk2/igt@gen9_exec_parse@allowed-single.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-glk9/igt@gen9_exec_parse@allowed-single.html> (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566> / i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb5/igt@i915_pm_dc@dc6-psr.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb3/igt@i915_pm_dc@dc6-psr.html> (i915#3989 <https://gitlab.freedesktop.org/drm/intel/issues/3989> / i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_suspend@sysfs-reader:
> 
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@i915_suspend@sysfs-reader.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-270:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-270.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +43 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@ctm-red-to-blue:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@kms_color_chamelium@ctm-red-to-blue.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180> / i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html> (i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888> / i915#2546 <https://gitlab.freedesktop.org/drm/intel/issues/2546>)
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2 similar issues
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html> (fdo#109642 <https://bugs.freedesktop.org/show_bug.cgi?id=109642> / fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr@psr2_primary_blt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb2/igt@kms_psr@psr2_primary_blt.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb6/igt@kms_psr@psr2_primary_blt.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>   *
> 
>     igt@sysfs_clients@split-10:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl1/igt@sysfs_clients@split-10.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb5/igt@feature_discovery@psr2.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb2/igt@feature_discovery@psr2.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-bb-first:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html> +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html>
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-tglb7/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-tglb2/igt@gem_huc_copy@huc-copy.html>
>   *
> 
>     igt@i915_pm_rps@engine-order:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl3/igt@i915_pm_rps@engine-order.html> (i915#6537 <https://gitlab.freedesktop.org/drm/intel/issues/6537>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl7/igt@i915_pm_rps@engine-order.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html> +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html> +1 similar issue
>   *
> 
>     igt@kms_vblank@pipe-a-accuracy-idle:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl8/igt@kms_vblank@pipe-a-accuracy-idle.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl2/igt@kms_vblank@pipe-a-accuracy-idle.html> +41 similar issues
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-glk5/igt@perf@polling-parameterized.html> (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-glk9/igt@perf@polling-parameterized.html>
>   *
> 
>     igt@perf_pmu@module-unload:
> 
>       o shard-apl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-apl8/igt@perf_pmu@module-unload.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-apl2/igt@perf_pmu@module-unload.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html> (i915#6117 <https://gitlab.freedesktop.org/drm/intel/issues/6117>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-update-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html> (fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12174/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108900v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12174 -> Patchwork_108900v2
> 
> CI-20190529: 20190529
> CI_DRM_12174: 3a5c0f391d00f80d1aa4d766511186412b338b74 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_108900v2: 3a5c0f391d00f80d1aa4d766511186412b338b74 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
