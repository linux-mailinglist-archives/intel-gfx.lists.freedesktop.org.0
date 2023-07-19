Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB8475912C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 11:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B611710E447;
	Wed, 19 Jul 2023 09:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9272910E443
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 09:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689757699; x=1721293699;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xvEa0pwdirnP0/waDFGBYLSQ4czP+bBLlnWW8jHLgkQ=;
 b=PTTF9ICa3Dmlse5dVvJHDsCgZu9+ZXg8/x9NHKAVgs3WIqcONB2qUe9w
 djaWRRkTt4abOaeWVe5ivpBXARZweoM636j7nqIEfFdAROp8AryU3hZ9J
 JkNa92xdVdc8tEvDBX2ld60ZPol/fK3APT5UutFSR61tlfjmQWu+C2j5V
 wHPD/HT3Zg+CylAwVa1kY/bfJGF7d0iGj4rKmg94Rbms7b882nZisDDFE
 m+PuA2Uk8Rv6LIqkakU+wLvcfJjUnk10ckcDInU9c4xlkPUTWTNCsPyme
 qw+FS2vmADHx58NbjsAKr0XSSGoTR9vr5OcMrgaoGVqGRtS0cA3W13vVE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="397265819"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="397265819"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 02:08:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="701230860"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701230860"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2023 02:08:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 02:08:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 02:08:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 02:08:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LuMUbGoaLrcAxh7TZkExJAdev/d4rvWXEuI93M7y//+s9er7FxHBDJZ69EObMjq9ENIHJYrOhgJosQxTJnLohJgeNqoiczT290EU8OSsoyw+JXHOk8TOP+lqP3ZYEAyLSvckbkAmD9gJ3Z5VZB76PUpovSXgmEWYdNTDhX7a/VCZIwtjnZ4FeS+8JDltAmXaWFK+wqhDj45ptq3lOM4pDgdLFqp4QOxHawq8YfhiuXh9D+sVXJd+/6eeK3wfdDCdtO5ZDLto1rb/879EKZRua1vVHX9OSgudytf5lTvKOmWfG6Ro13In90BbkhvfOPEHBck/ZK9kol/UA41aM4Kh/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Anw3x42VHCI/QtD97GYdSAeSP0sKVvczpki/6W5a9mA=;
 b=TCDAN+wz9Ulhe9cyj7YhDXp6CikSgFitcadrCd5FV4RDPbfZ30AqGaxH0iWfxbiN+B4bWxCO2fGZhTWazohBPuFI1nTK0stBA6xFxsLyXlaxPCw5iOA0Vrz4bR2G3/gSHUTHSlBCAzut3Rdkk+XzH5t7+NACAfgKhleMJiKQSZI+aRq43TfqXdZ0zvqPWRSqzv+U4tDdcss8YfESp+BcX4qvAnaPBLh06iVWVdVUvQM5Wv5SbO4ovHjxRPdCO5+Kaq4AsahJtdW3vInltBAsoWpBRhT62OaiilYCzAhpNCf6D9rLCPEBVbwOsvps1r8IGj6SjfA4R0Ka/ALqPe1saA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW6PR11MB8409.namprd11.prod.outlook.com (2603:10b6:303:24c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 09:08:08 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::c8a4:674d:d74a:3502]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::c8a4:674d:d74a:3502%4]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 09:08:08 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: Intel-gfx Digest, Vol 186, Issue 211
