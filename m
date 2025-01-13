Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5A8A0BE1F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 17:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D441310E747;
	Mon, 13 Jan 2025 16:58:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mmrlDls5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9308E10E73C;
 Mon, 13 Jan 2025 16:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736787523; x=1768323523;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4SFf4cWf9cxxBgE1NRU+TTYR4FLGcB5JlexDud6M1b8=;
 b=mmrlDls5NjMaEbRtDPk5AyJdHhPW7bMrmip/IakEVrDwVklsolI4tsos
 hIgBMGg62MYeyy18OVi8s0amBGTsc8rEZyJU+5OsYyji2TQ7gW4x1whgY
 xLdbIT7jwx4gHrjdJ6S+83zZ4Bv4DIQD9D5HcjZACHnLNKKdgvc/ieWJB
 5GeZ0uBdTvGlTBEbCPOG4LhshfWdmNSsvl+uDw/rFWJdBI/6m/E2is7cU
 uHHdTImADLE0bthPKcVV2zsWFHfKcadbc8cHJTV9D1wDxK2qymj9yVN6Q
 w3zOBB/y/+XFl+jXW8kaOKbLkaGewUUt3/cPC4Eot7gyhin2tSPMW24j9 A==;
X-CSE-ConnectionGUID: hdHikbNURkOERaIRxOH9Jg==
X-CSE-MsgGUID: v5V0yaa3QfOBUjoTTVWKYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37223931"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37223931"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 08:58:36 -0800
X-CSE-ConnectionGUID: oTlAORrYQG2EHe6TKlEh3w==
X-CSE-MsgGUID: Zb8itimMQJuw7oO6xxH3OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104618863"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 08:58:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 08:58:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 08:58:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 08:58:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r22BDQM4oHut4LhCfL/1VKq5KIj1pLKBTngJAq9FsXVqVkyZnI+cRcm+tEEhWoaZZ38S/CODguKCw9ll7cZdD2RaPvFWIXASQyjallvxIwuwWfSpu4WrYShcZaU0tzvQ9jhWT2uBNP7cB0WdOt8/y0XbRL8aCAe8B2eQQyA0c6dnC58wi3PPvtcBHQihJPty+iNY7pnu2M7PkVqhAsSpZ6wX0DYVCG+95vYG8hhpd9UbxvhYNA/twqs6SW35NfY6+i7S+pY/1rWsRn7/+0G8TlvYdO7VGm6TLpM18Lxy2UWB3SPtxSjZ3m8UiX1E3qXAwTQpfp0X34fkfA6AwxLY2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H8AMblW/MHRgA+kbqZ3qLc9PIeATzDAwLweW4dxvypw=;
 b=RW7n7lBzTn72uAsULGDLZM2l/QznMh5tA3HK5P7MBKHxOgQpzU0uXJZyZye/0q9kH1pk7oCkQMiTz9HM2uPqYutXAuA1i4a8w2gqqziNNK6csZ81sRtixc1Yg9mpEDMmivFbG2YqSxVYE+4yjyc2/jMbP9TJBonBk6fIXSFLLJsNN4mVJ/e66ugL4fVq6rEfxTJvxpEvixKrR3f6LG/V7vR8zUq4K2M8b+0BV/Vnq5V8HuwAR6lt/+cyDrOGcwnydg4QJhaEqHuLjv5L1bLraYl+xgAfjL9p80Q8E7SXwCsSNas+4KJiJhjiBD9uaOjsjpYizKn44Gq0uIh7SU4BWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SA2PR11MB4924.namprd11.prod.outlook.com (2603:10b6:806:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 16:58:03 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8335.011; Mon, 13 Jan 2025
 16:58:03 +0000
Date: Mon, 13 Jan 2025 11:57:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/audio: convert LPE audio to struct
 intel_display
Message-ID: <Z4VGF_OVTk9u_N5Q@intel.com>
References: <cover.1736345025.git.jani.nikula@intel.com>
 <f04dd028cd8869cdfb9ab9eb6aceed8ff8e7ddcd.1736345025.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f04dd028cd8869cdfb9ab9eb6aceed8ff8e7ddcd.1736345025.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:303:2a::28) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SA2PR11MB4924:EE_
