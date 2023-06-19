Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF185735BD1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 18:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B54F10E221;
	Mon, 19 Jun 2023 16:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6773F10E221
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 16:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687190434; x=1718726434;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RpMyHCsJuZX+Z621WVHqPRkeiqrnje1TGqTCxv8Jy70=;
 b=cqJqKOZ1rVZzwsVkCR0Rj8n0UvWDUbw3haX1R0RNS6J0H4vZYdHtlrPN
 4hBZxuqMKTydLWudVzL9CPtg2fvGN69tOyoCItFRqGHT+TDftubUL4Hdv
 5okhzHoB9UU35lZGkJqmjZEH8vD+ILpxpT3tlkJ0HtUIRaxkIuvU82aNb
 4GwURb2rOOgiMatlGrWhKRLEuvEyRKTp3qUU2NZtdWjvjmm/v/3r+jHcm
 jPIcxobZMoKWECaRK5dNMp1cIt8bj7lDvp6FMTZ0hvZmQEHa9u43EU8Z5
 flL/r21r9y3CPWZ12zqwywCuUUBoETrXJAeHnoS6XWRF7vT4suyMkRRs0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="363089639"
X-IronPort-AV: E=Sophos;i="6.00,255,1681196400"; d="scan'208";a="363089639"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 09:00:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="713728385"
X-IronPort-AV: E=Sophos;i="6.00,255,1681196400"; d="scan'208";a="713728385"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 19 Jun 2023 09:00:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 09:00:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 09:00:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 09:00:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 09:00:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+lmI9Z18UxLpaVlwflp4UWr3J5VEpUFJ0TDxjTLDhg43BDnb7A1UBusTD1278YKIO9aPmV5mOC//T9P9Vk53x2umQfLMzDkZsbLbk73VWAGfr+xJPZ+v3IQ3L7s6xYO/Lu3Rdwx1YsliVvaIy3N2suFtT2z3OWKb6xKPqsa+Ga+Fo1+r1jurMgennmm17Cy6j2r7ZvJKAvxVnam2Yy49Dl+/FMZbFjY/dv07Qdh3uKmxjoprmC51nh8C2OMYsrsOrJZmqtgQrS7TTySZ0fLUpZ5cHmBXWiUDNmi2PQjMCuR7HZNUeU8qP8hQduHNLnogfKRHvU+rUNUM0jUnhqC6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pY4Sa6ObcNqkW6f4+Bf4WS3HFklLDd8DUEcZkMOhccM=;
 b=jOTzNoab5T0zpLU589HlvxRfcn7pbNcBWpeGVQylQ7zzRduk1UFFRIUaU+y5s2z6vYSTqlpS63Zthv6gji11Q1qDN7IqpTFMG0XbbRNz9gvl+ujQVh180z9ksE8W3zjX7LpZqs9S5HcmeFAe5YZNqJW//JMDEv9MljVrk30aDkKM5w3panCNaoksc7czMZwRhIFF7TWqXeeWAOZR/WupJCSurEEuHzq1JmxdepeZvSlGzUKsVrhHNshWaU0tdD9gbaS0qXxLUdtGG9WhQkLjziBzCRS51KCWSCbEPdbMrbT2jpQmHMWewjcFPVysyPTdVl34Z/dOIDIewvLiRq0ktg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.37; Mon, 19 Jun 2023 16:00:27 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 16:00:27 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv4] drm/i915/display/dp: On AUX xfer timeout restart
 freshly
Thread-Index: AQHZoojqeFg9HbTlR0CwZWepitLoya+SCA6AgABAOmA=
Date: Mon, 19 Jun 2023 16:00:26 +0000
Message-ID: <DM6PR11MB31773F2EB69C5EC69083CE73BA5FA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230619082715.922094-1-arun.r.murthy@intel.com>
 <87legfk652.fsf@intel.com>