Thread-Index: AQHZtljLxzt9Us5mPE6PsnEcGc56oK/A0lDw
Date: Wed, 19 Jul 2023 09:08:08 +0000
Message-ID: <IA1PR11MB6467EBFCFE0782B4D3730473E339A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <mailman.18298.1689342027.931.intel-gfx@lists.freedesktop.org>
In-Reply-To: <mailman.18298.1689342027.931.intel-gfx@lists.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW6PR11MB8409:EE_
x-ms-office365-filtering-correlation-id: 1f0fdeec-23a7-47f0-86a4-08db8837aba8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nw0bnda+wpd8Gq3zw26gFd9RKCEr65SoZnefvbVAC1boILVC4UfsXbO9rw7EoGm2gMXac4pmj1J++nuLo/Wvx51krycXAAMMg+4qcB9m5R5sPRTxHI5ZxeG+ZvOsQ/ShNuaQUV7qDT2/HGLH7wfdcncH4a7ZLJo3ASxKBT1wcZaNYwbCLjoeRFwzytVjIhC5m1yhfBY985Mel/LKPf0TCAIzqnyvR8KSwie9lQdP9F90WJOatFyNW+JxK6GOEcLMqUZT1rKDpvhR3m/pV7/S9GepnOSRF+Usoc7+/WGCHfrnu4hMUuyzRY4qcAPpzZ5KYnp9mcIeK9JLuauvb36faEDlE/ZT/tVJfWJ2ouNyLQvdbUa7xyfoKzNyAXpNM/7VMYK9BedF+Gky9bxpk4R/K+Y13/+Q/z506e1fCdG64IONQ1yIxG8HCzXielyTmhfw5fRoQr/oP6guAT/RPsuLrLthGizhRS/ghsupS4fuDb4MBU/njrfhONt0+O0WRo8OA3uwEWWtEnzxM8dBXwV0D2oPhfpkDttLMb23kYcgUGW3sKLCZH1+nNLfwxcyu3Ps6tpSsEAJOF6cq9OzAaGk4kKDWBmZPYC6TdHZoIdeHdg/6S3QYhtuL3GGqMW+y1rt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(376002)(346002)(366004)(451199021)(6916009)(64756008)(8676002)(8936002)(52536014)(41300700001)(66556008)(66446008)(66476007)(316002)(76116006)(66946007)(5660300002)(66899021)(38070700005)(30864003)(2906002)(55016003)(122000001)(478600001)(9686003)(966005)(7696005)(33656002)(26005)(55236004)(6506007)(186003)(53546011)(82960400001)(71200400001)(86362001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ot9Zib5Tx8HtinRpp+nW5FmM6yQSw21GD4qv4DvfO+bVFJz6/QtEN5Y46dbw?=
 =?us-ascii?Q?FjIZuONGTgaYPmGVIk/w7f6isxNpm7/X69dLn7RjTc10ViVDgQ+wcMw/Aely?=
 =?us-ascii?Q?jxiGcPA8mH3ejUYGlN/4zByAzpz9ax2Fm9bigAZLDrWGb3oHJst2N4Q9HvKD?=
 =?us-ascii?Q?6rITMSLKj1iDou2FcXuN05J+YeruYl/wgk3CXZ6lbWZvojN8zzFB6qaxyvgh?=
 =?us-ascii?Q?a+NBh+GnaSxwfKn3kJTAusOLWBw1l0IbSC868UiyNyJE5ZUyHdWCbUOJ5Z1O?=
 =?us-ascii?Q?aUdqOEnbQWo2d1pbXWrtpDuJxvcweBFygPILD7ydwvBqjPPsRWwxMWTx05yP?=
 =?us-ascii?Q?IStfb+AileRDeUuncHQLyUJO+7JRYCWQG9HGqLdpfqoiXXgsIQVLOS4tzKwC?=
 =?us-ascii?Q?WLZcrdXaCX4yqQ0hInr5KJ7QgGgKYfw5jsXBe4EkO6Qu5mzMUf37PzJeoriJ?=
 =?us-ascii?Q?plizGas5Czpvwicwd4G3DO84HUyzywL/dEa2piSw11iyZyqFrYD2GorXlvqB?=
 =?us-ascii?Q?7sFkvqcjfClJsF1v5TKv7sEd+TfknB//Rtvb1OtixmLasGwGv19rLmODr8wj?=
 =?us-ascii?Q?EyecUjr7abKymi9TW8v7HLq4Mo5uYY0fXWxSPSOBcU/Kd/ZzzJ2PAVRYghX+?=
 =?us-ascii?Q?to9J9hfhwdRON9v55USXLmS7xK3XJa7xf5dzBZSfpsigTlpoKAijGbd089a7?=
 =?us-ascii?Q?kYzwUF4xiDb5amkDb/tWAorRKOEcpkxAdOBxEjO8SFSkoQKWzZbb++Cmqmsw?=
 =?us-ascii?Q?W8RTrEVGk2tCK1fspsS9SS++ekYXkL+0q4LU5A9sCZS7B8fCJzY+08zHF/Bc?=
 =?us-ascii?Q?pIwcTjDlxYqPvaCjWJkpnRI3M1XdHyZuooig7Sq88vT7VyhJLhR1zc9gKnq4?=
 =?us-ascii?Q?XlFGCHeGDnZKczsd3lNH0PqaQrKB1w8bdorIt2GgS9s1dr/I11TefaHK6kPv?=
 =?us-ascii?Q?NBEAr6k3eKq2dpVPZQXfUd9R2q3ekKPhy4121JNxbhjS+sUDOYgFLjqFcWXl?=
 =?us-ascii?Q?XvXFCVMTTrgGnVGd4bVveg1+0XBgMp2Ifvsk5Bk1ZaysI75fOwIJPkFlu7OT?=
 =?us-ascii?Q?mieYqnYwCeyfhASnVC9+qEBZVBcwNlyLjnzZdqe0AOwbaw0/MykT1VpaqgwR?=
 =?us-ascii?Q?0OptWkpoxbY/jOR+28v5JGV3gi4mWbRaAaDCaTpE1hrn7WkCj2ZONGvI5BFr?=
 =?us-ascii?Q?MsK0cjcknNSD87eRMDybrNaEk8ZMU4mGk1tlF6fOISFhlrpK+9KHBvbX7kpv?=
 =?us-ascii?Q?JFketJAV7HczyLMNLiZRCgad2rt93CJ/WlZ83x6/fYouhvTQ/vcFAQFXU2+d?=
 =?us-ascii?Q?6LznHia0e5NiaBl1OsAssZ223QClA4ijCPpYMsPYtMfrapPmQaT1CBCGtetJ?=
 =?us-ascii?Q?ycg1qIqyK/IymZVBbvnKd6WOvd5Iu03zN66cokFC6rq/iFv/aFNQJf2k6v2k?=
 =?us-ascii?Q?FrnmAV5T01Vkw2uWAhXc8quQyzZdrsKbxw6RP10UFrQLbbSerBCY8jVzyYjp?=
 =?us-ascii?Q?TUyR8h5aHtlFS8EexRaHxDMq1vtnwuK3vFeN8TvFD64DHBsHLePAMq9lZxpN?=
 =?us-ascii?Q?ZIPKqZdGb+BHzdHJr2HVtivqBzh7vYs99NnSTu7c?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0fdeec-23a7-47f0-86a4-08db8837aba8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 09:08:08.7348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pWARYp5/dijlxDtjQRP0OfsmLPP21g+/T6TuKR9fc4bblnBNgheoTC5ThdA9hRHkesj71keU2kJ5wLnWibnGjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8409
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Intel-gfx Digest, Vol 186, Issue 211
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of in=
tel-
> gfx-request@lists.freedesktop.org
> Sent: Friday, July 14, 2023 7:10 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: Intel-gfx Digest, Vol 186, Issue 211
>=20
> Send Intel-gfx mailing list submissions to
> 	intel-gfx@lists.freedesktop.org
>=20
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> or, via email, send a message with subject or body 'help' to
> 	intel-gfx-request@lists.freedesktop.org
>=20
> You can reach the person managing the list at
> 	intel-gfx-owner@lists.freedesktop.org
>=20
> When replying, please edit your Subject line so it is more specific than =
"Re:
> Contents of Intel-gfx digest..."
>=20
>=20
> Today's Topics:
>=20
>    1. [PATCH] drm/i915: Start using plane scale factor for relative
>       data rate (Stanislav Lisovskiy)
>    2. Re: [PATCH v9 09/10] vfio/pci: Copy hot-reset device info to
>       userspace in the devices loop (Jason Gunthorpe)
>    3. ? Fi.CI.BAT: success for drm/i915: Start using plane scale
>       factor for relative data rate (Patchwork)
>=20
>=20
> ----------------------------------------------------------------------
>=20
> Message: 1
> Date: Fri, 14 Jul 2023 15:34:56 +0300
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915: Start using plane scale factor
> 	for relative data rate
> Message-ID: <20230714123456.19153-1-stanislav.lisovskiy@intel.com>
>=20
> BSpec 68907 clearly instructs us to use plane scale factor when calculati=
ng
> relative data rate to be used when allocating DDB blocks for each plane.
> For some reason we use scale factor for data_rate calculation, which is u=
sed
> for BW calculations, however we are not using it for DDB calculations.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 7d9578ebae556..60a492e186ab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -212,6 +212,7 @@ intel_plane_relative_data_rate(const struct
> intel_crtc_state *crtc_state,
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int width, height;
> +	unsigned int rel_data_rate;
>=20
>  	if (plane->id =3D=3D PLANE_CURSOR)
>  		return 0;
> @@ -241,7 +242,11 @@ intel_plane_relative_data_rate(const struct
> intel_crtc_state *crtc_state,
>  		height /=3D 2;
>  	}
>=20
> -	return width * height * fb->format->cpp[color_plane];
> +	rel_data_rate =3D width * height * fb->format->cpp[color_plane];
> +
> +	return intel_adjusted_rate(&plane_state->uapi.src,
> +				   &plane_state->uapi.dst,
> +				   rel_data_rate);
>  }
>=20
LGTM,
Thanks and Regards,
Nemesa

>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> --
> 2.37.3
>=20
>=20
>=20
> ------------------------------
>=20
> Message: 2
> Date: Fri, 14 Jul 2023 10:36:55 -0300
> From: Jason Gunthorpe <jgg@nvidia.com>
> To: Yi Liu <yi.l.liu@intel.com>
> Cc: alex.williamson@redhat.com, kevin.tian@intel.com, joro@8bytes.org,
> 	robin.murphy@arm.com, cohuck@redhat.com,
> eric.auger@redhat.com,
> 	nicolinc@nvidia.com, kvm@vger.kernel.org,
> mjrosato@linux.ibm.com,
> 	chao.p.peng@linux.intel.com, yi.y.sun@linux.intel.com,
> 	peterx@redhat.com, jasowang@redhat.com,
> 	shameerali.kolothum.thodi@huawei.com, lulu@redhat.com,
> 	suravee.suthikulpanit@amd.com, intel-gvt-
> dev@lists.freedesktop.org,
> 	intel-gfx@lists.freedesktop.org, linux-s390@vger.kernel.org,
> 	xudong.hao@intel.com, yan.y.zhao@intel.com,
> terrence.xu@intel.com,
> 	yanting.jiang@intel.com, zhenzhong.duan@intel.com,
> clegoate@redhat.com
> Subject: Re: [Intel-gfx] [PATCH v9 09/10] vfio/pci: Copy hot-reset
> 	device info to userspace in the devices loop
> Message-ID: <ZLFPd2coVKPcI05G@nvidia.com>
> Content-Type: text/plain; charset=3Dus-ascii
>=20
> On Mon, Jul 10, 2023 at 07:31:25PM -0700, Yi Liu wrote:
>=20
> > @@ -1311,29 +1296,17 @@ static int
> vfio_pci_ioctl_get_pci_hot_reset_info(
> >  	ret =3D vfio_pci_for_each_slot_or_bus(vdev->pdev, vfio_pci_fill_devs,
> >  					    &fill, slot);
> >  	mutex_unlock(&vdev->vdev.dev_set->lock);
> > +	if (ret)
> > +		return ret;
> >
> > -	/*
> > -	 * If a device was removed between counting and filling, we may
> come up
> > -	 * short of fill.max.  If a device was added, we'll have a return of
> > -	 * -EAGAIN above.
> > -	 */
> > -	if (!ret) {
> > -		hdr.count =3D fill.cur;
> > -		hdr.flags =3D fill.flags;
> > -	}
> > -
> > -reset_info_exit:
> > +	hdr.count =3D fill.count;
> > +	hdr.flags =3D fill.flags;
> >  	if (copy_to_user(arg, &hdr, minsz))
> > -		ret =3D -EFAULT;
> > -
> > -	if (!ret) {
> > -		if (copy_to_user(&arg->devices, devices,
> > -				 hdr.count * sizeof(*devices)))
> > -			ret =3D -EFAULT;
> > -	}
> > +		return -EFAULT;
> >
> > -	kfree(devices);
> > -	return ret;
> > +	if (fill.count !=3D fill.devices - arg->devices)
> > +		return -ENOSPC;
>=20
> This should be > right? The previous code returned ENOSPC only if
> their were more devices than requested, not less.
>=20
> Jason
>=20
>=20
> ------------------------------
>=20
> Message: 3
> Date: Fri, 14 Jul 2023 13:40:27 -0000
> From: Patchwork <patchwork@emeril.freedesktop.org>
> To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] ? Fi.CI.BAT: success for drm/i915: Start using
> 	plane scale factor for relative data rate
> Message-ID:
> 	<168934202742.13875.17191708900969933819@emeril.freedesktop.
> org>
> Content-Type: text/plain; charset=3D"utf-8"
>=20
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Start using plane scale factor for relative data rate
> URL   : https://patchwork.freedesktop.org/series/120767/
> State : success
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_13385 -> Patchwork_120767v1
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **SUCCESS**
>=20
>   No regressions found.
>=20
>   External URL: https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_120767v1/index.html
>=20
> Participating hosts (41 -> 43)
> ------------------------------
>=20
>   Additional (3): fi-kbl-soraka bat-dg2-13 bat-dg2-14
>   Missing    (1): fi-snb-2520m
>=20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_120767v1 that come from known
> issues:
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190]=
)
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-kb=
l-
> soraka/igt@gem_huc_copy@huc-copy.html
>=20
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]=
) +3
> similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-kb=
l-
> soraka/igt@gem_lmem_swapping@basic.html
>=20
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-nick:        [PASS][3] -> [ABORT][4] ([i915#7911] / [i915#79=
13])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/fi-bsw-
> nick/igt@i915_selftest@live@execlists.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-bs=
w-
> nick/igt@i915_selftest@live@execlists.html
>=20
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#5334] / [i915#=
7872])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-kb=
l-
> soraka/igt@i915_selftest@live@gt_heartbeat.html
>=20
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886] / [i915#=
7913])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-kb=
l-
> soraka/igt@i915_selftest@live@gt_pm.html
>=20
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-1:         NOTRUN -> [DMESG-WARN][7] ([i915#6367])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-r=
pls-
> 1/igt@i915_selftest@live@slpc.html
>=20
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][8] ([i915#6645])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-m=
tlp-
> 6/igt@i915_suspend@basic-s3-without-i915.html
>     - bat-rpls-1:         NOTRUN -> [ABORT][9] ([i915#6687] / [i915#7978]=
 /
> [i915#8668])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-r=
pls-
> 1/igt@i915_suspend@basic-s3-without-i915.html
>=20
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][10] ([i915#7828])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> mtlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>     - bat-dg2-11:         NOTRUN -> [SKIP][11] ([i915#7828])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-=
dg2-
> 11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>=20
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][12] ([fdo#109271]) +15 similar=
 issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-k=
bl-
> soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>=20
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [PASS][13] -> [ABORT][14] ([i915#8442] / [i915#=
8668])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/bat-rplp-
> 1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-
> 1.html
>=20
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][15] ([i915#1845] / [i915#4078]=
)
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
>=20
>=20
> #### Possible fixes ####
>=20
>   * igt@i915_pm_rpm@basic-rte:
>     - fi-skl-guc:         [FAIL][16] ([i915#7940]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/fi-skl-
> guc/igt@i915_pm_rpm@basic-rte.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/fi-s=
kl-
> guc/igt@i915_pm_rpm@basic-rte.html
>=20
>   * igt@i915_selftest@live@requests:
>     - bat-mtlp-6:         [ABORT][18] ([i915#7982]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/bat-mtlp-
> 6/igt@i915_selftest@live@requests.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> mtlp-6/igt@i915_selftest@live@requests.html
>=20
>   * igt@i915_selftest@live@reset:
>     - bat-rpls-1:         [ABORT][20] ([i915#4983] / [i915#7461] / [i915#=
8347] /
> [i915#8384]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/bat-rpls-
> 1/igt@i915_selftest@live@reset.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> rpls-1/igt@i915_selftest@live@reset.html
>=20
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-2:         [DMESG-WARN][22] ([i915#6367]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/bat-rpls-
> 2/igt@i915_selftest@live@slpc.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> rpls-2/igt@i915_selftest@live@slpc.html
>=20
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [INCOMPLETE][24] ([i915#7913]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/bat-dg2-
> 11/igt@i915_selftest@live@workarounds.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-=
dg2-
> 11/igt@i915_selftest@live@workarounds.html
>=20
>=20
> #### Warnings ####
>=20
>   * igt@core_auth@basic-auth:
>     - bat-adlp-11:        [ABORT][26] ([i915#8011]) -> [ABORT][27] ([i915=
#4423] /
> [i915#8011])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/bat-adlp-
> 11/igt@core_auth@basic-auth.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/bat-
> adlp-11/igt@core_auth@basic-auth.html
>=20
>=20
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>=20
>   [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
>   [Intel XE#486]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/486
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109285
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
>   [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
>   [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
>   [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
>   [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
>   [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
>   [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>=20
>=20
> Build changes
> -------------
>=20
>   * Linux: CI_DRM_13385 -> Patchwork_120767v1
>=20
>   CI-20190529: 20190529
>   CI_DRM_13385: f8be3c363790b79801f7be6bd40062219e3789bc @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7386: 54dc25efaf10d87962f95be9b1d1a8f0f907912b @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_120767v1: f8be3c363790b79801f7be6bd40062219e3789bc @
> git://anongit.freedesktop.org/gfx-ci/linux
>=20
>=20
> ### Linux commits
>=20
> 5bddc09c8d95 drm/i915: Start using plane scale factor for relative data r=
ate
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see: https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_120767v1/index.html
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <https://lists.freedesktop.org/archives/intel-
> gfx/attachments/20230714/28e943d6/attachment.htm>
>=20
> ------------------------------
>=20
> Subject: Digest Footer
>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>=20
>=20
> ------------------------------
>=20
> End of Intel-gfx Digest, Vol 186, Issue 211
> *******************************************
