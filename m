Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E79606E1316
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 19:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62CA910E553;
	Thu, 13 Apr 2023 17:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FAEB10E553
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 17:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681405391; x=1712941391;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=iqXdLFhAew249K4bnwoKAriRgAbkwLAuEauZ27AK/4E=;
 b=EC6AXbbv8RzHWmpMNl0MZlI/czZWmbHY8SZWatLrIr74izwvq9ev/5z7
 x7EByxvBxP4G8Mi4HcSUYKnTkJcxuFBWmwSIrG2p1GoaMOQz+PQm5S5ng
 0RQJr25otbwcjf2VsG1dBBmFDu4Hx0LVHbHS3XNDUm1kXQdzPfggV64v1
 mqbL6K6K8n4dBtsrRaOe4fj2+U0aT2iw9ZDETF+YFIO2aqpuXcMyZANaG
 JJi0dS7+DaCmCt4X7TFQqYIN3qRCji55y5gABPFksHIENgpxCvq3ibEfd
 3xg52Bk5um1zYhIAbxDKPnezjielKqqroWyA27qvI8OSCCbrgBZW9PsQN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344238490"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344238490"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 10:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935669592"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="935669592"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 13 Apr 2023 10:02:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:02:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:02:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 10:02:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 10:02:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8ikZWdBXYrADCuryf6l3mIkX8Bg8crATQWsETM577vzAva3wg+P4oFcytx1bPCgXsf/4yKE38yQalFQfaQjAL+rRRUDuX/XDPiqeGRHHiyh2ZNBPMPYV3WeHyjpPbnscp3v43Rt7TJWWzbNKX6uhQO/pWqtGaHbakhhTrubxmVwx4ilf9i97cs9LVy5ffd2YJ+s6mau1gaVZzUz+s5H4cDdVAhuyb1u6/Pl9j/Zf65fyRmi7q1H+1b4UoxhwVP/mnoHB6tboJDjiWh9e6Fl8PxW+GUtVkSkrF9KMSX8ZI+lyN47+0bgABFmqNV5DVxcsGwSxaL2qS+QzimhQ60FWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AmlXXqhSdSaI/HvPZBPcUkGgAFZYTbzEs7F4qIbRU1w=;
 b=hzx1V7uTNXIDGBsE9pO41Tk/IUnL7MWwKeBoLKtbMWVcAOztr4bLSKME8C/tvElxaZ0dTsMDxY4gcEQJbpWGbiz39wPRNQkEd0vWisBmq7JnWvNzkOG49ivtnmNCwwQmPNZgijBTKUDCGDWmcMTBIBVYdOmBdRbPkJbVYKuALj1uQ7oqrZj1UyjhjuapCa+z2uJvrpqRkfe8BYlXcBXxlOpR3RK5t04IH+o7OH2Fw4AK+LVNifwCWeXSjCuPpzVb7Lhz2fdMmMOj2WNy4zV6gTnMaETru5X91DU4bSr+YQkUNu5flqZyjqfNg7wxX5P1eeP1PA3h7JFFQL8nnmr0ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB6517.namprd11.prod.outlook.com (2603:10b6:8:d3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 17:02:11 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 17:02:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f37f57426edced2266690801abaa48568c71f813.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <f37f57426edced2266690801abaa48568c71f813.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 14:02:06 -0300
Message-ID: <168140532634.4412.7282072470107985415@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0047.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::22) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB6517:EE_
X-MS-Office365-Filtering-Correlation-Id: 745da9c3-0267-4a2c-8cef-08db3c40d276
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J/KwQelaoLO5ajBOjerr5u99IhnQVPMzKaYjb/WM30ZKuWGuUbaaBVN9RSQCdYi55mSHoaabiaf6BaoXPm/jsYJ60O6eMKG91483rlNW9VXH/wR3F4tLU5gJnpl2iBDq3bkhnXk4o3N4lsVumcBV5k2SZYFGDzA1B0WmZ5S0xebXkxLmgo8VMPMMp6628XPew8KbWRA+bIiYAfUGXVmxzVSRYy5i2Bv3x5r6Wqo3c6niGyLszFdnNylYJSUgEBfpFYVC5Wa7GcIBQUPs0aETfjyRdHLijgvs+va4aPAgsoY3GJ/gFMBuqPtivpYtzkooyWBtbeum4zv3YO7sFwaGgPa1jpfg+JI+J3eRAJSl8W9EdGYO8+WcyKFBDaLzuE9W0OS1lfJOPsk492OIwDztLWWzbNmZvuVb+upjfBwi0Ef50xkiXdr+EazFvtli+HUm8gy48AiiOturdUm632CkpQ/lHmmhzr6ZyUjmq1yZBUN16LW6/oAVcZ9ZdHTHWt65zpg8vtRtAEXib+/x2TwjwezsZjmv0/bnL6hZn0pdPZq2YbAF2VMsqqMAlmVgThiy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199021)(5660300002)(2906002)(38100700002)(86362001)(316002)(8936002)(8676002)(82960400001)(66946007)(66556008)(41300700001)(66476007)(4326008)(83380400001)(44832011)(6506007)(186003)(478600001)(107886003)(26005)(6512007)(9686003)(33716001)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHhuN2R2dWlxRnJsVGZDU2Fsa3ljWTNoeUE3YnBORjR5Sy9ZbkhyWXNxM1lS?=
 =?utf-8?B?dmp3ZUxua05EQXlzRHJiaGt0Vms4czlXSE5vU3VESTBjaHdPOVUrcTFTaDd6?=
 =?utf-8?B?YTVKLzAyNDVXdUxDNlVTL2NvSnREQWxvOWU5YzZtZFdTZFRBSDhjcS9hS00z?=
 =?utf-8?B?THh3bUhsMWdzWVRPVTVjL0FKNFBiQkRRVlQvang5aXRPaTJxNnc3OEZmVHpk?=
 =?utf-8?B?ekVQTVZ1Rmc5YUNWWEg0NmNPMzBnUkxzRy95MWJQVFlNYzJXOVUxVzh2aEVO?=
 =?utf-8?B?ODdGUGh1SjU3djRPdzZ0MU1xbmRYNWRtNTFZbTdRbnpLamJUSVVpS0xZVjNJ?=
 =?utf-8?B?aHMyV3lxZytMR3d0ZTVVcDlxdjdHZnJrcjdsTlR4UXptVmNGaFBUOEhjRThy?=
 =?utf-8?B?MjdHdk5kQ3VzRzhGaHNUN0RxQUo2Q3gyV1ZFSFFheHNiWGN2NVg3cWJhOURv?=
 =?utf-8?B?ME9GL1VySm9sWmJsc3Zla3BQbERPR1ZweFAxYVlpOG83elBCK3FPZW1MRHcx?=
 =?utf-8?B?cmVkSjVWUUlIcSsvL1ZoMWZ3QkZFUTg4ZWZyK2lSUEFRUURNOFQ1NFRoZTNy?=
 =?utf-8?B?T3dTYnB6ekVLeWNVMlpZYVBGV3lpNEF4bEZWd2ZScmVjVnVQU2ZtYlpObytO?=
 =?utf-8?B?OFg1TmFlNUxEQXVuUWJ4bXFveExWbHlPL0RSNmFJc2Nsc3dpOUo3VTJONXc3?=
 =?utf-8?B?bU9jWVh2UmFwZlJ0ZUdrR2Jnc2RXYkRjWEdWQ0Vpa29oTWp1UWhUM0ZWY0ZO?=
 =?utf-8?B?M0FydEdYeTBUMDhhSk9HMDEwdytjMkVaa1dySTVPc0JPdFBZZ2ltQi9Xa0s2?=
 =?utf-8?B?eHhwMFR3Q0VSajRERUpDaFlKcmpzdUs2RlhUdEtDVFExQ28xTnZYTTZEblgv?=
 =?utf-8?B?Zzhoc1crZ1JQN2RwR1RHcEJRdUI4aEdBenJVUmlGRkhmVDhiNGNWR0lTVnla?=
 =?utf-8?B?bmVLaWhucllWK0JjenVvSk1SN2VNR3kvdmVkRlJ0RWtKQXI0S0RFWXAzSi9Z?=
 =?utf-8?B?SE95QngyUERmd0ZGN1BMZTY1dDZuQmczVHhWVmZuWU1ndFNTN0ZvNDYzeGo1?=
 =?utf-8?B?VHdEdlJOaDBXZGI5MVVCNkl6QnZjOFBxQTJMbGhyOWRQcFNCWkg0V1BHaFhG?=
 =?utf-8?B?UUFEekpxTzBYWWlYUUNyWFlCUnRVM2lsTDdpN1A3VXN0R2pWZzkwU3Q3dzUv?=
 =?utf-8?B?QnFDTC9aQnJxMDZaL2QxdjFEVTZkczNjMDV0VUdtNUdObU9ucmhseXI1WHJq?=
 =?utf-8?B?a091S0lKbVVaTjFPcGxnNEQ4Qm1hS2crQlpwT0hndjA1NWRlUkhSMXZMMEZC?=
 =?utf-8?B?dlZneW82KzA1d1Jpdzc3eldsMmxwOTNLcDN5K3JjK0lFR2FDbVFjVkdBWDh0?=
 =?utf-8?B?NVNuVmEyUytiMFhrT2NEdEIrSkw4N0F2NU0wMkJkQk5xYmd5SzZ0MTRUTjNR?=
 =?utf-8?B?RWFDYlJaVVkyYVJ0OXp1WVdsajhaRG9zSEhyd1huUktxUmlLRllMalM2RTlN?=
 =?utf-8?B?d1hZM1Bsczlkb0VqbnhTQzJSa1lTbXJ1cVQ3dGlsZmhtQ01FeUJPbVNMeE0r?=
 =?utf-8?B?c2Ztb1pjYVFCVElNVjV6TndTVGVkVGJDWkE3RU9hMTZJZkYwZEluSjJEbjhY?=
 =?utf-8?B?SVlXVVJsQmFJV1pOM3cyQ3htb2FPdjVqdGZ6RU1OZzZzQjNDY3UwSkNmRlhv?=
 =?utf-8?B?aTN6TzA5aENYcVVPZEg5bmlWQUYyUWhtc254U1JlcmhYenhoQjdKMzZ1QzJi?=
 =?utf-8?B?Z01EOE5wYWdYb3EzREw2bHYyRURJNjB5cC9iNkF1dXY3SExxMlBTOE9SMlBa?=
 =?utf-8?B?RFlPQUVtd2VGN2R4Z21zQXk1ckpjNmErbDlTOERvT0hzZisrWW5DOU1YUmIr?=
 =?utf-8?B?Q3k2czNQelVIVnJqMzErbGs0K3RIejU0VlE4Uy9HZ0VORElxbldqVWpWTnJh?=
 =?utf-8?B?cW9RZjRlK2NFY1lhd2Vxb2xuR3QwVHZ4eHZkK2xuRUJuaGs5UmpYQlE0cEJZ?=
 =?utf-8?B?UFZSNzVPVmNxb1F3ZDRta0JhNGRITGRWK0ZRclc0V2tnQmlpT3o1V3Q3WVJ3?=
 =?utf-8?B?Z3JTZHI4eXdZbDZNK3FNNWMxaTk1cmNQVHRkRkp2Z0JlYTFhY25rMTVZM0lm?=
 =?utf-8?B?TnYreVFXTytWcUtyRER3ZDRwYjRBRXpKNkpCRHZPRUNDMzFrdHBlZkluQVY1?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 745da9c3-0267-4a2c-8cef-08db3c40d276
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 17:02:11.2685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NRRlPTEZ1pXidjgDtFwd2JjfvM38AvASjNNJP48jamwZJm+NwwrAoMR73PfBP70qUrEjTwMueqwbkStEgw/nRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6517
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/display: rename
 intel_display_driver_suspend/resume functions
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

