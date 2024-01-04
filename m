Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FDB8245FA
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD1F10E4EC;
	Thu,  4 Jan 2024 16:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE2B10E4EB;
 Thu,  4 Jan 2024 16:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704385047; x=1735921047;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=X89h7Kj6Yrj2BNwO2oGsAf+K8xL9OSW017WoBZ5W5kk=;
 b=bh7sJ+bk8ye9Deqo2m6zUd+nOWSWuegDMvvx1r1AW/VQ9Q6UBKW6qd+d
 6liDEHaJWZUTKB3QdrmSDfdK6/Sij8/owURzBTBJypTseifCX7EY2KF+J
 jP8pibKK3zOaRd2kNIn7cUDRuh/n+pa+FZD3KlGWnFLkJ9QwS3N06bsWU
 qHPof18eZhkoNCU+IskhWEGg/ltD9JR1UdZT6WDX6G9L+SrDa2ciCLwSY
 tC3D532XTugi5CzSH7fHeT/kJE6ga8Vyys9mlvXUnFbEY2VvJQ3huzteY
 /nIgPApprpmzcznB4pjd5KGJUjfjNRWAojZCOcK7Thp5+3etRNIbScJMu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="10678969"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="10678969"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:17:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="14945687"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 08:17:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 08:17:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 08:17:05 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 08:17:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L52jYnbdfgk2st3BZqJ7Ds+fm5nMaMc9WEAIJaT9EkmfAa8BrKgsyrxA7AuH1vz7g6PukINte9yatGSaR04dUV73OFJ4tigfOfoavo9nSzkNUfEkRdL8ko79Gg1oIFPdToYUKUnsK/6ej9wa9GXSVOgkF0hpANYuv0Wg7hEu5u8D4WQuXMIM5QG2FpbU6ObnoW+6vq9TfSkKUOgGYxbKROsw+hYIEKbW5P98sW7ZB7KcVSqs6KpkcMw6umGYLtbzLyXTBMG92vdzp+KXxJEOtgHJZ24Lyh2UNe+BvAJ5Ego//sWPD0BYwpy9+o92vIovdBAhlpZOHlebs9+lcHVdGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BK2mCgVQVLaR2bfXGtgv/njdLF1YtCEeTUAhoJsSjx0=;
 b=n2O+ryUIWpq21DICVua/LXw8dhnE/dcpVrZg4Qo7hGJsvv0/FFMIZTaL/AcKL4kNSyWlClptvFFp0g+LVjneRiDVZa2bP0xGWFaTyDT6yh22bVUfAR/T64m6y/ypXRDDASMTF5SCt/gfOw4Jmia4oOTvWVKuKsCxRMk5o+D0uSqJZ/SufbABUPvg1hi2KUBw8G2QVvCV9DhO42SbKqDGjsZ1XeqKnKgcHo5GWa1BmDqCvOU/c4m3opabise3252U7n6wjLAdPjiYgtRqoBSq8Y9SQP0ml3vUG2U+KQzRGOPDKbv6uotSghcPQuHM70sBSHN7vgz7WCbmGJU4+k6C6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.27; Thu, 4 Jan
 2024 16:16:57 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::7d36:1951:b896:cb37]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::7d36:1951:b896:cb37%7]) with mapi id 15.20.7159.015; Thu, 4 Jan 2024
 16:16:57 +0000
