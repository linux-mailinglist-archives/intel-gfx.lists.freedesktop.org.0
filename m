Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2875ECBD0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 19:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A84A10E04A;
	Tue, 27 Sep 2022 17:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BED10E04A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 17:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664301544; x=1695837544;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Rtf5jHdfVB9T9yj9sXhtcD0Cnyqh/KlGHvD7f6r2Gqc=;
 b=eV8nJ21sRjSvavhNOJb/qOdh3hU6zIJMcE2AalNmblE5lvfbG4xhVj10
 EanPvhzJnmmb0P54Q7/95RXzaqtnN+mGz2M5MtdafO9shY5B5BPL0u9WT
 ubNIFBmg/zHhQMPpPod6smoTNANxaR0JhGamvXoePB11mXQTd6uSm1SvQ
 gxP1oivL2kBbrBsVF1BftaMiqyweCuK7s4QDCHTX91kda8QL0CHbkhXM2
 vpKx6qoj64V2JTqREBI1MxoAoZMbqIERc5zJYZveYsfLXdnpz4cUQAqiN
 PmhxBTHMKsb9RcrXZ97RkH5TNmGKsBANGQYvD/nmcFa069dc2NGXqdCrA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="281757992"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="281757992"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="725608717"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="725608717"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2022 10:59:03 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 10:59:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 10:59:03 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 10:59:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CL+kTQlDKLIBiNiKu2P5u39J7zjFtHQZODh4L9owT9txu9aEhVgc5mw+8Pn5A7uSfCsAOIf7a+I3vKz8JR97ct0GpOjcSPBoKFGF0YaX/zQuewBSRmWWpgY+hVpyS9sEw25Hnw84DqFX37HL3deYXmyae/7AnjUDSRNG7PMEcwVcaW0YrImOpcFdihQ1ozg3FpkZkJDR8Cr+JIpCQDspD/6Wgh7tXmJh1ixyof9X/DQNg3Ramxl0Xq5l2XCfvjP2UcxIOzp1JtFyG56px+52Lc/SXl4DxDjwsIHBJClzLkscYCu4M/74cF01gV7WtrAvfxIVhPKHdEavtQPxG1/ngQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRTV0GKqhd9qLxgcUoM+CCEf5/mNsH8tCbBPszSHD/4=;
 b=exhXN9mPdKyZ5+Ep2nXB6AoQsR8I4Sk5ARthmjtvOUZTAHVFH9b7B0v/iYLCSBJCvlvZ3DFSbHxQT+CBAw+sdiSuor1/srjQdff+8E4Aw7WQhQQdog5q/MK4mV5U1IXbniMXIeu6Tqk/6ZlYNTLmiB/aWD6veOWHVwtlCOyVyfjIw6P1nRCv2cq+s0pX8j3hz8Lm7qlXskbT+dvdS92I2som4BoNCS4KAdrhEIRKsAUN/qcyQJVpThFiWGRDoWZ7BWEbd6UIxX54xwR39WOhIF1wp3Qw5IpsLzmlp8qjjDEE/aQFL37b79UyQNgNP9GTnJAWy//2Kxs9souz/EWYeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BL1PR11MB5365.namprd11.prod.outlook.com (2603:10b6:208:308::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.27; Tue, 27 Sep
 2022 17:58:59 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%7]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 17:58:58 +0000
Date: Tue, 27 Sep 2022 10:58:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YzM54JvVPmwwBws4@mdroper-desk1.amr.corp.intel.com>
References: <20220922233112.243677-1-alan.previn.teres.alexis@intel.com>
 <166393359333.30117.2417971605932264145@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166393359333.30117.2417971605932264145@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0139.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::24) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|BL1PR11MB5365:EE_
