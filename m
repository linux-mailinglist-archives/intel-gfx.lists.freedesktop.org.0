Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 408A169D528
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 21:49:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1319F10E7B0;
	Mon, 20 Feb 2023 20:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E86C10E7B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 20:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676926189; x=1708462189;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wY2NrQkEa2Ev7O11DKiu4J5+/lfxe1+BN9jbJSbzb0Y=;
 b=PEqhGYrNripbJm7GfKsclhDP/PKTFGp/pPHQmq2gkVkHLOrwWdKtERz6
 boODw2SqXh/bPdbdWEGLScljm5Ih7Y+PLlalbgWyv7O/UocY9jGA0mCx4
 cbyGQf4q0lg6iQr0z5kwzrG68bmVLzbOi1KEiGn69FWBLtPtFRgBSJNt6
 RE6j/hwY9Pp2nbJ3mJkhmrc5TsAqytjlw+TaflkWaDm4AqNpDlHqu6SPX
 RnJ5lH2yXBEtVbKk2sskNIEPxijnwuiMdYswy3+e0UqhLJcgFrfkMwLnq
 GjJ+Q2trCEin2xqsKvr5NJpGM1zwmy7j1q0SIWzpYip0HNCwkfGaD3K2u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="397170552"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="397170552"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 12:49:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="648938817"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="648938817"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 20 Feb 2023 12:49:48 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 12:49:47 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 12:49:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 12:49:47 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 12:49:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T+xMRuN5FJ1yBISVIxxl9v20EbxeT7Ql6XqgOxiH+8tEMuU91zwo4Qa5m7yOpaRe7ral5cahD4Xdl1Fdi15p7b39qifp5iB+nUi+RGdvfgtx5TLSpxy3aI8hAxqF2x0h1qAUxylRek0+SoPmBKA6UNoArQ7G6MNaGmdEBqIQ43nvTZZSpUinHrDaZv4GMYuuddyl1H276RkVdPEKg0wzjI0L1mZ8k7r7o6sqWcoT9zddCDRHeb17cmz0oKivF+GL9KyUyWyeIXnVN4DGi3zd2VNuZczbwx/t66pTOch0j+B+zIeldxzWqMmCaEIPxChcfqg3Cib7UwLTLb1lDDrk/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HHI3k89QdbQEAwXXXOBEEHOS6VXbLSwCSFNMlbl18iY=;
 b=a1nTovNCXgdJUR/x5g/qA8/1d9cdTE8ybLyMezjdvBcL4meIrffh3RXYLY7nZu5EnwcWndvhnMXZxmlQSRa0z8fZJMyn129MHqApK5lul9awzehcLhjIVqhJrf2mdZjlUSBAteTT4A8RSi0qJHOXbdlLEEZkzYWNRiQzj6rpm6JjE88Akce7nmaUF5jrnOriyc14B24dL85CE8YNTt9rUjYH9GUsG7gkrLj7BIyVkELQKiIbsXNYS8uvxSS02exjwClfXerRYw46aSbMtFY4+ji6/ajaskJVUqfqIBgoY2IalXCof5v1ij13juL/mFcz/sB42mtlazHX6fThY5TwUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 20:49:45 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 20:49:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 2/7] drm/i915/dp: Check if DSC supports
 the given output_format
