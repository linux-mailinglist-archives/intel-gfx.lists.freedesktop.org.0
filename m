Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBCD6E1317
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 19:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B449B10E519;
	Thu, 13 Apr 2023 17:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A22010E519
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 17:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681405442; x=1712941442;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=SPwPl6cAa2RVLdjxQByHNFCdeRPzQulSnK/arC8LihY=;
 b=TuxasjWPp5tmKlrIgVbiUNkXV545pJvFd87Q5mU9wUipVlSPGy0++Uoy
 6kzNrOI5PCW9KBiXzRcuir64vt/8LKfNidWn4BkPfjkwowi8EgmIXieD0
 35vcYAr/1/IZjkznOWRjDWXJaxCnc07LotGV9Y5kTpCLS55sV3Plz/v0R
 mx4gabMUQ91bNXGaNOV7TsLb8VxOxyK6jY/WUtaKG6pWtGoWlslyw9Em+
 vP0MFLyHzVpZUKV2+FcCByExf81wz1xNN/cePmu6UCvMxPvwzJNsPSjnj
 bXiuMaWHZ4jN8//7wpCfXiatw7naiABsh8mJINsY3lWtRks2uD0HEQIYK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344238963"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344238963"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 10:03:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="813531504"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="813531504"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2023 10:03:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:02:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:02:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 10:02:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 10:02:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0Kf7t7d833GMIhf/9HJyL+Hw0KPB/G0NxDZDsz7Tdh+ECWfcNNFw3HjDMyWHV5lTwWH808bnNk7CuYO4HpN0VzgiNx8pCeLp1e7zTwblYrFfQ0BuLpSrge8xayw902ddMOz78v2AAXEPbVfnYbETj7F7rWfffBYy8WvGa5gCvPPc1Y3F96EdEUExSCLXWXr4x1K7Tm9HO0fiKlBUVSec8MaEyHkidvpRYsV/733DgbTBjKlCHCA6B6l/pknSHs/Ss+c3ss9a2NSVO3o9oVEgbmIvGZlhN+/OBR6WxCV4b+YUE3dmi7/m7k4RT/KTStSSRRRJb25PuNwpMC19N71jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vv6zGv5Oz2lXWgHZ62Ckq9faihJVxE75blRryH/b68E=;
 b=U4KaZJ2umFfXs4t+PPOE9mmN8M4wSsLD498Qvveuzh19U1UQPelehYSKXa5zeX0DPoXlGjh0ZpE9GKu3Ni+gq6omnHQFMPOzVRRzp5mg45WFJNKAwgUNQ+Iyb7tZjubl+BrL1O0qmfhRAbqPhRWfror2rJAbv8TUhs3/mDustyGLr62uGWoEnF7/CkoUUmFAFhJoD524zXZgI09Pe+o+Yx+WZQWvUrqcQfgOi11RB8HY0de9pvUx8YZDKfN2/G76sy9geanwWU8VKHNwO8/MeMZJGCoivc7wWsfkW8p98yg2miuJd41HPpU3UzB/RepK58JVBrt4DeT37JKKhzKUEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB6517.namprd11.prod.outlook.com (2603:10b6:8:d3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 17:02:54 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 17:02:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e3b87a950e85ed5cb2d744084a67fa72d605a988.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <e3b87a950e85ed5cb2d744084a67fa72d605a988.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 14:02:49 -0300
Message-ID: <168140536950.4412.14586122305766867273@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0080.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::21) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB6517:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b5ab0e2-fe8f-4d55-265c-08db3c40ec5a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nfHdZNUklLgo9NRShiQMuqlNdNyRKqRcYou72keK8j/gZkUxQ6aeQ0bkY6bt8t/+2uf9G/bFdVJAfH0hI9gq5UcahkuSAVsbCPKzzf9WGTiphIkTjyV/HyDRsuj2U0cXewLI/70hT++ssZ1qeAkp1lkv1fBQ7X1hbE7T2cy8P09qfIhZrRcHZpcuW5/vtLOQLzPvOC/EnUGMp57aMQ1Om3SI+J9ozm0AY6d4dNTmwA4zK2Kq1lx6wj6MVv0AZCS++jC2FcVt23rqRRLlDg0Ga9y7iqHpHsHKKQM0f9mDgohebi/Xrx7NGrtu9N7M9pIzhkamMH0EhIp7zgoWf3PJ9LeAaKknBjXmzwpE5lsozJUB5hfYcTaaqoxgbLvEUzQhonmonvNQoHYKcDff2GFs2bceWBaQ5xNgMEWFKV38agq1ctq5UiMc3axzfWTVaNU0k+pJ86r1ZkZVVlRK6e1H+V7TRoc1RQTG/Ev2DVkEKRP7qbZ2XYXVAa0l2ipbEhgzNBPiGd33b6PFVKT0dfAwee35OGNE5q7bXGSR+iwbMUM1ci5UPSYO7j3aBTjv7jjE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199021)(5660300002)(2906002)(38100700002)(86362001)(316002)(8936002)(8676002)(82960400001)(66946007)(66556008)(41300700001)(66476007)(4326008)(83380400001)(44832011)(6506007)(186003)(478600001)(107886003)(26005)(6512007)(9686003)(33716001)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3U3SVNWYmxKNlR0S1R6VXhsUWVud3BIa2NOamdzblkyS2pCalRuU3Z0MHpB?=
 =?utf-8?B?MDVJVUx5VTJ6VWgzNVRuUVFpV2YyS1hsdVc5d1BRdjc2MXdUWXdIRlUwdVJj?=
 =?utf-8?B?NDdQV0xEWXRsckJ4ZWUvWno2RzNxRFZ6d3Q3eEtsSXV1RFplS3BtVkpwc3ND?=
 =?utf-8?B?WHdGMDhqbkR5U0tGdnloVXY4Nk1sU0NaY2lIT05pQVlIcGttOGJLT0lsakp4?=
 =?utf-8?B?b2wxNWJlTzZuVjVXODFmSFlmcVEzQkpQbXkvcnA5bXpGVlAyTjlWWEl3L1c4?=
 =?utf-8?B?TGp3bC9DSm5YRHdOL2xCRmIrQW1NMEd0K2NjNG0xRk10dGY1NGpkOTNpZDJw?=
 =?utf-8?B?SUVXMHJqRlE2amVDTFZOZGVTcUNScnRpNXoyam9TeERKWEttOVptL2Q2Smkw?=
 =?utf-8?B?cFpJS3BqUno5aUEyVTdjYVhOSzNNSUMvUG1jQVRyd3dnbkNTYzZmRmFDa3B6?=
 =?utf-8?B?OTB2OFFQbkVlTGxUOHU2Mi9LU2lWc2JjYUhrcDBKUVlRS3U1d3FwSURpUEtJ?=
 =?utf-8?B?S0d4eXpSTThsdUFZaFE0aFpOQUxBSEdVM2N4R1greHBsZTBpanQ2ZUVTZmsy?=
 =?utf-8?B?NjV6NCtxSFlsTTNZa1JXcFk5Y0djdHhUTXZsQjJsTnFSVGxWdXgrNmRoamNa?=
 =?utf-8?B?NU9tK3crRzFhbHZ4Vlk4aVRmQWJHd0NDZzBaTUhPak1MR1hUeXUzeVZIYzdL?=
 =?utf-8?B?dExXUU1veW1LdzZIZnZZZzhZK1dzamFCbzlGU2RlcUxiOUlMNEMwbTRjWUNV?=
 =?utf-8?B?c2V0WDlEUTBPQUFUVjlyamcwM2VKK05HRWx2Nm9PVm9NN3MyR2dHNHRadXk1?=
 =?utf-8?B?TEZ1REhBMVEvL1RMMFc3c0NzY0N5UUtMVHg0cW5jeGdndmF0WnE3c0FDL3Vs?=
 =?utf-8?B?NFZuc3hSTGl4YUR1dE1jTGplditUbUR4K2M4NHBXQ1RaaWQzaGFKU2ZVVUFn?=
 =?utf-8?B?N3lEWWV1RVgzWW40WHQ4NFpWVXNNOVRLODRyWVkyZXdLMmQyS3YxRVNhRmxE?=
 =?utf-8?B?YWl6Q3ZLTXduRFg3c1VBWk81TGpHVzZuMFFGWlkwcUc1R2xGSUZYektaWVBs?=
 =?utf-8?B?MHNMeWtodGUreHVkL0FhdkloMEZ4bmRyZXZjK1FLLzFiV1MvTFo2ejhQS0Vx?=
 =?utf-8?B?Nk8xeTJwTEtwMTJTUWk4aEUxcWorNXJhYjNGcTdpNmFUZmI5cnNlUnBadXRS?=
 =?utf-8?B?YTR3Rnl1WlJpTDhFYWpIRml5SzhxY1F4REwyN3B5SUc0UXVwZDE0VnJHcFdv?=
 =?utf-8?B?R3M2OUNwd0hKUmV4MldjU2NZVEJYazlMRUJsQi9sQUJEeTZ4dzRTQVM1cW5U?=
 =?utf-8?B?b1RQNWhKU1NoTUNQSnN0M0hsbUtXVk5HdDBvV3RpZGluT0JvYjJhcFhtNS9T?=
 =?utf-8?B?RURiZTdYRG5iUlhpME84aGZVNVhmMmtGU0NmOGEyUkZRdnY3cFE2V25TdEs2?=
 =?utf-8?B?VzJaM0g0L3c2Nm9LRmJvQTZuYWUzaGdONFd6UEhtdjlod1pZb3lmZklKUXlm?=
 =?utf-8?B?MG9zbGpia2UrQy81MzVLM1VlTkIrb1dqVExKcmNURFBoeFZHb3ZTeC92REVk?=
 =?utf-8?B?K1VpZVJpemRDU3p2Mm9wL2s2UFFtY1hGbTI1Zm04L05JVk8xSDlYWU9xWndl?=
 =?utf-8?B?aGRmS01VbHBVNkpoTDZlMXE0c2hveE1OSmhUTE9RMGhqNVNrM1BiV3M0NkdG?=
 =?utf-8?B?WTV3MDludUZxL1M2b3BXWFl2dmxTMVJXaTgvUlZwS09WeXd6TWNQVitEdnoz?=
 =?utf-8?B?QkczNXZTd28yV2NCSFBGR0w3c2tHaTVIdzJtRUZ3SjNTakRscm1acDE3UDFv?=
 =?utf-8?B?WVRybC9RZjlTRlpNRUw5M1UwT3QwbEtubFR2L2pacmlNY3JJZTRrTDBEaXB3?=
 =?utf-8?B?UVV1N0dTejdmaHdFZVpMcjV6UE0rOWRHSVFlSWxWL21XTndNWE1KMFptcmJH?=
 =?utf-8?B?TEYwa1Q1SzVaNHp2ZStxYjdTWk9qRkdVVWwrWkYyR0tkd3F1UFNoZG93Vjdm?=
 =?utf-8?B?VG05MnBBL1JPTU1DekZRQUxlZDYwOU96NXhZTTJXbGlOVUxkWEVxRTNEWFk0?=
 =?utf-8?B?bGRaVWNyV3RuVFkwV05tV0xrOHBRUmd6NTVMTTZIdTZxWFYvcFdOQUdmZjZm?=
 =?utf-8?B?by9pRHVXbFBnZWprL2ZJOUpSYTFacnV1dFRrVEFmM2w0eVNjb1JTMzd1ZzR1?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b5ab0e2-fe8f-4d55-265c-08db3c40ec5a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 17:02:54.6518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eepQnXl47eCPoAPDO3Q4o33SnZW8ybVB1cgsnt7xAmtzpg1mW2fk7FmA6BKOIynHdpw/gyPP7b4BZ5OfCjDJVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6517
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/display: add
 intel_display_driver_early_probe()
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

