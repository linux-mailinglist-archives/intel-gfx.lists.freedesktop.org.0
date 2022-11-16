Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF3862C94F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 20:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD6A10E1BC;
	Wed, 16 Nov 2022 19:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5610110E1BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 19:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668628548; x=1700164548;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZtgJsAJXQkrqI260Q0hifrteNbAL4AXqidmPlr1S/9s=;
 b=lYw+JbuOm2T1t7x8wor/OJOsdRLLZ9tz+tRRlPCkBBWcLZLFwq0+qwWn
 de7Qks8irldldlzC7+EfAaqXeIIeD+CSjp4pArBDkDduZHV4KuIn8nsI+
 5pLsVsYJGh7SIRq6yHTLN8PAkTGv36w2UVAx8RUzk3NOzKkZlvJVj2sGF
 ANsK4MTz+mRtUV45xjceICoOyuoSr6BCUEErcDRnrZUa2+o5m4/q3Je7l
 d07CiKW2DPqidGbXBWRHy1v6LI42VdTHt5mj+aZv8A1e7gva7x40wLi8D
 PbIcVgvnsWGbgen4YLkTkRkiDUwXux9AKSX0uZ4w7IYJhZypxQLNYFDPx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312657543"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312657543"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 11:55:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="590316438"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="590316438"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 16 Nov 2022 11:55:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 11:55:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 11:55:46 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 11:55:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XU6+5PbTlgwCTuws5gcpI33qmVwHPCyib7MVAbxmjmkusaOfiR4hG81viVuhXRSTMGIJGMHMFbehgvruzGmJFo8MXfsu1JPFZolhSFcWRjS1VkArZSz/P7XbN4C7UrGwpbgzoaakGcCCOpESyTEmNacFBCKWq0TbHmlAxWBnK3pczLHVHZfegJhJ2JrXq/ZpUnFUJ31LmKg4lN+hmEoyAXHB2xNaakPKYrhwMuuhm+oC6BaB7VDpRYhfnE7mR+ZniSXy0u02qIu4S3pygF/DZ6CjMp27VWUF6CGtdWPbCWo0u/zrTGeF8XA2ullZI26ecJhxP99zwk7RHOOsWAxnag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=skitR/JKZ1UHOqOw9kaIswiqtFINeUiw1u2mODsA4+o=;
 b=L+8UsdOVN5VtENqUXr3VhT15ywoibc0MGPq7nes1LG3FhEJERty1yYHmwms4i4+cLStVCueSHIbwNt2c89jKN6eqGt3JMohKdITOd/Pc3U57c+7hjmtZ8ix9mZNttVf74HOdijtgM8Yb9FR2DVjUYI9bL6JaSRC0GgGtNJk5Mv8qhr8HroNfXBtphKEvqUNOs96ZF24Xx8UMa92iNWQeywrQUdn6++VCmiLBkVyXa6vyD6ZtkFwoljc0qf5LAaJNJ9XcY79ldq+7tS6FJnvBbKfaOAixaQVnveGcLrZ+JTsRdEGlWirN2afWOy4PSb1iuLZgCWR3XVscIvZAnudjLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DM4PR11MB5280.namprd11.prod.outlook.com
 (2603:10b6:5:38b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 19:55:43 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5813.019; Wed, 16 Nov 2022
 19:55:43 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
Thread-Index: AQHY+cqzqcxDNm4SoEOncj7vzTKTZ65B4xmAgAASRBA=
Date: Wed, 16 Nov 2022 19:55:43 +0000
Message-ID: <CY4PR1101MB2166B5C51F77AAC89A9F5E30F8079@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221116145008.556381-1-anusha.srivatsa@intel.com>
 <20221116145008.556381-2-anusha.srivatsa@intel.com>
 <Y3UvW2BVXiY+W9Kg@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y3UvW2BVXiY+W9Kg@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DM4PR11MB5280:EE_
x-ms-office365-filtering-correlation-id: 98f0dda5-bf26-49f7-b8c0-08dac80c8b8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bkA3EhsLoKsskrNjdvGiG+Z4Ifr9OJsNgEClrc1GQ9Ovh01gQ56K5DepNLLS5a1jkziFxb52NU8kvfHTwjXmEFnZyuGB+woK5fREFVbfMT0d6T5K/jtQZQqzzslrkTxNjeoCCQ5aUrRN8wN+tYvm5X5UOYgxY4VwLL69aDW+lpNWe2jj6Jg149iHFICcmvMpFMHGuNDZmAsciaQskLaN6DJR/Pv78qdK3NwmOUZjPOhVyNyRxT6pmfkJy/KVf9VNLLzYGr1FezI3BLqQIR5voJLyBSKdFJtZgSq/A+YmHVue/Ewcxu2UtJsp9xoxHBeKZ/e+4Nn1+tCOU00XAl1I7GbKBWFt5dLBrDYvpCTlQgpkqdVZSkJTbiHpkmUVZobifjS1Kb0GvJMDegGKpJxKk1L+F6OVSaL57Q3EN+6iIbRLRuBtnRh9cQv/Y0GnJnx4TfqL7Qb0CIpXHUyTWK88jSqoQD+Idhk0O2V1vu9CkYH6EWg1hqNA0eEvMnewjegXjDFxdKQuVBUQVIeugRRV+mqot3tTTON4S9OmCP6iM9Hn0KLfZ4owqppciergKlzR4OR4XOSYOflfE/eoDRond9dwfFIW0dTkvA+TL5jeSpV6G4xu6M/BwkH5S4D7r+ryemgeEHQOfiUp/wQLcSPnFyV07GyOlEn3KybU8Ie+mmWwG0Tx7ySqSte2FObfwUK6tqzbedvVbktsZVsfgz4UnAyvQO9wKrXSNOZENFXNNgLWNmaO1q4JAXZkQa9wbhSyohE+r81/K3PT6VIP7mtSCRTQ7n0vv7BV+eVLejiQ+rQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(366004)(136003)(39860400002)(451199015)(186003)(30864003)(41300700001)(52536014)(6862004)(8936002)(5660300002)(6636002)(53546011)(26005)(6506007)(316002)(9686003)(64756008)(4326008)(66446008)(66476007)(76116006)(8676002)(66556008)(7696005)(54906003)(122000001)(38070700005)(82960400001)(66574015)(83380400001)(86362001)(55016003)(38100700002)(33656002)(2906002)(71200400001)(478600001)(107886003)(66946007)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?9R6YxY8NraNQ89GNr4uwkOE+97xeahKwBGq+Zv7PuBke6IiOIVyx3ztwGU?=
 =?iso-8859-1?Q?doogzCBRmQX8UuXhndlUEitfKIauYrfIr5Q3lZ/A0N1EAP0yag1S0OoCoQ?=
 =?iso-8859-1?Q?PkTjwCY/slNG3rVbrDOR4frOsFzWfzVvcw4eUD+kX+LvEfgsnbZR5zKJwc?=
 =?iso-8859-1?Q?Hb2R7fZj4L0P1tyU9N/qlj6n/GSLBWYJyIQcaS3cguyPfHo+WshEpb3GGx?=
 =?iso-8859-1?Q?Cs7+rSI6xOCSN/cafQfi4ZD3UoCO8Sr5xJ7h7Y5b/oMpzHuNQ0LkZpw8ga?=
 =?iso-8859-1?Q?uU0DXeWIGy1fWgXJOKSDvPM5rgGJNdvih9x8LS76QGeNtG1HLfu04CGC42?=
 =?iso-8859-1?Q?GGfMQxX/sToj4qPCdy0R/0YmahnsiBdjQ5mcEzPPZ4UovMGW5PIxBU2b28?=
 =?iso-8859-1?Q?cNXbbDQczO7ZluDDHO4EDJDZP31iNC6FfT5RBfo23yzsvkCnnWIFScOaD5?=
 =?iso-8859-1?Q?Lic4Qq6AzIemWFibm5rtgRuRVG/eGyj+i2SGzQEb62EB0gexAlgNBvCk85?=
 =?iso-8859-1?Q?/aY8PyyFLEZN7WE7zKwYvsUg9zvb2wZp7a5d8nob4mnkuFBper+nIUBP5S?=
 =?iso-8859-1?Q?wyFBFOZjA9ModLknX0SfdOsxt0YHkxKfKet5jKWdg2p4sS4FAjLXM0NZ3P?=
 =?iso-8859-1?Q?l1LdfmFga4WQnD7mdZdckHFNMwfErigNoYIybXdmfd2z53ZOBdL8UU3TWS?=
 =?iso-8859-1?Q?ZY8tGaIxgyZIuaXNb9l98tmuXaixIedQHP0TmD2S9slfc1xh8K/sqeOnPC?=
 =?iso-8859-1?Q?5Jney35EjxMfxCumDbJfD4pARsgdC12gk+EFPKuWJtqIajXE/MXZyT/w5r?=
 =?iso-8859-1?Q?s1CFMMqsNf9qrsYxxhfjrrENCz77WPaDQNovcG/tYTvp9GAh9ai1AsyxJU?=
 =?iso-8859-1?Q?FUCPCc8sxVA1G6kMAqwsBuZBJX939RswIDAmEa4zsP8aGtwcGeFfyIupAA?=
 =?iso-8859-1?Q?tvOEvyTXJKjZH0LbjGqDJSeP06KdaC2/S8/lkKAGratiHVHwcMWH0tOCl7?=
 =?iso-8859-1?Q?EwMHwYapDJN2Zv04KWyPu3db2LlER/mcF6WubVjG8fL9ca1ORJ6ZvSNO8O?=
 =?iso-8859-1?Q?qH5QsK6TKTIJUXLZKy6k068STPyvrj3uXxjj7elq4pbPqKWw5XFGec+CHx?=
 =?iso-8859-1?Q?Am1mWhHB0aTeOdTnrbeITnkAqHFFRCVKSUwfdAb/aVTZeriTKKK8M5sbTu?=
 =?iso-8859-1?Q?LGYNF1LtdXmKhEQz/scNG0h5HqdVjZaVc9//y3f9Moeuowb0aCUQcCV5pL?=
 =?iso-8859-1?Q?vyOCibbbOaXgGiGQQxju4FOGTNGAJQguHbXZrSxQ8uFsyZDNUuM9SowIwK?=
 =?iso-8859-1?Q?XSNqrncv4kEbaULpes4puzzysX/trAzYnaBqcOnYCUHsCciJQqqMR3Y9/m?=
 =?iso-8859-1?Q?vu2slwCzc3RRwtht5hyvlIutY5EdO+vnAg//NMWyB7D0n8FyP4wT20oE/d?=
 =?iso-8859-1?Q?qnqjWiDQlo5llxyFBsSBc2YzOkPDm8M6VfjWd7vhJubuP4IcoGqnaHcuB+?=
 =?iso-8859-1?Q?HbJDqOGu1G0sjnsxNeIXI8uYv6+iIKSmlM0KS5yAQf9vWKw+6qks5AGO9E?=
 =?iso-8859-1?Q?7WYbF/RZoWeAKr4CVyUc9OKEH6zuE8CU5cGLH66tJvSSHYsdjjwGlqy+3A?=
 =?iso-8859-1?Q?9zmqe7nOWoCnixvGp3lznS8R1pOm0vsEFV0SaG6l64H4LxZm99JpuvSw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f0dda5-bf26-49f7-b8c0-08dac80c8b8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 19:55:43.2164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tNt/+dlFEXkNaeaca6PBmahqJutBeBC4sLaWbC4ZEU1oqjUFd5x32Z7qDTFIm9sIh0r2HMHPh4ViPZyY77EeDdox668CABNwvEFqHs3hOnc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5280
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, November 16, 2022 10:44 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
> squash when changing cdclk
>=20
> On Wed, Nov 16, 2022 at 06:50:07AM -0800, Anusha Srivatsa wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > For MTL, changing cdclk from between certain frequencies has both
> > squash and crawl. Use the current cdclk config and the new(desired)
> > cdclk config to construtc a mid cdclk config.
> > Set the cdclk twice:
> > - Current cdclk -> mid cdclk
> > - mid cdclk -> desired cdclk
> >
> > Driver should not take some Pcode mailbox communication in the cdclk
> > path for platforms that are  Display 14 and later.
>=20
> Nit:  display _version_ 14 and later.
>=20
> >
> > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > modeset for platforms that support squash_crawl sequences(Ville)
> >
> > v3: Add checks for:
> > - scenario where only slow clock is used and cdclk is actually 0
> > (bringing up display).
> > - PLLs are on before looking up the waveform.
> > - Squash and crawl capability checks.(Ville)
> >
> > v4: Rebase
> > - Move checks to be more consistent (Ville)
> > - Add comments (Bala)
> > v5:
> > - Further small changes. Move checks around.
> > - Make if-else better looking (Ville)
> >
> > v6: MTl should not follow PUnit mailbox communication as the rest of
> > gen11+ platforms.(Anusha)
> >
> > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> > Cc: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 175
> > +++++++++++++++++----
> >  1 file changed, 144 insertions(+), 31 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 25d01271dc09..6e122d56428c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1727,37 +1727,75 @@ static bool cdclk_pll_is_unknown(unsigned int
> vco)
> >  	return vco =3D=3D ~0;
> >  }
> >
> > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > -			  const struct intel_cdclk_config *cdclk_config,
> > -			  enum pipe pipe)
> > +static int cdclk_squash_divider(u16 waveform) {
> > +	return hweight16(waveform ?: 0xffff); }
> > +
> > +static bool cdclk_compute_crawl_and_squash_midpoint(struct
> drm_i915_private *i915,
> > +						    const struct
> intel_cdclk_config *old_cdclk_config,
> > +						    const struct
> intel_cdclk_config *new_cdclk_config,
> > +						    struct intel_cdclk_config
> *mid_cdclk_config) {
> > +	u16 old_waveform, new_waveform, mid_waveform;
> > +	int size =3D 16;
> > +	int div =3D 2;
> > +
> > +	/* Return if both Squash and Crawl are not present */
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, old_cdclk_config-
> >cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, new_cdclk_config-
> >cdclk);
> > +
> > +	/* Return if Squash only or Crawl only is the desired action */
> > +	if (old_cdclk_config->vco <=3D 0 || new_cdclk_config->vco <=3D 0 ||
>=20
> We still have "<=3D 0" checks here.  As noted before, the < part can neve=
r
> evaluate to true since vco is an unsigned value.  I think you meant to up=
date
> this to include a check with your new cdclk_pll_is_unknown() helper?

Argh. No the check here should just be vco=3D=3D0. For the case ~0 or the s=
igned value, we have it covered in bxt_set_cdclk() where we end up not taki=
ng the crawl path.

> Also, the comment above this check says "if squash only or crawl only is =
the
> desired action" which is what the "=3D=3D" conditions below cover.  But t=
he vco
> 0/unknown checks are technically to ensure we bail out if the desired act=
ion
> is to do neither of the two (traditional modeset).
>=20
> > +	    old_cdclk_config->vco =3D=3D new_cdclk_config->vco ||
> > +	    old_waveform =3D=3D new_waveform)
> > +		return false;
> > +
> > +	*mid_cdclk_config =3D *new_cdclk_config;
> > +
> > +	/*
> > +	 * Populate the mid_cdclk_config accordingly.
> > +	 * - If moving to a higher cdclk, the desired action is squashing.
> > +	 * The mid cdclk config should have the new (squash) waveform.
> > +	 * - If moving to a lower cdclk, the desired action is crawling.
> > +	 * The mid cdclk config should have the new vco.
> > +	 */
> > +
> > +	if (cdclk_squash_divider(new_waveform) >
> cdclk_squash_divider(old_waveform)) {
> > +		mid_cdclk_config->vco =3D old_cdclk_config->vco;
> > +		mid_waveform =3D new_waveform;
> > +	} else {
> > +		mid_cdclk_config->vco =3D new_cdclk_config->vco;
> > +		mid_waveform =3D old_waveform;
> > +	}
> > +
> > +	mid_cdclk_config->cdclk =3D
> DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > +						    mid_cdclk_config->vco, size
> * div);
> > +
> > +	/* make sure the mid clock came out sane */
> > +
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > +		    i915->display.cdclk.max_cdclk_freq);
> > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> mid_cdclk_config->cdclk) !=3D
> > +		    mid_waveform);
> > +
> > +	return true;
> > +}
> > +
> > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			   const struct intel_cdclk_config *cdclk_config,
> > +			   enum pipe pipe)
> >  {
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> > -	int ret;
> > -
> > -	/* Inform power controller of upcoming frequency change. */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > -		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > -	else
> > -		/*
> > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > -		 * timeouts; the 2ms used here is based on experiment.
> > -		 */
> > -		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > -
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      0x80000000, 150, 2);
> > -	if (ret) {
> > -		drm_err(&dev_priv->drm,
> > -			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > -			ret, cdclk);
> > -		return;
> > -	}
> >
> >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0 &&
> >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) { @@
> > -1793,11 +1831,62 @@ static void bxt_set_cdclk(struct drm_i915_private
> > *dev_priv,
> >
> >  	if (pipe !=3D INVALID_PIPE)
> >
> 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > pipe));
> > +}
> >
> > -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			  const struct intel_cdclk_config *cdclk_config,
> > +			  enum pipe pipe)
> > +{
> > +	struct intel_cdclk_config mid_cdclk_config;
> > +	int cdclk =3D cdclk_config->cdclk;
> > +	int ret =3D 0;
> > +
> > +	/*
> > +	 * Inform power controller of upcoming frequency change.
> > +	 * Display versions 14 and beyond do not follow the PUnit
> > +	 * mailbox communication, skip
> > +	 * this step.
> > +	 */
> > +	if (DISPLAY_VER(dev_priv) >=3D 14)
> > +		/* NOOP */;
> > +	else if (DISPLAY_VER(dev_priv) >=3D 11)
> > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > +	else
> > +		/*
> > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > +		 * timeouts; the 2ms used here is based on experiment.
> > +		 */
> > +		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > +
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > +					      0x80000000, 150, 2);
> > +
> > +	if (ret) {
> > +		drm_err(&dev_priv->drm,
> > +			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > +			ret, cdclk);
> > +		return;
> > +	}
> > +
> > +	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv,
> &dev_priv->display.cdclk.hw,
> > +						    cdclk_config,
> &mid_cdclk_config)) {
> > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	} else {
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	}
> > +
> > +	if (DISPLAY_VER(dev_priv) >=3D 14)
> > +		/*
> > +		 * NOOP - No Pcode communication needed for
> > +		 * Display versions 14 and beyond
> > +		 */;
> > +	else if (DISPLAY_VER(dev_priv) >=3D 11)
> >  		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> >  				      cdclk_config->voltage_level);
> > -	} else {
> > +	else
> >  		/*
> >  		 * The timeout isn't specified, the 2ms used here is based on
> >  		 * experiment.
> > @@ -1808,7 +1897,6 @@ static void bxt_set_cdclk(struct drm_i915_private
> *dev_priv,
> >
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> >  					      cdclk_config->voltage_level,
> >  					      150, 2);
> > -	}
> >
> >  	if (ret) {
> >  		drm_err(&dev_priv->drm,
> > @@ -1965,6 +2053,26 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> *i915,
> > +					     const struct intel_cdclk_config *a,
> > +					     const struct intel_cdclk_config *b)
>=20
> Do we need a check for PLL unknown here?  We don't want to decide that we
> can skip a modeset if the PLL is unknown, right?

This is called only from atomic_check() part of the code. The check is part=
 of the crawl check in bxt_set_cdclk() which comes directly from bxt_saniti=
ze code path where it is affected.

Anusha=20
>=20
> Matt
>=20
> > +{
> > +	u16 old_waveform;
> > +	u16 new_waveform;
> > +
> > +	if (a->vco =3D=3D 0 || b->vco =3D=3D 0)
> > +		return false;
> > +
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, a->cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, b->cdclk);
> > +
> > +	return a->vco !=3D b->vco &&
> > +	       old_waveform !=3D new_waveform; }
> > +
> >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b) @@ -
> 2771,9 +2879,14 @@ int
> > intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > +					     &old_cdclk_state->actual,
> > +					     &new_cdclk_state->actual)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Can change cdclk via crawling and squashing\n");
> > +	} else if (intel_cdclk_can_squash(dev_priv,
> > +					&old_cdclk_state->actual,
> > +					&new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squashing\n");
> >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
