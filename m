Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0473F6E15DF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 22:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D835610E04E;
	Thu, 13 Apr 2023 20:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D4010EC38
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 20:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681417903; x=1712953903;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B40JS2MbmUoZpO+YOL0sHrutU0Js8RMBwmccFKMpdNM=;
 b=dts4Ob1al8yyL+v0j5+sUnedb7/9kFNR/R+uY1FWPE06IRnie6ibUWMH
 jGujqGneSnNZgyDASDqOXxYUHUt0fRAOh3c/gzR4APVIRFSQc84fOOcFr
 GQ2efKQ4d/4tNwsQ00dUu7KfTLzV8mVBdXCymg1OrKh/uGGnsj/EabYPQ
 Rd1wyjJS2WfFHjLwSJD7lVWQSBJBTNKMLlZsqC2hS7Y0X2eLhwHSWHj8e
 gWRymoCv0h1+zwOOaBLfaLYDnjh34Inn9i3QOSiG0/c5+bglgUrwTKe/a
 kbFdHnmI1cq/FtxVKKA+y9f7Z9YRyNHqMBD4MVYlVDH0BQHjJXmFBnAtX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409480003"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="409480003"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 13:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="833267515"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="833267515"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2023 13:31:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 13:31:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 13:31:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 13:31:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGO0aeSpAfSFv6A+SMZ7IFoTtpePn8CEhJXRygy5HTpheBef4d4Kq3MGs/xzS+kUJjItwYZgrpX6VlYRQsIx8qhrpMfuMWAgj7lpv2yhe03bfyUzPVXjLaOCbaGwxd+8a9j/lu7OA+vpP6Kvp4I8efnFjRJww9fbbkM8tIV/UK7+kKQNZvSVZbuL7gcZhov6mmSNDUUC5QSpW3CEMBjVScsb9Ex0XmWRThlxyKk2swP8vsUTRLOxamdKO/T0pUqLd+EuampB7ev4keHPAXgIUVyyPKODRCv4cEA/znT88MKgab3J1CFRGNq4iAJktGH7G2RWi45rjAGg6Ar7kpH4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcYTffB+tclMcmj8awFFIU4bXSAqcvJBxHZu/6f2pVI=;
 b=fdSeLaJ0XQSET4Oa5PAb0u6Pkq/jFL7vuKtZj2s4/r6HgAJvTar7sgTTBoKYgywvxvXzALp/T/eg364UpCXMkQq9y4f4MzYBzZw5N34qaKPUqEmTW7yUwNUTmCPo9kEeFJFEhYhEtmJBBn31V2WPL1gR2G0BInUiz9ZFTz8TzHYNGNM7ZQB6ZD7PDyxDwBmcxDPFeXtGz2eS/xVWHAd5jOxCHFIe/0MHpy9CV5PoHzUECzvUmSmmeghY67raodl7VgQFxRyddwEhDv34HtNdlAABl2yHYwEbtzHn+VasYXB2K+M6h8r2P1+h/LvNDMOyWGXaBO8fb4YVO0/efpePXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 20:31:34 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6277.038; Thu, 13 Apr 2023
 20:31:33 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 8/9] drm/i915/mtl: Add C10 phy programming for HDMI
Thread-Index: AQHZbiYxuPUHqMkPZEqfXae+3ISKaK8psUIA
Date: Thu, 13 Apr 2023 20:31:33 +0000
Message-ID: <DM4PR11MB5971C84858C20B1A5E027D1C87989@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
 <20230412224925.1309815-9-radhakrishna.sripada@intel.com>
 <ZDgvoPOj/5/jZmEA@ideak-desk.fi.intel.com>
