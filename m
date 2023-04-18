Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292DD6E5F38
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 12:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F4010E205;
	Tue, 18 Apr 2023 10:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629CD10E205
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 10:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681815436; x=1713351436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f/W6szGq6yW3hGaJ0urJ1Ek9vpUMFr4v/Ji8LCQg0cA=;
 b=XrmUfbCnyWf4KFekA1rsI9aHvY+FqTmGS+SYdfFdC0YNwvzXpVYK47un
 KvJ7pKuYfkiUDQIjP0xnbgolRaWytO0TgqyHKv4ntMwDpt4EM1JVytGur
 7uUvUAORSnP6/Wy/iQMM9ZD8KJ/ItAo+0JjDXFR0VKKJFUB9LYraNJDPc
 93UzfxnAsfdUKD2KbEPjIUZyRfTwcSDXHSwswsyBzI9owZNpw6lFkkgG/
 oB8CBXtiLKYAysVQ8RvmAPgIMJrE/9P5JhZlOnijlCSlSw3xvcCmq+Hlf
 SwBqqPimywRe2rp7HAp+HKm/dD37jwEAE0OUWTmXLJg1z8Lyw6ixILO7O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="410357298"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="410357298"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="721487037"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="721487037"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 18 Apr 2023 03:57:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 03:57:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 03:57:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 03:57:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJ9HyPeKVphbon4oxYg7GyxLE1bSzY0NUAFxKpXnMuVnfB6RNGQefvyrKapmUpJifqcPEFtWpiLTgiqdAS/+DRQjnVDZG1dRlddi8bXtgVAC0XjSQSUQZ7ovqlNz14MemlUF6U/UZEze20jn6GfPIJ7zLCjeyj/XOWNKRwOsq+YdNWjclziUyzBQJO3su5a47ZuDKpzFiFnnHKUJH3v0qPkDh3dXFuXhOwkKoejOC/VOb1uHyhfDyknQDquJ6YWaBepRuDYAyvCytuG3O3IkPRdRlpQXFxSoHL8/0tB4umawAWr4qsqMv4osqDIiXhwm18KqFYm6FvRhP6fBuc/eDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GhU5Gomf/tBu+G/3atl3LRqV70svzyR3FZu3K8IGhWw=;
 b=Fjz6fKJ33EzjdeN5sWJ4JbFblaAGwvSl/FlmmveQ1rK5Zafijhd2wMCKruOMq+c4KYas/U9MzeHWG+aUumWYFoVddtfd+dtgnHn8tdQ9JixyRKi1Zvb8sh3FcLnJXugtgxPEUjQrGNgyZ84XY22JsmGaSycmtLaKsaNDfrIfAykNGaj09eYpfDTGaCqud26TndbNRaxp4bdyBI9tzblvsMnwI2e+lMeb1oFQkf5C1jZnuryQk9bU81Or8/3k77EDsCr3LEwKMrevWhIel2aojwLEwkpi01KhoW+0vvhboCulKDJo7WB0Hd8pO9n+9afRpQAj5ig5VTQX+g6MxLB0fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SA3PR11MB8046.namprd11.prod.outlook.com (2603:10b6:806:2fb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Tue, 18 Apr
 2023 10:57:13 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3cc2:6622:cce5:cd02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3cc2:6622:cce5:cd02%6]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 10:57:12 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hdcp: Fix CP current state
Thread-Index: AQHZbPHgxQzK5/8RfkOm2bkHxivI2q8w2lewgAARkwCAAABmMA==
Date: Tue, 18 Apr 2023 10:57:12 +0000
Message-ID: <CY5PR11MB62116A02BEF23288351F570E959D9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230412034818.688215-1-suraj.kandpal@intel.com>
 <CY5PR11MB6211E8AE7A2396F439911A2C959D9@CY5PR11MB6211.namprd11.prod.outlook.com>
 <MW4PR11MB67617E1C777F1B541C547FD5E39D9@MW4PR11MB6761.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB67617E1C777F1B541C547FD5E39D9@MW4PR11MB6761.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SA3PR11MB8046:EE_
