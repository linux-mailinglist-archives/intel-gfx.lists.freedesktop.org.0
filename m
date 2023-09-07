Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF36C797030
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 07:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A683A10E761;
	Thu,  7 Sep 2023 05:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B6410E75C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694065925; x=1725601925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s9UWBMO+/djBao0mEz2oNIATL2NlHR8cT4lfvNKw3e0=;
 b=bsiZkrqwpLBzun5Sn3dRDcwNa7vY89jYBRGgIqqzqYNfdDHOkG2H/7DQ
 Uaqsk67P3ZRtH9V7GehBio2AeybxKtepeG8bV5H27yiblhDhbRhEkgRUK
 ty2INQrrT6NgKJVHQ4rnYhIgqlsztgIq5SOvg1OG5xMHtnt9HWZ0v+ewK
 twvHVak7tnODB27RorTtJse8e8gnwbfCHQ8HdwZDc6G9mL87HvsFyyi3j
 4XgAz0xahiHQ0NcAS0hdkPg/3AmEyu6WAYQmzitvKKYYM2hd9OHjFZ41V
 1+A8x93ePr6N+XqmJOnK63aAErOUuT9UrrXQxZsGtCJ/xOH8PdjpdQhIh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357579148"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="357579148"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 22:52:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="812000434"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="812000434"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 22:52:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:52:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 22:52:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 22:52:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PW6vYhOqPQMpeW61O/1sDFEIkTSbLhcKwu5rUIc56AlqMX3hxAAb1BHr/Er6TOmeDl4kSF4G7zxPi7rKSdpTPk14Hv4sbOwHBu+Jq1+DWtw23BGoPmh7UrD83esoBfP9pjBdW40A/F+V199iczV/a4D4LJN3TaK7Av1RPIpp6w4jc04H7GPJQDIVGBlulVLxuKZBfAtu6YEMlyzGlLSKKkp9wgsaaTgU+WYl6e+kzpUJT+J5myj2wA5OXGd4rgPJwspl2peJLL48ru5+sjNK749f8/lB6i7wAYUOnGbmZvDcOhK30KcQmbB95Vm+f+jjybrz1vldMJJkgZQhTYaJ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E73VUttAKklt9//YmrCCYnhEPfgZms18+RIwAwb3/44=;
 b=O2EBCETS941D3yVHHgIDSTlfJkqx3LQ6C5RsKTsmLuDLFXTDDiB8nXNXRwjv1PsJ9MxjNOySjsY1mn3gtIWM8o1HnoCCJEtgYh2IvcUS2iGDZ21zccv4mddeukmL7JKnkKj5DIK+YdtHJC1Lh8siCqs9ppLrp3kgPauVcPaKEoA5DHZDpXms0NP4fW3McZu8xaNK789QpOhAoZQIyffCL+0P4QLophukaNNOfCtS1CGm03LMyqPghCsWEuX7k16wQjVcLcOaFumpvuI+YcnPzMqMdYrxPyGdl6QDA6xQHyjuXBGk1czdndfdkQHhbx5B9gFBGx3lu1bhqlFa5Ko2Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5626.namprd11.prod.outlook.com (2603:10b6:510:ee::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 05:51:55 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 05:51:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 7/8] drm/i915/dsc: add the PPS number to the register
 content macros