In-Reply-To: <ZDgvoPOj/5/jZmEA@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH0PR11MB7635:EE_
x-ms-office365-filtering-correlation-id: 357b44d6-a1f5-4fb2-aba9-08db3c5e1288
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZzrVjGUqKLwB02eWWaqIetKHCx0XlAg+em31+iYTbZt3erGFxBeKBTA3UNa+v992mPXRhqIbwt6E2TvqTnp4UXOsHkpCOqMMKph/gc+Ds0jJJfrnO3AF0/PwEMIRgbsKTCdH1KtNWIJVh73HtvxAUDlt0DChaGNCXRcLwcBX0AR/zMa11qopu6oBGhgHfHAbF8OpUhRzmHR8ts17SfaexkDnhbl9G2A3WpWm8cgSu4GJWbDTeMKDbiTgIIVf7N7MzcVj3f6ZK81dmUBPxdPD/lG9Qa2H6x9DRoKCTZZdHn44Lz4glzV3bh5h39Q4JUUibORFLWUghJGBEsoK1lry7huoI5UMd6N5/ncHOvPlL/S4+tA0x4h/2NoUJqrSVtZ105/DpjYKiQr3XcKa/ywr7DC3uZgjyZ78yjQAytE5nFM7oqgBpTF/mozHOo2owQg1DN25F9WMjSxRhlOcby7QQnKKcb570x9KdOScX/mZIL9eFOBcsXjpKlMBZWprjl4AiGaOx0wwa/Uoyv6U66ThQkOjmmlD3RH1eK2F6iKgVPnA/IqYELo7TE5Fp4DljpRR4Hrm+i5TuU+Yp9qhv320fydrKf/QcKecdFDBSPp144YExdgy6c63EO+NeXsJybqY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199021)(2906002)(8676002)(6862004)(38100700002)(52536014)(5660300002)(82960400001)(122000001)(38070700005)(4326008)(8936002)(41300700001)(66556008)(64756008)(76116006)(66446008)(66476007)(66946007)(316002)(6636002)(83380400001)(53546011)(55016003)(26005)(186003)(71200400001)(6506007)(9686003)(86362001)(33656002)(7696005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rf5WIjvi3v2pc9l5q+mJhbhFSBJPj/6cw2WGYrxRl59bj56qnmc4UzvC95WJ?=
 =?us-ascii?Q?e8KFBx1l8xwJyX6VqSBz7lnmLM7jzQ6RJb6N5ag/hI92RGcbpUlOy0GvRhsb?=
 =?us-ascii?Q?b+P/UuLt3fhXq+fr5jEB2qVVwRmBetY5Df1ixX6Kldis1ZX/c7L416zxCNH1?=
 =?us-ascii?Q?wY87Ko41ZXJDOfHT6k1T+/rogmD72k6yF04WQ5Xx36RhrYYetC2CL/dqxkcM?=
 =?us-ascii?Q?1JQAWgUEla9L7E+pIaw+1za5kWoquv13Lh+zD6zgYpQ1rdBUpRrLWiDXePAa?=
 =?us-ascii?Q?AWJsaaap4CMJnxdg1x5CMbygDRWOP+Q3em+Z79momVl30eYIZ6yFThgV3nfm?=
 =?us-ascii?Q?gIF0LXGt3KJq2/hYket5VGW9IamwERVfdy9ecnJdn99HNs2C9BFfAkyk1txU?=
 =?us-ascii?Q?HnoTjN/cBZn7orkyUmaSHf3+jG2QkfuX+OrJqSMVRnbtA3R9LtFqN3oRrLyN?=
 =?us-ascii?Q?yomy5tNl4vYF7nfYOt58W+DwEv7jcwDB2MfrmUCXMMpZXlxX8oJaF61oUz+5?=
 =?us-ascii?Q?YjEZHuzHBCbGo6JFWFX2KdVEU01AQJiWfEyMxUx7eC2pvCTBRv61lr4YdWVJ?=
 =?us-ascii?Q?5n8NW3GeedKmYjkZmXVzHXnIzY4oNKjeHtv/ve98gacHiTzxSNnfcwaiJJkZ?=
 =?us-ascii?Q?7JTLbu6C2+5WYlscbeqtYgnNSd2Gon/u0FpUw3ak9KEg+WZkDC/qASZHQ7eo?=
 =?us-ascii?Q?GZis+7BtY66Q6+RY5L06Y8ySFifQFe2Deg8mhlrt4+fjew51O12d3BRtZBET?=
 =?us-ascii?Q?wR9chXi6IfqsgM87apABajNtbimPVMH582X93iNJaz/9iFQie6duOgrUs8JR?=
 =?us-ascii?Q?CbO1Q1D4mfal9AIdyXymOGexW/4CRohmaUPIxjtpFh3K5tmZs5aEhSgCG8k5?=
 =?us-ascii?Q?KB8jE7K5XGNfkcweGNfmt8YlJZBz5fYF5LFJ+k/db1XZJ/JNBzgOBXgQu9fL?=
 =?us-ascii?Q?KwdwNbs2HTGAR97ZP0/PGnUHPISpkif0VATeBbFvN1tsNad/hg2h4yx0GlEC?=
 =?us-ascii?Q?GrLiwxMBYei/AOE5t5z0SmIqPOgG8rq6sWp/AU0O5iWehBf7lTRF7URzf8Gl?=
 =?us-ascii?Q?u6hO7gbR6UkPtoulIvAAEY0PneJ2dA2+8c7zvL+eZAwYf7RufvilWRVsG116?=
 =?us-ascii?Q?3+V0Ec9QOQzh69smrO9HGryyLuutRh5/x/oQKmg7PgYiMXDUgHM7SONtud+X?=
 =?us-ascii?Q?08dU6K914K7LYxXIBFD557jLUijmqz3Ei4HS2otvB+eU45Y8QQvUpKgBCLQG?=
 =?us-ascii?Q?Lpv3/Cw4703uBzyrpvVRuCfcCa/nCkG6BikxIknvrCWVngQLOMRd0M0NfTEl?=
 =?us-ascii?Q?437brGzsGYPnShO21ZIl8AE0I/90QymLqQL2i7BVkLcX0gjxMR2Y8yUw638B?=
 =?us-ascii?Q?W9rv6bbYihzAhk+gkLArqhnLVVCMATEWySJZN/XDBcxwpY0z0v9gGm9RMcvc?=
 =?us-ascii?Q?ohV6DdhaagWhx0lSX3TlncRtGbGRUMv+Oc56yc1ESUQnyE0veXxYirpNARE+?=
 =?us-ascii?Q?lEmfpNlh2XJej7HOyAbmOmWSNOOF/Crpxq9GLi7Iu06H0fSQvNEYB8IHSXQZ?=
 =?us-ascii?Q?BDa2ZECg+tum8cnzyQbN3REK89NoUR9shj4Botvu+90rDTujJltWhYgkfycH?=
 =?us-ascii?Q?NA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 357b44d6-a1f5-4fb2-aba9-08db3c5e1288
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 20:31:33.8310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dy3b1rkn1Hlo/BZzz0ygYJ9OPuhBX73bCYhDAcdsZyaVL7C679+ughj1qiHxD/sHoGX0mCmp6kvKez451wXKw5NAEKRlLlBhqhM/wc7yPqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/mtl: Add C10 phy programming
 for HDMI
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



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Thursday, April 13, 2023 9:37 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 8/9] drm/i915/mtl: Add C10 phy programming for HDMI
>=20
> On Wed, Apr 12, 2023 at 03:49:24PM -0700, Radhakrishna Sripada wrote:
> > [...]
> > +/* Precomputed C10 HDMI PLL tables */
> > +static const struct intel_c10pll_state mtl_c10_hdmi_25175 =3D {
> > +	.clock =3D 25175,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34,
> > +	.pll[1] =3D 0x00,
> > +	.pll[2] =3D 0xB0,
> > +	.pll[3] =3D 0x00,
> > +	.pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00,
> > +	.pll[6] =3D 0x00,
> > +	.pll[7] =3D 0x00,
> > +	.pll[8] =3D 0x20,
> > +	.pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF,
> > +	.pll[11] =3D 0x55,
> > +	.pll[12] =3D 0xE5,
> > +	.pll[13] =3D 0x55,
> > +	.pll[14] =3D 0x55,
> > +	.pll[15] =3D 0x0D,
> > +	.pll[16] =3D 0x09,
> > +	.pll[17] =3D 0x8F,
> > +	.pll[18] =3D 0x84,
> > +	.pll[19] =3D 0x23,
> > +};
>=20
> Something off with the above table,
> intel_c10pll_calc_port_clock() calculates 25200 clock rate for it. So
> either .clock above needs to be the same rate, or the PLL params need to
> be corrected for the 25175 rate.
We do have a pre-computed table for 25200 clock which has different values.
Do we skip this clock for now?

-RK
>=20
> > [...]
> > @@ -690,9 +1315,20 @@ static void intel_c10pll_update_pll(struct
> intel_crtc_state *crtc_state,
> >  static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state=
,
> >  				   struct intel_encoder *encoder)
> >  {
> > +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >  	const struct intel_c10pll_state * const *tables;
> > +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> >  	int i;
> >
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > +		if (intel_c10_phy_check_hdmi_link_rate(crtc_state->port_clock)
> > +		    !=3D MODE_OK) {
> > +			drm_dbg_kms(&i915->drm, "Can't support HDMI link
> rate %d on phy %c.\n",
> > +				    crtc_state->port_clock, phy_name(phy));
> > +			return -EINVAL;
> > +		}
> > +	}
>=20
> The above check is not needed, covered already by the loop later in
> the function.
>=20
> > +
> >  	tables =3D intel_c10pll_tables_get(crtc_state, encoder);
> >  	if (!tables)
> >  		return -EINVAL;
