Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B15C57C4F53
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DC110E605;
	Wed, 11 Oct 2023 09:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3939910E604
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697017539; x=1728553539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1VYytNJBZ9BAIx1LF3mMnQWzJFdMOXl/Wapv+fBRlrQ=;
 b=ZtGxXpw0an61I4uD1EtvMbQHyPjUk6ptV777OVYYFoJRTKIzYKPGjyUS
 7Xr02R/knIezHuSAAcM0Y/iH/DO09/aNZtbReswdANBEY4yTKCPPIf+9X
 EEKTIxH3T1GxsJfE6keXldUybR9aW3ArEjjJ5AyHZ8GxBjR/yL7taOtdm
 Zw1uhCN+ZdaLHjFkkVc7MMBqklvpSugbc/BMKx7DmNa+91/KBv4klOm3S
 KthFRAnOdEqyx3WAIii9hXV+w9M9f2mfyFtdWDiW2/jJOkNX+TbTlmPs/
 WhpR72JScR5mrRmI3ptp2FrhqdaV/I8NFTKeDtzGGxgYWcGL6n/HHM80l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384474141"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384474141"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:45:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="927504513"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="927504513"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:45:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:45:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:45:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mRYMsWi2TcRLh4w9uskW0TDdf9Fk1qff375x0lkDr9qU638nVze6KmWniocEg6YidOoWlce17r69N21KfZjNjBrehmjTPK1fraNGbA1Io3qBuChmqBjwag/bBz4tU6KoIjJ5uULqmm4Zkt0+s7hFAqJ4NDja15bkvfqrcjy86yTbxjyVjfi2S1DJw477bF32Wgz7KQgDACPtGkvp00VJrn2zE+NRo8wwllczztoEsz4y1SXjGvUMhVwa0pjcLYECSjPppXqcZqXhfwojIQnflWHaY8D1jC6J6e83+c5hnALsxw7G1a6pXIwy5ffwakbRSZed3XzSs/Y1SNjqsQWtWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zf9M6ux28eaTL1p1tkr5zAhZvSj2w7AFquXQeRllKB8=;
 b=awoZpQ06jPzBo2XZDCGdZ4KBlbIiMJcCeuLJHMbiz5aWZrx2t6bFpJWcGeOZ74xoWwX5uF/6SqUydAwT0u4foS8ZBnqFDTxsA7KzfztHFjaIUm4OnLHiCl/AnTSMAKq8zJp6mtgrAgu1TRWUmNwJnbjY4ssXTu+EBDa+7y/ssLnPAxHYGyNdpho84/a7nZBidwn1HCRMR6bufaT7qPsm0jyaLdqcoR7DoyLzM99EMSm5BcREkZWVOV/Sc2le2NS4m4UaCyy3TaBwUzf8Zi6lO00co+fRC+9kQW2/RCNu4yUZ3oYfh765JLaef8rlgyVGQO+U/EhWw98r+FRzXLnosw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Wed, 11 Oct 2023 09:45:36 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 09:45:35 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add wrapper for getting display step
Thread-Index: AQHZ9cbHXN5JTSiF9EuiU9ipwK+dbrBBPCXggAMnioA=
Date: Wed, 11 Oct 2023 09:45:34 +0000
Message-ID: <DM4PR11MB636024C1F7F4419A744B101FF4CCA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230927133505.1086855-1-animesh.manna@intel.com>
 <20231003065211.1052385-1-chaitanya.kumar.borah@intel.com>
 <DM4PR11MB6360AF9ED4E278CE7FA68C21F4CEA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360AF9ED4E278CE7FA68C21F4CEA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB6939:EE_
