Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A0E93B675
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 20:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BF510E070;
	Wed, 24 Jul 2024 18:07:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fG9dCiHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E02F10E070;
 Wed, 24 Jul 2024 18:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721844426; x=1753380426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IO5qxjg/8VHPOVBkrq4cnJLbUd+DqlQvYasbuIbOioY=;
 b=fG9dCiHmYZ+vcu7rLd1vCryIDnp4TlHTdbIMfh+TkXEXAqfc7qGm7PaU
 ZOaXOEp+dYWjM279wr9f7BpO1Jnaudyo4/Tfqbrevc7lB0agMu6pmh1zN
 phpcfMnVQo/yUk81Mp+vL/yUjninfOj0u6Ry8gXQT8M0bHQBp5yIjOcOa
 u7UpYTL1SZmtEycULMRkrKFGGBq3ESYguRbXYyopTtwJmX8ngMCqjqhtu
 Fulc4+jWck5hNNVMTzrwTqPMeqNWBpNXPdVP3UrCbWg3wem6Fehq6SKUr
 U+y6NmLJgyGndE5NWdpZn72XbdhtbnrvDoPX0IcCLJcmRxk2Z8jDViLmF Q==;
X-CSE-ConnectionGUID: kdTubucMSNaE78eWDYvNvg==
X-CSE-MsgGUID: +Yxj6f3PRRG69aCcFGDJgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19238200"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19238200"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:07:05 -0700
X-CSE-ConnectionGUID: 2msDuZOPQ22Yu/vy+Vr5LA==
X-CSE-MsgGUID: BqIhzw/WQJywBZqyvfxtzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52586506"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 11:07:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:07:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 11:07:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 11:07:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j7v+D0E7ocCwsJZNzSYyBNb0impGgT2CP9QtxqP/N+Qy0tFdu30LmWCBHm74YG8tOEr4BFvfGOjlr2L4d+AUBe+CQ29JCCUD0NRr7uyF9cWZviVytAGXG04Sxp/yr06aHkoAWbBzhLkzI6PFcZfuYYRvKqbPvAyAcwhZxd70KRV96zM4jifkA1odwYoqp7pUn1waOQLTxpmJtjeZnPYMdqyPD7QsWAFDKyhNNL0au4ly0/fK/AoaJAoOXIPoNuWYjGpAEOwqkTlKSVcN9H+xRmVia+FXzBTtn+r1dUjHCZLUHzCmPIJUvwEpDg+fnMYWbnqnrbfPOMrSBBDRkFKTtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NPSbhZdH0tosqJ5jXbQPhdUDHmTWsscK/F2Wfvu2WpY=;
 b=Q99iPoJWOpeOue0BspeUcUPRIXyd4Jmzq5ure+B4KppBfkQciAzDnNYA5YZTNIgA+rZXYGWi/RV60fQMHY7rxR99TPgaoDUoTliMQ2QI/hUlbu++yYugBuTEsTQ6pGIR2q0x0/o8cGQxVwRRr+Zusyo8mJfjEHj/JJj+8e9upaLNXeavZ+HIbJndhZpeMKtCp8jitsIx746goqJkONgco5YPUdsAJ5Cg+JktjSYjxEtESYtRKJENmPupdp67oeeAlnGTuF+ah6x2pWJoAmPT6s5zd85jf8WyYNIDK5pS3e4600ll/rLKJr3s8Yj6VcfzkY1XSYZ2+mFJNApU7HMKEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 18:07:01 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 18:07:01 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/hdcp: Add encoder check in
 intel_hdcp_get_capability
Thread-Topic: [PATCH 1/3] drm/i915/hdcp: Add encoder check in
 intel_hdcp_get_capability
Thread-Index: AQHa3AMI3SQh3X+/2kK/jC84CY2J/LIGLy4A
Date: Wed, 24 Jul 2024 18:07:00 +0000
Message-ID: <IA1PR11MB62662109DB0F9D98D05BC5AFE2AA2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
 <20240722064451.3610512-2-suraj.kandpal@intel.com>
