Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A623B782BB7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29CF910E276;
	Mon, 21 Aug 2023 14:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D6510E276
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692627992; x=1724163992;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=dO60OvNJ473LQG8/kDJr3K7Bj/JK67bL+/va+KcCD/w=;
 b=kEXxpuws+TcDGTdc6VnKqcqmSbuo3G4j74adOwgKS2y8vzXDShHssRlQ
 q8f/E13PwgEwHIFq4kuIOFcssYTZUBoMni35oywlz2HQyUzP/dc0gLYM4
 h0DkXtHUrYUGdowArCWuBjQ/YPmIr3rAkfVaP38xqKGrJszg7iNRKaETN
 gxHPZWtAYH2xEBp/abEBB7KNVEXC+qi0Ef/yN4umdGNc7eJBhSg6OnFQW
 im6SFDjMc9PY1Dg9ieyj6+zbKT0fuWwGMYdQmRhA30T8g9hg2BivLIp3b
 9wOgcLGkQe0NjKJKP1A78XVKOlsAO7FkTIS6afo6YRcWhdoUoduATckme Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="372501353"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="372501353"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="765389633"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="765389633"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 21 Aug 2023 07:13:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:13:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:13:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 07:13:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 07:13:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lTus5XN0m7yJn7+Nj2mWrAeGkf9ZCrhr0NEQkojBmZ2XiJq9bkc7nE9PHZw5nnUJqx6XrnrmU4iYUwpnCfgFax5yOtRyXzvhq06Ghv2jx4O5pDGPOGlMoROmSLusyZ+uOl8jqe1sKwsR41eZv3si9dB/nrz25Mnqkouh3wEHAxYqhIw7/tP5tLENum/rzkEUzfzUS18ZQbq+EYtzMBvCNybBv09NevUnVAv8dicSbLRZ5WiUhND6/r2rBPeUksk/W1G05EUrHrJjHt6Ih+1NAoWoo4POOLNDbA4k09l03yX6eMB6sgWHLF5HqAxrTkNKgQNjEVvLbv9LiiNBeUU46Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=44y/e0XJIQwLwm2kxxRXexjJ4zvmLuyiLGkstPkfdEk=;
 b=TQiZO+sKrdGAtAiMtU7ZrEHuwi6JaLxYGAI92vGvpYTijWnGrJs/KoOz+ATPi1dnuVfGvjVH/c1Rd8m7O88TTEh07/E8CTaRjHFpefGkEgjxtVppGD6GXRxT5XAX7Gl0ugA+PgfxVC5FmmVwixjpAphA+uD81CyWe9L2E3i9WC8c6NdWHrH75/QG75gChR8FYX2eK8WqiFA/g1T5PLzXlaQgcy0X+jdiHr8lKBzeDAszKDUq1rAhHpBuecC4x25TL9FxHjwVASpjW27bCm+u8YDvzoIryVe97itWAdUczYCtjkBKTBuOxi4R/4aUqfrnS0nt/KPHkw9mdjm7QWPKyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB7107.namprd11.prod.outlook.com (2603:10b6:930:51::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 14:13:52 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 14:13:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230814200632.56105-15-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-15-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 11:13:48 -0300
Message-ID: <169262722829.6257.12178342730228808514@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:217::29) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB7107:EE_
X-MS-Office365-Filtering-Correlation-Id: 09af656b-2122-4968-3953-08dba250d8f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nhd0RWyO4mGYYj0fBUZOdlTydLQJAY2HY91rkmlAyt0Lb8oS9sEh4f8bfUSNgn1tT9TBxu+S/lPOlEkzw8zFcdiZ3BgbDPu7An2LmalG4IJDkrToh/JbSGoKyHeKb2h69EPFsJAi8c5Y5yAZpa391vOycyi6XAFaH7M1J8UHuAbTW+x79/sAgb2/AnElbMl0nn/PcYHoMDbMALH5oykIn382KXlm+DBKhDGZcobv+SycCkAo4IImF3F1BVXRss6XdatgcpqHNFYErUMVqCeEDAItf4iyz0DhYTirfZ2pTqmQIei4Uyv9V4+CUK5kmc+WeDf/3Fw0SriXueNnAjF8h9PKBeIVka6noTpaP34xoxnZu7AMSWL3xWj6MGbEWXg+zlEJKEJSG1/WP+acFizjpQvYiJqnGE+VscwgCwFkjhFtVtJUbdEN4HLufrdm7UzWVsr9/cEjACW91LkqtnYyYMcVwsRQBZGpsOtABYIASsWBUjojzzKbpdyJlDwU/uLtu4QBemIjOE91BsH24PRZIUEJNC8dlxwus6yZdz2rd/CAEa6J/zPkB/77KkR7spH4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(30864003)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(44832011)(26005)(86362001)(8676002)(8936002)(4326008)(316002)(9686003)(66946007)(6512007)(54906003)(66556008)(66476007)(82960400001)(478600001)(6666004)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXd4dTVnUVB0cThJMnVaYUZVT1ZPZ0hnTzhsYW1GUmZtWGU2OVdGcXlCV2VE?=
 =?utf-8?B?ZXBJMUk0dW80SGhRbWxnTmhLbU9US3FaeVFWdUpGWVhMSU9maGl4S0VPdjdv?=
 =?utf-8?B?eUNCaVhxeVEvcDNJZjBvdXNXNzMrNjJ6QjBZUVoyTGxSY3NrcVdXRnlSM2p5?=
 =?utf-8?B?OHBibDJPaDJJVWRkR1dzbUZoRHFWWTc3VGoxNDByaUh2NmJtRmtDSDFKVjh5?=
 =?utf-8?B?VGwwNVZjaHhRMGdRZUpFYnFjNlc0VUxLTVZCUGhXbyt3Yy9JeUJhU2VFVEhz?=
 =?utf-8?B?NkJ4QzNvZnNUZ3lXZmtZTjYyWFVDckdRVk9zZHJsZzhJN0RRR0J4TFJVN3Js?=
 =?utf-8?B?RVByc25YNmNvc3p3VVVIQklzT3YwcnkyaTdIcmFBRnV6YWZ0by9qMmRybzJi?=
 =?utf-8?B?TFJQaEtqaHVZTUJrajlvYklFZm0yNDZQa282bjBzUUVaYlBOdDZDT1hSb0dF?=
 =?utf-8?B?eWpvMlB3SlJpVFdVbHl6WFhyZ3pvNUlnUjhoTkVIVmJJWVk5cnlUbWdacjZw?=
 =?utf-8?B?Mk1HdUJlSldIaDJHcS9Yb3E0WG8vMWk0WUJvQ1Y4YXNwUE42L2V3TDcwVitS?=
 =?utf-8?B?R29BMWJlUmU5Vi9GUUprRFhzV24rcjBqbm5yZGlkczNaOWNyYkFYOThUQkhz?=
 =?utf-8?B?dUZvODFlRlZ5U2tBREtONTEyQ3pzVm9TSWV5UlJvWkk4bEV2L0VLbkVlQjlN?=
 =?utf-8?B?RWwvbC9qYldOSGw2QmZpbHJzVXRYK2F5em1LK1ZJcEpBZDNLemVuUmh5cE9X?=
 =?utf-8?B?UGIrWWhEMjEraHgvdWFMbnRXMlVZVDAzY09HRUhQUm5rWmRRWmtTaGNCWGgy?=
 =?utf-8?B?Q2JOajk1RzZpdUx5RmxwN29JM3lhYmJJTWdwN1d4MWpXUXR5SHdnOWllL2Rt?=
 =?utf-8?B?SUc0TDBqRjNMOXpQUStLN1N3UkV2Szd0TGxadTNlVFFVUTZjbzJjZ28yTjhz?=
 =?utf-8?B?dy9acHYwamhWQ2tTUjd5blJ6dHN5UE9pWEFFUHgxNFFpMmlqUFgrNHphdksz?=
 =?utf-8?B?TFhWZEtyckU2L1FNVHcydTZiZlZNSEx5aDJqL1FHS0dhS0pSQ1hjTUZ3ZUZE?=
 =?utf-8?B?TkVkU0tKR285MkVMKzFYdWU3VHFHWkI4VUtCYjF0L1hiNjEwMUYxV1ZGRzU0?=
 =?utf-8?B?V1hMeDdoV2JDYWJ2Q3hCd3E3dFNmbmVSVDYycm51cUpvbzB4RmV3UGV1Z1lK?=
 =?utf-8?B?QXErcmdyODlCaHdMSnBRYkE2dlBBMlczakcxVUhCcUVXeGxXclV0MDNTQ1BV?=
 =?utf-8?B?R0VsOVVkNWN1MHl5M3VEcFdvaHhHblB5cHhWZ2xSTkZITEdyRHFQSXhTUkFC?=
 =?utf-8?B?VldPdnYrQjl3cm5GOFBzS2dFdWpXQ0ZXK21hdFZkQWEyTzlWSWpmV2dpeUxV?=
 =?utf-8?B?SUNiZXI5cnM2ZGEwVTVjOWFUYW82Y0xRK3V5TzhBcFJST2dteEQ3TTYrQXI4?=
 =?utf-8?B?VU9RUDBKd2RQb2pwaE0xNEwvMHhPaUh4TXdmMUo5Y1VITWxVemt3RGxGR1B5?=
 =?utf-8?B?OW80aDRqUTljaTJCemw4dWFVaElGUEczV2l6bkR3UkhXU2hka0pZN0RyVmMv?=
 =?utf-8?B?Z1BRWmZnejc1bXJIN3NQQ08wRVN5YlFmUUl4cGIxWjJnZ3hWRHZlTDhCK3Jq?=
 =?utf-8?B?dkJQTUlXVWJpZlV4bmQvbzdBeGdzZmo3cUx0OW5HdVhwRFVRS2R4VkZjVWpX?=
 =?utf-8?B?NW9DYkZ1L2tBQ2FJSkxVdU1VTExGcklvMzdjRXRJaUZqam5pWXpUUEF6VnJa?=
 =?utf-8?B?SFBWMTJhd1JHYVdyWVkwZmxINVZ3eVRQRVowemt5S0drcVFFZ3pjTlBNS2FX?=
 =?utf-8?B?RmZxQ1dweXRFMEVtY2RNUHNjc3Q0TFllVFFMc0ZWdGFFTVQvRFNza2RNV1g4?=
 =?utf-8?B?MzBTR24zT2liN1BvSm52L0pMaXVRSms0SVBQenNwY0pjdnZKbWFUbFUyU2tJ?=
 =?utf-8?B?VERHUXYvb1ZlVEZtSFZYUTlObjVlRk95MWtIVHRaR21WU0h2NzVtSEt0QmZs?=
 =?utf-8?B?b1MvZ0F1azU3TmVIdGlGSi90cmRqOFpVUnhDeXNyZTlWVDc0UE9LR3BtWFdn?=
 =?utf-8?B?MFdMcVJUS1JrTFZTMCtObEpIamlFK2VuNDdxUTNnU21PTUhRTW5NUmRNaVVj?=
 =?utf-8?B?SnRFNlVGdTFoYzkvQ2ttbHVLOXlxb0UrMWc0TUgxOUNxZEp2UFdick0xT3dv?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09af656b-2122-4968-3953-08dba250d8f2
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 14:13:52.7592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3rlfkAghYKV1xsMsabIV2kcEdyhxEND7yL/wQI7YpmBQcSF/WYC1NblFyF6wbhBl7U35kHKjP+fdyI0sK/dkhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7107
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-08-14 17:06:37-03:00)
>Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
>of these workarounds are actually tied to MTL as a platform; they only
>relate to the Xe_LPG graphics IP, regardless of what platform it appears
>in.  At the moment MTL is the only platform that uses Xe_LPG with IP
>versions 12.70 and 12.71, but we can't count on this being true in the
>future.  Switch these to use a new IS_GFX_GT_IP_STEP() macro instead
>that is purely based on IP version.  IS_GFX_GT_IP_STEP() is also
>GT-based rather than device-based, which will help prevent mistakes
>where we accidentally try to apply Xe_LPG graphics workarounds to the
>Xe_LPM+ media GT and vice-versa.
>
>v2:
> - Switch to a more generic and shorter IS_GT_IP_STEP macro that can be
>   used for both graphics and media IP (and any other kind of GTs that
>   show up in the future).
>v3:
> - Switch back to long-form IS_GFX_GT_IP_STEP macro.  (Jani)
> - Move macro to intel_gt.h.  (Andi)
>v4:
> - Build IS_GFX_GT_IP_STEP on top of IS_GFX_GT_IP_RANGE and
>   IS_GRAPHICS_STEP building blocks and name the parameters from/until
>   rather than begin/fixed.  (Jani)
> - Fix usage examples in comment.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>Cc: Andi Shyti <andi.shyti@linux.intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> .../drm/i915/display/skl_universal_plane.c    |  5 +-
> drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 11 ++--
> drivers/gpu/drm/i915/gt/intel_gt.h            | 17 ++++++
> drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  7 ++-
> drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
> drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
> drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
> drivers/gpu/drm/i915/i915_drv.h               |  4 --
> 10 files changed, 61 insertions(+), 45 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/=
gpu/drm/i915/display/skl_universal_plane.c
>index ffc15d278a39..d557ecd4e1eb 100644
>--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>@@ -20,6 +20,7 @@
> #include "skl_scaler.h"
> #include "skl_universal_plane.h"
> #include "skl_watermark.h"
>+#include "gt/intel_gt.h"
> #include "pxp/intel_pxp.h"
>=20
> static const u32 skl_plane_formats[] =3D {
>@@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_pri=
vate *i915,
>                                  enum pipe pipe, enum plane_id plane_id)
> {
>         /* Wa_14017240301 */
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>+        if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_=
B0) ||
>+            IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_=
B0))
>                 return false;
>=20
>         /* Wa_22011186057 */
>diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i9=
15/gt/gen8_engine_cs.c
>index a4ff55aa5e55..6187b25b67ab 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>@@ -4,9 +4,9 @@
>  */
>=20
> #include "gen8_engine_cs.h"
>-#include "i915_drv.h"
> #include "intel_engine_regs.h"
> #include "intel_gpu_commands.h"
>+#include "intel_gt.h"
> #include "intel_lrc.h"
> #include "intel_ring.h"
>=20
>@@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *=
engine, u32 *cs)
> static int mtl_dummy_pipe_control(struct i915_request *rq)
> {
>         /* Wa_14016712196 */
>-        if (IS_MTL_GRAPHICS_STEP(rq->i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(rq->i915, P, STEP_A0, STEP_B0)) {
>+        if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, ST=
EP_B0) ||
>+            IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, ST=
EP_B0)) {
>                 u32 *cs;
>=20
>                 /* dummy PIPE_CONTROL + depth flush */
>@@ -799,6 +799,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_reques=
t *rq, u32 *cs)
> u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> {
>         struct drm_i915_private *i915 =3D rq->i915;
>+        struct intel_gt *gt =3D rq->engine->gt;
>         u32 flags =3D (PIPE_CONTROL_CS_STALL |
>                      PIPE_CONTROL_TLB_INVALIDATE |
>                      PIPE_CONTROL_TILE_CACHE_FLUSH |
>@@ -809,8 +810,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_reques=
t *rq, u32 *cs)
>                      PIPE_CONTROL_FLUSH_ENABLE);
>=20
>         /* Wa_14016712196 */
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>                 /* dummy PIPE_CONTROL + depth flush */
>                 cs =3D gen12_emit_pipe_control(cs, 0,
>                                              PIPE_CONTROL_DEPTH_CACHE_FLU=
SH, 0);
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/=
intel_gt.h
>index 15c25980411d..636fd651b8b2 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>@@ -25,6 +25,23 @@ struct drm_printer;
>          GRAPHICS_VER_FULL((gt)->i915) >=3D (from) && \
>          GRAPHICS_VER_FULL((gt)->i915) <=3D (until)))
>=20
>+/*
>+ * Check that the GT is a graphics GT with a specific IP version and has
>+ * a stepping in the range [begin, fixed).  The lower stepping bound is

s/begin/from/
s/fixed/until/


>+ * inclusive, the upper bound is exclusive (corresponding to the first ha=
rdware
>+ * stepping at which the workaround is no longer needed).  E.g.,

Since we making the macro definition "workaround-agnostic" by replacing
"begin" and "fixed" with "from" and "until" (respectively), should we
maybe use the explanation between the parentheses worded like an
example?

    "... is exclusive (e.g., corresponding to ...)"

Or also simply remove that parenthesized part and add a brief paragraph
before the examples already provided:

 + * The most common use-case of this macro is for checking bounds for
 + * workarounds, which usually have a stepping "from" which a hardware iss=
ue is
 + * present and the stepping that fixes the issue ("until"). E.g.,

With those minor fixes in the comment,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>+ *
>+ *    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)
>+ *    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B1, STEP_FOREVER)
>+ *
>+ * "STEP_FOREVER" can be passed as the upper stepping bound for workaroun=
ds
>+ * that have no "fixed" version for the specified IP version.
>+ */
>+#define IS_GFX_GT_IP_STEP(gt, ipver, from, until) ( \
>+        BUILD_BUG_ON_ZERO((until) <=3D (from)) + \
>+        (IS_GFX_GT_IP_RANGE((gt), (ipver), (ipver)) && \
>+         IS_GRAPHICS_STEP((gt)->i915, (from), (until))))
>+
> #define GT_TRACE(gt, fmt, ...) do {                                      =
  \
