Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7328679A6C0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB01510E1DA;
	Mon, 11 Sep 2023 09:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F369910E1DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694424758; x=1725960758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OpSrKUXkgBXqLAgORe+Ulm+qZAu5oQcnGoQ2Qn+GnoE=;
 b=AtrtkC7G0sZRvhTSsT4HLjPKiacYwt8crRS04OaA5C8mp9EIxY4sD+t6
 4nlzA6wsFOZNIM0cGM3b/MVAAc2n925eTSJXC4oMSMzE5b4tVY8LnlwTR
 XkkK9mKRG75I+jsTl9hn6CmJhVuXZVapODARtdeMn4VCzO/fxmuhlY0Df
 iXTdw7O7VJ82Z0t63QOimW39SUK5VfDMzUoSre+AeWV6+crT5oSQtsB73
 ABggpQmzteXW1euv6z2jI4vfelHbk4W3ZG2MMvLZrO0f/BLX4JbOdX4Vb
 V1zRpJ5dF+SwCqEhbqGwyHWalqWDL7GSUlxLUB9qaIbax34RD9LJOG1SF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444453854"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="444453854"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="808776868"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="808776868"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:32:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:32:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:32:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmQs6Z8vZLX4nZJK1zo9y8eBnESIWWq+bCPLKoPVNszIxNrD8Wyubky7f8cbFCj7fPuaFaYBh/+WIz/DXui80FE7TP9mSGxfZsfFfujg8W5FIrNT49XUP2vXawwh5pCSKoNXkBXVxiajlfm2K27d1ZWXkcPAd1VH5dFkh7OxpFCqOqZZYRNOvSFZr2V6Kd+0VcNoQ1TOQv3Aik71KuGuheyEe/PrpXdEsTs+KRo6FMxwEkBZD9sob8UmfRfqpdKm/mYeD+ewLh2ACTIXD5UQK3jvBn8uxTD1tzbeeAIR9Jopv8/MG+KOPIekn1hDpci3qtSSRPjfMwH/vgphdM8Qtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gu86kw8cOl27/LmD04JWHucv7HAj6uxbE6r3VYJ8wB0=;
 b=CILyUYy4kX44LM3wS4cnPZVezQsIPqrfmBFDoEX1ETcV5Rrznlq/PvuwuPgt96oAU6Fiv3NIqDEL37en57YiV1LY0WD6lqAUlCvAtsflDdtCHFSN/13Y+QEDRKDl0dL1+g9M1hjsSNSb/ZMxijmh9sPzPGwOB9L6CTL46MZoKcLSNzxRhIh1mSA1FQkyx/bf9vK29zxqrLJ5FGFbNtTOV6u4oDex+EUzf+YPyMWQdoYtzYlQV8Fn5yuw2wMKGEtU6elX3oByuaSNHSpr3UVOHnDxgl5LZV6RhbHxbGJ1gCJRueppTlbIdvLGKirsWD8DlIXGA3SiEXFuJ8GLIibejQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8163.namprd11.prod.outlook.com (2603:10b6:8:165::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 09:32:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:32:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 6/8] drm/i915/dp: Iterate over output bpp with fractional
 step size
