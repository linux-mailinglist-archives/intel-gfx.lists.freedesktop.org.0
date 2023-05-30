Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66D4715904
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 10:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46AE710E13D;
	Tue, 30 May 2023 08:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE5410E13D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 08:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685436592; x=1716972592;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jeLx8mSq0rraFLSbPlls8J/ff1I/dAqkf22TOrA1YuQ=;
 b=bdTRXZpNPn65VHjCFxAU7tDha41UITBsxzVsSPy/WucSwh/wed7smZ08
 R3SpXP/NSgP3/f0Q9utSafpfTM6GUJmP6LWsoNd8siJohjpGkUALePHtu
 ynDrfbbxUte/tvgYw1P1DExtVesKMRwU793ix89OnXPjKaYc79W9RykEN
 gRwjhtaGFbwFApBfD5i7ZmY+zJVnEk4F3wRpjfSo9dZdmd9mykfXDSLIR
 s4zRMqb/fuDQlh//ldV0B08IgaSi7+RAhwmxuIsgGH1wv9VbSk7Kw8amg
 3JNFTu2Vibu87rQBYJJX+X7dcgh8cqiS5Mk1gJ7ubyZoUvVXePB/OJQqF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="339444153"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="339444153"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 01:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="818704097"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="818704097"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 30 May 2023 01:49:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 01:49:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 01:49:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 01:49:50 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 01:49:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AP5kz0apbL9wWLQnbAdG+KH/bOLYjN7hg4w9tDZLPZ12fkIePPGYOdFNMecMYLifIf0adlPN0ix6betXGjswbalMMJmMYrSibb+bogHs7+mTNPGd1dCtKCiUPzhpHnxNOnaR/mbVeHJtEuGNyYgHKTnJ27DntTs7iYzY2ouGqaDhCr0PhJPsmcVPbCFtzZVjTj0DEby1Z8gk1a3EDUf7VP1CUN0epKUyND+ot9J/BR7AxzFefwUcgrO2EYgeJqtFIHZcwHZzeVAJDYexbHJnwVOXiWCLOxDK3zhGwOadAmzkyrzSxra6cPswowWX3ShRITyvKENLGzQwHeqEKioHmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WJqKY4nlkk07SFBfWQVtVhFc9BnfhGd+3+yqAIYRMH8=;
 b=JpexsL6MHxluajVbdx/dEhKiJG4kSgUG/RrZqDptFdRf5L8Wj5X4bw5yJm/pc9FYcdbu4/IbaRVUT6YrJwzASKtGREfISAapJIe6La5lam6hCquEcn2gBhgks6jrDZzEdadGqVZ51wAdGxWf1UIrhJxxyEoLECSonfsMrRUoJY1kLuyy19w25WTP6CLSfR0eWDo2yMWgb6hnCKbDbjD185j5V9zXhEVmSkO7GbMaaO5dzdsc2yQ+FY26zBv43fv/4PydpbY1ueOzlXPv+kVr/r3QLMoXdvV5Bxe+xNudcBtxhbqUbUX5Gq2cpuoCeq6g6y36Ft4RjqEpsGzfKODPag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.23; Tue, 30 May 2023 08:49:43 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 08:49:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case of
 MFD
