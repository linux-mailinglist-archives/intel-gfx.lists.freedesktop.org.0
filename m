Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2957478755A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FC610E025;
	Thu, 24 Aug 2023 16:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632A110E025
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692894522; x=1724430522;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=z2tteY2fSrcOyu3vtE4ag7Jpraoqqz/z6AhOyYqunbU=;
 b=YV11v4pohdgPT8th0rVaxDr90oWJ/PpROGEul1GrmtUucj9C93pda+To
 ucpBDiY73eIYx2Fbfq1p7womKPAiWqA1PPTMzT7k0LQaqmsVzd1X6BRxX
 8b23Y5BhbXXtRLcmQTXm3dITYqHJqATWX01xX3qHYMtiCArM7UUfrYaPO
 YlzfK6y5fxK1XYboOY3CTmZ4s1333UnbUCt0iRdLb2LRbKHFsnPspItlw
 7nZlkbEEm0lMAmcqXsP0u+8dev3a8C/+eDhAfJi9y0d4tebZX3GcamAge
 CemE5ocXsKzNnpbOL89+r0C6O3iVBFHKKdCxxf4AMXHi7FDlRBxMQzdNa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="374467022"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="374467022"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:28:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="807180555"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="807180555"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2023 09:28:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:28:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:28:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:28:40 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:28:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RMpFSpo5MdoneyuVRMhBHMippe+HtRxyHMnlEpn5a1K3CErbETyL87x3QuGznkWO5/PrgObgWfZYP4MowNtz/IYZsjK3eQaTIfMjrBWjtS5K9x/crjh01nNMUEKkJilHA70tUAHYuUUdfZVl4fpJD6t1fXKfQz78a1GW/sxngaWLfE67mio6+76kSNxc6C73/7l2Nq/39ChQmDYj1Zl342NKy1XHzuzxTLh9pBGjicBC4mkrw4Bps7hBRjiglBSk05PW6LiadXAxrwjQec+0Ax3gHE070EG+xncwMIyHTlz6L6n+ds5gmnDfvKzOEtlZpFLcDGbzr6vU4IVM6zFYQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtzqxROmnBw/04n1tx73ZYqs5OM9XW+dedghbG3Z4jg=;
 b=CeiPEbM1E4tzSrs6L2ahK2ZEct69J25jlgjb4yKMP0AThS/+p0bz7cBsvvmgI1dh8Ef938eDPF+ryjJpZBcGDT4+1K/ZX7ndGsO9VebtHySwreZEoa9ipoEK7v8DVmUnTVqSk6nmcm3/TyYj+yNCHvbIpI39nAbToZnLJLwNXOM7m5j9uj/5KEVtz7HJ6Um8JsMGg21Y/HQiJKLPfvRiKijRQwRmBr371JZyQafqPV3pb1whAuno3Uu7jfVajqnh9VelKrU7Cv8XNQqQIaayF+B+Va7dLLPdA8q2Igcf+jAv+mMGNt2iNAWL4+hblZOWjYvi6Dw5z2KF6FJzmsQFig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB7273.namprd11.prod.outlook.com (2603:10b6:610:141::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:28:32 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:28:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/9] drm/display/dp: Add helper function to
 get DSC bpp prescision
Thread-Index: AQHZ1PIpqA5aa6hYVUCIJKIf00ajCq/5IUYwgACEorA=
Date: Thu, 24 Aug 2023 16:28:32 +0000
Message-ID: <SN7PR11MB67504EB2A1AE729A53280FEBE31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-6-ankit.k.nautiyal@intel.com>
 <SN7PR11MB67501F566DBD033C37496D03E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67501F566DBD033C37496D03E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB7273:EE_
