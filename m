Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A37997B85
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 05:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5513810E2A1;
	Thu, 10 Oct 2024 03:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7CdJkjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED1310E2A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728532474; x=1760068474;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mrLY9tz2OpG/UwnEFrpPOTyMaAY5osa4JlzKRqKd1cI=;
 b=n7CdJkjKYabW/jEY+xCWYW6pFPZnORMziYcVsi1DsAjR1YEIVRYMfcIG
 hwZEgL1vZIX3IHs9C9ujpaplFwDck5SSGORp81lNExbTeNtZwlo7PQCnY
 xW5dFKXASrzyaLCpA0KgpKxK7hOz8YQlHwrygAWYJIgLG8t7WImjKY9yD
 i6wjwCw+QbG4eYGm7fowuhIndac5mW2hBRWl7Rh/sUKPouXMLplY0gsos
 lkFr7g9CUA5SkyS97tOTC/iERGRzwDZTGv4j8QzBLhTiedihA6SrUZJ5j
 sMJIEmSVJxox8A83in4wFgpOLwTXmTCQUGtZn6/y4n12lxhAzVG9IffX5 A==;
X-CSE-ConnectionGUID: CwYnjc+IToa60/5wpBCbBw==
X-CSE-MsgGUID: CkEFlyVzTTGdWm1lUWXwBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38452927"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="38452927"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 20:54:33 -0700
X-CSE-ConnectionGUID: gsEaXUGIR/qTkY8TyoxDRQ==
X-CSE-MsgGUID: CW4Hk8S9QoGxgg2C1l4mDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="81258930"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 20:54:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 20:54:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 20:54:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 20:54:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 20:54:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fw8SK3S9SNtQvCmD8co8VGCOIVMVTAFh4qv2McxbeNHkxnKMq3GXWg+5WvSWj+dMgc/7AH7roJdddY+5OUhfDyBNph2fGlY7pobyEhXpJJZ2EiQWDbJtlX90QXc2NkFGivZNSIj6hiOguOjf+Ul/gEib/XXpaMbZsbBWywJ+6LE7AaFumS3GVOQEV1M4LrSzzB1b6jrg4gDGzn3ak0RHv/ImYxk7GE+WHsR5daPREu9VvIlgPCzilW8zkGfbG/6oODki2kBxAWrI9rGfa7SP275mvAz/zitzzj1mLBEjcsTGmOD2j0ATMYdXfiDqKl6hFlupcObyvLSGkhv9RvOqWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cWNvVRF7ldf3+73NAvPSHF4VFPbyoZ8mNpw6L/bXrZA=;
 b=h/i4wZ5j4fCz+pxqZFH/RO2AogVoQ/PkKeskHlke5+QBduNeXW3hKvIFXFxFZLIzhZm8c9PVIl/J8+IgGqNlUeHEEEYuBuFfitlDslDQYoZqvIOhldA273aOwUN8nSKwONnrheiRjjrTLbDesCdvDzye1yFH9q4mZ8UvXUtXpGEI6YOawvi/roeGeKiqsVRRw2r/0mqeciGcrluI3zw/0X/LX15WJDa/ChUVqX4BoCju8bRvwHD2AL1pmhNgPw928hFBm9mFuIljQWBd3eEazFsedsMvx+wCLNZre+GgHMzdw1iEjCor0nx+5rAwrMaHAdECY8t6EWc9Zo+A7KxriQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL3PR11MB6434.namprd11.prod.outlook.com (2603:10b6:208:3ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 03:54:24 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 03:54:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/dp_mst: Handle error during DSC BW
 overhead/slice calculation
Thread-Topic: [PATCH 1/2] drm/i915/dp_mst: Handle error during DSC BW
 overhead/slice calculation
Thread-Index: AQHbGjrtJK2w8au/6EOnBCzH2QJbfbJ/W1dw
Date: Thu, 10 Oct 2024 03:54:24 +0000
Message-ID: <SN7PR11MB6750AC5A239CA75AEE7467BCE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009110135.1216498-1-imre.deak@intel.com>
In-Reply-To: <20241009110135.1216498-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL3PR11MB6434:EE_
x-ms-office365-filtering-correlation-id: 9389fa00-e259-43a3-2935-08dce8df3b15
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?oNcRiG5Va612hIvP1OtXLPNI7Vyh1Uq28CGT2o07aS6Zn44wNXbDDr1TheQs?=
 =?us-ascii?Q?9lhEV5Dij5ACxzQ4APz+H9bSQc0rp+ZP7fluPKSrXStFrecxMUhhnF4IR+bn?=
 =?us-ascii?Q?n6a/7rQMbzC0HQhQsJeoGxuh6bwXHGjfqUe1QDEr5lLQCU7+cerptT5PCkxT?=
 =?us-ascii?Q?tGSG8En0PW0oJkUYWF2hjKPN6ldNOvvgw80o9A/DtutF6WGAPnqJiPzee/bf?=
 =?us-ascii?Q?NCK0FajFH5UuyC/9xDA/FV9Ttbf7njWbyEMiqLWftVY3Adle9spdvI7nhjd5?=
 =?us-ascii?Q?aPZCc6w4hB/mrYQQ3124OdqVyCt4R+3shNVZKHHGoNzF0Y76thZ5lN+Ec7PW?=
 =?us-ascii?Q?U/ZJfbG2DjJHNE6ItMqpwtAeIwpeDzkUToWjetV9HjaULJJkOGpIG1jxE2s2?=
 =?us-ascii?Q?a4dW9xU5w0u9sC6t0s75Ro8n80UBqCYfgnoh5oVoe6EWZiPADb/45d/AiUsl?=
 =?us-ascii?Q?wkKV3m0DygOqXDrqHgEPEdxWnd2B7udCvYKrN+8oZ7IsiQPCXaIx90M6LfYk?=
 =?us-ascii?Q?rVd8VqWadTdHARPwbHVfDimyfAC+ekxxNlNxuA16WmD2IRfyvQmFQUCXBvtf?=
 =?us-ascii?Q?csxnqWbHOqqlsCBRgdJhjaBR0o56ePY+uCLxVW6l7mmmofvW7r+vlmsCVUvr?=
 =?us-ascii?Q?c2jb9Zjm6vi/wBrOvyXwH4G4uVYoBSikK/GSuoiDKi/SPBiJugqrZQ2ffuHV?=
 =?us-ascii?Q?vt2G03yNlbATpOfuY0Aeuyp3XRDjhFG/TCjlKrU2758aGPKwilcRA3pWN5gy?=
 =?us-ascii?Q?ZXOt/SddKfi3G75PtxvlNe89jIMKmJblB/hepl3JL7y/9KmNwrRScHY7YVKX?=
 =?us-ascii?Q?VyALz+Adrqakv9TzL193a8x5prllrpdZRiXU5HNl3KrIw7W0dTTVBH+TlNHP?=
 =?us-ascii?Q?aB1dKJzc6x9SHQJhegT/c04IY/IIYIvN1FdEqt4r1NtbEU9Hq4svTejCvnwq?=
 =?us-ascii?Q?C+e25dsS4p3CWDlVD6stzMSmU7P+9ukFg7bwWLadwzEgiDjkQdnKEKKKz4nY?=
 =?us-ascii?Q?J6kLnGrqw2w84Slqd8L2pPfUBS6ncIahL0MNnTtBuViKHhKREYfz0fI7I1iV?=
 =?us-ascii?Q?s5wCgw92SANSCYt98KpuTIvJ+ki7tJ4fVf3yqdzFM5Sc/iFfeFuZuWQ2HyyA?=
 =?us-ascii?Q?j6EpsropuLwUnofkYFPuN3A7HDvLRlkj0gICThE+7cJEbcoAf8gdB9BoSCxm?=
 =?us-ascii?Q?5BSay+oiSG9xiFHDIvebGd0J/BKpW6LkUcSX7nFP85PcL8vqNAacE1FtUUXb?=
 =?us-ascii?Q?fZeDigJb5UC0MBlapgO5LoXrGnqGbwTCsA5OkNWjNNXSkHWqxAYubNEwXnX1?=
 =?us-ascii?Q?OwYsgUnskldLXu4824lSOJlNTqu1U7LFRS4NYRbzLevU4A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7KgAhpmuW1u8UquXKiEOhxrVD+v+QSTMwB1zOYiUZ0jxSMIijYs+TnB0rZiH?=
 =?us-ascii?Q?L6uMUqdE9j8wWN9C3iefZbd4YvjXGUyif+siptd5aieNZpxX/w92ASbHrbjW?=
 =?us-ascii?Q?pooUk7MDqpYYjeauj4yLWiY31xp4hwrxMfzNrOHyiqbLRwrABU/oJjax/Idd?=
 =?us-ascii?Q?uNSKqanAhDnj4AVtQ7k/Dgj+p7VdoX5EKi13VtuH6FcsN0AZZV8ZB8wN4LNc?=
 =?us-ascii?Q?tX+5+AXxg2hUHsEbqhmWpFvIhtv8mOiABp+NkuELbnON9JUKSouXK3m5ekzo?=
 =?us-ascii?Q?cG7wLOXbnrVhU5qRPRoOqU0X5QKhgRswEF5BP3Sxj6/+0ysyWLiMuJRexXGp?=
 =?us-ascii?Q?J2HaGBOGtGpNkumbmiLLT9UnluPNixh88U7muA2LMj0STn2+DgOeOrMozsaz?=
 =?us-ascii?Q?X6B1//HnLXgcftMWH2Nnhv29qQJje/Gb9CIRsTIhCh6cOAOwgO/CwtX029OP?=
 =?us-ascii?Q?1ZWFulwMWU0lLo34/yBkKYdDKsGUkGOCJTJyHuJFqwm3IgCsy3lOvdndSl7L?=
 =?us-ascii?Q?2soBh0MYqSUg26tIfSl1lIs7K24YVmU+ej/wwrlcCKSQTx0Br0TpE9fIR+ky?=
 =?us-ascii?Q?TDAJ/ykCgcQQ+7gWXF4qPOFPEK+sKeNUimOiQFixTtpLU9ULoWbcU2fw4/P0?=
 =?us-ascii?Q?UWcsgOjY+vb2P1EYPro+w339RfDOidi3Ez5NQwuXC8wKWR+z4zVhP/kryU+o?=
 =?us-ascii?Q?196td83JP0cmuGONp+CuJ6XvZd1tlKakaGimfPN+o5Rs+Guqs7i0/rqHQoer?=
 =?us-ascii?Q?lsu5zY9+vfVPJO5HNf7HZMQYBw5Fwu/ToNwHCy4C1DDZVWqim4ias8v4lVIz?=
 =?us-ascii?Q?+rhDTQmIwvf+Isc9sLq5IjmSLf16aWedRt3x5TiN8lyQThHyvHVrazTZjpGE?=
 =?us-ascii?Q?uWZe47mAIR7u9gbkniDakdc/HKWpgd55eG3AjhWNWzaTARub27gO5+/+VfHW?=
 =?us-ascii?Q?vVCk5jkbaxNIfMog7uR8OBMQm3rHveakIvmCn6FqXU+YIchFX3shIHMQxUbd?=
 =?us-ascii?Q?a4g/Bm22VbHmC078t56oSz7Hbbs0W4wL7c6vzIJs9htpjiKc2wm/vOAS5gEV?=
 =?us-ascii?Q?wJFGlvlR2wNyXe3rXmrRY/H4c7kZCfrtflRven1bAPbuEM558gGI7tPY+puV?=
 =?us-ascii?Q?uyHOLHuR08ToMIf4CAS+AHCo0KWg2zQSFfI8mc3Ftc58NGp0NQw6vAFhaNl/?=
 =?us-ascii?Q?FR8gMnbyxQbg/zEvPmJOMyOXgkKb0RJ52m3Z5uzhb5ovtCsyOpCtZDuB28gp?=
 =?us-ascii?Q?vSlK3PXjVsW+xvo9vPq4v6MuBw9adAendT6nysv+CaKsbDlA/7Z810FhF+kn?=
 =?us-ascii?Q?OI8Hx5M5qWd815XekIEhUABI/3zj/ypDgthCDCQB4P9tZA4WU0GDYu87aLN6?=
 =?us-ascii?Q?dFmyOtuK46KSDa55CNXasSTbWPhERgkgIX5XWAD4joLoWEOHvJkucvbHhDCO?=
 =?us-ascii?Q?iFmoLL2bhgLNMdUQQ5RclzsJryL9M31FwNhenhoYHbJ2O6pTczBUSox047gF?=
 =?us-ascii?Q?3plgMUDGm713I5FDjhTbox1WUniI97hiN3OZuYUGktWEezE4LMz1bDYfYAtU?=
 =?us-ascii?Q?Ggy5hKT7NuzFSupWgfeKF366sbc9o5vckN+8bw6A?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9389fa00-e259-43a3-2935-08dce8df3b15
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 03:54:24.6331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: imThRhNUdPO1Qfh0fT5EHGw+0gXP6jwRrhLiZG1nXHxUOHYj5DTUh45QNw2MPAigLUH1xMcq2fO+4bERtS9Vbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6434
X-OriginatorOrg: intel.com
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, October 9, 2024 4:32 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 1/2] drm/i915/dp_mst: Handle error during DSC BW
> overhead/slice calculation
>=20
> The MST branch device may not support the number of DSC slices a mode
> requires, handle the error in this case.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

