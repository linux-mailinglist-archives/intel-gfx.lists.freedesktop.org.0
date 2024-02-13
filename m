Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF00E85345B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 16:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC6710E6AA;
	Tue, 13 Feb 2024 15:12:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQ2ti+1w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A3AD10E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707837168; x=1739373168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/S2E7CIXfs4dKYCArj72XtKEmrAzs5YrmqaF7loVNSI=;
 b=KQ2ti+1wDAwOqRqdSWf+UuYaKiOgBnWy15gSvrRCoiTbC/voyOGysVgL
 Wn5IMgVm8u8D3uv6BxSq3KXZTtcRGz4nfFAWYpu8b8zIfmelGT+yAXCMv
 iwq/2LYKQJuQD26EjNT+5Gdk7MKCzAt14g703tY2NJ7zw21eeDE82oQD3
 Q0VqYwdWCMYrLgQjO1TQNC8NNadG9bQQvCheD3hiUA5O2R1RFB+XhFu3z
 TJEFvJugexgVHdk51Y4OkdGTOGvT4wHVZEJorceYOvwV3AoxHsumq9N8R
 3pILrusVPsk0ZtGjA/K9kUCY7FGFPCPuTXvJVv2mVF1R2PWWn5Q87syDX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5620378"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="5620378"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 07:12:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="7490455"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 07:12:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 07:12:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 07:12:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 07:12:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 07:11:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dr8BwOtLaZEr/Teg6edvSJdCC3eX68N5hWO8s4/EEKz7TBZ09CVon4znKCqhQFFYU/uvNbQwxUSUkunEJa97tgdsfsS5A54NGTlEvEZYmQ9gB+0MNLdWhZZBNb/le/+HLxKMNaGGAUbCaQvjOz3g3xOjD1ZI220YRHFI4BxzM6nnTknSUIg2zSjOzNT5D16TXG9mYvYamqjkT/VB9pAr6J7SVYC86Gr1bRnqzfDu/aXboWfL6Gbu1EghcG6SH2pm0QTIhyqENSk9i/eehk8YvO87+vwtZfcWqFNz8lwqgX+bHv5nrkFrwmrROlFiP+jfMy9g5dkQI3W3uvg85mW5SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UYhvucUUVCNVTOIfT5xwl4zmgFPh3O4uXfgBIRw4G2M=;
 b=YP++6nknIA9ELeOq42LQRI1cMk4tcaMwUh3hgpha/IKniEy+A45aaNVqL6kmd4L/I+lMgbOyE4asjJkgDgIt4cIs23fYLncnwTdPdBpEFsbETC6307M64TmHKx7amx6Ad8kd7X0Bh32PZNHopOHx/vF3sr6Uo3Ly0UrngPI+KowuEhZgXhuBz8vjtKA25T7C2/Z39tGJHx4i8BIr7o2LPvVjiokZiJ4JeSzzozPrKV+EoHD6R/WUwPBzuo3YY0uZoFTlmwiJCW7y0vyOZM1qcIIeNLdoP1kWt2D7WPuwv1TMPUnego5689Ci2U5Mbg3LxNey67EkuEbhG1w6F4xY3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Tue, 13 Feb
 2024 15:11:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::590:38d5:5c7c:3e4d]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::590:38d5:5c7c:3e4d%7]) with mapi id 15.20.7292.022; Tue, 13 Feb 2024
 15:11:37 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
Thread-Topic: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
Thread-Index: AQHaXbDqWhEuxwaxw0aAqUueNqDuwbEIXkGAgAADysA=
Date: Tue, 13 Feb 2024 15:11:37 +0000
Message-ID: <DM4PR11MB6360DD7D7B6557C5D0AEAE97F44F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240212125011.66174-1-uma.shankar@intel.com>
 <ZcuC56_5pZerqAV0@intel.com>
