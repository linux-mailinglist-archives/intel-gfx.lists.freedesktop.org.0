Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6196E1EB6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 10:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B0B10EC9A;
	Fri, 14 Apr 2023 08:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C25310EC9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681462053; x=1712998053;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=J2qV2qhefDCcHeKm0N1Gq75IqScO6fbIDnGt/M6clM8=;
 b=AgXMT07IfrShYv+zJWAiK6Liv+/5NRm5gowBqXeZXEKJST8ttalEXF/k
 IAQVLAWzwgaLP9+emQICknsc17mTMxswowCSCv1oRdyMo4/XVbwYnVSo+
 gK4RyJDNfF/0hoLj68ARLg6NpIUrBHabNSAa093J5AaWzd3gkR4/buuts
 J1IqnAD1tHb99KcpaNUQSpZHF79wKjLUBzjCKhiBk3UvlCVAPypL3PHil
 Ie1L2DZvXM0ykKHpI0xbQk1nk5PGqR8EEylMT3rJR2Ga0TbGjpy75KJS5
 Qar0VVr+kwGCnGsiq8cX7mtp+gW6xNQPvNWEl6ici9h84KeGPSJCt1LY0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="341915783"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="341915783"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:47:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="813793951"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="813793951"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 14 Apr 2023 01:47:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 01:47:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 01:47:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 01:47:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 01:47:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e5M9JMrttce7OMJ3YiXmcRdlQkJAqIOlVf9Rg3/F/tDeicBVRyv9nAS3FU2P8H5r8EMK5Xd2cyWnAOga+nhBBKKB3YeJk1L7QZrjAOQ3qeW9Ov/Dp67l3yjPZ8X7v0oEc/seYyTdvi8u2umcMMwPtaNVMSS1raSxT7eXYuGLFGkn+KT6/UvDkPGxL980LZ3benT0SaUulKIxSQUjU7CEHEOPoon97pT3+HDdQf/yE4or7Hj2Gms0VZN9+CNDrBUc+cX65zLa8MQgHBc+iiH9Agzk23VOdnuK7DhdN8fp3cz1hTIeK+6B9bkp0C893oLbMeHoKYcx6YeFRCrs6Kd9/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+VhDh8ctR2zHgQt1x33EBa2CDkwc4JYR0wyyFdxBbaY=;
 b=ljiXlUearhU8NJshNvI/WI+NJFQcxVhpS/FYMVctShAVoIKd4Hae6SCf33Iuv8IAcsms/sKizbBqNCXjiZNdNKm4Te7lxxuT2YPLQM2gGH28o7ahlIBj24IDHWeYhw3jUjtr1dgGKV2PdAZngxi+MSyRPYVv7wrDdcOee3DlqbgK5K1Qccr/tBDjr1p7E1d1Xfhfx5KpCmgSbLvEsxCJYpO8VEZbvoX22BwPuRcDE9cIGTtNYFe5nVXlNF59RRZ8buRYu197LQZ6cV8ZyS/VCfU0KM/ybxroAnYbAiOYb6JNdC1oEKGkFjKOF+65p6zNiW8p5Bz64mFjnfHpvD5qLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 08:47:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 08:47:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is not
 detected with default filter value
Thread-Index: AQHZbqJLLNo3/oOlPU2ta6nVfzx+0K8qdm2AgAABfVA=
Date: Fri, 14 Apr 2023 08:47:27 +0000
Message-ID: <SN7PR11MB675097D1D709DA0920B4E691E3999@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
 <87a5zaho4o.fsf@intel.com>
