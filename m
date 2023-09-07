Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB9E797032
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 07:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8652910E75C;
	Thu,  7 Sep 2023 05:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CA810E75C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 05:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694066179; x=1725602179;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k8dbOHO7Mwgayzj6Cq6PKRdyMJAL3MFFZIbpZ6313xg=;
 b=JTHbJAAb+DnA+D8+UGPBvTFDFdjPJUDgaHy0PW+0A3mgN1ylKLZVBIr6
 W4liqB3KuOAS/6UB6YqHR4J1Z66aT/crhug6Og7UJ2dMT+Nst4v6mi1n0
 LnQPBdW5wbS1jrrQbHXZ/nNPm/7x9uChPXSnZHuyyJZ3DZVPMgvfOI5BG
 5scsetkmvoes3quflrgAiZX5FWB3sYWC/EsY59MPrPvmDZDiFExBsdeuz
 uWyaoipT5ttox47pNqeDCAMnVdO4MCcf6gLtB4VLHDD4OBwzFMEsH5GYC
 xfTJMqMz6oxRAqoJga/yb1Mme0M93ebr5fnNEQCCfQfWRtNTJRlZOBmkK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="377180283"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="377180283"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 22:51:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="776930173"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="776930173"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 22:51:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:51:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:51:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 22:51:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 22:51:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UeT3K3aI14ZnHwFLXhl8IaLrW8+tTC12eqyDI5EviPsLIM0sjM1kqdhuhJA3IHOWXYTFa+PbvOoC0mWmZ8UhJ3b4fpxomvZHlVmM1VaKQUy6bxHEd3O5C0gmlkbA3yXnYKegDuXGG54vtBMQNdA2F4R4TBWFxAR1FPRblNnHjBxmC415l52vzQcItdi+z19OErIETmgersjpj1hEzj2IPi2b3kC1joZFuVqfe5Z3SfWpXfA4d0aiHqp9Lxu1DxNJMSP5zOvW1MmM7FX8M0bUQg6hG6oGUn49L4jXqN1TrV5IciruJC+Ir7zwxvfrRp/mIhwcH20ceJOXyk4rvZj+yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=msCRA4Ghf9XeZucXKja81QolMIuH3RvSmqfNDJj0I3s=;
 b=O7VWwUxAQSBukpy76tKGleXOo46uNVXrTHgvxbbfW15o5PiODBmN7b5Hbu6wfgDbfID/ssuMxmzBVGR2K8HrWFdfjzp9ieCqGEEOodqKs9iYKCIW9QI+ZIWqP+iH/tAVhTIGgaZ5FI1AWN2uetfDIIdF3QbWUGQ0BBQHdXZiWtp3cYu+FoRZ8U2lBEr7+cgtzOPCTF91aelyV7E9QenDgCZaweqrMfi/JdQlC+IWuLNwpyZ15YX13+cN7w+LK7elYtk1ss5s6Ege09guntKfVMdm0OjqpO5xjhL61pEkO7svwYq7Tz81O9M5H6pH7Q+6HA8xHI//83zM3I1TJa+ZeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5626.namprd11.prod.outlook.com (2603:10b6:510:ee::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 05:51:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 05:51:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 8/8] drm/i915/dsc: use REG_BIT, REG_GENMASK, and friends
 for PPS0 and PPS1