X-MS-Office365-Filtering-Correlation-Id: 80e3fdb4-0274-447a-f4c9-08daa0b1f3db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7m1ceoblBe9R8dPcHZep4ANNoOETGiA8wDwB5lKO4jHId+Q5JhFeRXgwzhHc1h2D0XMNSfKfwSZ9RkdhV1Fnmx2k4HzvNuxy1bfij+g8XL6FPpBVyOrgKswqzLTtR+KG0tINp8iXLjku1aQLhEUrJtQoZAXfoU3JouR26dEdTdIUlTDkMJgWfcpl2/CBc6kbvXXMeN8jzjpKO/gDTUrxHfq9KAhQ3MQ269bHwGoOqOHAPRT6YptkvFmPZHqmgUb4gin1jwTmcgE8RP8QJYjFv2pC+vbdowvGHbIi7Aiww+F96SXaASUnLAx8kTeh5P9Sku2gXGi9gu0rAsfrlhC+7ALbOZCJSVtEWzoKPzybozIjhq5AINmiWsd0X5u4BlyEEmYl21PKXy7o+cl3N78/fRcXjaqmkmDezvazB9IdPQqym3x3/3+d4/hYF0Y45hY1ZPVBKpVSuV6Sm15drkELPUpTtHaOTXTKnR6L6dhxfm3IQANhERxEqakps7qTEroj3SIxQrDV686bZ4sUBBHKc6PfcUk7KRjATe6jQo6WCjAGow59fAOPfgMKbou9Wo79zsu7vQe8HB2lX1YElrbiSBXf7qpRQf1IzYeM0LkLjtOHBkUKesn+AgyvJ8ryXJ2HA+I2b3nHTDtQUYHeYdTzQHPrrupeTMnTBXoBSXJ1nNU0BRkh64Yd5Xr4uKMMY4qLbNzw7vEiBzgmQhwv8Lahb/ocoWPCKzmuIp/xbSa9ebYTCbZXqBDxarOcoAm/n+iJgqphNkpbxDc0zD2gMJxHiw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(396003)(376002)(136003)(451199015)(316002)(6916009)(8936002)(41300700001)(5660300002)(4326008)(86362001)(66556008)(66476007)(66946007)(82960400001)(6506007)(107886003)(6512007)(966005)(6486002)(478600001)(26005)(83380400001)(38100700002)(186003)(30864003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X5dWdJfVgzCfDCzEQvZPyt5O4WrqiP6KtdZfEdLiiGd7boCGfSBS5zWg7x4W?=
 =?us-ascii?Q?ZEAgAC7wf1NOdYa572XeBJLWZkktq0VC4woyvuuKxqVDj2gCKmqsxNO3Av1K?=
 =?us-ascii?Q?hS8isyG9IfBTPh4MoWBseu5LZc6fV42vzvBKYomkTgrpFkXaYZJiUWd7VEVW?=
 =?us-ascii?Q?ypsIghTw3yZQQfrY48i719gO21Z9mGT1ZC1J3rc80iOLIkRHCIeA4iR5kQog?=
 =?us-ascii?Q?qopfaNfXShy9nZpkqHlTfNHDEyT6QNujjLMJvox4SxvoTB2O1hGWlceiOV+c?=
 =?us-ascii?Q?SUeDMASujkpjQ/tnro7gMLKRn/0XTEMZJwo5Eblb6QysljrCsCeMjeM2KSLU?=
 =?us-ascii?Q?/t8A24OPQU0q/xUIh5aJ64wXu8Un8OYb6kOeraEnA7R+Y+mSGkp9HV1aKKfC?=
 =?us-ascii?Q?XFP68gUby3qMlRLEfLuqJVI3w9L/PcD31+4ckVNvAFkObH5V/QxjUJ++9XhQ?=
 =?us-ascii?Q?WmbHb9hPMc+TcUcG8HusawSOVq5ZnfMkfLkuAIcXKgMVvc+eH0udVnndgR4/?=
 =?us-ascii?Q?ijpeMwXGdytlfFL47FWhC9h0A+hDJyVZlMyIseohqfYFZDkT2bjl8VnN95LJ?=
 =?us-ascii?Q?b2wQW0Gq1qdD6jGoCqAwc81tcWJ3X67AXcectzYVq1VUX+jVFfQzPgJALk9Z?=
 =?us-ascii?Q?eTayEhKAafGk142Aug1ZacYXuPpLDdaH3TDAHjS1sPsfyEdoui2nbjEtHQRi?=
 =?us-ascii?Q?AEFIHIDQUYFCv+tyue0k/ZHUneR3y8PR2txcaCo1qSSY69Zvewnpp8D4XPbz?=
 =?us-ascii?Q?1psqATOoua2a13DGO8nnZLkxbLbr2YSbNqUtg7MIGh7vVXKwcdGc6mtCaMfh?=
 =?us-ascii?Q?m0xgEg9VfVo9JIzksOZnR2G7jSu+V8nk5fUg1HlLD7MtbcYgCC2UCvQrUBaH?=
 =?us-ascii?Q?IS4uIDqViJ4jvnvzUtC7ZRGKwe8nvpJWXOMIUNgab5SoykKLL2I/xO1iG0a+?=
 =?us-ascii?Q?9tNjGnq+DM75va+Ljom+eY8ykEzpvRn3FNox/Gwjnt3QJfKoM1Lof8xUsHFz?=
 =?us-ascii?Q?MwsiM6BFcGlLi3hmaoNZDtbppgL0LerZHnGaEo5nHezUokHz6SdWmnIFjNvc?=
 =?us-ascii?Q?wxvCQeS2Sl2IrHYz1jKKjJrK/HT+CAu5PcW2STeBAfQuf26GOJDpPaQpWA5V?=
 =?us-ascii?Q?784Nv1zdD0NnWh5p9flNAKcTxkBZLKaP2crg84B2LorGuRNa+zHzkhTSnmM+?=
 =?us-ascii?Q?fDG5Q4blhs1shKsfxZrV3uEP5nzRYF4ZjZlSNU/Ou6CPAW7LQo/DVgplDtFL?=
 =?us-ascii?Q?6f45TERze5b1RXk+G9bBjct4Pjc+gybUFevPBoKXPtLlB6wcObN/m4HIoiRT?=
 =?us-ascii?Q?fhR0Z7nj2Ss9HGZ/oAcVAB/eCriJQ5aFhpgSNi/l64QGifDg45ufsxkSnB4n?=
 =?us-ascii?Q?rNIfsyc+phit9/KE6q83xitPvr1qw/JCgDjYYCJy6g8Bs5+Mth8ewVZZakhD?=
 =?us-ascii?Q?2PU8wrGfF5Im726y51BUqlwsPaOHqCsoEhREcsEPwAS0qqh/4yLF5hZ+woCG?=
 =?us-ascii?Q?UlkMO1tYdUky+KlmVN9GLdm3VTVaU7QWm9k4zcqUnlMkwAYmw3Mt5nQb6Lpx?=
 =?us-ascii?Q?M6YP/+2VfK1dZSiq28gp2jtbyw1c97H7rn/QA1827xD1EX3jEh2LDM0l9Z3K?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e3fdb4-0274-447a-f4c9-08daa0b1f3db
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 17:58:58.9155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /BlgOAQytwPvvOiatvuFk6UFwKBlGxAO13OKyYJaaaZzmOLIlVdYursdULJdlcSFflbZre59d3AtULAcEqwe59hQSeDMIDDAgV3ODMPUrys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5365
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D__drm/i915/pxp=3A_Add_firmware_statu?=
 =?utf-8?q?s_when_ARB_session_fails?=
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 23, 2022 at 11:46:33AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/1] drm/i915/pxp: Add firmware status when ARB session fails
> URL   : https://patchwork.freedesktop.org/series/108928/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12169_full -> Patchwork_108928v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108928v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-snb:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4338]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb7/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb7/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb7/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb7/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb2/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-snb2/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb2/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb2/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#6433])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@drm_buddy@all.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#6268])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-apl:          [PASS][54] -> [TIMEOUT][55] ([i915#3063])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-apl1/igt@gem_eio@in-flight-contexts-immediate.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-tglb:         NOTRUN -> [FAIL][60] ([i915#2842]) +4 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109283] / [i915#4877])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl1/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk8/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#4270])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +105 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#2527] / [i915#2856])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#6537])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-apl6/igt@i915_pm_rps@engine-order.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl1/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-apl7/igt@i915_suspend@sysfs-reader.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl3/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#1769] / [i915#3555])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#5286])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111614]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#6095])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3689] / [i915#6095])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#3689] / [i915#3886]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>     - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111615] / [i915#3689]) +3 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium@hdmi-frame-dump:
>     - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk8/igt@kms_chamelium@hdmi-frame-dump.html
> 
>   * igt@kms_color_chamelium@ctm-0-50:
>     - shard-snb:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/igt@kms_color_chamelium@ctm-0-50.html
> 
>   * igt@kms_color_chamelium@ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_color_chamelium@ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][85] ([i915#1319])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3555]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#4103])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-iclb:         [PASS][88] -> [DMESG-WARN][89] ([i915#4391])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb3/igt@kms_dp_aux_dev.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb7/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109274] / [fdo#111825] / [i915#3637])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_flip@2x-nonexisting-fb-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#79])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#6375])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#2672]) +4 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2587] / [i915#2672]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#3555])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2672] / [i915#3555]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         [PASS][98] -> [FAIL][99] ([i915#1888] / [i915#2546])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#6497]) +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271]) +65 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-snb4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109280] / [fdo#111825]) +11 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][103] ([fdo#108145] / [i915#265])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][104] ([fdo#108145] / [i915#265]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_multiple@tiling-yf@pipe-a-edp-1:
>     - shard-iclb:         [PASS][105] -> [FAIL][106] ([i915#1888])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb8/igt@kms_plane_multiple@tiling-yf@pipe-a-edp-1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb3/igt@kms_plane_multiple@tiling-yf@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [PASS][107] -> [SKIP][108] ([i915#5176]) +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][109] -> [SKIP][110] ([i915#5235]) +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271]) +43 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#2920])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#1911])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][115] -> [SKIP][116] ([fdo#109441]) +2 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [PASS][117] -> [SKIP][118] ([i915#5519])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-iclb:         [PASS][119] -> [SKIP][120] ([i915#5519])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#533])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2437])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#2530]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-complete.html
> 
>   * igt@prime_nv_pcopy@test3_5:
>     - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109291])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@prime_nv_pcopy@test3_5.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#2994]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb3/igt@sysfs_clients@fair-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-apl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127] +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-apl1/igt@gem_eio@in-flight-suspend.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][128] ([i915#4525]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][130] ([i915#2842]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][132] ([i915#2842]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][134] ([i915#3989] / [i915#454]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-apl:          [FAIL][136] ([i915#2346]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][138] ([i915#2346]) -> [PASS][139] +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][140] ([i915#79]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][142] ([i915#5235]) -> [PASS][143] +2 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][144] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][146] ([fdo#109441]) -> [PASS][147] +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [FAIL][148] ([i915#5639]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-glk2/igt@perf@polling-parameterized.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-glk8/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][150] ([i915#658]) -> [SKIP][151] ([i915#588])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][152] ([i915#658]) -> [SKIP][153] ([i915#2920])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][154] ([fdo#111068] / [i915#658]) -> [SKIP][155] ([i915#2920])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][156] ([i915#2920]) -> [SKIP][157] ([fdo#111068] / [i915#658])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][158] ([i915#2920]) -> [SKIP][159] ([i915#658])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12169/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12169 -> Patchwork_108928v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12169: 5d9b8ac449d01e7d8c9253e1c939b5f3ca216f47 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108928v1: 5d9b8ac449d01e7d8c9253e1c939b5f3ca216f47 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108928v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
