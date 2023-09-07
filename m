Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6C4796FC7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 07:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67EE10E756;
	Thu,  7 Sep 2023 05:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2064210E756
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 05:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694063260; x=1725599260;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x+EbSWRi0YFgdLI1NbdFmcbw5NDzZ/mfcsTX91uoneg=;
 b=L68JorUwcjuSjKaWUz9BND3IGWQnLYvM1wmQ8SmFXI9wYRHHyAfk9VwJ
 zjCI58Ohj88aSXxBepWcbs145p8EWu4XOoeJJqXBGpW+RCkHNtTkEwSKv
 C3EjuqZEqGhsSiJvC+rOcgGELkLgnp81AqLtryWFBdAeVzft0rTZuwS8W
 sV0cNWyObj7/rWOwczbnbIl/9K4rkO6Dg5LCWPVFVAgf06ElF48G69ZIv
 WrIacdkw572YlHcdHfE42cDpvujRTtoIuXjBeFHE9FSx2FpydFWlH2YT6
 rZL4tgxv3O6VrZ97n8W8wHmOGhPQFOlR5kABvi6ecWl7BNvX+O565t9Mk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="379971602"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="379971602"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 22:07:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="1072706325"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="1072706325"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 22:07:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:07:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 22:07:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 22:07:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOE92UQRW4eSUmhZ+jIuDLSpUR4W3AOARDX2WFHgJrX8UPtz5KDO7SvVWkxsjsAIgrmC0quNNf8hdMyuYBlog0En831C/HtiL71iodfAnb76WYDt5DSHnsN85AUsTfaaGy9GQGXNHfCLc8Yb4waCSrk9n/yx4OzGGcKB1fqEBzu2O//Pbg3elNCJpN4hBmZQb1aPrwkTcFHqAEmU/ouaGAk53xGWl33/SPgmBLb1fi9yYw5a6KnIvVW/MT/8vzdANs1bzqAHeXsUGA/04EcbIeysqY1wAw2FDCYVCu9pGP7SvhuR+WQJqW5X0m8rhUSybJsLvhsMiH2XakiwvuNM8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RzlNecr9/txPh91q70QaNqEke0CrQBIJ1g1sON0luhw=;
 b=dgFEaDMYlrXtYFGqR1wrK6xbc2crfqnFGbqC/tJ4NtZ9iCqaiLMX22kOas1Q3PhTqU2CExhaEUTCbXm/ph+DT9IXqaSpnwzC2bSKYittH0R/Iyk7r6sKowMNycpZljeHH3vRazytc6+D2Xql+Q0xVFdgR4vfskHhWI4UuTy2cm20LiZsHo+0A8dBNppSie1ha5h3Ut3spexuM1AEyHApMh6tuHv87gZNk7ySv1qkpyC+cL0Z2rSx1n1wq0JjYkSDQ585yPsfKbMRsAD8naV+FCGVt6/3GjOM1mrpuQTyFJ+PpVVrVvocDW++z3K5/4p4OcGrhoDiphV2Fj9H+YrYnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Thu, 7 Sep
 2023 05:07:36 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 05:07:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/8] drm/i915/dsc: rename pps write to
 intel_dsc_pps_write()