x-ms-office365-filtering-correlation-id: 13e6a1db-fbbf-4354-d037-08dba4bf287f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8fL+VijAfOb8ULdFz4s3z2oKOPm1URSXwRG9Tlds0ozIs/UQ7NYLHqnRgxXed67BXx22Gcl0fjVQCwFTjoBHzSHsM+ibWBMwi599T2kdY+7fDAM/82PvM8Wvz7BW5RVjShxhRT1dzkKYfpjMjRcrwzZ9lqhoM2SCsmo1KB91YXjT52/nCXngBVcqU5NqeF5V8QFtWcgnG02g3SzZ1VV8M7L8e+5t1QfHhBimjVIER8KfXKGFV/iXNIXlsn/K2B/IpaAtVC1F1H8h1gnycEZ2hDSWFNXp/kVBFmVwyi9Acm8fHbsig7wTc8dUaeamNSXZNFZaAcbwmNXoalPL0bePkHY6pWhL7WRc8lBlTTzDDczP6goaLg31TxCTkyg9T2RLLs46+gKOKxobEDGwbLYGEwebz2E0gFbeoEbrY5hRAy/0Kwc7syg/N/s1gAU01kS8Him5LiHhszPeigZTJ7WfFld9E11dTFH7dsQQEx8LqvPgb/HsnWd3spEg5A0ZBDfX/ve2fLaXcvx3bMR6qUx2KkFdkRoyM01OzMacb0FgolGrLm8jxxdcturpQ6vDawdLBlZX0DsSRgim02tU2juCUMBAtdd6dwAEJY3JE8YxQQw/azciOcaeqFA8WRR1zYcU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(396003)(136003)(186009)(1800799009)(451199024)(66446008)(64756008)(66476007)(66946007)(76116006)(66556008)(316002)(82960400001)(122000001)(478600001)(110136005)(26005)(55016003)(38100700002)(38070700005)(33656002)(71200400001)(41300700001)(6506007)(2940100002)(7696005)(86362001)(2906002)(9686003)(8676002)(83380400001)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l2iS+2RlJh8Kjgkk+2KP6L8XEzbYHLX7/2wQNKPxXKG62empphipfsd8ublA?=
 =?us-ascii?Q?vbPAma8qPXGLerzm+UYSMltT3wrU2MbU1b3Dd1cw0wEJfdSP2wFDkd60WO3J?=
 =?us-ascii?Q?6NgwSKYg9TgXKGJYBgJyueLfY9iFKA4x+GHPpFD46IrCiI7XfJjRKcxuld5h?=
 =?us-ascii?Q?ODbejes9/jP5n9nDpQTa/MKDHwB+op6KlVEGafeX7TX7Hmwq2juWgAmR1zdl?=
 =?us-ascii?Q?3O/54d2+szxs0JNg8b52Vaq/ilw1052H8zH1XplxL7uthcNQ5EDxNgkOskpz?=
 =?us-ascii?Q?YITFVUuPlzVk41IAKu0/2T0YFY1JGrqYiqv4zan7wFfNyQ7FX3iffCgXipCW?=
 =?us-ascii?Q?3vj0Y+zU0Rc3fT4inxEeFyy7QtNkTbfOWx/I9dJZd+sz8V8Ye2dgHP6R+wG5?=
 =?us-ascii?Q?bF1z8CX76mDB64LOnLJ6AxK677o55r6Sl7bSAT3P9LX94TT2sPYkW85Mdjah?=
 =?us-ascii?Q?bODdgGrOGsD0vUdIoCsZV3DTMT/fqGFV1UFmE3FTzrI1fL3Yvj6bkX4PGRrm?=
 =?us-ascii?Q?MhFKnHSEO4+GNKbOc3i1Z6dhTj7miE3d/VqR4PZpw++/C4f0iYouELzQxCOZ?=
 =?us-ascii?Q?JHBPLL85QTaWuTV878oE0mRG2GnUb26aPJ6VUq1o7laMzIsl9Y0rsJJWwN7W?=
 =?us-ascii?Q?44iplukVoCSlHK5uWRJGlKPo8sO8YHEoQBVegslWYWCLTFQQlNo3+2BGOJmQ?=
 =?us-ascii?Q?Ek/TRJFQTHNmYNwjQbcJ/euJYsx3NtT6W20lF3lFCb7LRKt3KrxCxNObjAGc?=
 =?us-ascii?Q?gp3aKx7HkDosmTvEWgwBL6x507dXEM1sAyU++aOE8kzav1LXSOzdvkFFxQan?=
 =?us-ascii?Q?jjmCisXyp+SHyfKXVnhJJsmAisTVjV8N5N7Yd0mEwXsBKQ8LbSvWzuvr/dGG?=
 =?us-ascii?Q?C1T4aNTHKpH/OsdEg2Y1zG4if8yTkrp9YggZ+IrRbGfp+COLgP7dgK6aC2Qs?=
 =?us-ascii?Q?8RU6fhy/TSwTPXmEfAUEyhREmieUOGJEXL2LhBp+OKiUHQb+UY59NnnRNlML?=
 =?us-ascii?Q?QJq1S6e6nx+e6ebfO/TRNbTy2woRQjTo8/sZKHtPxaQVKofKYeLMcIzjJWVG?=
 =?us-ascii?Q?8f5rtPaQyK9n3q2IYaQgel4znPFLkSVghWTVbE4WTvcx94DIKKo0f5o6ubXU?=
 =?us-ascii?Q?Z99LcXrsY1nLu8erFBMySp9pAgpHxm48jK/vq+56ssjG/V0aqZLSwUVAMcXI?=
 =?us-ascii?Q?nUoFaTCeQghvvDBJXoOkUC9qY3LbicCzCVYPx1qt35eRCZoRD7s7/IfEAN0V?=
 =?us-ascii?Q?FlWxjJTpB1vVyun6DijOVJP7YQiwFUGOkEmMYuENnCxOI7c/zp9IANzboiT7?=
 =?us-ascii?Q?Mgxg2OFVmtMwUVsUKkNc0nS3jFE49IvZ2csnwCJr44OkCt9e6H2MkH+qjCj2?=
 =?us-ascii?Q?kgLWGr7dTiwyMH8Oqm27hNvFBNfMyXQ+27FojCSTp01T5txMh/IpD/uwHiuK?=
 =?us-ascii?Q?K5XJjR4LTVy5RwJ6mtPFZgzTltt1beSNhfk395n9Vl9MB0mMxtkHf+snv6tj?=
 =?us-ascii?Q?oQC1vWd/eXcNodKyI+x2vl/rRDMBY93pEpPe+9EetxHza314rvDk4WHcRI4o?=
 =?us-ascii?Q?ZwAlNNairpzeKXzHXc1YDh4A6ET3cQNTQi/9Fogk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13e6a1db-fbbf-4354-d037-08dba4bf287f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:28:32.7626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ygvX+rjgjiXyR1P7lqT0rV+fZWShVaracboL+f28nPnXhfPz9aL2G6L5b2iSI2mUw7t5iN53N9qGlt9blJuIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7273
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/display/dp: Add helper function to
 get DSC bpp prescision
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

