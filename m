Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0529F69D5DA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 22:38:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBF410E2A2;
	Mon, 20 Feb 2023 21:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313F310E2A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 21:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676929081; x=1708465081;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PiPD6ABMkKOfrH881H0BCPFcaaJtZ7KEvOuNbLV/TDs=;
 b=bCtCpDtp6jTXFun1xKUqv+z/dgoxO4vVJ6hSPcG5uYT+WP2c8IM/w+7y
 oPYoxDtBxvI2qlBNauSqj4F+VHWCkpXwl/s7kB5CZuKpD+foW9c4nrBL6
 fkKL6HMBCqKnY21qOyLgggdjmx3G/XXHMAkh8XxmYybmXnRIrg3Joon5u
 mqHRK6PzBzqNy0F/2iCJOuWX6hxr0uNcZ1ejGTW96eMWI12ncp/sKzQ7G
 zFh0wb6dXriU/VaWzhj7Bbft9In5y7ilty4IkSk8hBKgG6vRs7ptprddo
 tbrAQLXgiFTqOdtjMalgrEwpPdpEoD9VxeZzrKZIiyJ6vyepada8/QbNj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="332499832"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="332499832"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 13:38:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701783703"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701783703"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Feb 2023 13:38:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 13:37:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 13:37:59 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 13:37:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lkok6aYm9vEACDuCiFP+z0O4LO+KQ8VCogdCCAjYg+nN3+0cOnfv8JLIN2XQGKtcMiIeR3sjPkkUXP57EtO6g2BwMhQVF3h0Pk8zrmSgrStpjzIins17viXSN8d2w+MBIdCN3mjRx4r/ZjRS3/2H3EmoKaF5QKtJHOtYb5lLcDAKCwfQOj7zRB7TXPdWCJU8ScVVWcOmTJs8K1vZChy9ngTuhYwYF60ScBqA6yPU1x8yB2JlSEhVDIKNncV4l5pgQ5KuDCbkBjCsPeUmccMPtgqENrLQOfdWHAbLz3L5yIK/ZYxRBx5Ce6gScpLROh5j8ioxglszBs9aVw15vm3KUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JUvhyDXZ29cgxfqst2xHIqUzn/vuoXf2m/E+zgyICq0=;
 b=C1aemxSME1+G5dVNU4UPWvFsiylGowg9V6Lq7UsHLuhxy+Pof8cJqz123xZkRW1E6a3gVgGzQXYalAz48OeM2T+7g6osIXCALpoHhBkC8MS4CrRg5rCVEXwILfaXWHdPb3wMWRFfQFVaKPgIS2BaHFpAprNAzJhFQnx1AF+/ZIe3WyKSGvkUA5D84JJ+NvTkJUWfCBVKxIcweKXwTklD6/ENMvkVTBEDX0oBNsVAF1FXy2T1enSePPRh7fuGI+5zcAxafHf/ao/P2FVbDIsMTgrqMajhLgxafwzE20on/qZE6iPOVP6XsKUUqL+9NRTXciDCNGo2s+uR4Nvbl6EsyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.20; Mon, 20 Feb 2023 21:37:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 21:37:57 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field
Thread-Index: AQHZQOw4CUTHBvfY60m7RIO/IbTOQq7YX9Yw
Date: Mon, 20 Feb 2023 21:37:57 +0000
Message-ID: <DM4PR11MB6360FED44981B807442DA8FEF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230207074416.3209722-6-suraj.kandpal@intel.com>
 <20230215031723.3447553-1-suraj.kandpal@intel.com>
