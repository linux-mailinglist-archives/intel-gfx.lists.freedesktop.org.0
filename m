Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E63A7522A7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 15:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E9010E6C9;
	Thu, 13 Jul 2023 13:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 574DF10E6B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 13:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689253436; x=1720789436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FO2FfCPhhBC1CCJEVUx2sJSRIo1xzox8XbLk6+RLS0M=;
 b=M8dsz4kfEeNXgdONu5WDX3HRTkN/a43TVgFjHQ8ovaBFUIWjACqlncPB
 xatevcbb/cXrgXOOBZwUUXmmGbvbaCZbi9dJ/5OubgDTEr3z5IfNOro1R
 NIeT5Ev5GsikfBBfewYgA910DHO//cYgcTgoBGxwkKWb9bWtPWw9j9d9K
 W6J7pZIXf28Tk/0IIEwvs32vgNnQo7ygyHqwn+xgZ0qglkauw1k4nJ0Hc
 yf2aptb5wskDjGiVHcgLtzI7R4mI5eZ5ICCZz63acXyuxdBa/a6MoowYw
 yCLgCj7zafiftQ5qCartUH4aO/At5xOZA/7QgDyQ3nnqmbARf2oE+Ht65 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="364043175"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="364043175"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:03:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="811988567"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="811988567"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jul 2023 06:03:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 06:03:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 06:03:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 06:03:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 06:03:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Off3GjWHCjVDGEsDSwOIcl870FF5iFaRzD2HGMxUpa0mH04DmPmD/VYuFh2Q3aSTbrcFv/TwneCPTMTEUVcIaxIMqHwckRMofjWwu7mITv3HVt3gIpvj/gP15GgDLi/G0m3XH+cCuzxLXYPkFuQXXsNdWz1j7voi0GJ6e2deKX+/Ph4hN940/a6aBXM1CWDcRXJSt8DYUkamnrncrQfFQp3Al9cdg+Uqu80yI74pJQeKzAAS+5rLr/eZF0Iw1TUUSeEE8l1vwmoH6OKXnAGy42NaNnszrNGDOQSNSUvg65lAQRUKWi/UywI6XNyzCjavsWmzZfumT8E/6GxfFpvCmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqZFWjmE8whAteqhji1GHhTXhgZp0klunSMRFhMc+hg=;
 b=SXPPyl6Lbh2v74aNE20HiIS48VI/5tZQOaJPJKHF5jZj6C5wkubGBvgRH/JmsTS5ztnjR6EmMcf8pa4jV374EfdInekQ/0OXaKaWC12FydqSJQPnmcF7OME6mFqOG36ZnShM/akAH6QaM05TjIAJlL1SF29ZIPPmBldDf02B0j4WJf9iWF4Q09odn+kuzs+Br/8FG+HMSBkF2n7wjvUB0tXqZqK80dxMRfTKPGgrv2rqU6m026t8MvnXk2A2FQz8B0/uUTdXwZXQTivgzghWyWvtyk1qFJRCFGU/HkJzJKyUDxBs2IT019qVzCHua3VYJQ03CoXCIb7MLQ0G1DUPqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7996.namprd11.prod.outlook.com (2603:10b6:806:2e3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.26; Thu, 13 Jul
 2023 13:03:45 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6544.024; Thu, 13 Jul 2023
 13:03:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/6] drm/i915/vdsc: Add a check for dsc split cases
Thread-Index: AQHZtVOfKTcAdZroG0SXjQljBO4DYq+3oJ8AgAAJJFA=
Date: Thu, 13 Jul 2023 13:03:45 +0000
Message-ID: <SN7PR11MB6750364A61E7D92F5520505DE337A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
 <20230713062924.2894736-3-suraj.kandpal@intel.com> <87r0pcf10j.fsf@intel.com>
