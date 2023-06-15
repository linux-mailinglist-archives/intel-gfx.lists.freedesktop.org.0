Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 114AA7321B8
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DA110E050;
	Thu, 15 Jun 2023 21:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DF710E050
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686864702; x=1718400702;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2UK5p/RI/ri7TVQuknVWuz8jY8bgO2g8aKrRA8DfDo8=;
 b=B09miUlzRdn9c3hqAKE7pcKwwhS6y7cOqb4HbBfrWeiPTfMucgSL7U+r
 J89YG6U3kwlZzSmOoQveSeN3EFY+P6FDHTmqYsuMJsx+GXz49qmvWkZpy
 FaqA2K8FlAxPFtEcLoENmLVuR5rBZJQWxmIxStjY1yftjbBfT1ZFRCC+4
 xzjCTk5p1TjklRYX177muPkcAvljxU1ztO6Y+D0bq/ZE5YfjPlSiDlrJ3
 BQ9OQgcIkPvMDfZNExs2TiSjajqIJ+/JXg0VkYSEwP4Cjfy9rzA1RKkrG
 7UV0wUt6KDaVtn+O1eUBQOfcMYDOhDFhRN08NrSe1iL2UXrXhbjiapaFL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424977382"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="424977382"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825462278"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="825462278"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2023 14:31:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:31:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:31:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:31:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LcdhYFS+T5/f5I506l5n8jrzeqSENKSlkTpwNuKIBxMvjszJp6xT4/2KUwXT9wmngEgN339U0i1zRsn2bohsOLeCQCzAXvwcCR0Hj0X9KEhuPqZei5r++Nt4vu1qBdiRFSKm0E7BxdecrWj2JCIFNIQGRXAqxsIz2mqdq+g/qY+wpmLLmr5YyPUxuWe5DBuDIh4g13tpNaRzwOEQZAP5ivzSv5Mf8VVpeI7xxKiVGBk//qakWgU//TCJzO733uPgnHMoPlNYTb0URXV7efN8xWZqLSuzqKBtvkiR6fMid+V/0yGzBscn4duKU3WXokYozVu4YzZiYSKxLYIPG31DbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8cs/TVdz7MxTX8kZfBQ0ns5h/EOlqeTOjWslirAPWBg=;
 b=de7XkMjFe/9xBdEJm0ZEad3J4CfUs2KyY7MAIRBh8FPpAXCPaSUyEWzBkJJEdW4/EpWn/Voja1TNyi4HnNjhGFJOxz2gI+yjQ9zKodEVoT3BFgzFXaCWfDoJhByexc8DwrkI5DzWaLqfhdgaoAQ74l+ZWDxty6hA4G+sJpX6FlQgNY5MJtLV4zxp7B5UCOn54Vs1SFE9X4cBeBRhFGh6rL2t0uG7IpMknwWbHDA6spAgOPCjEn92Pcu/iHFrmY+zlf/wmnqB10yWNcCllvGDBRd7oFXS5KdSz9tYqB/43634soKWK3ub0TnibB1sNB+Kg+bjmJ4A32qIyNWQoKQyjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS0PR11MB8163.namprd11.prod.outlook.com (2603:10b6:8:165::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 21:31:01 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 21:31:00 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
 platform/subplatform defines
Thread-Index: AQHZn0ZiB6JWij5uvEKqE2p8/dzgvK+MYrpw
Date: Thu, 15 Jun 2023 21:31:00 +0000
Message-ID: <SJ2PR11MB77154F88F9624258FA0F587AF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-5-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-5-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS0PR11MB8163:EE_
x-ms-office365-filtering-correlation-id: 8723ac8e-ca5c-4a87-3625-08db6de7d068
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mEiWxqSb0wCa3Tf55JoPh7TvC2zNisc0lFeGor8hIJZgBbp/Q0SPDPWVv4N83i1gXFAKFr/NE2q8jzI/7rQgeT/M7zZ2ulqeKKG8d4/gOacRQidO4zoXVl7f1jizi517pVx5AwgaXy9uiF864BDsGStKCHn2hF106s0Uuoh4jhh8hYiWvrmcnsAzGCeQmmOReYnmWCRZ9wWpsPUAd+gAAe1C5jbPQvblBBAaxLjWrltkuYyD2XRICuXlseWlbecYJPphtNMJYy7gt9WBILHYPmXUmJcEt000xISeiqD7XibIz3M2E8UXX9zSNz8Cj2Aj8OPMrITaPUqLVMT417KyLsVWF7TF0W3YPQqyIb4stolRG1zsXCCu2PXiE8Zujzs3aYTgv9jWVzQwTDn0WR/xVrYlVhUx7TAnmHzHIOs65DriyL3n6oWeexI0fi5bz5Aabx/dE0TCPv+NwKZxoh5hSv/59DyRT3C1vD2WRfrmhJhO14CGbdhp9I1Nsbf30aKt7ytUcuiaArlTmle8wEUGPCszJOpd225ByaCmVu5jbUwLWCyMDNeTSqFaFqRjAgklTgSRT/LtnTwweBSpBhD9tq865Nx3BUZZRutl687xMnoSXNSgpGstvp4bTQx7l8d1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(346002)(136003)(39860400002)(451199021)(110136005)(41300700001)(7696005)(86362001)(8676002)(66446008)(8936002)(66946007)(66476007)(316002)(33656002)(71200400001)(66556008)(64756008)(76116006)(4326008)(38070700005)(9686003)(30864003)(26005)(478600001)(107886003)(55016003)(5660300002)(52536014)(83380400001)(53546011)(6506007)(2906002)(186003)(38100700002)(82960400001)(122000001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?32k8MzfZdFtvlczSjOFvJJWYK8LjlzqmPmOrDFS3zAkI327hsoreNNN6stnM?=
 =?us-ascii?Q?s0+OBQDtq/6+yFZlsWYJqBodhJfK7E92HVUBGQ9BYrigFEVk9hdyYNystoiA?=
 =?us-ascii?Q?YYIwYoUe21Jwz+2p4Ki6S+eyzxAeOwzMLZRlGlNFZcZ5OA05FyvG3uI29gL4?=
 =?us-ascii?Q?jYM7cXoT6vU/++8AYVCFxuq7H3D+Agg4BlCYcLVb703KYwqevz2inT5cnOmo?=
 =?us-ascii?Q?2icsM4jnjtH/5zjBvQHmFK8zKWsPQvQgUjX8xZKzYRZ5vpTIFs9fuJdT7BvF?=
 =?us-ascii?Q?qL4wbHvBptRV2X+X9VkvkGRR6CyVlL3C2vgY00nsBecawoh6m6xvve9WlyWs?=
 =?us-ascii?Q?U8W2JsxwhHXhusUWjNWU6k7PnsqqGh2x1vwBt7+W18p5oKiRvTBCL8xmMNLA?=
 =?us-ascii?Q?bZDVkvejDWJElWcAWtJ04UwcWHTyCIT+bWqp7RYdBgpHQ9mw5FEDPj+Kijnk?=
 =?us-ascii?Q?agIt9OmBYQOq617LSneWQapko+E+44CMgqpiw3dSy0lpQTE/2IcD+aYqbBYR?=
 =?us-ascii?Q?+iX4Em0yb6wRiq6EJlmb+ETqpGi+y6vG7rotu65Joo8vMluidMMFP65zyBnG?=
 =?us-ascii?Q?+8/74/Qdix8jO/Ry29a+Yf6GdMVsZ4goSs4nxtcqHnXwjQcLZVbveEOT3jJz?=
 =?us-ascii?Q?Z6WRbSmWD3UnMqvE8lRlP7bB/JQ4WORiQ+rkPg3y7nTHqyKxjRUZacHIx4WQ?=
 =?us-ascii?Q?mbUcS9/gNVGAofEXQLSbCHm4bSMUejN0q6Y2/y3ZfXr6IrkHsNWcDi80Kxhu?=
 =?us-ascii?Q?rf98Pcb0BuGI9hH4bGTIlXvXIKlX07tU95e5rwJP8/ZjgS1bjCvwzlPM899e?=
 =?us-ascii?Q?+/btV3NhvlQw4JWT8FgvzLG/kRYh/ra8xHlzOYRZyV8vKROCIEn6jyJFNQxL?=
 =?us-ascii?Q?XunJ2hjpRAyaCdEvoW6ZJtWqntDu5O0eItTtsLVqkPHbBVtM9FtoGZ7dhUCY?=
 =?us-ascii?Q?I+lQgbt6CjrVEbJVnC8bHuHQCsDJNqpmghZM+a8pHgzPIlbJ8WygSnyKlW9I?=
 =?us-ascii?Q?W5IjGJkIMV8UWc9M44yUYZeUVsz23e3gDl/8LdUJj/01peav+0RGLy4t/o6C?=
 =?us-ascii?Q?CK3yV8O3BtFg9dArHeRBPXsM5MMzp8ZiO59QKRxQkR7wj+qPieR8gKLIkWyz?=
 =?us-ascii?Q?w5V6Sc2iXOe1eKuYgT5ui2qe6/JTb3FI6DGMVL5uHS+oPbUhu5x6M00Yc0C3?=
 =?us-ascii?Q?AO8cwB2rF1nq1Iur/SyCCK4TRDaXy00ngZuHjtzG2W9rWYs2cKLSaUxcil/Q?=
 =?us-ascii?Q?Uis2XV8ztbX4u3w9wyBwEOYW3TtMKFeK1xkVriM01EqBfzJIC7XpDV/dUR6H?=
 =?us-ascii?Q?hzXAJUQUvEFATek2yfkGdsVJ0YkmYaoz956CRZoPQ5OEquaTk1WF8SY+/Xle?=
 =?us-ascii?Q?Edw8Uh5Fwr7PHkBXexM2a9q6Nw0RAUvI9fhzzbC1hkDAV2X8i+ybOvjCz9Us?=
 =?us-ascii?Q?Le0SYYijCFYg6yeHZI9k97Z4CtdNSMHiWB22I85X/W2PLz+Vb1AZA7b/XFfc?=
 =?us-ascii?Q?ocjXpsRstvpSVDS2uRC52yMZrzNKeuUjXcIL8w6cxqYz1UX1RuJvibfOK8tP?=
 =?us-ascii?Q?JTpKGuT0k58gx7COBXSKfPI9nD5vHrQGc9zlFvGP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8723ac8e-ca5c-4a87-3625-08db6de7d068
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:31:00.4202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MLtOGvdGKdRsKv58jujFzn2zQhFVBNXCNc+Q0XAdQwD17MDHkpohbIitvSZ8gihQHa8f+BaytvxdE4lEAABhioKpE3n8P/+ln5okrTjnko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8163
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
 platform/subplatform defines
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

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace JSL with JASPERLAKE.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c         |  4 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_combo_phy.c |  6 +++---
>  drivers/gpu/drm/i915/display/intel_ddi.c       |  6 +++---
>  drivers/gpu/drm/i915/display/intel_display.c   |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c  | 18 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdmi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c       |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_sseu.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c    |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                | 10 +++++-----
>  drivers/gpu/drm/i915/intel_step.c              |  2 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c           |  6 +++---
>  15 files changed, 37 insertions(+), 37 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 59a2a289d9be..70f045da3bac 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -444,7 +444,7 @@ static void
> gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
>=20
>  		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
> -		if (IS_JSL_EHL(dev_priv) || (DISPLAY_VER(dev_priv) >=3D 12)) {
> +		if (IS_JASPERLAKE_EHL(dev_priv) || (DISPLAY_VER(dev_priv) >=3D
> 12)) {
>  			intel_de_rmw(dev_priv,
> ICL_PORT_PCS_DW1_AUX(phy),
>  				     LATENCY_OPTIM_MASK,
> LATENCY_OPTIM_VAL(0));
>=20
> @@ -553,7 +553,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder
> *encoder,
>  		}
>  	}
>=20
> -	if (IS_JSL_EHL(dev_priv)) {
> +	if (IS_JASPERLAKE_EHL(dev_priv)) {
>  		for_each_dsi_phy(phy, intel_dsi->phys)
>  			intel_de_rmw(dev_priv, ICL_DPHY_CHKN(phy),
>  				     0, ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 4207863b7b2a..2acfa0435675 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3147,7 +3147,7 @@ static int intel_compute_max_dotclk(struct
> drm_i915_private *dev_priv)
>   */
>  void intel_update_max_cdclk(struct drm_i915_private *dev_priv)  {
> -	if (IS_JSL_EHL(dev_priv)) {
> +	if (IS_JASPERLAKE_EHL(dev_priv)) {
>  		if (dev_priv->display.cdclk.hw.ref =3D=3D 24000)
>  			dev_priv->display.cdclk.max_cdclk_freq =3D 552000;
>  		else
> @@ -3575,7 +3575,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private
> *dev_priv)
>  	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
>  		dev_priv->display.cdclk.table =3D icl_cdclk_table;
> -	} else if (IS_JSL_EHL(dev_priv)) {
> +	} else if (IS_JASPERLAKE_EHL(dev_priv)) {
>  		dev_priv->display.funcs.cdclk =3D &ehl_cdclk_funcs;
>  		dev_priv->display.cdclk.table =3D icl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 11) { diff --git
> a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 922a6d87b553..37bd6d31ced1 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -141,7 +141,7 @@ static bool has_phy_misc(struct drm_i915_private
> *i915, enum phy phy)
>=20
>  	if (IS_ALDERLAKE_S(i915))
>  		return phy =3D=3D PHY_A;
> -	else if (IS_JSL_EHL(i915) ||
> +	else if (IS_JASPERLAKE_EHL(i915) ||
>  		 IS_ROCKETLAKE(i915) ||
>  		 IS_DG1(i915))
>  		return phy < PHY_C;
> @@ -242,7 +242,7 @@ static bool icl_combo_phy_verify_state(struct
> drm_i915_private *dev_priv,
>  		ret &=3D check_phy_reg(dev_priv, phy,
> ICL_PORT_COMP_DW8(phy),
>  				     IREFGEN, IREFGEN);
>=20
> -		if (IS_JSL_EHL(dev_priv)) {
> +		if (IS_JASPERLAKE_EHL(dev_priv)) {
>  			if (ehl_vbt_ddi_d_present(dev_priv))
>  				expected_val =3D ICL_PHY_MISC_MUX_DDID;
>=20
> @@ -333,7 +333,7 @@ static void icl_combo_phys_init(struct drm_i915_priva=
te
> *dev_priv)
>  		 * "internal" child devices.
>  		 */
>  		val =3D intel_de_read(dev_priv, ICL_PHY_MISC(phy));
> -		if (IS_JSL_EHL(dev_priv) && phy =3D=3D PHY_A) {
> +		if (IS_JASPERLAKE_EHL(dev_priv) && phy =3D=3D PHY_A) {
>  			val &=3D ~ICL_PHY_MISC_MUX_DDID;
>=20
>  			if (ehl_vbt_ddi_d_present(dev_priv)) diff --git
> a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 090f242e610c..106387ff3658 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3582,7 +3582,7 @@ void intel_ddi_compute_min_voltage_level(struct
> drm_i915_private *dev_priv,  {
>  	if (DISPLAY_VER(dev_priv) >=3D 12 && crtc_state->port_clock > 594000)
>  		crtc_state->min_voltage_level =3D 2;
> -	else if (IS_JSL_EHL(dev_priv) && crtc_state->port_clock > 594000)
> +	else if (IS_JASPERLAKE_EHL(dev_priv) && crtc_state->port_clock >
> +594000)
>  		crtc_state->min_voltage_level =3D 3;
>  	else if (DISPLAY_VER(dev_priv) >=3D 11 && crtc_state->port_clock >
> 594000)
>  		crtc_state->min_voltage_level =3D 1;
> @@ -4801,7 +4801,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv,
> enum port port)
>  		encoder->disable_clock =3D dg1_ddi_disable_clock;
>  		encoder->is_clock_enabled =3D dg1_ddi_is_clock_enabled;
>  		encoder->get_config =3D dg1_ddi_get_config;
> -	} else if (IS_JSL_EHL(dev_priv)) {
> +	} else if (IS_JASPERLAKE_EHL(dev_priv)) {
>  		if (intel_ddi_is_tc(dev_priv, port)) {
>  			encoder->enable_clock =3D jsl_ddi_tc_enable_clock;
>  			encoder->disable_clock =3D jsl_ddi_tc_disable_clock; @@
> -4872,7 +4872,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
> enum port port)
>  		encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);
>  	else if (DISPLAY_VER(dev_priv) >=3D 12)
>  		encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port);
> -	else if (IS_JSL_EHL(dev_priv))
> +	else if (IS_JASPERLAKE_EHL(dev_priv))
>  		encoder->hpd_pin =3D ehl_hpd_pin(dev_priv, port);
>  	else if (DISPLAY_VER(dev_priv) =3D=3D 11)
>  		encoder->hpd_pin =3D icl_hpd_pin(dev_priv, port); diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index d8533603ad05..e659f8abaec8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1750,7 +1750,7 @@ bool intel_phy_is_combo(struct drm_i915_private
> *dev_priv, enum phy phy)
>  		return phy <=3D PHY_E;
>  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return phy <=3D PHY_D;
> -	else if (IS_JSL_EHL(dev_priv))
> +	else if (IS_JASPERLAKE_EHL(dev_priv))
>  		return phy <=3D PHY_C;
>  	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11, 12))
>  		return phy <=3D PHY_B;
> @@ -1802,7 +1802,7 @@ enum phy intel_port_to_phy(struct drm_i915_private
> *i915, enum port port)
>  		return PHY_B + port - PORT_TC1;
>  	else if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >=3D PORT_TC1)
>  		return PHY_C + port - PORT_TC1;
> -	else if (IS_JSL_EHL(i915) && port =3D=3D PORT_D)
> +	else if (IS_JASPERLAKE_EHL(i915) && port =3D=3D PORT_D)
>  		return PHY_A;
>=20
>  	return PHY_A + port - PORT_A;
> @@ -7440,7 +7440,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_TC5);
>  		intel_ddi_init(dev_priv, PORT_TC6);
>  		icl_dsi_init(dev_priv);
> -	} else if (IS_JSL_EHL(dev_priv)) {
> +	} else if (IS_JASPERLAKE_EHL(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 09dc6c88ad28..da9962b914f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -500,7 +500,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv)
> ||
>  			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  			max_rate =3D 810000;
> -		else if (IS_JSL_EHL(dev_priv))
> +		else if (IS_JASPERLAKE_EHL(dev_priv))
>  			max_rate =3D ehl_max_source_rate(intel_dp);
>  		else
>  			max_rate =3D icl_max_source_rate(intel_dp); diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6b2d8a1e2aa9..c6d376d414b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -191,7 +191,7 @@ intel_combo_pll_enable_reg(struct drm_i915_private
> *i915,  {
>  	if (IS_DG1(i915))
>  		return DG1_DPLL_ENABLE(pll->info->id);
> -	else if (IS_JSL_EHL(i915) && (pll->info->id =3D=3D DPLL_ID_EHL_DPLL4))
> +	else if (IS_JASPERLAKE_EHL(i915) && (pll->info->id =3D=3D
> +DPLL_ID_EHL_DPLL4))
>  		return MG_PLL_ENABLE(0);
>=20
>  	return ICL_DPLL_ENABLE(pll->info->id); @@ -2461,7 +2461,7 @@ static
> bool  ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)  {
>  	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
> -		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
> +		 IS_JASPERLAKE_EHL_DISPLAY_STEP(i915, STEP_B0,
> STEP_FOREVER)) ||
>  		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) ||
> IS_ALDERLAKE_P(i915)) &&
>  		 i915->display.dpll.ref_clks.nssc =3D=3D 38400;  } @@ -3226,7
> +3226,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state
> *state,
>  			BIT(DPLL_ID_EHL_DPLL4) |
>  			BIT(DPLL_ID_ICL_DPLL1) |
>  			BIT(DPLL_ID_ICL_DPLL0);
> -	} else if (IS_JSL_EHL(dev_priv) && port !=3D PORT_A) {
> +	} else if (IS_JASPERLAKE_EHL(dev_priv) && port !=3D PORT_A) {
>  		dpll_mask =3D
>  			BIT(DPLL_ID_EHL_DPLL4) |
>  			BIT(DPLL_ID_ICL_DPLL1) |
> @@ -3567,7 +3567,7 @@ static bool icl_pll_get_hw_state(struct
> drm_i915_private *dev_priv,
>  			hw_state->div0 &=3D
> TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
>  		}
>  	} else {
> -		if (IS_JSL_EHL(dev_priv) && id =3D=3D DPLL_ID_EHL_DPLL4) {
> +		if (IS_JASPERLAKE_EHL(dev_priv) && id =3D=3D DPLL_ID_EHL_DPLL4)
> {
>  			hw_state->cfgcr0 =3D intel_de_read(dev_priv,
>  							 ICL_DPLL_CFGCR0(4));
>  			hw_state->cfgcr1 =3D intel_de_read(dev_priv, @@ -
> 3623,7 +3623,7 @@ static void icl_dpll_write(struct drm_i915_private
> *dev_priv,
>  		cfgcr1_reg =3D TGL_DPLL_CFGCR1(id);
>  		div0_reg =3D TGL_DPLL0_DIV0(id);
>  	} else {
> -		if (IS_JSL_EHL(dev_priv) && id =3D=3D DPLL_ID_EHL_DPLL4) {
> +		if (IS_JASPERLAKE_EHL(dev_priv) && id =3D=3D DPLL_ID_EHL_DPLL4)
> {
>  			cfgcr0_reg =3D ICL_DPLL_CFGCR0(4);
>  			cfgcr1_reg =3D ICL_DPLL_CFGCR1(4);
>  		} else {
> @@ -3806,7 +3806,7 @@ static void combo_pll_enable(struct
> drm_i915_private *dev_priv,  {
>  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
>=20
> -	if (IS_JSL_EHL(dev_priv) &&
> +	if (IS_JASPERLAKE_EHL(dev_priv) &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
>=20
>  		/*
> @@ -3914,7 +3914,7 @@ static void combo_pll_disable(struct
> drm_i915_private *dev_priv,
>=20
>  	icl_pll_disable(dev_priv, pll, enable_reg);
>=20
> -	if (IS_JSL_EHL(dev_priv) &&
> +	if (IS_JASPERLAKE_EHL(dev_priv) &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4)
>  		intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF,
>  					pll->wakeref);
> @@ -4150,7 +4150,7 @@ void intel_shared_dpll_init(struct drm_i915_private
> *dev_priv)
>  		dpll_mgr =3D &rkl_pll_mgr;
>  	else if (DISPLAY_VER(dev_priv) >=3D 12)
>  		dpll_mgr =3D &tgl_pll_mgr;
> -	else if (IS_JSL_EHL(dev_priv))
> +	else if (IS_JASPERLAKE_EHL(dev_priv))
>  		dpll_mgr =3D &ehl_pll_mgr;
>  	else if (DISPLAY_VER(dev_priv) >=3D 11)
>  		dpll_mgr =3D &icl_pll_mgr;
> @@ -4335,7 +4335,7 @@ static void readout_dpll_hw_state(struct
> drm_i915_private *i915,
>=20
>  	pll->on =3D intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
>=20
> -	if (IS_JSL_EHL(i915) && pll->on &&
> +	if (IS_JASPERLAKE_EHL(i915) && pll->on &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
>  		pll->wakeref =3D intel_display_power_get(i915,
>=20
> POWER_DOMAIN_DC_OFF);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7ac5e6c5e00d..4e557594ba62 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2903,7 +2903,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder
> *encoder)
>  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
>  	else if (DISPLAY_VER(dev_priv) =3D=3D 9 && HAS_PCH_TGP(dev_priv))
>  		ddc_pin =3D gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
> -	else if (IS_JSL_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
> +	else if (IS_JASPERLAKE_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
>  		ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
>  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		ddc_pin =3D icl_port_to_ddc_pin(dev_priv, port); diff --git
> a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 06b464229efe..f61d39d2b0fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -963,7 +963,7 @@ static bool intel_psr2_config_valid(struct intel_dp
> *intel_dp,
>  		return false;
>=20
>  	/* JSL and EHL only supports eDP 1.3 */
> -	if (IS_JSL_EHL(dev_priv)) {
> +	if (IS_JASPERLAKE_EHL(dev_priv)) {
>  		drm_dbg_kms(&dev_priv->drm, "PSR2 not supported by
> phy\n");
>  		return false;
>  	}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 97ac6fb37958..0b34518d051c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -226,7 +226,7 @@ bool i915_gem_object_can_bypass_llc(struct
> drm_i915_gem_object *obj)
>  	 * it, but since i915 takes the stance of always zeroing memory before
>  	 * handing it to userspace, we need to prevent this.
>  	 */
> -	return IS_JSL_EHL(i915);
> +	return IS_JASPERLAKE_EHL(i915);
>  }
>=20
>  static void i915_gem_close_object(struct drm_gem_object *gem, struct
> drm_file *file) diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 1141f875f5bd..6945a0bc9778 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -302,7 +302,7 @@ static void gen11_sseu_info_init(struct intel_gt *gt)
>  	u8 eu_en;
>  	u8 s_en;
>=20
> -	if (IS_JSL_EHL(gt->i915))
> +	if (IS_JASPERLAKE_EHL(gt->i915))
>  		intel_sseu_set_info(sseu, 1, 4, 8);
>  	else
>  		intel_sseu_set_info(sseu, 1, 8, 8);
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a109ecd54944..a62dcbc2f901 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1441,7 +1441,7 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct
> i915_wa_list *wal)
>=20
>  	/* Wa_1607087056:icl,ehl,jsl */
>  	if (IS_ICELAKE(i915) ||
> -	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> +	    IS_JASPERLAKE_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>  		wa_write_or(wal,
>  			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS); diff --git
> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index
> 3e9567f9ad15..3981b890f053 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -563,7 +563,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_COFFEELAKE(i915)	IS_PLATFORM(i915, INTEL_COFFEELAKE)
>  #define IS_COMETLAKE(i915)	IS_PLATFORM(i915, INTEL_COMETLAKE)
>  #define IS_ICELAKE(i915)	IS_PLATFORM(i915, INTEL_ICELAKE)
> -#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
> +#define IS_JASPERLAKE_EHL(i915)	(IS_PLATFORM(i915,
> INTEL_JASPERLAKE) || \
>  				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
>  #define IS_TIGERLAKE(i915)	IS_PLATFORM(i915, INTEL_TIGERLAKE)
>  #define IS_ROCKETLAKE(i915)	IS_PLATFORM(i915, INTEL_ROCKETLAKE)
> @@ -657,10 +657,10 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,  #define IS_KBL_DISPLAY_STEP(i915, since, until) \
>  	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
>=20
> -#define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
> -	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until))
> -#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
> -	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))
> +#define IS_JASPERLAKE_EHL_GRAPHICS_STEP(p, since, until) \
> +	(IS_JASPERLAKE_EHL(p) && IS_GRAPHICS_STEP(p, since, until)) #define
> +IS_JASPERLAKE_EHL_DISPLAY_STEP(p, since, until) \
> +	(IS_JASPERLAKE_EHL(p) && IS_DISPLAY_STEP(p, since, until))
>=20
>  #define IS_TIGERLAKE_DISPLAY_STEP(__i915, since, until) \
>  	(IS_TIGERLAKE(__i915) && \
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index 67054c87bb5f..847c7de50e1f 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -219,7 +219,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_TIGERLAKE(i915)) {
>  		revids =3D tgl_revids;
>  		size =3D ARRAY_SIZE(tgl_revids);
> -	} else if (IS_JSL_EHL(i915)) {
> +	} else if (IS_JASPERLAKE_EHL(i915)) {
>  		revids =3D jsl_ehl_revids;
>  		size =3D ARRAY_SIZE(jsl_ehl_revids);
>  	} else if (IS_ICELAKE(i915)) {
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index ba9843cb1b13..2e78b17843da 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -115,7 +115,7 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  		return PCH_ICP;
>  	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon
> PCH\n");
> -		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> +		drm_WARN_ON(&dev_priv->drm,
> !IS_JASPERLAKE_EHL(dev_priv));
>  		/* MCC is TGP compatible */
>  		return PCH_TGP;
>  	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
> @@ -127,7 +127,7 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  		return PCH_TGP;
>  	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
> -		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> +		drm_WARN_ON(&dev_priv->drm,
> !IS_JASPERLAKE_EHL(dev_priv));
>  		/* JSP is ICP compatible */
>  		return PCH_ICP;
>  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
> @@ -177,7 +177,7 @@ intel_virt_detect_pch(const struct drm_i915_private
> *dev_priv,
>  		id =3D INTEL_PCH_ADP_DEVICE_ID_TYPE;
>  	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> -	else if (IS_JSL_EHL(dev_priv))
> +	else if (IS_JASPERLAKE_EHL(dev_priv))
>  		id =3D INTEL_PCH_MCC_DEVICE_ID_TYPE;
>  	else if (IS_ICELAKE(dev_priv))
>  		id =3D INTEL_PCH_ICP_DEVICE_ID_TYPE;
> --
> 2.34.1

