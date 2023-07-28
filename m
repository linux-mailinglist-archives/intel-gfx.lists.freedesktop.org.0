Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28D7668AA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 11:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D4810E6B9;
	Fri, 28 Jul 2023 09:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E684010E6B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 09:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690535908; x=1722071908;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J/jt0q5jpVcmatrHPkWwSsJDobe4RHAY03tGf7pUwrQ=;
 b=CQXxapk2XQK06jKWSoJ1A+Qxlh5ZKrAGgNE+NBUJZZhwpYNUHgtXeWnp
 xo9lbEXOGoy3j7LhTWsw88j8RuZ9JsmRmoVs0exZ0NCpagAbisgilVCbI
 8AWeNuXny+17dZYZvu74MV7r7xu+Hfll8TvGckm316CHk+Ei5lnBPIu+O
 6noVJSZ/v2tipzlj1TFLAViI1KbdTa7FGq/tHk2tlIiiiycL02w2XbUjg
 cX2zOWZIVJA+BKMDuQY71ljyLvc25zSgFeJdH5G/y9MywxTgIS0zKr+Hk
 s63HQbqPJRDsO5my15xVqNRUU5x6VcY0hArl6WbPDuBVcBAOAz/6VqYIt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="353456147"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="353456147"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 02:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="757090979"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="757090979"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 28 Jul 2023 02:18:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 02:18:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 28 Jul 2023 02:18:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 28 Jul 2023 02:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MfXkkDRXjgYHBXjX4nEcy/Rks90pSgw8uqXvd2VLMBE1bq1kQitjmu8kXNHXC+SAK99SWfScMqdPoe3OmEW8CilvdcoHROaJeMOEbY2+HqUgKnfupmp40wadPYGtKq5gvUcKOXMFjFDngVBou2ncXoyRJ/u0CE358cWga2J0bWenJEDC6zqjQFB+5/nlUEYrG102uTdSSCokn/KaXFWpB/nvvzHUnhZv1fjPl9L4iZrwwdbq2E8QSx1q5QILH/gusxa3XIQwHRlaZfyYwVdAzF+44fVUtlXW7pOJOzguh7GOFb16ua+u4g9yf5zdwZiusG0Tp4jTDx437worYqVSaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V7FbXro20tjIX4+YTtfXdUKvQptLl/+Ewf3YCQcq6BQ=;
 b=FMQkAtwMv3Fml1oaalaqGIRh5fA7JdLFMw5tCZzPXQL4QfAz+d17h+DYM/O7KmZimzMYFbPoWuLSt/nYGc57vPBfNadEtDwfT/jsqZ5qfxtiGj954GK236E+vAX4Brkbeh7F8EA9hMPg9eQKX97WZgU9rmFoaI50uCCycgN8fNokZQwu4O4YQ07lAaRfrkqlnq09DWs7sJPggEX5eP6X06gmrKeneI4yZQUveNu7CTTyjBaGZP0rYq1nrbEYyXUK6tw4SeJUMcNRiHMUtaFWyHai05bDuU/oy7T40VFteBOl0dTWSFqq2Sv08riYxRp1ttb/3RQJdftLZl2bkv1BOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by LV3PR11MB8725.namprd11.prod.outlook.com (2603:10b6:408:21e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 09:18:11 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::d383:a84c:6dee:47e3]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::d383:a84c:6dee:47e3%7]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 09:18:11 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