Thread-Index: AQHZ4BwgWdk7/uhtMk+Zwjj8B0xY0LAO3cug
Date: Thu, 7 Sep 2023 05:51:13 +0000
Message-ID: <SN7PR11MB67509D3A9B8C3C04A9DBD064E3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <0dfebe37a391a5ceb8bfae8e16383f1e5aef815d.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <0dfebe37a391a5ceb8bfae8e16383f1e5aef815d.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5626:EE_
x-ms-office365-filtering-correlation-id: 91a80c24-a741-4250-fd2b-08dbaf66722d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Omc8S9nNPfYy/1hCSHGspNysRnsRvAYp1CrIi95d6/K/z6cZAUsI5rZglCRbotr/vCUjt81Nnn4ZhNHNjw4EV4YtiIOwyREV4JmR+lRm23ErovTbAv0d7+NmK+PsWBHKaJNzPcl/6PGIg+8fDNdxE7LjMQlCx0J8+WuUt47QBOS8aTkFRT8EnoD6uZ/M9vLk2yNqm7ybu0HUaXuKWmnR9HFxW4U0wDjUgAhgW9jz7RXA4TmQthlbBW1Ifc6vRoZ6PZGMJRd670mGLCDAPGx9pfD0tvjs5WZeuSQikgirScbuKJ4eW6GDQykdA/0SPuXEYe/NiRPI7cNXYiPQpAadCur5lOji75nfcCrrLCBwhI6MCjmMoQOHemDwNQUd04pg79/gsHVr439eeMxpnX8j1z+rRlBOiB1C0yO7KfLLlcFrN4vyl+LojBpMJOS3MoEmrZBomlQkRzBNHH4jVOlI2vRs3xw6CzaZ7aImosn52rSHhzGaePNac3/8hGoOHLhrx5BGfo4EsGaVbcPnDdo0HAalDoEzgHz59Sa5uDAcpXP5qQDKRy67isPjeTuClDjAUoSczYupV8nylUY37O+zmMxff1LhA5t3AfTAoWdFoOU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199024)(1800799009)(186009)(122000001)(33656002)(38070700005)(38100700002)(86362001)(82960400001)(55016003)(7696005)(6506007)(478600001)(2906002)(4326008)(110136005)(5660300002)(8676002)(41300700001)(8936002)(52536014)(9686003)(71200400001)(83380400001)(316002)(66476007)(76116006)(66446008)(66556008)(66946007)(64756008)(107886003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XzY9JCc4ENBiGzpWsvAGN4JPKc96y1gSEAydN7Y/9C0aMu/seDRsHDAMi6Rv?=
 =?us-ascii?Q?Z7aWobNMH7DgrddQj9iBw8xCUD3h/3ZprR8EZrU/x1CTxPd4VlOUCFuRjX9d?=
 =?us-ascii?Q?Aew3RxhVarnB7l3IljKhAnh74KMoDsMQIDklLvw8wkV59xejAUlRyfqD7xJy?=
 =?us-ascii?Q?PJe0OOyI/qDgcYrLXI5pclXL4CcPElAnGpdDbLUCKzlbl+KTC1Vqm8AGk0Hu?=
 =?us-ascii?Q?HEgYYOmx7iYYZrDKyRzzk9vxOKDKN6lf11qEdR9exWVGPsM3P+4ia0YpNKuI?=
 =?us-ascii?Q?A5giwuCIdeNqpWfjmayW5H+fKQtxW/3x+ftmdSQo40N79xC1r7NaWeYRY00L?=
 =?us-ascii?Q?wBCc3F9mWVmKNxkcgNtavX0wYGS0o8VihvpxunRPgT7H1IuuvKXcZHC6NAmV?=
 =?us-ascii?Q?+SQNQ9ZNvwUmxnZ7Zz2rSepi4LRNs/NzuIw7aTU1e48cViE2QjCzWfuQXONv?=
 =?us-ascii?Q?QIb8mfKYid2PUpEZoLrD3ZIuagnFfBPz9Nfnc5b0TNv/nMQMmxXgXmoFNAVa?=
 =?us-ascii?Q?DpL/AOL+aQh0HPP0wyGFbM4TqDmZQUeqgF6t5XOMXThR5Ad3pvoOCXwT+fl7?=
 =?us-ascii?Q?1OIxT2j3SKkq/y4X9quMLb5arY0qVdIJKCDql6drAAeO450GV6YOPoGnMrCr?=
 =?us-ascii?Q?Ccyeb8ojr8FqPiSGubsw41mhbwPopwn9ofmBYV5tx9z01N4FKBAN44TuGFfC?=
 =?us-ascii?Q?NoJgs5ucrk98lVkcqClFHmtVzQ44/viK1IGtgAoL9gzjHr201PwBqLIC6d3r?=
 =?us-ascii?Q?dtAU3UrOXonCFgR9WVIG/AneCEaW+k5LhCudhZsLKqDA+w0Sfas2BVYBM/TY?=
 =?us-ascii?Q?zK/O8WY4OAc0KyRfSpAMLEZ2CnmkezL5rrGi1uESnViJl/5JPOOJtFyN/eV6?=
 =?us-ascii?Q?YGPgLg95w+f9tihpVF1aJDfyUXbzefHQVIzFeFkN3lHFEn0RO7F+Q6Q/XK2Y?=
 =?us-ascii?Q?86hXD71CVhWmcujxrAkG5G2XUEWjSiSJ+bDIz45sQ2IKQfQqPGvIN5/Ojyzb?=
 =?us-ascii?Q?1/kdABlVVcrq+n7S9P5tDadsOfUQflZXyTLnMuXkfA9pKtlTspz2ZeuZHCA3?=
 =?us-ascii?Q?tGj+ZXTX8aqunoHHQdt+aaAVQp8yhNObXgrQogRuRJQYaAWqyVbd1Di3Akd0?=
 =?us-ascii?Q?6pJQfsGzwjFi5uPx8SdNcivEEtA6D25i1EKO16oXarZLX7j1tlqiFJ29SFge?=
 =?us-ascii?Q?sl18qTQklfVmstdvC9eZWACcISw7b9j3Yy022IUuw4wSsJ5xMqTiQ3s481pV?=
 =?us-ascii?Q?cO8E0uV8e7EtEEmRQB9F8MZSeNQMWQnIuzJmQKcxxQrr00pEEuYQ3QKIZpMP?=
 =?us-ascii?Q?7tIbJRhkYqBH3xvvDilXajAUYXUPVZ0wXQdUGfSqoQM1UCW2oHnIM7QqWO8U?=
 =?us-ascii?Q?NDv1F1iWLgM8UAmJTmUQ//1MYOBb5PweEu0F8/oBvj0+ssRbW36MbDf8mp2g?=
 =?us-ascii?Q?IDFlXjSyzGNd/SHS2gXO32w7UTy0KpSWw65ndKy8lV7Jutaf3YQVXJMD/+J7?=
 =?us-ascii?Q?ia5EpnIR7E1oE7FQgexe9KuYctbYlQBRERebZR4JJ+DLNC5I+5f8c6uIWZJe?=
 =?us-ascii?Q?IdGaMrYt91qzdvcAka5Qmvkn802QHSebhtPDTBAx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91a80c24-a741-4250-fd2b-08dbaf66722d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 05:51:14.0045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hb7c6EDv7P5nuWFZEIQ4ij3J/16YB+ZU3GvNitkpJ7NaaTry1TNtFdCW0zZOyvmIkw9s4aDux39gXWYsoFRKGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/dsc: use REG_BIT, REG_GENMASK,
 and friends for PPS0 and PPS1
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

> Subject: [PATCH 8/8] drm/i915/dsc: use REG_BIT, REG_GENMASK, and friends
> for PPS0 and PPS1
>=20
> Use the register helper macros for PPS0 and PPS1 register contents.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 15 +++++------
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    | 27 ++++++++++---------
>  2 files changed, 22 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 126aff804e33..5c00f7ccad7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -423,10 +423,10 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	int vdsc_instances_per_pipe =3D
> intel_dsc_get_vdsc_per_pipe(crtc_state);
>=20
>  	/* PPS 0 */
> -	pps_val =3D DSC_PPS0_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> -		DSC_PPS0_VER_MIN_SHIFT |
> -		vdsc_cfg->bits_per_component << DSC_PPS0_BPC_SHIFT |
> -		vdsc_cfg->line_buf_depth <<
> DSC_PPS0_LINE_BUF_DEPTH_SHIFT;
> +	pps_val =3D DSC_PPS0_VER_MAJOR(1) |
> +		DSC_PPS0_VER_MINOR(vdsc_cfg->dsc_version_minor) |
> +		DSC_PPS0_BPC(vdsc_cfg->bits_per_component) |
> +		DSC_PPS0_LINE_BUF_DEPTH(vdsc_cfg->line_buf_depth);
>  	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
>  		pps_val |=3D DSC_PPS0_ALT_ICH_SEL;
>  		if (vdsc_cfg->native_420)
> @@ -857,9 +857,8 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	/* PPS 0 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 0);
>=20
> -	vdsc_cfg->bits_per_component =3D (pps_temp & DSC_PPS0_BPC_MASK)
> >> DSC_PPS0_BPC_SHIFT;
> -	vdsc_cfg->line_buf_depth =3D
> -		(pps_temp & DSC_PPS0_LINE_BUF_DEPTH_MASK) >>
> DSC_PPS0_LINE_BUF_DEPTH_SHIFT;
> +	vdsc_cfg->bits_per_component =3D
> REG_FIELD_GET(DSC_PPS0_BPC_MASK, pps_temp);
> +	vdsc_cfg->line_buf_depth =3D
> REG_FIELD_GET(DSC_PPS0_LINE_BUF_DEPTH_MASK,
> +pps_temp);
>  	vdsc_cfg->block_pred_enable =3D pps_temp &
> DSC_PPS0_BLOCK_PREDICTION;
>  	vdsc_cfg->convert_rgb =3D pps_temp &
> DSC_PPS0_COLOR_SPACE_CONVERSION;
>  	vdsc_cfg->simple_422 =3D pps_temp & DSC_PPS0_422_ENABLE; @@ -
> 870,7 +869,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_st=
ate
> *crtc_state)
>  	/* PPS 1 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 1);
>=20
> -	vdsc_cfg->bits_per_pixel =3D pps_temp;
> +	vdsc_cfg->bits_per_pixel =3D REG_FIELD_GET(DSC_PPS1_BPP_MASK,
> pps_temp);
>=20
>  	if (vdsc_cfg->native_420)
>  		vdsc_cfg->bits_per_pixel >>=3D 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 92782de2b309..64f440fdc22b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -73,22 +73,25 @@
>  #define  ICL_DSC1_PPS(pipe, pps)
> 	_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>=20
>  /* PPS 0 */
> -#define   DSC_PPS0_NATIVE_422_ENABLE		BIT(23)
> -#define   DSC_PPS0_NATIVE_420_ENABLE		BIT(22)
> -#define   DSC_PPS0_ALT_ICH_SEL			(1 << 20)
> -#define   DSC_PPS0_VBR_ENABLE			(1 << 19)
> -#define   DSC_PPS0_422_ENABLE			(1 << 18)
> -#define   DSC_PPS0_COLOR_SPACE_CONVERSION	(1 << 17)
> -#define   DSC_PPS0_BLOCK_PREDICTION		(1 << 16)
> -#define   DSC_PPS0_LINE_BUF_DEPTH_SHIFT		12
> +#define   DSC_PPS0_NATIVE_422_ENABLE		REG_BIT(23)
> +#define   DSC_PPS0_NATIVE_420_ENABLE		REG_BIT(22)
> +#define   DSC_PPS0_ALT_ICH_SEL			REG_BIT(20)
> +#define   DSC_PPS0_VBR_ENABLE			REG_BIT(19)
> +#define   DSC_PPS0_422_ENABLE			REG_BIT(18)
> +#define   DSC_PPS0_COLOR_SPACE_CONVERSION	REG_BIT(17)
> +#define   DSC_PPS0_BLOCK_PREDICTION		REG_BIT(16)
>  #define   DSC_PPS0_LINE_BUF_DEPTH_MASK		REG_GENMASK(15,
> 12)
> -#define   DSC_PPS0_BPC_SHIFT			8
> +#define   DSC_PPS0_LINE_BUF_DEPTH(depth)
> 	REG_FIELD_PREP(DSC_PPS0_LINE_BUF_DEPTH_MASK, depth)
>  #define   DSC_PPS0_BPC_MASK			REG_GENMASK(11, 8)
> -#define   DSC_PPS0_VER_MIN_SHIFT		4
> -#define   DSC_PPS0_VER_MAJ			(0x1 << 0)
> +#define   DSC_PPS0_BPC(bpc)
> 	REG_FIELD_PREP(DSC_PPS0_BPC_MASK, bpc)
> +#define   DSC_PPS0_VER_MINOR_MASK		REG_GENMASK(7, 4)
> +#define   DSC_PPS0_VER_MINOR(minor)
> 	REG_FIELD_PREP(DSC_PPS0_VER_MINOR_MASK, minor)
> +#define   DSC_PPS0_VER_MAJOR_MASK		REG_GENMASK(3, 0)
> +#define   DSC_PPS0_VER_MAJOR(major)
> 	REG_FIELD_PREP(DSC_PPS0_VER_MAJOR_MASK, major)
>=20
>  /* PPS 1 */
> -#define   DSC_PPS1_BPP(bpp)			((bpp) << 0)
> +#define   DSC_PPS1_BPP_MASK			REG_GENMASK(9, 0)
> +#define   DSC_PPS1_BPP(bpp)
> 	REG_FIELD_PREP(DSC_PPS1_BPP_MASK, bpp)
>=20
>  /* PPS 2 */
>  #define   DSC_PPS2_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
> --
> 2.39.2