Quoting Jani Nikula (2023-04-13 06:47:35)
> Follow the usual naming conventions. Switch to i915 arguments and naming
> while at it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   | 24 +++++++++----------
>  .../drm/i915/display/intel_display_driver.h   | 11 ++++-----
>  .../drm/i915/display/intel_display_reset.c    |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  6 ++---
>  4 files changed, 20 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index eb03b0a87d5a..d20a279fdf51 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -471,29 +471,28 @@ void intel_display_driver_unregister(struct drm_i91=
5_private *i915)
>   * turn all crtc's off, but do not adjust state
>   * This has to be paired with a call to intel_modeset_setup_hw_state.
>   */
> -int intel_display_suspend(struct drm_device *dev)
> +int intel_display_driver_suspend(struct drm_i915_private *i915)
>  {
> -  struct drm_i915_private *dev_priv =3D to_i915(dev);
>         struct drm_atomic_state *state;
>         int ret;
> =20
> -  if (!HAS_DISPLAY(dev_priv))
> +  if (!HAS_DISPLAY(i915))
>                 return 0;
> =20
> -  state =3D drm_atomic_helper_suspend(dev);
> +  state =3D drm_atomic_helper_suspend(&i915->drm);
>         ret =3D PTR_ERR_OR_ZERO(state);
>         if (ret)
> -          drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
> +          drm_err(&i915->drm, "Suspending crtc's failed with %i\n",
>                         ret);
>         else
> -          dev_priv->display.restore.modeset_state =3D state;
> +          i915->display.restore.modeset_state =3D state;
>         return ret;
>  }
> =20
>  int
> -__intel_display_resume(struct drm_i915_private *i915,
> -                 struct drm_atomic_state *state,
> -                 struct drm_modeset_acquire_ctx *ctx)
> +__intel_display_driver_resume(struct drm_i915_private *i915,
> +                        struct drm_atomic_state *state,
> +                        struct drm_modeset_acquire_ctx *ctx)
>  {
>         struct drm_crtc_state *crtc_state;
>         struct drm_crtc *crtc;
> @@ -530,9 +529,8 @@ __intel_display_resume(struct drm_i915_private *i915,
>         return ret;
>  }
> =20
> -void intel_display_resume(struct drm_device *dev)
> +void intel_display_driver_resume(struct drm_i915_private *i915)
>  {
> -  struct drm_i915_private *i915 =3D to_i915(dev);
>         struct drm_atomic_state *state =3D i915->display.restore.modeset_=
state;
>         struct drm_modeset_acquire_ctx ctx;
>         int ret;
> @@ -547,7 +545,7 @@ void intel_display_resume(struct drm_device *dev)
>         drm_modeset_acquire_init(&ctx, 0);
> =20
>         while (1) {
> -          ret =3D drm_modeset_lock_all_ctx(dev, &ctx);
> +          ret =3D drm_modeset_lock_all_ctx(&i915->drm, &ctx);
>                 if (ret !=3D -EDEADLK)
>                         break;
> =20
> @@ -555,7 +553,7 @@ void intel_display_resume(struct drm_device *dev)
>         }
> =20
>         if (!ret)
> -          ret =3D __intel_display_resume(i915, state, &ctx);
> +          ret =3D __intel_display_driver_resume(i915, state, &ctx);
> =20
>         skl_watermark_ipc_update(i915);
>         drm_modeset_drop_locks(&ctx);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 7b5ff4309dec..84e7977f265a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -9,7 +9,6 @@
>  #include <linux/types.h>
> =20
>  struct drm_atomic_state;
> -struct drm_device;
>  struct drm_i915_private;
>  struct drm_modeset_acquire_ctx;
>  struct pci_dev;
> @@ -24,13 +23,13 @@ void intel_display_driver_remove(struct drm_i915_priv=
ate *i915);
>  void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> -int intel_display_suspend(struct drm_device *dev);
> -void intel_display_resume(struct drm_device *dev);
> +int intel_display_driver_suspend(struct drm_i915_private *i915);
> +void intel_display_driver_resume(struct drm_i915_private *i915);
> =20
>  /* interface for intel_display_reset.c */
> -int __intel_display_resume(struct drm_i915_private *i915,
> -                     struct drm_atomic_state *state,
> -                     struct drm_modeset_acquire_ctx *ctx);
> +int __intel_display_driver_resume(struct drm_i915_private *i915,
> +                            struct drm_atomic_state *state,
> +                            struct drm_modeset_acquire_ctx *ctx);
> =20
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers=
/gpu/drm/i915/display/intel_display_reset.c
> index 166aa0cab1fc..17178d5d7788 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -117,7 +117,7 @@ void intel_display_reset_finish(struct drm_i915_priva=
te *i915)
>                 intel_clock_gating_init(i915);
>                 intel_hpd_init(i915);
> =20
> -          ret =3D __intel_display_resume(i915, state, ctx);
> +          ret =3D __intel_display_driver_resume(i915, state, ctx);
>                 if (ret)
>                         drm_err(&i915->drm,
>                                 "Restoring old state failed with %i\n", r=
et);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 9d06dae47735..082393ea3833 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1053,7 +1053,7 @@ static int i915_drm_prepare(struct drm_device *dev)
>         intel_pxp_suspend_prepare(i915->pxp);
> =20
>         /*
> -   * NB intel_display_suspend() may issue new requests after we've
> +   * NB intel_display_driver_suspend() may issue new requests after we'v=
e
>          * ostensibly marked the GPU as ready-to-sleep here. We need to
>          * split out that work and pull it forward so that after point,
>          * the GPU is not woken again.
> @@ -1077,7 +1077,7 @@ static int i915_drm_suspend(struct drm_device *dev)
> =20
>         pci_save_state(pdev);
> =20
> -  intel_display_suspend(dev);
> +  intel_display_driver_suspend(dev_priv);
> =20
>         intel_dp_mst_suspend(dev_priv);
> =20
> @@ -1251,7 +1251,7 @@ static int i915_drm_resume(struct drm_device *dev)
> =20
>         /* MST sideband requires HPD interrupts enabled */
>         intel_dp_mst_resume(dev_priv);
> -  intel_display_resume(dev);
> +  intel_display_driver_resume(dev_priv);
> =20
>         intel_hpd_poll_disable(dev_priv);
>         if (HAS_DISPLAY(dev_priv))
> --=20
> 2.39.2
>