Thread-Index: AQHZ4ByFnceN6g+a0ka76zX+VaGDxrAO0fyQ
Date: Thu, 7 Sep 2023 05:07:36 +0000
Message-ID: <SN7PR11MB6750C09F86A3035A980591E4E3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <e793056e610ee8cfe2a8d69605402cd2445a517a.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <e793056e610ee8cfe2a8d69605402cd2445a517a.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB5957:EE_
x-ms-office365-filtering-correlation-id: c4c4183a-b57d-4161-d7bc-08dbaf6059c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XudtNmI8rjXyqFJPmtcWf1Fy+XkXoUeg7xx6NK81s5yzS4rqXV6pyQJ5HUZmvrRxaVM64KCKv1D67D0KKb7YvdJz6STWf7dVxZx4B+aKL8Du1CSvjQObVeAAeg4KoCehAOXizHCJjCgvxPqgB5A3TlrGikCa7xfWQU9spFBrq4+eSmf8Fz/uzbfdVkNxwjPlCKfPWASzqfIOfnzFkXGSpcChHj1F1mZYj3NTp6+iGmIfDj/A3OKzQ/DRp8HplJtKSoUZp9nJKX9c+qg3DMKYnCsoshH98PuhhWefK8j0ZY3vtbM/YdBsoM/kjY2tBGlr61m2jS9PNMlLzUpzSpJDT0jAGrrN390Ng5TqjJqzxg8bEpshdKX3kXwtCmIuxua1mLppPDbSbqjUZViR1tlsnALfs5MkWjnQkez6AFmxpsvn2f8C6rY1GB0NB2MXPuvO1qO19vXDMgwhsLZQHKTJjVJ9FQad7aR/N8XKF88Wo6ounel5BRqHUTATNOPuJPqggBLeMMGEOVf2TV3y3LrS7uqkiTF+gQDf7tJ6C5IsH3yEvuH+Gka3FuPAg4mRMxyN9HNZdRNEuMlGyaRjLkjOFMGuuTTuwjOqK1qii5uYqFe9LF9LwXk48ISPhFe4C2l0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(376002)(366004)(346002)(186009)(451199024)(1800799009)(66556008)(76116006)(26005)(71200400001)(66446008)(64756008)(66476007)(9686003)(7696005)(66946007)(110136005)(41300700001)(316002)(55016003)(122000001)(107886003)(4326008)(8676002)(8936002)(5660300002)(52536014)(6506007)(83380400001)(478600001)(2906002)(86362001)(38070700005)(82960400001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7+P+I/SyGrUeZi0QKh8m00sdrG9fbmxCpkqSEmdaEVnIrPuccTV/0Cj0Hktr?=
 =?us-ascii?Q?+UpkfJbsO8A9QIxaLSecF5638iPrvIEvkRPYGT2LiI9lWtxLMvZ5WdTDZVQT?=
 =?us-ascii?Q?VkyAEeKlM+waglu+OUZ3HiIiIj2Df1NAeVcwfzDYv/SrsfAQO17vYuv5mh8J?=
 =?us-ascii?Q?89j44RliIG6RQ+5SEKiJTCY+KwOQvjslmilMHoK1Yi3bpDugbDuWYL8nQsoE?=
 =?us-ascii?Q?+CqqD6zpADJ7umHuGwVH/Gy1kcTmf58oAZDnNgwQdkKs4RuPKgU0YS96t5JU?=
 =?us-ascii?Q?0YYgkmVC315RhjoMfBsu27+b3iGKXwbH+fn1v2yJvih5CoLrkH7+6lxTSfwr?=
 =?us-ascii?Q?kFparLFj7lSfF7PLMN4iHlUmJPZZUUTlGQVjjge5FopAWbKiFidAnBnZNdmu?=
 =?us-ascii?Q?rg8ZISXTOWnVtJc+fiVYBc6i0u0YV3312mxHbNn2z7IdCd2Z/c3r6kKS86Rk?=
 =?us-ascii?Q?kE/q6mQI7Hw+msz/b8qXq/Usjah7BTAbRogAwH2/1aBrdrxu9JzaB4+T6YCG?=
 =?us-ascii?Q?brUxIIH3y8o2KzN4V15R+JLpzUpZd6nKqS8N98YqGzWlUrERf6mt6uas2fGc?=
 =?us-ascii?Q?hef2kDx4S5qcFhU76q4q1qHbe27iHH3WIbgWrsrXqQn61unuJs4mORA+1vE1?=
 =?us-ascii?Q?y5UD6hMO46zQRkDiSM8Y5QXEfIlAR3x5OvMbOX2UcILt0JvwyYkWyWNtvpG0?=
 =?us-ascii?Q?3Z8xPsNQnM2cnTrunzbH4s62O8JALav3A5tBgxO9dYzIjFhHRGcXBdYwf6k5?=
 =?us-ascii?Q?JEm9f633gYcVbABuAytVb0dpoaFPkYr79aAco0uVInU90fxwX+9YvZcFabDo?=
 =?us-ascii?Q?UYQlf3aada4T+A8BiECyECkuqqSoP2ns3k4TJBSuh+aqahyrIXK6iIBFzyZv?=
 =?us-ascii?Q?qij4B2dezUQK+0Ax6PNe6na8xcHOwFOtWJ5997A0GjEwLx0FDH/+cRIKct4I?=
 =?us-ascii?Q?ASUXpfFNaglTR5BdH5prpyccGM5aGmHdgNDm0KLG7jMaR3DEU223znNH5JSI?=
 =?us-ascii?Q?oWhiJ6v7sTWHSbjIPC3DT++b6hTHhLDOKXuE80/uYj9cz6DXT8tT9A6XH2y4?=
 =?us-ascii?Q?z+gEpH2pL425y+ai8dbNVZjKvS3fgFnyxdPo1PfUGZYzZ3RD+OlOHsHw11q2?=
 =?us-ascii?Q?OKxjcwnFRFgT9qwq+NYS649U9lIrX6ipc2j48gfs1Fh2gboJDynuxlCzJ7JB?=
 =?us-ascii?Q?VIgNpx1010p7Kl3hssxDtqvUc1DTh1ZV36MPES9cPLafIITR6A9YSXaoaBXG?=
 =?us-ascii?Q?g4nmCQHw3oBhsAiaCuM1pztdXQhiIqFsEgdnnWVSsmKA3vzzNVXsHI5x9cxD?=
 =?us-ascii?Q?g5p5cbJ2DLwzdyOej4BJC/6spZFoiPs+78t5aYB87RtKqnHTsXIb604EgXfP?=
 =?us-ascii?Q?rvOuYjusPWhAQ6aljPLjuGcINln+z4OmqqGpXL/mf3ySvjZ6NlBFSqhKqsXc?=
 =?us-ascii?Q?4r7EnfsDHedrgf8n5e4en5bVpwQHuGrAHfuIDRBsfyz3EvigmVUvDjHf3/Zp?=
 =?us-ascii?Q?SF8xfSEHu/OfNQWoYmLpcUT3ZEv0Jo8mlLnr9eUwOZwas5fHsl9JCjvoNTL1?=
 =?us-ascii?Q?Yya+s99U6gbGl6PjbgjfKxCNI2OgS5x+QiOmtlZD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c4183a-b57d-4161-d7bc-08dbaf6059c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 05:07:36.0359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0sk1VhgsRLR1AXqHuLFwRteK1ExbFgPvLoP8QHnBy6/6Vge7ifMaPPctRHamdWuJURllnUs57yr5E/1GpxRtew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/dsc: rename pps write to
 intel_dsc_pps_write()
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

> Subject: [PATCH 4/8] drm/i915/dsc: rename pps write to intel_dsc_pps_writ=
e()
>=20
> Make the function name conform to existing style better.
>=20

LGTM.=20

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b0be6615a865..4086dbb25ca5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -389,8 +389,8 @@ static void intel_dsc_get_pps_reg(const struct
> intel_crtc_state *crtc_state, int
>  		dsc_reg[0] =3D pipe_dsc ? ICL_DSC0_PPS(pipe, pps) :
> DSCA_PPS(pps);  }
>=20
> -static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_=
state,
> -				    int pps, u32 pps_val)
> +static void intel_dsc_pps_write(const struct intel_crtc_state *crtc_stat=
e,
> +				int pps, u32 pps_val)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev); @@ -443,41
> +443,41 @@ static void intel_dsc_pps_configure(const struct intel_crtc_st=
ate
> *crtc_state)
>  	if (vdsc_cfg->vbr_enable)
>  		pps_val |=3D DSC_VBR_ENABLE;
>  	drm_dbg_kms(&dev_priv->drm, "PPS0 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 0, pps_val);
> +	intel_dsc_pps_write(crtc_state, 0, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_1 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
>  	drm_dbg_kms(&dev_priv->drm, "PPS1 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 1, pps_val);
> +	intel_dsc_pps_write(crtc_state, 1, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_2 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>  	drm_dbg_kms(&dev_priv->drm, "PPS2 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 2, pps_val);
> +	intel_dsc_pps_write(crtc_state, 2, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_3 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	drm_dbg_kms(&dev_priv->drm, "PPS3 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 3, pps_val);
> +	intel_dsc_pps_write(crtc_state, 3, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_4 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	drm_dbg_kms(&dev_priv->drm, "PPS4 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 4, pps_val);
> +	intel_dsc_pps_write(crtc_state, 4, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_5 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>  	drm_dbg_kms(&dev_priv->drm, "PPS5 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 5, pps_val);
> +	intel_dsc_pps_write(crtc_state, 5, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_6 registers */
>  	pps_val =3D 0;
> @@ -486,28 +486,28 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>  		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>  	drm_dbg_kms(&dev_priv->drm, "PPS6 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 6, pps_val);
> +	intel_dsc_pps_write(crtc_state, 6, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_7 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS7 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 7, pps_val);
> +	intel_dsc_pps_write(crtc_state, 7, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_8 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS8 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 8, pps_val);
> +	intel_dsc_pps_write(crtc_state, 8, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_9 registers */
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS9 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 9, pps_val);
> +	intel_dsc_pps_write(crtc_state, 9, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_10 registers */
>  	pps_val =3D 0;
> @@ -516,7 +516,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST)
> |
>=20
> 	DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS10 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 10, pps_val);
> +	intel_dsc_pps_write(crtc_state, 10, pps_val);
>=20
>  	/* Populate Picture parameter set 16 */
>  	pps_val =3D 0;
> @@ -526,21 +526,21 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>  					vdsc_cfg->slice_height);
>  	drm_dbg_kms(&dev_priv->drm, "PPS16 =3D 0x%08x\n", pps_val);
> -	intel_dsc_write_pps_reg(crtc_state, 16, pps_val);
> +	intel_dsc_pps_write(crtc_state, 16, pps_val);
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
>  		/* Populate PICTURE_PARAMETER_SET_17 registers */
>  		pps_val =3D 0;
>  		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
>  		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n", pps_val);
> -		intel_dsc_write_pps_reg(crtc_state, 17, pps_val);
> +		intel_dsc_pps_write(crtc_state, 17, pps_val);
>=20
>  		/* Populate PICTURE_PARAMETER_SET_18 registers */
>  		pps_val =3D 0;
>  		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
>  			   DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
>  		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n", pps_val);
> -		intel_dsc_write_pps_reg(crtc_state, 18, pps_val);
> +		intel_dsc_pps_write(crtc_state, 18, pps_val);
>  	}
>=20
>  	/* Populate the RC_BUF_THRESH registers */
> --
> 2.39.2

