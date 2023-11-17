Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D0B7EEB5B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 04:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097B410E72B;
	Fri, 17 Nov 2023 03:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30A210E71E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 03:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700191265; x=1731727265;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CczzLOZQzRFSC7ec7LqWi/IoiyGxOPkobaaQD85EKr8=;
 b=HohaluStIeujmAJVW3mKWY8mT7IebMGfwEio+lXqtQ9B9mZmgWDb+WNP
 ijOhb5Ewqihw9wcNtSUv4YOwUXiSymOZHMXT4IsESi/fzpr5mtPeMU+yM
 ZHYLK1dwhZDp680TyTl9xvBMC5z87GHRZ84iaGLKmc6k2jktUVxzoUhvO
 7DI8J9Qngxl7EI3VyvI+7DrHi157bZtwv83Xj52xJZmNNcHFPoXWFTK0G
 B/r7gaFDtjIlNY3sy8eQI1idCxec0W3T9aQt5U0VA7cS+pTt5lW9WD98w
 AsbMe3MdG11EB+1JWUTvKV7soLRKHwiGjuQDeME8PO+iwokxQ7sMREJkq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="9888026"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; 
   d="scan'208";a="9888026"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 19:21:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="831483203"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="831483203"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 19:21:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 19:21:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 19:21:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 19:21:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bzdzYW/WFiFcVtxTcd5tUCD/A4xD9kVlG18ClLtoJFbXt6QUvq0UIy8vTmuIFiBUfyZN4ptv2G+BeZ/Xw011tuMHqvK9EbEsReDkDSer4/ajcRRmWNctXqZ4QTmeJO9uC7fiPMYdGi+X/n03/Pu+Nc/zksNGagsyzKDAdPJqLibg85ktxPRjhzc2Ha+JMB8QTnkEO1dOiZ7cXuNmAlLY1oOvdE4Mz6UQhVGMkxdMToSH9ktUm2UGv/e07eGXTs87AmpA+AYd7JA0WS7s4tOkA2B2GDBsRaCzIeGP7KgwLr3PZX4Bj8jMnEZuT/aIqWZhtiCvOwIS4UvwpOQlxyibjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROpexYtFstT3WA9twZvTJkMDXurBxziz0+nKQU6uLSo=;
 b=E2To/QYGmMfuRWvJK++y3s8545+6Pd/wv9Ga0qceM+9TvKwi4PqY3HAJmTA0KeJBVFvQzJvb4eEyHxvKD93EJX2OSY3XAiC4CX+N0mEs2v9E24mwFxpzQHmi68tSGAWNYt4ODez9Qx0IN8lRC11wKZXUbJhqZ5DfqD/DY3QN+U+qzuJ5Kgh+32GzcFA3rYboDwAd5l6q27kr0s2STmp54QSvJIQl9RvLIu0yefwS/PmJzrEzPm2VyydkMDrTg8FfTeW8QuKOrFRGRsR5JKdsPvK3vCCViK6F3e9e3onESCsxY7qdGA085IHgn9Y8oc3thjjwuakzzPHuhB2rKmaUew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Fri, 17 Nov
 2023 03:21:01 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7002.021; Fri, 17 Nov 2023
 03:21:01 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 04/11] drm/i915/dp: Replace
 intel_dp_is_uhbr_rate() with drm_dp_is_uhbr_rate()
Thread-Index: AQHaGI+Fur/Xh7iUjUKW1IKDtR13xLB92NrA
Date: Fri, 17 Nov 2023 03:21:01 +0000
Message-ID: <DS0PR11MB8740E32B7C088656A47490E3BAB7A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
 <20231116131841.1588781-5-imre.deak@intel.com>