>         const struct intel_gt *gt__ __maybe_unused =3D (gt);             =
   \
>         GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),              =
  \
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915=
/gt/intel_gt_mcr.c
>index 0b414eae1683..11d181b1cc7a 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>@@ -3,8 +3,7 @@
>  * Copyright =C2=A9 2022 Intel Corporation
>  */
>=20
>-#include "i915_drv.h"
>-
>+#include "intel_gt.h"
> #include "intel_gt_mcr.h"
> #include "intel_gt_print.h"
> #include "intel_gt_regs.h"
>@@ -166,8 +165,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>                 gt->steering_table[OADDRM] =3D xelpmp_oaddrm_steering_tab=
le;
>         } else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70)) {
>                 /* Wa_14016747170 */
>-                if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-                    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>+                if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B=
0) ||
>+                    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B=
0))
>                         fuse =3D REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>                                              intel_uncore_read(gt->uncore=
,
>                                                                MTL_GT_ACT=
IVITY_FACTOR));
>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt=
/intel_lrc.c
>index 957d0aeb0c02..1f0768652446 100644
>--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>@@ -1375,8 +1375,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_conte=
xt *ce, u32 *cs)
>         cs =3D gen12_emit_aux_table_inv(ce->engine, cs);
>=20
>         /* Wa_16014892111 */
>-        if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) |=
|
>-            IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) |=
|
>+        if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, ST=
EP_B0) ||
>+            IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, ST=
EP_B0) ||
>             IS_DG2(ce->engine->i915))
>                 cs =3D dg2_emit_draw_watermark_setting(cs);
>=20
>diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/=
gt/intel_reset.c
>index 1ff7b42521c9..fd6c22aeb670 100644
>--- a/drivers/gpu/drm/i915/gt/intel_reset.c
>+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>@@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct =
intel_gt *gt)
>         if (GRAPHICS_VER(gt->i915) < 11)
>                 return false;
>=20
>-        if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
>                 return true;
>=20
>         if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 80d67e487b55..e2562b0e540d 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct intel_en=
gine_cs *engine,
> static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>                                      struct i915_wa_list *wal)
> {
>-        struct drm_i915_private *i915 =3D engine->i915;
>+        struct intel_gt *gt =3D engine->gt;
>=20
>         dg2_ctx_gt_tuning_init(engine, wal);
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) =
||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
>                 wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false)=
;
> }
>=20
> static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>                                        struct i915_wa_list *wal)
> {
>-        struct drm_i915_private *i915 =3D engine->i915;
>+        struct intel_gt *gt =3D engine->gt;
>=20
>         xelpg_ctx_gt_tuning_init(engine, wal);
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>                 /* Wa_14014947963 */
>                 wa_masked_field_set(wal, VF_PREEMPTION,
>                                     PREEMPTION_VERTEX_COUNT, 0x4000);
>@@ -1747,8 +1747,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struc=
t i915_wa_list *wal)
>         /* Wa_22016670082 */
>         wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>=20
>-        if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>                 /* Wa_14014830051 */
>                 wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>=20
>@@ -2425,16 +2425,17 @@ static void
> rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *w=
al)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>+        struct intel_gt *gt =3D engine->gt;
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>                 /* Wa_22014600077 */
>                 wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>                                  ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>         }
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>             IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>             IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>                 /* Wa_1509727124 */
>@@ -2444,7 +2445,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, s=
truct i915_wa_list *wal)
>=20
>         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>             IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
>-            IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
>                 /* Wa_22012856258 */
>                 wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>                                  GEN12_DISABLE_READ_SUPPRESSION);
>@@ -3009,8 +3010,9 @@ static void
> general_render_compute_wa_init(struct intel_engine_cs *engine, struct i91=
5_wa_list *wal)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>+        struct intel_gt *gt =3D engine->gt;
>=20
>-        add_render_compute_tuning_settings(engine->gt, wal);
>+        add_render_compute_tuning_settings(gt, wal);
>=20
>         if (GRAPHICS_VER(i915) >=3D 11) {
>                 /* This is not a Wa (although referred to as
>@@ -3031,13 +3033,13 @@ general_render_compute_wa_init(struct intel_engine=
_cs *engine, struct i915_wa_li
>                                  GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE)=
;
>         }
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) =
||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
>                 /* Wa_14017856879 */
>                 wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_=
FOR_EOT_FLUSH);
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>                 /*
>                  * Wa_14017066071
>                  * Wa_14017654203
>@@ -3045,13 +3047,13 @@ general_render_compute_wa_init(struct intel_engine=
_cs *engine, struct i915_wa_li
>                 wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>                                  MTL_DISABLE_SAMPLER_SC_OOO);
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>                 /* Wa_22015279794 */
>                 wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>                                  DISABLE_PREFETCH_INTO_IC);
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>             IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>             IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>                 /* Wa_22013037850 */
>@@ -3059,16 +3061,16 @@ general_render_compute_wa_init(struct intel_engine=
_cs *engine, struct i915_wa_li
>                                 DISABLE_128B_EVICTION_COMMAND_UDW);
>         }
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>             IS_PONTEVECCHIO(i915) ||
>             IS_DG2(i915)) {
>                 /* Wa_22014226127 */
>                 wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_CO=
ASLESCE);
>         }
>=20
>-        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>-            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>+            IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>             IS_DG2(i915)) {
>                 /* Wa_18017747507 */
>                 wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_=
LINELOOP_DISABLE);
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915=
/gt/uc/intel_guc.c
>index 22649831d3bd..6687cdf0272b 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>@@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>                 flags |=3D GUC_WA_GAM_CREDITS;
>=20
>         /* Wa_14014475959 */
>-        if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>+        if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>             IS_DG2(gt->i915))
>                 flags |=3D GUC_WA_HOLD_CCS_SWITCHOUT;
>=20
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/g=
pu/drm/i915/gt/uc/intel_guc_submission.c
>index 1bd5d8f7c40b..b2150a962f69 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_c=
s *engine)
>=20
>         /* Wa_14014475959:dg2 */
>         if (engine->class =3D=3D COMPUTE_CLASS)
>-                if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B=
0) ||
>+                if (IS_GFX_GT_IP_STEP(engine->gt, IP_VER(12, 70), STEP_A0=
, STEP_B0) ||
>                     IS_DG2(engine->i915))
>                         engine->flags |=3D I915_ENGINE_USES_WA_HOLD_CCS_S=
WITCHOUT;
>=20
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 7a8ce7239bc9..e0e0493d6c1f 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -658,10 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>         (IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>=20
>-#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
>-        (IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##var=
iant) && \
>-         IS_GRAPHICS_STEP(__i915, since, until))
>-
> #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>         (IS_METEORLAKE(__i915) && \
>          IS_DISPLAY_STEP(__i915, since, until))
>--=20
>2.41.0
>
