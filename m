Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2341C736394
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 08:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD56210E25A;
	Tue, 20 Jun 2023 06:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C11510E25A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 06:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687242398; x=1718778398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3omX0ky926dIeT0KKhwFmUqBbIJP9/Mxxy4VS4Fz4lk=;
 b=LTX6EbpLvAZdktLTI3Ft+PSrPgqjM4a+hE5qugRHiAENlGcCHPTD6kwU
 9wITJ9sTlz7EKwMUqQVJX1ypJl1dEPfWGEcppauTslKng3XmZPrQ+3IEt
 ZrwVLt2QPBQzkYBBqZN19Rp5TxXGaKoPcSf4d9VjWoQeAtnnYjORsKJBk
 C+JNcZRJGbWaKJoqKFf9NpVuOXhsk7kfcGmqGS2uZ30nxDpb2eCKIvWZd
 YKF60eRXUfaxukpEwrP+OI/HrZiEgYwBq2oeNO6UGp/sX0Fye3hkuYZwZ
 c58Vdk45MYDluP6Gc3yaJ66pGBn/HpjYdFe8nDHjZPoYwSqJhD33rQR4V g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="388959518"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="388959518"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 23:26:37 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="747925686"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="747925686"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 19 Jun 2023 23:26:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 23:26:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 23:26:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 23:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6/GAvBcIcwU62tnvSoKPbdQNo16hesT/z6y/+zo/5+9sTpk5vVoYdEypGgaIDLjhMtdZYfNqmGjeaWm2Zw/5d7w1gu4wSOuQpWiQPFe3gNytIJvtLoNQBVR8UFLmMgA2e3kj+LDVPwY7O1LnsQq5sP+oHParbKTGh2sT0PTA2sglYoaRpxhhFLinCLHJybx0u0/xFLq4Ha5Jzaj3sg1v+nhst92PO0UKO5M5m6QckndX6iXzsWBdM9RCrYBUlhaQjRcDa8y8TO9NP3Ewt0lEpjH0iRztbv7/tFOgr33S74KUQbAkhfKFobWz6QzqBTaH14G2wsMGQDuIVCOkZMifQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGufccwiEyw6U0PKaXKX6rxJhLOHftQqz3piwmUsKLc=;
 b=CC8dJ9BKYvDA8fkCKm5WwMpJu/Rt9F6vkcqM1dm5AjEqkwfugF8GeNbjytFQaSjGKRrdNX2HuBGTU9A3x+gZwMjQR5odRb2jVvVVbApeFwfIWie99cVy3nROFipopshhYEZEq7LfbiYolChGLHwKsf8l4JWeP44seVxiLMHCpR73cgxwOdkEiH1oDwdmYScO+1H2TJxBs1PDJi+qHlgWnxt21KTXGb0ebB+RQksiG5FDvlj/lMHJtyda305sgyvsiE4nE3Sj3KuL+uBjXAcxXknOG9f5EwW94Rs5i5153XaFUitD0G2KwoglgqiTruhy9FBHUhm2bs6QphRz19GNTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 06:26:28 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 06:26:28 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv3] drm/i915/display/dp: On AUX xfer timeout restart
 freshly
Thread-Index: AQHZnbKRvf7N2CK9tkmECesY0G0euK+IjgqAgAq1gHA=
Date: Tue, 20 Jun 2023 06:26:28 +0000
Message-ID: <DM6PR11MB317735032FA75CC7796738BCBA5CA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230613044239.691706-1-arun.r.murthy@intel.com>
 <ZIhJte34Usxx19/J@ideak-desk>