In-Reply-To: <87r0pcf10j.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7996:EE_
x-ms-office365-filtering-correlation-id: d44db807-6d8b-418e-1a92-08db83a19768
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TIOG6VrYPd0DMYUvi/77KKOlsfva5X16vKH71r2IhehR1DL6SZwPyGONofrLzeMFwjVuPbS/49s3jqbaH0pdGYvZnQNyYw6bkzcy3piXeB0+r38U2taqct99emQkQ8iZ9n89mNZCqZ2ZouY0f/NtUuzzBAgEyHM6Q6WLJ0YGa/bv1m5PTj7V4oU3MeTBsCx4sq4VSVlDpP80YxVhL1RUtb4giq/WxuBDORQZAT16+Yb32k8EPmnCFaWqx0UUkPsW6UezfVVvnNcJ7bQiI4y2wkCFMNBCgn8xwEw2aCMHrlItTyE3dAOHiwzkd21fpJ+Pc4MMhMHYnHSPdMfBE35Hop88AIoOi17N5Knk66wpz3IOfs5qQQpF7SGJfv8SLtAcCeoa4YxmbM1e0qk5m8UN1TwQjdQL/729ThA5xKHtaP0HMj4/tb185sbxoLZRoMEjTqa4bam+vhPzhuHWsLDb80ywHMYtGUbE5C3+BoFSL5S93BpN5MZb6ieoloUXcDYP/8l3cjnl8dV2civWXFsMfng+VMl0awQ2QaJIOMRBjaJroXpTVBpbn5SN6ngrbD9LnMw27KrvW/HmVpPfe4GGU8XMim0XHyFt8BAe0v2Nrh+SvzJ9YR5BwR13Pdw4WZ5t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(136003)(39860400002)(366004)(451199021)(8936002)(8676002)(5660300002)(186003)(52536014)(83380400001)(86362001)(26005)(6506007)(41300700001)(33656002)(7696005)(71200400001)(54906003)(316002)(9686003)(82960400001)(66476007)(2906002)(66946007)(66446008)(55016003)(66556008)(64756008)(122000001)(76116006)(478600001)(4326008)(38070700005)(38100700002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0DmPOzhfNG/dgdGWh/sEiDhZNWhmLaFw+xPSHJ5w4bUTY8ux1+mt42wa6W8x?=
 =?us-ascii?Q?vpGuVlYesPMOyDdGpWlMgA3jP37Qp5584Dez9vdN9647EOE+Wsz2CJ18e6bS?=
 =?us-ascii?Q?jCAoNl7zq1o1hb3SlQPQFmxp8fAKcksZdZmaidxU98Qo18W16g8zqOKl3mcZ?=
 =?us-ascii?Q?4EEh/ey+tIsIPzpF7Bw0Gvw6i7W/EzOPZKxFpBXN9Bguqss+uU96oY2gBDTM?=
 =?us-ascii?Q?c4K0xF/lDfkR6kGcaSg2B0IG1BJv6ii4fZSme5nEwfshS5l3i4MzW2Dqxw+b?=
 =?us-ascii?Q?ml+9cLGN6njhc6gzHyF7Zsp1HUkYJuG9UcmIj09VaK1m0EZGzY3lWGAfb16p?=
 =?us-ascii?Q?OG8N8nQlgTIc8WBKgfyFzUuv8GWnhWJk9CFKnlIga6KCOzAMyA8CQbXaGe3M?=
 =?us-ascii?Q?79VPsPX+pzyUfbdhnKEJA44c8edPVXjyEkOUvZu+JH4Ue7CszwouAag/ML7Q?=
 =?us-ascii?Q?tsFAYQuN3gY84lxAeM1Ju27w4a4fzTxmEMZkj1lbGK8udzFlcysEauLfWQ4J?=
 =?us-ascii?Q?68POtUXVrJNnmVoSoFJ7z3pc653riz/hMsNlCG5WR4xlkHSc8fpBHI07Ugtq?=
 =?us-ascii?Q?PPbkUS8OhSicrRhf49S15FjFgXizAXwg3uxf/ZgUHacYU/yujRB4ddSVfWx+?=
 =?us-ascii?Q?uXj6Dve6bwc8xKc00VjeNDkV5KGdgXmyUrP5E2jCzPZHhZrh/6zUWeabpO9t?=
 =?us-ascii?Q?eVZ9wz8j+fnJQQ62e8c3q52vcgTs9zi6u+gpjHCqYTNPHulZXm5jFJVdIfgb?=
 =?us-ascii?Q?X9d23jjmhxyyhAQz9NSAGUX839SRJASpamRLJO+Xun1p0jbtKKbzvAQWywQU?=
 =?us-ascii?Q?tPj+951YoHcbZF/j8UHztI32EDmECsEMZJ5eVOMFI2ZkVCvKkP4OFbdadK4s?=
 =?us-ascii?Q?C6yolAaDI6nhN8+SN6FpuRDm/1LbqdjsYrgDN4tso1Ip0gTygnFXcr8PTMa+?=
 =?us-ascii?Q?8ev4EmWEoVz3BVIfWL/+QWDeB/TjEHBWdhkKXh1RDvZskW7xDgpc9TJxy/VG?=
 =?us-ascii?Q?kMUQkbrida52j9d9TT8qjbVS17rf3iAww33nT8YkfrkPEmEAu2zDEL6RoVDy?=
 =?us-ascii?Q?C7/1MSePKfEkFh+ZQi71I0os+KXZBLbMxVYdB9nRxCoJoigiAHZ5wzaYJY/1?=
 =?us-ascii?Q?hdaq7JWAOblAH+sCLCWX4SfpWfUNuw1JXyPbCkkpHpOC6ft/gDdB5Byzk/Kn?=
 =?us-ascii?Q?TvwtlI2OL8c7soWa+8uJHQD/1S1VAJPGS8aOaTj4vDEmc1iBaPo0yNZ7o+HW?=
 =?us-ascii?Q?YEVgqLgqnQjPpafCJKf7utU0qqwufQRtROp2TEj86sCzGnWrn04YFDw/Gbq9?=
 =?us-ascii?Q?wOLMYROYWOcwphgPgYULtVSo3EsOjfKu42acDqy9hC5rr9+ef5R471K3zvnW?=
 =?us-ascii?Q?TxA0/OnSmAYKkyj/p71gcF+1iDyKP3Vf5YAQT0zkDKR2gRwsdjM1+sKxx4rA?=
 =?us-ascii?Q?XzPBLvaHP6NHxZaYTzxjHN2aFaJbtxywhjhhi89SNeixjE1RGL8d38YZKy2D?=
 =?us-ascii?Q?ku0TH4poCJTuFhf7I8Wx3XQy+gqnv8i0oobM8hDkprCNPXZXdEQDlFpwhmJh?=
 =?us-ascii?Q?GGZV9VCTCeB/Yg+7evFAthaTGWMgzj/rdNlPy/zM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d44db807-6d8b-418e-1a92-08db83a19768
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 13:03:45.5896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q0SzbnU3mWP+Xg1E5nHRYBA7oLQRXfYc2VM0plvfYJWjTjBBaJA+czRzAcVFNQawDCBYy64hlhcymoErm7GzjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/vdsc: Add a check for dsc
 split cases
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

> On Thu, 13 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > In intel_vdsc_get_config we only read the primary dsc engine register
> > and not take into account if the other dsc engine is in use and if
> > both registers have the same value or not this patche fixes that by
> > adding a check.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 530f3c08a172..d48b8306bfc3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -939,7 +939,7 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
> >  	enum pipe pipe =3D crtc->pipe;
> >  	enum intel_display_power_domain power_domain;
> >  	intel_wakeref_t wakeref;
> > -	u32 dss_ctl1, dss_ctl2, pps0 =3D 0, pps1 =3D 0;
> > +	u32 dss_ctl1, dss_ctl2, pps0 =3D 0, pps1 =3D 0, pps_temp0 =3D 0, pps_=
temp1
> > +=3D 1;
> >
> >  	if (!intel_dsc_source_support(crtc_state))
> >  		return;
> > @@ -965,11 +965,24 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
> >  	/* PPS0 & PPS1 */
> >  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> >  		pps1 =3D intel_de_read(dev_priv,
> DSCA_PICTURE_PARAMETER_SET_1);
> > +		if (crtc_state->dsc.dsc_split) {
> > +			pps_temp1 =3D intel_de_read(dev_priv,
> DSCC_PICTURE_PARAMETER_SET_1);
> > +			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> pps_temp1);
> > +		}
> > +
>=20
> Superfluous newline.
>=20

Thanks for the review will fix that=20

> >  	} else {
> >  		pps0 =3D intel_de_read(dev_priv,
> >
> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> >  		pps1 =3D intel_de_read(dev_priv,
> >
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> > +		if (crtc_state->dsc.dsc_split) {
> > +			pps_temp0 =3D intel_de_read(dev_priv,
> > +
> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> > +			pps_temp1 =3D intel_de_read(dev_priv,
> > +
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
>=20
> Those are the same two registers as above?
>=20

Yes they are should have been _DSC1_instead

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
> > +			drm_WARN_ON(&dev_priv->drm, pps0 !=3D
> pps_temp0);
> > +			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> pps_temp1);
> > +		}
> >  	}
> >
> >  	vdsc_cfg->bits_per_pixel =3D pps1;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
