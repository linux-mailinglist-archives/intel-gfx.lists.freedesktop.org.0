Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788176F032B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 11:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBD410EAF3;
	Thu, 27 Apr 2023 09:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A399810EAEC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 09:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682586845; x=1714122845;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9FHdGCzF3AuzEvVxNcWlkHv7PeAcVcuDKnR/BT2/lOU=;
 b=eS2YEIfD9MVNjwGMCmpFmWz4jsGv8ZF+7rVMTqBj7OcA4woO17oDfisW
 WmxlYk0ZzKfmI9u8xskn7teYf1r0f9ch0RjukOGPC/uxu4pI0vtzn57+h
 DxguKOMVOGT2fg4vpNjp2X77tryz+QTsuV88+uQ8AWvIxvuyu+ZTvJ3Re
 ykkxkJPg+PEzFjP7bjBpio1mI6L6MlOKbzvPg0OJgnoOhwOqarfAIXPpb
 1CmbF3jVF8pq9AODDsC2VM9ULUCDc9qmWBAXh8YE3Yf81L1/jtOuNyzDU
 A98BnaORK0MdBB+XzjqINdtbBYbad1VAVgc8tuImVoR0uY6RbpU7bUBOK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="350227091"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="350227091"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 02:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="759021079"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="759021079"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 27 Apr 2023 02:14:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 02:14:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 02:14:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 02:14:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hjTE/BNxFt7OCf2jjpwIzBOrJJXLzT+agmOnc8AHz05BaDzWPy6CDigH9yat/1SvB1PlKzCwSwkCgZRARaT1/JHl+lzoUdlpvu1SkEv+7gK1cNJoAuyW0ellhDHfxUlWiOGSuF6AYvx9R1H2bTSA+sufGZqoTCBhJ7cD1VwiQqZLOAiWwXY7ihpH0H0CbMKaxAb7ut3u0ecEoK0AZ80BH9KawAK98CAYcnmBEQ80CYAhgjPiUB5PcJwE2Hbfk2K8hYw+JSJW37u9NputxK+00hM+3c1PRLwlWmAmiKFCfK05cym6m6uNrnXSpG1qGN+dv26agi3qAJSMRRuSvKO9hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IpC3FshhDq6ghHc+0bmXTpNZlLRyx8fGNY32+et2QQE=;
 b=hx38nvnW9/3PYGqwjolT8V55vW4T0JqVaH4ZLNfOzurshPPc06zSE/VVzASjROvrIMo8DI4drPSFveJUlM3pQSbqiSsDMlORqXJ8arg0cCoPRQ4IzWIkaKr8yMwju0BATx/+LmE+Y0/kR7vYw6l4SbaQyDWPMQluDGDNMVd1ZZL/Et24rfCerXMQV8GZgns7qK34xLFYyZleAJcI5wxsbPnv7Co7IaJlBZHTPBMA/RMVX/AsWAeaiBktqpTVLebneMzu/qX9RRWQ6T5zjWPk6I3r/8/z3kWpaSQJ711GLuCB1jY+u1pH2qVqWrLSgeoshvQuEkBAV6knO+Di/wCSXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Thu, 27 Apr
 2023 09:14:01 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::963e:a5cc:24d1:e15e]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::963e:a5cc:24d1:e15e%6]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 09:14:01 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