X-MS-Office365-Filtering-Correlation-Id: cff46e94-8e9c-4308-9e66-08dd33f37146
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zVAcYJjYbH2rGqqtcFjInVvbVGwBM0N1+JaQp/t/Kz7DBDxm+JC/LfqMUoa9?=
 =?us-ascii?Q?nlJB/fn6dvkiquuyV8zNbHw0XfP5Vam7LS4chlN+OYa7IacRvjw86AKiaqmr?=
 =?us-ascii?Q?Fxovr3fxqgQLx9R/+Q2FB42YYNmWuzO1YdNjT3vudt3YyWWszz+BDAUkj9mU?=
 =?us-ascii?Q?lwNRvg1z8cNnjnXbJMSL8U2Cl7+gKxbPcA9UGwyyvaHfMP+58Qb986sJ9Rqm?=
 =?us-ascii?Q?GAgeFT44JzMsd/agrUzpQ9020sgdi4Kkr4Glf721HFEjRThxfsKcNjCuIlrF?=
 =?us-ascii?Q?aIV9Mn+23xG/si5Cu4YTkKgb3TWIyNWIYy+yqM00FFwEXM0Wv3WtRNRg1XjG?=
 =?us-ascii?Q?fJG/Sh4cN8b5/Pg8Lp3sPxC4+ZAf2TYYopJFMt4lQms9aMN/4PqvkjiM1yKG?=
 =?us-ascii?Q?dldt7FIciBY1j9dp8NKIJnN7hNMPB9L5v3ur5vOAiqow+4aDPdoC3dqiZzpz?=
 =?us-ascii?Q?1ryDlOqsF4LDg13iUPEftCCQC3/nvDMgKquOKD1jS944Z+mXPX8Ca3//qLOB?=
 =?us-ascii?Q?bNTHkSA3qRxZvcLKCzcmKzNyl2FkDHVW6SvoTs7ROvHKxjL36WQRDbGZKxoj?=
 =?us-ascii?Q?xQ/srGsCC91byYL/sxCnWYZjksWetwMj321sWXVeWLi1mwuevpKL8Lj/xByR?=
 =?us-ascii?Q?MP9UJj4WXKy0l2qx4jHBGXOniCuASDzJo7f2WX019fKNpzuEk6ZUCujA+mLl?=
 =?us-ascii?Q?Ofsjaf1U17wNjvk7XShfoX2L90hD86Asb6ipv6/7YVAfsuWUAbJLp14Ig5gt?=
 =?us-ascii?Q?Ln0MCoUo9vjwfGiQN7+dIL/QNTZn2QTNO9Bkg+4VeSlQnmX1mUoBi/Egqorj?=
 =?us-ascii?Q?czv8gpsdTww7zIouvlfFqyLILicHyNW1D227nqsE7VGn/udqkbTzAtQUXc+9?=
 =?us-ascii?Q?FoKYajA0ZHfv0IlVx6bRVETsupQ7l8d2d+Vj6ideH3dIw8fzW3q9saEV9Tb6?=
 =?us-ascii?Q?NilQTq/GwtGtpR2LqjqFBIWl9JntOM5gvQk+rUviIFO4EjOCoZm4vS6S948h?=
 =?us-ascii?Q?aNApmsCxyUyOF7xtVJYX0fUIS0fD0toX00Sv23dMPcsnbjEL0ThDxuhbNHjv?=
 =?us-ascii?Q?Cxyp4bZD/f/t9aMLXTa2Ni7UH38fJViWa086ntfkb0wHq1GyTzHO7+f2A2EB?=
 =?us-ascii?Q?bdyeGnc5tVaYnjPXvR0xvFLmuAvQdFwWbuSAGoTypebW8VH4FyFuxdT2I/8Q?=
 =?us-ascii?Q?O0E1ySZTX7uZbQhPgZSJlJmXdZtSIcRSzwSgxBDDGQUoHG3jM5yG9Iz9f2Kn?=
 =?us-ascii?Q?7nqDYLKIx/d/CyaEl2AoLdAhbOP8vF3tHFuUK+7J1h1kMup6OxUN17TFwQtl?=
 =?us-ascii?Q?UhBP3DKRJ7tOudQ7xL16bvR1Psjdd8rmI1EYShBAj8W/n2jeWfdpp/n2pN8C?=
 =?us-ascii?Q?clnZueS+TZeKEwPEVOSMVGjL5YR5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M73DsIKAtXi2xLCNZvgbpLX0jMLFi2p+pNQGW/OCCl6euT9jvFsbbI3w9B0w?=
 =?us-ascii?Q?7ytDK0Yg0Qa9cViH8FM03pOCcOd0sQEoNrdPv2eg1Tb+NK/pRaVwIzv/6e2i?=
 =?us-ascii?Q?YQmetvqwTzsg0RE5Bo6dSYNSIfToLqBEdO96aA0SXLs/vKWKwQbmybKzGNEh?=
 =?us-ascii?Q?ZPv7n2JTbNk4qtYoN/caMYb8NSRe/CcpUdtWwPGBJ2hCgMJFWhkwfmchrl72?=
 =?us-ascii?Q?tUxPGfuwUePzJJvgMQShNktJMSVz2XtAfSHeQGvrlNCXRS5Ud7ksIjq6ebiD?=
 =?us-ascii?Q?B6aQc4vj0xm71FXvUGjFyE2KP9P/iX5gKZSwau3uJd3jYzPL7fiaNU0rfM1g?=
 =?us-ascii?Q?02VRZxOo14yhay2s1MkdZ1hkZBDnulS7IHfhOUPDQ2QPriQw9sm44wy2+3ND?=
 =?us-ascii?Q?Jp8MC6W+wGm/e5yNbsOmnZve5b5RWXoRtThaNQJx5I5FEcC90JMBo1Ves5nt?=
 =?us-ascii?Q?hPS2DUgNUGSgl/nsz6xJRZomlL3qhPhD9I5pcvoSJRhVSF633XeC+FQQo7A7?=
 =?us-ascii?Q?M1XZj4uvROnunilODbhPl0U4oDHVc6MhEbI/hhN1kRb7Iak+puS2zLX8MIyD?=
 =?us-ascii?Q?QEI1AmOQF85UZ2zK6iQIS/tVAdJAnXFlaPnlXeefqHYBkBy0cHwwQLiSZ6G2?=
 =?us-ascii?Q?tawf+F8VebTAhbUppedmEfRhSb6PsZ0tPUIZ5mP60qVCR9Q/ZG1tUhsf/oZp?=
 =?us-ascii?Q?Xnqh9LSy9xzvFK19wl3eeradNqaRT08e2Z1FyF11L/vwU8wKaK99WfxaoQL2?=
 =?us-ascii?Q?hZV0X0+Ipywmit4QHDK0cNPxkCOzAhP3eMd3j05XcK3A4W/DOq+tth81I9Pf?=
 =?us-ascii?Q?tnD0+Me6AEbgFKVx853wMRqFcQCAKv56xOub7hVsxL5ghSIWZyGcrkpnTCTQ?=
 =?us-ascii?Q?DQbf3YsV5cm0PBT8Ab3wwSnvAOP90+I1NzBKf2g1bfuAVq2mz4U3M+vZK3DW?=
 =?us-ascii?Q?kKGx6fniJuMoXRY5FEtXMxyVll54FMFMdxtC6jHzVutCP21dIpH4bRMpNVwk?=
 =?us-ascii?Q?6n3lOTz7U2OzxPUN20xtBxmCwCYtSY14ASdJ0h3qftAnocN+A/u1IwQdf0nS?=
 =?us-ascii?Q?uTCDKAm2WCu0YwOxZcVBucytpazSVrejQaNqzrYZqnAUX//Jf/80uCtPPsxS?=
 =?us-ascii?Q?b1vXvOlJHca/C6s1/H4GgEgf5E2IzwlXF06OlOzl4St/ieKm2i9LpvWoJd7M?=
 =?us-ascii?Q?2dPLiWBgCc+ZyQet90ZuG4MwD8eU1uCu/C8RuiW//3RV5GO9UCYxU4Sj/L/N?=
 =?us-ascii?Q?WVbIRiLw+MhBwBd5F9blO2GwTwrEhdpNQx6DiAbl2lTbn6f75aioTopI7Str?=
 =?us-ascii?Q?cZgCG3Uf28Tc7FN4hDP7LnikeGX6nD9uUlddzaB7i5srVY5LU7c8wUMZ9fms?=
 =?us-ascii?Q?cmh0bBFJFodyXDGQIyBiGYC8ZNc6dt/+bOIjTur6st3CZZZ4BDoax4CMl3Ly?=
 =?us-ascii?Q?6WVwnpodMt/zpfK2xNu05lsVBwsO4UFBNlqYA8TTvIUmPvpEuMQBMhhin46t?=
 =?us-ascii?Q?xCGgb8oUdfW7nkgROVrRhIaaKfs382cr025gtyz9LICORxULxh31Cd2unAn+?=
 =?us-ascii?Q?z9yJJ3Dd2CDNFurNk1A3w6JB3psX7BmwzxaR0HdEdjDiT8Lne+66odflQWGb?=
 =?us-ascii?Q?7A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cff46e94-8e9c-4308-9e66-08dd33f37146
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 16:58:02.9737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +AYzZarrO92FkCObBSIT73MnackhshRzqpi0uTz+ktjK6yPgse6rrU/98ZZkygEGTJogBP0lWkNNfSMW6cEoMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4924
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 08, 2025 at 04:04:14PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display will be the main display device
> structure. Convert intel_lpe_audio.[ch] to it. Do some minor checkpatch
> fixes while at it.
> 
> TODO: Not sure if irq_set_chip_data(irq, dev_priv); is used.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    |  14 +--
>  .../gpu/drm/i915/display/intel_lpe_audio.c    | 118 +++++++++---------
>  .../gpu/drm/i915/display/intel_lpe_audio.h    |  18 +--
>  drivers/gpu/drm/i915/i915_irq.c               |   6 +-
>  4 files changed, 77 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 8c26e0e7c2cd..241e5d3904dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -732,7 +732,6 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  			      const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct i915_audio_component *acomp = display->audio.component;
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> @@ -774,7 +773,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  						      (int)port, (int)cpu_transcoder);
>  	}
>  
> -	intel_lpe_audio_notify(i915, cpu_transcoder, port, crtc_state->eld,
> +	intel_lpe_audio_notify(display, cpu_transcoder, port, crtc_state->eld,
>  			       crtc_state->port_clock,
>  			       intel_crtc_has_dp_encoder(crtc_state));
>  }
> @@ -793,7 +792,6 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  			       const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct i915_audio_component *acomp = display->audio.component;
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
> @@ -833,7 +831,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  						      (int)port, (int)cpu_transcoder);
>  	}
>  
> -	intel_lpe_audio_notify(i915, cpu_transcoder, port, NULL, 0, false);
> +	intel_lpe_audio_notify(display, cpu_transcoder, port, NULL, 0, false);
>  }
>  
>  static void intel_acomp_get_config(struct intel_encoder *encoder,
> @@ -1399,9 +1397,7 @@ static void i915_audio_component_cleanup(struct intel_display *display)
>   */
>  void intel_audio_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	if (intel_lpe_audio_init(i915) < 0)
> +	if (intel_lpe_audio_init(display) < 0)
>  		i915_audio_component_init(display);
>  }
>  
> @@ -1417,10 +1413,8 @@ void intel_audio_register(struct intel_display *display)
>   */
>  void intel_audio_deinit(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (display->audio.lpe.platdev)
> -		intel_lpe_audio_teardown(i915);
> +		intel_lpe_audio_teardown(display);
>  	else
>  		i915_audio_component_cleanup(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index f11626176fe2..59551c8414c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -77,12 +77,12 @@
>  #include "intel_lpe_audio.h"
>  #include "intel_pci_config.h"
>  
> -#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display.audio.lpe.platdev != NULL)
> +#define HAS_LPE_AUDIO(display) ((display)->audio.lpe.platdev)
>  
>  static struct platform_device *
> -lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
> +lpe_audio_platdev_create(struct intel_display *display)
>  {
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  	struct platform_device_info pinfo = {};
>  	struct resource *rsc;
>  	struct platform_device *platdev;
> @@ -98,7 +98,8 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>  		return ERR_PTR(-ENOMEM);
>  	}
>  
> -	rsc[0].start    = rsc[0].end = dev_priv->display.audio.lpe.irq;
> +	rsc[0].start    = display->audio.lpe.irq;
> +	rsc[0].end      = display->audio.lpe.irq;

for a moment, I was going to ask this 'new' end definition to be a separate
patch, then I realized the previous code!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	rsc[0].flags    = IORESOURCE_IRQ;
>  	rsc[0].name     = "hdmi-lpe-audio-irq";
>  
> @@ -109,7 +110,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>  	rsc[1].flags    = IORESOURCE_MEM;
>  	rsc[1].name     = "hdmi-lpe-audio-mmio";
>  
> -	pinfo.parent = dev_priv->drm.dev;
> +	pinfo.parent = display->drm->dev;
>  	pinfo.name = "hdmi-lpe-audio";
>  	pinfo.id = -1;
>  	pinfo.res = rsc;
> @@ -118,8 +119,8 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>  	pinfo.size_data = sizeof(*pdata);
>  	pinfo.dma_mask = DMA_BIT_MASK(32);
>  
> -	pdata->num_pipes = INTEL_NUM_PIPES(dev_priv);
> -	pdata->num_ports = IS_CHERRYVIEW(dev_priv) ? 3 : 2; /* B,C,D or B,C */
> +	pdata->num_pipes = INTEL_NUM_PIPES(display);
> +	pdata->num_ports = display->platform.cherryview ? 3 : 2; /* B,C,D or B,C */
>  	pdata->port[0].pipe = -1;
>  	pdata->port[1].pipe = -1;
>  	pdata->port[2].pipe = -1;
> @@ -130,7 +131,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>  	kfree(pdata);
>  
>  	if (IS_ERR(platdev)) {
> -		drm_err(&dev_priv->drm,
> +		drm_err(display->drm,
>  			"Failed to allocate LPE audio platform device\n");
>  		return platdev;
>  	}
> @@ -140,7 +141,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>  	return platdev;
>  }
>  
> -static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
> +static void lpe_audio_platdev_destroy(struct intel_display *display)
>  {
>  	/* XXX Note that platform_device_register_full() allocates a dma_mask
>  	 * and never frees it. We can't free it here as we cannot guarantee
> @@ -150,7 +151,7 @@ static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
>  	 * than us fiddle with its internals.
>  	 */
>  
> -	platform_device_unregister(dev_priv->display.audio.lpe.platdev);
> +	platform_device_unregister(display->audio.lpe.platdev);
>  }
>  
>  static void lpe_audio_irq_unmask(struct irq_data *d)
> @@ -167,11 +168,12 @@ static struct irq_chip lpe_audio_irqchip = {
>  	.irq_unmask = lpe_audio_irq_unmask,
>  };
>  
> -static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
> +static int lpe_audio_irq_init(struct intel_display *display)
>  {
> -	int irq = dev_priv->display.audio.lpe.irq;
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +	int irq = display->audio.lpe.irq;
>  
> -	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
>  	irq_set_chip_and_handler_name(irq,
>  				&lpe_audio_irqchip,
>  				handle_simple_irq,
> @@ -180,11 +182,11 @@ static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
>  	return irq_set_chip_data(irq, dev_priv);
>  }
>  
> -static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
> +static bool lpe_audio_detect(struct intel_display *display)
>  {
>  	int lpe_present = false;
>  
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		static const struct pci_device_id atom_hdaudio_ids[] = {
>  			/* Baytrail */
>  			{PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x0f04)},
> @@ -194,7 +196,7 @@ static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
>  		};
>  
>  		if (!pci_dev_present(atom_hdaudio_ids)) {
> -			drm_info(&dev_priv->drm,
> +			drm_info(display->drm,
>  				 "HDaudio controller not detected, using LPE audio instead\n");
>  			lpe_present = true;
>  		}
> @@ -202,34 +204,34 @@ static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
>  	return lpe_present;
>  }
>  
> -static int lpe_audio_setup(struct drm_i915_private *dev_priv)
> +static int lpe_audio_setup(struct intel_display *display)
>  {
>  	int ret;
>  
> -	dev_priv->display.audio.lpe.irq = irq_alloc_desc(0);
> -	if (dev_priv->display.audio.lpe.irq < 0) {
> -		drm_err(&dev_priv->drm, "Failed to allocate IRQ desc: %d\n",
> -			dev_priv->display.audio.lpe.irq);
> -		ret = dev_priv->display.audio.lpe.irq;
> +	display->audio.lpe.irq = irq_alloc_desc(0);
> +	if (display->audio.lpe.irq < 0) {
> +		drm_err(display->drm, "Failed to allocate IRQ desc: %d\n",
> +			display->audio.lpe.irq);
> +		ret = display->audio.lpe.irq;
>  		goto err;
>  	}
>  
> -	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->display.audio.lpe.irq);
> +	drm_dbg(display->drm, "irq = %d\n", display->audio.lpe.irq);
>  
> -	ret = lpe_audio_irq_init(dev_priv);
> +	ret = lpe_audio_irq_init(display);
>  
>  	if (ret) {
> -		drm_err(&dev_priv->drm,
> +		drm_err(display->drm,
>  			"Failed to initialize irqchip for lpe audio: %d\n",
>  			ret);
>  		goto err_free_irq;
>  	}
>  
> -	dev_priv->display.audio.lpe.platdev = lpe_audio_platdev_create(dev_priv);
> +	display->audio.lpe.platdev = lpe_audio_platdev_create(display);
>  
> -	if (IS_ERR(dev_priv->display.audio.lpe.platdev)) {
> -		ret = PTR_ERR(dev_priv->display.audio.lpe.platdev);
> -		drm_err(&dev_priv->drm,
> +	if (IS_ERR(display->audio.lpe.platdev)) {
> +		ret = PTR_ERR(display->audio.lpe.platdev);
> +		drm_err(display->drm,
>  			"Failed to create lpe audio platform device: %d\n",
>  			ret);
>  		goto err_free_irq;
> @@ -238,54 +240,54 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
>  	/* enable chicken bit; at least this is required for Dell Wyse 3040
>  	 * with DP outputs (but only sometimes by some reason!)
>  	 */
> -	intel_de_write(dev_priv, VLV_AUD_CHICKEN_BIT_REG,
> +	intel_de_write(display, VLV_AUD_CHICKEN_BIT_REG,
>  		       VLV_CHICKEN_BIT_DBG_ENABLE);
>  
>  	return 0;
>  err_free_irq:
> -	irq_free_desc(dev_priv->display.audio.lpe.irq);
> +	irq_free_desc(display->audio.lpe.irq);
>  err:
> -	dev_priv->display.audio.lpe.irq = -1;
> -	dev_priv->display.audio.lpe.platdev = NULL;
> +	display->audio.lpe.irq = -1;
> +	display->audio.lpe.platdev = NULL;
>  	return ret;
>  }
>  
>  /**
>   * intel_lpe_audio_irq_handler() - forwards the LPE audio irq
> - * @dev_priv: the i915 drm device private data
> + * @display: display device
>   *
>   * the LPE Audio irq is forwarded to the irq handler registered by LPE audio
>   * driver.
>   */
> -void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
> +void intel_lpe_audio_irq_handler(struct intel_display *display)
>  {
>  	int ret;
>  
> -	if (!HAS_LPE_AUDIO(dev_priv))
> +	if (!HAS_LPE_AUDIO(display))
>  		return;
>  
> -	ret = generic_handle_irq(dev_priv->display.audio.lpe.irq);
> +	ret = generic_handle_irq(display->audio.lpe.irq);
>  	if (ret)
> -		drm_err_ratelimited(&dev_priv->drm,
> +		drm_err_ratelimited(display->drm,
>  				    "error handling LPE audio irq: %d\n", ret);
>  }
>  
>  /**
>   * intel_lpe_audio_init() - detect and setup the bridge between HDMI LPE Audio
>   * driver and i915
> - * @dev_priv: the i915 drm device private data
> + * @display: display device
>   *
>   * Return: 0 if successful. non-zero if detection or
>   * llocation/initialization fails
>   */
> -int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
> +int intel_lpe_audio_init(struct intel_display *display)
>  {
>  	int ret = -ENODEV;
>  
> -	if (lpe_audio_detect(dev_priv)) {
> -		ret = lpe_audio_setup(dev_priv);
> +	if (lpe_audio_detect(display)) {
> +		ret = lpe_audio_setup(display);
>  		if (ret < 0)
> -			drm_err(&dev_priv->drm,
> +			drm_err(display->drm,
>  				"failed to setup LPE Audio bridge\n");
>  	}
>  	return ret;
> @@ -294,27 +296,27 @@ int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
>  /**
>   * intel_lpe_audio_teardown() - destroy the bridge between HDMI LPE
>   * audio driver and i915
> - * @dev_priv: the i915 drm device private data
> + * @display: display device
>   *
>   * release all the resources for LPE audio <-> i915 bridge.
>   */
> -void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
> +void intel_lpe_audio_teardown(struct intel_display *display)
>  {
> -	if (!HAS_LPE_AUDIO(dev_priv))
> +	if (!HAS_LPE_AUDIO(display))
>  		return;
>  
> -	lpe_audio_platdev_destroy(dev_priv);
> +	lpe_audio_platdev_destroy(display);
>  
> -	irq_free_desc(dev_priv->display.audio.lpe.irq);
> +	irq_free_desc(display->audio.lpe.irq);
>  
> -	dev_priv->display.audio.lpe.irq = -1;
> -	dev_priv->display.audio.lpe.platdev = NULL;
> +	display->audio.lpe.irq = -1;
> +	display->audio.lpe.platdev = NULL;
>  }
>  
>  /**
>   * intel_lpe_audio_notify() - notify lpe audio event
>   * audio driver and i915
> - * @dev_priv: the i915 drm device private data
> + * @display: display device
>   * @cpu_transcoder: CPU transcoder
>   * @port: port
>   * @eld : ELD data
> @@ -323,7 +325,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>   *
>   * Notify lpe audio driver of eld change.
>   */
> -void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
> +void intel_lpe_audio_notify(struct intel_display *display,
>  			    enum transcoder cpu_transcoder, enum port port,
>  			    const void *eld, int ls_clock, bool dp_output)
>  {
> @@ -332,15 +334,15 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>  	struct intel_hdmi_lpe_audio_port_pdata *ppdata;
>  	u32 audio_enable;
>  
> -	if (!HAS_LPE_AUDIO(dev_priv))
> +	if (!HAS_LPE_AUDIO(display))
>  		return;
>  
> -	pdata = dev_get_platdata(&dev_priv->display.audio.lpe.platdev->dev);
> +	pdata = dev_get_platdata(&display->audio.lpe.platdev->dev);
>  	ppdata = &pdata->port[port - PORT_B];
>  
>  	spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);
>  
> -	audio_enable = intel_de_read(dev_priv, VLV_AUD_PORT_EN_DBG(port));
> +	audio_enable = intel_de_read(display, VLV_AUD_PORT_EN_DBG(port));
>  
>  	if (eld != NULL) {
>  		memcpy(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
> @@ -349,7 +351,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>  		ppdata->dp_output = dp_output;
>  
>  		/* Unmute the amp for both DP and HDMI */
> -		intel_de_write(dev_priv, VLV_AUD_PORT_EN_DBG(port),
> +		intel_de_write(display, VLV_AUD_PORT_EN_DBG(port),
>  			       audio_enable & ~VLV_AMP_MUTE);
>  	} else {
>  		memset(ppdata->eld, 0, HDMI_MAX_ELD_BYTES);
> @@ -358,12 +360,12 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>  		ppdata->dp_output = false;
>  
>  		/* Mute the amp for both DP and HDMI */
> -		intel_de_write(dev_priv, VLV_AUD_PORT_EN_DBG(port),
> +		intel_de_write(display, VLV_AUD_PORT_EN_DBG(port),
>  			       audio_enable | VLV_AMP_MUTE);
>  	}
>  
>  	if (pdata->notify_audio_lpe)
> -		pdata->notify_audio_lpe(dev_priv->display.audio.lpe.platdev, port - PORT_B);
> +		pdata->notify_audio_lpe(display->audio.lpe.platdev, port - PORT_B);
>  
>  	spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
> index 2c5fcb6e1fd0..5234e11fd662 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
> @@ -10,27 +10,27 @@
>  
>  enum port;
>  enum transcoder;
> -struct drm_i915_private;
> +struct intel_display;
>  
>  #ifdef I915
> -int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
> -void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
> -void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
> -void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
> +int  intel_lpe_audio_init(struct intel_display *display);
> +void intel_lpe_audio_teardown(struct intel_display *display);
> +void intel_lpe_audio_irq_handler(struct intel_display *display);
> +void intel_lpe_audio_notify(struct intel_display *display,
>  			    enum transcoder cpu_transcoder, enum port port,
>  			    const void *eld, int ls_clock, bool dp_output);
>  #else
> -static inline int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
> +static inline int intel_lpe_audio_init(struct intel_display *display)
>  {
>  	return -ENODEV;
>  }
> -static inline void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
> +static inline void intel_lpe_audio_teardown(struct intel_display *display)
>  {
>  }
> -static inline void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
> +static inline void intel_lpe_audio_irq_handler(struct intel_display *display)
>  {
>  }
> -static inline void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
> +static inline void intel_lpe_audio_notify(struct intel_display *display,
>  					  enum transcoder cpu_transcoder, enum port port,
>  					  const void *eld, int ls_clock, bool dp_output)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7920ad9585ae..202eb1b6ae54 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -207,6 +207,7 @@ static void ivb_parity_work(struct work_struct *work)
>  static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *dev_priv = arg;
> +	struct intel_display *display = &dev_priv->display;
>  	irqreturn_t ret = IRQ_NONE;
>  
>  	if (!intel_irqs_enabled(dev_priv))
> @@ -260,7 +261,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  
>  		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>  			   I915_LPE_PIPE_B_INTERRUPT))
> -			intel_lpe_audio_irq_handler(dev_priv);
> +			intel_lpe_audio_irq_handler(display);
>  
>  		/*
>  		 * VLV_IIR is single buffered, and reflects the level
> @@ -293,6 +294,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *dev_priv = arg;
> +	struct intel_display *display = &dev_priv->display;
>  	irqreturn_t ret = IRQ_NONE;
>  
>  	if (!intel_irqs_enabled(dev_priv))
> @@ -343,7 +345,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>  			   I915_LPE_PIPE_B_INTERRUPT |
>  			   I915_LPE_PIPE_C_INTERRUPT))
> -			intel_lpe_audio_irq_handler(dev_priv);
> +			intel_lpe_audio_irq_handler(display);
>  
>  		/*
>  		 * VLV_IIR is single buffered, and reflects the level
> -- 
> 2.39.5
> 
