Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 567AE59684F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 06:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81B310E623;
	Wed, 17 Aug 2022 04:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E5D10E644
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660711982; x=1692247982;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WSi0+RbEojxgHhsg4egy6ubu4SIqA6e8UxKwCuQswgc=;
 b=ALHhl4VsV6ppBRkanqqBr2L+XvpANDuexItqCagaXyEN7tVegOpkJ3L4
 0QuxZZc4QznQn8DAlW5tVdASD0EusNHbrsaZ+dSvJoUpoTsSKeh1ne9bd
 R7RTEoRnP0+RC/XjFGcTCxg2M/P54Qn37k5ZHajsDwik56Gey7rcEdo5O
 RwDsMgQvPZZI7H9iuLE0HRP2cOxVZjPsDUKJGwawnlVYufBtxqSNSrOuG
 lVdNRC3D53fvsgwfWY5Rn0IgTg5sjc3GHOZ2FkUy9JfBloKtKQXUw93+U
 vCYh9BHZrYxyvaQ0CGwqy7oGE3694HvDswU7fo6ohCcQwpER/hcJMG3CH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275454217"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="275454217"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:53:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="783273427"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 16 Aug 2022 21:53:01 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:53:01 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:53:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:53:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5gKcXlZOICgD0a6YVujV3QZSPgO7XEb/brZZyF1oEpfXhLGmK6Dq5ZkzVrNA9FkKZW0TfWy3ZLcTEMqTNLb8QhJYl5caCGKp7crDvRiF8BfT6PnUj2tXbEbiCzBxdOgKjNtOxaxJaT1wXtdLQgLyYmJCwkq7QQpOJTpWTXe/knqMiPudWPWF3cBdfxfNUw3B9Iw3fjUoNHhtLkicaIG/fNH9pgPZxTkMRvN98AX1ZYZDVAngE308TA8Qs7cGJxiC+JE8YIAanwWKplKiEqeGa8KLTiAjYjdIXJtaD+RRMRVIqBviSoRxiizeYJ1V/0+5+IObcGw1VRSNpSHNvs2lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BHRgHC9akex2FL87tGKS5nPTlDLDrC0D/mnsHU1aU1U=;
 b=WwW4RAlxn2szgodCfwFd6LMyFPau8qfFliGy4oI2xbrUHGg5EczQ0tcsoqs2UBYsinMFwIgCPqq3Bd9Dfk9Kym8zMNSd+gxHyxohpLJK9TOr9AMjl15AMjXbqmOP4d7kVZMCUmnnxY+WfeQoI/TZfGpBfvSBePaOl4+RCRau+tUdJgXa1ScJU8zXslOm7/csBZn1ihFxTM98Mgyt1WhyuFVPok/8/vsD1zRHXrwjspCDsfeF7oVSIiVtXe7gAfl7h6VwxMhqMpVZnYTVL8qaba5l238d1h300uiI9EewIS/1CK5lE5WGYdAFsLWYu5Y411sU7/zrY/khj7LVplQxQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM8PR11MB5590.namprd11.prod.outlook.com (2603:10b6:8:32::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Wed, 17 Aug 2022 04:52:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:52:55 +0000
Date: Tue, 16 Aug 2022 21:52:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817045253.6vhi6ovy5pjulgsk@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4bce2e0a-7c63-48fb-e049-08da800c597b
X-MS-TrafficTypeDiagnostic: DM8PR11MB5590:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LBCGCVNWGTcvMOR01YvAewKyrbgV7MOkqOrmIsQ1GSQK1R8yBwpLkNbvaXLAyWgsJaUOap7VSA/o/B1XcN6nNnd7cEdTaI/TXY6XQ4Tfc+1cnTHiAD/k3Rj8KW7b7bGCkbOAlOi1a5+vB0t8e5r4pOEgxP3zuZr6tDornSbq9oARt3VKWXcbE/nTIPUeC4yVH72OtaTOfkXl3wA6a71Dt+VxRgMtSBaZ3P4H6DW4cRMg2K2dxF32j7xbODRWyFVEy9yWU6M+4dub82cW2agsHI6dpDdhkXYvrctxm18ULE8tZm2Ac2tH4YlQO/0lL/NVs/gkuJanr7k7aMUVnmTYKNBIBW+xspefaXRvKb+IzGnGjwQlAKov0sDw+LossZpgqpwjj/OiViPeu1q4QiK4PAMHiGTq/8qdN5QQUfORMhATXD/CvQyLf/TMbYaxzZOpKCA1W+wTZgZRA1aKQ//irjEAMW3xm4cz4TcY4kf7wjUGlaOE6En1uLmj8R45TypW3h7hzxQ2DKboJAj3UsoLpZLZLOK/we9AUFxXfRfy14cUzImULtWp8AhqUCIW8gkEu6hdk371gJ+N07TablLaVwU7GOn39t1L4JKk/kFLqiS7tC+Fz+vzKhGj6UipMM6UWrgiTrL43OTlGsfJhie2N/G+R3+XemHSdUCXvoYv0+KfkRywZDh3a0ZqwNKstk2BQuVTtLl0MjwtBMLXozBkOlKd0+umquv95mDQ0khdFYAkMVbhYD5RfY8Z6BNXX9Bl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(396003)(39860400002)(136003)(346002)(83380400001)(82960400001)(86362001)(38100700002)(66946007)(4326008)(8676002)(66476007)(66556008)(6486002)(478600001)(6636002)(316002)(9686003)(6512007)(26005)(1076003)(186003)(4744005)(41300700001)(5660300002)(6862004)(8936002)(36756003)(6506007)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hErb4+X6Lwyg4CVEUAMOiYh5WMQHhAYj/xaEyF7wlOmrGmCcRsgxeR2PVRaU?=
 =?us-ascii?Q?BPO4c/qf3pATTfRSNszTR1E+aIGE3NWQueE3VujTfLPMy16PCGmn3GdlczzV?=
 =?us-ascii?Q?m0ci44pHRTEDy532oMBm2Opq/1IhsoTWUKiKCpyk3JaDLFpMhWSnKEiDxo5Y?=
 =?us-ascii?Q?72qV4OOjdpJbJr0CdeAWYwobuFQSLT0qTklcBDJ2Ho+/ekxEu79b45UMoAa+?=
 =?us-ascii?Q?8ZyyEO+EOEv///z5qYYLSbdyxB5zpC2P3wlQDso0MxXO0F8TPHlGTNtHN08C?=
 =?us-ascii?Q?GWCiGA8MySsUIIaF6w/0O8+U52AcZlyAj52uBNXBoS4/mJJmLCce99SuYHv7?=
 =?us-ascii?Q?xWkkgUUmktbEKkKZisHZ9upSHwU68Nun8OAcIljJgAz+nABTgwT2DgWCHcKV?=
 =?us-ascii?Q?W2UoSxImdPGtrIuXYbkTFQHYDdpqioQRGncnZUF3iz3o/t/aEFiEhBGK85LS?=
 =?us-ascii?Q?QeLR+kDJPEW73yh5UCwnrXtO4ubxGmEuGWlUGqUcaSa0YlpkXEqbRktsES58?=
 =?us-ascii?Q?RwrJUE/7ZtjYxehFlXqFdQ0KesM6YJ1yx7HoETaaKSyAHsLCSu/RRvpJt71F?=
 =?us-ascii?Q?u3u2ySmhma9/2UM4KZexFfDlqCfc5D/uIozeHpnmtUhl8BXMGDPOkNLxC1UD?=
 =?us-ascii?Q?Vd1HvkYI66JwDCgacarZE/nKJipgciqwHKHbE+y+Sw2ANVUWysS0WxkQVF9n?=
 =?us-ascii?Q?UIRwG4FJtnArVJDwYySjOZmOBcPPY5Xix4+ydDbIMuuV0Paf3qWYdB0x1Ez0?=
 =?us-ascii?Q?oo8lWUBwMzORz248sdlu7wnBBgZItkB7enWYNkhLf+EsJu6jQ00W0pJxhKTi?=
 =?us-ascii?Q?uPbY24Vwry7NPmNfDXKnR/lcTh5q3JKKHnGKZAfcuusBHijJlg9ke4pfs1hA?=
 =?us-ascii?Q?OFPvIhjqA4Oam5HKujXJB9C4wySQO3pfn2ysatl9uqBVq0tj7I2obffai8yd?=
 =?us-ascii?Q?ig/xihmLTjmS1pgHfdvkm9etKYhMnPAvhRRggN+/EYYAYzN6hyeYoMQAcr1R?=
 =?us-ascii?Q?qmbmcbz5pnt6QjOvABBare2EIBPG94G2iz5Tgzz9M8Xez+3wx3uRlUIhkDOM?=
 =?us-ascii?Q?qJQ8ohYwI8tt44Pf4bJaAKlTR/knTz99LrNGdFRAfmDtzPmdLjO3QgUqM6Pt?=
 =?us-ascii?Q?mIwQSCIE3AZFDA+NFMHvRYQ89kvaTyUh+aruGP19mmay/TPFwoLFuL+LvXH2?=
 =?us-ascii?Q?igBEtZeUPRAArAK2AEc66H/sRCgDFGL+25Nn7GH67a1gb+zPSzP6xgBKvzXv?=
 =?us-ascii?Q?vYoG69GwvS9m7IN2hVPad8ADQcwYY+bEIw4VJxTyQgCdg9RLZXnK4+2HIxTN?=
 =?us-ascii?Q?uVDVVaNQ7ZrCxmgPHguTdYl9oL9p8j0gFbDWkZmKo4CpZNcaT8rPRhbsCwrJ?=
 =?us-ascii?Q?RJZ+faL2rE4+4fJbLIQluT3Ro3oJbk2ox+9O3oqIG7B+TbPdcJdzK2fzv21U?=
 =?us-ascii?Q?00wh+76nlnMQyW1btfrztZGQs93Y0DAHZ6rXLHJRF1IfxNNUU/VJgSfx596y?=
 =?us-ascii?Q?gtU4oIgR3xFFifHN33HazIsI0DuyTN4h69bUMblkCSTNmruUZ2QQz0NfPdbo?=
 =?us-ascii?Q?OkE6dE3c0V3uWiPCsa0Z/dXJgbaX8PlJrNOiGYf+rDsceP0lbERRtwMkfZIS?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bce2e0a-7c63-48fb-e049-08da800c597b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:52:55.7318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m7qORvX+Rhb3Z2Eb5QHH8afaaGax75E9sjV4aCkNUA1NBpDpIeXeXvkisg/BooD6dEI+rLUrk9WRpqPG4NEbKF6j7/AXm79Lpv1Q8DuJYtY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5590
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/39] drm/i915: add display sub-struct to
 drm_i915_private
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

On Thu, Aug 11, 2022 at 06:07:11PM +0300, Jani Nikula wrote:
>Add display sub-struct to drm_i915_private, and start moving display
>related members there.
>
>This doesn't help with build dependencies yet, but adds a lot of clarity
>in organizing the display data, and who accesses display data and where.
>
>This is a beginning, there are still stragglers, but need to start
>sending the patches instead of accumulating tons more.
>
>BR,
>Jani.

I was not sure if I would have time to review all the patches, so I
started adding my r-b on each of them. But I made it through the end.

You can add my  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
on all of them, except patch 5.

For patch 5, movingo clock_gating_funcs, I'm not really sure it's what
we want.


thanks
Lucas De Marchi
