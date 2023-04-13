Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 994F36E130B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 19:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B375410E380;
	Thu, 13 Apr 2023 17:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BA610E380
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 17:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681405318; x=1712941318;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=GGmeg08eUwy2MOLm+AR0OZ+OwN3EnrFpDB6p87ZBaFw=;
 b=lhxdwTcPaq7h+UWutUL81fsCtKq3JeGVB5TwMSsjudtkvHmV83OOCnPc
 2h/gUmCTkj3udh42FhYS3naVN/6Z23W2dSC7n+JvG/yq4MgYL6kLtFmJY
 rh/9kuY052v44ZqqHyWyzI/jem7KtaMysrbE/Gh6BZj9GOG1A+AlvL39C
 IECcPldO21J8nv1zmfG394FkEZkSSln1jh3ReJRmXfUt01IILG6hwBYiR
 pprD5jr7g7BxPwibawJgzWDQKpivhT3YFVWEo45pUoP5xR0XVL9irv2tM
 uHHeQ4Fp+SgrtIZipJj4KNBn0IyyswYRQtd9CwuxCqdpdJGq3670K7Bdr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="341739356"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="341739356"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 10:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="666846558"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="666846558"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2023 10:01:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:01:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 10:01:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 10:01:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJMByrz8CF/8TNfRMhN3V1OVSTihFqZVGd4vaid7+Xd33irITfy/B9aK/V2aFpQ1N/hPaHLMqEaUyco7S8gohK48KGsiSp2l5qCOfnyBiaZZyY/MK0fKrXDAQBfb+3VkmzGL6Hx2QHVifZLRW8gvHzav4u9AZ8fjwJcHJgmc2WSFfUJtTh86i7kGf8EhKOJJuWnPboyzY/7d/ukJxgHeH8T5TRAKxLsgFIj47I2wzhBhKiN16Cu/mkUaYHY1ZdKqdmS9OZ2ZUfb3O4ncjpxxG+rGAJCd3sFHVap3MgPzsxoManI1HFXQY7n7E+Bwvx8uvS/tXXr/j4u/cJfVlEUmZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=26C2lY9fy7rvNUZATOwIQeNbnXV0Iz/nWIyoYNLUaio=;
 b=Y4ARCqijK9n7VntNxUJUN/VM3ZVRBVhqVeh5n71GpGckLvcEy2ZAgHQRkeeasYLNMp9jdZ6x5nKx3YB33YTnC62CpicA4Y+P8ZOKE5fPw7TRPx4u7F4N60AXSCwvPV1xmhzzwS90gpIJBiNpGsu/dAXAqXwCStlDQQNMV16PzTu6ApdyAw0QFbE8pE5DtMzgDnZfn/o/lLSk9ui7FdK1AyGWFSwqNRmP3jCJFJpRKtvbXdWHSj1reSZyF0/A7tduWfWtPLy8gD0Os/mStnQS4j1V9wuyRYiSAPHPc4rmVdZMYLVnYR65t+xBh/KpRieWRjXXjntxU1hntlgsOslX6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB6517.namprd11.prod.outlook.com (2603:10b6:8:d3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 17:01:14 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 17:01:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2004767dca36f9a7e81cb1b0e76b962164ce72dd.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <2004767dca36f9a7e81cb1b0e76b962164ce72dd.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 14:01:09 -0300
Message-ID: <168140526994.4412.4238871410981097027@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::12) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB6517:EE_
X-MS-Office365-Filtering-Correlation-Id: 60319306-d0d5-42f4-5d9e-08db3c40b0c0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p/j7BUR0uFpGnrYP/IqSfGUR5k1adfl9T+tHvy06HVdhcmUefxefUP+syzLmZBNJtKsVPPGC2T1s2dfGGCwSiI5/lyam8AJ/DPZ+GAKDBUGGq/la91noNWkPDngosIHN6O9mtjBdtbGc9r1ryT1E5h6qqO/BPpT8bq4w9nEEddkX6ZjPDqaFwvA/5Lh2znI2ydEo0bv+xxrHprnQhk7WGC8RPL1DkNcItmsss2y6eAuVFZDuPqmu7mUjmu6m3UO40TxkT86ROHT6JKMjdBqEKtQzKIsT4kbxA/lPbqB3Ix+Dize0sEOZmx7x2CRqBMGBJtwmS/IP6MEl56/lTA09yq8//C8HYCf/zWjW0yMvrazIF+CnKM7/pxKhW+9xtGeT6bAi9ZoOvU7bgiDytCFWo1zu/iN29715/ciNHQB5sXxDTOh8Imcd+a9lPX9KKjkkPukpqtb3HmicgU7VQtRnxa4jNMvW2i0Djz87FqsBtchL3vmFpsFQipUCxcQlluldJOWEYrmRz5syO4ENaHvDIWyxI6QMk7gPP1QJk5GqpAa+IyOm/qbYjWl7nP2zFK1R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199021)(30864003)(5660300002)(2906002)(38100700002)(15650500001)(86362001)(316002)(8936002)(8676002)(82960400001)(66946007)(66556008)(41300700001)(66476007)(4326008)(83380400001)(44832011)(6506007)(186003)(478600001)(107886003)(26005)(6512007)(9686003)(33716001)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1BTODZNNzZZYVFUZ1BaWkZLMGVObEtldGIvdVZZcVRCWmxHTXh1S2hVTkdq?=
 =?utf-8?B?dmpML29wT3lBT0hLM1lqeU9vSDlwSTVjNXA4VzRsNVExSHE1bE0zN3FvRG9H?=
 =?utf-8?B?MVJlSHhWYnB6ejlsdFhsL3o0eURlNWpoQ1FGaFQ3aVVxMnJidDQ2NXgxQnBZ?=
 =?utf-8?B?Mm5ONVNBTjhiR28wYzN1ZktaS2VMUnRBWGVDK2NwVTBDbDlLNWFlMXVQSWtC?=
 =?utf-8?B?N2l4bmI3Rm5IL2pMbU0rREJGY29rTzZVWUtHb01RVVBYZGZyRVZXQkhmRUNT?=
 =?utf-8?B?SG96ZVZIMjREMXRUbDNUU2VHQ0NwNFFBRHdKL0J2NXhCa2pMdFphZGpoZ0tG?=
 =?utf-8?B?S0ZJRFFkQ0JGSTY5RmdrMTZ5NnM0czFxeHNpdURqcEVpZTlSSndicHEydmYr?=
 =?utf-8?B?QlFzaEpRMEd0b1M3WVMrN3R5NmRJcHhhSlRBbThlSnhSM2xobTMydEVRb3F1?=
 =?utf-8?B?anRDb3hBUS9RUTM5eVFkTCtrZ0JYZHZyeFZUTnk4VHZJbTVKNkhIWXFTNUNo?=
 =?utf-8?B?UksxSlgwaVkzN1JEV2plOER0WVpjRGJ0V1dqMmQ5WXRJb3lET29WYmhFZ21p?=
 =?utf-8?B?OG96VjVEbk5ZdVJsNUo4WENUakJ3NDQwTVJoNFdqQUpsK2ZmcTljUUgxWTNN?=
 =?utf-8?B?QzdmUzEzYzg4R2ovOHRvU2dMNHpMcGpqN2ZXUWZTa2krRWFQRkFnL2xwY3o4?=
 =?utf-8?B?ZTRBOVpFbWVaYnhFcmlzZ2d1T2FUdE9rSE4zRUJ6cG9kWEdwNUQycE1SaWc4?=
 =?utf-8?B?RlJmVkZvdWU2S2ZmL3JoM052dUpEU0M2bHNzNi9HdkdGUkN0SEpaQmxtTkxE?=
 =?utf-8?B?Y2VuSy82c0VTQjN3SWpkMEM5clVLWGxmQXBHRTVldGJRdVJPaUk4RU9GNWhI?=
 =?utf-8?B?ai8raWpVM3NUalBLb3JPSkpabGNnODFrWG05aG9NejQ2b01wR0FrRGliNXdk?=
 =?utf-8?B?OWxpWmlkL2IybUkyOVJhdG9SUEpWSHZMY2orVDBpVlFJeUxSaklrb0RsSXNJ?=
 =?utf-8?B?dStHdnR5cncwTHU4ak5tVmNFNVo0dWZJbEl6RWdISEEzRUJ0azBBU3FyWXFk?=
 =?utf-8?B?R2U2aTBUUC9qWmtZUXFhOVlkNVpBNkp2K0toL1lTWE8zMkxlSEJvVnI2bzZU?=
 =?utf-8?B?aldRY2RocHM2Vmt1OUtTRi9OQ1VYc2w1U1I5OHFUaTRHa1d3anVNNkdCMVVB?=
 =?utf-8?B?N1BWODFlWi8zY055dUJUK1l4aFFIUkVqd282T0ZQVU83eHQyakNZbjZ0VzB1?=
 =?utf-8?B?KzdNMzl5dG85dTN5YmdjR0F5TnFISDZzamxEaUd0YTdsbUUwRnY1eEtTbGts?=
 =?utf-8?B?VktCMVROcFNrbzBibDlvWVdhNTJuVUw5Rm5uQnBFUTlmVU8yNnlLTCtUOFZN?=
 =?utf-8?B?THFmMGdMbXdyTXFCeXIwcUlwMUxXNExaaXNvamJsY1pydGRGL0Z2SUVNYmE2?=
 =?utf-8?B?NGhOZmVYNFNqcE1VckVOTlk4bmpsbXpxMDV4MmlhRmJpU24zeHNvM1ZHN1FM?=
 =?utf-8?B?ejVVQ3c3LzZMbi92WEFwd2VOcVRLaFFzRkFvbGQyNWkvSGJDRnN5VWRsYlll?=
 =?utf-8?B?eHpjdWJLb1ovbzB5Mk1SUTUraTg5RXFBemJqOXNwaWljVzBWdEZrS1c0ZThW?=
 =?utf-8?B?KzBTZTdvQkYwckM0UkNuRlFLeSt1Q1JMZjc4Smc2NmVNYmJwV0JTMEJtN3Bu?=
 =?utf-8?B?K200Z3BnUXNLZFQ2Uys4YUhjUDlmbzVLN2NsM3ZBN2dsUTA3bmtKNkNuSG5Z?=
 =?utf-8?B?LzBjOHpvQWszT285QWZhd3hBWkFIdGp5N1h2MlNCc2pET2NTbDI2Nlg3QmFi?=
 =?utf-8?B?QnRUL3NYT1RoZloxQStaQmZvMUlVQjdERGxTRXh0S2hVZlZkYnBOL09XQXlN?=
 =?utf-8?B?NlVjVFJiTmVNcjRnYlhTWWVBZ2tYVVVoVVg3cjFac1l1ejh1cUxtQmdOZjVP?=
 =?utf-8?B?bnhFU1M0VDZLTnk2dVJOS3A2VVFYZjB5T2d3czZrbjArQ3I2aFJOWkRYSlp0?=
 =?utf-8?B?SmY1Z0ZSbDFsSGF6dVpsMVNkanl5dzBQL0I3TTF2MUtiRzlYMnVzNWFlSzMw?=
 =?utf-8?B?U1Z3czIxaExGaWwvRHhJbXhObmVjUHcrMDI1ZFZxMnVKYnNnS3F6VHYrZm5z?=
 =?utf-8?B?WDNIVzkrN3V5K0o4RkxtSzFsWHM0T0owTmFuMDkzbGJKTTYzSE5POGlETGJq?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60319306-d0d5-42f4-5d9e-08db3c40b0c0
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 17:01:14.7741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5yqd/oSTF3w+vLZr7JxFt3EVOkmOY/N9WfgnjCDOvDOiM2jnI2lII+sI8ZYTvi20PbVkcV1lkDUh+aQCACOlgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6517
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/display: move display
 suspend/resume to intel_display_driver.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-13 06:47:34)
