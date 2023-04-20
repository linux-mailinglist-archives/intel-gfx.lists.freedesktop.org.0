Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432626E88B4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 05:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A51010EB66;
	Thu, 20 Apr 2023 03:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB9510EB66
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 03:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681961311; x=1713497311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7S59fm9Uz2oSdFbPIV7gKuwy+yaFkMECvfD6LEax85Y=;
 b=lxUQd0tMbxIjOuJB9IttRnjo9oNLSPzhR3cUYE6WyvB/NolzMJkbK5Ju
 WjSZe8SR2B0HyAF3vobYdiWxX9w/CS5btto39Q8Uhqeh+8EDrTkVEJoDz
 z5MLDw+aYijhy3qHgdvvwCoaTbnVMhY5ppFih22W+CR67AQuqsWibT4xx
 wY+Df1LsL9WrblRi1tOnMqokEtpiOE2gSy5SLW27piPLRb9TkZZXkKgJY
 ceLbgmeRVDfsnoI7SCdYKxOHiG/yarPw/h6NbuhkIAx96M+wZVEypWFwi
 4UoOGZHds24R/GTHLIZl2mPJnsbd2wpofoEKWhtHWUvGnCmR1ud8StRBB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="410857582"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="410857582"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 20:28:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="694315896"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="694315896"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 19 Apr 2023 20:28:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 20:28:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 20:28:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 20:28:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5DrYmVSOZvwne4Q+9TvEw+PFDrKQWPBx5TiTIEpOMbpJ9/CAG6ioEPc0TvlLMwCJrLogbNPORyDFw0aozX4Lf8JCADzRDhNiGSNspmVqyaOGm/y3nhjzgXY2b6tFqDb+mADniaSIAtbrTmmHWvbUH1wlEW7ws6rQer59cFdvHDheb3oQ0QrHtdjDGDZ6fLmyZTDFLit0Es8RuYi1c3hydcqlxvxfnvjHJEupx4W+FyA5nOic8eNZ7FvnVuiavHKavCxUNjQnayuCfYKZ6TUM4EXredFaBG8sYztC4WlRa1HB6NuNHNqLLPDJW+BYT0cLe9QLRvge8rd4ueTxxsS8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4IPZII6vFQpTEm2+5kLPEfJgZUyOlhbJIB68u/96X8=;
 b=UjDBkAAtW6bABRiNKHSPUewrQkRtSikM2Rf1xTw7tZogp3jMdsk4rmchqKbZNbi2DCp/r1j7o0iywnerJTxBCclGjicJwpSVMJjj6tQHGqHVbsuXhKSLs1UqOelgkNNmD9ZrBZi/lZUkORcFESaI53jIKbVwvn6XYsOLWOTHTaH9MMl34c4uKdwc1QAur6yXb/2CZd8DEhBD/9g1OhRZy2QjOr6tyUZ5CleTFzRxooSYNT3vP82s6B90xb0mPiOheCo7iW7CnURRoP74ItUU05Ujv+pIiQmoiXFygL9TlleCFUCf/oOxQImwZ2wkNUjwMhz6wEzmjDY1dN0b1/T+jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Thu, 20 Apr 2023 03:28:09 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6298.045; Thu, 20 Apr 2023
 03:28:08 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915: Use separate "DC off" power
 well for ADL-P and DG2
Thread-Index: AQHZWEW1M2ISApbob0inUx1DRRSFaa7/PzeAgDSADhA=
Date: Thu, 20 Apr 2023 03:28:08 +0000
Message-ID: <DM4PR11MB597116FDAC439A4C3AAA5ACB87639@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
 <20230316202549.1764024-2-radhakrishna.sripada@intel.com>
 <ZBSmleJKK31MtF5M@ideak-desk.fi.intel.com>