In-Reply-To: <ZcuC56_5pZerqAV0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: stanislav.lisovskiy@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB6266:EE_
x-ms-office365-filtering-correlation-id: cc19a89a-6cfb-4172-f010-08dc2ca6130b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WKN+Gi1830y7k/L/5TMmWIkL9M6BXVaytrLbiEJMTbHKyjOXtHQl8/qHCHkZZQV2vtsm1Q51iwavGQ3E/lY0tjUWVQhgzMZ3WPzOygMAnf79aFCScpOvdqa/y2NIZXYWxNwi8Hg9FLP5vFNrQV2wl6w6pF0GOxPfshYA2au99v/ZctV2qmMpt+xr1YxeAoQA7K4NHrwXj+4DLP2wl3C7xxA52TVuVaPFqb2p69f1cx7lIhoNXYasK21MwvUDwJgUqexsGuLSRq8BXKYJnisMbNEtr1L9Xj5bdPBR1t0F6B/fSWVfR9Ccof/ojlZF7zhxfBrwFAWJLaVADgQb1JJafj2BgTzhStOJwSTPUlE21/KAsysmsaP15wlwEOggCXI9m6vxbbVNwJcSO/yQIPB2kG4/PoSaqUkrMNohogY2CClZv84IQOyeZbEFctV1ravtCZCwDlxZPLF/F9/R8ts4fOAbiYCYtQM4n1JTiIMl07Ye6FcZWuU6PMvtaBh8q5aw8Pegg8MDN+b7VYiGisnnUSdirc8+u4sQdYuiSkvfqx3W2qSiIQFPMNoDwri98nNzqORgm2BYb+7i/AJAitnNwhhRHORaBFChrUpklTJQu2CgMAdcgmaDckHgFkPL5R9k
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(136003)(376002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(9686003)(55016003)(478600001)(41300700001)(8936002)(8676002)(2906002)(4326008)(52536014)(5660300002)(110136005)(38070700009)(66946007)(6506007)(7696005)(53546011)(6636002)(64756008)(316002)(76116006)(54906003)(71200400001)(66446008)(66476007)(66556008)(66574015)(122000001)(86362001)(26005)(83380400001)(82960400001)(38100700002)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HSJ03FOhpIcUQAil+4hebA7S58YttFevY0U2/SwRC2Y7jO53xKixTgaMCM?=
 =?iso-8859-1?Q?uWGArg1LurTH0zPfHhDoSbNTgUOm7YCkrW770t6Y3NJS2Dxn9LWU+0OUIC?=
 =?iso-8859-1?Q?eAVgi+Xb/B+hqfj4EXSbalWCGD+vFNkXIqXOespCINAQ+adQ67gorg5Z0U?=
 =?iso-8859-1?Q?CcWyYWNrrs5r06Me5au8jauYKkQyziRpLWp97vtziPLhlzoBJw1Ql7+VeT?=
 =?iso-8859-1?Q?gZtkEa+5N6veEs1rj4dxuGFhIlYcJlA7qNRSg4MsTm2xjkmJ5pDyIvgWEo?=
 =?iso-8859-1?Q?cj0SoWZwi6j2VVvKIXaXPJGYtdXGvV0IO2h2DBzUujARUndEcp8BGkFYXl?=
 =?iso-8859-1?Q?L6P4ve2WSJQ3+tT6JLrE1nb0EegI6xMjkzvIb90tbTgt7xrnGNTcsKmdIU?=
 =?iso-8859-1?Q?01IYNj05ujGLgx+IwI94/f6Yfpx4JHEIUqgjoTRelacp4Do5QdQzQmiZDE?=
 =?iso-8859-1?Q?mLcba8JdqZkynY2wOCQVqA2f9TLgAIe64vVu36ccO3V3YB5qnQKUzsAzBN?=
 =?iso-8859-1?Q?eUypRQikPU84hAg6NR13zL0EJ7ebiI+t8OCHGfEK0iIMHNgMo9TZmJfQih?=
 =?iso-8859-1?Q?1LeC96wuuAdsMFyjQFfhhbNUxb3D9PiVGgLy7vRd3Osu4Wo/EQW7uyw1dW?=
 =?iso-8859-1?Q?fjAfI1C5WDtCqQYuDbBzzq6EYwZCsMafAwKGXxCVx3/2+5wor9NIPDNQ12?=
 =?iso-8859-1?Q?I9BJ3EJYeN1GKhzu41Wy1Ct9EomI1sZhTwZ0VdYUo9efNDCXDNp2wiNSW9?=
 =?iso-8859-1?Q?j0UXmZCkcsytMDZqx5aZ7l+Q1Vv7uPWvR0wcRdG5DNfEdMiANTYMq7gjw5?=
 =?iso-8859-1?Q?nmW8aVxftRxzAea8f54CNBifZQwhYK0sbMl7Ay2I5grubnGmEAnKqI3Ph8?=
 =?iso-8859-1?Q?o5BHaJNhgDnZHUEXMEFemSZA2Vodd8NILX7He+56eIJXw2pR5S70yUrNfo?=
 =?iso-8859-1?Q?PLwlsfyCrH3IbLr/H4pu+xSi3vtYpQOY4oh6HbagX927sbI/j22hsUu59p?=
 =?iso-8859-1?Q?nqJIeYZkNE3lvFRGQiG1IxpXAeUacKB+OdXjL8Y3r3DyTUaCDz7Z5Ui7iQ?=
 =?iso-8859-1?Q?GRO5j20SCYyUbtK6kzAGVphV6LtrPxSlS2x/vHrg7kDQs9l11fgXyFW3E8?=
 =?iso-8859-1?Q?UU/kwjQzMuUZ9b96Wc9RMolH5Utf5wPb14RQ1kwHc/xfa8al2+nylZ3pYv?=
 =?iso-8859-1?Q?05WhSYLAIHH0+k1rU+VmOXpFQ56ZNHqvSjnUI+FekCUTz4jWRpzwkHO3bJ?=
 =?iso-8859-1?Q?/4S5Tf6WNHSNtHtQbLqW9rzJEtCudhOLoue5i6WGV8zNixx758H35RyJhV?=
 =?iso-8859-1?Q?/cnRreGhyss+u7zrizcwY0DN1WVu6acaPsok0IcHQgVgBypSwetpjQk7Lg?=
 =?iso-8859-1?Q?QYVg/dXnU2xBp3MKQubMo4BR6r4zkVtL2dzqKGy+UwWCRyMV3vU7vwK6XF?=
 =?iso-8859-1?Q?qFTvJOkuTDDJIJuD3U0zmeZrw4bBSmx0O+NYHT8LHMqfCX1Z5cdoKRwWn+?=
 =?iso-8859-1?Q?Ec+4hNkEoRynK4dabnTI4S7A2ZmqenV8NKpNR9TMLOtmM07qPu0dRKAdCO?=
 =?iso-8859-1?Q?bsWxfRE9tSPARLdbDfq5qG/iZMFgV3VM05NBpBWQfEXjP/R9RK+ahU83Ws?=
 =?iso-8859-1?Q?trumMvQyLZ5FFGACC9rRs1eVv8uaKp85BH?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc19a89a-6cfb-4172-f010-08dc2ca6130b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2024 15:11:37.4974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nWqOmUNLitT2Es76OuSy4zfj3Z9GfPTh9hTxIZzDQdFTf34n9aN1WAk2krkPbf80TINUS63r3L4a7WCZOzlKyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6266
X-OriginatorOrg: intel.com
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
> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Sent: Tuesday, February 13, 2024 8:26 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Lisovskiy, Stanislav
> <stanislav.lisovskiy@intel.com>; ville.syrjala@linux.intel.com;
> jani.nikula@linux.intel.com
> Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debug=
fs
>=20
> On Mon, Feb 12, 2024 at 06:20:11PM +0530, Uma Shankar wrote:
> > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >
> > For validation purposes, it might be useful to be able to force
> > Bigjoiner mode, even if current dotclock/resolution do not require
> > that.
> > Lets add such to option to debugfs.
> >
> > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> >       debugfs entry is created so lets just check manually
> >       the DISPLAY_VER.
> >
> > v3: - Switch to intel_connector from drm_connector(Jani Nikula)
> >     - Remove redundant modeset lock(Jani Nikula)
> >     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> >
> > v4: - Apply the changes to proper function(Jani Nikula)
> >
> > v5: - Removed unnecessary check from i915_bigjoiner_enable_show
> >       (Ville Syrj=E4l=E4)
> >     - Added eDP connector check to intel_connector_debugfs_add
> >       (Ville Syrj=E4l=E4)
> >     - Removed debug message in order to prevent dmesg flooding
> >       (Ville Syrj=E4l=E4)
> >
> > v6: - Assume now always that m->private is intel_connector
> >     - Fixed other similar conflicts
> >
> > v7: - Move bigjoiner force option to intel_connector(Ville Syrj=E4l=E4)
> >     - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
> >       manually.(Ville Syrj=E4l=E4)
> >
> > v8: - Pass intel_connector to debugfs_create_file, instead of drm_conne=
ctor.
> >       (Jani Nikula)
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> please remind to sign-off when sending someone else's patch.

Oh yeah, sorry missed it. Was filling in for Stan while he was OOO.
@Lisovskiy, Stanislav Please address rest of the comments raised by Rodrigo=
.

Regards,
Uma Shankar

> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> >  3 files changed, 52 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 6f2d13c8ccf7..a962b48bcf13 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1391,6 +1391,20 @@ out:	drm_modeset_unlock(&i915-
> >drm.mode_config.connection_mutex);
> >  	return ret;
> >  }
> >
> > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_connector *connector =3D m->private;
> > +	struct drm_crtc *crtc;
> > +
> > +	crtc =3D connector->base.state->crtc;
> > +	if (connector->base.status !=3D connector_status_connected || !crtc)
> > +		return -ENODEV;
> > +
> > +	seq_printf(m, "Bigjoiner enable: %d\n",
> > +connector->force_bigjoiner_enable);
>=20
> probably better with a yes_or_no string?
>=20
> > +
> > +	return 0;
> > +}
> > +
> >  static ssize_t i915_dsc_output_format_write(struct file *file,
> >  					    const char __user *ubuf,
> >  					    size_t len, loff_t *offp)
> > @@ -1412,6 +1426,30 @@ static ssize_t i915_dsc_output_format_write(stru=
ct
> file *file,
> >  	return len;
> >  }
> >
> > +static ssize_t i915_bigjoiner_enable_write(struct file *file,
> > +					   const char __user *ubuf,
> > +					   size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m =3D file->private_data;
> > +	struct intel_connector *connector =3D m->private;
> > +	struct drm_crtc *crtc;
> > +	bool bigjoiner_en =3D 0;
> > +	int ret;
> > +
> > +	crtc =3D connector->base.state->crtc;
> > +	if (connector->base.status !=3D connector_status_connected || !crtc)
> > +		return -ENODEV;
> > +
> > +	ret =3D kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	connector->force_bigjoiner_enable =3D bigjoiner_en;
> > +	*offp +=3D len;
> > +
> > +	return len;
> > +}
> > +
> >  static int i915_dsc_output_format_open(struct inode *inode,
> >  				       struct file *file)
> >  {
> > @@ -1505,6 +1543,8 @@ static const struct file_operations
> i915_dsc_fractional_bpp_fops =3D {
> >  	.write =3D i915_dsc_fractional_bpp_write  };
> >
> > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
>=20
> I don't believe this macro here is using the defined _show function, but =
maybe I'm
> not following that very well since this macro is not widely used.
>=20
> What about using DEFINE_SIMPLE_ATTRIBUTE instead?
>=20
> > +
> >  /*
> >   * Returns the Current CRTC's bpc.
> >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > @@ -1586,6 +1626,13 @@ void intel_connector_debugfs_add(struct
> intel_connector *connector)
> >  				    connector, &i915_dsc_fractional_bpp_fops);
> >  	}
> >
> > +	if (DISPLAY_VER(i915) >=3D 11 &&
> > +	    (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> > +	     connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)) {
>=20
> I wish we had a simpler check, but I couldn't find. :/
>=20
> > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > +				    connector, &i915_bigjoiner_enable_fops);
> > +	}
> > +
> >  	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DSI ||
> >  	    connector_type =3D=3D DRM_MODE_CONNECTOR_eDP ||
> >  	    connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort || diff --gi=
t
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 01eb6e4e6049..0d4012097db1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -626,6 +626,8 @@ struct intel_connector {
> >
> >  	struct intel_dp *mst_port;
> >
> > +	bool force_bigjoiner_enable;
> > +
> >  	struct {
> >  		struct drm_dp_aux *dsc_decompression_aux;
> >  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 5045c34a16be..217196196e50 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp
> *intel_dp,
> >  			     int hdisplay, int clock)
> >  {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > +	struct intel_connector *connector =3D intel_dp->attached_connector;
> >
> >  	if (!intel_dp_can_bigjoiner(intel_dp))
> >  		return false;
> >
> > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > +	       connector->force_bigjoiner_enable;
>=20
> I'm just not comfortable with the magic _show of that macro and would pre=
fer a
> more simple and straight forward and widely used version.
>=20
> Other then that everything else looks good to me.
>=20
> Thanks,
> Rodrigo.
>=20
> >  }
> >
> >  static enum drm_mode_status
> > --
> > 2.42.0
> >
