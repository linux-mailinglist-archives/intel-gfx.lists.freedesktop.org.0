Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DE2796FB3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 06:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C9410E756;
	Thu,  7 Sep 2023 04:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061B710E756
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 04:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694062066; x=1725598066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fB/9tl4Ux4HyTqHAdpOLelXRZNCGThVh24imvbP+4CI=;
 b=BlatQ/phTVLTk/EV7QT4Q4zleBxksTUSNRKrYANgOJzd4ZbEyNPftD6i
 +tTeXsjQ+I+kVRUfxQBmxpbSoX69sVBMhoSrHOdxRwKRQOLoVOYOHkt6J
 54CVNKEmZ61I4JkPqujr93IryC2Lwn4wh6D0ckUgxfrRzjbdtaEhHPyP2
 eX0q5qp7CE6QFXZioyxxN2MszDP0+7c+Igwqkfuv3u6bzdWrHYp+dDnCW
 biEtH6rlSsRv/GnH4fn+zG5JMTahEx/eQc7R5dElRXf5HjtXkn1ZYQG55
 vWNtisXZXV9ylD+dGsIwq3f73lvObZipQrn+ZbgLL9BXmg7hw28bc/NVy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="374649614"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="374649614"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 21:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="1072700636"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="1072700636"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 21:47:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 21:47:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 21:47:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 21:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/x4kZ+MuN7g/ORaxUxKRYi4ZE52ov2FirQc3vp66786PPjZaX7WLniN61CxX9lUaxv3eitj15FwzeUxnyx1PDtbjAqf++oYkloJOK29Muen40OenFNy81YpcHwWmaazaO+6A1UG87R/Qg6tzOiTeKd42LtTyvRzfX4leZvbWipVVGFlFwlufdTsa25E4syMIc1Sx5TWKMaC/Nz3nWuYMELTKGYML515a39EL5V/vCtb1xdVIP+IhTkGWDnDUk88evj/KTjOWNo9C2Wp5Aq0tErV1ii9s/9i5sjj3xOgCY1+lZsjcq9FcQjNqVWs/+5hJ31k5zwEadknJuJ4PeWxhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rsPOQvOpvbaNl8b8k6VD2iWQTqUblChUiZOusUE94Qw=;
 b=KPfsW7B0/RfLZTmrR4H+e3l/BdBH0CSdv2Q19q5pl5v1H81OFvagOVTxP3SPea18uekbkPdnL3NHtVg3YqCSFgxQzMj54QXp7Jq/YeToxwODeLeGxqCSNM4eJymJxxls7PcTRbJTWFT7AHCu+wnw+nS1f9zha0RLdtkOarjsbVDdYVWI1nasxhaRXtG/hFZJgBonr6EUd2ip/xKWE7bUPyURJG4OqZX3pmEf1d/xTA8VSw+/yn7N8qR4rdbSF0k2JsrlbIHppsTsmq89g6KdNvWrJZFvE9ZWSMqvbp4wHWA3uT3kTp7n+SSxsu2YxWeqN18xw+Ao1rtYQQ45bkH5Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 04:46:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 04:46:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/8] drm/i915/dsc: improve clarify of the pps reg
 read/write helpers