In-Reply-To: <87legfk652.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|MW3PR11MB4699:EE_
x-ms-office365-filtering-correlation-id: 1ac600bd-8070-45ea-dc25-08db70de4c6a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /OQI69akSDNkMGyDwJ4zxqlOpsvY4ERjVMurY1pBFFT8r6FnNAo94idAWIqLTb7gNl4aIFHixIyyi/Uyy360CmE8ixoEJS2OLsq7zvCoY1mADIVU5KE1oobvqsc7j01l3+uzUngy6i+Sr8TT2Jr7FaIo5V4d1w2YTtA6ZyL2y4Rxm+63FmW8c3OldzINTKTHC9A7dEFUCgdUUdbW1cKkjC/uWQCrqSe2T3orSbgB0D7ZxoxQHIf6IRmeHT3ltCxdm91PxTCPFkoTWm8s7JO8okN96O0J79+wpVJE/qFG6p88rOxbF/mmMVDDB+fZzndfSG86tKc2drzHFzRHmKqDPX5TkCTD4bYJlfkB56hIbTKot0WQDOuYSqKyNGJAq+5IjkteaDyhTuvzYQQRVqq6cKZ+VV+dPLFnjjfcYtP/bwlS+aIedO/Q5a9e2bJsfnLeuUMPPaGEiUyKjflfofbjKNz2So6DyMhecH3bahH4RmapBqEN37mydycv4lAbKvoPgH2V+qzFMnxRfbO/cM+ylnW4cbwSxTe6gFBj0xa9b3IKxHpYkP99Eh94tcz+2TS2S3FJptg9PK4L6VdKngvsuhVmDFeMVMGMbEjbwDzFfmDOdW+WdnvzSdaXOH4m7ddC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199021)(71200400001)(54906003)(55016003)(82960400001)(478600001)(110136005)(38100700002)(7696005)(8676002)(8936002)(66476007)(86362001)(52536014)(33656002)(2906002)(83380400001)(66946007)(66556008)(76116006)(316002)(4326008)(64756008)(122000001)(26005)(186003)(66446008)(53546011)(107886003)(55236004)(6506007)(9686003)(41300700001)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8u9nPxTBtytUtcVf2wrwJ7Pj5LP12WGJTdkFqbVIVkQ1XZcI4mAfYWl6DwNe?=
 =?us-ascii?Q?gRl+znVK7jqFt8bL8AgD7TgWF8Qxr3NJ/xcsP+t6htMN2BWYq2nURktN2e4I?=
 =?us-ascii?Q?1Uy+jQlFenzjQobTS2N5S2Xe/0EJxqEZgdxR6fYZyqxURs9ilogUD8HKEKfv?=
 =?us-ascii?Q?bZp9Ovm2dKJBnsJ2gIrBE6k+X4t0C+yNlfgW5A4E3azoQ6/rpfodjiG4/F8J?=
 =?us-ascii?Q?M0C40pF/Clxm3QXN29dFvvmTUv2hheC7LaiS1i37j7wc3+gnMUffCZRiP9Vw?=
 =?us-ascii?Q?g2ru+AkOGdspR1TMiQ0+Z8BKVpiaIn6o4kIhoy9FkJBLOr2/t3DBvdQcOvXN?=
 =?us-ascii?Q?zBEN40PVLnzvDdQiAX6Ib7Mh0+C6swPrXayyoMmOLc27lGK+S/bRkEk87O3n?=
 =?us-ascii?Q?ohDZhOTGQ5iZ+0nkH1Ix8NhceD8vuntmJe3P60EtyjMz1WvdX1fZMik5tOeF?=
 =?us-ascii?Q?AfOI4Tl5qmS53KO2LqASVEPsCsFdv//3mian2fEm/HHvO0zFGREXJPBX3MSl?=
 =?us-ascii?Q?H/G/BpvinzuD24LpGxDDmTeeU+3YgJvhvZuroEvd2wOW9Poe/DdMcPI8f83v?=
 =?us-ascii?Q?arx7ysW1rTEvWo34SgNp5M4lyIph+ZUjoZqk7qAkJKzMGbMr15M3+MppD11v?=
 =?us-ascii?Q?xifB1VBn91V1wPPrmT3dR384lT40rBrXmiRTqfFDYFwnb9wy2cwMtUXhvcBN?=
 =?us-ascii?Q?D8tBhGv3f8mlwTALO30zMsQBv9gGSdozu4YaRv6P7Dun/w40ANz5bapc324S?=
 =?us-ascii?Q?BxH+6XpmJl6OlAco6trdWkzgzoTp53UJiamPhX1XLbP+aWhZ0jrT2Cy+AOen?=
 =?us-ascii?Q?SaUYMfVwlz6tHv21F98zGIfPfoy3URmskXghom99QGUQbwrIJ6iEMy+0s1go?=
 =?us-ascii?Q?dgtmQ1Nck3YUZSFw5/CyVY70iIACmM2hjOyswrsTPf1ejWkAR8kRNybjSGth?=
 =?us-ascii?Q?HL2fMRKOdxdVSKi0ZUa2UpS9C2M/XPEjYf5fe+XBrDX6cg7qu/V1K7JFFIFb?=
 =?us-ascii?Q?yEjBKh8Z4Fkvxp4yM193TLU0KwPsxa/VhH/RKMJwY77TRUvcRw4W3ZimrSct?=
 =?us-ascii?Q?15Jpp8SMVZ5zbDoD4/Mfos6dyelRBxrlfwTJjiItR+lq/ViuUVP7M9yidD6T?=
 =?us-ascii?Q?0uj145xNOBuvwMnT8MhCcYd137hWy13QxLZ8l9Uk2dqWqd06tPDq7y8iR/Qp?=
 =?us-ascii?Q?iIJBs6AAfFIX7sUK7L1dgbtpMTqQzs2wzVvZH/USrwbjlJGtw+hhWyO1W1UM?=
 =?us-ascii?Q?8DE7TQBOGH3bdqNIJHKRw8JSSyEx28mwzGiMZEl+OwJ78Ntfq+xyN9qVH5lp?=
 =?us-ascii?Q?riqaXkEt/+Jb/W8nB0ueHh2IXvD8gdezrBaLMIIAXTsU16+SzR2mVr3o2NNA?=
 =?us-ascii?Q?XhuNZNKU2yA8DvdY66Wq8xeFH4JJPQZ//GgtDBya5j/rsnsuVxe7Cb/ksLMs?=
 =?us-ascii?Q?yxVtGDD9yn1D3f9NEmFHOeMP7amP6o5cOwizaqXxZqsxyAXtPj37MWctx1nL?=
 =?us-ascii?Q?AcrtKHfXc1txheNnRydD9M/4aphU2c14nLgFr82u86JyPI3OeNVTdhXVFoj1?=
 =?us-ascii?Q?uHKfRwEAuXMLG3M/+8vFro+2zPPR1/B71i46zRJK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ac600bd-8070-45ea-dc25-08db70de4c6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 16:00:26.9819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: goPggk8x1MGW58TljqK/A/Y2Vdven+j8EjgD7AWzuDAwu/YRlp0Q13B1M1N5GJWq5BgSzTfOGRhWFe2zIr2HdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv4] drm/i915/display/dp: On AUX xfer timeout
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, June 19, 2023 5:37 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv4] drm/i915/display/dp: On AUX xfer timeout restart
> freshly
>=20
> On Mon, 19 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > At the beginning of the aux transfer a check for aux control busy bit
> > is done. Then as per the spec on aux transfer timeout, need to retry
> > freshly for 3 times with a delay which is taken care by the control
> > register.
> > On each of these 3 trials a check for busy has to be done so as to
> > start freshly.
> >
> > v2: updated the commit message
> > v4: check for SEND_BUSY after write (Imre)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 58
> > +++++++++------------
> >  1 file changed, 26 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 21b50a5c8a85..abe8047fac39 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -226,6 +226,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	int i, ret, recv_bytes;
> >  	int try, clock =3D 0;
> >  	u32 status;
> > +	u32 send_ctl;
> >  	bool vdd;
> >
> >  	ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> > @@ -273,45 +274,36 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
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
> >  		goto out;
> >  	}
> > +	send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> > +					      send_bytes,
> > +					      aux_clock_divider);
> > +	send_ctl |=3D aux_send_ctl_flags;
> >
> >  	while ((aux_clock_divider =3D intel_dp-
> >get_aux_clock_divider(intel_dp, clock++))) {
> > -		u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> > -							  send_bytes,
> > -							  aux_clock_divider);
> > -
> > -		send_ctl |=3D aux_send_ctl_flags;
>=20
> You can't move the send_ctl assignment outside the loop, because the loop
> changes aux_clock_divider which affects send_ctl.
>=20
> Please take your time with the next version, and don't try to rush it, an=
d we'll
> get this done quicker.

