Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 340934F5470
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 07:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7502110F20C;
	Wed,  6 Apr 2022 05:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6A710F20C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 05:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649221219; x=1680757219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CRsf6glTnoF6ymSeMSDZlKsiwBKSOKLT1ojaJIbvlYs=;
 b=I9lZnzgFe8OfLKY8lgsr7UvN3HG6NrAtKCcDsNF86p+jh/B3uJe97J/K
 VHAzKXVrugYaWF1d6+PogfsVxQzFX9d6+VYLmICXc6orLsMescVvxQyID
 iTwUR/Q66kyDrCjD2NzOEbSfpsitIxYj1Ah/wGr28y2pGBd8XZoxQLKRI
 aYmBTJh3IVCfmJZh9FTNhWZZblfjQjmt9EleTv/c00fAhdDOUCccZrkNg
 PIYgE/RXEC/4tp1Z/Xsdsp079KQXJwO07v3AR7UTFALwPr00px0M31uSK
 88RO68QaZy2OG459ooMrPkcPwMoKBGp9g9fxBldmUGt4O7r200iVf12kn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="259784264"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="259784264"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 22:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="658359101"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 05 Apr 2022 22:00:18 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 22:00:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 22:00:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 22:00:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 22:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QU0OFok3OCcUvsOiYtnTxVYTtKX6TlzA98hBA8hLU/5Z0qxYRr82sAzXFFkZtTsYLpnorPeVCNLWHg+2HWJrclFRqtuTkErshEdLV03ebhXo5lXGVxErXhW8eqRgoWvmqlhoAVM7II830BEPGHAQLvLPz4INICtJOQP4FZ7jdO5S+qfIua7QErW7w6xvwcNtOQIOrutYET39DWr7BRzpbn0av31+070vjLygoehCbAJITLZQpWlMFDn9gkhM3zqP7VR9mpb24Vq+JpFaZfVvtAhv1hnoYeyZkWO9jt5u3mYFJ0UOyYe+uYYSQyim+8raMVl3A+6w0uHbLbcNcVjrYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQXnMPrRiKFOuwHdLWVTabV4EDvdB4ccaZ7NKO3AuBQ=;
 b=D1N1/KJOx8nfLr8VxZoJsRy5+yHAK9m+bjBsXbS/44hnpae4F/tNJvajViHTWB+y6Tcd1mEX4tnI8QIuCGAKj7KxeuYYaKLylX3PQN12ocLt4IvkCr6sNWxuTWASzgW2Kv8DQcYUfNHqgWYXFVGmOUXHWBddE+qZDSdFXUdj9iBI4TdeplHdGsFOtF/Ac01gxowzrUew5ivrcdNljFU8WkU3H5XI4MG53F6fEtdGyAo8zke27UyEk4btY83K1J3CzECSlhKO72WMT5Xcddmd1+oYD8lx378cl+2RWUDCplLd36Dn/nSL6j6kPnBbsYe5vzUyH59LvXXPqI74bkXC1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by BL0PR11MB3457.namprd11.prod.outlook.com (2603:10b6:208:64::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Wed, 6 Apr
 2022 05:00:11 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::216d:6bf4:d46c:f133]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::216d:6bf4:d46c:f133%6]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 05:00:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC PATCH v2 2/3] drm/i915: Define WD trancoder for i915
Thread-Index: AQHYOdquqnPAliAVw0GUBWFMIDLe6KzicpUQ
Date: Wed, 6 Apr 2022 05:00:11 +0000
Message-ID: <MWHPR11MB1741EE53B68259D17FF8CE9DE3E79@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
 <20220317083929.1352468-1-suraj.kandpal@intel.com>
 <20220317083929.1352468-3-suraj.kandpal@intel.com>