In-Reply-To: <87a5zaho4o.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW5PR11MB5786:EE_
x-ms-office365-filtering-correlation-id: 224410e8-d694-42b1-be46-08db3cc4dff4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bYFB2E6K+qd/3S4CZPS0OZM9nEyAbB7nF4bKlZlgM+Ctnq4HjlFP6Ybnft8Td5lS1pWwnz21yDSq8W2XGb5i9YpO2p8QofFVfLfs2pNFKWPLf4LzPizFiBS5QSbwdL3zBYh3VHsbWBAwnYihvN/zrdoz1dUowjtzCNWJxpnYc+f32+qTxVnJSkQBy8jJH3lGVx39tqxba72WnmNxuucyHiuL+G5DlLZ+rJa46T/5S5lYdnBTSjA0Z9iByOAFJ8dlvVawmqA72BX3z2bQCary//Zip45pJc4U9l6hsh9nbEZHX+CLn+mkVguhu+PgIbIrJ+7N1WAuDtIIEEstzSHk/8baLPZrJ6VOY5/83vJlVGa5fhjNSNRbL68uFATMqSNdIEZtGMoq28gCFNptIX00D6WUsWnkyfgvmDZuEyTeaI3az2bjiF9DSsNyoCS5LNf4ePVqAwcKV94DS3WA7bmgBIZFR4kQIoEnyX2MTaSsUUxezmTrNju9qUCBZuyNaLJrus/45dhKOR2LI58KneDwQg0H/4bsZBouqC006xLsjN58FKW9zoIIRRlhCxmY8UMfXENgCVDn5LGs8q5Qu7GXY0DLV5yseMVe7ZqrMMoN/5caNbVL56qppvK78y8bP2R1JRx0FY0Ga1GIMj5ObIgXkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(39860400002)(366004)(346002)(451199021)(33656002)(8676002)(38100700002)(5660300002)(2906002)(52536014)(38070700005)(55016003)(86362001)(8936002)(122000001)(316002)(66556008)(64756008)(41300700001)(66946007)(66446008)(82960400001)(66476007)(110136005)(83380400001)(76116006)(6506007)(26005)(186003)(9686003)(71200400001)(7696005)(478600001)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Mpw5oOk60IxIo8QDHNoltFccYS9Mo8C46rcjidkrWGcFAcZsq+3I+uLP2FX+?=
 =?us-ascii?Q?mPFj3NQKeswYWwCa/vdIHuNxw3L1J5Pxc5keME2NzOpp3e9OWTDg6E/DcbK4?=
 =?us-ascii?Q?DcnZ50y6oLUUOJNk8tFxR0ouRHjK5YvmUblJF5Rt1R+2kVcgYFq7A5UMShol?=
 =?us-ascii?Q?jAqJT7jnQmIKtQ3wyHtzjSAY07XJePH2PocsnRUThvqihr1dqSVsFMBn4z+Y?=
 =?us-ascii?Q?YnYfqoAsyPh+L9fUuQ4QnjKlzvO+G+nXJu/hjj8OUaDIpslZIcRArxLmgWgI?=
 =?us-ascii?Q?bGZp7h9slCk1XDkPtNdOpa4xkA+jpO+QdnfSjMu7MC60nEj81xeE/YjGr9qZ?=
 =?us-ascii?Q?Kq3uIc9ZWt2BwI2Yyvz1qsioSfZ7xTQwSSKi+UpJYxcsX0vunn6wOxASWOY/?=
 =?us-ascii?Q?EA+a2ewj/m7VwzG/gBoJGsm3q/xw57UnUjguAjtmdWPHH5vf9pSE4wgOgovD?=
 =?us-ascii?Q?3uIpeemkCW3Jn2gFTRIO5Mv/bS4rtXML33FJW+BAWmTsII1VOSwYFY0bC2hI?=
 =?us-ascii?Q?ugcvTgzpELwZVBWwjDtego/pFIvoZUaIHEEvHvpXB1nlsobNOfvWZR54Pr6F?=
 =?us-ascii?Q?6JeKnhFt8wPW+0+tSmpbMtKRLYKV0Ih6e5iszdociElBUl7tr6gi1KArDqRR?=
 =?us-ascii?Q?nvvzdkE9/cPzFxFaplP045+nCXc76CqAmc1tRAfgL4BtPQNJukQMj8n27tK6?=
 =?us-ascii?Q?GiMjtUu5FKiqA0Y8D/MMs7tthTl2tc1tCKawEW8y6ATk1aewzIFkrY+HHi/i?=
 =?us-ascii?Q?QRMxDB0s0uc0xE1ha1P1xRNWn2unHk2AMDl/62PGI3ys+u+UJW3BHKjHfA1K?=
 =?us-ascii?Q?VrIZjNqpPWTbu0XnYaZ1wO6yOHyPZbHyaang9l/8vnq5BLgHdwJOuo5bc3Fb?=
 =?us-ascii?Q?Xxjo+XhI2tsQzkHdk8u3AdwXmSKHCyFg0n3QrA4DOlexYL5eWUSwHgH/dCIf?=
 =?us-ascii?Q?s/hdzUtlAagh3Nv2HNfZxGT1CKJy7cnKFrcFERaVqZTijmhiO0TkoHi5xrSm?=
 =?us-ascii?Q?z5jVqvMxW5PP2HO/a1EnDUdHtUHYB4PYbyz47wZJ+4vBcIyIe8vhdzelckBu?=
 =?us-ascii?Q?rHdB4aZkKlachNoiEugXlj3QWfSAxnr5GPTSvUvjuaBWsHfIepN42NdR0pNe?=
 =?us-ascii?Q?ousOoee6rU/ycZxovIgbnnvloH1VskA/orvml/9ly80PkiorXulrRlHNJwoH?=
 =?us-ascii?Q?pRHoYxkkt7NUFPjrn1i0bQifPzV/G+RU8+dZb+Rv3Axuo1H7GanpcA+sCe7v?=
 =?us-ascii?Q?Q01tdTsPSfq2O5GIXVBVrZLBBfPW3mPINy+LRMJwI8YfWTICA9nMSgGtU/la?=
 =?us-ascii?Q?sWnabs+ugWLfDwUCB2gtfRaA5Teqd9NhfZTRAI+7MpF1eqG4gmuHTHW0mKD8?=
 =?us-ascii?Q?1RWWoGtYOvWcGqh0BUP5DlZ/vgsLx7UZwZlH4a/4oOR4l2a40j7tPh9E/pm4?=
 =?us-ascii?Q?R8ASXjLNmazzJKNniNv0U7WOpEmqczn2a7kLcxGrg8S6C1Uns40gke67zlWs?=
 =?us-ascii?Q?6lO5v23PtpZ3c4hhFGdoJGt+WE8Gmzn44UcihqugCtEWIMBA1fio62B+y/gt?=
 =?us-ascii?Q?ze0+bhkmNLKXjDQaJrQ70/0dpfTkZ0aYvLjNYLvM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 224410e8-d694-42b1-be46-08db3cc4dff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 08:47:27.1659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Riw7BCLDT5A8wVX15FFn+E3o+lgJbzlnpUe1Pwjc7ceHDysFG7dnxDVFsknV87RhfZZWRRW3KSBLQbJLfzj2wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>=20