In-Reply-To: <ZIhJte34Usxx19/J@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|IA0PR11MB8419:EE_
x-ms-office365-filtering-correlation-id: da9253a2-ad52-4e60-a1d5-08db7157479a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8yehu7boJEUQMxJeb8mvrrH2jA+PIOgs2vMj0WmMkTyJVDspv7E3r3MSzjAag4ZP+0JzKew/VSDtK/P1cnhtKmxrC0dwhLjefctnZUKk2ENl06zzRKse8yhIVmcLcjQsaRVmG04it+b4TWi4H+/IKul61OUm6PFV9YvvWjxqohENOoZhnZ4i1ixQb59K3QtrCd+1BzMs1PqVnhDkw/+7RAzqCezo11FhA9hsyqbrf+BN6Oc2d5btyV4ZtB+dVkq1vX1+HznUpEURlIMYxt9ws46B1GFq+YsVYtlnSzS0w5VeoY2U1eze427n3q6PONAvP1qbVjvy8vbGljdQMoxnrYlYQLiUH9GTyGdX6Z1fYl3KIl8uByN8cl/12pQ5M8Rms86cjq632LFSAhMP9luXGlSbMFwzMWx18lLspUJoR+FpQY3LwNQTM6eXBcw65Tx0plTzTYRcYP5DBDh/yi2IOUfyINoW49jY14MtnzcUfbk6EHlihnHuuQRFVcN9sUoCHQjpxGDHbmjbUPdZue9bXZDXIRS8ZadtOkJUrjXo+/H6KvSKzodG1ckN1q/0RquKYwWgLR84nQmipk9IYuyxQ7SUe09pH9V7M4cp8+LnssZzwcB9UMJsKepNj83Jq/Tr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199021)(107886003)(82960400001)(52536014)(86362001)(83380400001)(2906002)(38070700005)(122000001)(76116006)(5660300002)(4326008)(54906003)(6862004)(66556008)(66946007)(186003)(8676002)(8936002)(66446008)(66476007)(64756008)(6636002)(53546011)(478600001)(41300700001)(55016003)(9686003)(6506007)(38100700002)(26005)(71200400001)(7696005)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hD60BuQQZ+xXaUxonkbdQqtGEhL5bz7WoMQnB584udTSOCibFb17hlkxmApr?=
 =?us-ascii?Q?bUFdHyiauOTbsLn4QStm2YllZuXZg/8YyQqOy5z+iybnnHAd8r/rVR2c0TIu?=
 =?us-ascii?Q?UrhtztL3OfHBw3L7IhC2uU1q9XbatffIH0RbRPkNfccVUVNGsc8IeV+4x/OQ?=
 =?us-ascii?Q?qoo0RTlTqtAEeh3PAVbssFnbAJuskxE4cDCsyYASvLB2TvEZ9xQRiGLImmNA?=
 =?us-ascii?Q?i9H1aLOEqSQprxYyXVGYarPhroeyKjtOQOl7IRVIxaogvKDjhDQmxSoh/hL1?=
 =?us-ascii?Q?LkBxpEAEnjrQX6UoLPx8FyOTxjz3uw9G2edMJr6G/8k3HYuLgWV9QHrphxw5?=
 =?us-ascii?Q?QDd+6Kj5b+KX24r+V+g3Nxy9GF8vSOWlsgNcaXNeAQQBeA30oCJr8Hib1I0r?=
 =?us-ascii?Q?sHe81Ms0h9cFuIQqu5rd4F+HlFC0WcUl12mVZTV+BMAzihjU6Pg3oMH5HhAW?=
 =?us-ascii?Q?PA/NbIY2RMClPj99SjNWa3f0PHkQ6u5oizSdjdOCUfc2+ETyGcEyz08TR2Rr?=
 =?us-ascii?Q?1qBbXmoEEvbhbiRXOTYpMbWQyjhX5qWAQ1AZBUGHTS/OCT7d312oowCo/Ynn?=
 =?us-ascii?Q?+paLaaQA6WAl3u6eQLAGbbahWfilEK2GH97k7Z/iUJqHPU4z+Nk8i64BXuOs?=
 =?us-ascii?Q?FKIaePqx0knLxDqgJuufCKIeJqauYOVyosw9+orLvZ1mp8D9Zw/7Ss+UzAhF?=
 =?us-ascii?Q?I53+sfJetVTQZMZo5hFLNy5wGMdkYqdMbSl2TXz4Su6IWjz8o3YiaiTICX0v?=
 =?us-ascii?Q?LnwDVaTcMyzLwcPuTc3oGAaQy19NUwookzBWWr69e37vv0RKwiQ99Cma+FUH?=
 =?us-ascii?Q?18Ho1sqY2LooIStBLIroTp/6l8Mnck6NFtYK871z0O+L6MeayMxUNb6qh/7x?=
 =?us-ascii?Q?eMFn6n05ayjQ/yT6FNFA+tFOmzwMY/ngIVjMYXcJ9HF5fOPl+MjUxethW8W4?=
 =?us-ascii?Q?Ww1cJyYUeqiwVDy1XxzCCburdxE9qxLUTuezMIcLE+OsSRwS4XfBJbHZdIba?=
 =?us-ascii?Q?Vbd0zWyrOqueYwSP6TMsDVjubGXLfA1APKsdw8l5OKZ2mfOQ2aRU+LhG9dZG?=
 =?us-ascii?Q?2i5MDTR9uAdYWvY9PmCzMbzVU5XD9OmecnImokoXszW13PZRIJcwLAspzUVb?=
 =?us-ascii?Q?XslEgb8jz8I4/gw98WYBSxR70uV46uefrA7AGs+K4Nlkrx9RYz9WACBJzwbH?=
 =?us-ascii?Q?fmE3GLE0JkkGJ8TVdnLZQ2PUp9+xv+ZyV4Uox07V7hp1TZ5DWzLsuZCPymT2?=
 =?us-ascii?Q?dQyd+N2xQBsgLGnkNE5a9Wvb3dVusyIfIiRT2z8k9WK+xVzUgtKWcNXF0umn?=
 =?us-ascii?Q?1OclMoNSAvZiIiAjypj1mg6H3riVe38XGlsVGPV5wY2Lb+zTMMScT/BCYVhy?=
 =?us-ascii?Q?dPvVJEyCDzmLRXjjtJz9gvNoD0jFkrEXhiwAredvchy6/lQmjQeS9gQpbwa7?=
 =?us-ascii?Q?QWqc0KHouwFiRyJE7nMtb4j77cqu7RQd98VGY/sE+gLINoYLVA/KbJSKf4av?=
 =?us-ascii?Q?1dxp+mo8UTPyF0Lp70CBgPJB4/3d93k2EgoyuDekaMotZrcZa7IUYzB5bbDe?=
 =?us-ascii?Q?tWhE+RxzZvvwlVf1L46bLsQMWYg9zzmsyOE9HpQX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da9253a2-ad52-4e60-a1d5-08db7157479a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 06:26:28.0438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9EJHPZ9NrigFCe83Fyzaw4PY3yS/UFwSTWrd4tsBgb0SG0KoHoEAHBQv2POcVCGxBcTD6vTKoIrybXzE9Yi2Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, June 13, 2023 4:19 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCHv3] drm/i915/display/dp: On AUX xfer timeout restart