In-Reply-To: <20220317083929.1352468-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27b66281-bfa9-464b-5e60-08da178a545a
x-ms-traffictypediagnostic: BL0PR11MB3457:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL0PR11MB3457B9FC5A03D07AF810BC8CE3E79@BL0PR11MB3457.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 22x/z1m/FhyTT9G6X7+rRKoIn9aZ0DVak8U/M3qM0hMCmmqYAFQwd3iunxBh/COz0+CX/aZYwOoxtwJ8LKrjIVzK7An2r4u5Og+LYtsMffKjKEVNpVRuJQUnDGwaJqVhZ4BP/DSpe7Z7bXXsvglNJhvnj0bV0o9ywXXslPErEJOSd1iDwxiificl76i/nFl6NalOIMPt/Ugl50VM9c775QLQSZ+qzINymcP7/Ugk7wbTrjr7KbxDRhJAyRCvh//pPj/XEQ6JpNTj2rPiZVUQOi1J8VouyVcUpMdGN0caJZmlCiU/1+TDfRZz2IZk87rYkQiMK/X9dFArTK9Q9qNDeHWQGwDO8vyv3FUHDZPkw+oynA14Kt3dyylx2kEBCldsqK2dPYd847Yc6kc4MJ9hwu4K6Ht3DS65idcF6bT2/Vnuk+PteFOWTceXwtoJMj2+LuES5Bk2hThXYiCKqdwj6kxw4huTj7rPpxNvaI7eSMreL8GyLeZIKtgE4y2+djtBvzFS3gaGqSxWdrhc2gqYeYJS35zEyd4b43bYlyTmVVRAo8qoCLsIhOpbUObjHzuh/8OZcOUZO+ZTHgQeiKEJCQaLK4j6nuB/t9xnykgikLhpH0SqWw2frldvzfyqW4uzMmxg6UxJ1eZYVELxnlqKXKchulF4mGP96sgEZGPFffgHwi+9m+wtyB+m2DzvVRiv0FlNxr8sBXj8D/uVRHAUww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(66946007)(76116006)(33656002)(52536014)(4326008)(66556008)(7696005)(66476007)(8676002)(38100700002)(9686003)(2906002)(53546011)(122000001)(6506007)(82960400001)(5660300002)(64756008)(8936002)(66446008)(186003)(55016003)(54906003)(26005)(83380400001)(38070700005)(6916009)(86362001)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ofNCAExvyaQUxxPfwX0fTnrmUzDj7ccl2fAPmlV5Uu8EWOs16T0MeEglzFNe?=
 =?us-ascii?Q?BJh4o67AFTVw8j1M4vuDnF7FU8n4pEnd6ijrVFqLuZbzkmbt+9+ovI49t70h?=
 =?us-ascii?Q?/4VSc5tTz6fPZPEjen8KzU+vWm3Y6AaZ44Y/H9Nv9KKZkZitTY3Ym1A2kAut?=
 =?us-ascii?Q?j8ebUCklfVQfw7vOoX8Cwi7BPlrFMO0r3n/x962ls5jn2h5KHXOj7LcFvIgC?=
 =?us-ascii?Q?fuUR7oz7KjFwSCD11l5vM6bxY7MTZsWVAqPFhXjKX+zB0Qd4hPtvjk87QG6R?=
 =?us-ascii?Q?GO1N1V2R/aBE3PiXPPrGSdPOeTL5tFcVwLDgpao5jxGXk9vRrBM/+JS4WkJS?=
 =?us-ascii?Q?ky6bX15YVddhUzdyZgKtQzV1L4jxM8PWGaFulijwCGwYvN1VjnzXLeLHvkoz?=
 =?us-ascii?Q?8udpm8Sr2uUFAFtFZMUqz1lle7BcXWIquNZbo6UWHrdWF/E1uqJEhNHoTzwq?=
 =?us-ascii?Q?lqbaVfvaJripJth9n6PT52KzE/EMd5UBovTAL34wvFJLHSe61csDxU2EIm1x?=
 =?us-ascii?Q?Ra0J8ab/Q4H19EoI3h2cr77aeo1UdKB3cKZhOyG1D7jpJm2Q7pA09EPk9Eus?=
 =?us-ascii?Q?XrAWjZKkMQ1us2wxo4h46wh45l/Tmub/YsD8IdbLiGQCzUfoeNho82cy25oF?=
 =?us-ascii?Q?YYX7e4IO06RQhDIoriXTdnwaPkTt6FffMYtEnqgrMM9aFolz8x8uEu39fKZd?=
 =?us-ascii?Q?DrAJnyzvld2cPJfiHhNSqIvDy9AY+skKSLB/6e2A0uIsotcgrdUzBfkJFnCw?=
 =?us-ascii?Q?6wUWH1z9OZ76OIJ/uLpTkePUB5GaLEESTteFpZ151HGonuVapqbFUYi99yYB?=
 =?us-ascii?Q?Lg25Sy6iRy9ZQdEPWdetJNXViwzMlp0uNFf4oPfPKV7N8jf7k+AJrjHpWXXA?=
 =?us-ascii?Q?SxVxpID5VoS4At+5B1UVOV8ug0uf2moDYot8krGygqYIKjLFwiIDFe2Wg97Y?=
 =?us-ascii?Q?kN9V5Dv7wRWWGIScwPzJ4wcXiS2FlrLDKy92hxdYKOzYbKqolHphZDo3LixR?=
 =?us-ascii?Q?9ohlaq/VMgY+aAkweUKCOwNxPOyNOgPq1Fap2SOw/j/Gl3ZsR4Tw2uAURnZg?=
 =?us-ascii?Q?mRWfVhJyMJ6/XtYJO+/HJY/sIJx1Nopy0PUzzZDijyBAxrac+ndpLEhxqM/T?=
 =?us-ascii?Q?jMu9TetwnkLKxLiC04jp3l6HYEK1gnpllPhswvuMWXFuixNWU+mluWi+Xe/9?=
 =?us-ascii?Q?Rq9Y6rk88XZEDUNRqT09wZmLz/CmS1pG+lm5a/UmrqM2SHMVT/dGWNNsSD0e?=
 =?us-ascii?Q?xM40gvynu9042BA7VydBzs8mgeRIb7ofY+bg/vJFCrc9gI7jcM7P3izMgdrT?=
 =?us-ascii?Q?DNQS7NmqHUPia7p2mkWEfcV6jaYI8ywc1md/UPGMVGxUA2Im/TymSt74BCfw?=
 =?us-ascii?Q?nt/hQ98QYpvqsj62SyxwdGVPjF/6x5k7nLnI4TrJZfb5OOHz6x/Fu93SB53g?=
 =?us-ascii?Q?vbHIq0DhXU24jYAmKdHWepFeqc24CAux/qji6UBb7Sng6/Wbj+nvffyvfv7/?=
 =?us-ascii?Q?iKkZv4UGw+vAlq2WFQMNa1+hHt6EvHrCue9KmqtBBOUEohLm1AUAWT3OXYAU?=
 =?us-ascii?Q?6ivQSzaunJjJawMFBpJJBu+KtrCn5+cttX1X1uinH/uvg447yi6UJSvlFThi?=
 =?us-ascii?Q?nzIX30pdoB98PVky/AGX0azPojjYN44NgDss/dM1jAUdYDuXDU4veHooBnV3?=
 =?us-ascii?Q?J6aPDae12nIzhiNl6ioMQMNJwlRnMld8U3h7Cd1YKVqKBQssG/zgB5IzP4ct?=
 =?us-ascii?Q?mLo40gGtzzTZyuL+0Fi7B7MJCwdNkKA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b66281-bfa9-464b-5e60-08da178a545a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 05:00:11.3074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LegGqpUe4XoBWYum2C5RabbDcJjQareSDETBQhICt2y73/7YR6Hb+Fa6wQ+Pe+WNoqEEy4SKAUGIqfKT78fZyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3457
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH v2 2/3] drm/i915: Define WD trancoder
 for i915
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,
++Uma

