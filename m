Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA3269DA10
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 05:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502B910E12D;
	Tue, 21 Feb 2023 04:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1037810E12D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 04:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676953259; x=1708489259;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4Kqc7efF4rSyxUztG38yNqrO3hs0HsoJmndYcg2aAMw=;
 b=H5YDkSJQfHx7pQH97DrIBumiq8dmH2PFxk1V6YCX42RdHh6uubFiqgEe
 ZpHhxNRyYd9SaHQKnv4VpRzrj0tH/Z8m1o4AYK1TBkty22ZkQE//+MDNU
 pnCPA52fC1H7bTHW/3vgl2tZlPD1P1B3WBzRG0Wx9yaUNz0lg8EYPK757
 4RS4CQD8mJIs4aW7zwKYPL5ACkxXBkWa8a0P1HDpqc9/A800EAIsa2TzV
 W7CWocuhkTxjeFrA5a9S9PhyrEUuVVlVT2XyvqNJu/4YVJfJIodSzMj0Q
 9oqH0/9Fo8r/W0zHr6U+AGVp5gorPlQbIKjq4DrxmZvarOBPuUkK4t6PM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="332548470"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="332548470"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 20:20:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701865417"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="701865417"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 20 Feb 2023 20:20:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 20:20:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 20:20:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 20:20:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNyfpkoTrOHXpD7UkQbKts2rfig2LHAa6Wg+fr5WO2JO0Hgsvh2zOC4Q9ZnVqDz/S/Z56JdWBJXgnybm2z3eHffSm04GigUJyk0vmZgYdzggPVTzin0dvT/hjC7Peg9Dg9Pzf5qnGbRrNxhoGf9PD2qEBAgarXVSoI0nQn9c2XDZsfSgHE3cqCTqCHCdPdY6pydQRr6r2sOm8t1h/XFBq5djY2J23asapKj3zKrTMqA7P6ChgW0lsjdu5F2SdH7hXCIX9Aa0vC817tRhfIVtf4LjjqM41CZ/a2CLHWPmpkOMx1HKtuyeUHDRT/+JQWbtTTI1apdISP4WnnJKYmKSwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UQrVbnAksk8QPNzr6IV5Q2dXfQNxo5IbZip8yjfBqHk=;
 b=CbhM+vSnA7RMBh9WhIKob8Md9Lgl7xOkKPf1w1kjcNgSdOifSRXwfwRb2QsWYBUJ+FmwtBF5QjtHhqZBdepJOQ5sjKLyhyGMXffdA19OVSRB3FyS+4hHhF0qmkq1X2mw1fKt3antS0Vx4/XHbySlWXyCo9+HzGAK2U2aL4QL43tAHT+IFwMNTq8feR+p4xtM+3GoNnA9T9nx+bTm0Ka+bcAUEZc3ub2Abw6nBsQTZKpT3KHNIXYanjwaz+K3jZV5n5tlLp7X+hakzFVIe4Ayl89eygmpgDuQtY+Us0xy7pW5/EREiYIKv6/+8+XJSRADM7qcz3/rELn1oXI2HJK5qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by IA1PR11MB7869.namprd11.prod.outlook.com (2603:10b6:208:3f6::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Tue, 21 Feb
 2023 04:20:49 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6111.020; Tue, 21 Feb 2023
 04:20:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
 requirement
Thread-Index: AQHZOsgrOoSJVVfHAEGkQ3sqtumfea7YdfIAgABogAA=
Date: Tue, 21 Feb 2023 04:20:47 +0000
Message-ID: <MWHPR11MB1741ED8C2E4BEC46BBD4FBB7E3A59@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-7-suraj.kandpal@intel.com>
 <DM4PR11MB636063D8739DC1D8CCA4CAD7F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB636063D8739DC1D8CCA4CAD7F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|IA1PR11MB7869:EE_
x-ms-office365-filtering-correlation-id: 0c0cc857-1fa7-4412-5117-08db13c3024d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: euk4nLCWq6kdfjsEA2OhUPQrJAgZl8aatcEqM/QHZWg18TkPnlW9IbdwmmriH/n9DUMqmW6cb/JZohFviqtwwU4wxGT+IDIrEUzqzH/gaMqcYkX5hMFiLOLGNinD9xMNsnSdI8hDTcqYhE9SoZ8id93KaBaLAAc10jTdeejEGRKN26otxaD7K6tgs0/vGJENfsnJBSzWxnqbRvEJvyCEAQPcFdGu2Gck96z0TeeE2/XFKHFmu9brq8moHb8leDW7G2V61CEkjhTMqd21vYk2FXpzyerRmQv4dMEqG7LccpiLYTs7W6Iz0+5dVLR/UjSWZhFPE/FkwikfQbxOGW2q/sS8eL7OMipAVNrZcLlkug2F1kdhiJiGb9qHuvNKYkoqRrGncS7JA1P8JMXkwDHPYb8RSJvq8zG1s5EtA5ZAjpdaprldauDWuLT27FK52ANFgSIl6+s6YQpM088o3a/pheoTZaX6hzKBNFiwMn5vqti+qZwyp6Mrfgm8RCiiTrDXH29TOQ9OmYG+HFSmgKUgcsjx6Mf09Qj0zXCvDhQy3tAovHhIeZzhn18PVjazDRddmdMA7VrDsXg0jrZHa8TQfOGn9Um9eYiCJ2EgRzzbNjHv+sy5eLL5ZQvEuTe+KZJVbA1HlsPqqylb+DBv5okoLWuto0bpC35tdODJDakgkomU9VfWWMZ+7p07DlX47L3hJuO+DEqKUPnJ1F3x8iyznQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199018)(86362001)(66946007)(33656002)(76116006)(52536014)(66556008)(8936002)(66446008)(66476007)(5660300002)(41300700001)(64756008)(2906002)(38100700002)(82960400001)(38070700005)(122000001)(71200400001)(26005)(7696005)(316002)(186003)(8676002)(55016003)(478600001)(110136005)(6506007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NX+x/LSyljndWc2lNIFdLhXQ8BGLcsjh9ssWJPrz4yRxhRgmefgsSARQ4FGF?=
 =?us-ascii?Q?gu+lXBGtZ1txdsEXYbP34G2XDOz61r/QbaxOcazEGzOlzKYMexv/s5Qy2tcp?=
 =?us-ascii?Q?5HFnnmabRqAzNIbKmcVEC14dQ5jBitsIrHXTds9B40aZ/0cT4DssW2Ltinl3?=
 =?us-ascii?Q?wZ78YFyZLDndRw0z/bheS1geiWQc4Cd8vcS2aFgpzDNYO+n7tI0eqIqlyneK?=
 =?us-ascii?Q?Yv5k3S7iz73EgHPCchl9aU24IeBgmUmfHoblZ/rN6uyB0gkTUSZ7jqJF5xtv?=
 =?us-ascii?Q?jN+FRfOWyGMCf1bmpZc5TqvBY3oyjQLv5exhLc9araD4mbtxiQ7eS9x8J2Q/?=
 =?us-ascii?Q?nbP1a0sQx8uZmUJt0sKUiJieMrONx5yamGFqenwyosKs54OpFJRqVuKNjgrk?=
 =?us-ascii?Q?oLL19O6kz9eUhJfenOUIyfGalmbv6bKZM+3H+V0i3orTwlfVlqOKwB+K6pqK?=
 =?us-ascii?Q?2Y840/b8ia91O+lTpX+AnlPzXUvptAuL8QOFXE2YQxLoPFp5aoCgFFnP+QuI?=
 =?us-ascii?Q?zFO7qPVcpJ1bIOrRUngOaKt0qxxks7n6XfO/C4T8KkbagvywEC+bnMqrmPU4?=
 =?us-ascii?Q?H0I9BMUbZtmPLVZPJvShLStZaFCM8rq8+SmPAAyx2Q8borT73i/R2qXf2v3s?=
 =?us-ascii?Q?EZtEAke6YUH10rQ/cXzYUinkRX3I6xQ8VdavdfaKZaYejofX1C5jdLSAfA4V?=
 =?us-ascii?Q?Innl8IEkWNdLxDYnPhBjnxXp9ODGtf0OYkgWfpxY8F+XgkyUYGVovuT0RIcC?=
 =?us-ascii?Q?eh6HXoKTVBc0sZ6u9ByVXHgTnFDM0e6VRh26IgBHPou7+In/YD/2yBzfoGG4?=
 =?us-ascii?Q?Rs6LBWYvcZgf7EMxQTXm5HlTxfOZc1q7pUdXBmiaK9/lcLTb38b1iK7Hnla9?=
 =?us-ascii?Q?e1MfFo7OTrKX/fSrQX4E1cUO0Ff+XhXTmEuxRnE+uJjAaAXOyc7//UbA6ono?=
 =?us-ascii?Q?Pah8yLd40TJySIAHcwbII+YNw2DVyGGlV7aYXNqSYdAfFvuTaeaBB7HGu+7L?=
 =?us-ascii?Q?YYGbjWRRbiwjHib9GQ/XpOD7sgRPpNityMkFJeL9/cOVr4n8RI6COYubRbTC?=
 =?us-ascii?Q?BlvHiOAr2BJQMhecAC24J+25mvSGKixscfNyq1CrZVj6iltohxW1RgY5pLjU?=
 =?us-ascii?Q?S4LqdSqJ9AB8hcIEHpm6/7S48fFVhgGroZYsgrCr/lPq4CqlPMyu25mn2O3w?=
 =?us-ascii?Q?3swwqb9sEdtH6iJU6Yjulbz+8NDEEMUaCDfy3eAL/LD+ujNVejoLUBAvltMW?=
 =?us-ascii?Q?OBs7u9ics9wG4b0L7QHsCEkNYmLwEdXA6KpKSDIkAQhZyJCcs6II1jdZm7Uv?=
 =?us-ascii?Q?gueu6AGEFGYNtMhJD/j2prkO0nU2tXpDZRfmvBxIKmy5UUyrCFo6iefrFoJ4?=
 =?us-ascii?Q?9M4aIMXeA4FfL7kFst9a1ujZH3GuJ4dF9A41R3pZQXeEpMw/8fuq6+VaXLC0?=
 =?us-ascii?Q?tEHJKtrxyiVkrjlF1nexv0wH46UyZpr+p0UzXcgaJhiO493DeBKsIlb/eMnj?=
 =?us-ascii?Q?u83V++E9WKCGwN5R8RYlmyRuboo2XjXszTp/6HM9YWXlVQ6HHQhZg6j4Jf/3?=
 =?us-ascii?Q?Gl1OwQDQB1h6eO/4y2p9cJH9068caXsHhQ13wa24?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c0cc857-1fa7-4412-5117-08db13c3024d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 04:20:48.0604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bI5iY3H9sNK/xycoUHES+0WH61xUPMUS2R1K7Ao2qBehv01+SlTJDbKf+vl8u6V6NptHAF7IH/f41KolbTOlrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7869
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
 requirement
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

> >
> > +static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state
> *pipe_config,
> > +					    struct drm_dsc_config *vdsc_cfg) {
> > +	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB ||
> > +	    pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR444) {
> > +		if (vdsc_cfg->slice_height > 4095)
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >=3D 15000)
>=20
> This should be greater than 15000 for valid case, please check
>=20
> > +			return -EINVAL;
> > +	} else if (pipe_config->output_format =3D=3D
> > INTEL_OUTPUT_FORMAT_YCBCR420) {
> > +		if (vdsc_cfg->slice_width % 2)
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height % 2)
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height > 4094)
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >=3D 30000)
>=20
> This should be greater than 30000 for valid case, please check
>=20

I missed this will fix it the condition should have been < 30000/15000

> > +			return -EINVAL;
> > +	}
> > +
> > +	return 0;
>=20
> If code reaches here, format is 422 which should be EINVAL as of now.
>=20

Not necessarily code can also reach here if all the slice dimension require=
ments are
met for any format also AFAIK INTEL_OUTPUT_FORMAT_YCBCR422 has not been def=
ined
yet hence can be found in crtc_state->output_format

Regards,
Suraj Kandpal

> > +}
> > +
> >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> > @@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> >  	const struct rc_parameters *rc_params;
> >  	struct rc_parameters *rc =3D NULL;
> > +	int err;
> >  	u8 i =3D 0;
> >
> >  	vdsc_cfg->pic_width =3D pipe_config-
> >hw.adjusted_mode.crtc_hdisplay;
> >  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
> >  					     pipe_config->dsc.slice_count);
> > +
> > +	err =3D intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
> > +
> > +	if (err) {
> > +		drm_dbg_kms(&dev_priv->drm, "Slice dimension
> requirements not
> > met\n");
> > +		return err;
> > +	}
> > +
> >  	/*
> >  	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb
> is 0
> >  	 * else 1
> > --
> > 2.25.1