Thread-Index: AQHZc4YvTP4sC/op3UK/YkyGUjjThq8+6cBg
Date: Thu, 27 Apr 2023 09:14:01 +0000
Message-ID: <PH7PR11MB59815F3802283D9489A3590AF96A9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-7-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BN9PR11MB5228:EE_
x-ms-office365-filtering-correlation-id: f6f42312-f851-4f02-ad14-08db46ffbda4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 26MF2kuzO3u+2QXGN+Ksk26sY9gDr/KB9x7RgU1xslaRdIwB7rt5NZ0LFucoxo5AlNlkjWu3Q6Y5a7jdu5vLfkE/CZc0O0qH5nTMBsakAjr82xMh9vwlyfH9l1G/6mm7/OfO4HZcdy7gYfdZGgzlFwusiLNfIFe1jtXks9URx2l4CBgdYey3WUeqNEY4i4efvq5hyZlFv/V2fhiLaSpfQPk5fizLE8SoQFJiQuu3xUJA1lFt/gjeNPqnd5HNNNE6vUuEmofApO5BD/sVQI96Osb15W36kSQEhxaUo2w3Ws3CpxhU8bQyh37keYTnB5f8Id2oc2UGGwCDnfon6W2BFOdCe3739E3Et9Sj10731ygG1PHMT5oGni77xjCJpokVUqFS3Ym6CbBMnwa0pI3TG91QdcLbg9omutoXKieIndRdJu2HNWan1RKH5sWdJSTKXBJUnxSGZgwI1yJ3vpNmv4w+Ee456oUf+7jlBMj47X6I3liz+Sj9YvzFEF40WlbFRq2DnlEZKPJIaW6pZGW0+56Mizo1LH6sMLBbnWQWrQyojM6PnBF93zk1gAnnC0/RTWd6vT8qwa7dwekuXSX0PC+cSZ6gjIqyu1iIghsaSu3P4w+etg4+9U2PzRhohAUT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(366004)(346002)(39860400002)(451199021)(7696005)(83380400001)(71200400001)(53546011)(9686003)(26005)(186003)(6506007)(110136005)(33656002)(478600001)(82960400001)(86362001)(316002)(41300700001)(5660300002)(52536014)(2906002)(122000001)(38100700002)(66476007)(66446008)(64756008)(8676002)(66556008)(76116006)(66946007)(8936002)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ra/MZ1nCpaWr9d64GJifx7wmGQuvMrxBwo2yzxOdE2pztxQJ/H9wwEhgVBJU?=
 =?us-ascii?Q?ASf3szLr7hg8Ytbc6lUKI6WCt/hoBJWbqaFKNAP4yUsyZobcpY8ti+NuMarB?=
 =?us-ascii?Q?iSyQeTe+3TAGECiDySNH1WYYYnC4lj02K6N8CK0NXTHwAkxx9Vkt5f7y0509?=
 =?us-ascii?Q?EeEoK3Q61rLZRMO8AXJtnD7wcGFtV9oYcFCaYX7RQ/iWXGJsCmKZheR/Vce3?=
 =?us-ascii?Q?cGt+LmNlbBD47FsvLcu6BTZOe60DQVM7jfZhg2HJlQzmVE5LNbATwB+P6Yey?=
 =?us-ascii?Q?IU4+pXjbsZk7bsie4f//txucoNjR9xMvd0McV8eqWJaeNyfzQAFfY8W+2lP/?=
 =?us-ascii?Q?V3TXh31n3Wle9l85s5sbkX0fISx1bZS8g9ZoCIooJDycj1OtdgAoAse16xRw?=
 =?us-ascii?Q?C7AaGw+H2083fLAApsdXzzn+2+4fy1l5125KOGWq3mI1smGMZ8NQ57Bu3Riv?=
 =?us-ascii?Q?SnGxmqeHqNkWH6+OeXwqqFh6lM3uDsU0PV2pxfj6y87TfANAX6bvH1+uGafM?=
 =?us-ascii?Q?cA/laxoxEnTg/Bu+csZaXqoqzbwZtGG72vs9TlY5X/+iyuHauj7OjEsj+E/P?=
 =?us-ascii?Q?g1Ad8fd9hGSIHX1RBFNjZYXbU2gz4W20GEhZlQagYzapJU6qVXDipCumtjQ9?=
 =?us-ascii?Q?dmjp20+LwiA6Eo5Pa24Q/n2+IIFHzOaa3aBrXz5gAnhWIy+rWl5nC3+KJXJE?=
 =?us-ascii?Q?2kzM3abXx5W7OcB0nW9NJFnMa7U2sYLoF4sYR5QrXVZZC/X+MZBqhoACpK9H?=
 =?us-ascii?Q?V2cLhNk9roP0pX/Auc4H9/baszNiCsYiecWuLbiDBnSb7L1VpvQC5UxpsJSM?=
 =?us-ascii?Q?G5NbG9K5SJqo3Gu8YMrP+PrPCSwZGFW7z+sODYjss1Xu9DUsd8Gy3SlCGKSm?=
 =?us-ascii?Q?gAgz09DQa5LcWhOMoqzenjagoF7nzB4BZ/5u5JRp2Cg44JBCz5QH3f8HNSK4?=
 =?us-ascii?Q?rO7JQPczRVa6QGDxAahcKr3AjkeBSS5wBXH/sySkzv6keaeXjWwKRouquYg0?=
 =?us-ascii?Q?JfYBWyfKeVXoI9KgwLjCCgZvmX7ajDcTgbxagGVIdOvTbeLFWV4fka/kpe4a?=
 =?us-ascii?Q?u6QH02i/SrBNFhdoFkERX/plLdToaND1Jf00HhGwpGTsbROldFzPwu8yvz+U?=
 =?us-ascii?Q?Jnuk8eFIN+weDUUivyF616YE55TrDfikGDiTI4kxUxf6jKGXH/EhucjYITOZ?=
 =?us-ascii?Q?CN2c/g/1dcvScf+1vRT72RIsOtaF3yxw+LTbRoXqzUvMjS/yoPKzwN17QkdD?=
 =?us-ascii?Q?kOeKu8TKBw9Dg2GqbMTh58VryhAMZQVAN8WBECWEF/SdRLpz7YHN8j4N8mLW?=
 =?us-ascii?Q?B4ej20O9UD7hbkFYWmMtr5UR+/TTCKoR+BJORQ4tENDx6yHE3cgdvWjAa39r?=
 =?us-ascii?Q?T/XEjhkufbA6wyworZ+QHsvApaoTYxcrgMNOjVaf6xxrxsuOSLw1175BZh9W?=
 =?us-ascii?Q?5NEO+4rf8RaClF/vqnDfLvMuNJyiXX3GFAthNFArzVTq9X+4VFFJ7vExtsEv?=
 =?us-ascii?Q?ddug2j7jMPqV3rQ8hkr5hnjNS8CYhvjKlkQIjOAYO54rJVfUatL4IWd6lagI?=
 =?us-ascii?Q?lQZFDAitiqU5jYNg6FBx9JxMTB8yOaXeGlijlslX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6f42312-f851-4f02-ad14-08db46ffbda4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 09:14:01.4971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y31qaLVt6Np5zs6lyR/Yw0EU+Bs+MjuiMjek3p2Hv+Nj14tWxk4N0MjXFiw0fN8X/uLQed2mSn2DWg5/a9u4sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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
> Sent: Thursday, April 20, 2023 6:11 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G ra=
tes
> use MPLLA
>=20
> Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.

Need to fix a typo here. It will be 10G and 20G.

Regards,
Animesh
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f7720acaf58c..4231ba98f075 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2340,8 +2340,11 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>  		val |=3D
> XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>=20
>  	/* TODO: HDMI FRL */
> -	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
> -	val |=3D crtc_state->cx0pll_state.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLB : 0;
> +	/* DP2.0 10G and 20G rates enable MPLLA*/
> +	if (crtc_state->port_clock =3D=3D 1000000 || crtc_state->port_clock =3D=
=3D
> 2000000)
> +		val |=3D crtc_state->cx0pll_state.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLA : 0;
> +	else
> +		val |=3D crtc_state->cx0pll_state.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLB : 0;
>=20
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> XELPDP_FORWARD_CLOCK_UNGATE |
> --
> 2.34.1

