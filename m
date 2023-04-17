Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0786E45BD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E338E10E404;
	Mon, 17 Apr 2023 10:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBA510E404
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681728690; x=1713264690;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TyHvIhXsjDv88LbZr1MxV81VajSfKvHdoK4qBukIdz4=;
 b=DmVsprIPXS94hFQn33fIrrLmQR9KezS3pv+dj1ZqZXXos2An3YWS0gxL
 nHGPjURJtnJ59VR8BbWXM41m5dgRAKJ9yubGPfc0f+h8tLeY8X31uMUJL
 Wn+yEmZxWmXCX9DfBkK/D25lv2wNeW4F5Ez4MeLUj65IwHnlSC0BGXluG
 uTf4dPJZeEKyOdJuV5Mc8mpfFvkSmGDo9PAge08N1Td+24VdItcwpTAYe
 Rl0fzNqnvLrO5cBwnhLHVB6nRAyL8nzsxYSlKhukNt8K8TuTDm9tQ9wRA
 E6vP1sonfN7PndlmKq3gR+sCqaOCA7kx8QP1spHgeLt7RDIV0sciKD9c4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="347600437"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="347600437"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="684111669"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="684111669"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 17 Apr 2023 03:51:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 03:51:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 03:51:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 03:51:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T8eeVbpP2S9PXAHnryrIFqpP6eDbYSMQaTvhsNp+orU0TKVMOru6Yst25qYmgUITF5xC7uXJfeRv5LxImK7bL36oUxG0JDLuNwenYEzj0p556EKQzjqSV5Vme8gn6bQvHs0MQEqqRI0wS9HfRf6hnfYcfn7eAfjcnwf7EGedcmza+ttEhrLX4yTNwzFrt1d+ADiw/EfIKv9vVQlt4EhV+r63L8EHPxIgco0NlGAkKOGEBMh3z5POSAPM4neDs2YmvOkBr8geOkXQ7U2AglgQKHAfqmLyqZ0r7qrwCccOD5JXEu0odU19LTbvsEiVoiZtBdGW+RIbaWlpznxfIUFRsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oEeT6mCz8uJrtTVleOAkc1AE8pI/0Y/JP070gjwbLaY=;
 b=OulW+z6jw+e/eVT0mCZuCWK1fc3GiHb88MbZEx2pRZHTVKwa/K8v1a0DXYc+3a5BgibGsjNLsrgtLmc9dXk1THYPC7HxFWEVhwTapnu1fi+zjECxpLdpV/ingBTbEWF9p2rj1oXkNz5QCeFbhMKbvS62KMEVEEnvjYArJq1QpkpHuKuwg/l2syJXQ2SqRK5YFpkZD15o7We5ZqZyJ+L0ahqMwdmxwunEiujLWkGxHRcyEB0X6P3gIsG/hO8jNK95wOdxQmNgcD8GPFQj99CeAgNiqws66PQ1XsgAvOSkYwRNjxQnZ2mMju8GOIpfb1wsCapZXjcPMUIa15MViMPVWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7473.namprd11.prod.outlook.com (2603:10b6:a03:4d2::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 10:51:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 10:51:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivCAAATIAIAAA/oA
Date: Mon, 17 Apr 2023 10:51:25 +0000
Message-ID: <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com> <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
In-Reply-To: <87h6teer21.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7473:EE_
x-ms-office365-filtering-correlation-id: ea3bcf3f-cd8a-4d88-bec5-08db3f31b0fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tY4dRz91F8ozynTOXm0ofa+a48yuk9FtT0BAMBkLeNX22g+ZTcF3I2Tb5ThcHlTloZKCUp72fh46xR7HnSqyXMRGrzRoq1uEquEt/U+opk7BdhlHF1/pmHPODi+jVgChavTxwRxZ5B1wypiMk8ZZGkQxnKyZqaniHj6t3g3+fCROOti7+X5PsXXJz1MIiRVJ6DdLcX6AmobrLrzYc2DlanRzA97T+jetspUm8smr60fMYScER8SiWi/tXJSBFNePZ7Bcezfxd2x98dmL+aph/ATIL/eNrA3MlGRqAKhesV2PpRYxkrECOTQSToKDgNvah41+VaN0pIs3ZaMwe2serWsfd2a/S1KyaHYwp6LimfBNKdNwnOwdQYBzhczO8NwwrGElCj6ScEwj0AfOkm5Dw965Ka/XxALOnjsZ5EaXJ7+ltV25EGs2FsqAVrYX+bbrJ0S5bLlYaJnxHcA3D1ZyYxUXhIQvJ6JbTiFIT/kp9pgjWeZFKyVCC9ksG18ALrkV07vewctCB9Sa/KryWr3a872zgpZTn5ybPAyW+Yc/hHfWV79pcnrx8iS1lB2fv44FQv91VL/ONj4eJuQZHdxtDD603tHfgXFM1Bv9SwPU8Xe1NY16aJZRVcG9wmkA7+Ik
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(39860400002)(136003)(346002)(451199021)(33656002)(110136005)(316002)(76116006)(66556008)(66446008)(64756008)(66946007)(66476007)(71200400001)(478600001)(7696005)(55016003)(5660300002)(8936002)(8676002)(41300700001)(52536014)(2906002)(38070700005)(86362001)(122000001)(82960400001)(38100700002)(26005)(6506007)(9686003)(186003)(53546011)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AHMjey1swe41qYRhF5VceisXAbFs7veJldnz2HG+C369vZbVfO7xImMonvjM?=
 =?us-ascii?Q?qBKc3txg1zt/MMs1NpRMiCUa6lB9cQfIvD5VrogW1+gOTivTu0VkncFF5rON?=
 =?us-ascii?Q?Un3TH9abRM5y0ng54kSKuWeErBFoCJFN3k5D5q9cZ8E+A+mlUpOxsov7kM0l?=
 =?us-ascii?Q?hQfuzszMKbTVicGdHr0Qz41eo+yGJfqOtgNCYUd2YrR7yKDMnxHHvlXr8Tab?=
 =?us-ascii?Q?HrKJsUITUkdrQw4PZgKpQPtsyoKIqWdYcLw5znZe7DsiwdcKSxxH8MqgncVV?=
 =?us-ascii?Q?i0cH08UG8k5I6yh0V50SjGU7vV8JnN7hmcp5hrdFTNYkXGCSgOiNYHvAYJcP?=
 =?us-ascii?Q?I0bhlWMeZpj/M1XHUDSkjwIixBgl45BL20KPEZsXq2hMonKEUHd/J6Sgy/Dm?=
 =?us-ascii?Q?0Lcmhv+VztVPaGrguJikUiqXE2g5+WuVfp+8fudjrxaLB5fEBXSNz7svxCDj?=
 =?us-ascii?Q?9A0Jhf3IjqqL9g6uNBOGL87temvP1BPB9/pPVYnQmNFjgXPWDnxazxXMbVIy?=
 =?us-ascii?Q?Ciq2ntpb8q5uxNaQdzZW4sLvTpFUInVOcVVAKWKPzKJeooMswLaTJJ+wA+va?=
 =?us-ascii?Q?ng+JrQMfgCEAg/Gann66FPAp3vqXFW1FnjNymuGDbGDAjJi7eSXSRhz1zx3G?=
 =?us-ascii?Q?1Kx+yQTu7uIURXpLIokgnWBiNcU8L6UEG7xjgDCH3MKbkdosCw393nO0fuYR?=
 =?us-ascii?Q?g3CYUKvj/glV+MuQf2HOlze1Swm+zJJdN5iBdPWdr0+9gEqDw6CJDCaedVOm?=
 =?us-ascii?Q?0cNUgNE3eeZmqNB2xDsOKwqpGnZLoJZfHbwCwNtNgIGO8yUYIAu+v3sr8mqN?=
 =?us-ascii?Q?1i2vCJjy6cJzIanITDY6K9qMA6H5n/KlTIX/uHhc1cSD/XxtOyJtAByCfoMu?=
 =?us-ascii?Q?HsqTsRE0BA0uqDvJ7mLvNcpzwIYj9wBrxmUrxGF4kho/I2DxIgLJtwIh+CMp?=
 =?us-ascii?Q?u2JOBqaBGDdpr4DfoSTr/9R5aQPf0nQLudyLc17v1KsjuWLKDhPB+kPJ3HOv?=
 =?us-ascii?Q?TkqbatD4ebcxw5P+j+rvQHw30lED59gOzMEb+Hilmat+yll8BbPxFshyEZY5?=
 =?us-ascii?Q?x31t9EZg+/iHFC2GOllF6sjgDZSLLepX+/wBJtcDnZKhD4mg/mPIKz3LMNC8?=
 =?us-ascii?Q?GAMPbDc0huL3lad2NQgPusWEYDrU6EU7Rg64HNRw2XrBE+m3nKW/snl2zIiO?=
 =?us-ascii?Q?aLOHICzKD2wDp4CtlC6cm+7Ie2pzAgbmc2KeffyL1PZRKXxtxg0EF2qAg+Zm?=
 =?us-ascii?Q?Z6EVMA0lJCyZOzK961bY1GyoU1BLEHKkCuw6r0IOpmFni85ak+MpvmRRPSZK?=
 =?us-ascii?Q?Uon3ATtbyXp14+/iz4IGpxlaHXnlI3tcdEZi6w1vFUTesVFJ9cFTmy7MIjtF?=
 =?us-ascii?Q?v/JFzPpYo3iacSKeHDt9xCKTkA4RidtWMR7C6raZOjm86lcxiMqb1QxlHzKh?=
 =?us-ascii?Q?9CdtFYf0a9km083wEpeztgkr/HhuHCUgq/C3dqmbd9gdmK2crQsJmemTtxJl?=
 =?us-ascii?Q?iQ0XPdCzZUMMVue+ItbtD5KFlMqnD8wfOeckNmle0lWUF9ZnmYEC3TcnGPWz?=
 =?us-ascii?Q?FwHuWLUSeJK8qdSuUOIyTSML9sUtN6mYsqRlH1Wd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3bcf3f-cd8a-4d88-bec5-08db3f31b0fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 10:51:25.7879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 32nJVd9SzR7waLwPlID9yWshatq2FQmx6jeWb45wWA+38cJVcFBPhfBIJn4H9W8cA7VSafeZe78dpAPfsvhI+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7473
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, April 17, 2023 4:04 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeou=
t
> for Type-C
>=20
> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > Type-C PHYs are taking longer than expected for Aux IO Power Enablin=
g.
> >> > Workaround: Increase the timeout.
> >> >
> >> > WA_14017248603: adlp
> >> > Bspec: 55480
> >> >
> >> > ---v2
> >> > -change style on how we mention WA [Ankit] -fix bat error
> >> >
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> > ---
> >> >  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++=
++-
> >> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git
> >> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> > index 62bafcbc7937..52f595929a18 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> >> drm_i915_private *i915)
> >> >  		    "succeeded");
> >> >  }
> >> >
> >> > +static void
> >> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
> >> > +				   struct i915_power_well *power_well,
> >> > +				   bool timeout_expected)
> >> > +{
> >> > +	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >> >regs;
> >> > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> >> > +	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> >> > +
> >> > +	/*
> >> > +	 * WA_14017248603: adlp
> >> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
> >> Enabling.
> >> > +	 * Increase timeout to 500ms.
> >> > +	 */
> >> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> >> > +		if (intel_de_wait_for_set(i915, regs->driver,
> >> > +
> >> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> >> > +			drm_dbg_kms(&i915->drm, "%s power well enable
> >> timeout\n",
> >> > +				    intel_power_well_name(power_well));
> >> > +
> >> > +			drm_WARN_ON(&i915->drm, !timeout_expected);
> >> > +		}
> >> > +		return;
> >> > +	}
> >> > +
> >> > +	hsw_wait_for_power_well_enable(i915, power_well,
> >> timeout_expected);
> >> > +}
> >>
> >> Please don't duplicate the function and the wait like this.
> >>
> >> Something like this is sufficient:
> >>
> >>
> >> @@ -252,7 +252,9 @@ static void
> hsw_wait_for_power_well_enable(struct
> >> drm_i915_private *dev_priv,
> >>  					   bool timeout_expected)
> >>  {
> >>  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >> >regs;
> >> +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> >>  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> >> +	int timeout =3D 1;
> >>
> >>  	/*
> >>  	 * For some power wells we're not supposed to watch the status bit
> >> for @@ -264,9 +266,13 @@ static void
> >> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> >>  		return;
> >>  	}
> >>
> >> +	/* WA_14017248603: adlp */
> >> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
> >
> > I did try this but it ends up throwing a kernel null pointer error at
> > intel_phy_is_tc which made me float the version of code I did.
>=20
> Please explain what causes it, and how your version avoids it.
>=20

icl_aux_pw_to_phy is called is hsw_wait_for_power_well is called everywhere=
 where its not possible for aux_pw to phy
conversion is not possible with this change we only get the phy for adls ve=
rsion.
Will address this is next version.

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
>=20
> >
> > Regards,
> > Suraj Kandpal
> >> +		timeout =3D 500;
> >> +
> >>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> >>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> >> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> >> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> >> timeout)) {
> >>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
> >>  			    intel_power_well_name(power_well));
> >>
> >>
> >> > +
> >
> >> >  static void
> >> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >> >  				 struct i915_power_well *power_well) @@ -
> >> 517,7 +545,7 @@
> >> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >> >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> >> intel_tc_cold_requires_aux_pw(dig_port))
> >> >  		icl_tc_cold_exit(dev_priv);
> >> >
> >> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> >> timeout_expected);
> >> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> >> > +timeout_expected);
> >>
> >> A function prefixed adl_ should indicate it's only needed for adl+.
> >> This change is misleading.
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> >> >  		enum tc_port tc_port;
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