Thread-Index: AQHZOsg6cdK4zpycMEe5HmdsXm89j67YYQKA
Date: Mon, 20 Feb 2023 20:49:44 +0000
Message-ID: <DM4PR11MB63606889FA682D1A80B1A0D4F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-3-suraj.kandpal@intel.com>
In-Reply-To: <20230207074416.3209722-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7696:EE_
x-ms-office365-filtering-correlation-id: 562a2bb2-2f22-4759-d0bd-08db1383ff55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wiv04c6cQ6b1EsUFRnOG5uMzVXFnJ3ieqUk0QqA3SLVEC4IX9tDi8vos9i5Jr73jOl933IwLIQi+BLWG+tYDJQql7KNV4q0PMTTy8v3RYioV/OLlai4xkN0rtvO/L/7hUKHgSOC3o+KG6Zjf5VhvHNga9bMcVyE6QfUoT9LTAoB2DB3BEHXM0RU7E8WwKwWIjXPLx1mFQFsl/OXSLJY4fItP3W/oLzEF4aPk8hK89GGJ79ROognUewkQgw6/sxUvzcLQDXZvDi88LW130EW3+bq0mzbRl5fezFYCC4X/llyo/RCNJn3rmu2N52YgEeWDGniZPPMAacI9A3bCmWk6RVaGYFcpm3hzV7MsRzwBpgqntiCiel1q28Zr1PYoUF0ll+EdvleSOi3ViE//fCj32vFCD1VsacmhJjIV20obGOkMhu7vaMVi+yVOaSjd6vmu7khCPKNAdnd6GhnQUhylFD3HWyPvDUYRWRlmc2fexkJTGPkL6bXj7TLY5REOos2q8IB4WbK4ewQGklho7ZA5t/3mBx5UNWThb+RLiRBb8hO7TWVwatm99tHMF70L1ELOD/W/w8cc+0fmkkxCaMe7rQMzB6g8XCp3HTiv1NFhln21vmSwWfetilCqxpJDSyJyaqPUfxpYxNn7nr+livWLXITNPURouEUtc0LvxuBx01pbjxD+pIMkbG5QT8U7U97jHpD9xQlov1KWueS/vam0iQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(366004)(136003)(346002)(396003)(451199018)(122000001)(2906002)(82960400001)(86362001)(38100700002)(71200400001)(7696005)(110136005)(53546011)(478600001)(26005)(186003)(9686003)(55016003)(6506007)(38070700005)(33656002)(8676002)(66446008)(64756008)(66476007)(66556008)(8936002)(83380400001)(316002)(76116006)(66946007)(41300700001)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vVEUpgYINBjU6ngvUDr2NeCFAc53deyJIv7UlKaxuE2g8zC7WVw7uTmnOclR?=
 =?us-ascii?Q?PF8JB+YgBlKrNBo7G0l+E7oycm0AL8BGkKLpY3G1aAWWVX0DUlNDAwDXcy/s?=
 =?us-ascii?Q?Y5H+9kwOFp/RafbYQOdSXM5kZIvKMq9EoDXYO6JHaXFujPSntwJ/MwBqsTMn?=
 =?us-ascii?Q?5AbaY8wX0P0URf1J7ce0HP2uyf5/u+AU1/a+gk+cPvRZ0QrrqcCReVdSA9yZ?=
 =?us-ascii?Q?4Y3npVtXx//Xk7eRMH7OfhHPwlCBtaGfSp8t9UnjiDPODOdZy5SVgQVqW97Z?=
 =?us-ascii?Q?bo8wuSxHd6nqjaYvEvrsjIh5WPqciJqUEHZ32snnGh11JaELvbgfy0kP/yxx?=
 =?us-ascii?Q?6D2zN34DItcW4II46ZpgzB0TGurzl4YhIgCAaMJfPKt9sBof7we7ThpLehTX?=
 =?us-ascii?Q?yA2OIH03bTBuIgtt5cSCDXMqF/bB544PQh01DxW3gMxbxnhul8RZTUAz1Cl0?=
 =?us-ascii?Q?q8ZdV6G993CBGngak/6IGQBQgmcuX9ukLldN1QBG6ki5gv9SYha9yhfUPbYT?=
 =?us-ascii?Q?NeFOL5zHtJFhNF1be2hakqFboRDMFElANFs2WqU7+QD21YwaX27CbpLJe4p8?=
 =?us-ascii?Q?m9kpcA9qB+HFQFwXBoDiCpoaHRA53JctoX9wJ71GXmtpHfCLVM1KIoVsH0eb?=
 =?us-ascii?Q?Xv/OfRZ7na1taHClgQDudLOB7cs7QyNk5n6jebJeKZkhyh+d+kVgJGzj402H?=
 =?us-ascii?Q?Nqw+0PcQV4M45q89PypzfdFahJN/xQF2G5W87Mj/TAATrds2Fm5WIU0PseAh?=
 =?us-ascii?Q?VLLJ/UIX1KLjuEUCYkFQI4yO1Ewrvy1slyidtjxg+vxE/me0xNeD/n/5FOwB?=
 =?us-ascii?Q?1XHPrDdK34ZsrGauW000RqYJGfywenoTDN5kwM6et1k3pUVa3dEiVR8NpSw9?=
 =?us-ascii?Q?FtoGF2tPXB47GTz1N0htemYPT2U/tlOJRrVRtWP2TawIyBtQuiqI00XdUMOW?=
 =?us-ascii?Q?Nz7DY0YDkTqyl4N+/M95EoRc1ERea2a30Fj96v4t+LjgExwI4gYukE01JXB2?=
 =?us-ascii?Q?UlgcPZX7rz9iUiXn6T02o0CkLwfTTkVk0f5odJSiosxfUga3u0wwrehYmypF?=
 =?us-ascii?Q?/vHe+wj0VHI3HqIbOFC44OAdLWXpdiftiIOeTz1voONoClw7CidR60flvvpS?=
 =?us-ascii?Q?eVhGpxg8xmch3uPYVJkzHSsbq/EeOd58VSKtlB54CEcInSMpgoyT5x+AFDtl?=
 =?us-ascii?Q?SJbknwFxALns1DkWF1q41C5JIl8Kg5rrPlkNo1Den6j5NRJqvWflFc4RUBV7?=
 =?us-ascii?Q?3Kza7W1e/scDnQDU01dKw7Do6jqtmzd+eAnM9FPIePpQM3b4cI9/9YGJQFe6?=
 =?us-ascii?Q?e2bNFZXz6dbXHIjc9Gvx76jUsmMR2WNV5TkI+2opOm1b3zVmUc5dE2xklTP0?=
 =?us-ascii?Q?iQAW02iuyI4cDaHF5m2yiVTBhubdvPaIp0nYtoVoeafzeK3fTaNvyqjre8pI?=
 =?us-ascii?Q?iQmR3hbtMARC2LfOHu7fQUNWUBXf5hoTnbUBardcrWPIZTjxvAtgmjHTn6AR?=
 =?us-ascii?Q?vf4kQWYG60WhPGeruwNFe/vqISn6+StAMPfHbS47eNKTRyCnFDDR2p/+3g2s?=
 =?us-ascii?Q?YwoppcT3WdVCAnhS7furv5lgnrJfBJ1+Pb8vOm4X?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 562a2bb2-2f22-4759-d0bd-08db1383ff55
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2023 20:49:44.8358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 25sbouIfCsnsXzFfgKtYkIao+tHe0qXuYGSFEZEplcuQOMnH5IHAGG3uVCLsWNe3z5/equG+1/9OvGhO5kG/JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 2/7] drm/i915/dp: Check if DSC supports
 the given output_format
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
> Sent: Tuesday, February 7, 2023 1:14 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v9 2/7] drm/i915/dp: Check if DSC supports th=
e given
> output_format
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> Go with DSC only if the given output_format is supported.
>=20
> v2: Use drm helper to get DSC format support for sink.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 30 +++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index cb4fbcd935db..73a7baccd7d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1494,6 +1494,31 @@ static int intel_dp_dsc_compute_params(struct
> intel_encoder *encoder,
>  	return drm_dsc_compute_rc_parameters(vdsc_cfg);
>  }
>=20
> +static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
> +					 enum intel_output_format output_format)
> {
> +	u8 sink_dsc_format;
> +
> +	switch (output_format) {
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +		sink_dsc_format =3D DP_DSC_RGB;
> +		break;
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		sink_dsc_format =3D DP_DSC_YCbCr444;
> +		break;
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		if (min(intel_dp_source_dsc_version_minor(intel_dp),
> +			intel_dp_sink_dsc_version_minor(intel_dp)) < 2)
> +			return false;
> +		sink_dsc_format =3D DP_DSC_YCbCr420_Native;
> +		break;
> +	default:
> +		return false;
> +	}
> +
> +	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
> +sink_dsc_format); }
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state, @@ -
> 1514,11 +1539,16 @@ int intel_dp_dsc_compute_config(struct intel_dp *inte=
l_dp,
>  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>  		return -EINVAL;
>=20
> +	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format)=
)
> +		return -EINVAL;
> +
>  	if (compute_pipe_bpp)
>  		pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp, conn_state-
> >max_requested_bpc);
>  	else
>  		pipe_bpp =3D pipe_config->pipe_bpp;
>=20
> +	pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp,
> +conn_state->max_requested_bpc);

This seems to be  wrong as it unconditionally overwrites the non-compress c=
ase.

> +
>  	if (intel_dp->force_dsc_bpc) {
>  		pipe_bpp =3D intel_dp->force_dsc_bpc * 3;
>  		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d",
> pipe_bpp);
> --
> 2.25.1

