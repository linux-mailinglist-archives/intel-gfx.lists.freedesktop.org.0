Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F2178A570
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D5F10E1A8;
	Mon, 28 Aug 2023 05:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A532410E1A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693202344; x=1724738344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r7ydBYxWosDSScU+ZcJpMuawqVwfeQY6KujO6Z5qEbw=;
 b=ST9GSqM7cuBHGiZHs6d+e4TiTn+F4MBFibeuUQHqcQFfAYVrY09ZTUid
 G+rRLLxJYLmiOFy93LnJmCB0bZdZI+dH2lu63cPeBJ07Qpb+N4em1dca7
 3bKiXJ5XiUsz6kjaWqHClo56WXXZu6h0arNu/jhg00S4fWGXyKhyQp2Ns
 JLRD2OEIIvmI6mHzUIkpuTZ7kGbp5/yJTskHKt8Fvw3WADif6TpJo4jQ6
 WbHakLeeGAstGW2fdaTBw+uituJxpZ83hantLooOgmVVawuJ88lw9TRGZ
 RQnFsEhJE1K4XNrLBQ75J//PVnq+K6KZAjiOLr0IiTP265QlQAz6Jlvdu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="355348208"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="355348208"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="741250672"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="741250672"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 27 Aug 2023 22:59:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 27 Aug 2023 22:59:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 27 Aug 2023 22:59:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 27 Aug 2023 22:58:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpFWx4zGoS6MZzLa+1QqGqQgRsOI9g4p/N4OuLzs5ZyXiRuTNdYgVdcZahI9yAZ49weBUsOOVKTJaEtFgQ4U8buOcV9tIH+UVhHNsMxYYdzTOOVeazhadP2c363+kp526binjyLyoS8EMWJNUCQiPKzztQ6RcP82XAlLX93fdcX+28vGDRM0o5i7pzRsvwHC3WN78NRBzkoBF2hcJjtV7OlBYS5EW0UYNRTWksvp9GOUY6AXGs8nS5IThcdR4u6jcleW5qu87SRtMCZlapFE+XJwkKatafiwbu/z6Meo1aEWMpnnWR1HkfzbDw7/qZMOOSpOSUyMMgp37cj7QC/x5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HTmCt8V2Ws6+IDHE/BoqpFhrolPhpoo3H3SEPs0dQd8=;
 b=fTk4AWqf0M/FsZ/+1RVmk2aUZqnqThHV7segIcnQYRhBpxeXyDhPEyYISjbMJF/b9sOtNBZ6oXCu00wJEodloMWUodT1V83pOv1bcgYbgpJcOaH/wGSRhgYbOxd0K/YmiAGpDX8DXZVDG5owBAGXgWcpb+fdWtOg6YpwIbZF9NN0s222zoYUigReSbhwvv7dmFHWYytH4z5SLCjJ+WD+PpSkeQkgysPfc4YPxMe5WGGsIN4/GcLqQAjGVq9BKtGQa8Nw6AuXdcyR+w3ogqTbgDKSNOvdZ17Z+6J7V5QRs0v4Ei49TeHEZv6QnrEMS8cvgnHBdeJdTK05btMnvuLk7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH0PR11MB5313.namprd11.prod.outlook.com (2603:10b6:610:bc::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.34; Mon, 28 Aug 2023 05:58:42 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 05:58:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 4/4] drm/i915/hdcp: Adjust timeout for read in DPMST
 Scenario
Thread-Index: AQHZ1Yc92MtXa9YPkEy2s1dWUbz4pa//PclA
Date: Mon, 28 Aug 2023 05:58:42 +0000
Message-ID: <DM6PR11MB31773FFAF739EF0CBF298142BAE0A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230823055821.460045-1-suraj.kandpal@intel.com>
 <20230823055821.460045-5-suraj.kandpal@intel.com>