>=20
> > Add helper to get the DSC bits_per_pixel precision for the DP sink.
> >
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Wouldn't we also need to send this patch to dri-devel

Regards,
Suraj Kandpal
> > ---
> >  drivers/gpu/drm/display/drm_dp_helper.c | 27
> > +++++++++++++++++++++++++
> >  include/drm/display/drm_dp_helper.h     |  1 +
> >  2 files changed, 28 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/display/drm_dp_helper.c
> > b/drivers/gpu/drm/display/drm_dp_helper.c
> > index e6a78fd32380..aa8ea36211de 100644
> > --- a/drivers/gpu/drm/display/drm_dp_helper.c
> > +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> > @@ -2323,6 +2323,33 @@ int drm_dp_read_desc(struct drm_dp_aux *aux,
> > struct drm_dp_desc *desc,  }  EXPORT_SYMBOL(drm_dp_read_desc);
> >
> > +/**
> > + * drm_dp_dsc_sink_bpp_incr() - Get bits per pixel increment
> > + * @dsc_dpcd: DSC capabilities from DPCD
> > + *
> > + * Returns the bpp precision supported by the DP sink.
> > + */
> > +u8 drm_dp_dsc_sink_bpp_incr(const u8
> > +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> > +{
> > +	u8 bpp_increment_dpcd =3D dsc_dpcd[DP_DSC_BITS_PER_PIXEL_INC -
> > +DP_DSC_SUPPORT];
> > +
> > +	switch (bpp_increment_dpcd) {
> > +	case DP_DSC_BITS_PER_PIXEL_1_16:
> > +		return 16;
> > +	case DP_DSC_BITS_PER_PIXEL_1_8:
> > +		return 8;
> > +	case DP_DSC_BITS_PER_PIXEL_1_4:
> > +		return 4;
> > +	case DP_DSC_BITS_PER_PIXEL_1_2:
> > +		return 2;
> > +	case DP_DSC_BITS_PER_PIXEL_1_1:
> > +		return 1;
>=20
> Shouldn't there be a default MISSING_CASE to throw a warning if its none =
of the
> above case Occurs in case a addition bit for step is added in dpcd going =
forward
>=20
> Regards,
> Suraj Kandpal
>=20
> > +	}
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(drm_dp_dsc_sink_bpp_incr);
> > +
> >  /**
> >   * drm_dp_dsc_sink_max_slice_count() - Get the max slice count
> >   * supported by the DSC sink.
> > diff --git a/include/drm/display/drm_dp_helper.h
> > b/include/drm/display/drm_dp_helper.h
> > index 86f24a759268..ba0514f0b032 100644
> > --- a/include/drm/display/drm_dp_helper.h
> > +++ b/include/drm/display/drm_dp_helper.h
> > @@ -164,6 +164,7 @@ drm_dp_is_branch(const u8
> > dpcd[DP_RECEIVER_CAP_SIZE])  }
> >
> >  /* DP/eDP DSC support */
> > +u8 drm_dp_dsc_sink_bpp_incr(const u8
> > +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
> >  u8 drm_dp_dsc_sink_max_slice_count(const u8
> > dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
> >  				   bool is_edp);
> >  u8 drm_dp_dsc_sink_line_buf_depth(const u8
> > dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
> > --
> > 2.40.1

