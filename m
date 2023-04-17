Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB9A6E469F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 13:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616C510E444;
	Mon, 17 Apr 2023 11:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33FB610E444
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 11:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681731602; x=1713267602;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hRUUu1yBVFSzMPRJRUy52eIY0Ie8c+AWI41Aog9JuY8=;
 b=IOGWGjBy8kyfbtEW8BkWVOaJDBubW6uVROaBSk82uTKYeo3+p0n9UARZ
 HzMf+3ZPXhX5KjBbBiI7xSssJ12t4h8EzwFzQSwWnVSpNIL0p6+r3Huc4
 SK4MejQ2oQ+qcBgvFK2iKfda228TZ5oJUptf6/2bWgHqTnjq0WW/h3d2d
 0ZuZG7hAXGGlsq1Fov+x8CYkXzrcf2VS0TUml3zfvO739/wCqkyYRyxvM
 30k66Ze1o/28FO7jv6WcKN6kqLyeZqAd4ocdO80GNMTZVkHzcOq5REK88
 cNsV/JGAwkpWZpQhUjL426FvlWSqN6T9/b3XGo8h1mTwVZ73WPs9z+tOn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="325213387"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="325213387"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 04:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="693216389"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="693216389"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2023 04:40:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 04:40:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 04:40:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 04:39:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lwz9re1oBcF3kTPLZrHBGFnBTCYKaseIZerEYThfJU57Fu8Ybn3I6IUtd4T5xGS8tiRzshZe7aHtJSiF4LL7DqwaZ9vL2Kc+j6RCZUAtluPoOAFVBEN14KOKbcmNbqdaElLf2EayfUN7kLf3/DoDtF3k+nlzgy+TI1fqO8nBtZwTvtkRuHrI9hLjsrf1YQa3JAE9b0EQB+LMbREoGp+XjC2Oca9tnQn7vyB0U2Ar0z7GdUV7GX0sxMuipCFjpEe29nGeXbqv/YABeaFJxo6KHiaeStO+FbGppmjjlaYgnSzIDgNuDZ7NEf2gAAutGKoRWv1VskMyWkfsVpPW8qMAJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wcx8s8g5N8FbfDXEeR/aNXOPA9sf88WU+kPEOe7Iwsg=;
 b=JaCf72FuzA9CBbQQbPy64LBq/o8UtK+L/rTpw4A4zLsFDL9mM5RmMqxcVkTe+jxH/DhC8dFuyrl/iDJ+1pymka9TG42Y9NR4ALtaouz2sJrzF2XBrQtDURhvAhQrDFSUNKP75BDmL8Gt19yd9jddWxI/Db2zgIJAFrGALuwDHFz3ETj0GbE+5kAxTRz30cWG3wUxq2NwU4Jvg5ebryfxxrK/gMm31H+S0e5nIdRqdF/g6+eMaZurZpPN0umHCj2sVTzhDArH5PHDMNzfLkHK0yO7DBeLnM948sFAVgzuDjkJ2JToMnM1nB7jlE6C9ELVB/t0lbbyDm93AzrZ/W830w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CYYPR11MB8307.namprd11.prod.outlook.com (2603:10b6:930:ba::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 11:39:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 11:39:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivCAAATIAIAAA/oAgAACTwCAAAi/AIAAAu7g
Date: Mon, 17 Apr 2023 11:39:57 +0000
Message-ID: <SN7PR11MB675013250AFF8B3040FA945BE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com> <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com> <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
In-Reply-To: <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CYYPR11MB8307:EE_
x-ms-office365-filtering-correlation-id: 5fa4b3c4-00c8-48cd-4057-08db3f387888
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1352xXfZk9tFfBZYyflxo+TOUoWuVvOPPy1pxsXSXv9gL+Q2mrMgHi9UkbJ8WMUrel6/vt377xWsiZqbwGBIG026OCdmT3shpFctC3mp6Ls70cedj3AOXzeJT+vneZMNHQ+H+2U+NjHjoD3eLCmtbM3FW5yhZtvcc0YfVH10wDDv2e2I4Z28Sfdbkhbirmh7Csq+dy6J++1AfKy4TG/TxJcvpifo9aap2SRhQzc9Rl7n4shjSBbLaDYhJuo8EqKhSPXG4p+ijBogUE2p505uYp74rkQEN2XFYpfs3v15eVZ0tBT1Rp8mN69V+y/J7072YkeSkf20gWZz0eCo/cNpuGZtgngfdl60qKj+HpqkbI5uzGhna6xkTEzL2xBDLyPSPSVVLqcNilPVT72kwEeZel0ibWABAuLtvPl9+lAO2tH9u46EDYYIVmik2rcFFZBqBLH7DAzJdNjJOdmp2ArIuGtPq/yPp9+ascyopES9slAlLuCqFCw4odR2Omm7RkNfNhfFlL9zh/6WqpGl/Psdy5XfsuH+vOxe89aTtTaCLeAnYZB2R0LtPJVPaoRmKLcx+g5ukEIcDU4HXifYiu5qX2p72pq8iwP3SaPSuBRVAMck/EcAsdGSmImiX5bTkXM3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199021)(4326008)(53546011)(9686003)(26005)(8936002)(8676002)(41300700001)(86362001)(38070700005)(316002)(5660300002)(52536014)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(6506007)(110136005)(55016003)(122000001)(38100700002)(2906002)(33656002)(7696005)(82960400001)(71200400001)(186003)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9Vyq7MglqUQp8G4GL/ddCErVd7K2e2xoq/+c/xduleHdieqOO1OIZhdsx33l?=
 =?us-ascii?Q?o454MawXMipZG0NDsBAMK7Daphyk/RDM534/7TR9Ce8wtTvgzWo8NOcuEUtj?=
 =?us-ascii?Q?EyPrgx53Ov+IcXPmMP+/Mx/8nBCNsgXRa5zoFm0avu2yEYVim0ZLmE8DWYiZ?=
 =?us-ascii?Q?WgK877jXjTcvyMu0OWdECzTuU0Pq+vBFl2QZeO+QsaJnf/P9aK5n+1wb+pD6?=
 =?us-ascii?Q?Z10K0PIv0szRcu5PiwaKUHcqFgdybwP3gv59KnGjHV+azhXRR++rMCHWCztQ?=
 =?us-ascii?Q?NtI5X40/2aTkUFuH+oov77AchJYk3xcf9wPiIud/xQdHdsZ6unyjUNLduOGN?=
 =?us-ascii?Q?9WCAybFhrCevQ0ZkKnqxejgEGW9emyscOKR33fi7QC8i3K7B62JjGDiA69Lm?=
 =?us-ascii?Q?gkPGMDtFuopOJiLYNVczT8LGYSbqoIKtCjNmOxJ/1vnm4m/cRJGYqtl7dIhU?=
 =?us-ascii?Q?kcvQbu/HQqLf0tZ8HsSn/KTKjOQZU6ZBCi6+/VFQ40mpc15oOxln8yHkaf0+?=
 =?us-ascii?Q?u2ZIQYwUxtF2PMjilUTdL4el5WheAiWiZIELBICOD0hrpzhm/WYbeXx+g5Vz?=
 =?us-ascii?Q?ixjZ5+20WyTNBQmTEjrWIEVaP8PAKEjiEefgVmC0s5iHYvtxZMGUEyBT0FKv?=
 =?us-ascii?Q?+O8x8SCjdZse/JhTH3cZToPVsaQ5afgSTahdP0w4QL+DO0V33l0yvzaypama?=
 =?us-ascii?Q?44eo9FiTdX8oxJRfn4KA0GpbdAL51mGkq0iYcnhlFajPrDRSQEcrmDFEwxRU?=
 =?us-ascii?Q?7hN/FbB2ugmojuabcKdExmIyC8zWPm+Bg4VZT7BodQ0imOzIdJcZeUwDjXA5?=
 =?us-ascii?Q?NpYlm7WOTeqqCriH0bW9SgBmtpZDp+y/EZHiOuRnukkI8zSn+LjpIugLOtXP?=
 =?us-ascii?Q?R++phJ4Tcf/WqEpgn2DTeut53adBYBS7fP7jWGuhrRuzdtcoMQEf5bfYKfHY?=
 =?us-ascii?Q?4JnYExnAzO4OOTDHNtqpF4WVBcb9O3uKOpTtGGNhjtDiFoS5l8iuK1QK5Xil?=
 =?us-ascii?Q?2aH0Cgn4/aGiTOK6ooXTBW5Yes3zKcCzEvXtYea+3CDuWuzB5Aux9TWjCYWF?=
 =?us-ascii?Q?SZbWQiU7O5OWSoSbKF2SNlBBM7DuRDDw/tmNXyjWxhpdOhKSHk7DnC86zhpx?=
 =?us-ascii?Q?Inr3U9G4Oyk6LoHAM8BoBKXCp9Sxq5zNYBVYdDl0mAdEUMeO1DEqc1p2Qu4F?=
 =?us-ascii?Q?l+2gSu/nqkNX/VVp6oQmKenSh0T6capgqXE7xpiPmOI3wfOZ/A/fYsuOg7AW?=
 =?us-ascii?Q?awIyygoKNch9Oz22oJVINR6nD//Ziw49d/9V1Fdgb3aukPk4CRh/Uv3Xn4ql?=
 =?us-ascii?Q?CS9nBMgmnScpzBtOXfKHIg86O4yz2HlomEe7cffbCKtBzTmMfz4MqFxEeQJu?=
 =?us-ascii?Q?AEoyayZkiBsP5KHjeSwqbXppCWkhl/j7a+3UDlI7PW99NmJdzpg9HspoA7hU?=
 =?us-ascii?Q?yj4IrEPPiwhDm0e5zm0vH/5We9QxwjCcmdTWL+nMguPS4+SR1zl33DqZAwrz?=
 =?us-ascii?Q?CWxM7E8x/C10mP+SAyTmevRlXu27hkUmMlbuo/EsMYYxKdg2bYXHE2GkhL06?=
 =?us-ascii?Q?o+Rue574Q1xqV+x8mYqtU5SL72DxAHkFMe8rsEun?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa4b3c4-00c8-48cd-4057-08db3f387888
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 11:39:57.5949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WTky4faiEnULBGLJtwKi4KDBFRdkpnOq6LgHtuxvwkaMKU7O5REHdISO9iv8xYOfD0RzOT4yEAGS1xOS1BBnwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8307
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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