Thread-Index: AQHZthZyyBN/A0Qms0y6bhvLU7TOba/O+4mw
Date: Fri, 28 Jul 2023 09:18:11 +0000
Message-ID: <SJ1PR11MB61292C56230D5D4C493D9FE1B906A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230714053733.2117730-1-arun.r.murthy@intel.com>
In-Reply-To: <20230714053733.2117730-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|LV3PR11MB8725:EE_
x-ms-office365-filtering-correlation-id: 69f9cb17-8786-4c33-6b0b-08db8f4b9094
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hvu8zO1qrjM+hy5cy4leAGmz7mT5zn/36RQMl7LKdm/K+9A+ImUr+zgZicqcVegM2KIZn1QldaX9R+lfXuZBKBwTln6DQzuGdLl1zU0I5djF3e+Bgd+/lXI10kVxsiXiUJotmDXgGVH0qeeXyT4g6V4YwROE9HaJoMZhEo/TdRz7wFuI+fmwEHnxsV1zsphCyWC0jzdGwXcb3tJthLU5caQ2TU5EOf0CrnGZU5NWt6zcJnWobd2qGyZ1jqHRKIqdHIqjpsjMPiV4nfnBmIYaYbZh1k//Vh+otoLrJIKbTexsVVG6Q3DXugfnpXzPEafxWoZiMUjBwooOV2Rmpaai7K0iuQlvRm44g1k9dFkqbazwSADf88jgNKrh6zBUP6KRdFR7Ot1nzJ9xP5N/BB+S+VcceNAsDTuDwfLokDCuegB7mWlc4xTG7LeeMP3PcHGQ0wgq6UEQ2cCJZAliPwVlTkY3/fWmAeBquU+QFkIZlEieMn60ehRYclmO3IKKET+V4E2I2bdHHkg7kjJ+Kdwrw62KpZ/jos5Bc7Fp4cHH7F7WhU+SIDz8+7CsMEXQiAfX5Zfk/JVGzhXtalVwFegaIifIWNnCCv1ryRUTkLJXO45YvGx8zDIvAOVap8OzGowI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(346002)(366004)(136003)(451199021)(2906002)(316002)(6862004)(8936002)(8676002)(52536014)(5660300002)(41300700001)(38070700005)(33656002)(55016003)(86362001)(7696005)(71200400001)(122000001)(478600001)(82960400001)(26005)(6506007)(186003)(53546011)(9686003)(83380400001)(66946007)(76116006)(38100700002)(66556008)(4326008)(66446008)(64756008)(66476007)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uadoCLNOi8gLQYUncnmlfP3xOQBUCKrYXYb9njOEId9fo3+xCM3Z54YcjeHi?=
 =?us-ascii?Q?zb0pFjBt6J0uwks2jwYdXjzEHg56KWfST1+n8Pat52akyIcR8wiG2TAcUy/n?=
 =?us-ascii?Q?VuT4t2X0oMqU7rIJFdPJsjwnWM3Tbbd2VSugKaG/t9njcJ0fMy5eFLQwY/zB?=
 =?us-ascii?Q?toZSnHVUJ8b4fMuxdgGFSNjqUZli265bDRW3RhAseUpK68PcfG4HJw2TQmsm?=
 =?us-ascii?Q?16kDLWdLOE24g1625EH2HKDKGV7rpHOTJlaYalJOBoygSsUtYcqdbUl6PVpN?=
 =?us-ascii?Q?ihvs1NXxlvZcw6+NoRW2PmUJDUUM79U7PyKHFSNH2x2EIods5d5rxmyKU1/j?=
 =?us-ascii?Q?1beugGaaw1A2Gyfzo2epqjPUgd8xNRLbdvanh+GjS39FmwGjBEA+Kz6NHaOr?=
 =?us-ascii?Q?hLqFyytMBsPu+FQ6o81qGf+3YMryHcAahcqx4wRzC31y4RZ+9f5GmK4h6QLo?=
 =?us-ascii?Q?v4ViAQETKgh+SbVZRk2LOrBYzQu9HWYSu0x0w5Mf4uXRy8qA9FvZUBE48vTH?=
 =?us-ascii?Q?kxks4fFhvIriIzQs9oyeo0rVYuau5jN+GNcKVEgmxwpS3wk5Yub0neXCnoO8?=
 =?us-ascii?Q?IkBA3lYSIGNTq4UxaB4shjZYcR1QwKTcEAvsFQ79IRzpEr/bVOr/nuODbeqD?=
 =?us-ascii?Q?gpIJsCZosWo6BL36jvmusz0RUFPOIEgUC84g92ljX5H38hlta7IUOXGZ0swU?=
 =?us-ascii?Q?38N1M4xEbKkd1EFcrAfTtr/vnU/QrUcnqhEHjo9Hj+jytiZvblQIRi8ksPJ4?=
 =?us-ascii?Q?VPFvf38GYHRPVaeL/L97dbyaDhJnMOg4FSTJ9UiJdLfpbJQ8VU4LCCzI7wXU?=
 =?us-ascii?Q?ehK0lDDbAPkwe3xYQrf9ptQVaxL3ymOjLR1QWmGUgEMrTLW0+bmuBnEPidZ8?=
 =?us-ascii?Q?svrKForvbsVkSxWR9WVBKeHgEtrMqOXsUYylsLc2fChciv/6ipYrOYrfPkPx?=
 =?us-ascii?Q?1ANuV2qA3tiEc8dpiD7MnVV+pPsC/7B/jB0xs+xO6adP1SV+GyTxWf77UQJs?=
 =?us-ascii?Q?fIKTS7HtFujvM+UOE7HtKPIFAw2+GZAbNgEyfpkA7Yy6cVgU2rjApMzbfEy/?=
 =?us-ascii?Q?Ab/zKFzL4dmo+YMLGUJrI3OMRRMjs5/pRSSU12A9+nweL+6kneb0pWURKKwO?=
 =?us-ascii?Q?d3MAi567EN3VZWviUPPKVXf09qOCYumZLMDXJY22kk+ITpgGcA/N14uWWAEw?=
 =?us-ascii?Q?/75VVWdp4ogJbpf5LZu/mA2DwPJ4nNtxnZ0x2qaIaNDO1mRqR9Z/Y3sKzsN5?=
 =?us-ascii?Q?nfAF2i/rUqZe1fSArbiKczP/Ah/tQJYiTLf24DteXH+UYaTAsxdS9fFVVjpj?=
 =?us-ascii?Q?qS77Kf0CX8L76LeRpe933cbrNA/3SOJoywQrHxduloyNRJqOTPlyyZR1DQZK?=
 =?us-ascii?Q?FT300gSayLFCpRKkFyKBLIpdHZrccSHnizBOIMYQJ9OoZ3VayklHj6am14az?=
 =?us-ascii?Q?4mRzmgxw45UssTc/qGWOsadd6oYyrxKMmC6gzXpEV0h3xPmKrCthKZH4U43g?=
 =?us-ascii?Q?m4Q9WKqEjzyEbOVxXwU7PeVkqFxOsHBKjjm4Gt/VOkKMMqd7Hg1NsR3x15Uq?=
 =?us-ascii?Q?gVsVicJMuA7rF6JWrIFWmmrxlxvLNF6xjNFWAIs2FqZ/sJRXbem2ONWvcPAv?=
 =?us-ascii?Q?gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69f9cb17-8786-4c33-6b0b-08db8f4b9094
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 09:18:11.3727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BsSNhW8zR11gJOm4QEg2uNimxxlsG0u1x/bViTwaAODTEKCE4gDYg1FwG2wIERuLTEEkprPupK8kuTXCQRIrwaho58M6Jy6vie89vMQKAW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8725
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Arun,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Friday, July 14, 2023 11:08 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC e=
nable
>=20
> The debug print for enabling SDP CRC16 is applicable only for DP2.0,=20