x-ms-office365-filtering-correlation-id: 416fabf3-bd23-4c38-8c20-08db3ffbaa21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LFiO5BO0ptHdw+8t9kp2MPphbGrEEH2Dhxr653r8IG2QDUlebsrQbyIt8HVbvBnWW2WuQUdgr7X/iQjogJIVIk2L5mpG3L0DbASrBypUNlz/izDs6lbXrEL0fmbgZP9EeIKDH7OKTzARjBnE5Fc6BoTQqf/V2QUnI2corHl9kWqrQeqpzl8vwG17FrlZ+2jYOWWSPfJam4JJPN0OjC1apU9JVX5RaaIqb8I6Cwm9lL+q9B8a3AMgwLeD80a/s/cNZ0/ju/tmQSLQqxn9Ifzb7MnL/PHdxpZOho7+VM9BWzwdeuo7Ky1eJzAst1FeCijqgbkLpNwMu24ax9W6xMYhq65tLhC75ofe7dpJOdagScMlE7QfG+cn27Qa3lfDPp3Wl0DnPoMoQL3bBCiNOo8to4SkQWai2IQ1TE6aSb1GcL8EjUypL/s8CXaKpj6L/ImorDWZwPoleKjW/X9st1zPkml/Y7FJTN/fbzGwCwcO9PxZpO4qIUP/ZVt+fZHEUVlgbMR+c28A64BRY2CHVNj9rMl7Lq3NPDauA9zNNo02ScRzzNjQQzb2+A++0ZFqt2mrv/s1o7dk6nx9PueoQW79tZ/GAE1VjUQJpjfKLTVT9FqjxfcJZQ/r4bYajOvcr7Rr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(5660300002)(71200400001)(7696005)(76116006)(66556008)(66476007)(2906002)(66946007)(64756008)(66446008)(4326008)(33656002)(86362001)(8936002)(38070700005)(122000001)(41300700001)(38100700002)(478600001)(316002)(52536014)(8676002)(82960400001)(55016003)(54906003)(9686003)(110136005)(26005)(6506007)(53546011)(107886003)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aa0GuxbAqygbrPWE5XTSNYQgm6dWuoztyAtWzq5jK0g+XyrBAsW+tyhdBIZO?=
 =?us-ascii?Q?iWRQSvmfljOUbSEGvrmmGyxO/A8Q/B0u4CCNOz5UFid5d0ShNx1ChHp4hjTi?=
 =?us-ascii?Q?kKn0sxGyl9oJCCNsAKVg4NoIjZVlNF2tOaVIWi6Mg4POQVfopK/pDpb/Ttc3?=
 =?us-ascii?Q?EmmIXIhK6gJyciCEDCtl4WpgQY10DGjRJyKLDN/uWri8xyxSaLQklwCulS5i?=
 =?us-ascii?Q?nz26Wq0qckmWFFR07kmHV+KyL/4XxEV3WkC5npiJkaGcPzmXOlaVJvYO4OQK?=
 =?us-ascii?Q?MYoAThqvY/zkwQ53DdH9fAmiSVuWPsjg1R5zcnQxcFIJ0/9ESWWYrgHC7FO3?=
 =?us-ascii?Q?niiRRX4CuHkCb4K6y0PDspxBVDiLlMDFNgR91MwzHEjXo2Mg43F9ft9v7z05?=
 =?us-ascii?Q?270lxBK2vXqLVtm9l925lD7gHJMQyjHZ2Ogtasvx6A8FoBIGll3W8rvptI0D?=
 =?us-ascii?Q?i5FW/juSk14DRsQFLkLAhpCFxBDKueW9st6duBcz30/X6GVhRTgIKC4uYTJe?=
 =?us-ascii?Q?neTORBDZ5CnfjpZ78NzCh0migS4uwhBqtkrqQhphzzSBGa83RCvf3Kk76v4s?=
 =?us-ascii?Q?BQJCtHIeSGLfvUYOyX38wou0FpA297gzPSdiN+Goi5dwo6wWPaImBd0B2pPm?=
 =?us-ascii?Q?2J7z/0XBpxokgnLmiWaR1FQWCvAQGXXc8DdxoI+shnCy1g3mIf0FYx61TTt4?=
 =?us-ascii?Q?DXXBJXndxWSp2c7x7tkHhGQFrd9txZP7gN/iLV3+yd/9oDvnNZ18f5FvtqHX?=
 =?us-ascii?Q?egGRkZ1Fu2Tgx+GoUs4poFa4t+GqztpeNO8tNMNfOubrUvdZRf8xymPrj0yi?=
 =?us-ascii?Q?QTFBsL8ezXpJjRjOleOXHdNtjuS6oJWxrpWWetjGLcWxwgUxw6avlekqivRF?=
 =?us-ascii?Q?Wrr6lICL5VT7PRFCOeusOkcijKiC+pPslEzdKmsfcsl1OoI5rjdOhjpeXr6K?=
 =?us-ascii?Q?xTZZf7t4zmnOJrdjlMLkaTpAATG7Ky3fjdDZhhGx1QVsKv1rjJLk+JBClQNV?=
 =?us-ascii?Q?kwYr7IXt7bbLK4wUnhQTnqXBn/A4Vsre9c3keFIUkAy6CqRrLbbeXFaFyMV2?=
 =?us-ascii?Q?mepuiAvTN59ceqgURmwxhFYv28zLvJVDo2U+KcyejecaiY3PE8W/r5tXuU3b?=
 =?us-ascii?Q?4Ms05EpXDK3kLNvHAu0KlxiI1WjdfuGaGUKWubnqgvNED+lXCW8d1gHjADXu?=
 =?us-ascii?Q?1mQ2rOKO2qgTyUrqdJoDHKfZH/vv5hH5nBT3cJdhpX9BjNvitFvTiq0YzYHH?=
 =?us-ascii?Q?O53pJjVxaa5WvBsB/YzUbYD773EpMNzdt/vo3Hc2H+T4XW6VUUBvUAKBhUmG?=
 =?us-ascii?Q?PLvWlQ/WdG+MrPBoYICsdpb1sq+SkRDnZrGQODEDchUIk9XLOarL6J9t4u/B?=
 =?us-ascii?Q?8XH2VlFjqHX/+//LsiQ+KgJkGFn1vti+zssrMdDoNFpkObHmIqCklu/ftVqG?=
 =?us-ascii?Q?7UDn7xWRNngqF+VzvI9rr8eLo2cp16zBoKQhmVvnOhjDqmW1KlnqU1IQJKNV?=
 =?us-ascii?Q?owHCh3ayQj6TCi4quq2KtntvsKuMiWUYszYWfFycxYolWBtKTE3dJMQsNqg+?=
 =?us-ascii?Q?x6pMQmOFw0nt3K5JLwxp7+mKxHKMgJnjqNKG5H/u?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 416fabf3-bd23-4c38-8c20-08db3ffbaa21
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 10:57:12.6271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /cxVwJRjrFhuHhmWNyUUj4+W/wc3jOr7h2Yk96zMFFENE5gvvCAJiB3nGsY466BBiNYiqFEU0SVhGgMSiJnHYS3kKsop0umHW/sPGBFaF4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8046
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Fix CP current state
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, April 18, 2023 4:16 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: RE: [PATCH] drm/i915/hdcp: Fix CP current state
>=20
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Wednesday, April 12, 2023 9:18 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nautiyal, Ankit K
> > > <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> > > <suraj.kandpal@intel.com>
> > > Subject: [PATCH] drm/i915/hdcp: Fix CP current state
> > >
> > > In many cases there is a need to change the CP property to desired
> > > even if not modeset has been requested yet on such situation being
> > > lid gets closed while DP is still connected in this case HDCP
> > > authentication needs to be reenabled.
> > > Remove Fix me as we now send a uevent via
> drm_hdcp_update_property.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++-----
> > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index 650232c4892b..7b0648e3499c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -2564,12 +2564,9 @@ void intel_hdcp_atomic_check(struct
> > > drm_connector *connector,
> > >  						   new_state->crtc);
> > >  	/*
> > >  	 * Fix the HDCP uapi content protection state in case of modeset.
> > > -	 * FIXME: As per HDCP content protection property uapi doc, an
> > > uevent()
> > > -	 * need to be sent if there is transition from ENABLED->DESIRED.
> > >  	 */
> > This comment was added because , we did not send uevent in
> > intel_hdcp_atomic_check() function as it is not possible.
>=20
> Yes but now we do it from update_pipe or when there is a call to
> update_property which schedules Propwork and there we call
> drm_hdcp_update_property which sends a uevent
>=20
> > > -	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
> > > -	    (old_cp =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> > > -	    new_cp !=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> > > +	if ((old_cp =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> > > +	     new_cp !=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> > >  		new_state->content_protection =3D
> > >  			DRM_MODE_CONTENT_PROTECTION_DESIRED;
> > This is overkill, for every display flip there will be HDCP authenticat=
ion?
>=20
> True we are trying to see some other fix for this but as of now only this
> seems to fix the issue
Please get a Ack from atomic commit POV, this impacts the display flip path=
 and hdcp calls to content protection firmware=20
may take longer time in display flips, have you tested it with higher refre=
sh rate panels ?
Br,
Anshuman Gupta.=20
>=20
> Regards,
> Suraj Kandpal
> > Br,
> > Anshuman Gupta.
> > >
> > > --
> > > 2.25.1