x-ms-office365-filtering-correlation-id: b02beb22-680a-4e5c-2efe-08dbca3ed0ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1MANpizU3t2HXwdtyaxnxGpNVMqTUXC9E3fpa52b2dcggoqPp5OUkFp4x5dXhzTv47tCUw+NtG4kKD+7p2celwBYjs5kjZxCOf/AixUYJfnTBTffw4DxO/gQbxTftGkE/K+kXcOb1YtJ1ZhW+FuM1NyjnTjxaQeuNJyfdo/SsI7OSI5ABXZwJwS564IQm17z/POjg86sEDALul0z9kHqlbiJH2q2RB5FDeXV5rNWADLeMl+a24ErKJkMOPGSuptqT+US/z4NqoCvw90QhO8ursDZjBQBtel7R9xMvI3O3MPHuOommerpNBfPBpcXydjf6a3eS9agnHfZ/rcaUk0tiXqv/zJFi28No1UAq6tjNOmWNv9hf+f4r5P4gTk45piXwbVeXiOXNelSVjrSaIfyhXTMkbBxZ9xlXjmeKDFvVVFemljvZ+9n01geAB6PjgEpuODZ58OxlG0DwE+DT/eLXMG5jKQ90GITcLgjAvM+zrrJoQj3YAKLcssDWyyexUZgYaL85txzXxUyXLBVZ9g7cElaP2lj8AfCfbdEFyCa6NQD4k3uFtNhCMbe27mRO/8f0r/AbfPu4EPnAH6iVOWvDicmr8UoWrQlxtQlU81Xvy2LRHosymwueBTvgQdb9oBv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(376002)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(107886003)(53546011)(9686003)(6506007)(26005)(7696005)(71200400001)(82960400001)(83380400001)(66446008)(2906002)(4326008)(64756008)(5660300002)(66556008)(76116006)(110136005)(66946007)(66476007)(8676002)(8936002)(52536014)(41300700001)(316002)(55016003)(122000001)(478600001)(38100700002)(33656002)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jHtWYBB0BQ4q4VowfXHtiumzh87fUZDIs9mdKa+XfjfP7GwCxTKvr5uLnsNx?=
 =?us-ascii?Q?X0uwXIMzmCZBzuLC//19lyfxdeHdEm0R1lLkfq99pvVyRBRpSSs4eiL8pJFd?=
 =?us-ascii?Q?Q55LqkVwMRhwEs6TAXAp02T+O6mKC4fU+sOlsWlUfMzzqp5GlG49CWedMxWJ?=
 =?us-ascii?Q?MymZKuYG/6ri9rV5MNea+3Tg8BFAfQQ+FCj/ozWTTeJ+kCS7rwQ///1a/I1m?=
 =?us-ascii?Q?on+3nqsCxt9iNPe+DvO9Do6b/G8FaufdNFmDVWBpgWh08Ad93fKYnecdxMMP?=
 =?us-ascii?Q?W//TiJvOsDnsRBUXK0AnYUD8yL0NwtYHn6Dp8HzmqCfn9iLZd27FXPg6O9MA?=
 =?us-ascii?Q?JTe56aV7fQ/c3ny9gqL4yXSk5eDA22Fv4kGnRY3Kw+2ZAuVw90/A6DmYPQDI?=
 =?us-ascii?Q?UbXoxyEb4/v3ChsX9vdgG2uRFiMHtHk/wc9JuWLZJGbRTqat9wr0Cp8l2fv6?=
 =?us-ascii?Q?FOOAI16Q7sgUUB8Ylu6Gmpu7eOIpBM4NWATvT/0YJ3ELOqWiSATY1ajM1CPS?=
 =?us-ascii?Q?GWtnhNGjH7Eqm6ZpV4A4Z2XOfiYkU8S+YTs9jrVCGcjicUsQPSFCcbBZqIx6?=
 =?us-ascii?Q?aHVW/DM7wBteunFSgEjmhe+S71oVIolApbn62S1O7Ypq8KQ6SOQ0cRsqIx6E?=
 =?us-ascii?Q?RLSMWf+8FX+pfKFMAy09Ctul2idbLLLjxK6ZT29/poUQsPgnc2yRGYDdN4zi?=
 =?us-ascii?Q?5Rpl+/bjjpHsReW4kbG8t2JzpBH+VJK9iasI1o8CdG8HrVD/fcF1s5ww/9Li?=
 =?us-ascii?Q?XY7DIZaEgP+AqcWjoLE3kWD/P9pLFlTdPP09vWpZb+eNeNmrsbP6tH3tP+XK?=
 =?us-ascii?Q?czl20X4/3mmrhYux7LkHijCDaPapZPO9BgJKVZXifGK17D1SfLLA5e33v8Ld?=
 =?us-ascii?Q?RscKM5IScYfzr83X+/f8TOj0X0chog6MhXbJdCOKFPw2KWGpUbK3kSkVMUTC?=
 =?us-ascii?Q?C/BNrdN+0TcR9XRipXUXLHIFnoqlgjCQbtlz82NNW22y6uFWxK34f6iShIOl?=
 =?us-ascii?Q?VySUf7VxISrNxcdWsOYn4x1tSna4DkYbr5+1qNY/shez4hDrkVWlWynEjc+S?=
 =?us-ascii?Q?N/w2Trm+TQuqGOorLwXJWD/35+nHXoY0FBuCHoNoV76OoQHbMX4I6e0xa0MO?=
 =?us-ascii?Q?Bd7auTPgfW+7KOQa0ZCh6drjPyXfJqWXKf2/9h0m1ugIWg4xWyrHJKyxMTxy?=
 =?us-ascii?Q?buHJb5AJ/3GWbc9tpw3aEQIPkNjH8lz8L89yISc+i8zi0rwTqufiHol0LG6D?=
 =?us-ascii?Q?QxTOgdZilFVrEL7WUPx5GHtLSzSND32qyPoeZpqzRmMxsPqNKn+AUbUmQWLE?=
 =?us-ascii?Q?g8tKE4W1pe/qmVH6ch26E4WJ+7YYf6PQk0FJwm6GBP8lEUqchGfDZRujd7P/?=
 =?us-ascii?Q?tXmcXZKbby2Xz0zxJk6LufhnXvCeFN5y+RrnC1yPbbWmZr2Y8bJe7fxlMRTQ?=
 =?us-ascii?Q?cQaT2ZcBGDIWoHrFs5fbdVDnH4A0FJ3V20ShXfKI2NjIkTaYbNqFd5qJov8W?=
 =?us-ascii?Q?62SexxUc9X3TRTYje4sriNtvNYa0z6T/XxXjwUKRDhzp2X3Zph1dU5wmZoLq?=
 =?us-ascii?Q?bM7/SgL+p6u214rnXOYyrIJiUxDGZdh/hF5GP5W4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b02beb22-680a-4e5c-2efe-08dbca3ed0ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 09:45:34.1545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4L7AQgWFd5zhm/fZ/Ix7BdjwCM+BU2LLEyRbprhCPyxGIB2pF/rOn7e3EklyZTVf8gP/EvS89HpLOvU3xByXoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add wrapper for getting display
 step
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
> From: Shankar, Uma
> Sent: Monday, October 9, 2023 3:06 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: RE: [PATCH] drm/i915: Add wrapper for getting display step
>=20
>=20
>=20
> > -----Original Message-----
> > From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Sent: Tuesday, October 3, 2023 12:22 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> > <animesh.manna@intel.com>
> > Subject: [PATCH] drm/i915: Add wrapper for getting display step
> >
> > Add a wrapper around intel_step_name that takes in driver data as an
> argument.
> > This wrapper will help maintain compatibility with the proposed xe driv=
er.
>=20
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Pushed to drm-intel-next. Thanks for the patch.

