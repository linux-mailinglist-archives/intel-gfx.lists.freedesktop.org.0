Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8A96E12E5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65DE10EB9A;
	Thu, 13 Apr 2023 16:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF3610EB9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681405047; x=1712941047;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=igmjN9070jOvStGyw4TQQ1EG9I7V6FT1MlHr26Olvco=;
 b=J6DZCwLuQv0VOpah7qJMmPDEEP9E2NVdufbw/lXfctEt3ZsPZ3OoGQQc
 tZ6NNlgKcK5pO3cAZMd9GPG/3Mp3q28xu5egih6crSEFXSR9CcRFXLMwo
 h4ToOYEZueA8ALMbeEnI8/4tLmg/INzIvLsbAnbcK1E+kg7mEmbxAzpkR
 BrY4Oe2SFoNkg9cECkHzczzh0vP+Tkn/jFMtcSdOwLRdmEc0iGOQgFdZ0
 ZwoXAKVPkzzAUDYXLVSK6uf3e1cwVSgTE7Zd7w7pTaACn60pd9VizFrsf
 xGuvmK3cwGlJA0Ef0Z3XlJ4kT1B9RKVIStWedREVjR0G/BYojQwSo3t5/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="407099293"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="407099293"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="800873683"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="800873683"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2023 09:57:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:57:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:57:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:57:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:57:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+VSjeiPF+vEdC316MtJUr36b1j5fv2o7m/u7CO5r57Na2ZpInZR1wz9KyHFVZQrRdFcEkBfHDcgj7wenIHa5JTLp8dVpu6ADZWPV4iS/QHZr8W23pL0GBx9LSVodrapY23BJ/KsPnK/4VsDAEMDaqqEtkcoBpiqrNyU0zwNGyFX2ycIJ9P0PNAUHigm470W0EXnaKHCV23dbnRb3PA9T8duWgOiWd7/Yv8ZBaMNMm03O9BnC7B1JjnPWszL61mztEUPnuWgGCOLqvXz2PFkasDsp3IqEnO+/Wy+kzpQzBN1rht/OrbvaX0pk79ZNopqlir/Ws2j+hqeyPaRWy6xZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p7J1nxYqlFeutEYSCJ1evlgr0l0nTMpfKeOLm3azH1E=;
 b=EqKNpveYGbCP4MwLv3MoinCF0xdCDkIcxb7o0tgBYMzXCNuhJSdyL0KSQLnaHOI6MMlDONWNEyjl+iVyoTg7o0USf9gD96mm9SxujowH+todWdpV2ez+KxMP2bFVSs5vSGv7RQ+AV4RFUg++PGz8hSmX28WbAE9h+6ahdNHuLJirZChmZ2LYA8DwFKMCnLKVDgimpO/q6H12Z0qkTiL1MCOkBC/W8Jkr4i555rkEO+ElTw8AwTYzk+0MxAWt6K3xV95MBkykRwb2bmX8M1qU/ggsFuQqCAm6+BEmyTY/vcz7XnhSTQGcxN3mqCcQr6eIHCcqYMU7ZHMdv8cJJRQmQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BL3PR11MB6361.namprd11.prod.outlook.com (2603:10b6:208:3b4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Thu, 13 Apr
 2023 16:56:30 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:56:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8576baa1bfba4f4af913f3ba6c04d94781ba6fda.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <8576baa1bfba4f4af913f3ba6c04d94781ba6fda.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 13:56:26 -0300
Message-ID: <168140498643.4412.4124150051318614141@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0053.namprd11.prod.outlook.com
 (2603:10b6:a03:80::30) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BL3PR11MB6361:EE_
X-MS-Office365-Filtering-Correlation-Id: 566d160e-b727-4996-67c6-08db3c400777
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xLiGlUy8qGalTsZfI6shpM88ATpx9cOKrJz7Kt2zMtNjIdvHF6nCtsypK/MfPu7DSmC4yP8QAZsnsDy2lM10LTg9LtkgmYjTFt/6yIMJLBuod+8guX0za+8Q1AOIRm+yGTFYGx7nsbbVGV8DRieOdR4wy8AsOAy1vozC/Y7n3w/K+jgFqDDraPQuKqo+1pmV+NPwsU+u0dy3k3qEhP/MLJ8D6y01yjRj/Slhf8byzxO+jcPZKrAVEg+7IkeyYX3uphAI9D4kq/sAJEpFxEyRJvIEjpr10YTCQZLELvOYhcwrSh1i9kKHPdJAKsNaq/XbPkHP7H7tF2IKVgO+zVlimrd5fgILoOiF1Fn3D7JRvj4eBmz3tC0EZvjTV6sblLKZBhyEm8TwnS/JZli+iRhqXcHtjYjxWCnxEMFZxAv0JFIJTQ0DCa3ydRTn5tZiyDbtj1fwuuwLWlXwtcHipA4bm5QjRRDiffbY9rX9ZfaWIix6qifqOWIC9M0OMmsl7CFh0tDXbN2HTVDwSzIwn+sz0k01EIozpLLwlLCZvy+mYaa/q1YEQxthRQ2Ri7UN+t01
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(136003)(366004)(376002)(346002)(451199021)(38100700002)(478600001)(6512007)(33716001)(9686003)(26005)(107886003)(83380400001)(6506007)(6666004)(6486002)(82960400001)(41300700001)(66556008)(316002)(4326008)(66476007)(186003)(66946007)(5660300002)(44832011)(2906002)(86362001)(8936002)(8676002)(66899021);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUVBL2tadEZlMDN6dW1RclUrbmdrMTZ6SGNHWWJaRVFjWmMxbjY4TDJBZnVJ?=
 =?utf-8?B?K05PNmc3TDNOUitzUDdsbXM2b0JpZEMvOXRhY3psY3hZdDlTcThodGRFR0tw?=
 =?utf-8?B?YU1OWjdPSTk3aWxjRlJzckJ0RktROERWanowRVhNUU5tMzdSbkJqYkVFcU5t?=
 =?utf-8?B?RXR6Q2FUZStZQ1dvRnBaZXBocGZoQ1Q4SHdFL2l5Z0ZQZldLMCswQkwvbTl6?=
 =?utf-8?B?alo0aXVxQnpDVlcwNWdwNllMbStDVkRrVjlJLzROa015YUxwMEJoaDJEenho?=
 =?utf-8?B?SnQ4M3l2SXlON1FIYW1NdC9Ycm5Idm5DMlFESVg2cmFDNno0MnV2ZWRMS2NU?=
 =?utf-8?B?UzNNY0FER0F6Uk8zK2svdVlOajd0UTNqbDBnOXRYM0o0eVVlNEx2VlJTVUcy?=
 =?utf-8?B?NWxCZTVuMXZNSTE3OTJoQzhOT3Bndzd4MXRpTWllc0xkeVE5TnI5a1RQeUVG?=
 =?utf-8?B?VlR1OFdGRENmM0dEdVFvL0h0cWxVdHJTRlRTa1pLUURYcDU2a0lId3IxZjNP?=
 =?utf-8?B?aFVXZXJLYmppa2wxU3N0YzlLZy9JS3p4MVhqL2NXdUVQWk5GcFFHZnhFd0tJ?=
 =?utf-8?B?WTlZL2g0aXplcURhLzRhVEpBeFRjU1RXSU5TT0NMeHNtNW14Q3FRRGt6YUFs?=
 =?utf-8?B?SnJVeDg0aE1ZSlJoZ1Y4Tk4xaG02ODVDbDF6QTMrRVFjVHZwUHp5dmZDMzMx?=
 =?utf-8?B?bVZ5blo3a2pTTStVdVBzM0M0b244MEJWMnNxOVMvY1lGcmw2aDRhc3lBSm9h?=
 =?utf-8?B?czBFM1FvU2N3Nk43NEFGKzRRSWhvQVNiVEV5NFZndWFQTEFCTVdYVWNoM0No?=
 =?utf-8?B?MWNSKzZUZU5qVXZqczNNVWQ4SHlSeXEyazdqcDhPajdDRTE0RXA4d1Y5ZGJq?=
 =?utf-8?B?QUJYN1lUV1IrRk9IZ2FSM0xpemtlUzJJVHByNE45anFGYzFOZzBxUXI2emc1?=
 =?utf-8?B?U2xOejZ3alpFNVdJQkUzS01iWXZQbEVwaEdjRW13M3Jtbnkzd3N6b2tPMzBB?=
 =?utf-8?B?S044R0tZTlAycmFSZ2lXY0tSWnZsU3p4T2x3OTFiODNNdEIyMnZFQUd5cjRY?=
 =?utf-8?B?QWNzeE96OE9hUnBTVk1xYWgxTGJSVk5pcFMyVmRPdnM0cTA0SC9idFJLeVJl?=
 =?utf-8?B?eGxTWkhwOUVDZ2ZuaDFDRnV1UUpmVDZ5N2x4dHZHOGpRWDB6YmZEQ01JSTVJ?=
 =?utf-8?B?UGp2citwck01dm1aWk9UTTJBZ2tmQ1VXeWNoRHRERGdZMk9HS09hMFZCZXl1?=
 =?utf-8?B?akFZeWNSQUtTZFR4cEVyRFRlZS9xU2xnT0ZSVi8xcGh3M0lEVWplVFhUM1NI?=
 =?utf-8?B?V1lqUHFRa0FWRFdtTnNqQ0FwSk56SVJaRzBaaFNBVWlTUEhRMTZYN2Fldmp0?=
 =?utf-8?B?RTNBUDBJNUxhM09FdUg2Y1FHcUx6eitrVUgxdGVDOW5yZEZ4c2FteXkzWXpK?=
 =?utf-8?B?dFBzeFNlbm9helkwWHNXM2JacTR1OGZSYTV6akg0N1VzK3FGK1ZicVF0MXpk?=
 =?utf-8?B?Q0E5cUllVURIY2x3V1k4NUFrbUMwaEZreVJWU2U5a09jRHhjeE55eUk4dWpW?=
 =?utf-8?B?c1VTamxQbmVWZXUzNVBvclQzM0RndWg4aGMzZXp2R2ZBZGdQdktzWmJhUFVP?=
 =?utf-8?B?Zlg4ZGRRNzVaRVNnU1VVTVR3RU85RTJJUkl0dXF5VjNtNmIyQVZBYmxMMHJI?=
 =?utf-8?B?aEljY3pPWFN2ZmtwSXNWSDNqL1pjdlpMa3NsajRHZEpjc1hCZnlhZm4ya1NQ?=
 =?utf-8?B?QnJNSmUwTC9Hdi9vOVZrMTdHR0cvTlZRbFF3M3hHeEF3TG8xNnlrQ1lLQ1RF?=
 =?utf-8?B?TUV4TkRxbnpqamkzbzJlZVRWN21QQ3FwUmhRa0dqOHg1R1RTL01OWVpuOUxT?=
 =?utf-8?B?L25ySk5DKzhQVzNpZVpvTmpYZ1FoWlJHdXNyb1NsTWN5YVdKQXZuRVIyZ2tW?=
 =?utf-8?B?OUxsVnFhb292cWQ2OUQwRHd5SFF6cnQvbFBIem80TUtCOE1jR0tiTi96c1Aw?=
 =?utf-8?B?c2JIWmlBSzFhSnAwWHQrNkpncmxZejBCWFVaTjFPWHg5bjdhdU1JaEM2VXRs?=
 =?utf-8?B?VVVFcGJnRzJuZEhrV1dLUWxEdGtJQmlzM0hXVnZlRS9MMEdyR3BDUUx6QXZQ?=
 =?utf-8?B?RzdPUW95T2hDR1Y4WlY2ZHhxbU5yYmd1UzZWOUZvM3VJRm9teEMya3JMUzlu?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 566d160e-b727-4996-67c6-08db3c400777
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:56:30.6959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i8JsHtyQkHTs2taUNTPKA7sRmsHjgR0lUT8y2bf2gwViTIhlrh26s7ko6Vg3r4wFmGoB3WpcTbzWOONLeCARsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6361
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915/display: move
 intel_modeset_probe_defer() to intel_display_driver.[ch]
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

Quoting Jani Nikula (2023-04-13 06:47:29)
> High level display functionality only called from driver top level code.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 23 -------------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  1 -
>  .../drm/i915/display/intel_display_driver.c   | 23 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  4 ++++
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  5 files changed, 28 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7c66b9ce0db5..dfec17bb3a7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -31,7 +31,6 @@
>  #include <linux/module.h>
>  #include <linux/slab.h>
>  #include <linux/string_helpers.h>
> -#include <linux/vga_switcheroo.h>
> =20
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/drm_atomic.h>
> @@ -40,7 +39,6 @@
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_fourcc.h>
> -#include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_rect.h>
> =20
> @@ -8810,27 +8808,6 @@ void intel_modeset_driver_remove_nogem(struct drm_=
i915_private *i915)
>         intel_bios_driver_remove(i915);
>  }
> =20
> -bool intel_modeset_probe_defer(struct pci_dev *pdev)
> -{
> -  struct drm_privacy_screen *privacy_screen;
> -
> -  /*
> -   * apple-gmux is needed on dual GPU MacBook Pro
> -   * to probe the panel if we're the inactive GPU.
> -   */
> -  if (vga_switcheroo_client_probe_defer(pdev))
> -          return true;
> -
> -  /* If the LCD panel has a privacy-screen, wait for it */
> -  privacy_screen =3D drm_privacy_screen_get(&pdev->dev, NULL);
> -  if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) =3D=3D -EPROBE_D=
EFER)
> -          return true;
> -
> -  drm_privacy_screen_put(privacy_screen);
> -
> -  return false;
> -}
> -
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
>  {
>         return DISPLAY_VER(i915) >=3D 6 && i915_vtd_active(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index e46732d26b7c..6ff8faa1b5ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -521,7 +521,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_sta=
te *crtc_state);
>  void intel_update_watermarks(struct drm_i915_private *i915);
> =20
>  /* modesetting */
> -bool intel_modeset_probe_defer(struct pci_dev *pdev);
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init_noirq(struct drm_i915_private *i915);
>  int intel_modeset_init_nogem(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index d4a1893e9218..1386f2001613 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -7,8 +7,10 @@
>   * details here.
>   */
> =20
> +#include <linux/vga_switcheroo.h>
>  #include <acpi/video.h>
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/drm_probe_helper.h>
> =20
>  #include "i915_drv.h"
> @@ -19,6 +21,27 @@
>  #include "intel_fbdev.h"
>  #include "intel_opregion.h"
> =20
> +bool intel_modeset_probe_defer(struct pci_dev *pdev)
> +{
> +  struct drm_privacy_screen *privacy_screen;
> +
> +  /*
> +   * apple-gmux is needed on dual GPU MacBook Pro
> +   * to probe the panel if we're the inactive GPU.
> +   */
> +  if (vga_switcheroo_client_probe_defer(pdev))
> +          return true;
> +
> +  /* If the LCD panel has a privacy-screen, wait for it */
> +  privacy_screen =3D drm_privacy_screen_get(&pdev->dev, NULL);
> +  if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) =3D=3D -EPROBE_D=
EFER)
> +          return true;
> +
> +  drm_privacy_screen_put(privacy_screen);
> +
> +  return false;
> +}
> +
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 4f6deef5a23f..4c18792fcafd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -6,8 +6,12 @@
>  #ifndef __INTEL_DISPLAY_DRIVER_H__
>  #define __INTEL_DISPLAY_DRIVER_H__
> =20
> +#include <linux/types.h>
> +
>  struct drm_i915_private;
> +struct pci_dev;
> =20
> +bool intel_modeset_probe_defer(struct pci_dev *pdev);
>  void intel_display_driver_register(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> =20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index cddb6e197972..bda5caa33f12 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -27,6 +27,7 @@
>  #include <drm/i915_pciids.h>
> =20
>  #include "display/intel_display.h"
> +#include "display/intel_display_driver.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_sa_media.h"
> =20
> --=20
> 2.39.2
>