In-Reply-To: <20231116131841.1588781-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|PH7PR11MB5982:EE_
x-ms-office365-filtering-correlation-id: 55dcf114-f6b4-42c8-79bc-08dbe71c3995
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XaKRXDl0bTcZNweRHoeZmq7mN2PXd5anbdqAenAEwmdPkOYA/5cv0xR5Ymv6A31pIWIeNkmKWDHpZjPa+uwuKfCxqwSCxTX+EByGurAykB50NjxfPpdfiUhseR/SVj0bw9FIhRDU8yRBde9ML5dp+BwAvdZMcV/qD887H94T/uaKUAW+UoMWTJwTCj/zgejQAtfZXj+rXI28rDD6sHfppfPdhz6EBYXsqreuU6BkBJCFXqm0PR9VeDeo9CHkNazEQGxpv1Zp42OXg/SKPHgWyTchS1VbrrQYN2mrtgHgGOrsBAhTNRq1GxtQE2XLREazUoPNMo6DZjm6c9AMKHGqLoqyDA2kTmsYIoa1dF0DazCKMObaCAfCuXMXhpvnxFJBm1lfh5tM3Rd7i9bfsnNsEjhzYlxkS5LjJQJ6w1Owk4nmdLcngAoGxFsvFQzsuAd1G++3XLp1/uaLD9di+XcpQQLoar6/4396ayzrJHn9V1oXKMM4ogem74jkciyIWjum+BoGkQi9LIKbudxFqQFxo4KjAYvCUU8hGGUG3Un0DkhWpodaAvLozXzoYegtUt1eoZKFYqJdWborNcfJf8rrokxOQ3yE+6Lm6vgUC3YSfvKVMOisry7c69QyYT/iQT/u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(136003)(39860400002)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(7696005)(6506007)(26005)(71200400001)(53546011)(9686003)(55236004)(83380400001)(5660300002)(8676002)(52536014)(478600001)(8936002)(41300700001)(2906002)(316002)(110136005)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(33656002)(86362001)(82960400001)(122000001)(38100700002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jFUyAE5ek/i6e5wsdqzWDekI3a6fjD+BAna1/UGfMHA1VRLkhl1s9EwcArrM?=
 =?us-ascii?Q?ZIquLojvWwhjl6kuEZImX0o13Pn1+ruXgoMNU4iUIA4MFuKuCATtOLrEpnqT?=
 =?us-ascii?Q?Ww+fVfjf1zIrXPokxDs0Ylz4lylSdXVHxKXGeTILCNd/2ILGh6rgQkjl8aKD?=
 =?us-ascii?Q?5PBGLjSLnsd2AecoWkXtFyJLUK4E7xcBx6WrSqu4fn7wtgBcxgpD98EZ7WJq?=
 =?us-ascii?Q?a32XYOjylDJ6KXXgs0PEgX87sbUogIsVaBwXtldwntebsQmCbN4+QCokXnkl?=
 =?us-ascii?Q?ktfeTV6Fr9MxqBD/TP+3+bqeP6VQGsQIDYJzoyIDM4ig4bkbFv0SWFRCeZcJ?=
 =?us-ascii?Q?rtQoqUpMGnle/RpgURUT9JE3EXB86cJ+TWVbow6kY07aHRqFYmK9IirUa/F4?=
 =?us-ascii?Q?Z6ksggIMH5JlgSLO4VIJeO2UCjSHyNi9apOFUmk3n9z+9hYmH+tyV2iu2d5R?=
 =?us-ascii?Q?7YfhfWR2YvOXZ00aI9Xhry3lrb760yrfx0y+/nZso5JuBn0Uu8wkqBASTrpa?=
 =?us-ascii?Q?DCoiAMSCjgiacLwA3iwI4L3ZhP2dYJ3P47acDXZlDGG596UKYGFkpd5QVrqx?=
 =?us-ascii?Q?Q/f13bjWMMenKWPLsvbUtOIqqVgELLHDbuCO9R4+QOTgdM4u+sJckJXYQ5dA?=
 =?us-ascii?Q?vPv0KJnaT+JEO4UVHz4uxG6Y+1Bwbb/+2+WD42dFlQ61qSvKCptU8YCdFqti?=
 =?us-ascii?Q?Mb5Z6n+VjL6w7onJRT1pszzaQQfSqc9p34EnUwxRktGtYCCcgg+YxA9sDLmu?=
 =?us-ascii?Q?+395Jd3wNpCIRj7Y1SRoN90cv7HwJrMkC+844U34ToTF9gYCWvVeY9F6OixF?=
 =?us-ascii?Q?GzLdX4Uwp2YIX3UoReuRLf5/ljsksaXd9tNfhoi/mgfEBjfL9f+D3YF9P0oG?=
 =?us-ascii?Q?DLFLnrh34affU/9DK6qRawSIDKfycZIM8gtnFOB+GCm69TGTBkgUv9IQJcma?=
 =?us-ascii?Q?tukQ6Vk3Zb9Ot/GDtQCYT7zmG8CXc+O0gdbub6w0Afy42vdGO56r0CLUwyF8?=
 =?us-ascii?Q?2NHavqg5kYFp/B72P/uXXW+9XeLqrQeISXyl+2SyQtgNx1QhUm5uvpLyAdTQ?=
 =?us-ascii?Q?Ss9eWCNzlrO+Yvdi1mGBM1oSLSb1yNgKjqFBDKsHaDYy5hfuAr/TGDEovM+k?=
 =?us-ascii?Q?5OrkhkeE5eVW15NbGtmhc2D746mJQ8vG3v19vatrH1DaUgh0ytu6Qg1jSWGd?=
 =?us-ascii?Q?vNZJ5S2ylpFHDtD+awQQZmdn95LfS59KEBmX66+bypW7P68EWsZddxjTo0RK?=
 =?us-ascii?Q?L4KqAmyBwNbqnn6Dc7R2YEO+5+XsUhCltZmk4rk0M/M1XATadEyh+f38CWyV?=
 =?us-ascii?Q?QL9k1grjlKfp0SU0cpfo3tew6yZ8FnsMlrp6Z9Z9LKaB7SPAywyqCr+lN11z?=
 =?us-ascii?Q?vrXugNUNnIW94qhVQw4R1z2FhJ8BFG9cMcyTotRBs3rsjJq1H/yGgaR+Fs3V?=
 =?us-ascii?Q?v1pXdWZOPQzHYk2WFoEFL6+Eb9NhzLQ/0d2X1slAb2pmZiwY+pkFzNenQanb?=
 =?us-ascii?Q?vtI9+a+UP0sl2LXr1z8reNAKyLuh+6USPEYIj1ROrpJ3zf/pXHniHp9cfDFI?=
 =?us-ascii?Q?XAfSbfESN2zW7ijz/nTzDCEJcK1R4NyEB4+021tQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55dcf114-f6b4-42c8-79bc-08dbe71c3995
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 03:21:01.3933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: huePPDfHf1DnZFvUnGxmKSVeke3xpjilYQFWQHzznCVM9yPehuwlppaExo1qANDszPwAtRnmwy7TyvHYmIhtwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 04/11] drm/i915/dp: Replace
 intel_dp_is_uhbr_rate() with drm_dp_is_uhbr_rate()
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Thursday, November 16, 2023 6:49 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915/dp: Replace
> intel_dp_is_uhbr_rate() with drm_dp_is_uhbr_rate()
>=20
> Replace intel_dp_is_uhbr_rate() with the recently added
> drm_dp_is_uhbr_rate().
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 7 +------
>  drivers/gpu/drm/i915/display/intel_dp.h      | 1 -
>  3 files changed, 2 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 125903007a292..1e045e4fbe582 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2394,7 +2394,7 @@ add_bw_alloc_overhead(int link_clock, int
> bw_overhead,
>  		      int pixel_data_rate, int link_data_rate,
>  		      u32 *data_m, u32 *data_n)
>  {
> -	bool is_uhbr =3D intel_dp_is_uhbr_rate(link_clock);
> +	bool is_uhbr =3D drm_dp_is_uhbr_rate(link_clock);
>  	int ch_coding_efficiency =3D
>  		drm_dp_bw_channel_coding_efficiency(is_uhbr);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54bd0bffa9f08..1b80747044a80 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -121,15 +121,10 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>=20
>  static void intel_dp_unset_edid(struct intel_dp *intel_dp);
>=20
> -bool intel_dp_is_uhbr_rate(int rate)
> -{
> -	return rate >=3D 1000000;
> -}
> -
>  /* Is link rate UHBR and thus 128b/132b? */  bool intel_dp_is_uhbr(const
> struct intel_crtc_state *crtc_state)  {
> -	return intel_dp_is_uhbr_rate(crtc_state->port_clock);
> +	return drm_dp_is_uhbr_rate(crtc_state->port_clock);
>  }
>=20
>  static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp) d=
iff --git
> a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index e80da67554196..664fa93bbf534 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -80,7 +80,6 @@ void intel_dp_audio_compute_config(struct intel_encoder
> *encoder,
>  				   struct drm_connector_state *conn_state);
> bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);  bool
> intel_dp_is_edp(struct intel_dp *intel_dp); -bool intel_dp_is_uhbr_rate(i=
nt
> rate);  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);=
  bool
> intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
> enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
> --
> 2.39.2