In-Reply-To: <20230215031723.3447553-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB5995:EE_
x-ms-office365-filtering-correlation-id: ca15d299-10ce-4fef-9278-08db138abb49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PingPaJBuxTSrkxlpkT3m21Qb4Z4o7j/N8MOORQ0cPxVYlo3pHmlue5fFduEF/5O5n8x9FN990rHbHuExUiFilTWoRjkpG5U/UtJcnfZNZkfmBxjVQv49Cbvk8F/PWs8+yiyi6bojjQCV2OhGFd21uYVkhR2fSZgW6Qw/kirst0FpSxNr5WJmRh37pJi4MQfyWL3TeoZGqQtPKNz3aoOlUpFV/PADZwOzIkuPa/PdcNw6ExbgQV/cn3bXLtJftE5yT/k53Q1Zy0GkNdvpz+mVbGhUbQRO9qTiMp57JDfy5Cr20qb4gyRvTQ9L5BnSw0dxYy6WSorzNjB6nwQ0m9enIsqTOgU817iAQCULfd0T0XoppNJiY4UktjSRovbV4MgFpx0TtzI4Cy7V1cG33GJw2f23MEFmSXmD1csPbkuPBVGtEZRNo+2l9hhBMxGXASeIB+iR+ql/EoSnNA0ZS6LgXtbcKD/tz0gC7SVrfDyI4eqpBikV7pTJNGfrhuonRdVyOxNrf+8ULug0LByvgjjNSier62VVZK2R1sWdZr0zJY7eqBA12fplOGjxPeWfoniXJcH6ddnoys2IlCfXPKWJlZVVE/HPXDbh9QLhhnFuEc7/+l6aTC33/zmj/SFuqcEczzsY9p8d5rbxc9jvHg6WAp6sEOA/hkMHaExawYva6QiAvYv8mzGffMar2ull7moQ6yj/QFSaX/pVGcsVMsrpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(136003)(366004)(346002)(39860400002)(451199018)(8936002)(52536014)(5660300002)(8676002)(7696005)(64756008)(478600001)(76116006)(86362001)(66446008)(66946007)(66476007)(66556008)(55016003)(83380400001)(110136005)(71200400001)(33656002)(316002)(41300700001)(26005)(186003)(9686003)(38100700002)(2906002)(122000001)(82960400001)(38070700005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9Y5/JWCdhKPB+iLX9HCoVBRdHAkmhbYhy1Hwm8yV5RKsQIGt4d4KVppXYR2e?=
 =?us-ascii?Q?FHOrfPxkyF0s6bYTwPGX+ZjXdLgkNKg/qZOryLS/aUfOZFtuOwQZECLWybWs?=
 =?us-ascii?Q?a5BoxTKECee2H/1Pkkd40P6RjA0q4nXspGRjGGAyb4y6KRkRv7iByRiXBTMi?=
 =?us-ascii?Q?dWCv74SM8MwEZ52DrVitHDR/50DlI/rj4l+IAMTQ3wi0WnVvagxvbhgq63x3?=
 =?us-ascii?Q?tKtFbAjMWg2mZj7TS+Vp1cwVLTa9p42oQJoSMqfdY3GYkKKmst41jqSFFNmn?=
 =?us-ascii?Q?WRCBq0ZVe0f7kTYCPNgvx3RitD7J4iP0oahp2LCyF1R0SJvmr5okPT8EWA29?=
 =?us-ascii?Q?bs+TJaYrT6FhPeCtDIkoiiFCZS6L/x9v9xUdgIU2pMBY4I9eQZQsGpw5Ip0Q?=
 =?us-ascii?Q?NELvdoKKfFvdw/KVR9b1Wm1NKWvh2/gysXXHPEQifnsjh3ic5lWLkDcgV3LI?=
 =?us-ascii?Q?FdH+VFeIPqSKgTslLupmnuZZnmtTLXzPO5nIz9bd6ZYnUfyzoH+uZLIVwzMp?=
 =?us-ascii?Q?8+nZdmLdxo1v6cVwk/C2GxrAlVls6eNamA+fh8+YqntncAFqGoNJuLyB7bXz?=
 =?us-ascii?Q?a7pVjq/GItYTf22UK4mUtkAmlfEJh8LPibUkUvgXhHvk26mAj3rotTVL7FsA?=
 =?us-ascii?Q?AkktQJkwLxqH7OtdJy8octTlWs6WXvo0natpUT1nmgmlMZFYoQKlxy+TmnDN?=
 =?us-ascii?Q?n0GWY7VhKPllMsK01bQj6e50mu5bdZpV1u0B3FtpdRaXI7GevFppCJGkRVKQ?=
 =?us-ascii?Q?Wg7Pmvs+DayxCBpauEPASJ/7rTOWOD6lFLL61uTqpuEKyVmqxkGgXSgDEBwA?=
 =?us-ascii?Q?wrZL0rc+OjpQhMOJKCzcQSuOdwlcE1969ujrds6HEk+WDX2a/YJ/NIAJP+pJ?=
 =?us-ascii?Q?8PmQWvvqSM/B4lNMiWCpH9ngDreECqUozEdeNXGk0fJ2cEAB2BCvBNwUmC3b?=
 =?us-ascii?Q?wRyCaWrsi0Z4IypKg8SL5f8c2F1SWJOSs2ASYF6BDx82ZrVDZ1kqMrlyA3OQ?=
 =?us-ascii?Q?3teUIn/E/jkwuAbqCu1yzD4JP8YIJvT9V/CJzDRoGpg9K5OHxhGx8WxPL2wd?=
 =?us-ascii?Q?SHi2Ndh6y1V2d4EtJvKmF8xwqETfbveJMn3xI02q2BRvS9hAOz4qaz9p2/SX?=
 =?us-ascii?Q?5PjrXHnXqnYHjST+uKNT8KQF6qlQWdi+3UPOKype0eT8CsbUjrRrnKlwo2it?=
 =?us-ascii?Q?mJx7l39YBqHHsCHVWeJIX2HG1dQcEDnCRneWEw+dzuJYhXTqzoh5oWRTJ4rU?=
 =?us-ascii?Q?15npVvBgt+oIl4pS4+W9Pvlg0dMfD3j5YiazWJVjmgb0pDXXpq0POXLji+Yp?=
 =?us-ascii?Q?FJEHFp3JDHKdeowzSlVrWmv3G6PMzGALkvblJN0FiU9F2HXvYgbXBifySk8x?=
 =?us-ascii?Q?o6Wotie1f37w45JhmCIPt273G24Sm44d3HjQie5W9F9tna/qXSuvFYf6ccIH?=
 =?us-ascii?Q?5S3NdKgYYqDVVbFqn9rBn2liu8kJtU7JQRdsYrnpG4tp5tHDPM3SV8KvO+DO?=
 =?us-ascii?Q?Uf4ySpZXbu9K7Bj3Hpf9+qe5mzQ+tm2lvU5i+GYz4rnCUJPOpqava/UDNSRI?=
 =?us-ascii?Q?EciEiPWnfgvcozNh5s2I4Cth2U/6/QnaqUws+8Ru?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca15d299-10ce-4fef-9278-08db138abb49
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2023 21:37:57.0994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: apCLT5LM57ymvMajFhz4oKYtG7ynqjgSglHrc4o1Fynq+VlnpIJVRCbt/Efbv5h2tkD1Iw2UlINGUF+OWS3YZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Wednesday, February 15, 2023 8:47 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field

Append "display"

>=20
> Now that we have laid the groundwork for YUV420 Enablement we fill up nat=
ive_420
> field in vdsc_cfg and add appropriate checks wherever required.
>=20
> ---v2
> -adding native_422 field as 0 [Vandita]
> -filling in second_line_bpg_offset, second_line_offset_adj and nsl_bpg_of=
fset in
> vds_cfg when native_420 is true
>=20
> ---v3
> -adding display version check to solve igt issue
>=20
> --v7
> -remove is_pipe_dsc check as its always true for D14 [Jani]
>=20
> --v10
> -keep sink capability check [Jani]
> -move from !(x =3D=3D y  || w =3D=3D z) to x !=3Dy && w !=3D z [Jani]
>=20
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 05e749861658..7065203460d3 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1534,8 +1534,6 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
>  	if (crtc_state->dsc.slice_count > 1)
>  		crtc_state->dsc.dsc_split =3D true;
>=20
> -	vdsc_cfg->convert_rgb =3D true;
> -
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1a397ab710dd..baa5af7d3bdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1466,9 +1466,10 @@ static int intel_dp_dsc_compute_params(struct
> intel_encoder *encoder,
>  	vdsc_cfg->dsc_version_minor =3D
>  		min(intel_dp_source_dsc_version_minor(intel_dp),
>  		    intel_dp_sink_dsc_version_minor(intel_dp));
> -
> -	vdsc_cfg->convert_rgb =3D intel_dp-
> >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
> -		DP_DSC_RGB;
> +	if (vdsc_cfg->convert_rgb)
> +		vdsc_cfg->convert_rgb =3D
> +			intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP -
> DP_DSC_SUPPORT] &
> +			DP_DSC_RGB;
>=20
>  	line_buf_depth =3D drm_dp_dsc_sink_line_buf_depth(intel_dp->dsc_dpcd);
>  	if (!line_buf_depth) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index ed16f63d6355..19f9fb53f139 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -460,14 +460,47 @@ int intel_dsc_compute_params(struct intel_crtc_stat=
e
> *pipe_config)
>  	vdsc_cfg->pic_width =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
>  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
>  					     pipe_config->dsc.slice_count);
> -
> -	/* Gen 11 does not support YCbCr */
> +	/*
> +	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb i=
s 0
> +	 * else 1
> +	 */
> +	vdsc_cfg->convert_rgb =3D pipe_config->output_format !=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +				pipe_config->output_format !=3D
> INTEL_OUTPUT_FORMAT_YCBCR444;
> +
> +	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> +		vdsc_cfg->native_420 =3D true;
> +	/* We do not support YcBCr422 as of now */
> +	vdsc_cfg->native_422 =3D false;
> +	/* Gen 11 does not support YCbCr422 */