In-Reply-To: <20230823055821.460045-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CH0PR11MB5313:EE_
x-ms-office365-filtering-correlation-id: 29b1bd31-a3d3-421a-b248-08dba78bd56f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3lNG174NjiKmaKWRtrT7yXePBsSU0EM1ooYMVXnGn8BbZ8oVxAd1DUFNN+i0P++uKxtZc8pUS2pTmCls+ZV/Xkr4PYS68xSvHyoKPwM01FMjgXKBApNCLczO5OQGAklruYhq1HrvZjjhjEN3VuCDUA5Nj+hEiRUCtPc7IcYycWuwy5Mb7y1tUQgmxtjsqYowjKtfnI8lappjMlXQZ1sWe0KIH9Nn5XDJXGmEUGp4yeAh2Z37gQVor1MNW79wo/lz/2LON5Zjp0jKro1oe1HFnCy3rkOX2ChoTPMfm1fd50rJbK/8usxLw9bZPhxJyAd6ZkzGkAbq5bGa3OLWKrRFgXJW7z+b0e7l3Q0xdGRe9Mvmb9IhlkGaiBnWw32Up/1rMXP22aOsXByWvWSrnhHmuE27YSR+hZcOAy1ufB9pwEyQed26FaBPnET8sNxyHDTgtiE2Gnk2MFo70UCGMb16ga6eOd/yZZ6xpFu3gpMJcP4fKouOhC191GXANeEL1JGzS5FNBjAhyYaN6Arf3NoMmWhufxhZIsv/GbCM2wpX12Zy5uW8fhtgZYdUG1wedr9+3B2UN38IdFiF+IK+VwxC5tQ7BrIXBKzbBXTa3rfUIAk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(366004)(396003)(376002)(186009)(1800799009)(451199024)(71200400001)(55016003)(53546011)(55236004)(7696005)(6506007)(107886003)(9686003)(38100700002)(52536014)(86362001)(5660300002)(33656002)(2906002)(82960400001)(54906003)(8936002)(8676002)(64756008)(66476007)(76116006)(66556008)(4326008)(110136005)(66446008)(41300700001)(66946007)(316002)(38070700005)(122000001)(478600001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yQFi4yrcqEvvGaytwcd57sJSLo/x0blzY712uVcZaOD0Lgej8Fi2U9MA+M4B?=
 =?us-ascii?Q?fREi8pqjboYIswcM7R/IN3K/k4Uv0D51dLx7ASNIhcC1QoYHU0tlCoSxRlm3?=
 =?us-ascii?Q?GTHaVx39YLTwk72TEsrAv4LCLlJfp0dloD2LNgc1JFeoV/wKcV6NipTpnC0y?=
 =?us-ascii?Q?KsIgs7II+pjA/nvi6SplNBVjNRTBWbw2QIdNzI7rgO117LRyqOxVz/j7ERsn?=
 =?us-ascii?Q?LHlJyMWVQtOZ7HeNDtPf6b3/C4mhehUqoHKj3/VfiJpTQ41gK4Ss1ZM4acDS?=
 =?us-ascii?Q?z5GxKrJ5x+GFMi50mTIc/WrotBDCDTrfC+FBhLaeJEQ0zwKy8wSnTuydCfPD?=
 =?us-ascii?Q?8zcubS3fvTAfeXqdQB5KkWaZUyaz1y+jzSy1KYG8tiISRbyn1ytRuFX4fYtV?=
 =?us-ascii?Q?fLbHeqSRI7XIp4WWBh7eKCgciBIaLzVe2YM00BqKNsqblmbjcL/PzxjHDMLW?=
 =?us-ascii?Q?S3kN9cY5/xUOJjJtxexdwle+PVniq+NFEuHxlZYqWiee9+Gs9hbHOP22B3kX?=
 =?us-ascii?Q?+vYY5x9GA4a1ihwiG3/a5TIgVqgjefGyE4UUDBtl5gBfcAbU5fKOMWSNqHJf?=
 =?us-ascii?Q?EmnELIDltydLJ15RTvLaoa8cG+a8wg0OsgBOJ/fuZL/WzFMqv++lF2hZ5I0Z?=
 =?us-ascii?Q?+MyHU4ahKkMODtqv43eGIPi3NG6KEL8WaHQ9Oz3Wa1T6nqo6V7KK6rf1OOLa?=
 =?us-ascii?Q?zKqv9yE14odS5ZtIv0XLxGfiPmXzXeLwYkYAicdZbLfpbxXwbcPp0mJlK1kS?=
 =?us-ascii?Q?nY7tV21SaYuJUrVHC0zlkORFi9fM2sOu3WRvnejun0sh5WvDgFCJu5XGnCDE?=
 =?us-ascii?Q?e++FrHonRpzjt+hyTbLlwFhKpJsIVH89aPSLAuNO3Q/8+mBnugHDo2KoZCIl?=
 =?us-ascii?Q?I4RUD0FN01UwMr8NwTsA0hbeBl61vUgIPBJgstMDp51GcC2x5ql9jponFRmD?=
 =?us-ascii?Q?zMo3+7sxl+bERQzMSod4xL7ZCBf1J7udtjQj8Zlex/Op5Y5tSXRWksRPGgzO?=
 =?us-ascii?Q?0L6GrWNn46wD7cdkhQpXftKmBMVYMaHr8gIXhzKDVhZ/V07dmn8Txn/svitI?=
 =?us-ascii?Q?QQtOuMXPgWkvgoVIoFnEExukLAFuzMNwUvC3FTQ6xlpykSBpdXRMfNIz6TyY?=
 =?us-ascii?Q?l0juMKUCebt7ISQKiS2iXKZWtu525eN7zWUa1ZXXoXRZ8Xhzor7rSa+9xvPj?=
 =?us-ascii?Q?nzv8XuJqROvKcx8prPPf2F/yGQiS4PZaAz1F29j6KsrzWdfRu/LZikFurFRC?=
 =?us-ascii?Q?dR+hf3IR6+pcOzXJ3Lh8VbHYFeEVsUdRcOwPyrjkWuXRh3qo8hsqx0a71Cpr?=
 =?us-ascii?Q?kQWVHYwmAW2iehUsajCHcJzfqRtAabpIH/qevyWK9Js7DaY2YgjUWw0vZTfe?=
 =?us-ascii?Q?cml92SP2vJYj9LGWRzaXmuL1pm+RIC4vMPqLmqHV+0MUFOIgoBGzgUwDAEwV?=
 =?us-ascii?Q?V0Us5EwsyakaB62r7jeu10MQpgi1cFFoA9Sgt8eiFH0kUJy9sWGmLPAYLi87?=
 =?us-ascii?Q?ritwefiTBibjDHpuUmXysjpczUr3lMFeEUzKmUbmoXRFTnpgAaOTFmaC3VQ3?=
 =?us-ascii?Q?6gCZXVOeA35KYTykSbvdtyF8YCf4cfHQCx2wfBvU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29b1bd31-a3d3-421a-b248-08dba78bd56f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 05:58:42.5594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w+1L4MWQARCuyLs686iol90X+9bYS9wElxm1XRo7JzIWnYHci1qlsJm0eFSyEssDq0mYMqOiB3VliVgv1RIUeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5313
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/hdcp: Adjust timeout for
 read in DPMST Scenario
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, August 23, 2023 11:28 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; uma.shakar@intel.com;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v2 4/4] drm/i915/hdcp: Adjust timeout for read in DPMST
> Scenario
>=20
> For dpmst hdcp scenario increase the message timeout based on the number =
of
> ports connected as each port needs to be validated and each will take the
> prescribed amount of time for the respective msg_id and total timeout wil=
l be
> original_timeout * num_ports.
>=20
> --v2
> -Add justification for Adjusting the timeout [Arun]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index df68fd8f2eed..b0cfe759d3e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -560,9 +560,15 @@ int intel_dp_hdcp2_read_msg(struct intel_connector
> *connector,
>  		      DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_recv;
>=20
>  		/* Entire msg read timeout since initiate of msg read */
> -		if (bytes_to_recv =3D=3D size - 1 && hdcp2_msg_data-
> >msg_read_timeout > 0)
> -			msg_end =3D ktime_add_ms(ktime_get_raw(),
> -					       hdcp2_msg_data-
> >msg_read_timeout);
> +		if (bytes_to_recv =3D=3D size - 1 && hdcp2_msg_data-
> >msg_read_timeout > 0) {
> +			if (intel_encoder_is_mst(connector->encoder))
> +				msg_end =3D ktime_add_ms(ktime_get_raw(),
> +						       hdcp2_msg_data-
> >msg_read_timeout *
> +						       connector->port->parent-
> >num_ports);
> +			else
> +				msg_end =3D ktime_add_ms(ktime_get_raw(),
> +						       hdcp2_msg_data-
> >msg_read_timeout);
> +		}
>=20
>  		ret =3D drm_dp_dpcd_read(aux, offset,
>  				       (void *)byte, len);
> --
> 2.25.1

