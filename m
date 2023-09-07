Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DF379702B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 07:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0801C10E75B;
	Thu,  7 Sep 2023 05:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0851210E75B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 05:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694065343; x=1725601343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vWbJ2sR89vsNqUiBPT59babVvelc09zbaejPcM8neb0=;
 b=IT2XInXS5pjk5BlqhzzmyxRfmmP95Btk6SguuuZH1zZRDT4OSn/FZT/0
 rHUi1xm7ho0HIL5xleDfPoZlTS+q32n//KcBzeO1RCsR2YPGOJdYiG/64
 i+CDLEIS2+Bs6t2mhL3/Gt8W6xpewYal54NlMhHJxC7TrwKmxcc02bUvA
 zKh9ZvCc60eQ18J3dqaDPvVKA2wcWaEJ+PM2S5SI5fgjEsZC7ZpCE/ErC
 0Zv9MObVahphCVcIelmtmW7Rmuvn4CUKrxLdMD0xsanGt94LZqVHzsvrx
 3jcPkD6lp0QXas0rKfBVLYqmO2bKLli+0OfhlHult1rzkDA2Tiip43XB1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="379975306"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="379975306"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 22:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="744992675"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="744992675"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 22:42:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:42:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 22:42:21 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 22:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGeH4t+OjscMnKr9zr5tC9+0HtxPmFe9PEAnQg5zcschRAtkEngp9KMigFkGDcJyj8cx9/TwBgnXwXHRrGhNChY+2SPEtHfGVnB2S1c79XQopc3NEfPMGH5iXDbDMNDcmXZGmKSIYVKen6ECkIls/+7d+qxHyz9Ch/g4a/7GWiKLCQdNoBnns8SjhmQbE4VhMf5+a22bU4Q/dTi/wUVzuQVQIyPUJgG+/hNkizt/CLi+HjpyvrsISFnl0qCesrEXvX0ionNeiM21w6X9uMcWm5ff4Rs2gWn/tnAjhdWTO69zpEbGiAeYvn7hb++JRVImPIokqvk1+pK6p6vXkOGx9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zOnhwc9nyI1CW1TMyQOvR0z7sZ8KGKovctwW/nfew7o=;
 b=NQL1fpVuK2Bl6heabJKisM8/+6SU7krdrJo/+3DeeMYJ9eEElTERKNzOnbzf5AL5pEwAyq7OvxAvZd6Z7NMtgpzKaR3K0+yi1kPzBDZnhNsIxX7orR8yU8agRMDlysC/9UQqfxvx/Ne/xXma+gSPcoA4cZVZ+Gsiurml6QyOSvuMQIZZoVXjBP0BiwcU9JOPVEh6LyzpmA41ucMOFQIgXeLSSc4MpYXolLYH/Y990gwysx5aA1vnurrYMmVux4ooT4g/XHFtR2voGgl34OONdMEhWAZRlsiA4Lcrx+ZwNm5WodRHzcBZfnMDirJeFFYdC+y/Vc3PFXtjqE2OzY0Weg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6438.namprd11.prod.outlook.com (2603:10b6:930:35::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 05:42:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 05:42:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 7/8] drm/i915/dsc: add the PPS number to the register
 content macros
