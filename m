Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099F26916D8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 03:51:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C6510EC3F;
	Fri, 10 Feb 2023 02:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C331910EC3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 02:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675997458; x=1707533458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fvnu8Fl8AvTARJAAREh8FubvbDdnD464iBEVB8Uw4EM=;
 b=ioR2bBGtbZUuKd8/IKVMig34z+iG/ujuOEKInsY6+vGXZczKKkDVbwEc
 6/oO4dR8F51Jp7PusnCj/HFvNTPBaa+5SizbRTRcle7CVz0vNeuAb7YdK
 IUiUky7JL6VcH1Ke8GOZHFepZpCiFYQiy5QVheq32CBV9isRcdrBgaMA0
 RQtyDWqR7NfP0Qmq4QxnQyGMdgXAvCVr2rQbXG9WuSczc9glRwJen6uFr
 4tIy17VdA3tqo8uzTMKM1Uw8DFRYrtgayecTQ6HKDYTOhpooqC4ksaq4D
 ALteReW6WmWQU8U1xROyrNCeUJWH7C1QNEAhFc5qDIcG0i5GkRzehBXe8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="328011657"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="328011657"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 18:50:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645484461"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="645484461"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 09 Feb 2023 18:50:49 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 9 Feb 2023 18:50:48 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 9 Feb 2023 18:50:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 9 Feb 2023 18:50:48 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 9 Feb 2023 18:50:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iou0ArKaZ5jhr1MIjIfuzWdr5ogTPI6DUE08RD4bkig7E6wi9ERS0sEMHiVE9hOqwcGmok5nEM3BXPjxpB/xRFndFPYJQGd786yfKoT77OzCimjTv28XKLFUAKHaGCWfRJsGj/rCEnx8N37TwHTAlXoq3pYlyK6mp4BTagJDbn6gbT1Pp2Nv79hrA+S88L9gX8RPYGJRa3Spoxx1dWP9avUeaWbgjGifJlEMeXiZ6BAN8bS7ooEs8mWgeFBD0fC5728xl1gQx5mt0qZRSS2AYBRlTir2gX6YfheJj7u2+ZVz7915bZVQZAoxr3UtQiZu1xd+E5Sl7bd8Q/Gq3nDQIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=04UOQJpc9Kl4kSJHPQJHrmR+gxZU1I5owlgADz0BfR8=;
 b=ZKFde5LQIJoQkgTaQ38uBFi7jGaKWdJ2uU/7OwQTFKppFgwAzxWgii7f7hZik/lYMDpfO/HViqHuVMlJxQ7PrdiAms3WsrbhVo0TuOyCfOTlJaGo03bcyEHv1fsLy/Voi0h5C10eip4aY1HiCDHamvJShDmmA2QTGLHUy8BcLiljgPdEU10UM+QzUBC2FsX8Biqw+tXY1NZeFA3LWuBF15s/pjEnpcqHyNJ/F27zLB8qQL6majmjYkRtPVd/OS375cuVwn8D7+FiXNbKbvBbz9UXn6P0Z5uSKM4t+85rDILsBHbQQzQ+Tg/zceD/8/nhf32wgqoutGN7w74AjzGnyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by DS7PR11MB7908.namprd11.prod.outlook.com (2603:10b6:8:ea::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.19; Fri, 10 Feb 2023 02:50:46 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6086.017; Fri, 10 Feb 2023
 02:50:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dp: Increase slice_height for DP
Thread-Index: AQHZNzMn+6sgrj5nDk6Ajr9e5cEngK7HhnlA
Date: Fri, 10 Feb 2023 02:50:45 +0000
Message-ID: <MWHPR11MB1741E0D65902CAD29B08D3F3E3DE9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230202114613.3177235-2-suraj.kandpal@intel.com>
 <20230202182012.3197674-1-suraj.kandpal@intel.com>
In-Reply-To: <20230202182012.3197674-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|DS7PR11MB7908:EE_
x-ms-office365-filtering-correlation-id: 89e168e2-e725-4a12-334d-08db0b119b64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EWtnyFBX8LTEJyxGLZm2oqtak7e9A1N9VpxcIiIq9bjNpeyd5+ZSqgYhVzfBogBKDBm4bpMMddt6HaVti9//ywCnSBQZpFun67edrqpxWkc/LcGww6ZT+zQRmPs/BylHIJRoNDLzgs4G1mLO33kn7UAgcsPco3B3e/VDZ5bRShZjzpd6DWc0LbxykUg5NWnlA7YAFSSC9eBocZIyAtM5fH5TyzzerBxjcSHkzxyb3UZPCCj9OFdhKg3lxpLt6TAG56kl9O2MBxdGE0JE+6YbisU7iV85Gt+X9Lk7u+6EiG9ImTAY339PXTR2JBnEveGvXCuYsvy5QuCi6HQYgfZS76dPWmSNVcSa+T5Pbs9WonpRZbzPY7s5ZF2tcWvj9CJEQq2qJsnzi8JgtzRX64wqQFyaR7sT4rkpo4XTZ3EG/ryAegGTlvdMGju9z8ERAyZzXsThrhxBmy23WwuSysN+I/z/IR4szxi9RtdlNXEpCV2O/YkuQ20EHi/rxYCgo82iU2OuUjRPz4CbfLzNwVFTjpk5Hz5vWMNt/JcLm2wnQ+YYUuU+gM97hiNUooe1o3mwCN1Ltw2MvqVGfewvLpCNTE+Tv/Z1Wtpv0+b8pYdpIN4NYq8TPQs3LvDVFi4bGsqMKL4hJoNS0uRxTngM4Bny+P7GLq0K+W9vbwiPSlaaLw07QrbPRE/Yl/bWY9to/o2lZTFbNj3aLiTUWCGUXliyyQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(396003)(366004)(346002)(376002)(451199018)(5660300002)(26005)(38100700002)(122000001)(186003)(8936002)(82960400001)(52536014)(53546011)(6506007)(2906002)(9686003)(41300700001)(38070700005)(64756008)(6916009)(4326008)(66446008)(8676002)(66556008)(66476007)(76116006)(66946007)(86362001)(83380400001)(316002)(55016003)(54906003)(478600001)(33656002)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VcDqLYj7SRVI0REqOUs0XO2fAS95MhIPPNACuh9+UX7o0ZpRVBsenYvjR0JR?=
 =?us-ascii?Q?KhOJSngkdyepfUZC+yOLagxeEmS5J6g1dZuIbVXrFAE+4p/tRo4uJ7nam1py?=
 =?us-ascii?Q?wCWQWZlw+prMIDrWaYPTjWov4QPowBW7rf5dXdlZfYNRdCk7bKWyL76Tn0ra?=
 =?us-ascii?Q?LEkXG85H5MLFTwlgrZzzvlmnnKVj61GmMEm84iQqHVbYPVa0kgSnFqNuoluO?=
 =?us-ascii?Q?HDMhuG7vUIjmHRC9VQ/Tg/TLV4DzrG5pbTU49cSJdyh+UxuWofLc+Pv3hLx5?=
 =?us-ascii?Q?59HVxVuAdPGTPRR3CYOVVrMyUH5hzym1NnXcy25VNiAe74t9sOBAkQnk6m8c?=
 =?us-ascii?Q?T5Y7EpaCMFSpA5JHuIaEK/ZEOiDVLZGwd42YpiMrOL5SFXLBhxGvypO60kMV?=
 =?us-ascii?Q?RWfpnVv8EHjrbld+pvwc2U8kK4WrOcFYCfbqdPXTYB7sDwMDg/N7hVfUx2Ny?=
 =?us-ascii?Q?335YVKUtDejm5gEBbk3Z9BuZgCs44bCS6yMllnu6FHi+Cmfveyb0GADw3Mak?=
 =?us-ascii?Q?A5MqKTaEG6QLr8KZbiJpSGRzxJ4lQ4MdjxuUim+DXY7+9Yn6rQ1CFUO4qKhK?=
 =?us-ascii?Q?jk8RyOhl8r88jO8xt8Rlpd2i9p7yi6WHaG2EbDLkTHlCw8vla/GNNTHytrpE?=
 =?us-ascii?Q?2vGViGsbauVE/hnymVrmKjWgCQs+4G8UNeLI0Hoj62BjFePJWU/OzWGYM3Ur?=
 =?us-ascii?Q?ZpFHQlrvBTZfAxM2TN5pvW++idC/tVr3sfIBZOUiwuUb5NqPFbpNqOHoJ0oM?=
 =?us-ascii?Q?CN3t1O2692EOPRIAss79gJ3KUk+c4CrM1wGSI4lrE6z4c+i2at58ElkDDLdb?=
 =?us-ascii?Q?8rliKcWmwtXzOU11Urvt+XVqCiwpvnmLCZpeqApL95QA91slCcQHv/JMt/u3?=
 =?us-ascii?Q?hyhzQWTbs0FIfJ9793nvRAQiyW4d4HixGwtzS3ZaXZb0rOze/kA4YF5DRRiE?=
 =?us-ascii?Q?Rhw8PIKNNOkW9poJlJlwASieaqal8xd8GkjSPnWkAWmYlSDXclmAW815bdXp?=
 =?us-ascii?Q?G9TiNfEGrCx506ROFbvqljKSue8LITx6foW/QogvyFgVSvdRy6xda8D4RQO4?=
 =?us-ascii?Q?lcU3rbi0DBgUFCY2kYJ5Jr2iFpKeKDGG4fuhy2MNHC50uTeJUiJST40UZEre?=
 =?us-ascii?Q?cg6c5b/U0nDI1wBvE5N5Wi5Oc7ig0AfvoiBNf20l3+pAd3LXLRVjKT+9SU6B?=
 =?us-ascii?Q?g4yd6w0pkWZVxT/8oZmG6+pAvVldLEo9RjR5aw4ef8qwVpU9dVpxEpa+6Hva?=
 =?us-ascii?Q?QFmsy073bSUTUsTkuwhwqoYsOf3Q4w7Bf2E5gw9fxw1HiMZXZet/h6x/KK/t?=
 =?us-ascii?Q?3q1zMEv5bA7w6qNdkgCSVpIka7/Lall+XKuw1jiHOwX+/cRAbLFmUQLafvoY?=
 =?us-ascii?Q?xuc6j5qqxzrafYaTgNpr7YYSNDHaC4uFcBZ/1IaSebYU2QzPrOoRFTRCpv6Z?=
 =?us-ascii?Q?/Y7XpEHYrTtug5J5jcQoWxU0uPWYRGUGf2KauU6jfczX2NwfPwtX0rzVW08h?=
 =?us-ascii?Q?oszk4ciNL4KnCRAMXprW7od04m0VwM/L5T1KsGeLAyanUIlbQMa2GL7Xq7X8?=
 =?us-ascii?Q?yhMKbg7fXl62yEsdbFfmo9px7DEsSbwOeSFmSSOk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e168e2-e725-4a12-334d-08db0b119b64
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2023 02:50:45.2129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GNiRq3VJK4pW5a4Deb1lIfbuUpYbYGw2OeTJuPMsjaI+TJbXu5432/fyh7KPMAcVetyekH7oua074TE6S710Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dp: Increase slice_height for DP
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

Gentle Reminder !

> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, February 2, 2023 11:50 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Jani Nikula <jani.nikula@linux.intel.com>;
> Sharma, Swati2 <swati2.sharma@intel.com>
> Subject: [PATCH v2] drm/i915/dp: Increase slice_height for DP
>=20
> According VDSC spec 1.2a Section 3.8 Options for Slice implies that 108 l=
ines
> is an optimal slice height, but any size can be used as long as vertical =
active
> integer multiple and maximum vertical slice count requirements are met.
>=20
> Bspec: 49259
>=20
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 62cbab7402e9..cb4fbcd935db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1415,6 +1415,30 @@ static int intel_dp_sink_dsc_version_minor(struct
> intel_dp *intel_dp)
>  		DP_DSC_MINOR_SHIFT;
>  }
>=20
> +static int intel_dp_get_slice_height(int vactive) {
> +	int slice_height;
> +
> +	/*
> +	 * VDSC1.2a spec in Section 3.8 Options for Slices implies that
> +	 * 108 lines is an optimal slice height,
> +	 * but any size can be used as long as vertical active integer
> +	 * multiple and maximum vertical slice count requirements are met.
> +	 */
> +	for (slice_height =3D 108; slice_height <=3D vactive; slice_height +=3D=
 2)
> +		if (vactive % slice_height =3D=3D 0)
> +			return slice_height;
> +
> +	if (vactive % 8 =3D=3D 0)
> +		slice_height =3D 8;
> +	else if (vactive % 4 =3D=3D 0)
> +		slice_height =3D 4;
> +	else
> +		slice_height =3D 2;
> +
> +	return slice_height;
> +}
> +
>  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *crtc_state)  { @@
> -1433,17 +1457,7 @@ static int intel_dp_dsc_compute_params(struct
> intel_encoder *encoder,
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
>  	vdsc_cfg->pic_height =3D crtc_state->hw.adjusted_mode.crtc_vdisplay;
>=20
> -	/*
> -	 * Slice Height of 8 works for all currently available panels. So start
> -	 * with that if pic_height is an integral multiple of 8. Eventually add
> -	 * logic to try multiple slice heights.
> -	 */
> -	if (vdsc_cfg->pic_height % 8 =3D=3D 0)
> -		vdsc_cfg->slice_height =3D 8;
> -	else if (vdsc_cfg->pic_height % 4 =3D=3D 0)
> -		vdsc_cfg->slice_height =3D 4;
> -	else
> -		vdsc_cfg->slice_height =3D 2;
> +	vdsc_cfg->slice_height =3D
> +intel_dp_get_slice_height(vdsc_cfg->pic_height);
>=20
>  	ret =3D intel_dsc_compute_params(crtc_state);
>  	if (ret)
> --
> 2.25.1