This comment can be merged with the one above.

>  	vdsc_cfg->simple_422 =3D false;
>  	/* Gen 11 does not support VBR */
>  	vdsc_cfg->vbr_enable =3D false;
>=20
>  	/* Gen 11 only supports integral values of bpp */
>  	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;

Leave a line gap here

> +	/*
> +	 * According to DSC 1.2 specs if native_420 is set:

It would be good to add the section name as well for ease of reference.

> +	 * -We need to double the current bpp.
> +	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_heigh=
t-1) if
> slice
> +	 * height < 8.
> +	 * -second_line_offset_adj is 512 as shown by emperical values to yeild=
 best
> chroma
> +	 * preservation in second line.
> +	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 =
then
> rounded
> +	 * up to 16 fractional bits, we left shift second line offset by 11 to =
preserve
> 11
> +	 * fractional bits.
> +	 */
> +	if (vdsc_cfg->native_420) {
> +		vdsc_cfg->bits_per_pixel <<=3D 1;

Leave a line gap here

> +		if (vdsc_cfg->slice_height >=3D 8)
> +			vdsc_cfg->second_line_bpg_offset =3D 12;
> +		else
> +			vdsc_cfg->second_line_bpg_offset =3D
> +				2 * (vdsc_cfg->slice_height - 1);

Here as well

> +		vdsc_cfg->second_line_offset_adj =3D 512;
> +		vdsc_cfg->nsl_bpg_offset =3D DIV_ROUND_UP(vdsc_cfg-
> >second_line_bpg_offset << 11,
> +							vdsc_cfg->slice_height - 1);

The parameters we compute here are being programmed only for gen14. We shou=
ld
limit the computation if they are going to be unused for prior platforms.

> +	}
> +
>  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
>=20
>  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) { @@ -594,8 +627,13 @@
> static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_s=
tate)
>  		DSC_VER_MIN_SHIFT |
>  		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
>  		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> -	if (vdsc_cfg->dsc_version_minor =3D=3D 2)
> +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
>  		pps_val |=3D DSC_ALT_ICH_SEL;
> +		if (vdsc_cfg->native_420)
> +			pps_val |=3D DSC_NATIVE_420_ENABLE;
> +		if (vdsc_cfg->native_422)
> +			pps_val |=3D DSC_NATIVE_422_ENABLE;
> +	}
>  	if (vdsc_cfg->block_pred_enable)
>  		pps_val |=3D DSC_BLOCK_PREDICTION;
>  	if (vdsc_cfg->convert_rgb)
> @@ -906,6 +944,32 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  				       pps_val);
>  	}
>=20
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		/* Populate PICTURE_PARAMETER_SET_17 registers */
> +		pps_val =3D 0;
> +		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
> +		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n", pps_val);
> +		intel_de_write(dev_priv,
> +			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> +			       pps_val);
> +		if (crtc_state->dsc.dsc_split)
> +			intel_de_write(dev_priv,
> +
> MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> +				       pps_val);
> +
> +		/* Populate PICTURE_PARAMETER_SET_18 registers */
> +		pps_val =3D 0;
> +		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
> +			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
> +		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n", pps_val);
> +		intel_de_write(dev_priv,
> +			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> +			       pps_val);
> +		if (crtc_state->dsc.dsc_split)
> +			intel_de_write(dev_priv,
> +
> MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> +				       pps_val);
> +	}

Leave a line gap.

>  	/* Populate the RC_BUF_THRESH registers */
>  	memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
>  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
> --
> 2.25.1