Thread-Index: AQHZ4ByF18V+GqxiJU6qeDfHmG6f7rAO2uBg
Date: Thu, 7 Sep 2023 05:42:13 +0000
Message-ID: <SN7PR11MB675031FE69692ED52C1330F4E3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <58de57b04ad2da5207f52c56c9e40663aaf16173.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <58de57b04ad2da5207f52c56c9e40663aaf16173.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6438:EE_
x-ms-office365-filtering-correlation-id: 659314d4-843e-462c-d528-08dbaf652ffa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4DFrDo88hkg81LMJ5eCkmmXaMIcQTTZdYDJJ/a7VpAPnytf5Wlt3ltEzO3l+xgDWta4fxkvZcYN7plTuReXhAEOhWEmjc9nEGLd5RjsVSwZkN05fn5QjKkOwPLwfNMwwu9PTt6NVcl6hdWH/M6s1f6epphd8d4wnmNroso6TaUeww+IOgbsUEkvm/Iok6YKDEVixuFBIjh/p91Xj9+KAKJ/7ofLJHgGxahiBTj6o7tzP9J70tCkfyHsLglDquf62ynqLHF6x9A6UOUja4ZGerAy6aETs1BaFj/cXu5ZSyOlOs3l4eIGsXpkgIEjBqmLo3CJzg1jZe7XngvialvPuwufn2upfsozSNDyia1abRc0Jx/1TXrKMwqibEntMXWzFFbjmGDVcmnQhDIxxQppcrKLeIhywUHh3LdL2eHCGHzU6lB1cTjXJNP8XapzNQOKRAxY6Jha+T2uJlxwXV8f7p//C3qNARJT4yACNg7vP77YI1b+mnY9lmFIJiS5Vgxf4wVDCxAWI+FQpYw9ri9Hgj2RKO0xfoa0nEJllSEtROOknKCGxRkwM7mFMr3KpcLNYy/JSgJGJyuPpaM4q5ZQcgJxFW/Rl9pG62QNan42F7tKm5oU+QtU3U2GYmKa6Dlcj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(376002)(396003)(1800799009)(451199024)(186009)(122000001)(9686003)(71200400001)(7696005)(6506007)(38070700005)(86362001)(82960400001)(33656002)(38100700002)(55016003)(30864003)(2906002)(26005)(83380400001)(478600001)(107886003)(52536014)(316002)(66946007)(8676002)(5660300002)(8936002)(4326008)(76116006)(66476007)(64756008)(66556008)(66446008)(41300700001)(110136005)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ku7fFRwfDyrRp01PnZU7jMKZpfuiAbqpfEwszL4cCsRHvT201UnCVjUtlUhA?=
 =?us-ascii?Q?GW8KFJTmCUgjrvveAP07LB0U14cbocZkdibasnjX/ak3ssILUg1DiILx/gsB?=
 =?us-ascii?Q?13vow4BPKlFF4XnD69d54/vnHTqgP+ZG/T2kFn0uaNiX+lvLe4t6Jc0HVOWY?=
 =?us-ascii?Q?QgdnCjykDTJDFShQy2/9l6P55to8jGOULXxC3X1rRHSF9DGSorNWpTKT0wVx?=
 =?us-ascii?Q?znuB+M38csVSKPRdd14RmCI+e4h1tu3/yhbqr5wk3Mvm/mSkx3q/wL5k4T+C?=
 =?us-ascii?Q?csunkJWxq1XXfE1QWtIDZy9XId1ECMLY+YVZiZhJFbuHEWOMOg8DnejmDs+b?=
 =?us-ascii?Q?0nQBP3VbnfICT0pDmxLNkBHyXOqgaYob1nE4FOqgRVc5mm/tQnKrSngt5Fq2?=
 =?us-ascii?Q?cITIubcFxNbXGJgkaCfXIxlTww0hY//l96+gOiQSPC19hyTaCts41JFA0GA3?=
 =?us-ascii?Q?oGokAH5cs2idMHtFXL0QB/8lH3x6Gspt8ZomzZl9zH2cfT7MCwWDqiAW/l6p?=
 =?us-ascii?Q?H9YMWbbaysg42+rKms2iYxBa07anAW/1SbPCDFydjrUtKT6jDpT8IrbnN5z+?=
 =?us-ascii?Q?otZ9VSuReTTZr9G7nn/W7aA2kruIn6scp2uLbMPfBdGNcfu+7Qismq75Y6BF?=
 =?us-ascii?Q?3Wc0BNE5bcWueSNGThTkMpf5qatiJefJ+jp7yDx4N+VW0dgRK50NHdc8XS6u?=
 =?us-ascii?Q?daeXcDGbCMJu6QVwsVLpZN5Vj3Qmce1WjWWLovoecFsCZ0rYLXrc8nMBEie8?=
 =?us-ascii?Q?gsOhU4hxLbfaS7xbn6hRCbMTwJSqcbal3jT3QsJZ8FZrok308AThaumQxR/x?=
 =?us-ascii?Q?IKalxZR4KUiI/knnaULai+tvxxiCSYXFLrB2zQGDnhFHeFevf99YUlFgA6s2?=
 =?us-ascii?Q?aBiyuPbKyUT/O6UGAV/wcDKFMgtltCZTdji40wSAw71xE/5aN7qCiDdxcU8v?=
 =?us-ascii?Q?h4sU8NgSfXesdMWoSDpJKhj2IHFki759HxBKX5Q+2fEXJTmrlQ5sdszrhJKl?=
 =?us-ascii?Q?K9QBILFYdzUo+tfWFaBepz+fjNTk0tjZfH+FdrRT/KdaBFfu6QldyHz0lwlr?=
 =?us-ascii?Q?kAgcokHDeYDe6LaV67dCCRc7g7FQ2KR/h5druJqHc4e4PqKshlpSEhZsCHTC?=
 =?us-ascii?Q?KzSyKOlNghmMcwjgGcbj8Wtvl3Q9a1uz9lsvcw8puRdVcsCnmYI9ocLoYBxh?=
 =?us-ascii?Q?eK/6AUY6yw4fT/6jpLrDNc5IFY4HZmZNJ5+7JmYfdzMHw0l4qUo/RxVJePSO?=
 =?us-ascii?Q?hIVY6gwGlyMXc8EJBBKEQvVzrQwjLcGjek4MkOvjnar6oPqv/NDIhk+fmLRF?=
 =?us-ascii?Q?B9jo81tjrowSIqLV5JSEhDVwIUOFkx3A1PFLsD4+G+cZw+MkKkrctLb7u+BG?=
 =?us-ascii?Q?1kqlTEDWejyr6cgW8X7YwhoK8QAoEaVbyHXQhxCsfBEDro8BwlDcVS9Q8pK8?=
 =?us-ascii?Q?OhHQ1joXumkK1WCLmSo0QyBD3JSHrXOGKXnNs9lh7VuUJiv7eun9lh2tL+Fd?=
 =?us-ascii?Q?FyqXQhyoFJNJwDemiGHcHeuROe3PLNSHqAGhGl4VgV77HP28cVmfeC13Bt/K?=
 =?us-ascii?Q?3cNGozDJPaQVZIRmmyG4Pe0Akj5NrJEojeFLjH79?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 659314d4-843e-462c-d528-08dbaf652ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 05:42:13.3964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gtu/rPspqskgv+iOXeYIdamFIycO+bfVYFmbf7vuO6f4VFuIL4+pdkatA42nsIaNS4dN0isejcXGlt43G5uCWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6438
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/dsc: add the PPS number to the
 register content macros
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

> Subject: [PATCH 7/8] drm/i915/dsc: add the PPS number to the register con=
tent
> macros
>=20
> Improve clarity by specifying the PPS number in the register content macr=
os. It's
> easier to notice if macros are being used for the wrong register.

LGTM.