In-Reply-To: <ZBSmleJKK31MtF5M@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ0PR11MB5069:EE_
x-ms-office365-filtering-correlation-id: 85798a6a-bd03-4345-6882-08db414f4329
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s4qSqYWgs/CIB1H5xle2sdV1nCUHwu2VjU2PA66Kq8FeKMVv1qkTktW9hVscR/wZfpagNnM7oUxvmXKBpJbDbWmMENWnhwNJJPUD+BxBtruQumQbD9+t+lRrqq/kAPs3AW4VxAaPGzRiOQhTzQPBAgBN8BSZ1hAiW1/+uvKOi9J3AMRAXXBtCJQhOJ9LsOvWH44sRATtKGb3UdalpMycLb84X0wVKjTG/54b8/VnacCWVg9KRFgm4IklTLtdKQzUWghyTxDdxsT+qJOHUG1N6xCUl+Kr9FtpCA4zVR/wD/RAaTLiOg7POQBrBT4xMMcGxXEdMFFIUyX+fdG/25dglJtb5HvRAYq36Z0pK0Dzk5pIHOVNVNjoWIojZ8wpiRyD+rXJvLK+OI+cf+SJBTL+yutDtNJVxKOeQJQPr7wV30aLypVWLYj4baJTfYnamhVj4J3OWM9orAPGUdv1nCQ7uh2oLQerkVzAaN2FET9ZdH7wF5HCPJDW8bvx8sE0i6KBd6VvkDbsSEUXrDBXRkcm62g7Mf7PuOn5P8J0F295gqLS/67Va27AYDOdXz4S52WsRuF2VxsZrUmmXHmnducUkZVIzVu/eZfj4F0/lkDtjH0ZDD9rsQhRpUTJSHn8OY/g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199021)(316002)(9686003)(54906003)(6636002)(53546011)(26005)(107886003)(6506007)(478600001)(66946007)(66446008)(64756008)(66556008)(66476007)(76116006)(83380400001)(82960400001)(7696005)(71200400001)(186003)(4326008)(8676002)(6862004)(41300700001)(8936002)(5660300002)(122000001)(2906002)(52536014)(38070700005)(33656002)(38100700002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jFnezL/aesjYrpskk4AVYZ4a5NrXdRd6laTt2T9oWnGQazv0vwca3IOvnzjd?=
 =?us-ascii?Q?dky4c2b49b2AZTMbYcHpHLJ1mag7zIJqM73eD1PnedwVoFTn5G2H0JoxFOeM?=
 =?us-ascii?Q?EX8VQsPyY77wQNTtxrr1w1EO8ZyelWPswgBp0el6AMD3o90LM+FE0Pm1xWWn?=
 =?us-ascii?Q?oKnbOcufwdQXbe8OX7Vl5c9OQ0Av3pOSfjTNTnXm8yXb4GES6ghC/0C4dMQF?=
 =?us-ascii?Q?wc+h01/o1rgU87PHgcfMakv0xaB8rdAgDJgR2svcDvc/QxxpThA/PfqgZnK2?=
 =?us-ascii?Q?L4R+MfQ1omMiPm9I77ifbdJ7kRwN9GGr9P0Gh/P0yvPo/IU6Vi+v5VjeETGf?=
 =?us-ascii?Q?DgW8LwjEkx9znbdFDSSuQAsm31vZJissChH+2+L4P4TUFi0uFoEXiOj4p6G4?=
 =?us-ascii?Q?Xi1j7sekI69S0hSZFNRkVUEp0hAiTTYTbTH6KgFQ6kCf20ATUcMQxH4DaGd7?=
 =?us-ascii?Q?TckVDvRTrLYQs6aJVGmGKW0sAeO/kRdwZ7H8s6UFj33E+2Lm72Gct70XMBCU?=
 =?us-ascii?Q?toIJ7yrweo260jbWY6Ab2QXobRWkK2RVyDqIVa1V2xLTjnjSJLmc0mEUkKDw?=
 =?us-ascii?Q?CpAujB5+cw3TGyhhOmq31LotbnW5axSFl708+G9okXsKNEs+mPXIM4egEIGL?=
 =?us-ascii?Q?knFlRtu/IgeO7zd0W37v3UQv/ylnnV29oC8ntYHwG2oTYQ6QkVWiWbLvl2bz?=
 =?us-ascii?Q?asO4XPOi4Q6UWuUxDlObfYaRYiWHFZw6OKjq+48+rM/2fY2J+TAgpQcIF0/O?=
 =?us-ascii?Q?l4Wnqd1tRfs42qjGF1vbzSKVe3SaCjUXuVaJhPomrCvLvH43W8gUakC+MBKn?=
 =?us-ascii?Q?SqR7gH3HBWLKcYE+GAk/xm3/UcP71c1r44EdCL2ORooNjL1qnoRPM2EXshaj?=
 =?us-ascii?Q?VRvYcBofxZtNTD0/zzsOccShGNsFTz8TGXsrKQlqo64hZR/rOf7cnCtXm5Yo?=
 =?us-ascii?Q?zM41zDJ6Hq8lRlqbc6S7DoBoUUvbF15u3nslEbqDGdcKl1duI0z9LnrQTLnQ?=
 =?us-ascii?Q?ttU6nu+Cnr0Eoe5fDBsBMKwKMwYivY7ZTFMK4dVDBh2oAw/iMX7x5froZkNy?=
 =?us-ascii?Q?DQ288ODCMWjI3ZBIZTi8Fe/oxsrvDU4/Z4xJr2cJf5aXOpJXmYEqx/aOg1yR?=
 =?us-ascii?Q?8n7+BKh1dnrx/72/oRhmf8dW/3QMRuqRXh7W3DchwBCscPrdIcnx43Fj+Qxv?=
 =?us-ascii?Q?y7gXw9onZxv0oFpxFQZcMv91G8/2A6LtlEnN+6ODNB1L8pCQItVswdU4F8wr?=
 =?us-ascii?Q?A7/O5EDhwKu1TZUP4A3L9+FB3WTM2m3lrLEAK216Cxo+IM5oInvjw5pEjsoo?=
 =?us-ascii?Q?nd0+iJPokIpI5Ti/FK27IrxPRWt4d306TpZCiXIXP9ZLsvUZl3+9uAhOxwfK?=
 =?us-ascii?Q?rEj5iCtH3JLDJkXiZvzM54iXcNtiYaXl1kydPufZv0qhpbWTU4yYYq4o0GI7?=
 =?us-ascii?Q?IB4OIS2yrLAfgDS3RufFQJ3eL5yHLeCNTpvI11LHESUHvODMr2vQQ3kA+wIq?=
 =?us-ascii?Q?vUAn2F7RuzGo37aWiA2wIUIfAGDYhCf1BAzZt0O4U49fbaFTMmhAY4qDDER9?=
 =?us-ascii?Q?SJ2N27s04xN+fljDe+KuJbepW9MvqHQMdn8Ilw5p5Cxub5mNCaiiebwvPobY?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85798a6a-bd03-4345-6882-08db414f4329
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 03:28:08.7455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPL0XGfD0DmJJa29aBj6WZFnaApcDnch9jqRzNkg6d9gnc9YE38CNWMA3OBdubhZPjEQh9hXhRmZJS4m7Q5Sz4pXciVUAAmhl0WpW74WC3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Use separate "DC off" power
 well for ADL-P and DG2
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Friday, March 17, 2023 10:43 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Use separate "DC off" powe=
r well
> for ADL-P and DG2
>=20
> On Thu, Mar 16, 2023 at 01:25:45PM -0700, Radhakrishna Sripada wrote:
> > From: Matt Roper <matthew.d.roper@intel.com>
> >
> > Although ADL-P and DG2 both use the same general power well setup, the
> > DC5/DC6 requirements are slightly different which means each platform
> > should have its own "DC off" power well.
> >
> > DG2 (i.e., Xe_HPD IP) requires that DC5 be disabled whenever PG2 is
> > active.  However ADL-P (i.e., Xe_LPD IP) only requires DC5/DC6 to be
> > disabled when the PGC or PGD subwells are active; we should be able to
> > remain in these DC states when PGB and general PG2 functionality is in
> > use.
> >
> > Bspec: 49193
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  .../i915/display/intel_display_power_map.c    | 41 +++++++++++++++++--
> >  1 file changed, 38 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > index 6645eb1911d8..d9e02cc9cf3c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > @@ -1301,7 +1301,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
> >   */
> >
> >  I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
> > -	XELPD_PW_2_POWER_DOMAINS,
> > +	XELPD_PW_C_POWER_DOMAINS,
> > +	XELPD_PW_D_POWER_DOMAINS,
> >  	POWER_DOMAIN_PORT_DSI,
> >  	POWER_DOMAIN_AUDIO_MMIO,
> >  	POWER_DOMAIN_AUX_A,
> > @@ -1310,14 +1311,38 @@
> I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
> >  	POWER_DOMAIN_DC_OFF,
> >  	POWER_DOMAIN_INIT);
> >
> > -static const struct i915_power_well_desc xelpd_power_wells_main[] =3D =
{
> > +static const struct i915_power_well_desc xelpd_power_wells_dcoff[] =3D=
 {
>=20
> Nit: Here and in the xehpd defintion, s/dcoff/dc_off/ to match other plat=
forms.
>=20
> >  	{
> >  		.instances =3D &I915_PW_INSTANCES(
> >  			I915_PW("DC_off", &xelpd_pwdoms_dc_off,
> >  				.id =3D SKL_DISP_DC_OFF),
> >  		),
> >  		.ops =3D &gen9_dc_off_power_well_ops,
> > -	}, {
> > +	}
> > +};
> > +
> > +I915_DECL_PW_DOMAINS(xehpd_pwdoms_dc_off,
> > +	XELPD_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_PORT_DSI,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_DC_OFF,
> > +	POWER_DOMAIN_INIT);
> > +
> > +static const struct i915_power_well_desc xehpd_power_wells_dcoff[] =3D=
 {
> > +	{
> > +		.instances =3D &I915_PW_INSTANCES(
> > +			I915_PW("DC_off", &xehpd_pwdoms_dc_off,
> > +				.id =3D SKL_DISP_DC_OFF),
> > +		),
> > +		.ops =3D &gen9_dc_off_power_well_ops,
> > +	}
> > +};
>=20
> Could you move the xehpd definitions to precede xehpd_power_wells[]?
>=20
> Patches 1, 2 look ok to me:
> Reviewed-by: Imre Deak <imre.deak@intel.com>
Thank you for the R-b merged Patches 1, 2

- Radhakrishna(RK) Sripada
>=20
> > +
> > +static const struct i915_power_well_desc xelpd_power_wells_main[] =3D =
{
> > +	{
> >  		.instances =3D &I915_PW_INSTANCES(
> >  			I915_PW("PW_2", &xelpd_pwdoms_pw_2,
> >  				.hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
> > @@ -1400,6 +1425,14 @@ static const struct i915_power_well_desc
> xelpd_power_wells_main[] =3D {
> >  static const struct i915_power_well_desc_list xelpd_power_wells[] =3D =
{
> >  	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> >  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> > +	I915_PW_DESCRIPTORS(xelpd_power_wells_dcoff),
> > +	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
> > +};
> > +
> > +static const struct i915_power_well_desc_list xehpd_power_wells[] =3D =
{
> > +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> > +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> > +	I915_PW_DESCRIPTORS(xehpd_power_wells_dcoff),
> >  	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
> >  };
> >
> > @@ -1624,6 +1657,8 @@ int intel_display_power_map_init(struct
> i915_power_domains *power_domains)
> >
> >  	if (DISPLAY_VER(i915) >=3D 14)
> >  		return set_power_wells(power_domains, xelpdp_power_wells);
> > +	else if (IS_DG2(i915))
> > +		return set_power_wells(power_domains, xehpd_power_wells);
> >  	else if (DISPLAY_VER(i915) >=3D 13)
> >  		return set_power_wells(power_domains, xelpd_power_wells);
> >  	else if (IS_DG1(i915))
> > --
> > 2.34.1
> >
