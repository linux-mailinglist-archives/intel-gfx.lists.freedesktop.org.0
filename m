Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C309A97F0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 06:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE3F10E2F2;
	Tue, 22 Oct 2024 04:38:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IB22qAWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7584D10E2F2;
 Tue, 22 Oct 2024 04:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729571880; x=1761107880;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lHBxwCPLqS3ThKzBM7k9GsdG1ibOdR/BbOf1U2APcyE=;
 b=IB22qAWOw1BrZWSjRfS3H+RRGse5FeqjmrzMtWV/20VZdpIHzQzzgsFE
 1UC5B9vfD7zkRo1bbGa4RBYNBSo1nMYF+pwPREmD8Wiivr3WCIauvnHbO
 NCR/YUBU/Gp0nGzGXv54v6MfNLGuBup709OyXahfMS+4W4ipwBY8ssbpJ
 O/ieHiNOZeEvdOjbo4im5CnbPPScMFNF7JhSV9lmZAO1GF0MNQ3PbvtnE
 mQyTp3Vjc/5clZ2qXlC7aDJDfEhQnjps/D0W1WdUPd+6onRuqf8LcgpyG
 0vGp7aEp2ex88g2vQuHwdPL+9udpSbB4w7YM+DH3/GLvXNDnTzVenMOvX Q==;
X-CSE-ConnectionGUID: 3xHR43OFTF+WP6ZU+K9MCA==
X-CSE-MsgGUID: n29KctgBTlqPR8E/9xGPuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46551527"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46551527"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 21:38:00 -0700
X-CSE-ConnectionGUID: C1uYmtkyR2aLadpFrClxZg==
X-CSE-MsgGUID: i1o3acCKQkS+fphzXAndVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79735669"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 21:37:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 21:37:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 21:37:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 21:37:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qDP2r2Vn+flFNP13n+x63Q69RdQxVYbFdXPshdaieVMa9tFdklghYwp9kJt9lkunOLNoIfNBYWpLgXLatnBqqZr/8kVZPfd8RiHIa9cFfznCe1AJElyb5zq2Zd2rNuSjYwmpdU2waqTVxj7mpKxEbfeCuulOJ4QczVUyyAtcXZIvcaIvPwvmtd/W0fkG+w+IXJqJMhHHExcn9jbnluvGt5H9FsnVrOzR05ItZmLn82HxUgJlUa+HFBS4RYAz/yUZysF9dcyoDUISsavhTdhup5WxlIqwiaGYBeBsH6dYfuXjL0DcvuCuuTPmIxNvRnVKeNor+C7csEGKhd0MAB9GZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lV32lTcHFxYxea7W8Fg1syk8NlUYInl2XuXiTcfGeM0=;
 b=zVWTw8kOzrNXNanCzN+avd2XKYgJUM5HIE05zUmZKSpfWAuqc2cYMA8lMtpKQMf7bDCJquDEkRzu7eCSJOBJatyXgoiMF1olWEMRTq0SnpdDTzCcgN5RX2KAuEuV2ML0BVfOZazdKpnQ2lmzII2j9fLTaO2fftJfZA1RsBK15kn35U/AWV7hT2q9Kb2XFoxwFaPvQJaezoqlUPaq5rQhQqzoD2BtBq0WsMzJ0ebHRYPmqAiXF5AmimYhBrv/T0mUuHpCCr+rHvd9RzXAhDT5aZUyEm/37CQaWcHHdx0zeqQptZoZJJIr26qbTLHKAEUpykIRUBZHSQjOKpQMjXUhIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB8859.namprd11.prod.outlook.com (2603:10b6:806:469::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 04:37:51 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 04:37:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/16] drm/i915/dp: Update Comment for Valid DSC Slices
 per Line
Thread-Topic: [PATCH 01/16] drm/i915/dp: Update Comment for Valid DSC Slices
 per Line
