Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09876796FC2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 07:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDBD10E758;
	Thu,  7 Sep 2023 05:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1095E10E758
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694063153; x=1725599153;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Da69c9eJ/Ip8ftomW7nGBcHe54hz1nls/Mf621htqdk=;
 b=cvSYhsqiBHr+R3cZw5LUnMTY4sNDhY2bHmbH6paFWuYSD3vShVBg64Yd
 cDNLy64CeCFh+Q6EWclbVnNUSbrMrIbTIlbnRGY3Bf/lydMJ9+gW2ev3d
 vuIxBAUGvgutPzmQLZ7VL8dukluYWrAWoxa6YeO/tCREGIoDls9ioJ671
 iq7LZdxQke4zQtxNHJI9AU80K1t4VnCGKkwgwsqqMQtIjmjOQMDUAnnjq
 mMe0/W3HhNg5dRxuPeZmuMzj8kW5dAcNT79tWeL5f2GShlUchVSgHQIsX
 EhUtVACWSDDe0A9lhIXxE4UG5HkkEzBp0CDzgCCz9ZpjR6/58enhPhkof w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357570973"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="357570973"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 22:05:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865464506"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="865464506"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 22:05:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:05:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 22:05:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 22:05:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QUGCBsUIww4+lDKzuRk0Avhjes9wfP8cyMtnx2Fq3vJjnLqMFOAyJtji8yv0UENXtlWwQ6aGqr+l/9MhbjQJ1nfax2sFWraTxFtdblPpJWlzheL2pcRTMJG8rIIbzN4eR7D+eB0fZaPcgjzydJlMn2mSIpyAYNOgQ+HUQ2CrLyGulAqKfJqnpn7cBwdH6zh80G8cjzFbIeFfpZa9psxGfe1cz1mrpzA2/XvxOn6meevJCUSAw+mTdZF5dFm8yi6iGDnlpWC5D+iY/p/ceQk6gpAf/g9SzvqfhmGsfnpn8yBia9KiRotX5cvcGHsPNxK0vdGxoGAoV3lzSIDWdrpUPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n9vMrA6cvg9CtlQOj4tg+YjcNauOEtJSXB9dNyaiUdA=;
 b=QQLGXaDcwW8m7xaQDms3DLddRNWOgGK/PV1dRAJkJKJJ3ArV9R00zETp90G0dDGvm9gNFunM0ob2oudgFvzk3HnJkwE44LzqX2AG7B2awFhmfEF0QXkiKYdktv3LKaysS7ycrov+Yj1n1C0AmqqNliH25DG1t/3AXWHhW4+YahZ5JyYwWHs7DWZMGMHhEyGVEHYlViv0fK41tgAuCof2whViu0G7Qbb7EdAHr61y4xh0Kx3pFRG5eN/yC3T9GbII0NsiFa6FJQEPtgXlzCQBBQ/AStUhBK6EP3GOk7BKeYJgftGPFH82M1VkTEkkjR8G9qQAe4nVyQcmXYIaklIQsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Thu, 7 Sep
 2023 05:05:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 05:05:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/8] drm/i915/dsc: have intel_dsc_pps_read() return the
 value
