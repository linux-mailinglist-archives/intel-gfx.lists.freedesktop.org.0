Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9A66E1DDA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 10:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C458010E8F7;
	Fri, 14 Apr 2023 08:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BE410E180
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 08:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681459952; x=1712995952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Hb91z/Jl+x+k/pIjUTE0iRaREJYPAiar7VNIAQOtqA=;
 b=dgbjPpFuhmJ+UetHWWBHKsrrkfrgMlZe4jqbsf5TOJdUSEW7zVXAKE4I
 KA6UQU9TXm3YKJb8WmUpCQtPMN7t+QSpTlMCEi++BmqYwNg+ez08hQJgw
 U8aK6jbPayBVcaK9ZlA+EpG0V+lh+L/K3iXOfmLetJqetG9KqU/zrNAhO
 adEfIzsQLQqcK3EMh8W48wa/DAOLw2OFyy2UxzRYR1kDnuI01KiHFmKUn
 DFpzLdDmNxnx7ejdKFeaVcyX4osHfKpZK4Ark11jRot1SKdyPQAk/Pvjg
 WqPo8eSj03zAdT/jZYbPKSlPsCMpTsh2Ut70IzsNLAavbMK9Jr+EiNYjq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409609977"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="409609977"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:12:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="864124884"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="864124884"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2023 01:12:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 01:12:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 01:12:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 01:12:31 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 01:12:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nekRDrypniJ2wB3HZdVwwzRm8A5RiMMYoj4IIL19NFh12CPY86oQrVyEokSrGq1JXAU8Hr6PMYbGlvCCNVOoYcYW5zK23/poYhWnhKL6lK8qTQNEArIzIac3WNRZ0o5zn0tSqRRUL7EhI/DU3uhAcEGEhTRrRPudIln5CV9Ct8cHQ2vxvCt9qiK0s0ld763P+DRFuSyiaS5+EUXeLbScIfMe6DELcis1dGtFDIhZrwqzgaE5L8aDNnRsLbWFKQmZKEL7I+sSQ03vdTfJ1mGFuqZ3/ACW5+MpbY7h4Hmfpe0YCAMdmmQ+IpphH7Ahig45lNRfrG9ASYvLjLE1mHwghg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M7O7iaQbvZlKi+0yMxWW+eXoor8zktL7gr6iiHRM87w=;
 b=OOAoBNXhBjwt/ckxlXnhgg4VpDLJyJV59rz1bYjeQhrB483L6yzpFdrhYiNM6CIrMqlMl9pgQaeVpXfkFmhcjcZnO91a0gpzsu8FH+OG2flwJSpSiTeKs3Ju4ulOD1053KeVNjgQimpCLFpqKxP6uASkkyOZ+cOu5ekvtuE9W+rlUQ3LDy25cSWx8USf5y7m2S5aG+gYvN0T7T+ta0Px5Zd31XOvU1CW+eSh+NtpsrgnoKdZwWWpwxdCwNkRkUJrx0RSUXWmlNH5nUMF4Ie2qRRLGiHr9BnIW5BBgINecq+ZWgkgLuHXIjMvdLTkTenquQODc1uMz09W4wLhEPZuoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB7564.namprd11.prod.outlook.com (2603:10b6:510:288::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 08:12:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 08:12:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is not
 detected with default filter value
Thread-Index: AQHZbqJLLNo3/oOlPU2ta6nVfzx+0K8qcrsAgAABaWA=
Date: Fri, 14 Apr 2023 08:12:25 +0000
Message-ID: <SN7PR11MB6750F20B90E29D3E209B3339E3999@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
 <ZDkJfoX2ToZo/Vj2@intel.com>
In-Reply-To: <ZDkJfoX2ToZo/Vj2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB7564:EE_
x-ms-office365-filtering-correlation-id: 9baf4248-e5c5-4c90-31c9-08db3cbffb2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8pM8TcAwXB1vOUu/tlC51fDrauK+gN4A78d5E7E89b3s9g4wCxMjJKXdeUqIt1T8SRB5XDzsPjTloRsg2npZr38GZGEZC5DJj2Bhi+Yz18CYI3Y4TsrW5P531nV46zFwyrFkJl8Cob+fG4smN5ki8Gsx1+qUogNWGw12z98mQ8Q9p3NtEWkf2/Y/IB7W1tWaAzGpvfbRbiCYmrxt26eVP1+RDYk2f3k0YxYTOoGCKM+pEEndHmSVp+yhXBP5JF9nppUMgfKfUCL0EERwucMXo5q/VBAV8eR2LtggpdSjIMklckdJjpUxS9Z9KGpA/4mUfEF+bPsAuaEeEJL/Q+XNXcbSZXHqa9MGBRHVKqx+uVzoiL5nYT1hQr3XkgBID0/xPC2GN1cy0eQte0qUfZIltz/sJd1rVofuQaLJmKP0jboULa8jEYOUTzhmxmHFnyFWm8D7X5Sr0dckWhjFA7aLc+ZaC2gW6MYWy9gRpCknFDm6q1kt45+kl00dc6toJjJ5AT2CaCu1UgaQi9d1cpR1mewjCWkP8d02h5P3zgxDz/FWbrYP5rbOqiNO9PeTccc1kz23yq5pWiezxP+yGTIG8oKk6Cuyn2zhkT+t9XSWA93BNtWQTT8y8JlqRRc92JmYphSTIP88iP3/Ikfgvsl0yg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(136003)(39860400002)(346002)(451199021)(9686003)(53546011)(26005)(6506007)(55016003)(186003)(66574015)(83380400001)(71200400001)(7696005)(5660300002)(33656002)(52536014)(41300700001)(82960400001)(316002)(8676002)(8936002)(86362001)(38100700002)(38070700005)(122000001)(478600001)(66446008)(64756008)(4326008)(66946007)(76116006)(66476007)(66556008)(6916009)(2906002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?njX9ZhM9tiGVDXAYL50QiLvKIVn+zHl1t47yYuu+IHfJGrGZzZGwZ2Hio8?=
 =?iso-8859-1?Q?beEqhU3qgjUPE0NzXeLHFZMAqn95CirDk+xt+AQYXhfWzr0cia/MqHkDYe?=
 =?iso-8859-1?Q?rA1BX4RVOoUHwgf+jJQxJ0UeJLxyjN7/Xq/DRUYLTFQBKR7KJoXRHiCbyD?=
 =?iso-8859-1?Q?jXUCeC4dQZ4Ocw2hA5ubd/FDrCMRF0A7w3r6a81E50DML+Z+7cxerguIO2?=
 =?iso-8859-1?Q?hrKlPP5EU+ZF4CHf8lhAxyyp765FEMpC4DPecBlc97kREotlPJcs95XEjq?=
 =?iso-8859-1?Q?f64O5vdyuHHpcKZkh6p2r2hjOHWBjoqTYinY/CqtYL+TcfWoWAtmtVBxuI?=
 =?iso-8859-1?Q?D0vIroqWhhqfXyw5sT+Kldvhc65JwSrOE02w/fcBgpCIKt4QlHTHnP4oUE?=
 =?iso-8859-1?Q?iApGg8T66XlxU+FbwuAI5Lu6bgDrq138cWw6uvkcIsr9yxdHIHVrEDzB8y?=
 =?iso-8859-1?Q?ukmO3BN3oL9Rhdj1z8brBypWKqCJRHGqr084RKm7MWlzhDnbXXZAHbEP5G?=
 =?iso-8859-1?Q?HTwr2WWEdiD6zm1lNVjJsTGDjTBZTkAH6LsehCRy0IQlu/Eaxm4+YPOKBw?=
 =?iso-8859-1?Q?z2V+9jIMkg9Ozm3it965uXTz+9jq6/Od6/1qjBJ9RLrG0dGr2eNDmhghdl?=
 =?iso-8859-1?Q?ej83MqIzwUzppQOdiv2c6K6QBkztj9AG7NfCpBcWb8JRTLAL6WE8GogwZ7?=
 =?iso-8859-1?Q?687qieBluqrR62KuvZFkf+FbyIA6/vI1Q0xQtnMydLVzBIs1NQqBcDRAtR?=
 =?iso-8859-1?Q?JEPqOHnCdR2UzMljbPQCjH5qKeTFcfZHlimilNxSLkYglCb2hPIgScYfLv?=
 =?iso-8859-1?Q?zleMen0L9zaszqJh4Kb3PUw0Z2qZvzYAOxiVZ7baaNpaG5uJRZPxGO3kDB?=
 =?iso-8859-1?Q?kOAnTlWRUz9tRpM5t0otWUolmUExOArwUUqh0d+P7Zj6rd7n8HaftpTfvd?=
 =?iso-8859-1?Q?0v6Uj1L5IHW/p6zPRpf07R7LnnNsJpO0IeauI6GV9mvqWdf7HqxMW/AySl?=
 =?iso-8859-1?Q?ibNX33wlam98VplE1F+yRX9CbIpuJz1lGemwqBwbrNwuMTMmntSgNN8yiV?=
 =?iso-8859-1?Q?c4g7cPO3tsRNjGSXVYTXXzwRWWhYC5EvY3ToD7njcrQ+YeJIvV5gRBOl9Z?=
 =?iso-8859-1?Q?emjchtVEDYIfIixEunCCxfL1h+uWpPpT3oKHhal33uKdHw089i21K7wD73?=
 =?iso-8859-1?Q?mRblUKVK3wFAmAGeSbe6/pBL5i1c1WcORJFiXgQEqG22hANG9e0FZERFYo?=
 =?iso-8859-1?Q?GsjlCwRwRYjtdSIiNoY2v1K2J9MpA+rAcYixtN9CWHIZ3i4qyXLlQDOQX4?=
 =?iso-8859-1?Q?57ZleqC7kldc2Wysj47KDXoIQkK1TjQzLTcA1twn59R9GaTvbddvD5x9YL?=
 =?iso-8859-1?Q?w/39jIzrcjZfwq6q6Q+evcVmRn4DA3cM91GZgqR49qveGt2MOqYhfy1n6y?=
 =?iso-8859-1?Q?vzso3tpirQaf09ZMtgkLuBUGVcX2pSneM03fKb3UVm+VxonskvbUxFNcUM?=
 =?iso-8859-1?Q?vpvQVedFo/snV442rWC6rtkwPd2jCnEnls4Jd6gC7L+nzu/WFnGGuj2wC5?=
 =?iso-8859-1?Q?Zze3QKcCnAdc2eRIxoYGn4g6U3HScKvnfSlbsqAxHfx9ssLMEyPUt/q3YE?=
 =?iso-8859-1?Q?JyRtZkuuuNK+/o5AzbmHTZomX0ON3GpVEY?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9baf4248-e5c5-4c90-31c9-08db3cbffb2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 08:12:25.3585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zcA/SD6UnnIRSmT1kQnBx31pOEd41LmLixe/C1iG2U+onwtbhtHjsFSt5fumaycO8Od6ZKtE1oP+wx1WX58Ftg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7564
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is
 not detected with default filter value
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, April 14, 2023 1:36 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is=
 not
> detected with default filter value
>=20
> On Fri, Apr 14, 2023 at 12:53:45PM +0530, Suraj Kandpal wrote:
> > On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> > As a result of this change, when HPD active going low pulse or HPD IRQ
> > is presented and the refclk (19.2MHz) is not toggling already
> > toggling, there is a 60 to 90us synchronization delay which
> > effectively reduces the duration of the IRQ pulse to less than the
> > programmed 500us filter value and the hot plug interrupt is NOT
> registered.
> > Program 0xC7204 (PP_CONTROL) bit #0 to '1' to enable workaround and
> > clear to disable it.
> > Driver shall enable this WA when external display is connected and
> > remove WA when display is unplugged or before going into sleep to
> > allow CS entry.
> > Driver shall not enable WA when eDP is connected.
> > Wa_1508796671:adls
> >
> > Cc: Arun Murthy <arun.r.murthy@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c  | 19 +++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_pps.c |  1 +
> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> >  3 files changed, 22 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8e16745275f6..f93895d99fd1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4689,6 +4689,7 @@ intel_dp_detect(struct drm_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> >  	struct intel_encoder *encoder =3D &dig_port->base;
> >  	enum drm_connector_status status;
> > +	int32_t pp;
> >
> >  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
> >  		    connector->base.id, connector->name); @@ -4792,6
> +4793,22 @@
> > intel_dp_detect(struct drm_connector *connector,
> >  						 status,
> >  						 intel_dp->dpcd,
> >  						 intel_dp-
> >downstream_ports);
> > +
> > +	/*
> > +	 * WA_150879661:adls
> > +	 * Driver shall enable this WA when external display is connected
> > +	 * and remove WA when display is unplugged
> > +	 */
> > +	if (IS_ALDERLAKE_S(dev_priv)) {
> > +		if (status =3D=3D connector_status_connected &&
> > +		    !dev_priv->edp_present)
> > +			pp =3D PANEL_POWER_ON;
> > +		else if (status =3D=3D connector_status_disconnected)
> > +			pp =3D 0;
> > +
> > +		intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
> > +	}
>=20
> This whole w/a is just utter nonsense. The better fix would be to adjust =
the
> SHPD_FILTER length. There was some internal discussion around this the la=
st
> time it was raised, but the only clear conclusion was to reduce the defau=
lt
> SHPD_FILTER from 500 to 250 usec (which is what the DP spec actually cals
> for) on future hw.
>=20
> We already adjust that SHPD_FILTER down a little bit on some PCHs (due to
> some other w/a presumably), but I think just dropping it further to ~400 =
usec
> (if we don't want to go all the way down to
> 250 on old hw as well) should cover this issue.
>=20

Thanks for pointing that out let me check and float a fix for this Wa

Regards,
Suraj Kandpal
> > +
> >  	return status;
> >  }
> >
> > @@ -5489,6 +5506,8 @@ intel_dp_init_connector(struct intel_digital_port
> *dig_port,
> >  	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
> >  		intel_dp_aux_fini(intel_dp);
> >  		goto fail;
> > +	} else {
> > +		dev_priv->edp_present =3D true;
> >  	}
> >
> >  	intel_dp_set_source_rates(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 24b5b12f7732..21538338af3d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -1726,4 +1726,5 @@ void assert_pps_unlocked(struct
> drm_i915_private *dev_priv, enum pipe pipe)
> >  	I915_STATE_WARN(panel_pipe =3D=3D pipe && locked,
> >  			"panel assertion failure, pipe %c regs locked\n",
> >  			pipe_name(pipe));
> > +
> >  }
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 6254aa977398..ebe16aee0ca8
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -352,6 +352,8 @@ struct drm_i915_private {
> >  	/* The TTM device structure. */
> >  	struct ttm_device bdev;
> >
> > +	bool edp_present;
> > +
> >  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
> >
> >  	/*
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
