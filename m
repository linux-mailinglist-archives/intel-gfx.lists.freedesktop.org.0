Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BCA787515
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2622D10E598;
	Thu, 24 Aug 2023 16:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36EDB10E598
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692893921; x=1724429921;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aQuIiwxAU1J5Ua6sMw7MBjs55ZLcKfqn86IHYsasq9Y=;
 b=kMPN+29gsyP//JcPBK1C0j9FcFoFHxhxYBR3i6ETCrrj7ifh0QUZWz6R
 bh92UOi9wbRPNTmdK3bMdurzK5fNGD7B6P/1RefEBswsJQs38jwY8xn7s
 8uWFKzP+SyJ+Fdq7kyH9Deay9QvVA/4MN2hVTTMgvTMXo6er1CSRDQdZY
 ph4kgv3fWjBy7MHqw0xKFpGAPkhREz2f/QH9gWZZAy3lLf/8YpoJx1xJL
 6QAD80yC0ZUWV7vBNYXBRpADGDOW7qZ93mDNt5XOcYLyG/GL3DKckCdNQ
 YX/yIPygK4rUHTktxKnfPh24NypZQVFYDOJh6LqxktXNQriJBoLXqXLin w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364680537"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364680537"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="686971363"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="686971363"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 24 Aug 2023 09:18:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:18:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:18:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:18:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:18:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUDGngy9BoYQUMPGl0pp2ghJZs7t5IGxrjV09x4QKnES/fZicHx2DIsm5ZV67QsDSDofB5dMSLD5OeVg1zaIFK2DVwNfCKpjUCeP+Y3MCY8TQQV+FHWie3A86+QPN17enuX6J495k8AoEywjb2+p9FcqP/SPcXpci95H+/ObUa/QzaVhmbh6ybklVmCH1miFas5XDAxdBZHUIx+QRHLoG+7lRXpApdR/+OA6gx5AiCq3I7fzUAvleIdGfBzNDyUsm5FIAaC1JCSlhhomVCc5LufMNkJpQQ/5SaTvNGSygk1WXEVUPvmW2TCvYlw3NpsGqvnnddKmgfPkUpcziYtsyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6Mq3thHSyuRc/AMLaiB98FJSfXd4C5LoG4atKSqpc4=;
 b=CdmZXcUhrA4jkx3XS5AkuZSGjD8L4w5Sn36u/WUT8p2uhXa9sq6DHsi7V8H604iU+K0EfzHKxA32bmH5aBj88QIi//yy4CdEfbf9jjAXjNct8ew/Tk+H0qacGOhLVINYmK+iLKbfeIzPQwhs5KA2LVwLM2ux6zkNvp7EbZ0T1Rn04/Zj9KfBX/mZs8OcVJdxzxPmoxnALdYjcJF3O9k4qzATrf/CgzUH/SGs2qdnQ2FrdeGs2z1xHZNVFEsFBAT/EyspHUN4qCZwNfWDMtHYL/rm2TjBaSHhtJxNQJdJp5lzNDez4fkAn4rhvfDLaf+yICSk61r4qu8aGfnrYCi4tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO6PR11MB5667.namprd11.prod.outlook.com (2603:10b6:5:35b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:18:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:18:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed bpp
 in U6.4 format