DP2.0 and UHBR?

>but this
> debug print was not within the uhbr check and was always printed.
> Fis this by adding proper checks and returning.

Typo.

>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index a263773f4d68..4485ef4f8ec6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1390,11 +1390,13 @@ void intel_dp_128b132b_sdp_crc16(struct
> intel_dp *intel_dp,
>  	 * Default value of bit 31 is '0' hence discarding the write
>  	 * TODO: Corrective actions on SDP corruption yet to be defined
>  	 */
> -	if (intel_dp_is_uhbr(crtc_state))
> -		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> -		drm_dp_dpcd_writeb(&intel_dp->aux,
> -
> DP_SDP_ERROR_DETECTION_CONFIGURATION,
> -				   DP_SDP_CRC16_128B132B_EN);
> +	if (!intel_dp_is_uhbr(crtc_state))
> +		return;

I see that while calling this function in intel_ddi_pre_enable_dp(), we do =
have a
check for for DP2.0

if (HAS_DP20(dev_priv))
		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
					    crtc_state);

Should this check be added within the function too for the sake of completi=
on?

Regards

Chaitanya

> +
> +	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> +	drm_dp_dpcd_writeb(&intel_dp->aux,
> +			   DP_SDP_ERROR_DETECTION_CONFIGURATION,
> +			   DP_SDP_CRC16_128B132B_EN);
>=20
>  	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b
> enabled\n");  }
> --
> 2.25.1