I feel this is a better implementation of the fix I had sent
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 39 ++++++++++++++-------
>  1 file changed, 27 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 4765bda154c15..2822ae1160034 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -90,27 +90,19 @@ static int intel_dp_mst_max_dpt_bpp(const struct
> intel_crtc_state *crtc_state,
>=20
>  static int intel_dp_mst_bw_overhead(const struct intel_crtc_state
> *crtc_state,
>  				    const struct intel_connector *connector,
> -				    bool ssc, bool dsc, int bpp_x16)
> +				    bool ssc, int dsc_slice_count, int bpp_x16)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	unsigned long flags =3D DRM_DP_BW_OVERHEAD_MST;
> -	int dsc_slice_count =3D 0;
>  	int overhead;
>=20
>  	flags |=3D intel_dp_is_uhbr(crtc_state) ?
> DRM_DP_BW_OVERHEAD_UHBR : 0;
>  	flags |=3D ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
>  	flags |=3D crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
>=20
> -	if (dsc) {
> -		int num_joined_pipes =3D
> intel_crtc_num_joined_pipes(crtc_state);
> -
> +	if (dsc_slice_count)
>  		flags |=3D DRM_DP_BW_OVERHEAD_DSC;
> -		dsc_slice_count =3D intel_dp_dsc_get_slice_count(connector,
> -							       adjusted_mode-
> >clock,
> -							       adjusted_mode-
> >hdisplay,
> -
> num_joined_pipes);
> -	}
>=20
>  	overhead =3D drm_dp_bw_overhead(crtc_state->lane_count,
>  				      adjusted_mode->hdisplay,
> @@ -156,6 +148,19 @@ static int intel_dp_mst_calc_pbn(int pixel_clock, in=
t
> bpp_x16, int bw_overhead)
>  	return DIV_ROUND_UP(effective_data_rate * 64, 54 * 1000);  }
>=20
> +static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector
> *connector,
> +					    const struct intel_crtc_state
> *crtc_state) {
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +	int num_joined_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +
> +	return intel_dp_dsc_get_slice_count(connector,
> +					    adjusted_mode->clock,
> +					    adjusted_mode->hdisplay,
> +					    num_joined_pipes);
> +}
> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> *encoder,
>  						struct intel_crtc_state
> *crtc_state,
>  						int max_bpp,
> @@ -175,6 +180,7 @@ static int
> intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int bpp, slots =3D -EINVAL;
> +	int dsc_slice_count =3D 0;
>  	int max_dpt_bpp;
>  	int ret =3D 0;
>=20
> @@ -206,6 +212,15 @@ static int
> intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d
> max bpp %d\n",
>  		    min_bpp, max_bpp);
>=20
> +	if (dsc) {
> +		dsc_slice_count =3D
> intel_dp_mst_dsc_get_slice_count(connector, crtc_state);
> +		if (!dsc_slice_count) {
> +			drm_dbg_kms(&i915->drm, "Can't get valid DSC slice
> count\n");
> +
> +			return -ENOSPC;
> +		}
> +	}
> +
>  	for (bpp =3D max_bpp; bpp >=3D min_bpp; bpp -=3D step) {
>  		int local_bw_overhead;
>  		int remote_bw_overhead;
> @@ -219,9 +234,9 @@ static int
> intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  					       intel_dp_output_bpp(crtc_state-
> >output_format, bpp));
>=20
>  		local_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> connector,
> -							     false, dsc,
> link_bpp_x16);
> +							     false,
> dsc_slice_count, link_bpp_x16);
>  		remote_bw_overhead =3D
> intel_dp_mst_bw_overhead(crtc_state, connector,
> -							      true, dsc,
> link_bpp_x16);
> +							      true,
> dsc_slice_count, link_bpp_x16);
>=20
>  		intel_dp_mst_compute_m_n(crtc_state, connector,
>  					 local_bw_overhead,
> --
> 2.44.2

