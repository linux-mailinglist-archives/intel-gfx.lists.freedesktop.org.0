Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66406E1EFE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D4110E0EB;
	Fri, 14 Apr 2023 09:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88BDF10E0EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681463187; x=1712999187;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jbztSZN31w7yMmS1Kg3KTmhm6u/ion90B/WGhQS7Wds=;
 b=dzwgVqUxH/q6mX2AUPamTaMGGBpsfHwXt8EndvpB0JEfGba7jbUynRWh
 kTAfGCigpZp+HwE10BR+Zd0aXuaH7QhbjQj1dkGzHW30KnO0LMbr5pUCt
 5dZpN3oWUL+2CQmibhPdiuszVfk98uXAP7rhEfnpBcBeBeibsBGbuQnPt
 oq3VegXv0ieRSrRNE/8w+A4ekS41NIbYGAmoYopIjZifpBrwcSVL541wc
 gkUx3OHlChmziOXo00k60vtcgWelTnGuC8sbOPfRntYpk+CN4yDyJ8mPL
 83DXT9JWLs6XW8xB62Ment/NP0MvYERq8sBry79ViQXGd7FlljWlc7CUs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="407293164"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="407293164"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="759046332"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="759046332"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2023 02:04:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 02:04:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 02:04:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 02:04:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 02:04:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e4VRCqvzniZFwdFGcOiNeTehokrjE1BlHjNKCf5otL2PaqilqMwhukpPSgvuB8XLzhe8MHB2hzHWVEUE4oaUxTZr1UVgV6lAkidFhQHafIW+joReEPoZUTnhyg0S6WhkFVuDBOTTqznyKTsRuI/S0iPRpGwaeEBOJbp5yGwcX3h3usQ5W34fL6uMrTOHJZJql5x0FFev5x/9rXCREWDisbaNsgc/zzIhwsIMVml2GeZshGpg1vMzqwjNCtIFARUxT1Nep5O+6l7nne+mZOWhTrvxR2iU3l1dR8kfOq41+WVMjWYlsPPEc7IWZqF5gdwv/O7e5Ed6iaa8XClXm7eMlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vgzZJL+q49QX8x+ogRJ1iPDpZxRFEf6FFzoqoWKyrDU=;
 b=J8y89Le930Nec15F6T/8QYcg8AIqg90d6Z8vBjper/gjYuON02qJ1eSwIyuaxNPgh/uvTYZx5jtKxhSleEyipyCMjNGbyorRkCheSBwTinZheomYYFA8AMe6A0LjFHkctFzntEnpMQ/vwWHgoIqmlw+w7DnvPlwnUX6FvrJW28Usl7w53u+6ZvkZUU5pKS3vUaJ/SkmL11PgpEEDjqS1JS38K+df/zeiUEuN1mtO0+3CKgcPfD+tGye4WNpvJAUJXEmyFjWhxkJf2BOy7G0L5LDD1xtYYvGcGosiVpovPn/wQr6syMob9/4vT0+PS5p6XfUxtUSaWHEsOlh7USK6Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7718.namprd11.prod.outlook.com (2603:10b6:510:2b6::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Fri, 14 Apr
 2023 09:04:51 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 09:04:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is not
 detected with default filter value
Thread-Index: AQHZbqJLLNo3/oOlPU2ta6nVfzx+0K8qdm2AgAABfVCAAAlQgIAAAOww
Date: Fri, 14 Apr 2023 09:04:49 +0000
Message-ID: <SN7PR11MB67504A50BBC771BC4FE346B5E3999@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
 <87a5zaho4o.fsf@intel.com>
 <SN7PR11MB675097D1D709DA0920B4E691E3999@SN7PR11MB6750.namprd11.prod.outlook.com>
 <877cuehmc8.fsf@intel.com>
In-Reply-To: <877cuehmc8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7718:EE_
x-ms-office365-filtering-correlation-id: 3329300a-f700-43d0-38e7-08db3cc74d89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Dgn8aPxxhsnTb9fr3gY9kFv63tbTJmjb3TmJpqLQzuKfu0XHUg8MoRS+uEPnGA9We2/NAkPQo5pJB+z+NR+YjztHtQdtHl+28GxMofIpuk/hw2NHb6mun2qhn0LDV0SU5VfoUDQ7yJbTvne1R7MnULgqCe5n1ByEtzgpMtF8oIXM48zh5nEBh0cmZ0G28skYwtR9bJnRBTTxKXXIzmC9/ZP415uTSUz2RTMY8Jlf0ecAOBhkuy1FDckPceDADbFSla4ix6aRYm7Nt9gGYyfWlhG4DlqeALn1rO/voBJCQS/jsgf9Pw6htO3guXWt/qa0rLul/pspxhYy3819CDtgioqc1VFAujv5y5GNqAw6cKVZGJBm0trbUtf2M5y9ASW3rlLx96G+T70lpyrvhOGbBqrBaM58m551+7Xdn2LzJqRkVgpU5iAn+1PBIqMt5hOYkSC/5AYjbWWRwGmGLdGWKxMuafmUfrekAPg72qCN8RBALSaWxTcQu8b1DadMNdXzZdclV9lkajSrQ1GUpQx8tac9tlgAf4049Ju0ILkV4OBUI+QjJVwXAztiHu3bMsVZ3Fhp3DGfTiFxb64ewWJim3Jn1D0ttxO2RZ22xhxC8BX/wlWMqQWBF9EzXO9ttcssztA/6xjVk7vhlk/zU2+jA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199021)(86362001)(8676002)(8936002)(52536014)(41300700001)(2906002)(64756008)(76116006)(66946007)(82960400001)(66476007)(66556008)(66446008)(38100700002)(122000001)(5660300002)(38070700005)(478600001)(33656002)(110136005)(316002)(83380400001)(7696005)(9686003)(71200400001)(6506007)(186003)(26005)(55016003)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f4U6rEtecxHFUhFjfnS1KUNyBLlfempdNIaRPRWPsb3pXAhJx/k1EMs7eNtH?=
 =?us-ascii?Q?eKuubv3C5QG35i3lTAi7GFfV/m4PcE0KmtuC+jU25S37LIz9l3ZndQozI4Ji?=
 =?us-ascii?Q?aMmDrNiQmqkIFwewANuroND52UsMpeb07znrRdScrS5dWpDLgPAQ4QrOnU/H?=
 =?us-ascii?Q?t5i+Ft7c2TG1ZZQQDRbi2frsdPoqyntdW6xW+KizWY0TvYjdYvc44OiI3FP9?=
 =?us-ascii?Q?F1rCLpTKBlwnVOosLm/ZW6rnjVbWCjMGdjE1XBhaMITaoVDrkUmI7/0dJCQG?=
 =?us-ascii?Q?lVP9AxlUmt7aABBRLYYQfF244Sj55HA+SEQ98bTqR81oHmKTKYo/V2WCHSjO?=
 =?us-ascii?Q?eIoac9Z1Hpvta6a4ukAgTyH+G4En1iSTuVBliftOUbmer3Qa7E4A8s9VYvlE?=
 =?us-ascii?Q?DbxSkrLDFmxMq1WIejoJhg8MU7Ge+iSE3ZNMIfRB/8kZxBjjSZU1i7zawjzp?=
 =?us-ascii?Q?wrE3+XjugVqMZtiZ44665qWfaKZ+1VZeq0mcGbJRYUXqBmtGShTUzRh/qLx3?=
 =?us-ascii?Q?GzcuegNIru5jSn+3w+T5a52vPrDatYAXWaCNfIBANwer7pnEl5MkNWBxdBo2?=
 =?us-ascii?Q?btcL0XiZhaPEoqrJQJD31h0Bpw/fWZ/cGtJkqW83I05WN3qvJTc5Vd5jS0jJ?=
 =?us-ascii?Q?j/qmPNNs5BvXyO/uvbArdKF5X335WpPfivbJClDa1BXB+z4GInREc8tG20w1?=
 =?us-ascii?Q?qid22qeruewEnMObZ7WR+4gAVt2vaH2F4NHgwVYV5PzwnxG1pbyKVdoT0jcJ?=
 =?us-ascii?Q?eyJQaBVP77C4RCS+aALlZpCQYn9iDcOLO3mheD29uh0IC0WVK2leUU1As9oy?=
 =?us-ascii?Q?Pg4fPMQZBlXUbkg/1AQz77qylu5JpgD0Fa4BcHYiapxNB8EOFIvQJApVuHd8?=
 =?us-ascii?Q?d9cHrdayLPEoWo20/osZ4BzJG60AF6CpWaTH1sIgougjxaYHx/Pos4XikZM4?=
 =?us-ascii?Q?sijo+tQgG2vH5mx8W/U21sM6c6rN+arbupZRWICKaKwETLuviM+j7chc42aK?=
 =?us-ascii?Q?6kpb6mpohccZ7bGdfSrplZ4DynSWHKZMjDiFlqQBGD4SF4mihjBP1y9WEzJJ?=
 =?us-ascii?Q?uHUc6O0utG6nSUD+lLcfAjWG6vfnqWSWxIRS1a5629OT8BHSOvWi2c8usxFp?=
 =?us-ascii?Q?b4xBJrtlUyiITxcd0QKA8YTV54eiqgpMG7lh/JIEQ7MBoN3nm6dzOJc6GnCi?=
 =?us-ascii?Q?uAP7WqATkCVOGi/zxu9AGtBV6UsccwhvLnfjn+69uKbSLE0mNAhly73f6BJU?=
 =?us-ascii?Q?fzUICBR00CWpfg/zhw6orwDfrVpogIIE0uGA68Xw7znZacf+/sbnr2Zyb38A?=
 =?us-ascii?Q?kwvtb7sp9jBUtzFrlLY7dHpMMWai4Rknl9lVLTyc3bLByDkOoFZUQDGtBjYA?=
 =?us-ascii?Q?gGNeYpkQid+f74OJs3G1Dv9Ax7Ot8EBu3cLxsqGCUzvJRKhJqbzvx1EkPIy4?=
 =?us-ascii?Q?2BSZTJDUfKYpoPytGaDu5wxwAnLDPpsJqEV+uZCCxlM4OdzKbZ1895mDEE4c?=
 =?us-ascii?Q?A+d4YRQJJC6m8me7C+xkQB2xFJQzEQf6cwAJjZaZ6zz3klkqOd9Jh0zI9pRc?=
 =?us-ascii?Q?AuhCfUEWlJCoXgsWUkjPUZGYyGPxIugaqKQUlj//?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3329300a-f700-43d0-38e7-08db3cc74d89
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 09:04:49.9808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oPFnB5zwQd0sERV9gFKT3OSpQsF/ITiLy06xuRIf8CXTCgZTevLfDhxDCdh433LeUUWVB0ELW+m9obyqoCzbfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7718
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
> On Fri, 14 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >>
> >> On Fri, 14 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> >> > As a result of this change, when HPD active going low pulse or HPD
> >> > IRQ is presented and the refclk (19.2MHz) is not toggling already
> >> > toggling, there is a 60 to 90us synchronization delay which
> >> > effectively reduces the duration of the IRQ pulse to less than the
> >> > programmed 500us filter value and the hot plug interrupt is NOT
> >> registered.
> >> > Program 0xC7204 (PP_CONTROL) bit #0 to '1' to enable workaround and
> >> > clear to disable it.
> >> > Driver shall enable this WA when external display is connected and
> >> > remove WA when display is unplugged or before going into sleep to
> >> > allow CS entry.
> >> > Driver shall not enable WA when eDP is connected.
> >> > Wa_1508796671:adls
> >> >
> >> > Cc: Arun Murthy <arun.r.murthy@intel.com>
> >> > Cc: Uma Shankar <uma.shankar@intel.com>
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >>
> >> I don't know what the right fix should eventually be, but this, as it
> >> is, is absolutely not it.
> >
> > I guess we should open a discussion on how we should go ahead
> > implementing this fix
>=20
> Ville's reply is relevant here.
>=20
> >
> >>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c  | 19 +++++++++++++++++++
> >> > drivers/gpu/drm/i915/display/intel_pps.c |  1 +
> >> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> >> >  3 files changed, 22 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 8e16745275f6..f93895d99fd1 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -4689,6 +4689,7 @@ intel_dp_detect(struct drm_connector
> >> *connector,
> >> >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> >> >  	struct intel_encoder *encoder =3D &dig_port->base;
> >> >  	enum drm_connector_status status;
> >> > +	int32_t pp;
> >>
> >> For registers, this should be u32. There isn't a single int32_t use in=
 the
> driver.
> >>
> >> >
> >> >  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
> >> >  		    connector->base.id, connector->name); @@ -4792,6
> >> +4793,22 @@
> >> > intel_dp_detect(struct drm_connector *connector,
> >> >  						 status,
> >> >  						 intel_dp->dpcd,
> >> >  						 intel_dp-
> >> >downstream_ports);
> >> > +
> >> > +	/*
> >> > +	 * WA_150879661:adls
> >> > +	 * Driver shall enable this WA when external display is connected
> >> > +	 * and remove WA when display is unplugged
> >> > +	 */
> >> > +	if (IS_ALDERLAKE_S(dev_priv)) {
> >> > +		if (status =3D=3D connector_status_connected &&
> >> > +		    !dev_priv->edp_present)
> >> > +			pp =3D PANEL_POWER_ON;
> >> > +		else if (status =3D=3D connector_status_disconnected)
> >> > +			pp =3D 0;
> >> > +
> >> > +		intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
> >>
> >> You're not supposed to cook up register offsets inline in code like
> >> that. The *PPS_BASE macros are not for general use. There's
> >> PP_CONTROL macro for that particular register.
> >>
> >
> > According to the WA we need to write in the register PP_CONTROL
> > 0xC7204 But the PP_CONTROL macro depends on the value assigned to
> > mmio_base value In pps struct.
>=20
> Yeah, it depends on the mmio_base value to make it independent of the
> platform. It would not be different on ADL-S.
>=20

Ohh I see, got it.

> >
> >> Why would you use magic 1 for clearing and PANEL_POWER_ON macro
> for
> >> setting the bit in the rmw call?
> >>
> >
> > Since I wanted to set the first bit to be set as 0 or 1 hence used
> > clear value as 1 to just clear The LSB and then intel_de_rmw OR's the r=
ead
> value with provided value.
>=20
> Yeah, but if you're using PP_CONTROL to set the bit, why not also to clea=
r it?
> That's kind of the idea with the macros.
>=20

Ahh got it, thanks for pointing this out

Regards,
Suraj Kandpal
> >
> >> For the most part, only the PPS code in intel_pps.c is supposed to
> >> touch the PPS registers.
> >>
> >> > +	}
> >> > +
> >> >  	return status;
> >> >  }
> >> >
> >> > @@ -5489,6 +5506,8 @@ intel_dp_init_connector(struct
> >> > intel_digital_port
> >> *dig_port,
> >> >  	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
> >> >  		intel_dp_aux_fini(intel_dp);
> >> >  		goto fail;
> >> > +	} else {
> >> > +		dev_priv->edp_present =3D true;
> >> >  	}
> >> >
> >> >  	intel_dp_set_source_rates(intel_dp);
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> >> > b/drivers/gpu/drm/i915/display/intel_pps.c
> >> > index 24b5b12f7732..21538338af3d 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> > @@ -1726,4 +1726,5 @@ void assert_pps_unlocked(struct
> >> drm_i915_private *dev_priv, enum pipe pipe)
> >> >  	I915_STATE_WARN(panel_pipe =3D=3D pipe && locked,
> >> >  			"panel assertion failure, pipe %c regs locked\n",
> >> >  			pipe_name(pipe));
> >> > +
> >> >  }
> >> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> >> > b/drivers/gpu/drm/i915/i915_drv.h index 6254aa977398..ebe16aee0ca8
> >> > 100644
> >> > --- a/drivers/gpu/drm/i915/i915_drv.h
> >> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> > @@ -352,6 +352,8 @@ struct drm_i915_private {
> >> >  	/* The TTM device structure. */
> >> >  	struct ttm_device bdev;
> >> >
> >> > +	bool edp_present;
> >>
> >> Please don't add global state flags that duplicate info.
> >>
> >> And when you actually need to, struct drm_i915_private is no longer
> >> the dumping ground for random info anyway.
> >>
> >
> >
> > This edp_present variable was to check if edp is connected to machine
> > But other than iterate over all connectors to see if edp is present I
> > couldn't find a way
>=20
> Generally you should follow the Single Point of Truth (SPOT) principle. O=
nly
> cache stuff like that if you need the performance. You'll quickly get int=
o
> trouble duplicating state.
>=20
> > Making me think drm_i915_private is the place where I can put this
> > variable
>=20
> I've been trying hard to clean up struct drm_i915_private of all display =
stuff,
> and moving them to the display sub-struct in a more organized manner.
>=20
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >> BR,
> >> Jani.
> >>
> >> > +
> >> >  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
> >> >
> >> >  	/*
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