> freshly
>=20
> On Tue, Jun 13, 2023 at 10:12:39AM +0530, Arun R Murthy wrote:
> > On AUX transfer timeout, as per DP spec need to retry for 3 times and
> > has to be restarted freshly.
> >
> > v3: handle timeout and dont rely on register value on timeout (Imre)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 -
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c   | 72 +++++++++----------
> >  2 files changed, 34 insertions(+), 39 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 2d8297f8d088..0942b109b4ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1741,7 +1741,6 @@ struct intel_dp {
> >  	/* sink or branch descriptor */
> >  	struct drm_dp_desc desc;
> >  	struct drm_dp_aux aux;
> > -	u32 aux_busy_last_status;
> >  	u8 train_set[4];
> >
> >  	struct intel_pps pps;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 0c27db8ae4f1..244b4d7d716d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -36,25 +36,24 @@ static void intel_dp_aux_unpack(u32 src, u8 *dst,
> int dst_bytes)
> >  		dst[i] =3D src >> ((3 - i) * 8);
> >  }
> >
> > -static u32
> > -intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> > +static int
> > +intel_dp_aux_wait_done(struct intel_dp *intel_dp, u32 *status)
> >  {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> >  	const unsigned int timeout_ms =3D 10;
> > -	u32 status;
> >  	int ret;
> >
> >  	ret =3D __intel_de_wait_for_register(i915, ch_ctl,
> >  					   DP_AUX_CH_CTL_SEND_BUSY, 0,
> > -					   2, timeout_ms, &status);
> > +					   50, timeout_ms, status);
> >
> >  	if (ret =3D=3D -ETIMEDOUT)
> >  		drm_err(&i915->drm,
> >  			"%s: did not complete or timeout within %ums
> (status 0x%08x)\n",
> > -			intel_dp->aux.name, timeout_ms, status);
> > +			intel_dp->aux.name, timeout_ms, *status);
> >
> > -	return status;
> > +	return ret;
> >  }
> >
> >  static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int
> > index) @@ -186,10 +185,7 @@ static u32 skl_get_aux_send_ctl(struct
> intel_dp *intel_dp,
> >  	 */
> >  	ret =3D DP_AUX_CH_CTL_SEND_BUSY |
> >  		DP_AUX_CH_CTL_DONE |
> > -		DP_AUX_CH_CTL_INTERRUPT |
>=20
> The above one-liner change, also applied in g4x_get_aux_send_ctl() should
> be a separate patch.
>=20
> > -		DP_AUX_CH_CTL_TIME_OUT_ERROR |
> >  		DP_AUX_CH_CTL_TIME_OUT_MAX |
> > -		DP_AUX_CH_CTL_RECEIVE_ERROR |
> >  		DP_AUX_CH_CTL_MESSAGE_SIZE(send_bytes) |
> >
> 	DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len())
> |
> >
> 	DP_AUX_CH_CTL_SYNC_PULSE_SKL(intel_dp_aux_sync_len());
> > @@ -273,30 +269,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	 * it using the same AUX CH simultaneously
> >  	 */
> >
> > -	/* Try to wait for any previous AUX channel activity */
> > -	for (try =3D 0; try < 3; try++) {
> > -		status =3D intel_de_read_notrace(i915, ch_ctl);
> > -		if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > -			break;
> > -		msleep(1);
> > -	}
> > -	/* just trace the final value */
> > -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> > -
> > -	if (try =3D=3D 3) {
> > -		const u32 status =3D intel_de_read(i915, ch_ctl);
> > -
> > -		if (status !=3D intel_dp->aux_busy_last_status) {
> > -			drm_WARN(&i915->drm, 1,
> > -				 "%s: not started (status 0x%08x)\n",
> > -				 intel_dp->aux.name, status);
> > -			intel_dp->aux_busy_last_status =3D status;
> > -		}
> > -
> > -		ret =3D -EBUSY;
> > -		goto out;
> > -	}
> > -
> >  	/* Only 5 data registers! */
> >  	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
> >  		ret =3D -E2BIG;
> > @@ -304,14 +276,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	}
> >
> >  	while ((aux_clock_divider =3D intel_dp-
> >get_aux_clock_divider(intel_dp, clock++))) {
> > -		u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> > +		/* Must try at least 3 times according to DP spec */
> > +		for (try =3D 0; try < 5; try++) {
> > +			u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> >  							  send_bytes,
> >  							  aux_clock_divider);
> >
> > -		send_ctl |=3D aux_send_ctl_flags;
> > +			send_ctl |=3D aux_send_ctl_flags;
> > +
> > +			/* Try to wait for any previous AUX channel activity
> */
> > +			/* TODO: if typeC then 4.2ms else 800us. For DG2
> add 1.5ms for both cases */
> > +			ret =3D intel_dp_aux_wait_done(intel_dp, &status);
> > +			/* just trace the final value */
> > +			trace_i915_reg_rw(false, ch_ctl, status, sizeof(status),
> true);
> > +
> > +			/* On timeout dont read the status bits as its not
> updated */
> > +			if (ret =3D=3D -ETIMEDOUT) {
> > +				drm_WARN(&i915->drm, 1,
> > +					 "%s: not started, previous Tx still in
> process (status 0x%08x)\n",
> > +					 intel_dp->aux.name, status);
> > +				if (try > 3)
> > +					goto out;
> > +				else
> > +					continue;
> > +			}
> >
> > -		/* Must try at least 3 times according to DP spec */
> > -		for (try =3D 0; try < 5; try++) {
> >  			/* Load the send data into the aux channel data
> registers */
> >  			for (i =3D 0; i < send_bytes; i +=3D 4)
> >  				intel_de_write(i915, ch_data[i >> 2], @@ -
> 320,8 +309,15 @@
> > intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >
> >  			/* Send the command and wait for it to complete */
> >  			intel_de_write(i915, ch_ctl, send_ctl);
> > +			intel_de_rmw(i915, ch_ctl,
> DP_AUX_CH_CTL_INTERRUPT |
> > +				     DP_AUX_CH_CTL_TIME_OUT_ERROR |
> > +				     DP_AUX_CH_CTL_RECEIVE_ERROR, 0);
> >
> > -			status =3D intel_dp_aux_wait_done(intel_dp);
>=20
> The review comments were not addressed and these changes still don't
> make sense to me. What I meant is - instead of all the above changes -
> bailing out at this point if DP_AUX_CH_CTL_SEND_BUSY is still set in stat=
us.
>=20

I think my 2st patch version had considered this SEND_BUSY bit. In the begi=
nning of this loop there is a check for SEND_BUSY to ensure that the previo=
us aux transaction is complete. Then we write the data and here we check fo=
r error(timeout or receive) only. If SEND_BUSY is checked over here again t=
he code for aux transaction in progress check will be duplicated.

Will be floating v6 patch which takes care of this SEND_BUSY and acts upon =
properly.

Thanks and Regards,
Arun R Murthy
--------------------