Thread-Index: AQHZ5G51XxtgosyE3k23GAByXjtur7AVXNlw
Date: Mon, 11 Sep 2023 09:32:34 +0000
Message-ID: <SN7PR11MB6750AF181E69D63A0D03E264E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-7-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-7-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8163:EE_
x-ms-office365-filtering-correlation-id: 9832b365-1896-4a90-ee94-08dbb2aa07cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yQUXI5EFhW64k27Z+rsBUVqNvR/M4xrmz+d3g06Ux9gYhZMcbfuMj0krZMRapr8Uz6O7ky/SipCcSMfJmVYC9YYyuHpAt6Jr0FVdUzo1VwIfbNDYxvUg8UsQ0B6DoaszoiEhgXU6Gd2Zqhl39RsQ/AWc6EImoJw7SmSDamHklz5ZRv/h4MLa7PopE/5jOARfU+Bx8IORt+cJeBDc6X9B7CUkaUdkcLyEou7nf6uygW0SjhqCF8w5ew+2Zccjfa4CH5wmLkwBbgOagdA+VEDtcV9tstHeqkeOjXc6jnOz8PEXtqS98Kn1Y+8WidiqJFeRMQGNbTxUNzNZ7DmSnZd4aaVeymz4odUSX9wGsW+kqG44g/Gj2/jqkHRLul0/k7QZkbEqyFY/0GHaE5s1uPzFELF7EmbK5a0Q0/Y6WHIpsLxg+I1suJ347GW5CyFMEIzWk+mcuaO+1O0s8POAYtqECXHW/LwG1fYx6Dg62Nqa+OFGrMOVdX9yGW4vX2CWV/P9vYl6ytpIKu3f6wmwpp+8MPDTB6QM8C92AR62wNty46ClLAAY2EiBtM/sMhnsbLqnDD0eljR3RcVMi8tGp/xTp/YV1riu8KGFQmOjZvtJJt0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199024)(1800799009)(186009)(122000001)(71200400001)(7696005)(6506007)(110136005)(33656002)(86362001)(82960400001)(38100700002)(38070700005)(55016003)(26005)(107886003)(9686003)(83380400001)(478600001)(41300700001)(52536014)(2906002)(4326008)(76116006)(316002)(8936002)(8676002)(5660300002)(66946007)(66556008)(66476007)(64756008)(54906003)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?53KeooAvAysr8tdbcs2MAFhAsfqpZJ+pRuLy1nICn4nS0Hd9SzJjs2dnZtVw?=
 =?us-ascii?Q?RmIw/GXCssaPKFLo06dBBO0tBy/FngUoseC4z+NU5WuG2enw7uC2hnJHyyte?=
 =?us-ascii?Q?KMS8aNbwWyEQdT2dwC9OxCdC1DvJhtWsZzQENVjRl4huBxIT8UAA9zXcbKr/?=
 =?us-ascii?Q?5qQzcfpghHuQBc5ShlsCY0n2Jx5OhXl5x1s1RoUGrnFhWjPVbfTjfXg5NWZF?=
 =?us-ascii?Q?Z8Ts3tjuqbBb8kuJZBk8DUxI6huOH3BbDkoKYcoA9fCj+wPzSBTJ95DIf7nE?=
 =?us-ascii?Q?TRPW9hVoF9KHdfHNe+FkxP3eysiP+n8ENSoDI8DDqYbNtdC11PGDnWlERPmE?=
 =?us-ascii?Q?wdsOo8exwxCD6xFEkD5scIn45JXVx/+neBlFcA7MEElusy5Kv+/tsXh+ZWUq?=
 =?us-ascii?Q?zIqqEUOKbvbe77acP6Zx1DI10Ph7qCKhpm09QQhbJfdjsFWFysQ4Nd/mzRPE?=
 =?us-ascii?Q?JkAx4lTbUFi8BCVzZopYcOHCWbVL+IzIIsAV2QJrxi21mxTpRIuYL9BkKrUK?=
 =?us-ascii?Q?lDSxqXYGAOWUDiKymoFsA5Jl8oaAVMadfK2xHUYGiHbijLOCPfoFvpAaCSjl?=
 =?us-ascii?Q?4bIZQHrSqsuBk/ZTptNSnvkIp9APGWfFWJdm3qBzYVmNCtMm+1ilI9Udmqcj?=
 =?us-ascii?Q?KYe+PWcyeqPgc2ovHyvABXqJFXKx4ocr4CNpxJFbzJ5qmYDQAvuwagtkgD1f?=
 =?us-ascii?Q?Z6oXSIAy6O8I6gvslZGAhDBrTUnsGxKjecS2VcMKcn2vu5dx2KIWZYyNLQDU?=
 =?us-ascii?Q?0z6F9Sfzne5wHRS5kw5ayzuYewNQKyROex7CQMj2wzcbUgQXGvYqBNlMRFj9?=
 =?us-ascii?Q?rz7VePes4T+Yfx2YrrfCjv/gr+wW06M1rE5a6TxIf6pRwQyfRw8Zmp3tiUKB?=
 =?us-ascii?Q?HWYt3wuzMprIggrf3aOY7TSLNVYZ79+6+/IVI9ZEi1QenhrksOtgeLhWXMpm?=
 =?us-ascii?Q?f2N5uxNUPhMG1P9CdkTxiWb3DtFZ+xBiZ8UcH/mBzXLGNDZpbHQ9NxENAuIu?=
 =?us-ascii?Q?lA5bzvOaEa+6YnjCvhyUGDAFrcBQR3JuCtdAoH5ch/QHxXX0o3cUVtPLVZ8l?=
 =?us-ascii?Q?m8k4E5LolrsMuk2Oq/o3ibNYiPSjGO6Ae24X5XKbFyPioFAGCVHfSeGN1LXo?=
 =?us-ascii?Q?TrYjjUvW99xVkrCWCMshzBwYNsOA2VZy+MplWeXif4QZiXqVf7lOUP57uwMB?=
 =?us-ascii?Q?Ynh7OCdVy3O8hjWYDKeenRVllas9npkFdz3VjyXwG+sHG2YPWP4ztIPBLY3v?=
 =?us-ascii?Q?VK9InBUYd3A7+QPTD5qHdwizsSh4Y+9FCZvZC4Y9NfKhOThBZyrV+nl9qZYJ?=
 =?us-ascii?Q?g1f8RN4W2UEH5OS9OSevm6qnx6+A91XW+unCT0bQ1gK1AfHjPP1iNKn2mARB?=
 =?us-ascii?Q?8CGRO8+2xF1xeMXxDYUQG3lLAyUzuXdHclQupBH3eLOLvbQkmSbmjbSnYwtq?=
 =?us-ascii?Q?/oWiWhup00EJolHSgFQe3mxKcsl1ptZr+WZy1pcLTvWj6rXxBNNX6zJ40L2v?=
 =?us-ascii?Q?eE++SSYUOLWHIzyJREAy5DUXFBp9eQuFVsTci5TTlNiZTv6OJXeA944/TPnU?=
 =?us-ascii?Q?fWKWXkx+/v3bQINRCHLyPBW0hamjyuXnS6ZD3fg9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9832b365-1896-4a90-ee94-08dbb2aa07cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:32:34.7632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sqcLXcNjSwk+xEYlVPV+NTFY31UTOsSW9CSr9g4v6dWPX2TD6CN1As4vJ2iCG1JqxumwAhcnZh1NgBaO+oV4vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8163
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/dp: Iterate over output bpp
 with fractional step size
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