Regards,
Uma Shankar

> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
> >  drivers/gpu/drm/i915/intel_step.c        | 5 +++++
> >  drivers/gpu/drm/i915/intel_step.h        | 1 +
> >  3 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 1623c0c5e8a1..63e080e07023 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -309,7 +309,7 @@ static const struct stepping_info *
> > intel_get_stepping_info(struct drm_i915_private *i915,
> >  			struct stepping_info *si)
> >  {
> > -	const char *step_name =3D intel_step_name(RUNTIME_INFO(i915)-
> > >step.display_step);
> > +	const char *step_name =3D intel_display_step_name(i915);
> >
> >  	si->stepping =3D step_name[0];
> >  	si->substepping =3D step_name[1];
> > diff --git a/drivers/gpu/drm/i915/intel_step.c
> > b/drivers/gpu/drm/i915/intel_step.c
> > index ee4e5a2c0220..b4162f1be765 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -353,3 +353,8 @@ const char *intel_step_name(enum intel_step step)
> >  		return "**";
> >  	}
> >  }
> > +
> > +const char *intel_display_step_name(struct drm_i915_private *i915) {
> > +	return intel_step_name(RUNTIME_INFO(i915)->step.display_step);
> > +}
> > diff --git a/drivers/gpu/drm/i915/intel_step.h
> > b/drivers/gpu/drm/i915/intel_step.h
> > index 96dfca4cba73..b6f43b624774 100644
> > --- a/drivers/gpu/drm/i915/intel_step.h
> > +++ b/drivers/gpu/drm/i915/intel_step.h
> > @@ -78,5 +78,6 @@ enum intel_step {
> >
> >  void intel_step_init(struct drm_i915_private *i915);  const char
> > *intel_step_name(enum intel_step step);
> > +const char *intel_display_step_name(struct drm_i915_private *i915);
> >
> >  #endif /* __INTEL_STEP_H__ */
> > --
> > 2.25.1