> High level display functionality only called from driver top level code.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 102 ------------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   8 --
>  .../drm/i915/display/intel_display_driver.c   | 101 +++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  10 ++
>  4 files changed, 111 insertions(+), 110 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e89e9473a744..9eb9898885bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -693,46 +693,6 @@ intel_plane_fence_y_offset(const struct intel_plane_=
state *plane_state)
>         return y;
>  }
> =20
> -int
> -__intel_display_resume(struct drm_i915_private *i915,
> -                 struct drm_atomic_state *state,
> -                 struct drm_modeset_acquire_ctx *ctx)
> -{
> -  struct drm_crtc_state *crtc_state;
> -  struct drm_crtc *crtc;
> -  int ret, i;
> -
> -  intel_modeset_setup_hw_state(i915, ctx);
> -  intel_vga_redisable(i915);
> -
> -  if (!state)
> -          return 0;
> -
> -  /*
> -   * We've duplicated the state, pointers to the old state are invalid.
> -   *
> -   * Don't attempt to use the old state until we commit the duplicated s=
tate.
> -   */
> -  for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
> -          /*
> -           * Force recalculation even if we restore
> -           * current state. With fast modeset this may not result
> -           * in a modeset when the state is compatible.
> -           */
> -          crtc_state->mode_changed =3D true;
> -  }
> -
> -  /* ignore any reset values/BIOS leftovers in the WM registers */
> -  if (!HAS_GMCH(i915))
> -          to_intel_atomic_state(state)->skip_intermediate_wm =3D true;
> -
> -  ret =3D drm_atomic_helper_commit_duplicated_state(state, ctx);
> -
> -  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
> -
> -  return ret;
> -}
> -
>  static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_sta=
te)
>  {
>         struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -2104,30 +2064,6 @@ static void i9xx_crtc_disable(struct intel_atomic_=
state *state,
>                 i830_enable_pipe(dev_priv, pipe);
>  }
> =20
> -
> -/*
> - * turn all crtc's off, but do not adjust state
> - * This has to be paired with a call to intel_modeset_setup_hw_state.
> - */
> -int intel_display_suspend(struct drm_device *dev)
> -{
> -  struct drm_i915_private *dev_priv =3D to_i915(dev);
> -  struct drm_atomic_state *state;
> -  int ret;
> -
> -  if (!HAS_DISPLAY(dev_priv))
> -          return 0;
> -
> -  state =3D drm_atomic_helper_suspend(dev);
> -  ret =3D PTR_ERR_OR_ZERO(state);
> -  if (ret)
> -          drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
> -                  ret);
> -  else
> -          dev_priv->display.restore.modeset_state =3D state;
> -  return ret;
> -}
> -
>  void intel_encoder_destroy(struct drm_encoder *encoder)
>  {
>         struct intel_encoder *intel_encoder =3D to_intel_encoder(encoder)=
;
> @@ -8280,44 +8216,6 @@ void i830_disable_pipe(struct drm_i915_private *de=
v_priv, enum pipe pipe)
>         intel_de_posting_read(dev_priv, DPLL(pipe));
>  }
> =20
> -void intel_display_resume(struct drm_device *dev)
> -{
> -  struct drm_i915_private *i915 =3D to_i915(dev);
> -  struct drm_atomic_state *state =3D i915->display.restore.modeset_state=
;
> -  struct drm_modeset_acquire_ctx ctx;
> -  int ret;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  i915->display.restore.modeset_state =3D NULL;
> -  if (state)
> -          state->acquire_ctx =3D &ctx;
> -
> -  drm_modeset_acquire_init(&ctx, 0);
> -
> -  while (1) {
> -          ret =3D drm_modeset_lock_all_ctx(dev, &ctx);
> -          if (ret !=3D -EDEADLK)
> -                  break;
> -
> -          drm_modeset_backoff(&ctx);
> -  }
> -
> -  if (!ret)
> -          ret =3D __intel_display_resume(i915, state, &ctx);
> -
> -  skl_watermark_ipc_update(i915);
> -  drm_modeset_drop_locks(&ctx);
> -  drm_modeset_acquire_fini(&ctx);
> -
> -  if (ret)
> -          drm_err(&i915->drm,
> -                  "Restoring old state failed with %i\n", ret);
> -  if (state)
> -          drm_atomic_state_put(state);
> -}
> -
>  void intel_hpd_poll_fini(struct drm_i915_private *i915)
>  {
>         struct intel_connector *connector;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index e5bf8ef8e06b..c7b1e220e84d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -438,7 +438,6 @@ void intel_add_fb_offsets(int *x, int *y,
>  unsigned int intel_rotation_info_size(const struct intel_rotation_info *=
rot_info);
>  unsigned int intel_remapped_info_size(const struct intel_remapped_info *=
rem_info);
>  bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
> -int intel_display_suspend(struct drm_device *dev);
>  void intel_encoder_destroy(struct drm_encoder *encoder);
>  struct drm_display_mode *
>  intel_encoder_current_mode(struct intel_encoder *encoder);
> @@ -520,7 +519,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_sta=
te *crtc_state);
>  void intel_update_watermarks(struct drm_i915_private *i915);
> =20
>  /* modesetting */
> -void intel_display_resume(struct drm_device *dev);
>  int intel_modeset_all_pipes(struct intel_atomic_state *state,
>                             const char *reason);
>  void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_=
state,
> @@ -543,12 +541,6 @@ int intel_atomic_check(struct drm_device *dev, struc=
t drm_atomic_state *_state);
> =20
>  void intel_hpd_poll_fini(struct drm_i915_private *i915);
> =20
> -/* interface for intel_display_reset.c */
> -int
> -__intel_display_resume(struct drm_i915_private *i915,
> -                 struct drm_atomic_state *state,
> -                 struct drm_modeset_acquire_ctx *ctx);
> -
>  /* modesetting asserts */
>  void assert_transcoder(struct drm_i915_private *dev_priv,
>                        enum transcoder cpu_transcoder, bool state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 45e425100385..eb03b0a87d5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -466,3 +466,104 @@ void intel_display_driver_unregister(struct drm_i91=
5_private *i915)
>         acpi_video_unregister();
>         intel_opregion_unregister(i915);
>  }
> +
> +/*
> + * turn all crtc's off, but do not adjust state
> + * This has to be paired with a call to intel_modeset_setup_hw_state.
> + */
> +int intel_display_suspend(struct drm_device *dev)
> +{
> +  struct drm_i915_private *dev_priv =3D to_i915(dev);
> +  struct drm_atomic_state *state;
> +  int ret;
> +
> +  if (!HAS_DISPLAY(dev_priv))
> +          return 0;
> +
> +  state =3D drm_atomic_helper_suspend(dev);
> +  ret =3D PTR_ERR_OR_ZERO(state);
> +  if (ret)
> +          drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
> +                  ret);
> +  else
> +          dev_priv->display.restore.modeset_state =3D state;
> +  return ret;
> +}
> +
> +int
> +__intel_display_resume(struct drm_i915_private *i915,
> +                 struct drm_atomic_state *state,
> +                 struct drm_modeset_acquire_ctx *ctx)
> +{
> +  struct drm_crtc_state *crtc_state;
> +  struct drm_crtc *crtc;
> +  int ret, i;
> +
> +  intel_modeset_setup_hw_state(i915, ctx);
> +  intel_vga_redisable(i915);
> +
> +  if (!state)
> +          return 0;
> +
> +  /*
> +   * We've duplicated the state, pointers to the old state are invalid.
> +   *
> +   * Don't attempt to use the old state until we commit the duplicated s=
tate.
> +   */
> +  for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
> +          /*
> +           * Force recalculation even if we restore
> +           * current state. With fast modeset this may not result
> +           * in a modeset when the state is compatible.
> +           */
> +          crtc_state->mode_changed =3D true;
> +  }
> +
> +  /* ignore any reset values/BIOS leftovers in the WM registers */
> +  if (!HAS_GMCH(i915))
> +          to_intel_atomic_state(state)->skip_intermediate_wm =3D true;
> +
> +  ret =3D drm_atomic_helper_commit_duplicated_state(state, ctx);
> +
> +  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
> +
> +  return ret;
> +}
> +
> +void intel_display_resume(struct drm_device *dev)
> +{
> +  struct drm_i915_private *i915 =3D to_i915(dev);
> +  struct drm_atomic_state *state =3D i915->display.restore.modeset_state=
;
> +  struct drm_modeset_acquire_ctx ctx;
> +  int ret;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  i915->display.restore.modeset_state =3D NULL;
> +  if (state)
> +          state->acquire_ctx =3D &ctx;
> +
> +  drm_modeset_acquire_init(&ctx, 0);
> +
> +  while (1) {
> +          ret =3D drm_modeset_lock_all_ctx(dev, &ctx);
> +          if (ret !=3D -EDEADLK)
> +                  break;
> +
> +          drm_modeset_backoff(&ctx);
> +  }
> +
> +  if (!ret)
> +          ret =3D __intel_display_resume(i915, state, &ctx);
> +
> +  skl_watermark_ipc_update(i915);
> +  drm_modeset_drop_locks(&ctx);
> +  drm_modeset_acquire_fini(&ctx);
> +
> +  if (ret)
> +          drm_err(&i915->drm,
> +                  "Restoring old state failed with %i\n", ret);
> +  if (state)
> +          drm_atomic_state_put(state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index aab498617b90..7b5ff4309dec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -8,7 +8,10 @@
> =20
>  #include <linux/types.h>
> =20
> +struct drm_atomic_state;
> +struct drm_device;
>  struct drm_i915_private;
> +struct drm_modeset_acquire_ctx;
>  struct pci_dev;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
> @@ -21,6 +24,13 @@ void intel_display_driver_remove(struct drm_i915_priva=
te *i915);
>  void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> +int intel_display_suspend(struct drm_device *dev);
> +void intel_display_resume(struct drm_device *dev);
> +
> +/* interface for intel_display_reset.c */
> +int __intel_display_resume(struct drm_i915_private *i915,
> +                     struct drm_atomic_state *state,
> +                     struct drm_modeset_acquire_ctx *ctx);
> =20
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> =20
> --=20
> 2.39.2
>