Reviewed-by : Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>=20
> ---
>=20
> Probably easiest to review by applying and using 'git show --word-diff'
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 146 ++++++++---------
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    | 152 +++++++++---------
>  2 files changed, 149 insertions(+), 149 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 4855514d7b09..126aff804e33 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -423,109 +423,109 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	int vdsc_instances_per_pipe =3D
> intel_dsc_get_vdsc_per_pipe(crtc_state);
>=20
>  	/* PPS 0 */
> -	pps_val =3D DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> -		DSC_VER_MIN_SHIFT |
> -		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
> -		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> +	pps_val =3D DSC_PPS0_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> +		DSC_PPS0_VER_MIN_SHIFT |
> +		vdsc_cfg->bits_per_component << DSC_PPS0_BPC_SHIFT |
> +		vdsc_cfg->line_buf_depth <<
> DSC_PPS0_LINE_BUF_DEPTH_SHIFT;
>  	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
> -		pps_val |=3D DSC_ALT_ICH_SEL;
> +		pps_val |=3D DSC_PPS0_ALT_ICH_SEL;
>  		if (vdsc_cfg->native_420)
> -			pps_val |=3D DSC_NATIVE_420_ENABLE;
> +			pps_val |=3D DSC_PPS0_NATIVE_420_ENABLE;
>  		if (vdsc_cfg->native_422)
> -			pps_val |=3D DSC_NATIVE_422_ENABLE;
> +			pps_val |=3D DSC_PPS0_NATIVE_422_ENABLE;
>  	}
>  	if (vdsc_cfg->block_pred_enable)
> -		pps_val |=3D DSC_BLOCK_PREDICTION;
> +		pps_val |=3D DSC_PPS0_BLOCK_PREDICTION;
>  	if (vdsc_cfg->convert_rgb)
> -		pps_val |=3D DSC_COLOR_SPACE_CONVERSION;
> +		pps_val |=3D DSC_PPS0_COLOR_SPACE_CONVERSION;
>  	if (vdsc_cfg->simple_422)
> -		pps_val |=3D DSC_422_ENABLE;
> +		pps_val |=3D DSC_PPS0_422_ENABLE;
>  	if (vdsc_cfg->vbr_enable)
> -		pps_val |=3D DSC_VBR_ENABLE;
> +		pps_val |=3D DSC_PPS0_VBR_ENABLE;
>  	drm_dbg_kms(&dev_priv->drm, "PPS0 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 0, pps_val);
>=20
>  	/* PPS 1 */
> -	pps_val =3D DSC_BPP(vdsc_cfg->bits_per_pixel);
> +	pps_val =3D DSC_PPS1_BPP(vdsc_cfg->bits_per_pixel);
>  	drm_dbg_kms(&dev_priv->drm, "PPS1 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 1, pps_val);
>=20
>  	/* PPS 2 */
> -	pps_val =3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
> -		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
> +	pps_val =3D DSC_PPS2_PIC_HEIGHT(vdsc_cfg->pic_height) |
> +		DSC_PPS2_PIC_WIDTH(vdsc_cfg->pic_width /
> num_vdsc_instances);
>  	drm_dbg_kms(&dev_priv->drm, "PPS2 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 2, pps_val);
>=20
>  	/* PPS 3 */
> -	pps_val =3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
> -		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
> +	pps_val =3D DSC_PPS3_SLICE_HEIGHT(vdsc_cfg->slice_height) |
> +		DSC_PPS3_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	drm_dbg_kms(&dev_priv->drm, "PPS3 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 3, pps_val);
>=20
>  	/* PPS 4 */
> -	pps_val =3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
> -		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
> +	pps_val =3D DSC_PPS4_INITIAL_XMIT_DELAY(vdsc_cfg-
> >initial_xmit_delay) |
> +		DSC_PPS4_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	drm_dbg_kms(&dev_priv->drm, "PPS4 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 4, pps_val);
>=20
>  	/* PPS 5 */
> -	pps_val =3D DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
> -		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
> +	pps_val =3D DSC_PPS5_SCALE_INC_INT(vdsc_cfg-
> >scale_increment_interval) |
> +		DSC_PPS5_SCALE_DEC_INT(vdsc_cfg-
> >scale_decrement_interval);
>  	drm_dbg_kms(&dev_priv->drm, "PPS5 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 5, pps_val);
>=20
>  	/* PPS 6 */
> -	pps_val =3D DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
> -		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset)
> |
> -		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
> -		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
> +	pps_val =3D DSC_PPS6_INITIAL_SCALE_VALUE(vdsc_cfg-
> >initial_scale_value) |
> +		DSC_PPS6_FIRST_LINE_BPG_OFFSET(vdsc_cfg-
> >first_line_bpg_offset) |
> +		DSC_PPS6_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
> +		DSC_PPS6_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>  	drm_dbg_kms(&dev_priv->drm, "PPS6 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 6, pps_val);
>=20
>  	/* PPS 7 */
> -	pps_val =3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
> -		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
> +	pps_val =3D DSC_PPS7_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
> +		DSC_PPS7_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS7 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 7, pps_val);
>=20
>  	/* PPS 8 */
> -	pps_val =3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
> -		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
> +	pps_val =3D DSC_PPS8_FINAL_OFFSET(vdsc_cfg->final_offset) |
> +		DSC_PPS8_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS8 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 8, pps_val);
>=20
>  	/* PPS 9 */
> -	pps_val =3D DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
> -		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
> +	pps_val =3D DSC_PPS9_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
> +
> 	DSC_PPS9_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS9 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 9, pps_val);
>=20
>  	/* PPS 10 */
> -	pps_val =3D DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg-
> >rc_quant_incr_limit0) |
> -		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1)
> |
> -		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST)
> |
> -
> 	DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
> +	pps_val =3D DSC_PPS10_RC_QUANT_INC_LIMIT0(vdsc_cfg-
> >rc_quant_incr_limit0) |
> +		DSC_PPS10_RC_QUANT_INC_LIMIT1(vdsc_cfg-
> >rc_quant_incr_limit1) |
> +
> 	DSC_PPS10_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST)
> |
> +
> 	DSC_PPS10_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS10 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 10, pps_val);
>=20
>  	/* PPS 16 */
> -	pps_val =3D DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
> -		DSC_SLICE_PER_LINE((vdsc_cfg->pic_width /
> num_vdsc_instances) /
> -				   vdsc_cfg->slice_width) |
> -		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
> -					vdsc_cfg->slice_height);
> +	pps_val =3D DSC_PPS16_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size)
> |
> +		DSC_PPS16_SLICE_PER_LINE((vdsc_cfg->pic_width /
> num_vdsc_instances) /
> +					 vdsc_cfg->slice_width) |
> +		DSC_PPS16_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
> +					      vdsc_cfg->slice_height);
>  	drm_dbg_kms(&dev_priv->drm, "PPS16 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 16, pps_val);
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
>  		/* PPS 17 */
> -		pps_val =3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
> +		pps_val =3D DSC_PPS17_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
>  		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n", pps_val);
>  		intel_dsc_pps_write(crtc_state, 17, pps_val);
>=20
>  		/* PPS 18 */
> -		pps_val =3D DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
> -			DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
> +		pps_val =3D DSC_PPS18_NSL_BPG_OFFSET(vdsc_cfg-
> >nsl_bpg_offset) |
> +			DSC_PPS18_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
>  		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n", pps_val);
>  		intel_dsc_pps_write(crtc_state, 18, pps_val);
>  	}
> @@ -857,15 +857,15 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	/* PPS 0 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 0);
>=20
> -	vdsc_cfg->bits_per_component =3D (pps_temp & DSC_BPC_MASK) >>
> DSC_BPC_SHIFT;
> +	vdsc_cfg->bits_per_component =3D (pps_temp & DSC_PPS0_BPC_MASK)
> >>
> +DSC_PPS0_BPC_SHIFT;
>  	vdsc_cfg->line_buf_depth =3D
> -		(pps_temp & DSC_LINE_BUF_DEPTH_MASK) >>
> DSC_LINE_BUF_DEPTH_SHIFT;
> -	vdsc_cfg->block_pred_enable =3D pps_temp & DSC_BLOCK_PREDICTION;
> -	vdsc_cfg->convert_rgb =3D pps_temp &
> DSC_COLOR_SPACE_CONVERSION;
> -	vdsc_cfg->simple_422 =3D pps_temp & DSC_422_ENABLE;
> -	vdsc_cfg->native_422 =3D pps_temp & DSC_NATIVE_422_ENABLE;
> -	vdsc_cfg->native_420 =3D pps_temp & DSC_NATIVE_420_ENABLE;
> -	vdsc_cfg->vbr_enable =3D pps_temp & DSC_VBR_ENABLE;
> +		(pps_temp & DSC_PPS0_LINE_BUF_DEPTH_MASK) >>
> DSC_PPS0_LINE_BUF_DEPTH_SHIFT;
> +	vdsc_cfg->block_pred_enable =3D pps_temp &
> DSC_PPS0_BLOCK_PREDICTION;
> +	vdsc_cfg->convert_rgb =3D pps_temp &
> DSC_PPS0_COLOR_SPACE_CONVERSION;
> +	vdsc_cfg->simple_422 =3D pps_temp & DSC_PPS0_422_ENABLE;
> +	vdsc_cfg->native_422 =3D pps_temp & DSC_PPS0_NATIVE_422_ENABLE;
> +	vdsc_cfg->native_420 =3D pps_temp & DSC_PPS0_NATIVE_420_ENABLE;
> +	vdsc_cfg->vbr_enable =3D pps_temp & DSC_PPS0_VBR_ENABLE;
>=20
>  	/* PPS 1 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 1); @@ -880,74
> +880,74 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state
> *crtc_state)
>  	/* PPS 2 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 2);
>=20
> -	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PIC_WIDTH_MASK,
> pps_temp) / num_vdsc_instances;
> -	vdsc_cfg->pic_height =3D REG_FIELD_GET(DSC_PIC_HEIGHT_MASK,
> pps_temp);
> +	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PPS2_PIC_WIDTH_MASK,
> pps_temp) / num_vdsc_instances;
> +	vdsc_cfg->pic_height =3D REG_FIELD_GET(DSC_PPS2_PIC_HEIGHT_MASK,
> +pps_temp);
>=20
>  	/* PPS 3 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 3);
>=20
> -	vdsc_cfg->slice_width =3D REG_FIELD_GET(DSC_SLICE_WIDTH_MASK,
> pps_temp);
> -	vdsc_cfg->slice_height =3D REG_FIELD_GET(DSC_SLICE_HEIGHT_MASK,
> pps_temp);
> +	vdsc_cfg->slice_width =3D
> REG_FIELD_GET(DSC_PPS3_SLICE_WIDTH_MASK, pps_temp);
> +	vdsc_cfg->slice_height =3D
> REG_FIELD_GET(DSC_PPS3_SLICE_HEIGHT_MASK,
> +pps_temp);
>=20
>  	/* PPS 4 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 4);
>=20
> -	vdsc_cfg->initial_dec_delay =3D
> REG_FIELD_GET(DSC_INITIAL_DEC_DELAY_MASK, pps_temp);
> -	vdsc_cfg->initial_xmit_delay =3D
> REG_FIELD_GET(DSC_INITIAL_XMIT_DELAY_MASK, pps_temp);
> +	vdsc_cfg->initial_dec_delay =3D
> REG_FIELD_GET(DSC_PPS4_INITIAL_DEC_DELAY_MASK, pps_temp);
> +	vdsc_cfg->initial_xmit_delay =3D
> +REG_FIELD_GET(DSC_PPS4_INITIAL_XMIT_DELAY_MASK, pps_temp);
>=20
>  	/* PPS 5 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 5);
>=20
> -	vdsc_cfg->scale_decrement_interval =3D
> REG_FIELD_GET(DSC_SCALE_DEC_INT_MASK, pps_temp);
> -	vdsc_cfg->scale_increment_interval =3D
> REG_FIELD_GET(DSC_SCALE_INC_INT_MASK, pps_temp);
> +	vdsc_cfg->scale_decrement_interval =3D
> REG_FIELD_GET(DSC_PPS5_SCALE_DEC_INT_MASK, pps_temp);
> +	vdsc_cfg->scale_increment_interval =3D
> +REG_FIELD_GET(DSC_PPS5_SCALE_INC_INT_MASK, pps_temp);
>=20
>  	/* PPS 6 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 6);
>=20
> -	vdsc_cfg->initial_scale_value =3D
> REG_FIELD_GET(DSC_INITIAL_SCALE_VALUE_MASK, pps_temp);
> -	vdsc_cfg->first_line_bpg_offset =3D
> REG_FIELD_GET(DSC_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);
> -	vdsc_cfg->flatness_min_qp =3D
> REG_FIELD_GET(DSC_FLATNESS_MIN_QP_MASK, pps_temp);
> -	vdsc_cfg->flatness_max_qp =3D
> REG_FIELD_GET(DSC_FLATNESS_MAX_QP_MASK, pps_temp);
> +	vdsc_cfg->initial_scale_value =3D
> REG_FIELD_GET(DSC_PPS6_INITIAL_SCALE_VALUE_MASK, pps_temp);
> +	vdsc_cfg->first_line_bpg_offset =3D
> REG_FIELD_GET(DSC_PPS6_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->flatness_min_qp =3D
> REG_FIELD_GET(DSC_PPS6_FLATNESS_MIN_QP_MASK, pps_temp);
> +	vdsc_cfg->flatness_max_qp =3D
> +REG_FIELD_GET(DSC_PPS6_FLATNESS_MAX_QP_MASK, pps_temp);
>=20
>  	/* PPS 7 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 7);
>=20
> -	vdsc_cfg->nfl_bpg_offset =3D
> REG_FIELD_GET(DSC_NFL_BPG_OFFSET_MASK, pps_temp);
> -	vdsc_cfg->slice_bpg_offset =3D
> REG_FIELD_GET(DSC_SLICE_BPG_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->nfl_bpg_offset =3D
> REG_FIELD_GET(DSC_PPS7_NFL_BPG_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->slice_bpg_offset =3D
> +REG_FIELD_GET(DSC_PPS7_SLICE_BPG_OFFSET_MASK, pps_temp);
>=20
>  	/* PPS 8 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 8);
>=20
> -	vdsc_cfg->initial_offset =3D REG_FIELD_GET(DSC_INITIAL_OFFSET_MASK,
> pps_temp);
> -	vdsc_cfg->final_offset =3D REG_FIELD_GET(DSC_FINAL_OFFSET_MASK,
> pps_temp);
> +	vdsc_cfg->initial_offset =3D
> REG_FIELD_GET(DSC_PPS8_INITIAL_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->final_offset =3D
> REG_FIELD_GET(DSC_PPS8_FINAL_OFFSET_MASK,
> +pps_temp);
>=20
>  	/* PPS 9 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 9);
>=20
> -	vdsc_cfg->rc_model_size =3D
> REG_FIELD_GET(DSC_RC_MODEL_SIZE_MASK, pps_temp);
> +	vdsc_cfg->rc_model_size =3D
> REG_FIELD_GET(DSC_PPS9_RC_MODEL_SIZE_MASK,
> +pps_temp);
>=20
>  	/* PPS 10 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 10);
>=20
> -	vdsc_cfg->rc_quant_incr_limit0 =3D
> REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
> -	vdsc_cfg->rc_quant_incr_limit1 =3D
> REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
> +	vdsc_cfg->rc_quant_incr_limit0 =3D
> REG_FIELD_GET(DSC_PPS10_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
> +	vdsc_cfg->rc_quant_incr_limit1 =3D
> +REG_FIELD_GET(DSC_PPS10_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
>=20
>  	/* PPS 16 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 16);
>=20
> -	vdsc_cfg->slice_chunk_size =3D
> REG_FIELD_GET(DSC_SLICE_CHUNK_SIZE_MASK, pps_temp);
> +	vdsc_cfg->slice_chunk_size =3D
> +REG_FIELD_GET(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, pps_temp);
>=20
>  	if (DISPLAY_VER(i915) >=3D 14) {
>  		/* PPS 17 */
>  		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 17);
>=20
> -		vdsc_cfg->second_line_bpg_offset =3D
> REG_FIELD_GET(DSC_SL_BPG_OFFSET_MASK, pps_temp);
> +		vdsc_cfg->second_line_bpg_offset =3D
> +REG_FIELD_GET(DSC_PPS17_SL_BPG_OFFSET_MASK, pps_temp);
>=20
>  		/* PPS 18 */
>  		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 18);
>=20
> -		vdsc_cfg->nsl_bpg_offset =3D
> REG_FIELD_GET(DSC_NSL_BPG_OFFSET_MASK, pps_temp);
> -		vdsc_cfg->second_line_offset_adj =3D
> REG_FIELD_GET(DSC_SL_OFFSET_ADJ_MASK, pps_temp);
> +		vdsc_cfg->nsl_bpg_offset =3D
> REG_FIELD_GET(DSC_PPS18_NSL_BPG_OFFSET_MASK, pps_temp);
> +		vdsc_cfg->second_line_offset_adj =3D
> +REG_FIELD_GET(DSC_PPS18_SL_OFFSET_ADJ_MASK, pps_temp);
>  	}
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 58d282dcfc6f..92782de2b309 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -73,115 +73,115 @@
>  #define  ICL_DSC1_PPS(pipe, pps)
> 	_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>=20
>  /* PPS 0 */
> -#define  DSC_NATIVE_422_ENABLE		BIT(23)
> -#define  DSC_NATIVE_420_ENABLE		BIT(22)
> -#define  DSC_ALT_ICH_SEL		(1 << 20)
> -#define  DSC_VBR_ENABLE			(1 << 19)
> -#define  DSC_422_ENABLE			(1 << 18)
> -#define  DSC_COLOR_SPACE_CONVERSION	(1 << 17)
> -#define  DSC_BLOCK_PREDICTION		(1 << 16)
> -#define  DSC_LINE_BUF_DEPTH_SHIFT	12
> -#define  DSC_LINE_BUF_DEPTH_MASK	REG_GENMASK(15, 12)
> -#define  DSC_BPC_SHIFT			8
> -#define  DSC_BPC_MASK			REG_GENMASK(11, 8)
> -#define  DSC_VER_MIN_SHIFT		4
> -#define  DSC_VER_MAJ			(0x1 << 0)
> +#define   DSC_PPS0_NATIVE_422_ENABLE		BIT(23)
> +#define   DSC_PPS0_NATIVE_420_ENABLE		BIT(22)
> +#define   DSC_PPS0_ALT_ICH_SEL			(1 << 20)
> +#define   DSC_PPS0_VBR_ENABLE			(1 << 19)
> +#define   DSC_PPS0_422_ENABLE			(1 << 18)
> +#define   DSC_PPS0_COLOR_SPACE_CONVERSION	(1 << 17)
> +#define   DSC_PPS0_BLOCK_PREDICTION		(1 << 16)
> +#define   DSC_PPS0_LINE_BUF_DEPTH_SHIFT		12
> +#define   DSC_PPS0_LINE_BUF_DEPTH_MASK		REG_GENMASK(15,
> 12)
> +#define   DSC_PPS0_BPC_SHIFT			8
> +#define   DSC_PPS0_BPC_MASK			REG_GENMASK(11, 8)
> +#define   DSC_PPS0_VER_MIN_SHIFT		4
> +#define   DSC_PPS0_VER_MAJ			(0x1 << 0)
>=20
>  /* PPS 1 */
> -#define  DSC_BPP(bpp)				((bpp) << 0)
> +#define   DSC_PPS1_BPP(bpp)			((bpp) << 0)
>=20
>  /* PPS 2 */
> -#define  DSC_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
> -#define  DSC_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
> -#define  DSC_PIC_WIDTH(pic_width)
> 	REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
> -#define  DSC_PIC_HEIGHT(pic_height)
> 	REG_FIELD_PREP(DSC_PIC_HEIGHT_MASK, pic_height)
> +#define   DSC_PPS2_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
> +#define   DSC_PPS2_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
> +#define   DSC_PPS2_PIC_WIDTH(pic_width)
> 	REG_FIELD_PREP(DSC_PPS2_PIC_WIDTH_MASK, pic_width)
> +#define   DSC_PPS2_PIC_HEIGHT(pic_height)
> 	REG_FIELD_PREP(DSC_PPS2_PIC_HEIGHT_MASK, pic_height)
>=20
>  /* PPS 3 */
> -#define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31,
> 16)
> -#define  DSC_SLICE_HEIGHT_MASK			REG_GENMASK(15, 0)
> -#define  DSC_SLICE_WIDTH(slice_width)
> 	REG_FIELD_PREP(DSC_SLICE_WIDTH_MASK, slice_width)
> -#define  DSC_SLICE_HEIGHT(slice_height)
> 	REG_FIELD_PREP(DSC_SLICE_HEIGHT_MASK, slice_height)
> +#define   DSC_PPS3_SLICE_WIDTH_MASK		REG_GENMASK(31,
> 16)
> +#define   DSC_PPS3_SLICE_HEIGHT_MASK		REG_GENMASK(15, 0)
> +#define   DSC_PPS3_SLICE_WIDTH(slice_width)
> 	REG_FIELD_PREP(DSC_PPS3_SLICE_WIDTH_MASK, slice_width)
> +#define   DSC_PPS3_SLICE_HEIGHT(slice_height)
> 	REG_FIELD_PREP(DSC_PPS3_SLICE_HEIGHT_MASK, slice_height)
>=20
>  /* PPS 4 */
> -#define  DSC_INITIAL_DEC_DELAY_MASK		REG_GENMASK(31,
> 16)
> -#define  DSC_INITIAL_XMIT_DELAY_MASK		REG_GENMASK(9, 0)
> -#define  DSC_INITIAL_DEC_DELAY(dec_delay)
> REG_FIELD_PREP(DSC_INITIAL_DEC_DELAY_MASK, \
> +#define   DSC_PPS4_INITIAL_DEC_DELAY_MASK	REG_GENMASK(31,
> 16)
> +#define   DSC_PPS4_INITIAL_XMIT_DELAY_MASK	REG_GENMASK(9, 0)
> +#define   DSC_PPS4_INITIAL_DEC_DELAY(dec_delay)
> 	REG_FIELD_PREP(DSC_PPS4_INITIAL_DEC_DELAY_MASK, \
>  							       dec_delay)
> -#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)
> REG_FIELD_PREP(DSC_INITIAL_XMIT_DELAY_MASK, \
> -							       xmit_delay)
> +#define   DSC_PPS4_INITIAL_XMIT_DELAY(xmit_delay)
> 	REG_FIELD_PREP(DSC_PPS4_INITIAL_XMIT_DELAY_MASK, \
> +
> xmit_delay)
>=20
>  /* PPS 5 */
> -#define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27,
> 16)
> -#define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
> -#define  DSC_SCALE_DEC_INT(scale_dec)
> 	REG_FIELD_PREP(DSC_SCALE_DEC_INT_MASK, scale_dec)
> -#define  DSC_SCALE_INC_INT(scale_inc)
> 	REG_FIELD_PREP(DSC_SCALE_INC_INT_MASK, scale_inc)
> +#define   DSC_PPS5_SCALE_DEC_INT_MASK		REG_GENMASK(27,
> 16)
> +#define   DSC_PPS5_SCALE_INC_INT_MASK		REG_GENMASK(15, 0)
> +#define   DSC_PPS5_SCALE_DEC_INT(scale_dec)
> 	REG_FIELD_PREP(DSC_PPS5_SCALE_DEC_INT_MASK, scale_dec)
> +#define   DSC_PPS5_SCALE_INC_INT(scale_inc)
> 	REG_FIELD_PREP(DSC_PPS5_SCALE_INC_INT_MASK, scale_inc)
>=20
>  /* PPS 6 */
> -#define  DSC_FLATNESS_MAX_QP_MASK		REG_GENMASK(28,
> 24)
> -#define  DSC_FLATNESS_MIN_QP_MASK		REG_GENMASK(20,
> 16)
> -#define  DSC_FIRST_LINE_BPG_OFFSET_MASK		REG_GENMASK(12, 8)
> -#define  DSC_INITIAL_SCALE_VALUE_MASK		REG_GENMASK(5, 0)
> -#define  DSC_FLATNESS_MAX_QP(max_qp)
> 	REG_FIELD_PREP(DSC_FLATNESS_MAX_QP_MASK, max_qp)
> -#define  DSC_FLATNESS_MIN_QP(min_qp)
> 	REG_FIELD_PREP(DSC_FLATNESS_MIN_QP_MASK, min_qp)
> -#define  DSC_FIRST_LINE_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_FIRST_LINE_BPG_OFFSET_MASK, \
> -							       offset)
> -#define  DSC_INITIAL_SCALE_VALUE(value)
> 	REG_FIELD_PREP(DSC_INITIAL_SCALE_VALUE_MASK, \
> +#define   DSC_PPS6_FLATNESS_MAX_QP_MASK
> 	REG_GENMASK(28, 24)
> +#define   DSC_PPS6_FLATNESS_MIN_QP_MASK		REG_GENMASK(20,
> 16)
> +#define   DSC_PPS6_FIRST_LINE_BPG_OFFSET_MASK	REG_GENMASK(12, 8)
> +#define   DSC_PPS6_INITIAL_SCALE_VALUE_MASK	REG_GENMASK(5, 0)
> +#define   DSC_PPS6_FLATNESS_MAX_QP(max_qp)
> 	REG_FIELD_PREP(DSC_PPS6_FLATNESS_MAX_QP_MASK, max_qp)
> +#define   DSC_PPS6_FLATNESS_MIN_QP(min_qp)
> 	REG_FIELD_PREP(DSC_PPS6_FLATNESS_MIN_QP_MASK, min_qp)
> +#define   DSC_PPS6_FIRST_LINE_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_PPS6_FIRST_LINE_BPG_OFFSET_MASK, \
> +								       offset)
> +#define   DSC_PPS6_INITIAL_SCALE_VALUE(value)
> 	REG_FIELD_PREP(DSC_PPS6_INITIAL_SCALE_VALUE_MASK, \
>  							       value)
>=20
>  /* PPS 7 */
> -#define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
> -#define  DSC_SLICE_BPG_OFFSET_MASK		REG_GENMASK(15, 0)
> -#define  DSC_NFL_BPG_OFFSET(bpg_offset)
> 	REG_FIELD_PREP(DSC_NFL_BPG_OFFSET_MASK, bpg_offset)
> -#define  DSC_SLICE_BPG_OFFSET(bpg_offset)
> 	REG_FIELD_PREP(DSC_SLICE_BPG_OFFSET_MASK, \
> +#define   DSC_PPS7_NFL_BPG_OFFSET_MASK		REG_GENMASK(31,
> 16)
> +#define   DSC_PPS7_SLICE_BPG_OFFSET_MASK	REG_GENMASK(15, 0)
> +#define   DSC_PPS7_NFL_BPG_OFFSET(bpg_offset)
> 	REG_FIELD_PREP(DSC_PPS7_NFL_BPG_OFFSET_MASK, bpg_offset)
> +#define   DSC_PPS7_SLICE_BPG_OFFSET(bpg_offset)
> 	REG_FIELD_PREP(DSC_PPS7_SLICE_BPG_OFFSET_MASK, \
>  							       bpg_offset)
>  /* PPS 8 */
> -#define  DSC_INITIAL_OFFSET_MASK		REG_GENMASK(31, 16)
> -#define  DSC_FINAL_OFFSET_MASK			REG_GENMASK(15, 0)
> -#define  DSC_INITIAL_OFFSET(initial_offset)
> 	REG_FIELD_PREP(DSC_INITIAL_OFFSET_MASK, \
> -							       initial_offset)
> -#define  DSC_FINAL_OFFSET(final_offset)
> 	REG_FIELD_PREP(DSC_FINAL_OFFSET_MASK, \
> +#define   DSC_PPS8_INITIAL_OFFSET_MASK		REG_GENMASK(31,
> 16)
> +#define   DSC_PPS8_FINAL_OFFSET_MASK		REG_GENMASK(15, 0)
> +#define   DSC_PPS8_INITIAL_OFFSET(initial_offset)
> 	REG_FIELD_PREP(DSC_PPS8_INITIAL_OFFSET_MASK, \
> +
> initial_offset)
> +#define   DSC_PPS8_FINAL_OFFSET(final_offset)
> 	REG_FIELD_PREP(DSC_PPS8_FINAL_OFFSET_MASK, \
>  							       final_offset)
>=20
>  /* PPS 9 */
> -#define  DSC_RC_EDGE_FACTOR_MASK		REG_GENMASK(19,
> 16)
> -#define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
> -#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)
> 	REG_FIELD_PREP(DSC_RC_EDGE_FACTOR_MASK, \
> +#define   DSC_PPS9_RC_EDGE_FACTOR_MASK		REG_GENMASK(19,
> 16)
> +#define   DSC_PPS9_RC_MODEL_SIZE_MASK		REG_GENMASK(15, 0)
> +#define   DSC_PPS9_RC_EDGE_FACTOR(rc_edge_fact)
> 	REG_FIELD_PREP(DSC_PPS9_RC_EDGE_FACTOR_MASK, \
>  							       rc_edge_fact)
> -#define  DSC_RC_MODEL_SIZE(rc_model_size)
> 	REG_FIELD_PREP(DSC_RC_MODEL_SIZE_MASK, \
> +#define   DSC_PPS9_RC_MODEL_SIZE(rc_model_size)
> 	REG_FIELD_PREP(DSC_PPS9_RC_MODEL_SIZE_MASK, \
>  							       rc_model_size)
>=20
>  /* PPS 10 */
> -#define  DSC_RC_TGT_OFF_LOW_MASK
> 	REG_GENMASK(23, 20)
> -#define  DSC_RC_TGT_OFF_HIGH_MASK
> 	REG_GENMASK(19, 16)
> -#define  DSC_RC_QUANT_INC_LIMIT1_MASK
> 	REG_GENMASK(12, 8)
> -#define  DSC_RC_QUANT_INC_LIMIT0_MASK
> 	REG_GENMASK(4, 0)
> -#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)
> 	REG_FIELD_PREP(DSC_RC_TGT_OFF_LOW_MASK, \
> +#define   DSC_PPS10_RC_TGT_OFF_LOW_MASK
> 	REG_GENMASK(23, 20)
> +#define   DSC_PPS10_RC_TGT_OFF_HIGH_MASK	REG_GENMASK(19,
> 16)
> +#define   DSC_PPS10_RC_QUANT_INC_LIMIT1_MASK	REG_GENMASK(12, 8)
> +#define   DSC_PPS10_RC_QUANT_INC_LIMIT0_MASK	REG_GENMASK(4, 0)
> +#define   DSC_PPS10_RC_TARGET_OFF_LOW(rc_tgt_off_low)
> 	REG_FIELD_PREP(DSC_PPS10_RC_TGT_OFF_LOW_MASK, \
>=20
> rc_tgt_off_low)
> -#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)
> 	REG_FIELD_PREP(DSC_RC_TGT_OFF_HIGH_MASK, \
> +#define   DSC_PPS10_RC_TARGET_OFF_HIGH(rc_tgt_off_high)
> 	REG_FIELD_PREP(DSC_PPS10_RC_TGT_OFF_HIGH_MASK, \
>=20
> rc_tgt_off_high)
> -#define  DSC_RC_QUANT_INC_LIMIT1(lim)
> 	REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT1_MASK, lim)
> -#define  DSC_RC_QUANT_INC_LIMIT0(lim)
> 	REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT0_MASK, lim)
> +#define   DSC_PPS10_RC_QUANT_INC_LIMIT1(lim)
> 	REG_FIELD_PREP(DSC_PPS10_RC_QUANT_INC_LIMIT1_MASK, lim)
> +#define   DSC_PPS10_RC_QUANT_INC_LIMIT0(lim)
> 	REG_FIELD_PREP(DSC_PPS10_RC_QUANT_INC_LIMIT0_MASK, lim)
>=20
>  /* PPS 16 */
> -#define  DSC_SLICE_ROW_PR_FRME_MASK
> 	REG_GENMASK(31, 20)
> -#define  DSC_SLICE_PER_LINE_MASK			REG_GENMASK(18,
> 16)
> -#define  DSC_SLICE_CHUNK_SIZE_MASK
> 	REG_GENMASK(15, 0)
> -#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)
> 	REG_FIELD_PREP(DSC_SLICE_ROW_PR_FRME_MASK, \
> -
> slice_row_per_frame)
> -#define  DSC_SLICE_PER_LINE(slice_per_line)
> 	REG_FIELD_PREP(DSC_SLICE_PER_LINE_MASK, \
> -
> slice_per_line)
> -#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)
> 	REG_FIELD_PREP(DSC_SLICE_CHUNK_SIZE_MASK, \
> -
> slice_chunk_size)
> +#define   DSC_PPS16_SLICE_ROW_PR_FRME_MASK	REG_GENMASK(31,
> 20)
> +#define   DSC_PPS16_SLICE_PER_LINE_MASK		REG_GENMASK(18,
> 16)
> +#define   DSC_PPS16_SLICE_CHUNK_SIZE_MASK	REG_GENMASK(15, 0)
> +#define   DSC_PPS16_SLICE_ROW_PER_FRAME(slice_row_per_frame)
> 	REG_FIELD_PREP(DSC_PPS16_SLICE_ROW_PR_FRME_MASK, \
> +
> slice_row_per_frame)
> +#define   DSC_PPS16_SLICE_PER_LINE(slice_per_line)
> 	REG_FIELD_PREP(DSC_PPS16_SLICE_PER_LINE_MASK, \
> +
> slice_per_line)
> +#define   DSC_PPS16_SLICE_CHUNK_SIZE(slice_chunk_size)
> 	REG_FIELD_PREP(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, \
> +
> slice_chunk_size)
>=20
>  /* PPS 17 (MTL+) */
> -#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31,
> 27)
> -#define DSC_SL_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
> +#define   DSC_PPS17_SL_BPG_OFFSET_MASK		REG_GENMASK(31,
> 27)
> +#define   DSC_PPS17_SL_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_PPS17_SL_BPG_OFFSET_MASK, offset)
>=20
>  /* PPS 18 (MTL+) */
> -#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31,
> 16)
> -#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
> -#define DSC_NSL_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
> -#define DSC_SL_OFFSET_ADJ(offset)
> 	REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
> +#define   DSC_PPS18_NSL_BPG_OFFSET_MASK		REG_GENMASK(31,
> 16)
> +#define   DSC_PPS18_SL_OFFSET_ADJ_MASK		REG_GENMASK(15, 0)
> +#define   DSC_PPS18_NSL_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_PPS18_NSL_BPG_OFFSET_MASK, offset)
> +#define   DSC_PPS18_SL_OFFSET_ADJ(offset)
> 	REG_FIELD_PREP(DSC_PPS18_SL_OFFSET_ADJ_MASK, offset)
>=20
>  /* Icelake Rate Control Buffer Threshold Registers */
>  #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
> --
> 2.39.2

