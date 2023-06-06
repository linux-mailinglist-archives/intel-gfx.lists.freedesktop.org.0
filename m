Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44033724AC6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 20:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F1810E14B;
	Tue,  6 Jun 2023 18:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A9610E14B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 18:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686074792; x=1717610792;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mWju0j/fbd4XSTS2O5kTI8jScKU/bsTSHpCTY4n7FLU=;
 b=IlL1Gz9xcJJZn552+TKM7JdhQUmUJ0e0OV6omMv+zw9fIvy5d+CtGTbK
 yCzFHHQicoc0Fa9sYdF4BFeqLD1N77Gj673azrS9jqIwpxg9M/0GlbsFn
 sKca8y64kFVo2aCxM5Yhd8DYd0/0pX0xkcC/ckp2gknexkZnHGBhmS3VJ
 QIrQNZcLQLvar7i2snoKQtQinndyS2d/2T6sO5k4N4zRa3mQYamayzvEc
 FGRPQFN3pFYNq6lpuIvRc7RD9PAJXTEHSEtdkWlj6OugmVN9jgTKaS2JE
 gBBRu8a9IO0JsXc7IIqJaIFUF8p8nvC2XD6rOYlnao/9/62YOSzJoNowN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="385075095"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="385075095"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 11:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="703300841"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="703300841"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 06 Jun 2023 11:06:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 11:06:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 11:06:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 11:06:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXb9EJTgbGVL33mv4tX8A1QRHiVy6ErRSkmK/z7qkRqxYrR0z6kw6SkpjQ2X330ClZp+epq3sDbqUPNdBniYPe+/7+CQE+xLYPTrXeRXokyhn7Mrr7stTzYI4cS+/l3xuToz8d3P+GH4IDjvFW7ANV7gCR8W+eyH1NK0X7Wd8G7l1mT8OFQ33+Nff4UCkZdsu/ac6lGKEDpE4u8t8ytawZkzkl+3KIyKJOEU3sZFabFIxvRyDP19nx5s4pntzeYyTWM2pFMJxZiQ+wzQW6C13WDzs7Vy8XwjDPOrhJcXOQBDCWfkchS4ct650CiBbizZcglNQ9NuN/uMhbeun1YkLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vJ7QVs759OoKKwchQ/9Ls5SBvbB4XDp+rLk8CD2d2E=;
 b=E8EOQUjYrEZQ4PBa7tziBszeV/4+myi+6XUU2GKVdr1wOxjP5lMhUSGV5KB9zSbFSbJiRlDFBjbO8BApyxrRh2wyi98zQiwT+JlSDkt3yWd+bjbD4dqBZCVxn4Fju+bcRzMbXHCj3JrPT+aW2VKWwsUh8/eczRsZIpyiFXxn/nMRllzg7BMHXXE4451o5MNg3IylTknPvpT5fztzpwigPMt+MXA5x5OZLoVym73qKIvcSw2lNwubPhovHHzdutJ61zN3YsxHW6ATNDG6w9HsL+ltplNd64RdwaLL0g+iGnZHmercb78jMtH8ESJPZN28X6GWdHtZiQUCAFMo82peOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB7475.namprd11.prod.outlook.com (2603:10b6:a03:4c9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 18:05:56 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 18:05:56 +0000
Date: Tue, 6 Jun 2023 11:05:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230606180552.GG5433@mdroper-desk1.amr.corp.intel.com>
References: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
 <168598445612.24736.3644344614787332501@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168598445612.24736.3644344614787332501@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR16CA0018.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB7475:EE_
X-MS-Office365-Filtering-Correlation-Id: 1467c8cd-82f7-4fea-fe80-08db66b8ac6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 34cjVNfeoVh3mCfV/p/mDur5ELLaqyz3+Bd3Dw3LKWxeB4B5LmI5w7YZVk4JCso7zALeVbcHeGj7ui7w3UUfnKuVkSRSf4KI96qTaN2esXylRcuUqukKxlG4RyQfFHmM1+uxf19b31nbLZOHlUnvwLW+2A77iI9trnKEZ9yFw1Ip9kikdCv09e0gOEssTxOOO6Cdi4DclAZCAUTG1TVhbyA4zVOpQY09BB0bLrmt7qJ+OyrzIwxuspRL5qIsyFT42vEzQtSvbQAa8rndbnghBKk4SwR8XcYMEOs3oZJJzclzhNNaV8z9PL2Cc1Jq64c9O6UfNHfST6uOwDuAadwBEFJe/iFWyrxG5umReGowxeyVehoti5NbUsG17VdqHk1j/7MW7OxiIyNUWfsNOfikc1gf7L+46zYHW/xkvcZ24X3AdrCOlLmEZflL1WMhYLbdpBOJYXIKTwgS83fzNJ44glRkGP/fvNJyodrLNI0FsVxm/W1a3NZvNHNJUhToLR6QeP8bW4xdWqN7588wpKPqCc0Mvp1QLDgbNtWmq7RuHbs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(82960400001)(478600001)(41300700001)(8936002)(4326008)(38100700002)(66476007)(66556008)(66946007)(316002)(6916009)(186003)(83380400001)(6486002)(966005)(6666004)(107886003)(6506007)(26005)(6512007)(1076003)(86362001)(15650500001)(33656002)(5660300002)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?plv35Lu9fAQTVkrXX6PsEnlFluoTYp2dd86p3Sf2d3Vx1uFYfpi55lMBb8Ut?=
 =?us-ascii?Q?DbuJFKehctAoVRlotfXmG09q1y38CBjMf1Y4NFyvF8w9NHlEf6nlcTikk2oL?=
 =?us-ascii?Q?Og9lI5nnHJqqyBYZVCcPWBEkPU6fTML/OLEiRTYhHwXu75w88kSornlVNQlH?=
 =?us-ascii?Q?A1VE9/pxKortXvcu2PuxjoBeaucfiZMMaCqnztZ3MSIbbPwR8Ww0Odc4mhJe?=
 =?us-ascii?Q?7+YoliFKC4tQGkrzUrXjOBMRLlg7U10A1D01KUIttupRW7yXwiXq+SllrmUS?=
 =?us-ascii?Q?/inv9ktxUT5hu3JzfmnfLZ1mbCaUmvPmrrE9p1CCMLpPNzBjWl0qt/mfaK2d?=
 =?us-ascii?Q?lTx21xOWpOIGcS1Mznnlj2CWJdH4s467ALl0pO7EN/CqmR/NW83r2rUFA90h?=
 =?us-ascii?Q?v6WLL6R62ac5t+xUxfI3ay+xuw/ME8MZi8F/KvDAmqCvuMCg2NDuKnL24Ni3?=
 =?us-ascii?Q?ovR0LLGhhz3JgWajzwH15nG72ZfnNoQmNy1ZnkgZiGtIETjbUjbBdg9NVcqJ?=
 =?us-ascii?Q?Vk797z8WAIxI+E7DZfWTNDXfsB0bw5FgDaY9kjqMoaouGs+tc7WBnhBE9UB5?=
 =?us-ascii?Q?+PTyNey+QZGMMJZ+zpD6ugJwJWgAPe6cfcipcYSnJ/xhOe3W+x26giyOFS5h?=
 =?us-ascii?Q?Qus5YCdatysxJJVYGzjCteZUtadDCArDSN2+xTQW2GMFPyGjKIslPZWWh80Y?=
 =?us-ascii?Q?UBgE8oBi8SELgPiWVEbKXQ5qu41bvqAwvutZU492hGkMkjAEbVKKLUeEOFQt?=
 =?us-ascii?Q?RL/xcYlAND/9jHuU1oTErem8If3gP1o2oL4E1ycjxNEIY8kMQcQ7a/lNS8wM?=
 =?us-ascii?Q?sJcJ6PLo7kdFoPqA51shUdKNZVL7KB2wbQ2eNnk+DtQsye/2TmCOv9F5TVGS?=
 =?us-ascii?Q?AcbLEXMyyboaxFmJ6d5XksKFLtpGvn6Q4A6OhcNtQDV0pDuXPozPB+tigS0B?=
 =?us-ascii?Q?OnfKoeDGIlmeVEV7yE5yvYS67wUssDAU6psbnWCHWe6tCTTEZXNIPAA4HYj+?=
 =?us-ascii?Q?x8m44ADnDmcaWXNVWwHULO2FTo6o4692beQXwL7pCP0HIkzVDMgj15erBLYH?=
 =?us-ascii?Q?akduDlJsAuMieQTW2LozISMgRUc5pw6xv7OfLaq+9RiNTFfe/tcV9fdWPUcZ?=
 =?us-ascii?Q?mAoHVA/6bUCsqAv4f3GgjYbpFA28UAjUOYxm/mE7HzPAgVgAiXcKT7dtCdWm?=
 =?us-ascii?Q?dnly42iVfcodaxiPHpC8lUZv2kBakUVqvU2llUEPgCuMLEGAajziGKZRn8vm?=
 =?us-ascii?Q?HOF91nDncJUwWlyhQJP2cRD6n/T04S9Q7FqhWLgaQK2cV3v35BycK0+hIO88?=
 =?us-ascii?Q?+ych+5EIAiyDdicHIT2EhnXw/tES1lvmbvxCCeu2sOo6haVY7Pqak56nndqt?=
 =?us-ascii?Q?m/ZlUKrDva/ERFUjOt8mQOuLbBKQXqPaB0jywQVZL1mhbsJhEvrjuCyHBH0b?=
 =?us-ascii?Q?yKnmMroRLPK1Qj0XdPI/Hjz9EKRR/uwW7xdpCwRrEZ+c6EINenk4i87mQ9S9?=
 =?us-ascii?Q?nPCSBKVWnHQW8xUO9w2n8SFnHWLfw/RL7z/8qJtFT75FPCk49BjVFqtbndHE?=
 =?us-ascii?Q?PvwnLNRVz3u2DRindaUAIwqphiE17I5qxTc2mZ0ytjO+vEQnaOs25vFQa2CF?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1467c8cd-82f7-4fea-fe80-08db66b8ac6a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 18:05:55.8053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cw9Zu1cnho2qQuv/izzu+cjX2l9v3R6mWgISclCr/bddgseHzJj3BFwLGeq7q44o3B9zdlYRu/74BpcOH38Tx4JERHKQX+77PzMQaSoED1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7475
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIFVw?=
 =?utf-8?q?date_various_*MAX=5FGT*_definitions?=
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

On Mon, Jun 05, 2023 at 05:00:56PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Update various *MAX_GT* definitions
> URL   : https://patchwork.freedesktop.org/series/118807/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13225_full -> Patchwork_118807v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.


Applied to drm-intel-gt-next.  Thanks for the patches.


Matt

> 
>   
> 
> Participating hosts (7 -> 7)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_118807v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][1] -> [ABORT][2] ([i915#5566])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4579]) +13 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-snb4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +27 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#2346]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271]) +34 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][9] -> [ABORT][10] ([i915#180])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#658])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-glk:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4579]) +2 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk6/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +4 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-apl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - shard-apl:          [ABORT][16] ([i915#7461] / [i915#8234] / [i915#8272]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-apl4/igt@gem_barrier_race@remote-request@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-apl2/igt@gem_barrier_race@remote-request@rcs0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-rkl}:        [FAIL][18] ([i915#6268]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][20] ([i915#2842]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - {shard-rkl}:        [FAIL][22] ([i915#2842]) -> [PASS][23] +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][24] ([i915#2842]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - {shard-tglu}:       [ABORT][26] ([i915#7975] / [i915#8213]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-tglu-9/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-tglu}:       [FAIL][28] ([i915#3989] / [i915#454]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-tglu-10/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][30] ([i915#3591]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - {shard-rkl}:        [SKIP][32] ([i915#1397]) -> [PASS][33] +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][34] ([i915#7790]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-snb2/igt@i915_pm_rps@reset.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-glk:          [DMESG-FAIL][36] ([i915#5334]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk9/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_cursor_legacy@forked-bo@pipe-b:
>     - {shard-rkl}:        [INCOMPLETE][38] ([i915#8011]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-rkl-7/igt@kms_cursor_legacy@forked-bo@pipe-b.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-rkl-6/igt@kms_cursor_legacy@forked-bo@pipe-b.html
> 
>   * igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-256:
>     - {shard-tglu}:       [ABORT][40] -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-tglu-9/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-256.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-tglu-5/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-256.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - {shard-rkl}:        [FAIL][42] ([i915#8292]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@perf@stress-open-close@0-rcs0:
>     - shard-glk:          [ABORT][44] ([i915#5213] / [i915#7941]) -> [PASS][45]
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-glk3/igt@perf@stress-open-close@0-rcs0.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-glk6/igt@perf@stress-open-close@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-snb:          [FAIL][46] ([IGT#3]) -> [SKIP][47] ([fdo#109271])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/shard-snb1/igt@kms_hdmi_inject@inject-audio.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/shard-snb4/igt@kms_hdmi_inject@inject-audio.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8174]: https://gitlab.freedesktop.org/drm/intel/issues/8174
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
>   [i915#8272]: https://gitlab.freedesktop.org/drm/intel/issues/8272
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13225 -> Patchwork_118807v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13225: de0c32427a022e2088494a289186214e80b4dba2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7318: c2d8ef8b9397d0976959f29dc1dd7c8a698d65fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_118807v1: de0c32427a022e2088494a289186214e80b4dba2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118807v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