Thread-Index: AQHZ1PIk5SCBJyWLJkuj6sWEXkwhZ6/5Io3w
Date: Thu, 24 Aug 2023 16:18:13 +0000
Message-ID: <SN7PR11MB6750FBA29BCBB2248C0D86D0E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230822121033.597447-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO6PR11MB5667:EE_
x-ms-office365-filtering-correlation-id: f9d63dae-3205-48fe-da6a-08dba4bdb741
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gTQx0SbE6VWDjuuA9vHIwo9mFZoStZFDq6hRQBq+0yBwywmPkTvVUHFNmjlC1R30jOnWqt+NT+m0GDZosqKzb93og2DxeVv8+OtXEhvWbbhu8O8St4QX+yQm/hJceBoStNiAlu9N8ku4wnl6TUNmMxNcbq5hzA0TXW7GHHDgqfxo7mBaU7uNF7dVUbSHISmKOFLw5iU7QIcCv7Tuq1yxBJ7juG3QjlngBgcl+qSYQZWWBDmws+ayOjKEJ3ijALAR8xk+ZPLvq1KuBxIiWEi2PCR6PJdhR48p75OU99wTgUOV4bR1RATdW5qbTSih4pPwBXq0yjgwMd4Cku9Ml3ROdY1myzkRDeErpf1fLJLY7IO7RfMGU66z2DoL6NyItswO729CODQl1xM8AP55LXvr4Hr8pWTnvtcS5GR8+/eaCXrcTDDK+iIoV51MSloPVZzTT1HzNXelzAfctXTv1iSAwnrWf0Ee2DGMfKmXxfQfT/zEGPE7o+r8mSN8uSRC+zDdpIcQk9m4yoHQkhKPIP3TGLHmSHYbfyDmYPlpdLBSGgedOk5klttJAMPrarHIZNYcnLbqy1EzND8cdwEjoKNeUKXZR12arVTvmUhW3WxXPY3WtOoWF6UjWiFBunNwrJ4w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(136003)(396003)(346002)(186009)(1800799009)(451199024)(66446008)(66476007)(64756008)(66946007)(76116006)(66556008)(316002)(82960400001)(122000001)(478600001)(110136005)(26005)(55016003)(38070700005)(38100700002)(33656002)(71200400001)(41300700001)(6506007)(7696005)(86362001)(2906002)(9686003)(4326008)(8676002)(8936002)(83380400001)(52536014)(107886003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GCvaTFwr2gceZSiVUf1aJBk46abTPzB3K1eM9ebUiYJMX81feo4EPZOFUB7d?=
 =?us-ascii?Q?w0oueQkdsuNkuS1jaLTjOXahqSk+wqa/3C7CkPlbiS9VneyQSTTujePO9xns?=
 =?us-ascii?Q?9gUIEx+wqYgBcMegdDCl/kidTRO/2hFTqizantag6YaIQidodxUjG1ZkEagk?=
 =?us-ascii?Q?1f2saG9KmUYtH1g2F6wN3XR0CHEAIpw9Sax/ChXFDmXUOrRrGYuxW2tQrL1d?=
 =?us-ascii?Q?6sf99jKSbXW/PggUu4mXWdtfqaQx8piCcgWbjpTX0OmBW0ukDAewDAHZ5PFx?=
 =?us-ascii?Q?ORj9xgITL4dA17GhZ/BBtvth5G32y+JClWQMU2Ty3pY6CfmlnJ3Rl1znrZq5?=
 =?us-ascii?Q?VT5QL43HIidjpI8YXvmjg4/ax6/yqVoLSOBrCnGwHC8duhpI1iLmm0ynJtqj?=
 =?us-ascii?Q?hCmpfR20FYYU3FtSPjANFjHKA/phOZL3UEjQPFHWreaVe+Mu62XtER9HdafN?=
 =?us-ascii?Q?KfE8xOX+no4w+KryamdmWoSsCLNXgQ7BVZo2KeocvQdpeHF/tyUiW34C61Kw?=
 =?us-ascii?Q?k/JFeRiHq7ZA002KObyiujT35n+QC61QQZA4q0zuAn2u4CAS/QlFEGi6UPeK?=
 =?us-ascii?Q?x0QYk0/dimgYOq/rXlpqIm5oXnIonYcs4QISRFVGvwBPsSSOXw6xg8oNCIcC?=
 =?us-ascii?Q?Oo9GtCHIqz/fxVMco/lpvB6SMfEYrLZ1naoIhB4o0o4Lk8QCw3MQZUrAhkyr?=
 =?us-ascii?Q?MHJpGwCOsdIRTDBjCpseTUrQ9EDOWNnZ8ioTxydVMoqGPItUD4tndwKZwULL?=
 =?us-ascii?Q?b0IFbF2C3wxtX2cASr1cZNHqKzvgf1ivi69qAaxkhrYrYaq/R/gTXAC8hNI+?=
 =?us-ascii?Q?rUze13SnHyb1KSlxsyAAYz991jVWH2dUjthAnbkRPdE3yxt1DryT8XViXxn1?=
 =?us-ascii?Q?VRQAVVMjEttgJYU9XXWw4DqF0ibp3znBNNcGXBEdRZRztex1JIfFegQHmVPl?=
 =?us-ascii?Q?GxnPICrcFsP1r1p4IBECt1chMDDXSTQ1fYy4KB4YZ4rJog03N6grY3OexK2o?=
 =?us-ascii?Q?IeeC7A5sG5ZbBjgN0KGkskOTNF/QY6/ouHXyNeIae2sDASQdOFH7v3ve7M3I?=
 =?us-ascii?Q?pRvNxYO8ED5AgaGw5gI1TpioT59N7Gm73KwQfcbYOFkJKjlheT26kVAJelYN?=
 =?us-ascii?Q?19jQ3ghBU3AuCAxCvqza9HwQYWzAgfQV6rzdAmKyhPjjj1fV1rfnVHfN4Z59?=
 =?us-ascii?Q?nPG3g1Mrmf/n76D0tYOCHIUtsDbl6QoxxZ7TAc4hewar6HAdJAPROERr7VcT?=
 =?us-ascii?Q?xCSXN7zWCUtQZyxkynfk3kJX5Qth5uvpezUAbj5bwqAa8o0B4rRpTpgA/dQN?=
 =?us-ascii?Q?EFrohGlTsX3c5fQ6oDCuk+wI657IRgg2pY+jZ+wKYDw1sn3RHKwVOjFgPHWX?=
 =?us-ascii?Q?+KMz28G2/tjrzIREwaWTjHppzR5NwvD1FdaI1MIFTbLT02LybbYTqVpdVu2i?=
 =?us-ascii?Q?g/rJSemm7wrhUF9458BpyTl+T8dq3HfHESBZIevHzu94PTYcPn2TkIz7KY7e?=
 =?us-ascii?Q?Lai+1DSeo08dQJEnF8QcbtlqYtWj/cWx0Bxh1OVLvMHm+D2E/dMvlw7DuMo3?=
 =?us-ascii?Q?M7oGPFzd0u0ZyR02GEXRuoZ9tGBMYAX4aGYFMVcS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9d63dae-3205-48fe-da6a-08dba4bdb741
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:18:13.3152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: etq8BIRGE8jiJEv2UfPmYccoQ3VjKXz5/bZE2ND4e9Eqs1EieAFN1096GC9zCcdcZ7qGKq8iliC/729Cxe/Ysg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed bpp
 in U6.4 format
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
Cc: "manasi.d.navare@intel.com" <manasi.d.navare@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Subject: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed bpp i=
n
> U6.4 format
>=20
> DSC parameter bits_per_pixel is stored in U6.4 format.
> The 4 bits represent the fractional part of the bpp.
> Currently we use compressed_bpp member of dsc structure to store only the
> integral part of the bits_per_pixel.
> To store the full bits_per_pixel along with the fractional part, compress=
ed_bpp
> is changed to store bpp in U6.4 formats. Intergral part is retrieved by s=
imply
> right shifting the member compressed_bpp by 4.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++-----
>  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |  2 +-
>  .../drm/i915/display/intel_display_types.h    | 16 +++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 ++--
>  6 files changed, 36 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..81b8e97e9435 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -330,7 +330,7 @@ static int afe_clk(struct intel_encoder *encoder,
>  	int bpp;
>=20
>  	if (crtc_state->dsc.compression_enable)
> -		bpp =3D crtc_state->dsc.compressed_bpp;
> +		bpp =3D dsc_integral_compressed_bpp(crtc_state-
> >dsc.compressed_bpp);
>  	else
>  		bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>=20
> @@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct
> intel_encoder *encoder,
>  	 * compressed and non-compressed bpp.
>  	 */
>  	if (crtc_state->dsc.compression_enable) {
> -		mul =3D crtc_state->dsc.compressed_bpp;
> +		mul =3D dsc_integral_compressed_bpp(crtc_state-
> >dsc.compressed_bpp);
>  		div =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  	}
>=20
> @@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct
> intel_encoder *encoder,
>  		int bpp, line_time_us, byte_clk_period_ns;
>=20
>  		if (crtc_state->dsc.compression_enable)
> -			bpp =3D crtc_state->dsc.compressed_bpp;
> +			bpp =3D dsc_integral_compressed_bpp(crtc_state-
> >dsc.compressed_bpp);
>  		else
>  			bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
>=20
> @@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct
> intel_encoder *encoder,
>  	struct drm_display_mode *adjusted_mode =3D
>  					&pipe_config->hw.adjusted_mode;
>=20
> -	if (pipe_config->dsc.compressed_bpp) {
> -		int div =3D pipe_config->dsc.compressed_bpp;
> +	if (dsc_integral_compressed_bpp(pipe_config-
> >dsc.compressed_bpp)) {

Doesn't make sense to have this function to be called here this just
checks if we have compressed_bpp available or not extracting the
integral part should not be necessary

> +		int div =3D
> +dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
>  		int mul =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
>=20
>  		adjusted_mode->crtc_htotal =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 3d9c9b4f27f8..93969b63cdd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  	h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
> -	vdsc_bpp =3D crtc_state->dsc.compressed_bpp;
> +	vdsc_bpp =3D
> +dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
>  	cdclk =3D i915->display.cdclk.hw.cdclk;
>  	/* fec=3D 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff =3D 972261;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index 858c959f7bab..fe1e376c4ba7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3385,7 +3385,7 @@ static void fill_dsc(struct intel_crtc_state
> *crtc_state,
>  	crtc_state->pipe_bpp =3D bpc * 3;
>=20
>  	crtc_state->dsc.compressed_bpp =3D min(crtc_state->pipe_bpp,
> -					     VBT_DSC_MAX_BPP(dsc-
> >max_bpp));
> +					     VBT_DSC_MAX_BPP(dsc-
> >max_bpp)) << 4;
>=20
>  	/*
>  	 * FIXME: This is ugly, and slice count should take DSC engine diff --g=
it
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 731f2ec04d5c..f749dc4e70df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1353,7 +1353,7 @@ struct intel_crtc_state {
>  	struct {
>  		bool compression_enable;
>  		bool dsc_split;
> -		u16 compressed_bpp;
> +		u16 compressed_bpp; /* U6.4 format (first 4 bits for
> fractional part)
> +*/
>  		u8 slice_count;
>  		struct drm_dsc_config config;
>  	} dsc;
> @@ -2108,4 +2108,18 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
>=20
> +/* Returns integral part of the compressed bpp given in U6.4 format */
> +static inline int
> +dsc_integral_compressed_bpp(u16 compressed_bpp) {
> +	return compressed_bpp >> 4;
> +}

Maybe we can have two macro/functions that can be used to shift the fractio=
nal part for bpp
dsc_bpp_x_to_x16 and dsc_bpp_x16_to_x this can be used at a lot of places t=
o avoid confusions everywhere
when and why we are shifting  by 4.
We can keep the dsc_fractional_compressed_bpp.

> +
> +/* Returns fractional part of the compressed bpp given in U6.4 format
> +*/ static inline int
> +dsc_fractional_compressed_bpp(u16 compressed_bpp) {
> +	return ((compressed_bpp & 0xF) * 10000 / 16); }
> +

Maybe dsc_get_fractional_bpp () ?

>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5b48bfe09d0e..32d0bee11f53 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  					      compressed_bpp,
>  					      timeslots);
>  		if (ret =3D=3D 0) {
> -			pipe_config->dsc.compressed_bpp =3D
> compressed_bpp;
> +			pipe_config->dsc.compressed_bpp =3D
> compressed_bpp << 4;
>  			return 0;
>  		}
>  	}
> @@ -2171,17 +2171,19 @@ int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
>  	if (ret < 0) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Cannot compute valid DSC parameters for Input
> Bpp =3D %d "
> -			    "Compressed BPP =3D %d\n",
> +			    "Compressed BPP =3D %d.%d\n",
>  			    pipe_config->pipe_bpp,
> -			    pipe_config->dsc.compressed_bpp);
> +			    dsc_integral_compressed_bpp(pipe_config-
> >dsc.compressed_bpp),
> +			    dsc_fractional_compressed_bpp(pipe_config-
> >dsc.compressed_bpp));
>  		return ret;
>  	}
>=20
>  	pipe_config->dsc.compression_enable =3D true;
>  	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp =3D
> %d "
> -		    "Compressed Bpp =3D %d Slice Count =3D %d\n",
> +		    "Compressed Bpp =3D %d.%d Slice Count =3D %d\n",
>  		    pipe_config->pipe_bpp,
> -		    pipe_config->dsc.compressed_bpp,
> +		    dsc_integral_compressed_bpp(pipe_config-
> >dsc.compressed_bpp),
> +		    dsc_fractional_compressed_bpp(pipe_config-
> >dsc.compressed_bpp),
>  		    pipe_config->dsc.slice_count);
>=20
>  	return 0;
> @@ -2260,15 +2262,16 @@ intel_dp_compute_link_config(struct
> intel_encoder *encoder,
>=20
>  	if (pipe_config->dsc.compression_enable) {
>  		drm_dbg_kms(&i915->drm,
> -			    "DP lane count %d clock %d Input bpp %d
> Compressed bpp %d\n",
> +			    "DP lane count %d clock %d Input bpp %d
> Compressed bpp %d.%d\n",
>  			    pipe_config->lane_count, pipe_config->port_clock,
>  			    pipe_config->pipe_bpp,
> -			    pipe_config->dsc.compressed_bpp);
> +			    dsc_integral_compressed_bpp(pipe_config-
> >dsc.compressed_bpp),
> +			    dsc_fractional_compressed_bpp(pipe_config-
> >dsc.compressed_bpp));
>=20
>  		drm_dbg_kms(&i915->drm,
>  			    "DP link rate required %i available %i\n",
>  			    intel_dp_link_required(adjusted_mode->crtc_clock,
> -						   pipe_config-
> >dsc.compressed_bpp),
> +
> dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)),
>  			    intel_dp_max_data_rate(pipe_config->port_clock,
>  						   pipe_config->lane_count));
>  	} else {
> @@ -2700,7 +2703,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>=20
>  	if (pipe_config->dsc.compression_enable)
> -		link_bpp =3D pipe_config->dsc.compressed_bpp;
> +		link_bpp =3D
> +dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
>  	else
>  		link_bpp =3D intel_dp_output_bpp(pipe_config-
> >output_format,
>  					       pipe_config->pipe_bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index e4c395b4dc46..2dc6ea82c024 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> -	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> +	u16 compressed_bpp =3D
> +dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
>  	int err;
>  	int ret;
>=20
> @@ -1040,7 +1040,7 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
>  	if (pps0 & DSC_NATIVE_420_ENABLE)
>  		vdsc_cfg->bits_per_pixel >>=3D 1;
>=20
> -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> +	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel;
>  out:
>  	intel_display_power_put(dev_priv, power_domain, wakeref);  }
> --
> 2.40.1