Quoting Jani Nikula (2023-04-13 06:47:36)
> Add intel_display_driver_early_probe() as the early probe call to
> replace intel_init_display_hooks(). The latter will be "demoted" to
> setting up hooks in intel_display.c only.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 11 -----------
>  .../gpu/drm/i915/display/intel_display_driver.c    | 14 ++++++++++++++
>  .../gpu/drm/i915/display/intel_display_driver.h    |  1 +
>  drivers/gpu/drm/i915/i915_driver.c                 |  2 +-
>  4 files changed, 16 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9eb9898885bb..afc5bc38d006 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8005,15 +8005,6 @@ static const struct intel_display_funcs i9xx_displ=
ay_funcs =3D {
>   */
>  void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>  {
> -  if (!HAS_DISPLAY(dev_priv))
> -          return;
> -
> -  intel_color_init_hooks(dev_priv);
> -  intel_init_cdclk_hooks(dev_priv);
> -  intel_audio_hooks_init(dev_priv);
> -
> -  intel_dpll_init_clock_hook(dev_priv);
> -
>         if (DISPLAY_VER(dev_priv) >=3D 9) {
>                 dev_priv->display.funcs.display =3D &skl_display_funcs;
>         } else if (HAS_DDI(dev_priv)) {
> @@ -8026,8 +8017,6 @@ void intel_init_display_hooks(struct drm_i915_priva=
te *dev_priv)
>         } else {
>                 dev_priv->display.funcs.display =3D &i9xx_display_funcs;
>         }
> -
> -  intel_fdi_init_hook(dev_priv);
>  }
> =20
>  int intel_initial_commit(struct drm_device *dev)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index d20a279fdf51..b3dbfe2a892e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -32,6 +32,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> +#include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
> @@ -169,6 +170,19 @@ static void intel_plane_possible_crtcs_init(struct d=
rm_i915_private *dev_priv)
>         }
>  }
> =20
> +void intel_display_driver_early_probe(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  intel_color_init_hooks(i915);
> +  intel_init_cdclk_hooks(i915);
> +  intel_audio_hooks_init(i915);
> +  intel_dpll_init_clock_hook(i915);
> +  intel_init_display_hooks(i915);
> +  intel_fdi_init_hook(i915);
> +}
> +
>  /* part #1: call before irq install */
>  int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 84e7977f265a..c276a58ee329 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -15,6 +15,7 @@ struct pci_dev;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
>  void intel_display_driver_init_hw(struct drm_i915_private *i915);
> +void intel_display_driver_early_probe(struct drm_i915_private *i915);
>  int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
>  int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
>  int intel_display_driver_probe(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 082393ea3833..8a0a893443b4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -252,7 +252,7 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
>         intel_detect_pch(dev_priv);
> =20
>         intel_irq_init(dev_priv);
> -  intel_init_display_hooks(dev_priv);
> +  intel_display_driver_early_probe(dev_priv);
>         intel_clock_gating_hooks_init(dev_priv);
> =20
>         intel_detect_preproduction_hw(dev_priv);
> --=20
> 2.39.2
>