Thread-Index: AQHZ4Bx+CFuc6dzjVUKIMXbxemyfq7AO0XtQ
Date: Thu, 7 Sep 2023 05:05:49 +0000
Message-ID: <SN7PR11MB67508AA7D148478AAEF11EA7E3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <4d08c0f63c4975cc8cd01b0f82845c989bf13dd0.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <4d08c0f63c4975cc8cd01b0f82845c989bf13dd0.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB5957:EE_
x-ms-office365-filtering-correlation-id: adae50e2-8b5e-489f-0655-08dbaf601a19
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JoEL5zj36oCSrJEx8yq7IAibts7NfBMbfVi4NDgYi/WYWRZRFV9grVASmPvgJYRBnOwD5FgO8AxuCUf35DrlNesc6RtjU8EoWN1vtGYedTEvIL95kX5vH5VmJA1sMR6oWlg3tc2Vxk/nm3g6XhkxM1VGPMDGYqhRnXqTAoqe5/A0RoEIY7wIa2CvJjr1RgWB8Aq+/rWXgog05D48DsdepkZOYQRhfH213X2ryio85UnB4nHfEOg2JF6uNW8I68z0R/d75/SKgi5AQbG3KwTp9+yE25fPifwb42hE1mKSAJWHwIs56SlToGPeuQcMGVxEQ2WKWekjHAQe6/qPvz+nhhymEDjJFGk+chEq/hL78mAQq1fqSKQROfsJIrgB24XAHbryKHgRre+SmVT5pnZlPYiF2GVILz2ZpdjURiy60X1iB564V6Lj2QhIqHZ+8vgznUReMMkf1A2DO7ad3Q0ibQDlLzOpLz+Nvrl2oZV0E9YKGUGbKWXOPvtLx/WGUuUVS/9Y5g94WzvFyfUHrfpts7or+sp9ot5eaG0jbRQRlej7cT7qMQ8UQdUYHHcSzUGq960/NHiaUaDw0y0KEny88au0MuuiXjAI9e+PUuIsznhEe4IkfAi4w782acHzvsk4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(376002)(366004)(346002)(186009)(451199024)(1800799009)(66556008)(76116006)(26005)(71200400001)(66446008)(64756008)(66476007)(9686003)(7696005)(66946007)(110136005)(41300700001)(316002)(55016003)(122000001)(107886003)(4326008)(8676002)(8936002)(5660300002)(52536014)(6506007)(83380400001)(478600001)(2906002)(86362001)(38070700005)(82960400001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y/ztqBcxHXdWngwCOFcktbCcl2CAtSCGUusTrIRs6m29oM1baaIr/Tpk5BEh?=
 =?us-ascii?Q?dfiGXxAYzPL8B46rjv8rKThxsb3icmo2iJ0xFDhBIeg7SWZrFIMNMPGEtAjH?=
 =?us-ascii?Q?ooL66AO5blkOHnfW2j2evebZFXeWZzdcuCE9CyNnCmSPGem2FUf6DidUL0Bv?=
 =?us-ascii?Q?TxaKtjNT3jpQnOTSW6FDDYd3/f3jvjGE0P7UjMg1soXoKEpaSYB95VlYAQZG?=
 =?us-ascii?Q?GFy6TxSJcmATmIhc45wQh5HtFwEUFTDLMzkrspqeR0uw0mZdlOxHWm5xvbk0?=
 =?us-ascii?Q?UrW/oD0dw+mJ8HDzcr0d7HXaXXHQS7eUG4BnUAoQMOjGXW+qSdrU2qU/ZYpe?=
 =?us-ascii?Q?T9bcQgjJNpjHYA/5R9zDRq/e83gyQVmAfjD8Rx4GtQQSaGROe4VXMBjMbk00?=
 =?us-ascii?Q?7wrkJBLs5QN3NYrG1024AtYkfFiy3hoMCdrUS5iJ8MAWbOP2JMxCMm/CMlKz?=
 =?us-ascii?Q?WgnmC9NBYhCFy0n6x1oaBE17JhdgqQrajVzrGMYY9Gg96Oy7dKxCjqQGJadF?=
 =?us-ascii?Q?ojuqS3nMnldj5xaR9lgIA9oYVq+g9f0yfEbbUi330LReTo2a73INLl+yEqSj?=
 =?us-ascii?Q?3i+OMVzs9hjgT7c3ZdN3Dt6WxMq0BwqYNuq/HvjN9Rp2GtpaIwKuJkpKLL1F?=
 =?us-ascii?Q?KwKCIZHCNw7HM9pgNl8X1NzKMJFplK9SZfc6q4qazJfCIXWMyW8Vvhl0BQym?=
 =?us-ascii?Q?1oxMmNOeEJ/nArjxfIuXMSZMfs/qUIz9KBncN1aZry2dSR/KHrZSaV00MQbV?=
 =?us-ascii?Q?TOqhKNvPnLYsRr42i9ComD0okcG3RVf4EkW4xkkZHvGNfexE3cDEwEU+9Lgx?=
 =?us-ascii?Q?vYGKK+ZO1L7xz/W9yfDNRX1+vSmACjcvDiHAZs/ki3L9OmwMslLqIiFnmBqy?=
 =?us-ascii?Q?Kf8QZUwcLSkWErHLAC5l2WfX0CgbNmvt5YhxcUghSUarmfmeu7taGxYOg2g6?=
 =?us-ascii?Q?KW5Z4D99DrCgA8YhjzaN1cGwKtyXoCppSSKFSULhTJCv4pBNMNEMQjAupS8f?=
 =?us-ascii?Q?YT5MAYYqmPCs4hXifYoWlUFUfTJnyUClg0fworfv1bnpvN3djFkGTOwFcyk3?=
 =?us-ascii?Q?kK2WNjzYdZKfbwQatdDCXL6H7jDOAlCveZck0zGpBZhEP3ZHA1YcZrB9x3Sx?=
 =?us-ascii?Q?m9vB5URe+waWUMOJXbjHnrR1G/A5RcqyBccXp87TpRqs/csDzEaSKf/s9bo1?=
 =?us-ascii?Q?s396vAtP/3ne7ug1cnlQxVVARzhraao26cTiZMYKVYgm/B9eqcsf4caQGcan?=
 =?us-ascii?Q?B34FljSGeZRtkvM+ytJYaAp7nYezRXr8ULIHeHd4hrWYpw+1a2vVd9eNx6E7?=
 =?us-ascii?Q?0aYA+P8nVxCJBLY5HLAb9MGZiMk0JJfM/fsY+DkvuCVyqx0CUO+2poSuffZs?=
 =?us-ascii?Q?/hHS01WCbaepWUhRc5NbegJVl8mOWt85IF9lktejMDty5Gt3fo0bMahg8EmL?=
 =?us-ascii?Q?czBWSZ46gwXvCqXpJ/0iyk4CVmZLdE+FVZ50J6+a2Y3UjnZzHapD9OGHOMmC?=
 =?us-ascii?Q?B192qbRMQZzWiQFxAoIyBQI2iegEEd/mm81HmkX69huuAfn0FNwDxEtFz+Qc?=
 =?us-ascii?Q?vFGAP3fPheCcWJ/0/bbAKg7QjDQtjdDPavonZB0B?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adae50e2-8b5e-489f-0655-08dbaf601a19
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 05:05:49.2438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ed1vw/g/4EH+kOd8NJqv4/bvyueaFkY73qUeo4Dvzo1NV85+RkHlPqaVAlD3H6Zt0/NxrXuB3GWvbAcWQx+Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/dsc: have intel_dsc_pps_read()
 return the value
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

> Subject: [PATCH 3/8] drm/i915/dsc: have intel_dsc_pps_read() return the v=
alue
>=20
> Register read functions usually return the value instead of passing via p=
ointer
> parameters. Return the multiple register verification results via a point=
er
> parameter, which can also be NULL to skip the extra checks.
>=20
> Make the name conform to existing style better while at it.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 32 ++++++++++++++---------
>  1 file changed, 19 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index abb2c4370231..b0be6615a865 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -809,13 +809,14 @@ void intel_dsc_disable(const struct intel_crtc_stat=
e
> *old_crtc_state)
>  	}
>  }
>=20
> -static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> -				   int pps, u32 *pps_val)
> +static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int p=
ps,
> +			      bool *check_equal)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	i915_reg_t dsc_reg[2];
>  	int i, vdsc_per_pipe, dsc_reg_num;
> +	u32 val =3D 0;
>=20
>  	vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
>  	dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); @@ -
> 824,20 +825,25 @@ static bool intel_dsc_read_pps_reg(struct intel_crtc_st=
ate
> *crtc_state,
>=20
>  	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
>=20
> -	*pps_val =3D 0;
> +	if (check_equal)
> +		*check_equal =3D true;
>=20
>  	for (i =3D 0; i < dsc_reg_num; i++) {
> -		u32 pps_temp;
> +		u32 tmp;
>=20
> -		pps_temp =3D intel_de_read(i915, dsc_reg[i]);
> +		tmp =3D intel_de_read(i915, dsc_reg[i]);
>=20
> -		if (i =3D=3D 0)
> -			*pps_val =3D pps_temp;
> -		else if (pps_temp !=3D *pps_val)
> -			return false;
> +		if (i =3D=3D 0) {
> +			val =3D tmp;
> +		} else if (check_equal && tmp !=3D val) {
> +			*check_equal =3D false;
> +			break;
> +		} else if (!check_equal) {
> +			break;
> +		}
>  	}
>=20
> -	return true;
> +	return val;
>  }
>=20
>  static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state *crtc_s=
tate,
> int pps) @@ -845,10 +851,10 @@ static u32
> intel_dsc_pps_read_and_verify(struct intel_crtc_state *crtc_state, in
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	u32 val;
> -	int ret;
> +	bool all_equal;
>=20
> -	ret =3D intel_dsc_read_pps_reg(crtc_state, pps, &val);
> -	drm_WARN_ON(&i915->drm, !ret);
> +	val =3D intel_dsc_pps_read(crtc_state, pps, &all_equal);
> +	drm_WARN_ON(&i915->drm, !all_equal);
>=20
>  	return val;
>  }
> --
> 2.39.2