>=20
> On Mon, Apr 17, 2023 at 01:56:12PM +0300, Jani Nikula wrote:
> > On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> > >> -----Original Message-----
> > >> From: Jani Nikula <jani.nikula@linux.intel.com>
> > >> Sent: Monday, April 17, 2023 4:04 PM
> > >> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > >> gfx@lists.freedesktop.org
> > >> Subject: RE: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX
> > >> timeout for Type-C
> > >>
> > >> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com>
> wrote:
> > >> >> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com>
> wrote:
> > >> >> > Type-C PHYs are taking longer than expected for Aux IO Power
> Enabling.
> > >> >> > Workaround: Increase the timeout.
> > >> >> >
> > >> >> > WA_14017248603: adlp
> > >> >> > Bspec: 55480
> > >> >> >
> > >> >> > ---v2
> > >> >> > -change style on how we mention WA [Ankit] -fix bat error
> > >> >> >
> > >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > >> >> > ---
> > >> >> >  .../i915/display/intel_display_power_well.c   | 30
> ++++++++++++++++++-
> > >> >> >  1 file changed, 29 insertions(+), 1 deletion(-)
> > >> >> >
> > >> >> > diff --git
> > >> >> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > index 62bafcbc7937..52f595929a18 100644
> > >> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> > >> >> drm_i915_private *i915)
> > >> >> >  		    "succeeded");
> > >> >> >  }
> > >> >> >
> > >> >> > +static void
> > >> >> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private
> *i915,
> > >> >> > +				   struct i915_power_well
> *power_well,
> > >> >> > +				   bool timeout_expected) {
> > >> >> > +	const struct i915_power_well_regs *regs =3D
> > >> >> > +power_well->desc->ops-
> > >> >> >regs;
> > >> >> > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > >> >> > +	int pw_idx =3D i915_power_well_instance(power_well)-
> >hsw.idx;
> > >> >> > +
> > >> >> > +	/*
> > >> >> > +	 * WA_14017248603: adlp
> > >> >> > +	 * Type-C Phy are taking longer than expected for AUX IO
> > >> >> > +Power
> > >> >> Enabling.
> > >> >> > +	 * Increase timeout to 500ms.
> > >> >> > +	 */
> > >> >> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> > >> >> > +		if (intel_de_wait_for_set(i915, regs->driver,
> > >> >> > +
> > >> >> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> > >> >> > +			drm_dbg_kms(&i915->drm, "%s power well
> enable
> > >> >> timeout\n",
> > >> >> > +
> intel_power_well_name(power_well));
> > >> >> > +
> > >> >> > +			drm_WARN_ON(&i915->drm,
> !timeout_expected);
> > >> >> > +		}
> > >> >> > +		return;
> > >> >> > +	}
> > >> >> > +
> > >> >> > +	hsw_wait_for_power_well_enable(i915, power_well,
> > >> >> timeout_expected);
> > >> >> > +}
> > >> >>
> > >> >> Please don't duplicate the function and the wait like this.
> > >> >>
> > >> >> Something like this is sufficient:
> > >> >>
> > >> >>
> > >> >> @@ -252,7 +252,9 @@ static void
> > >> hsw_wait_for_power_well_enable(struct
> > >> >> drm_i915_private *dev_priv,
> > >> >>  					   bool timeout_expected)
> > >> >>  {
> > >> >>  	const struct i915_power_well_regs *regs =3D
> > >> >> power_well->desc->ops-
> > >> >> >regs;
> > >> >> +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > >> >>  	int pw_idx =3D i915_power_well_instance(power_well)-
> >hsw.idx;
> > >> >> +	int timeout =3D 1;
> > >> >>
> > >> >>  	/*
> > >> >>  	 * For some power wells we're not supposed to watch the
> status
> > >> >> bit for @@ -264,9 +266,13 @@ static void
> > >> >> hsw_wait_for_power_well_enable(struct drm_i915_private
> *dev_priv,
> > >> >>  		return;
> > >> >>  	}
> > >> >>
> > >> >> +	/* WA_14017248603: adlp */
> > >> >> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
> > >> >
> > >> > I did try this but it ends up throwing a kernel null pointer
> > >> > error at intel_phy_is_tc which made me float the version of code I=
 did.
> > >>
> > >> Please explain what causes it, and how your version avoids it.
> > >>
> > >
> > > icl_aux_pw_to_phy is called is hsw_wait_for_power_well is called
> > > everywhere where its not possible for aux_pw to phy conversion is not
> possible with this change we only get the phy for adls version.
> > > Will address this is next version.
> >
> > Cc: Imre for input
> >
> > Maybe pass the timeout to hsw_wait_for_power_well_enable() as
> parameter?
> > Other ideas?
>=20
> Adding a non-default enable_timeout to the power well descriptor would
> avoid adding more platform checks:
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d85..8ca1f34be14c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc
> xelpd_power_wells_main[] =3D {
>  			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx =3D
> ICL_PW_CTL_IDX_AUX_C),
>  			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx =3D
> XELPD_PW_CTL_IDX_AUX_D),
>  			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx =3D
> XELPD_PW_CTL_IDX_AUX_E),
> +		),
> +		.ops =3D &icl_aux_power_well_ops,
> +		.fixed_enable_delay =3D true,
> +	}, {
> +		.instances =3D &I915_PW_INSTANCES(
>  			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC1),
>  			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC2),
>  			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC3),
>  			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC4),
>  		),
>  		.ops =3D &icl_aux_power_well_ops,
> -		.fixed_enable_delay =3D true,
> +		.enable_timeout =3D 500,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
>  			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT1), diff --git
> a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 62bafcbc7937c..930a42c825c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -253,6 +253,7 @@ static void hsw_wait_for_power_well_enable(struct
> drm_i915_private *dev_priv,  {
>  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
>  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> +	int timeout =3D power_well->desc->enable_timeout ? : 1;
>=20
>  	/*
>  	 * For some power wells we're not supposed to watch the status bit
> for @@ -266,7 +267,7 @@ static void
> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>=20
>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> timeout)) {
>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
>  			    intel_power_well_name(power_well));
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index ba7cb977e7c7f..fd5acf68503e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -110,6 +110,8 @@ struct i915_power_well_desc {
>  	 * Thunderbolt mode.
>  	 */
>  	u16 is_tc_tbt:1;
> +	/* Enable timeout if bigger than the default 1ms. */
> +	u16 enable_timeout;
>  };
>=20
>  struct i915_power_well {
>=20

This looks better we can go ahead with this what do you say Jani

Regards,
Suraj Kandpal
> > BR,
> > Jani.
> >
> > >
> > > Regards,
> > > Suraj Kandpal
> > >> BR,
> > >> Jani.
> > >>
> > >>
> > >> >
> > >> > Regards,
> > >> > Suraj Kandpal
> > >> >> +		timeout =3D 500;
> > >> >> +
> > >> >>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20
> us. */
> > >> >>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> > >> >> -
> HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > >> >> +
> HSW_PWR_WELL_CTL_STATE(pw_idx),
> > >> >> timeout)) {
> > >> >>  		drm_dbg_kms(&dev_priv->drm, "%s power well
> enable
> > >> timeout\n",
> > >> >>  			    intel_power_well_name(power_well));
> > >> >>
> > >> >>
> > >> >> > +
> > >> >
> > >> >> >  static void
> > >> >> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private
> *dev_priv,
> > >> >> >  				 struct i915_power_well
> *power_well) @@ -
> > >> >> 517,7 +545,7 @@
> > >> >> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private
> *dev_priv,
> > >> >> >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> > >> >> intel_tc_cold_requires_aux_pw(dig_port))
> > >> >> >  		icl_tc_cold_exit(dev_priv);
> > >> >> >
> > >> >> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> > >> >> timeout_expected);
> > >> >> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> > >> >> > +timeout_expected);
> > >> >>
> > >> >> A function prefixed adl_ should indicate it's only needed for adl=
+.
> > >> >> This change is misleading.
> > >> >>
> > >> >> BR,
> > >> >> Jani.
> > >> >>
> > >> >>
> > >> >> >
> > >> >> >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> > >> >> >  		enum tc_port tc_port;
> > >> >>
> > >> >> --
> > >> >> Jani Nikula, Intel Open Source Graphics Center
> > >>
> > >> --
> > >> Jani Nikula, Intel Open Source Graphics Center
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