> On Fri, 14 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
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
>=20
> I don't know what the right fix should eventually be, but this, as it is,=
 is
> absolutely not it.

I guess we should open a discussion on how we should go ahead implementing =
this fix

>=20
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
>=20
> For registers, this should be u32. There isn't a single int32_t use in th=
e driver.
>=20
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
>=20
> You're not supposed to cook up register offsets inline in code like that.=
 The
> *PPS_BASE macros are not for general use. There's PP_CONTROL macro for
> that particular register.
>=20

According to the WA we need to write in the register PP_CONTROL 0xC7204
But the PP_CONTROL macro depends on the value assigned to mmio_base value
In pps struct.

> Why would you use magic 1 for clearing and PANEL_POWER_ON macro for
> setting the bit in the rmw call?
>=20

Since I wanted to set the first bit to be set as 0 or 1 hence used clear va=
lue as 1 to just clear
The LSB and then intel_de_rmw OR's the read value with provided value.

> For the most part, only the PPS code in intel_pps.c is supposed to touch =
the
> PPS registers.
>=20
> > +	}
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
>=20
> Please don't add global state flags that duplicate info.
>=20
> And when you actually need to, struct drm_i915_private is no longer the
> dumping ground for random info anyway.
>=20


This edp_present variable was to check if edp is connected to machine
But other than iterate over all connectors to see if edp is present I could=
n't find a way
Making me think drm_i915_private is the place where I can put this variable

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
> > +
> >  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
> >
> >  	/*
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