Date: Thu, 4 Jan 2024 17:16:49 +0100
From: Francois Dugast <francois.dugast@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915: Disable DSB in Xe KMD
Message-ID: <ZZbZ8ZZwFjg2pA8c@fdugast-desk.home>
References: <20240104160557.48496-1-jose.souza@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240104160557.48496-1-jose.souza@intel.com>
Organization: Intel Corporation
X-ClientProxiedBy: FR0P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::12) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: 0accfe10-449b-4b19-29a2-08dc0d4092e7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ed//FFSbenTPbohN1NZ2msjfz66IqTyvJQfSAp26fsBlvh6o5c93LWgWSlPOJ479vvpDewLE/o+IxDvdaudRXCqsrfJz4yB94P1VOH3YCvo7k73itOoeFmyKzfhKnEFdjHJipGyc8qoielVQNyMLZh1cNzJmj2ab4IflO2NOl1VGH9CFubep7uL/zLhMSEH9ba0XepYk0z44Eqq3jkz0k4hGeHa4hp6+msdIMAQ3fYSpxqCAMgMaEpdjo+v57QXjXcl7fqKErzDB/aPIGb/IJ7CD+6kh80WCsg/9lr6+Luqx1orjzSf86Vw88aKsMvc+nak53zrqQqOl9p4BGpa43DBqreTL/1M3+PnDNyI9o4sYpxk2mESsit96IJrCeeu2+FWuh7DPrHWo3gi+xuxLIiZveC4HrO2VA8wUAziEQBIrg7wmuDfYJlpdSelpRyzQNejBv02OFz/u+pJXlBhAuOFFIDlGMdR6/HsvgjaybqhM2t+qi9SULO+PaJXbsOff2xyexbGlGL46SvYtXbJDJhiIWai22N6ouPSZVFvhSp8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(346002)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(38100700002)(82960400001)(36756003)(86362001)(5660300002)(107886003)(26005)(6486002)(6636002)(66556008)(6506007)(54906003)(9686003)(478600001)(66476007)(6666004)(6512007)(36916002)(316002)(8676002)(8936002)(66946007)(966005)(6862004)(44832011)(2906002)(41300700001)(450100002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?cDUe+ATBqFSukvhE7otTAvxGwR0CcO1ciY80XKf93toq6eRFm5n20KeIJn?=
 =?iso-8859-1?Q?REOcYjI43Wl1uZhRSMp2bry44OkSnxkFuKtBemwpTdvLBinR3tCzcG4/nT?=
 =?iso-8859-1?Q?arkw0ULUAc35Hj8K6FDjg+mtiGgHrKM+glIVAeU+1ay2k7CY216+qA/gYB?=
 =?iso-8859-1?Q?hFFQK39cZwumUilxo7ed1HPEWjMoYfUQYAiVL0jTzjx1YzdbdMRddvPrFY?=
 =?iso-8859-1?Q?TbByCyOYqJIHRgrhQUPkP0xetKbd5IPt8Ie/5knXY0FdXWZlPJIMq5YtGF?=
 =?iso-8859-1?Q?ugV/1mcuQ0hkj4ESP9m6dxNs9Q8DUncEs79sfK/mHtRa4Hscclt1aKxkPz?=
 =?iso-8859-1?Q?h//vTIBUdbh+N3wejcIyo3VpkPv225EE6D1zuBqbHxsBL1dCdWkklnIZiQ?=
 =?iso-8859-1?Q?HUmpEnXbt51Tn5jbJklTa57PpuMv2/B06NrcnhAwgQf7c92jyYLN96mR4c?=
 =?iso-8859-1?Q?cH8pNkPCC2b2jcYtFlhAOfOFuyR8S2tzzh1uq4qoK9SFdP437V8XpourlX?=
 =?iso-8859-1?Q?rEZkICo7YVCnPpaG9c3DpGKYhW4eIkDwJq5m0fKRMIvs5erEWWjNo3UhNU?=
 =?iso-8859-1?Q?eVf3XXXwYnAtzdsyyp21ybQ77YLHVZp3niGy2IFeHH1afhrE/H8SCWi98Q?=
 =?iso-8859-1?Q?+GYSHxqMR1V0rS18my2LYOVtWOSU7baLr3QaiXQ7C8LJzMD5t7mmjBu0Ii?=
 =?iso-8859-1?Q?JTwDy7U6LBXflnWwxfADsGY2BChulSmbZKaGjyTBRgWQmmVWjYXqv+onUu?=
 =?iso-8859-1?Q?Z69yEtjsb0pG7SUWov9C8p/V6MIDF/1g8cunYYNlHL0enOkTuhh476IG5A?=
 =?iso-8859-1?Q?PAsJqPg9Sz9iwaswxVPlAlZ/4cB2SigGIxm3nohuqJ08MigYQd1uQs96D+?=
 =?iso-8859-1?Q?jfoowhavqY1b4OBp9cznluoCXwbKOhKZ39YAfHzJXeDufLD5FYRyZDnMKH?=
 =?iso-8859-1?Q?l1QVMByA35eso7RIwdW5tlqbu8t3zTbhgcI9XEleeXzj9NvAiMZfLS5V8X?=
 =?iso-8859-1?Q?FkhW58cdKwSmSxLCSWUda5j96H6ixpJLDfG2AU5WSVIZ1c1ZhhwKJC+xpG?=
 =?iso-8859-1?Q?DGDJwJGHUthdIni+cGzQ2LbF1m4//slp+1Y7r8CfavO26wyEF8FK+Di9Gu?=
 =?iso-8859-1?Q?cfqH1HWZng0LJRJAGDuL97Owgar9ORbkRKF1rfcNV2gRmrtsYW0Z/iB/mE?=
 =?iso-8859-1?Q?1s89Ex2ttZSX3WOFbhRlSyqpvd+x7ry9DFvBclD2qRgDjsCMnRYqfTHenp?=
 =?iso-8859-1?Q?VX1haCaX0dqTHCkyowFEeYtd7z7wcEvFMw+hR2DaF9YsmeZGHivX272OLs?=
 =?iso-8859-1?Q?d8L0/+nB2Z+07mtY/Jbxocn44NsUDz+At5PbH18UKdTXEvjd3Pbuy0S4Bm?=
 =?iso-8859-1?Q?9UeSu/qi8ZFJ0GrRUnYXaj+wxtOzFKaoyAbrQ9Xy4SuRFmO5uwMh8vXCj0?=
 =?iso-8859-1?Q?hNPLaPeJ5fW7Vgd2mv0w+6QFJUZ0qPLXoR8+6vN52XqwPKSJQymSoqw0uX?=
 =?iso-8859-1?Q?chrgRDJ6BLiwm9E1RnrIltbxOmmwSW+7oRKsUpYwbY8kEYOQRvDh0nc5/t?=
 =?iso-8859-1?Q?pYcwUnIaZKUliHS1UrB+hu9CkiS6oY0AACka4xiN209x36jrrD+mvhHnA7?=
 =?iso-8859-1?Q?SDW6OoiawspzUGCjFPlhrFgEE87eGSsxZixggP5c+7DQveiaWyZY/5tQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0accfe10-449b-4b19-29a2-08dc0d4092e7
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 16:16:57.5133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J1vwTs+569WnEJL4FBZrIIqJpEPOYsta0wHcyVk7iFzJHLzfB7HMaoYPxusod1YfbOQK7jiEXPXsr3io0K+6cPbMrqsK5z9s0Wu2yGLL/BI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
X-OriginatorOrg: intel.com
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 04, 2024 at 08:05:56AM -0800, José Roberto de Souza wrote:
> Often getting DBS overflows when starting Xorg or Wayland compositors
> when running Xe KMD.

s/DBS overflows/DSB overflows/

> Issue was reported but nothing was done, so disabling DSB as whole
> until properly fixed in Xe KMD.
> 
> v2:
> - move check to HAS_DSB(Jani)
> 
> v3:
> - use IS_ENABLED(I915) check in intel_dsb_prepare()
> 
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 482c28b5c2de5..a6c7122fd671d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -453,6 +453,10 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
>  	if (!HAS_DSB(i915))
>  		return NULL;
>  
> +	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
> +	if (!IS_ENABLED(I915))
> +		return NULL;
> +
>  	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
>  	if (!dsb)
>  		goto out;
> -- 
> 2.43.0
> 