Thread-Index: AQHZjlGarhBmwcv5EUaIQAbmuSmIiK9yglbA
Date: Tue, 30 May 2023 08:49:42 +0000
Message-ID: <DM6PR11MB31775E8B0E01C8439878AC2CBA4B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230524150152.136371-1-mika.kahola@intel.com>
In-Reply-To: <20230524150152.136371-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|BN9PR11MB5228:EE_
x-ms-office365-filtering-correlation-id: 2408363e-e662-47c1-203d-08db60eacf8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: guF6d4Z38q4NCMwSjuLMbcOVIiWa9ADTjWOOMUeM5HvZb46A5dTyW9ypbFlxQHangKJ9+tczYzYp8wcRcBeqTyWVUHnC/7EyhikD/OTX73Pd5A4wqG7x8NGQ70vGX3dBwNYrCuUj1XBCyhmunAtao9tjA5y85dJoRI5L8uRycDhTCRdw78Sr+ICfs+3CV0TbgAokSI2GtXLXitnZloiW1/ligv28ggjRhX1bNeuz3/TUw2iVKADxHpnoMTy3Jt2NPGs3mKWja6R1H9NicbzeneBOXShndysiKva2nqZSJZWyz3GPe0ZhQparpbTN3Sfaj2BB+K75nB0B1tQWfAptAGUP3YthKe5PIkJDdY1ZSy8//TnFcW7TNrDbY0HJm3x4SGUAFytNwyPf2sAoK3wu3Hbrw9asPYLbGhYeUYKX3JVjRqKLQDgIMOap3pmSZyGJss55JzeQwOUGDUx7ora5gfYe31uohJfyKuRU3FMaes+89dby95jXvLy11BpOX+PbXOhw/a/icVZe5OpzdrZjUk2KYdWnr6fyG36XCHIOhSxi3IzSZEBYcdsg5sfMbzk+xZJud0aIebEHxBMyfCEsHQPNTyZRrG02ARflRKn9NLbJoDQI0LmjoQRb0fvH9dzb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199021)(2906002)(186003)(55236004)(53546011)(9686003)(6506007)(26005)(52536014)(5660300002)(8936002)(122000001)(8676002)(38100700002)(82960400001)(110136005)(83380400001)(86362001)(38070700005)(7696005)(41300700001)(33656002)(71200400001)(316002)(66946007)(76116006)(66446008)(64756008)(66476007)(66556008)(478600001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XTEVO83+Vvsw5gKs1DfMOIcGNdKQqLp5bvyS4vcZW84jhnPS7G0tW2N8gKyE?=
 =?us-ascii?Q?+Sf8krEsMbg+wEYQTSXdcOY5S2ybh6JWssAlKeWTCObjsCOZaUpgPVTQFQfT?=
 =?us-ascii?Q?mopgmcCXYRKhipLRqjD2LLYtZH2brFcJWGtoB729Wy0Q7zbAbVBLvLbOD+RY?=
 =?us-ascii?Q?pvpjRyAllJ393DhysjOfeThuoE56X5uDhdtjgtyh/xQem5aSqynN7+DLJ09X?=
 =?us-ascii?Q?s+2J86yEZDgvKeXNbcYJYRAEp6GNUu7gkiDa5lTzpUAxLqYrJgrxei8hZfI6?=
 =?us-ascii?Q?jRRZcspPi7KFj/t+n28Rm+Bq3g6cjPJRSQ8SbcX9rzGvP7801RKfi23zhJVO?=
 =?us-ascii?Q?JQ0IubIftrThaAV+UE5HeUOVf3tZFAaPcoEpLX/arSQpFnjfeBrW3I3f6eqO?=
 =?us-ascii?Q?jqOWK42zJAuy/Y947R7ZEjh1pPF5f6GqVkqidQUgB2U8R/2w8m6refieHWmf?=
 =?us-ascii?Q?EIT3KoafI7UvdOoIpTI0gm+kZXputDI2cztu8uV8dSQcX2O6v4cViVETC4EI?=
 =?us-ascii?Q?g3sP8C/reuQINehSLJdacvE0Q2D9S07UfZCWfHXWgWD/M9qvtLjqrPPLLVW1?=
 =?us-ascii?Q?DZYmW1IGuz8MPyNmY41XdmMIYgd65nBg82bUkRw28sFxF4wSL2fXlj4eqmEm?=
 =?us-ascii?Q?8/V5V1xFpzNVX3zqKGIHnpez+sm1TAd/jTAseWz+VQcswK9Ttqxa7ZdODwE+?=
 =?us-ascii?Q?ARfhi6+XKbC72+z/3DZ6VocdYjksuoPomRVt9JeUXgYZSnP9EqTfr3RcVJH1?=
 =?us-ascii?Q?6aL1kZxSJxharoS0hMQwIcvWja1JWII93dEMAK0DK75dlSUnHIg1a2MHRkyw?=
 =?us-ascii?Q?OoXbxH7fYszPAIxTmY4wklO2WDHFI5WgEWz5SK3PR3bCQEM9ahwXtGxA08hF?=
 =?us-ascii?Q?JkCRO2825MOIp7WlEqm0JeLX3CObNXUioBsw9ewXcWvxN2002OpSkKPO2Lxo?=
 =?us-ascii?Q?cUoDA9SFK3kMozm5AjHSSabFIQHg/Dyn/SFz7liKoXHUNX43U+jRbHbd4Kb8?=
 =?us-ascii?Q?cgjbYXJWTRCmpQtKpTAur4uMhgvr7mmEBSmsUCalEtYLSWoxuonkAhlhvr5z?=
 =?us-ascii?Q?Gcm0HAwJMzqjrDqj01r/dLxeqX0FMByMXqMOdlKUJ2CJJhrzdIb+oC39oLjc?=
 =?us-ascii?Q?NVXk0NRq7bgd/R1rRdhoRZYth2HrN7pC+/xYi9QSTlK1cBMVlJ5KD6pagj23?=
 =?us-ascii?Q?T7AiBls07t8Ngwi/Rc6rGvjcImH/y7y7cevzAg4C5h7/BdE0fAZnXYcE2tjc?=
 =?us-ascii?Q?t5eo7lUy/Zoe4ElSw6tvb2YOhckf6aYVy8IfTZsQ0lqdnqd8t0sbjxrZsDIi?=
 =?us-ascii?Q?xb0Soe9Z//svq3yiB71IxTEVMgCsz+I8VDBNDFQ9xWGtbPyvZ1W842Dl2d1O?=
 =?us-ascii?Q?MlOpBsPh4/R4F3nXqreKGpSTmtCB+yxrzsMD4rSD088PLUBnAl5VjeiAfvsr?=
 =?us-ascii?Q?15gA/DL9k8Z0e6Z8iYfu1c2Hq6zRKQt2Vo7fWC69JwOOSHvyvgps+KlMv01A?=
 =?us-ascii?Q?hvUkKQNwHGfIvbFikDEZplVS+o/74jk64dCqz7M9d4cTE1/yf6eA11/mEcMU?=
 =?us-ascii?Q?7O2LpNdAoljQVkxL6YqGCnhHakPys3y9pGzA0S/E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2408363e-e662-47c1-203d-08db60eacf8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 08:49:42.3492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: azSmgCBpkB1XVLwcO/RTWVcFWomsH+Fvcu6MN12aCUd1Vr3DrHdiPMeDMQSpaJDDN/Pgtr3rPFqDARniiT6KtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case
 of MFD
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Wednesday, May 24, 2023 8:32 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case of=
 MFD