Thread-Index: AQHZ4BwjAqlD3YAUD0K+jMKmR4KIeLAOy86Q
Date: Thu, 7 Sep 2023 04:46:49 +0000
Message-ID: <SN7PR11MB6750AC31322962CAF2C836ACE3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <e2551b52ac0dd2b4ffe18d5e7733fafdc191d68a.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <e2551b52ac0dd2b4ffe18d5e7733fafdc191d68a.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL3PR11MB6411:EE_
x-ms-office365-filtering-correlation-id: 210ffdf8-34ce-4190-cca0-08dbaf5d72c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0M2+s+YLL18QCkzpSSMBquo1ApL6/UZt09Do7oAwOOfqOAe2u3RFVLS7RQ04U9RYA63QSkrB2gJsw+e8QEOoosQhq/PAZNYnREsHysUsJZklLVorymu6xNt6nYr/LZY1rIztU8n9R3m+hXUrBuzXVPZmVIvVpKCOEgOt66mcBLXdCmMdAqNPAhBGJH2iXBL80pBXqQwwED3ghbLoMjq9j+aEeMqIEx7lbKTOlM8YcgprvnjcYrtq1I2lZLp16x1u2GeeSLVV8G6peGpZvCHS0a681p7gu++jsFEqKJdZ+FV+lR/ONFgl+qwUw3gEJE2TRkd93J/5udXKTBjmS3nDwu4M3NZffnrwoFe3EofdV55cm/jG1bL+GH+lhezv4L1Qkhf1GfVuRAtefbat1JEZ31Sr/VSQxmyDuYC/I2jhNrAT4EckjKzwglE0AsUHPijnt9evOqQfWzZPvzZvOG0k0TKIvaFGK9auyqMN/Oa2FFTEnB23jCk5J1YYyP5pY02pMs3qPnO2fl0QtQthA8Rzvx65E3VTYmdGw/49apvXwKdqZIxqxjrP+lkpqjoKJWH0QsBzgHly4j0p6Wb6SeupzsqOF68Fu3ipuxUx5FWlWb6N+H4EkN8wY+W+HFoPAJxW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(186009)(1800799009)(451199024)(7696005)(71200400001)(6506007)(9686003)(83380400001)(2906002)(478600001)(26005)(66446008)(66476007)(107886003)(110136005)(316002)(64756008)(66556008)(41300700001)(5660300002)(8936002)(4326008)(66946007)(8676002)(76116006)(122000001)(82960400001)(55016003)(38100700002)(33656002)(86362001)(38070700005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fbMlR6RlpbYc1OlyOByWi4oRnk6OqKC74y5grdojejYshWft29G1gMUPiVqz?=
 =?us-ascii?Q?Uy3qJaJPDvTbnaU0ZeTZCcTmkZxeoNvnOBbymK79lQRgKqpsIkgd+ZhKJKww?=
 =?us-ascii?Q?y73NoCK1Jk7tCWhZUX42Q2lz+hQ+eMQbYksRI3JVu5pSAokvDOms7sXYK1xn?=
 =?us-ascii?Q?HTHYuydgwSl+49AX1Ehc22ZHxBRk3eXHjprbYg2Y2IAUjIkPEPjqdzJKKZTV?=
 =?us-ascii?Q?6b04yc48MtIuhNj+iRlolGg2e2D7bEtYdwfvRBI6Opz4gEUu04ujWYpZw19u?=
 =?us-ascii?Q?wyG/HOe4+rlMfKXY7kvO7ctWyFVrn7ZgZgfZOL2uT0lFC5NUJqVK5nsOpQv9?=
 =?us-ascii?Q?UadEU1vsQ2mEvhgQlj4xlwWcgGXj2LmPfgwuULdNvnG7u0OBHCBfwtZ+d/kP?=
 =?us-ascii?Q?kgkZKo5PyH42Px7etW1KNvGW7EH2ita2mYJIJSz293AzcFwkte+ipDnOth5W?=
 =?us-ascii?Q?O7lRzmPYSJwaSnIhL1u8Y/3hWHDf5x0LZ+O0TgyS/zzU5NE9DPEd/WG2jCrk?=
 =?us-ascii?Q?nvBqNfOFdZq9u513qvDt93MlDxsjxkYxz/iNono5zsB2soz6ClgJxTM4MvHY?=
 =?us-ascii?Q?A+tE/NlOOoWMlpNBLutBx59hhVQ8xqWapY12eNbGLapc1sIx/v0nHc6retST?=
 =?us-ascii?Q?aWK0vgRcwl5AJ9iunkyuIYN2/P8S9lmfTt8RQiSHReQLet15P1e5rUT1pVar?=
 =?us-ascii?Q?QH3qi79NWaSIgM+W3NyyLXnxDcsLdTRa5LyUgrlK7IJ6/lafoXwL1OmQGN0P?=
 =?us-ascii?Q?deg0sCWXZORh2OOBboPOAWLvKHpUlj2eidFYA26MoLIWbPJ9rfhi0tt+gvsf?=
 =?us-ascii?Q?yIZcGqNQNgBBs0o4xPNwHZKn3PvmIytEKySTKGJnTEJ7YqX0G9nmYJLWFd6L?=
 =?us-ascii?Q?d9IzDexSD/zYyhe+ASMeW9eoAoKkElGKIn39PJI2PGvjlx01xYoPjg8xDL/t?=
 =?us-ascii?Q?hR3I31kF+7ryCc9MkehjG844psZ4MjE9RvtX1Nrt6nVEakFNZkCYoazt4z+L?=
 =?us-ascii?Q?8ijFBkVL/vbWicbsRb+WAflc9zk7hjNLyDhZuwDY66Mw8BeehFmeaADH2mD7?=
 =?us-ascii?Q?4yGbIdMnhw+TVDLCnwSMlMn/Y79+uW2d48QPNhlJoDbkhyRVmXOPExLGsMtA?=
 =?us-ascii?Q?maVY0hrEzUoHFQ8ulQzLDKQUnB2J0s0axaiT8qgt1rntD3aHYmaJ/REUt8iv?=
 =?us-ascii?Q?J2lUyd8N3UqiGRcKhMYkpdVMZzbr49H1HPRvGeDNWllpEUvXhnQSA/z1+cCp?=
 =?us-ascii?Q?4TFR/meIVCDIGHg4ijBbJFD6lket083TvQ+CqcFDVoHdKN+jlPk3IF/CoSQR?=
 =?us-ascii?Q?UwmvdNP0KzuIE0QlbBL0oKknfxCuWj+B3Ek64dahEsBfnEUsyYC33nOdS4Qn?=
 =?us-ascii?Q?X/Nl07wdsQg4g9aByH7hbyYA5SEg+DL3H/AYNq+kOIh6EiDrKI+PGD/TSUmj?=
 =?us-ascii?Q?DUJcUfJKUjbeiEhsTe/n20j2ATnKWCg7t6IwpHx5FXYthqTvgW4aGne0XiOw?=
 =?us-ascii?Q?T7smsSPxzw9HZ1M+JFoAcCYSRCKLZfEVBTkChDyAhqObo5kRGE+hg8aDV69o?=
 =?us-ascii?Q?vXONdFGZMs7XYiluhrbLe+i6ePshbs5cdS8xNKIW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 210ffdf8-34ce-4190-cca0-08dbaf5d72c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 04:46:49.5212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8DLnyCmowosAep2gpLUDSEZYOCNvRl0BDTEKv3PUYU2XEg2qtxMwcryfLjnyMSFZd3XoXCVN/pqZMPXMayWPTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/dsc: improve clarify of the
 pps reg read/write helpers
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

> Subject: [PATCH 1/8] drm/i915/dsc: improve clarify of the pps reg read/wr=
ite
> helpers

Should be clarity here in the commit header

With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Make it clear what's the number of vdsc per pipe, and what's the number o=
f
> registers to grab. Have intel_dsc_get_pps_reg() return the registers it k=
nows
> even if the requested amount is bigger.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 40 ++++++++++++-----------
>  1 file changed, 21 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b24601d0b2c5..14317bb6d3df 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -372,7 +372,7 @@ int intel_dsc_get_num_vdsc_instances(const struct
> intel_crtc_state *crtc_state)  }
>=20
>  static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_st=
ate, int
> pps,
> -				  i915_reg_t *dsc_reg, int vdsc_per_pipe)
> +				  i915_reg_t *dsc_reg, int dsc_reg_num)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder; @@ -
> 381,16 +381,12 @@ static void intel_dsc_get_pps_reg(const struct
> intel_crtc_state *crtc_state, int
>=20
>  	pipe_dsc =3D is_pipe_dsc(crtc, cpu_transcoder);
>=20
> -	switch (vdsc_per_pipe) {
> -	case 2:
> +	if (dsc_reg_num >=3D 3)
> +		MISSING_CASE(dsc_reg_num);
> +	if (dsc_reg_num >=3D 2)
>  		dsc_reg[1] =3D pipe_dsc ? ICL_DSC1_PPS(pipe, pps) :
> DSCC_PPS(pps);
> -		fallthrough;
> -	case 1:
> +	if (dsc_reg_num >=3D 1)
>  		dsc_reg[0] =3D pipe_dsc ? ICL_DSC0_PPS(pipe, pps) :
> DSCA_PPS(pps);
> -		break;
> -	default:
> -		MISSING_CASE(vdsc_per_pipe);
> -	}
>  }
>=20
>  static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_=
state,
> @@ -399,13 +395,16 @@ static void intel_dsc_write_pps_reg(const struct
> intel_crtc_state *crtc_state,
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	i915_reg_t dsc_reg[2];
> -	int i, vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	int i, vdsc_per_pipe, dsc_reg_num;
> +
> +	vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
>=20
> -	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) <
> vdsc_per_pipe);
> +	drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
>=20
> -	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
>=20
> -	for (i =3D 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++)
> +	for (i =3D 0; i < dsc_reg_num; i++)
>  		intel_de_write(i915, dsc_reg[i], pps_val);  }
>=20
> @@ -815,16 +814,19 @@ static bool intel_dsc_read_pps_reg(struct
> intel_crtc_state *crtc_state,  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	const int vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
>  	i915_reg_t dsc_reg[2];
> -	int i;
> +	int i, vdsc_per_pipe, dsc_reg_num;
>=20
> -	*pps_val =3D 0;
> -	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) <
> vdsc_per_pipe);
> +	vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
>=20
> -	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);
> +	drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
> +
> +	*pps_val =3D 0;
>=20
> -	for (i =3D 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++) =
{
> +	for (i =3D 0; i < dsc_reg_num; i++) {
>  		u32 pps_temp;
>=20
>  		pps_temp =3D intel_de_read(i915, dsc_reg[i]);
> --
> 2.39.2