Thread-Index: AQHZ4ByF18V+GqxiJU6qeDfHmG6f7rAO3muw
Date: Thu, 7 Sep 2023 05:51:55 +0000
Message-ID: <SN7PR11MB67502F1964C830B8150758ECE3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5626:EE_
x-ms-office365-filtering-correlation-id: 83435d30-ab43-4310-f691-08dbaf668af9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3a2b4GxQzo4rcJ45/pxrr8S4fanuWQMoyVH3U5FfdeEDG4oaAiOq9P4JpRuRUKBiBLZW53huzuDzGVm1vFWWHVggCRtYxcIoOJwSscqHA7o1CCER8HUy2plP1hQzo1mP4iXWGxekNt+Zocbn5xk7zaMNohY1bB7DD0p7+A4VUZvBFwGPvYlvzxHqPVIMP7RCRPvgH8MkGappZKtORJCylAB1HnlN5l/HoztlKvwXZzSXvEjfqyDQ3aOwa3qvNF1tJdnrqx2KE8beM1gYpbtU6yn+nAbBXeZF6vYpbth8zrWbNxZ7rq9SdDezQ5ATYcIGiRt0gsbZGAGjQ761mu0uO9KznnVmwhyY2M6VW8jHbf+EnudxcHBkxkFWoLJdZGS7Z9lIP22hKotLLhO/Y7nnLvS8VYkJesA3Gm9dNW1xZoNTJcTWkmashJ1ynCCucmznIN0CsWPvvMwXdViPUEbnKfh0TnEjUapquYbcoMLEQol8A9gUR6NuoOAj29Pv6fX/QtYMflF/mXRkyIwGWq8ZpLgnZamsIJTgAezabpDSOBwsNn1Z58ObwAbyLsNWpJWlZXOLx+jEOIhgR6leD0izxn8YGzccwa2rWEbxhlb7iqeU9zUT6GqLBw9WrkAiIkI6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199024)(1800799009)(186009)(122000001)(33656002)(38070700005)(38100700002)(86362001)(82960400001)(55016003)(7696005)(6506007)(478600001)(2906002)(30864003)(4326008)(110136005)(5660300002)(8676002)(41300700001)(8936002)(52536014)(9686003)(71200400001)(83380400001)(316002)(66476007)(76116006)(66446008)(66556008)(66946007)(64756008)(107886003)(26005)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uVtGcTukTViTRVDaW2IrAcIYMvlckzydPlaeeFQ2gjV6grQ8tHjSjPlx8aRP?=
 =?us-ascii?Q?fDfr4ck68uDTxs70l+DpeZtOZFA9DhtIapo3E+uyZqxQkgxxrzoaapOwNGAa?=
 =?us-ascii?Q?DFeLvLgcjaXyLXy6KcSR+Noz3HgWU6NL2Sk1hsR7O89hZz8JfIjyM6epxSJU?=
 =?us-ascii?Q?vmzNPt/61/JCMEXxdsHOrT6SUZK5+PG8s58HZICzS9KM26rdaZeM9ZNQfauZ?=
 =?us-ascii?Q?fbMkSpfMmMmaTTLNIqE/HlB/JYgzsSF/ONe9nBNhhqkUGS4Wbhpn8vVNxeNx?=
 =?us-ascii?Q?hAROXRsDbTJpr59+YcutSB6pCwC196FJ+d6KhsYunEV60ydkR9nqV4UxyuAW?=
 =?us-ascii?Q?gmHbpT4nkWRilKuk80y4GAIf2wsn9UxDNCW9xlF1D/v6ybY39CC+i9xxXD8Z?=
 =?us-ascii?Q?80F24CRz/wVAg1wzK5dDffmcJbTVMIwGCP9kjkb3xFx0Y/u5rRRq4+c2m/TD?=
 =?us-ascii?Q?yjMZTa6nO/0zVL7Nc4zoQlmuuUamvljDlvlQTogA/AxTBdV2j1PzazOduAH+?=
 =?us-ascii?Q?5x2/I6yxTpCTe1/9WOUokKKbYr5MfaUF25o4WudhgNrgvJmGXNgJLbELvSXc?=
 =?us-ascii?Q?qoA0XlohJIziNsbsau1bOWT1ikoP8o98/QI1jFPM4U0XJGlRtAd4D/huYiWS?=
 =?us-ascii?Q?GF3LYvTfrIPHdrqEvgwGDupQyYp6FZBIJvV7mC+2iYiwBSjSgoa+YP/Rqm9E?=
 =?us-ascii?Q?rtppuyZ5ron1skoqtx9J9F04G6LqD4+9NquJi4V6/1Lk+o+85mst+hSoGGud?=
 =?us-ascii?Q?EqSv/CZavduq28wU7D6msdJ+W7FdztSapxA5ruBwJL/IgyPBzwZrvwHV7CUw?=
 =?us-ascii?Q?AxR6YNVmOWN9ubQoNMd89tWN+onpJ3wPCQAjY7e3VmjI9+OEkLmyJgCHirTM?=
 =?us-ascii?Q?7QKjIXx9p24xON7yjDv3GQ6iVfZdGCC2uOid3mQL3SFI6GBBGZ4seukcqsnR?=
 =?us-ascii?Q?0SQPVko7u8E3A+DaZZVbYzy6xHLX6HI9xcVTQovutuWv5rDcIdR3IEo28TaD?=
 =?us-ascii?Q?j6hCPI/KpQVzDdn1tLz8vFUPq1Wy4ESMCVUO90XyX7gdxydBrO0Ap5FjeRB8?=
 =?us-ascii?Q?EtsKNgLriabOQXyEQ5XNrjmbp5V/SILWLRJ4DFjj9Dj+QzwHY4W7+Wo2Ovme?=
 =?us-ascii?Q?h8uh8dQcVEdZmXmINnXHju75+adZpLlM+CBX4G+tyeivZ+SL04UKPhQDSMtc?=
 =?us-ascii?Q?NHs/hL2qxik8Hp1gkI6oB+XTxRWabpaUaTwernt72gVn6kdpVSqVfcNEU9xZ?=
 =?us-ascii?Q?eTY7xme/9gKLYQfg5ym1/GVBqbLjOq8zrh4Zu6ERbG3dotuYJ3sL28B3fmMw?=
 =?us-ascii?Q?WamZEcfeqnZQlSYI9Lh+vGNX3nL0gOSvOjtzpzDpv/S3YYssCz7vkTdx0GzC?=
 =?us-ascii?Q?yezD8QtKN5aLJkEH51Kth4vZIOFMk2Ltte2BY8U8EscC0mdq4zQZbN6LrURA?=
 =?us-ascii?Q?4SZUmCY6Myz8KmNrFZJ+VuNz1eqOdrauP9DzQ4X8oBMoN3sdCai42Bk6HoWn?=
 =?us-ascii?Q?PTUciQPo75voLpd2Hqcu+YaHgbmkRLTf06vWX4fMPSeoY2cLdMkigW9Dmely?=
 =?us-ascii?Q?zfS5aNnrtthHbw4Y+WDNiVSjeMiYAiFk4bJ03fJH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83435d30-ab43-4310-f691-08dbaf668af9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 05:51:55.5965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DJofvLVi0hiPaXsoA1/b2XeIlnpa+5LXw970sL0TWZdEsbK+ZQ8f87dlmS6xvKnlDBzPV3MO62mppoutNc1BEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5626
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
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

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