Sure.

>=20
> > -
> > -		/* Must try at least 3 times according to DP spec */
> > +		/* Re-visit : Must try at least 3 times according to DP spec */
>=20
> How is this change helpful?

There was a comment on the earlier patch for the retry count. Here we are r=
etrying for 5 times but the spec says retry for 3 times. Need to revisit th=
is to see if there is any WA/recommendation in Bspec and to update the same=
 with link or revert it to 3 times.

>=20
> >  		for (try =3D 0; try < 5; try++) {
> > +			/* Try to wait for any previous AUX channel activity
> */
> > +			status =3D intel_dp_aux_wait_done(intel_dp);
> > +			/* just trace the final value */
> > +			trace_i915_reg_rw(false, ch_ctl, status, sizeof(status),
> true);
> > +
> > +			if (status & DP_AUX_CH_CTL_SEND_BUSY) {
> > +				drm_WARN(&i915->drm, 1,
> > +					 "%s: not started, previous Tx still in
> process (status 0x%08x)\n",
> > +					 intel_dp->aux.name, status);
> > +				intel_dp->aux_busy_last_status =3D status;
> > +				if (try > 3) {
> > +					ret =3D -EBUSY;
> > +					goto out;
> > +				} else
> > +					continue;
>=20
> If one branch needs braces, all of them do.
>=20
Ok.

Thanks and Regards,
Arun R Murthy
--------------------
> > +			}
> > +
> >  			/* Load the send data into the aux channel data
> registers */
> >  			for (i =3D 0; i < send_bytes; i +=3D 4)
> >  				intel_de_write(i915, ch_data[i >> 2], @@ -
> 321,6 +313,7 @@
> > intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  			/* Send the command and wait for it to complete */
> >  			intel_de_write(i915, ch_ctl, send_ctl);
> >
> > +			/* TODO: if typeC then 4.2ms else 800us. For DG2
> add 1.5ms for
> > +both cases */
> >  			status =3D intel_dp_aux_wait_done(intel_dp);
> >
> >  			/* Clear done status and any errors */ @@ -335,7
> +328,8 @@
> > intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  			 *   Timeout errors from the HW already meet this
> >  			 *   requirement so skip to next iteration
> >  			 */
> > -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> > +			if (status & (DP_AUX_CH_CTL_TIME_OUT_ERROR |
> > +
> 	DP_AUX_CH_CTL_SEND_BUSY))
>=20
> The indentation is off.
>=20
> >  				continue;
> >
> >  			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
