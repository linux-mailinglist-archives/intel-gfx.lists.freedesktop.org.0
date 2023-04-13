Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B2C6E0FA2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 16:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5313E10E0CE;
	Thu, 13 Apr 2023 14:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A89110E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 14:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681394818; x=1712930818;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=gph18IE9VyReOwYqLsL6+8LMbtunj6vxfI+4AimcxzY=;
 b=c5tCWrhTEUj9GjKpaRjTGnsp5ns8WQ10qd+h1FCzDY77SLsThuqsUMIN
 JrdLcwBlHaA7wMxf6EV0wjvTu70Mi/mFyYVCLyQiHJ1KKJe/i9rOU4Thk
 KncowfJYOJ+laYCzuQtPPRh74KA3/7UFYsGpjy/mJxuyc0ZTd+JlOOBvi
 lgP5cUd+tH4d4EloUa+ADtdHUoC7ugCJ1TFgYH0FTB/kP555Z0JwtPf2J
 +ypY9R52ZKe3WqLdM+zsL2GdicOwEpZGYtz8Y0NVuQfs2QaqEywy5VyTL
 r6PV9ltdcQ9NNgooAJ3eTGcuaihSeD/NxZBa2KgSyJYc6GFOXKvQ7tn1R A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409359063"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; d="scan'208";a="409359063"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 06:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="833154195"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; d="scan'208";a="833154195"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2023 06:33:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 06:33:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 06:33:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 06:33:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxhmlbQ4/Lg+ghgcBALPFS5/qtltbs01p5gtciKe3dOHTnmCxHG7YSQes4xKv1JTy066cl0nNQ0PtFiXnSPbeauDOoj4E5WFXtqJhnQ8mkKGDBEi39uIa0z69gey8NCksN6h4HUxniyXcym/dwRPtUrdwAxQUyn37LLDmZIoGn7179qIZg8H6bnFZcn86KmHCDhj2cECnk2nqM3Cw8lHkFfjfzfcrTWChVwVTieuZhX75CD4CnRJpPX3XwMgiveal4OqxEUQuBmA5pJaoelhXOegYxFOQWyDFrKMOjg60JuYqKuWfqE6nhjPXJ45ji4y/00CiOWrC05HLL1z/pDXsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mx/d0lEm+CjgTEjvZELbMQ8Hd5FL9VNpSfMF1E+hBWQ=;
 b=jqRp9Be8KGffun8ds95fO+Q5fH3Wa7kV/ICP41zWpHXRRdb/HTb80Xd+zGEgaZ28Ss9pd4b8NeFoeoaefbX5cstQOC/uCVMgcnnrknjipkFF3liNCCW/+yHl0uZKEHv1ez+LjXGF4nVYT5yiusYZYAJ3Tjv6OLP8ysewzu4LmwcKJvUFvzJdsU9XU+mooNsjhIXboaRLcS7+gu7Myh1H029AMAlj2IdN4ouOYS6yL6uKj9kD7sfM4Qm5cuhbWyfZNN54H5wp5/PqN+gByjYuzLqzGBNVE84n18NSfIS241Rga3iyZ28yvSmC1koUBg6wbsII8ArTPS7cDLX3MtDOhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB6469.namprd11.prod.outlook.com (2603:10b6:8:c3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 13:33:52 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 13:33:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9ac5d37811b806e6849f913a3f527cfb6d869818.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <9ac5d37811b806e6849f913a3f527cfb6d869818.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 10:33:47 -0300
Message-ID: <168139282706.4412.15825674669289194174@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0021.prod.exchangelabs.com (2603:10b6:a02:80::34)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB6469:EE_
X-MS-Office365-Filtering-Correlation-Id: 660dbef0-d2a8-4c06-0c6f-08db3c23b7d7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5RkxVlKmf/sssRDQy3iI955Mv4sE2Od6SaN+MwsYLHtWoRSscYB90zJCzb/7yOc6n3wnedOJZ01W3OgfGwO6JQ4XzZKWX3VtKMXYF/AV3S2X9q2X/uvpZoAbBMTXgzcmnOmVELsk+FsErK04yBB39A9o872yVIGcV8WNhgvvmrrQgyc6POhTPwx+4xq385BVhMGDQS0TZFiusAcXuXoec4p+BTvWeEpXjQUcBKC6I0SyLatrN6a42fUNVpW9gQj4DLA7jBGXFRqcWMZLWUQ8Fm/iguyGsysAR7ggf1HXrIpq+kvIDPYq43KsC4ILhSZz8eTeuuzAjIFF2L6Q8DIBZp/wWY00HWdZLuxK5FUv4BQ/9K3kO9mU1HWB4majOa0ikjb4sCeAlBF15t4rOxawOzb0UV0Vn6F4g5gxcaUYnmYLNTnMGvQvW1/inIjGnUoINNAdkrkLLAUarHAzz1rfXuN+P9z+dj+IfnQYmQRbhkBVn4TlDhbU9uQJYwWBCFSzy+wOAdYqkvsr45SyH0iFQ6LzBQMpl1YiJylRbxLaL41Rr1duSQ5Zc2OLyU23NzVv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(6666004)(6486002)(66476007)(66556008)(66946007)(4326008)(2906002)(44832011)(33716001)(86362001)(41300700001)(82960400001)(5660300002)(8676002)(8936002)(316002)(38100700002)(478600001)(9686003)(6512007)(6506007)(26005)(186003)(107886003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmhtVXFoU1JjREpySlVaWkF6ZU5BSEErR0cxbFBGYXMvdWxoQ0xGVmVzdkVx?=
 =?utf-8?B?T1pmR1ZhNmlMdFBpVlE3NDhCVGh3VjY3NjAyQUlaQ2pCTi9zcmxaSWNyUWk5?=
 =?utf-8?B?RVVpTnR6NFNrak1QV2FXYSszNFVJODdjOVJlNi94NXl1Uis1ajdEN3JrR3Zo?=
 =?utf-8?B?M1NuY1dPYlFyK1V2bUVEalFVTEszVjQyU3JKS3U5bHo2ZnAyRG5Vd3VBUWE2?=
 =?utf-8?B?SEdoaGtVeXZlWC8waDhSN0swR2VMazNhd25CYnlWMmNpU3N4TEJUNmtXM2p3?=
 =?utf-8?B?aXhkQ2hKMjJFVXVGT0M1djVlWXg4ZEZpR0Y5THBOY2tPSlB5aWZqbWpicHdx?=
 =?utf-8?B?QzNEMUNPRjBUVXdxelJvVnZWK0UrOFdGZnhMRDkrWWY2eHZmTjBIM0IyYnF3?=
 =?utf-8?B?cHBXSkVqQU43dW5uY2xsWlJnRGJwellWTFBiRjVvbHpCWHdkR2hTbnRDaU5G?=
 =?utf-8?B?Q0xIallPbXpXWFozSElQcGorMS9YemdmUE9iT2k4cjlpcEUyd3o2N0pNdjd5?=
 =?utf-8?B?S1NYc0tobVRaV004bm9GcktUN0RJMy95ckNPYnlnc1ZxbmlxRFFUR0JUT0E5?=
 =?utf-8?B?SERaWDE2N3pxTVhYR0F4emUzU2lyMFRHNG80S01DOFFuQVplb0NjWTNrSXdu?=
 =?utf-8?B?NXdPa1JXVlRCalM2eC9vNHhXbWhYUEF5K0kxVHhkd2ZqOXI3ZEgwZHN0aTRi?=
 =?utf-8?B?MmFuQ1NhVWlaMmpJZVRQWGdwazJNZ005YVh4Sk1sOU9XWmtYOXI2dHVkaGJt?=
 =?utf-8?B?Mk12M2pJMVArM2cvdldsdlEvRG1kUDJ5d29jWlN4bmtQT1RJK2V2a1FHYmdi?=
 =?utf-8?B?VVVsc2s3MklBRlQ1SEpYTHpNUDVVVTZpc3FvZGU1eVV0RVFoemVTaEs1aXkz?=
 =?utf-8?B?NVE3UWhvc0RrbjZJOW5LVTZ1dW9zb2tlWENBemxnSnFzZ292czFEeVBPNno0?=
 =?utf-8?B?WjhRYWZwZzJ0eFdUbkc4aGZKUzNCaEJaWldncVVxZWsxMTJXNmJMQTJtVVlK?=
 =?utf-8?B?SytKUWdLNXlOTm9oYmdqM0xTMVk0SEtYei9sZkhpaGVFVGVtcW5CSHB3TnJx?=
 =?utf-8?B?YStYa25pdFVwbnFuUWx4UnRCckV3NEZmb09NVlk2ZEswdDR2bTQwY2ZnSWs1?=
 =?utf-8?B?NFFQMEVadWVDUnZabHR1Ni85OTFCL3VvZTNDaWU0NlM5SjBFTFNvRTdqRzZO?=
 =?utf-8?B?dUszMWVubmJNaUZ2a0JGVnB2dDE2elRlRC9rNnh4SlV6Z2hqL0w5c04wWmhM?=
 =?utf-8?B?QkJFWkZIYUwzVHF5U2Z2dStqU245VjlqeFlnbWVCNlJQdU5tRnpuVmlLbmdn?=
 =?utf-8?B?UEl2YngwTlArSmxmMjJWc3A5RkNXdGtFQ0FZMXhjTVEyQ0lsOC9Zc255QzUr?=
 =?utf-8?B?R0J1dUUwcHVEdmdaaWRFSk04L3JoUHd1Y05Fbkk5cUZKdWwvcDk5ZkE3VW1v?=
 =?utf-8?B?MFJIZFRuczZRTm1GeCs4dVVmVWQ1SHRMYk5PQmdvdExxUk1UQnhUWExwWDJj?=
 =?utf-8?B?WjdHS0ttbDBHUWpocTd2RGZpZjNQVHNxZWhUS0V0a0tSUVBwbjAwbHhwUGdj?=
 =?utf-8?B?dkNxVXFiUXM4VTJQcnVBM3l1UGVSL24wSEFsYjBDVjR4VkdLV2JJMGRZeFUw?=
 =?utf-8?B?MGgrbVdRQXMwWU0zS1ZBT09JV0tIZmZPS2VaM2F4RytOaDh0RzhaOVlKaWxp?=
 =?utf-8?B?Z2pjWCtvVXdwMytLczZCbmJ3RXRGK0ppSVR4am1mSnZoVCs0UXFQUmU3ZUxL?=
 =?utf-8?B?bWIyall2WWxDNFViSFU0V04zMVBqOGl3U3ZuS1NkeGlLaGxLTjRzVTQyWFY0?=
 =?utf-8?B?V1RJQU1NVjdVcUhkQ3pOU3VJUWo2WmVYMWFBcXA2R3c1SCtGZkxQbWVuTlYw?=
 =?utf-8?B?Y0VSN2t6MFp4SzlLbWFlbnBuTjZYZ3VIY2Y3cGJXUFFSM3Z5TzcyM3IxNWk2?=
 =?utf-8?B?YnYwMnBjSTBvbVVWZGtmcUljQzJYNkQ4ZDV5QUFNcFNsUzd5dzZTaWh6NWxo?=
 =?utf-8?B?Y0l2L3dzWUdEVk41NjdkOVdnbXBWYXBZbHJGcHNEMUNXZTgrQmlZazJoeFpx?=
 =?utf-8?B?MVRaNmNXbHpHWXE5N0hWbDVzYUltZXRtYlo2QTRVMHc3anFYakw1Z3BMeW9m?=
 =?utf-8?B?SWJMLzZEOW9WT0pybVVlVWU5NGJtVE5HWWFydTA5ZzJEbStNNVovd1ZnbVhJ?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 660dbef0-d2a8-4c06-0c6f-08db3c23b7d7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 13:33:51.2244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J9mIgX3Sy2tWPAgkHlP0E7bRNuJDE1gWWw4gWlRyGi8Ml+X08lriqBNI1V+yZRJEwWLUlX0nyA2eS2IklPe72Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6469
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/display: rename
 intel_display_driver_* functions
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

Quoting Jani Nikula (2023-04-13 06:47:32)
> Follow the usual naming conventions.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_driver.c   | 16 +++++++-------
>  .../drm/i915/display/intel_display_driver.h   | 14 ++++++-------
>  drivers/gpu/drm/i915/i915_driver.c            | 21 ++++++++++---------
>  4 files changed, 27 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 56e3aab7e1c6..f425e5ed155b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -833,7 +833,7 @@ void intel_display_finish_reset(struct drm_i915_priva=
te *i915)
>                  * so need a full re-initialization.
>                  */
>                 intel_pps_unlock_regs_wa(i915);
> -          intel_modeset_init_hw(i915);
> +          intel_display_driver_init_hw(i915);
>                 intel_clock_gating_init(i915);
>                 intel_hpd_init(i915);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index f7805c6f1b63..45e425100385 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -72,7 +72,7 @@ bool intel_display_driver_probe_defer(struct pci_dev *p=
dev)
>         return false;
>  }
> =20
> -void intel_modeset_init_hw(struct drm_i915_private *i915)
> +void intel_display_driver_init_hw(struct drm_i915_private *i915)
>  {
>         struct intel_cdclk_state *cdclk_state;
> =20
> @@ -170,7 +170,7 @@ static void intel_plane_possible_crtcs_init(struct dr=
m_i915_private *dev_priv)
>  }
> =20
>  /* part #1: call before irq install */
> -int intel_modeset_init_noirq(struct drm_i915_private *i915)
> +int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  {
>         int ret;
> =20
> @@ -246,7 +246,7 @@ int intel_modeset_init_noirq(struct drm_i915_private =
*i915)
>  }
> =20
>  /* part #2: call after irq install, but before gem init */
> -int intel_modeset_init_nogem(struct drm_i915_private *i915)
> +int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  {
>         struct drm_device *dev =3D &i915->drm;
>         enum pipe pipe;
> @@ -281,7 +281,7 @@ int intel_modeset_init_nogem(struct drm_i915_private =
*i915)
>         intel_fdi_pll_freq_update(i915);
> =20
>         intel_update_czclk(i915);
> -  intel_modeset_init_hw(i915);
> +  intel_display_driver_init_hw(i915);
>         intel_dpll_update_ref_clks(i915);
> =20
>         intel_hdcp_component_init(i915);
> @@ -318,7 +318,7 @@ int intel_modeset_init_nogem(struct drm_i915_private =
*i915)
>  }
> =20
>  /* part #3: call after gem init */
> -int intel_modeset_init(struct drm_i915_private *i915)
> +int intel_display_driver_probe(struct drm_i915_private *i915)
>  {
>         int ret;
> =20
> @@ -382,7 +382,7 @@ void intel_display_driver_register(struct drm_i915_pr=
ivate *i915)
>  }
> =20
>  /* part #1: call before irq uninstall */
> -void intel_modeset_driver_remove(struct drm_i915_private *i915)
> +void intel_display_driver_remove(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
>                 return;
> @@ -402,7 +402,7 @@ void intel_modeset_driver_remove(struct drm_i915_priv=
ate *i915)
>  }
> =20
>  /* part #2: call after irq uninstall */
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> +void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
>                 return;
> @@ -436,7 +436,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i91=
5_private *i915)
>  }
> =20
>  /* part #3: call after gem init */
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> +void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
>  {
>         intel_dmc_fini(i915);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 947b666575ee..aab498617b90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -12,14 +12,14 @@ struct drm_i915_private;
>  struct pci_dev;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
> -void intel_modeset_init_hw(struct drm_i915_private *i915);
> -int intel_modeset_init_noirq(struct drm_i915_private *i915);
> -int intel_modeset_init_nogem(struct drm_i915_private *i915);
> -int intel_modeset_init(struct drm_i915_private *i915);
> +void intel_display_driver_init_hw(struct drm_i915_private *i915);
> +int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
> +int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
> +int intel_display_driver_probe(struct drm_i915_private *i915);
>  void intel_display_driver_register(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
> +void intel_display_driver_remove(struct drm_i915_private *i915);
> +void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);

Looks like some comments need to be fixed now:

  =E2=9D=AF git grep -w -e intel_modeset_init_hw -e intel_modeset_init_noir=
q -e intel_modeset_init_nogem -e intel_modeset_init -e intel_modeset_driver=
_remove -e intel_modeset_driver_remove_noirq -e intel_modeset_driver_remove=
_nogem
  i915_driver.c: *   - drive output discovery via intel_modeset_init()
  i915_driver.c:   * Modeset enabling in intel_modeset_init_hw() also needs=
 working
  i915_irq.c:      * intel_modeset_driver_remove() calling us out of sequen=
ce.

--
Gustavo Sousa

> =20
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 5ccb24498cbf..9d06dae47735 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -791,7 +791,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>         if (ret < 0)
>                 goto out_cleanup_mmio;
> =20
> -  ret =3D intel_modeset_init_noirq(i915);
> +  ret =3D intel_display_driver_probe_noirq(i915);
>         if (ret < 0)
>                 goto out_cleanup_hw;
> =20
> @@ -799,7 +799,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>         if (ret)
>                 goto out_cleanup_modeset;
> =20
> -  ret =3D intel_modeset_init_nogem(i915);
> +  ret =3D intel_display_driver_probe_nogem(i915);
>         if (ret)
>                 goto out_cleanup_irq;
> =20
> @@ -809,7 +809,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
> =20
>         intel_pxp_init(i915);
> =20
> -  ret =3D intel_modeset_init(i915);
> +  ret =3D intel_display_driver_probe(i915);
>         if (ret)
>                 goto out_cleanup_gem;
> =20
> @@ -829,14 +829,14 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
>         i915_gem_driver_release(i915);
>  out_cleanup_modeset2:
>         /* FIXME clean up the error path */
> -  intel_modeset_driver_remove(i915);
> +  intel_display_driver_remove(i915);
>         intel_irq_uninstall(i915);
> -  intel_modeset_driver_remove_noirq(i915);
> +  intel_display_driver_remove_noirq(i915);
>         goto out_cleanup_modeset;
>  out_cleanup_irq:
>         intel_irq_uninstall(i915);
>  out_cleanup_modeset:
> -  intel_modeset_driver_remove_nogem(i915);
> +  intel_display_driver_remove_nogem(i915);
>  out_cleanup_hw:
>         i915_driver_hw_remove(i915);
>         intel_memory_regions_driver_release(i915);
> @@ -872,16 +872,16 @@ void i915_driver_remove(struct drm_i915_private *i9=
15)
> =20
>         intel_gvt_driver_remove(i915);
> =20
> -  intel_modeset_driver_remove(i915);
> +  intel_display_driver_remove(i915);
> =20
>         intel_irq_uninstall(i915);
> =20
> -  intel_modeset_driver_remove_noirq(i915);
> +  intel_display_driver_remove_noirq(i915);
> =20
>         i915_reset_error_state(i915);
>         i915_gem_driver_remove(i915);
> =20
> -  intel_modeset_driver_remove_nogem(i915);
> +  intel_display_driver_remove_nogem(i915);
> =20
>         i915_driver_hw_remove(i915);
> =20
> @@ -1244,7 +1244,8 @@ static int i915_drm_resume(struct drm_device *dev)
> =20
>         i915_gem_resume(dev_priv);
> =20
> -  intel_modeset_init_hw(dev_priv);
> +  intel_display_driver_init_hw(dev_priv);
> +
>         intel_clock_gating_init(dev_priv);
>         intel_hpd_init(dev_priv);
> =20
> --=20
> 2.39.2
>