>=20
> In case when only two or less lanes are owned such as MFD (DP-alt with x2
> lanes) we need to reset only one lane (lane0). With only x2 lanes we don'=
t
> need to poll for the phy current status on both lanes since only the owne=
d
> lane will respond.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39 ++++++++++++--------
>  1 file changed, 23 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index ee6902118860..b8c812c5b33f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2528,13 +2528,23 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8
> lane_mask)
>  	return val;
>  }
>=20
> -/* FIXME: Some Type-C cases need not reset both the lanes. Handle those
> cases. */ -static void intel_cx0_phy_lane_reset(struct drm_i915_private
> *i915, enum port port,
> +static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
> +				     struct intel_encoder *encoder,
>  				     bool lane_reversal)
>  {
> +	enum port port =3D encoder->port;
>  	enum phy phy =3D intel_port_to_phy(i915, port);
> +	u8 fia_max =3D
> +intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder));
>  	u8 lane_mask =3D lane_reversal ? INTEL_CX0_LANE1 :
>  				  INTEL_CX0_LANE0;
> +	u32 lane_pipe_reset =3D fia_max > 2 ?
> +			      XELPDP_LANE_PIPE_RESET(0) |
> +			      XELPDP_LANE_PIPE_RESET(1) :
> +			      XELPDP_LANE_PIPE_RESET(0);
> +	u32 lane_phy_current_status =3D fia_max > 2 ?
> +				      XELPDP_LANE_PHY_CURRENT_STATUS(0)
> |
> +				      XELPDP_LANE_PHY_CURRENT_STATUS(1) :
> +				      XELPDP_LANE_PHY_CURRENT_STATUS(0);
>=20
>  	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
>=20
> XELPDP_PORT_BUF_SOC_PHY_READY,
> @@ -2545,23 +2555,24 @@ static void intel_cx0_phy_lane_reset(struct
> drm_i915_private *i915, enum port po
>=20
>  	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>  		     XELPDP_LANE_PIPE_RESET(0) |
> XELPDP_LANE_PIPE_RESET(1),
> -		     XELPDP_LANE_PIPE_RESET(0) |
> XELPDP_LANE_PIPE_RESET(1));
> +		     lane_pipe_reset);
>=20
>  	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> -
> XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> -
> XELPDP_LANE_PHY_CURRENT_STATUS(1),
> -
> XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> -
> XELPDP_LANE_PHY_CURRENT_STATUS(1),
> +					 lane_phy_current_status,
> lane_phy_current_status,
>=20
> XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane
> reset after %dus.\n",
>  			 phy_name(phy),
> XELPDP_PORT_RESET_START_TIMEOUT_US);
>=20
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
> -
> intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_refclk_request(fia_max > 2 ?
> +						       INTEL_CX0_BOTH_LANES :
> +						       INTEL_CX0_LANE0),
>  		     intel_cx0_get_pclk_refclk_request(lane_mask));
>=20
>  	if (__intel_de_wait_for_register(i915,
> XELPDP_PORT_CLOCK_CTL(port),
> -
> intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
> +
> intel_cx0_get_pclk_refclk_ack(fia_max > 2 ?
> +
> INTEL_CX0_BOTH_LANES :
> +
> INTEL_CX0_LANE0),
>=20
> intel_cx0_get_pclk_refclk_ack(lane_mask),
>=20
> XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to request refclk after
> %dus.\n", @@ -2571,13 +2582,9 @@ static void
> intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port po
>  					    CX0_P2_STATE_RESET);
>  	intel_cx0_setup_powerdown(i915, port);
>=20
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> -		     XELPDP_LANE_PIPE_RESET(0) |
> XELPDP_LANE_PIPE_RESET(1),
> -		     0);
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset,
> 0);
>=20
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
> -				    XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> -				    XELPDP_LANE_PHY_CURRENT_STATUS(1),
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
> +lane_phy_current_status,
>  				    XELPDP_PORT_RESET_END_TIMEOUT))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane
> reset after %dms.\n",
>  			 phy_name(phy),
> XELPDP_PORT_RESET_END_TIMEOUT); @@ -2705,7 +2712,7 @@ static void
> intel_cx0pll_enable(struct intel_encoder *encoder,
>  	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
>=20
>  	/* 2. Bring PHY out of reset. */
> -	intel_cx0_phy_lane_reset(i915, encoder->port, lane_reversal);
> +	intel_cx0_phy_lane_reset(i915, encoder, lane_reversal);
>=20
>  	/*
>  	 * 3. Change Phy power state to Ready.
> --
> 2.34.1