> Subject: [PATCH 6/8] drm/i915/dp: Iterate over output bpp with fractional=
 step
> size
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> This patch adds support to iterate over compressed output bpp as per the
> fractional step, supported by DP sink.
>=20
> v2:
> -Avoid ending up with compressed bpp, same as pipe bpp. (Stan)
>=20

LGTM.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++----------
>  1 file changed, 23 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d13fa2749eaf..90c92f3dc62a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1715,15 +1715,15 @@ static bool intel_dp_dsc_supports_format(struct
> intel_dp *intel_dp,
>  	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
> sink_dsc_format);  }
>=20
> -static bool is_bw_sufficient_for_dsc_config(u16 compressed_bpp, u32
> link_clock,
> +static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32
> +link_clock,
>  					    u32 lane_count, u32 mode_clock,
>  					    enum intel_output_format
> output_format,
>  					    int timeslots)
>  {
>  	u32 available_bw, required_bw;
>=20
> -	available_bw =3D (link_clock * lane_count * timeslots)  / 8;
> -	required_bw =3D compressed_bpp *
> (intel_dp_mode_to_fec_clock(mode_clock));
> +	available_bw =3D (link_clock * lane_count * timeslots * 16)  / 8;
> +	required_bw =3D compressed_bppx16 *
> +(intel_dp_mode_to_fec_clock(mode_clock));
>=20
>  	return available_bw > required_bw;
>  }
> @@ -1731,7 +1731,7 @@ static bool is_bw_sufficient_for_dsc_config(u16
> compressed_bpp, u32 link_clock,  static int dsc_compute_link_config(struc=
t
> intel_dp *intel_dp,
>  				   struct intel_crtc_state *pipe_config,
>  				   struct link_config_limits *limits,
> -				   u16 compressed_bpp,
> +				   u16 compressed_bppx16,
>  				   int timeslots)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode; @@ -1746,8 +1746,8 @@ static int
> dsc_compute_link_config(struct intel_dp *intel_dp,
>  		for (lane_count =3D limits->min_lane_count;
>  		     lane_count <=3D limits->max_lane_count;
>  		     lane_count <<=3D 1) {
> -			if (!is_bw_sufficient_for_dsc_config(compressed_bpp,
> link_rate, lane_count,
> -							     adjusted_mode-
> >clock,
> +			if
> (!is_bw_sufficient_for_dsc_config(compressed_bppx16, link_rate,
> +							     lane_count,
> adjusted_mode->clock,
>  							     pipe_config-
> >output_format,
>  							     timeslots))
>  				continue;
> @@ -1860,7 +1860,7 @@ icl_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  		ret =3D dsc_compute_link_config(intel_dp,
>  					      pipe_config,
>  					      limits,
> -					      valid_dsc_bpp[i],
> +					      valid_dsc_bpp[i] << 4,
>  					      timeslots);
>  		if (ret =3D=3D 0) {
>  			pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(valid_dsc_bpp[i]); @@ -1886,22 +1886,31 @@
> xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			      int pipe_bpp,
>  			      int timeslots)
>  {
> -	u16 compressed_bpp;
> +	u8 bppx16_incr =3D drm_dp_dsc_sink_bpp_incr(intel_dp->dsc_dpcd);
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	u16 compressed_bppx16;
> +	u8 bppx16_step;
>  	int ret;
>=20
> +	if (DISPLAY_VER(i915) < 14 || bppx16_incr <=3D 1)
> +		bppx16_step =3D 16;
> +	else
> +		bppx16_step =3D 16 / bppx16_incr;
> +
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp =3D min(dsc_max_bpp, pipe_bpp - 1);
> +	dsc_max_bpp =3D min(dsc_max_bpp << 4, (pipe_bpp << 4) -
> bppx16_step);
> +	dsc_min_bpp =3D dsc_min_bpp << 4;
>=20
> -	for (compressed_bpp =3D dsc_max_bpp;
> -	     compressed_bpp >=3D dsc_min_bpp;
> -	     compressed_bpp--) {
> +	for (compressed_bppx16 =3D dsc_max_bpp;
> +	     compressed_bppx16 >=3D dsc_min_bpp;
> +	     compressed_bppx16 -=3D bppx16_step) {
>  		ret =3D dsc_compute_link_config(intel_dp,
>  					      pipe_config,
>  					      limits,
> -					      compressed_bpp,
> +					      compressed_bppx16,
>  					      timeslots);
>  		if (ret =3D=3D 0) {
> -			pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(compressed_bpp);
> +			pipe_config->dsc.compressed_bpp_x16 =3D
> compressed_bppx16;
>  			return 0;
>  		}
>  	}
> --
> 2.25.1