In-Reply-To: <20240722064451.3610512-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|BL3PR11MB6508:EE_
x-ms-office365-filtering-correlation-id: c7477f62-a704-4a45-cbe0-08dcac0b6a6f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XQb55+4iRq+aLRR5Xq4jlECEHdV0+Pfga1oqHlfG2SaPR/SQAqmFDvGny1Gs?=
 =?us-ascii?Q?wJOxUWOg/hmfb6cnc17mE2Sk0lPJTF6bs3sfw/D3ubkbET8PwVw2ueUIhcCY?=
 =?us-ascii?Q?NI4FpeDisF6qX+VpFBx8vxgCmkvJ6gyU+KiHXJ7H/D4ahegPZhxR0D4RKDu/?=
 =?us-ascii?Q?84hChL9fkWNkwJ34qSfuBPw2GbKCo9cJxSNTMvAiPHPztV+ahL5t06fMHLpd?=
 =?us-ascii?Q?7qpRGMYtfxGKZCyON3uc95/Xu7pw+SuGR2Q2BY9ikylWSQ6bFYpcZrKPqCUo?=
 =?us-ascii?Q?Of+saFFUBJAWYp6jx/2EbKWuiWsIIp6aqKQ6oTG26ZlUqhz1/pfhm5koE7lh?=
 =?us-ascii?Q?dRDCoVdVb09xSnCo61c3GPh6RhN8COJEZ3YTycDi3CCVx6PBZPx6Y5/ZErKt?=
 =?us-ascii?Q?lWZfGYl+0tnhjTFogsmvmKSrcNiN4QxNTz1lZucG+djTAiv1KZ77AKE4sghD?=
 =?us-ascii?Q?wOv7fNxwXZnNgXSoQTKVtmu3o9b+I3oD278se3z7jqWu9RwSnnPAVJn/ONMN?=
 =?us-ascii?Q?0Z6Ml92SAxnU/SwzFggAOgdqkA+gKAJN0/ghSU/r8TnZ938IKrxZjmpI9M9v?=
 =?us-ascii?Q?8MycB+seHkVRjV8/Z7CILp7D6m6fJL9Vn+CjhWBfbDS1chbhgCf0x6UUrBWr?=
 =?us-ascii?Q?6nCCnbd1RJQjHjsUNYBeiwlDpGnmXe+FVPqIcDO9aFtI058z8796o5jhavp+?=
 =?us-ascii?Q?9ViVg2RVcU93tmdkxo6D2xApqUNTTT0ZPpTUpUAbxbt59FymAxjhUO5T6PC8?=
 =?us-ascii?Q?1BbHnjCURiPXvPhw/Xpk15G64Lg4d0VNY+kvlF+2FfyduSCSGQi6wq74eFy2?=
 =?us-ascii?Q?SQN7SkUfkDMeaeYk+/i8OgbYMyRKg6ZTz3eBA62A413kFiNyRTkhmxL5Mz04?=
 =?us-ascii?Q?1M0BXkaiTb6m5Clh03O4P9fkR2FW+bbDD1q5rwtaY7kL6a7hjk2yQ5T/dp1T?=
 =?us-ascii?Q?/+R3LrR/lTCusRGIDixcqo4CTwV9KgpblNrL2DgHO9fEkgb4Cwxdj3J4CdB2?=
 =?us-ascii?Q?3FoG5GtZs12G7zncc/Cos+Td9/ErSF4+4LItJOlZCsMYj6v9oVWw/OlKY9x1?=
 =?us-ascii?Q?sZKgOJdNz1hvl/Rue802I7OfQjLl3dNGQJ305dn9e2v5gSExMWq1vRvggWx8?=
 =?us-ascii?Q?YFhMwf2UueoUG+mcgH4nC3GGDbb+GQvPcRKTxFsJPmAJiWyXcwViGAXPX6FQ?=
 =?us-ascii?Q?vWZCFTadSYxE7NMYNqDAKgf3FiC4hIqVbc8JNSKCH4LK4TM3U6acWFIZxWoP?=
 =?us-ascii?Q?KHcPPmf0WKqWJxfMZYPGuQS/eGDqCaFLRffaC6OLnLtegu7kYNj4cUb0l/CS?=
 =?us-ascii?Q?RTZWNvztqQeC0mKAQcEmdLSlG759VnqeRRomsucagBbb74dCmnEKkDZJ/Ws5?=
 =?us-ascii?Q?++gL8Tlfo16nka8zWgyo940zUfzG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sZM+d+Kdas592AbJEUCD2qoWCvzSmNGItopwFk1yLLXqL07SJ2QyTQj52NNc?=
 =?us-ascii?Q?WACHyIZn370iVzJBtd2Gxti/qF//AChUeM8nU9ME7SvgDPlgatpeIamJJx+6?=
 =?us-ascii?Q?Tp4MqakAVShTqJRTOE9saYc/EvWOpfcKkd/Tb5P1DmGZcMQBLDX9r/q3/XkG?=
 =?us-ascii?Q?I4o7Fyr4EnMH4aPMEspJRu2TcouXxlM5AKcNeM1bJiZXKmz5GtuIvqJDXzL/?=
 =?us-ascii?Q?XdyYvtQkS7KcwE5/KZ4knGEz5nYiYf7BwCGrTtPz5cECGxgwKXJwndLzZaIw?=
 =?us-ascii?Q?pjl6yJp82BUlaK3uiqXJVrpPOTWhneRan2hYJ8CFAajeUY3W8k8ot9gCq1mv?=
 =?us-ascii?Q?VPi7XA++c66KtM2KzAsltssgBzQRJ2ZbEp3TKArjH8Jhk2WljShuhqpWYiyc?=
 =?us-ascii?Q?d9usqJiodSYmIRnpN3I94lfwE+V4WjMEDCLJ3zedgjdNWIYNSmQGoNrxu5AW?=
 =?us-ascii?Q?A4S+g9AzzysLR3WF/262Fix115MfA/j1d1y2fZtOEN1gnGeFJchk9PxmUoeu?=
 =?us-ascii?Q?Z7+iGJfbtsWA3YQNdjkDKEOqLjZFBALB/4htNgOaTLJcpqOqGRL2Z2XEcvI8?=
 =?us-ascii?Q?xctFm43ZIUPPzz3zEGzojk7wf2QO7G+cXkhyzqjic6xlRLYUj16L6hMM2PV8?=
 =?us-ascii?Q?qJcQbXqvfoCOyoZJUU8qp9vmTtZG2lAvkuKB2aUKuryN7obA8iifQyOfoaNO?=
 =?us-ascii?Q?1nldZAyu1f2Mmurjkehf8usCSb8SjrjJNXHPpnZdrz7BLLH5MC3nK9lQ5qtL?=
 =?us-ascii?Q?J/OjZl8oxBkuG5+kZ9oHarowC5WNIx13HaVW3R8Jf1Oc7B6M9NYiG35sPCn6?=
 =?us-ascii?Q?fSmQ173HvVm6dRUTnJe+yuRKeHCiW2x+XhMZnBZzfth7PIFR631fL8haypip?=
 =?us-ascii?Q?sBPfA/YnQunv/J5v7qVEASOBxCJ71JxWOxnKeX3jn6uOYQSIHSPUzV9HkIty?=
 =?us-ascii?Q?eSQUVQvn6RYdwCt5mErP9FTIKLKxSh6N1u9J2qVuihl1GiXsWUpYoH7UHZ3G?=
 =?us-ascii?Q?Kv3Pex6mZRIHfoDIMJt+lc3wkks0/mGdgO/nvpT+E9LprZzCTcptb0JIOjFF?=
 =?us-ascii?Q?4fD4mxw5oFhtixFxED3kHl0MffZJymS00XVJpU1NiUpR3rMH4C0VxWm5WcsY?=
 =?us-ascii?Q?k7b5vqERcZwkdEF2eCwluR0p0VxP8GyHITnylAcODt3QCsN+vYI6s5HYWlhO?=
 =?us-ascii?Q?2nlI17O54iFPDtkGLsGT7eLImi18WfsVn0tHcKA5hGnxZlYRDT4l0mUKiaqw?=
 =?us-ascii?Q?/UCAOWr6EYCWFyBwpIhmMsOBiCUPThsEj9k2ONy75p7b90omECkdtuugtT5I?=
 =?us-ascii?Q?2mndWu3V3FhJxa+t9K5eN2PmWn7b75KNzyzBGGsKkXWfIYIwpKj2t14xPIv/?=
 =?us-ascii?Q?wIx75qD25NDbKikaU3Ezn8kbYNW5ZdvSTvjJ1ReZaYwob+73aUL0ZmwaPCnb?=
 =?us-ascii?Q?zfaGpXFMbJltJ+n+16utHfXatnDwZxCeZp2sFQYipg07k82oqPIL1FsLrKd0?=
 =?us-ascii?Q?DPiEI5tpkzm13wPTnxfrFEpJCljyoImUDZDck6t3d9c4BQhO3zkkkBaUV1Sq?=
 =?us-ascii?Q?G1T+mE+kUp60aPBDGJF3TYzkY1MDpcvbdbufskZC+sFGP0BCkFM/edJY9Ka/?=
 =?us-ascii?Q?EA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7477f62-a704-4a45-cbe0-08dcac0b6a6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 18:07:00.9482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8bktYyKT9v2mB+XuDVLyCX9Lved6Rk2Z/cLY2UVsX6rTXnRlRux16QkKn5zPzbiBzKeiYeygL3PWpVIKR2Jn9DSUqr7x+4sIJ20TaAHd2M8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6508
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Sura=
j
> Kandpal
> Sent: Monday, July 22, 2024 12:15 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 1/3] drm/i915/hdcp: Add encoder check in
> intel_hdcp_get_capability
>=20
> Sometimes during hotplug scenario or suspend/resume scenario encoder is
> not always initialized when intel_hdcp_get_capability add a check to avoi=
d
> kernel null pointer dereference.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>


It is always good to handle this type of edge cases.
It Looks good to me.

Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 3ebe035f382e..05402ae6b569 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -203,11 +203,16 @@ int intel_hdcp_read_valid_bksv(struct
> intel_digital_port *dig_port,
>  /* Is HDCP1.4 capable on Platform and Sink */  bool
> intel_hdcp_get_capability(struct intel_connector *connector)  {
> -	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> +	struct intel_digital_port *dig_port;
>  	const struct intel_hdcp_shim *shim =3D connector->hdcp.shim;
>  	bool capable =3D false;
>  	u8 bksv[5];
>=20
> +	if (!intel_attached_encoder(connector))

> +		return capable;
> +
> +	dig_port =3D intel_attached_dig_port(connector);
> +
>  	if (!shim)
>  		return capable;
>=20
> --
> 2.43.2