Regards,
Suraj Kandpal

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, March 17, 2022 2:09 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [RFC PATCH v2 2/3] drm/i915: Define WD trancoder for i915
>=20
> Adding WD Types, WD transcoder to enum list and WD Transcoder offsets
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h       | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
>  3 files changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 8513703086b7..8c93a5de8e07 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -119,6 +119,8 @@ enum transcoder {
>  	TRANSCODER_DSI_1,
>  	TRANSCODER_DSI_A =3D TRANSCODER_DSI_0,	/* legacy DSI */
>  	TRANSCODER_DSI_C =3D TRANSCODER_DSI_1,	/* legacy DSI */
> +	TRANSCODER_WD_0,
> +	TRANSCODER_WD_1,
>=20
>  	I915_MAX_TRANSCODERS
>  };
> @@ -140,6 +142,10 @@ static inline const char *transcoder_name(enum
> transcoder transcoder)
>  		return "DSI A";
>  	case TRANSCODER_DSI_C:
>  		return "DSI C";
> +	case TRANSCODER_WD_0:
> +		return "WD 0";
> +	case TRANSCODER_WD_1:
> +		return "WD 1";
>  	default:
>  		return "<invalid>";
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7a96ecba73c0..dcb4ad43cf88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -79,6 +79,7 @@ enum intel_output_type {
>  	INTEL_OUTPUT_DSI =3D 9,
>  	INTEL_OUTPUT_DDI =3D 10,
>  	INTEL_OUTPUT_DP_MST =3D 11,
> +	INTEL_OUTPUT_WD =3D 12,
>  };
>=20
>  enum hdmi_force_audio {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index ddbc7a685a50..6396afd77209
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2023,6 +2023,8 @@
>  #define TRANSCODER_EDP_OFFSET 0x6f000
>  #define TRANSCODER_DSI0_OFFSET	0x6b000
>  #define TRANSCODER_DSI1_OFFSET	0x6b800
> +#define TRANSCODER_WD0_OFFSET	0x6e000
> +#define TRANSCODER_WD1_OFFSET	0x6e800
>=20
>  #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
>  #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
> --
> 2.35.1