Thread-Index: AQHbI7VA1YsZQ9xbB0WD7NkL88O1C7KSMLxw
Date: Tue, 22 Oct 2024 04:37:50 +0000
Message-ID: <SN7PR11MB6750AE8D2D415E9BA318111FE34C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241021123414.3993899-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB8859:EE_
x-ms-office365-filtering-correlation-id: 956fff07-7546-4b0b-3aee-08dcf2534980
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?JqZVCiCiPvDiihgkT7WpCEEXoaYs/cSuEzD5y+6GQA6b8cgzyd5mA76CKJdH?=
 =?us-ascii?Q?Ok5SvcM3pgN/olchKFbgiLpRFiqNFuNop5x2gynmBsay4teT1lP0doLletMk?=
 =?us-ascii?Q?KKdZxlsBTk/xQKZB09uPGZzXMIonh5TK8RK97vJcnuViAs2kaiLPiSej7RFL?=
 =?us-ascii?Q?QzLVjqCmRk0Cp0A50skqOySyLa3NHN0oluC288dAjyOctURIukx2RTraO2Wi?=
 =?us-ascii?Q?hsRON6BdI95om33JYCWqbZLxSOO0VZ8hCSVOLUvG/YsY5MnDl8ptb7KGdJKQ?=
 =?us-ascii?Q?7vnRKZhBkaqMkN/urUJBzUL7ypj49v2gtLTt7pRk7uMSFb446xQuNl4zyg9T?=
 =?us-ascii?Q?oW4qce+VlieTwHqQaKDysdvdxXl62up660AFjrp/l0cMV7QvCVcyiyyr2khn?=
 =?us-ascii?Q?1zuYrRpLOS6DJwh7Uo6r9NSF+jC692tEXPwygHkXmJVk2N6pFjM2VInImlh5?=
 =?us-ascii?Q?K/I1UwzzxuHycznRfO3xhTlALqT0853a2OkyuWgC/i5P+p+3OShqkfgL7A+M?=
 =?us-ascii?Q?ls7r6/J916L6/fFzn1OCVBUqB+YbtvK7urAkJh7I0+H7rk8QoJUziIUyCNTg?=
 =?us-ascii?Q?+lj5QEIzcbx09AaGa8Nh54M784xTKOpIMGM5OJU3kCy4mfX8deYlZQX9lF4g?=
 =?us-ascii?Q?Pir19gNm6xvJBP8NUkH1uoSLCOHSZf4k0VBQLP9S3hGUPLW4H/8HZY+kfY8z?=
 =?us-ascii?Q?oBbslL9xzqNaZ2lW9+9PlgBDgm0NbSonaayrK6pivw5QVWMAQ3jAuGzd5mrc?=
 =?us-ascii?Q?VsK89+VpJ8CIMJb01U5/qxzsOJUWr+YjHNXyCV8jioxDnmC79cS00RI0HIrO?=
 =?us-ascii?Q?bQrWf4bTQ1TwlWXNX85oXLvhK1WGsDajv1PNgiSoHqljAI86Vbhf6N7S8jTB?=
 =?us-ascii?Q?ZpZ07kC6itUBMN6ZiPn/gbP3jhpxdLjuY0/1N8OIpChnJM+EcbeuEmvew46M?=
 =?us-ascii?Q?BNmakYXKOMmCVS2bsoTcMQej1qnJ3oaB6uOZrIfHP0rxiYdFG0nu0XJfR/Mm?=
 =?us-ascii?Q?4MqDlNiL4dZd5fr5p0suxFvlFN7g0OJF803kYnRHw6cYQi7HNIZ8Ih2rMdc5?=
 =?us-ascii?Q?/qp7ZcruXlYY/njHaYVQbHXei7dL85hKXCWCX0UQIhSbmA4CVEAY7HUSMnyj?=
 =?us-ascii?Q?j35oszRSAl1TfL+Xh7j9vxBJ+1pBzikdIHVHSoecfTtOQmRM7Iwer+NZ/ZWv?=
 =?us-ascii?Q?FV1mwhathltv/knIbYLZ0vFey60QTcafN3C3iUfOcaQ9VgDbBzNu8m6jVHIo?=
 =?us-ascii?Q?aiD+t61CpgkUUJ4q4twVZpBvLkl7xmyb+hyWkU+lRj9YrHy/b0f9bBlqyTdf?=
 =?us-ascii?Q?UHeR9//HblAC5tPlXc9OYsO5805iAdNMHH9GLv6O/sEV7uryRG+1AINmqiRc?=
 =?us-ascii?Q?WliKzw4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oXPn7Flh9VLf8GxGleCmtsbvCq72r2QK1cEJoHzJw/n2IBVSO6PmNgAHWerJ?=
 =?us-ascii?Q?p0uShr1JVWzAF6Gl22R8yT8D4wczJ5243l1bFXUIz4cAf3O9JQS4nu67Jnze?=
 =?us-ascii?Q?jbLw516tkgi2j1OWg0Zlak/0MISdrAtCa3EbV1iun6/OjZBfKRH+2Pr4olN4?=
 =?us-ascii?Q?iUIN6yzurlDfscoaCNXzF1VDdFr+vxuSe7tNACAf9mpw/GtvFKyrZxyS4PX5?=
 =?us-ascii?Q?zNh2mYFOHYLAEEa9fQDEBZ64E5W6fprhO9OUsZv4uVqly64Cj32JFlevcTne?=
 =?us-ascii?Q?BEKGjec26iUwA4N194DedJbLwVxeamP50XnZ4OHHYikpgXm2H7IYDh89SCnI?=
 =?us-ascii?Q?R5YjTB/uW5cZWc7KG2JSpH0ds7lZZxj3Rlu2q4VpuBVFSI5P7g0V7JoWvS/Q?=
 =?us-ascii?Q?Wv24HAEfwl8oFm7gq4X3GVymD5SpHyZ7yb6Vh35uE+R88WIedBe5krEyfTtO?=
 =?us-ascii?Q?owEwT7xMgK5j2E2Q/2uWZck0rseXT9OhCrMcan6Z6Eg/tiI070oG/bbQxuPY?=
 =?us-ascii?Q?YM50GjwQSteW8NOjTfEMjFa+HU15VWK6luQ9aR3Ed+QvkWiBcw6zV5xQ1JS5?=
 =?us-ascii?Q?HjRDS/sBr/9X6nij7dWmXBjXMm548twQd+u0WQ3e9Obfy5/2sEkZBcPdymgl?=
 =?us-ascii?Q?iYxWxUZ89XVR1qWc5CWzX8Sny0GkGazcC8nw8bJG4OXf1UIHTqCt8qb25FdH?=
 =?us-ascii?Q?j1ZLpHhyXSwrdygqwgC3FQCXh36ZMvc/3I/IBCmPwBP6znukhGuEsr7z1u/O?=
 =?us-ascii?Q?gzHL30dg7TpWVGMxN116ti0IkfE9SLQCkltYqCwQ7so9IWppUU9MabrJ1LF2?=
 =?us-ascii?Q?z4yORFYivRHcICLut4q8Bp7+vuEF+9vKE3bacRnsD/5g23KcSnmDk6IEDCXZ?=
 =?us-ascii?Q?2Mw5c2HjO8ipfP3jViEWNgU/f5lllEKM8PfWv/yzdMMS3QqYn2Ow9WCucThq?=
 =?us-ascii?Q?2Eiqj5UTDKjdBNXoomTdtKbn2z00VaxoNRrl12QZji3vXtvIpj6+fuEx7bg5?=
 =?us-ascii?Q?m13xvRSCaJ0qyW+GYTjGZB0pdPGtkq8noHJG8YmK8s4q6vyJCjOE0IqRFAu6?=
 =?us-ascii?Q?Z33gPT7bfOlthX9dd8OROddk7Lnr4YrDGd/S5aZdNnlBRzvlX9wF1m7WQGGm?=
 =?us-ascii?Q?Azbh88h73iUF1o+M/ryqilUm3rQLNQOWZv6PIr/zGo8DnvFG5PRIcA7r5n9M?=
 =?us-ascii?Q?Z4mZ5GIyAENzy1dnH/uhRVIzsdjv585Roni7Dsp+z1TNQ5f/u2zjLIAJThw+?=
 =?us-ascii?Q?pWyz0n7Y5qqYv2ETbEJVGa2QWr4P5AQ7zesGjOEATmYxpvTS7lIkBu43+HYn?=
 =?us-ascii?Q?VOUVVT+Q/gcnV5GMLpHBz2o/jkLfyRBPyizE8KduHpCVOtPNaCQdnS3fzTx+?=
 =?us-ascii?Q?PReuoyS07DcdqRhn6CRxqSuRYRy3HAIiHQwFOi5l1QywdJ2XOAW0pB4GOVrX?=
 =?us-ascii?Q?DSrRGYmfS1Jsr3NWjhIaFrWU4HuTxBHdLDcNPIF0PPJNwTNu8ajfAJb+Fwxl?=
 =?us-ascii?Q?L4p6RbvFdUtCbrKKJm4HZYgNwoOQVn+oEqZpOG7S2rW1US7n5gU/57UHWCUa?=
 =?us-ascii?Q?TQf0iJ2W/wp9MNJL2Ozstqy/9TcilbKCbAdlWZhN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 956fff07-7546-4b0b-3aee-08dcf2534980
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 04:37:50.8792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cqtnjBtBWmBARqCf+pMcwUyF5neJUapyxDd2WDBW0VRCoQvBeDGR542C2SIuHsJNZ7ui1s2R7FE+0jfAoUvKCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8859
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, October 21, 2024 6:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 01/16] drm/i915/dp: Update Comment for Valid DSC Slices
> per Line
>=20
> For some platforms, the maximum slices per DSC engine is 4, while for
> others it is 2. Update the comment to reflect this and clarify that the
> 'valid_dsc_slicecount' list represents the valid number of slices per pip=
e.
>=20
> Currently, we are working with 1, and 2 slices per DSC engine, which work=
s
> for all platforms. With this the number of slices per pipe can be 1,2 or =
4
> with different slice & DSC engine configuration.
>=20
> Add a #TODO for adding support for 4 slices per DSC engine where
> supported.

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e04913bc2ff..286b272aa98c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -108,8 +108,14 @@
>  /* Constants for DP DSC configurations */  static const u8 valid_dsc_bpp=
[] =3D
> {6, 8, 10, 12, 15};
>=20
> -/* With Single pipe configuration, HW is capable of supporting maximum
> - * of 4 slices per line.
> +/*
> + * With Single pipe configuration, HW is capable of supporting maximum
> of:
> + * 2 slices per line for ICL, BMG
> + * 4 slices per line for other platforms.
> + * For now consider a max of 2 slices per line, which works for all
> platforms.
> + * With this we can have max of 4 DSC Slices per pipe.
> + *
> + * #TODO Split this better to use 4 slices/dsc engine where supported.
>   */
>  static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
>=20
> --
> 2.45.2

