Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3A79AC1FD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 10:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065B010E79A;
	Wed, 23 Oct 2024 08:42:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YIwNUcXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C798A10E79A;
 Wed, 23 Oct 2024 08:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729672947; x=1761208947;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cUlOIVY0klBWggGDiUSTsMSvAnTdFIDe+rlrvPHK3t8=;
 b=YIwNUcXlvTJVpkomyVv+gAZTD8T7JvRGcHpud591H4Mo9pxRPu9KmgUQ
 3Ou2hrte2LU69WtPuXsLiKFIInVDE0rHZW4x3Y9Zpajikl/jhu98D1qhr
 36lcaYkScuvYUduPYlXD8phJlm7dBxOLrA5YYb2zWcUagYIxZasXRKbvm
 ac3THfcdyHEj3ncswGyxaDNJs7YLQhb4FIIXInqIxp9CUN/d2LaWgO1p/
 jsKYwV6iELUQBSL4pjI/mS/SD4TlJ+siXckM83fbyYvuI+YwfStG5Mqte
 gVKpS+5Q6IXw378SNahdHz26c0vUSNgKT+ksb29D0NUREYSt0LUE9Kn5o g==;
X-CSE-ConnectionGUID: x77M9OzBR2qISI/dbCRtHA==
X-CSE-MsgGUID: FkQ+bckCQBSDUDeEZvY8lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="16867198"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="16867198"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 01:42:26 -0700
X-CSE-ConnectionGUID: Ps4xcFpITvuXl+jN5RhY1g==
X-CSE-MsgGUID: 3FiDqN+DTcqgyr2PkCxJTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84930214"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 01:42:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 01:42:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 01:42:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 01:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PJr/YoT3yMctczJEFxV9idnxiiTPqgneLxTYloXnOxhfCPDKN1lSJOeERrp0pF6PhxCK+PSbkNQTR6vCBb+fj6QcdU1cyhDDGsKpwSyzOljWjhpxlOFbfH+BG3b3Ig7AeEdk4y62yHiuG/vPCupkbOMgrneYTaJaTusxfTcpAz8sjnnlPfwtfgDHWQrKPhj3DBK+OOoipaJeR1iFSKO4W64P2+i8WYynR2k6+R5WT2rVNgdwJVqjIRxMJDncOLM6qTREjYfaom9aGZxWgoZ3/ibNPHTXtqfOA8m1euzWsXsoKVy4odAu8LQ9dV1MtQh8+O/nyvcL9vLwGb7RMiPRMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4A4calARYGUp35z5DrkAOUdsAVcZedT0o+uWPzu7Q4I=;
 b=op+LFa+ll7VLR/EOmTN8jQzeSgY3WIOSN0GP7/0KPe+JJoyRTubkyhp1b7yDGvrnmoXh4uwGUq6b8jJwmL+HS8AtBlU++k5y9cX4pVAMeyo6b9e7+CXslsAWjE2PavZaQca5VCEeanGAJnVZM1nJCWUv9HKwKjX5nEsc7pxz55PbLloUZMa5qX01VDfVEXGTrceKkkJGQjnMN+2Kgq+bMjZTeGnxhlcmCg1WGzjUGin7BcYgDdVsAR3FzZnPlnVgSj3BteSBL7FIFJ8UqtRXCzOnRGo9n9rI/cFCBt6dUTMbk1Sc/tmY6fD8oY6xOmX9gLENtSLsY7DxYs9yEr1IvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7740.namprd11.prod.outlook.com (2603:10b6:8:e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 08:42:10 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 08:42:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitter
Thread-Topic: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitter
Thread-Index: AQHbJRfnWUUoZDD9aEaI8KrhWOcjV7KUBJXw
Date: Wed, 23 Oct 2024 08:42:10 +0000
Message-ID: <SN7PR11MB6750A7765F27A7D40141858FE34D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
 <20241023065257.190035-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241023065257.190035-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7740:EE_
x-ms-office365-filtering-correlation-id: 5e20d635-1ce3-4d33-ccea-08dcf33e95ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?35vlkkkvzojRWtPQ5qgvAzIkdqhEF6KqBbTF4jxpJNxKXPSf0MhmdeviHVMv?=
 =?us-ascii?Q?Yw9zQXDy7zA+Zmrjhzy878m7nMkEryQSEB2PlYMFDTX5hUFu50sS0QJVRt/a?=
 =?us-ascii?Q?iAkRFe5Ysk+91WPM2mffzAnB28YhNMiO8UhdOa2tNmmeAIv5ew3bXymY2eXR?=
 =?us-ascii?Q?klsRR9O6GhnFqhWd0F7i+8RKYTbYnfAH6WacsuMxnSiJ2LxAosHQlThe+DH3?=
 =?us-ascii?Q?QbxZxeiQcX4BdvpQGAxu3uXj8dbBHCVwmtcPhEfnAd1mazRbQP5MmhEXoz+i?=
 =?us-ascii?Q?4yODcMz8/yt1Mw6M4OQL0mNgjvzeMUGK4kRJ0nc2hZzYXvLXgOGKeXtPQuJu?=
 =?us-ascii?Q?itTn82B0KpzqoandSryGPdTY9sxKQAaZdNe76aRfFzG4pQX3UJF1dj8MeoBJ?=
 =?us-ascii?Q?si98UAXpxVTf0XLQxdrBf6Oww/AV8dAKGJxP35HrKX2epGQ2ITMU8Ha2DDav?=
 =?us-ascii?Q?xCuCpYVIgaARFtNHMxOeTuxct87dN9ngKdn6rv0zYyjLDUw8TbvAaAdM9mHu?=
 =?us-ascii?Q?+mtl/RFb49Lazkep9SkTlQVeVYmiAij+Q9LXtlHsSVroKbC1pQghGRXAk0kV?=
 =?us-ascii?Q?WI3eRh+G/Jbdj8j3LVxUQwNX4pjEqLvHtffSb642srb6Pwm2WKa86aC7N5VO?=
 =?us-ascii?Q?XFbqeA2SMsrIoL4FnkGoVQj4oBill4J2HCw1PnJHjRM6Hrqs1/57R/v9pTd6?=
 =?us-ascii?Q?eZ929nDozQpkrWTtJVYXV/DING1mDJ1GFbnE6RdAvaEnSJgYcTL4gvEphi/V?=
 =?us-ascii?Q?gUJF4BL+/jXuMnz8ALAZkmyJxgMMAOCiwoMIntEk4JMbZx/D5NpjHR98u+la?=
 =?us-ascii?Q?/ZojIESQn2ll6chVHMxXJ55VRHBez8KDmTg4LFw3e3rZwqTWWc16QRUg/EOI?=
 =?us-ascii?Q?OpzTJyWsH1yzEU2OpDBHzg+g+XcgGxE4igbQxyLak+r+Q4b4tKoqA2qIReim?=
 =?us-ascii?Q?vBKzCT3+kXl56ozRzLOnNJcNhr6wc64/uLxT8leVtIcxgJgO6knUAK81Cip1?=
 =?us-ascii?Q?Ub8jEElkUXjjtddaunMv52SwzeTUI+u3LIFPGttuNuVBpDRnzddHtKr+mcMH?=
 =?us-ascii?Q?kDvVZblRjS8LLzwqzr1PZqnSal+No10d5v0gW2iXIz+pOhQm9L6TCG0sbk+K?=
 =?us-ascii?Q?3uRCdKKvDNIGv3BdZvEabXToy4t42MA8mAR419Bk1DGC8nLYoKEOdrSnBDAl?=
 =?us-ascii?Q?IjITMVGalzrmWypuYJ8LbEZMeNsjz5lKBOnzRMde4HV5T4iBBowMV61b1zUZ?=
 =?us-ascii?Q?LLWnwtdpHpBDia/Hmw48B0/jTm10becVfjtjY/IVQhaeYkliJ3YXzjFJzPSU?=
 =?us-ascii?Q?EG1V90qGpXr8gxiS656g8dlREbchOHU9AEnickk0zSlpyJIwcpPmTsNyqfqo?=
 =?us-ascii?Q?agGBwa4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HFoVkQT1N2PRF/UAP2IoH36kRZpnT6H6BvRL6tj7TaoIDCkDXhfW5CEKcXuB?=
 =?us-ascii?Q?mT/xtEoPyURpjRoAD0AwRLJMfJG57G783/nq9pbdVrBxP+Xm6e23tto0V8n0?=
 =?us-ascii?Q?WfePuW4wyLsHUZ0zBT67DWxX6FM0JKNRpNbH660r9LwVFSlCdw6OqjGJd66A?=
 =?us-ascii?Q?MkGLEGnhG4aJfqEQgXYpq3ufifEYgQi3yJG8g3Htg5KGIxSDJo6JQ913WixX?=
 =?us-ascii?Q?u9bgbAemn/U1i95TjNB/ZtZFeg2cP2l/fRbjh2xaEvgCQGkKcrobRTp3rMH9?=
 =?us-ascii?Q?+z0rXZlum8jaFunZK3b610RTPEY4e1hvjaRHZQ0jHaOkvi22rGEh2UIV1OOE?=
 =?us-ascii?Q?d4mbDHS4tJ5DzqQpJXuHub83PCIEd1Tc0ZnQBRorJNoCGswfkKQ4sd8xYGFJ?=
 =?us-ascii?Q?V8fjfhDLC1shEcEdd91/FuHb/fdQYx//Z3L/3jThtascfMED9CGGYmUdcVMk?=
 =?us-ascii?Q?U+/pmJakVC3wOAe5XU4bgfIczjU9Hk4R5bHDeR6f708oiltA+CXq4W/UwB3y?=
 =?us-ascii?Q?ah9Q1umkn8+rKj9z5H2GLIY6sjFEAfaFqg7TdgXPNrO6kZN3VRL8s77g0/77?=
 =?us-ascii?Q?VFyiVYvYtU56v2eveYdisewqVOVdd5VRuW4t30o+89xugG38n0bMF4htKDmN?=
 =?us-ascii?Q?SyAXVxKEe7Fgr4r3Or2BufWf6QZeuiwbty8slDqyQkRIZj92lkbDN8WvSVCI?=
 =?us-ascii?Q?DIodIMisbis37lqRI1eN7dH0XF65Imt+kMol2AKcqaMh/W8AWMgLRA1/Kk0i?=
 =?us-ascii?Q?6ts10ArIbgtnqhpkXvQ2AEBWznGnwbYmYYL6DWtJx8I+j3V4UX3t6Ey7BRpv?=
 =?us-ascii?Q?LwYN6357J6SlwVY3WXaSytj9zDl/8cNKg6fg+8Q7u16+VET2MoI8E+EZcOBh?=
 =?us-ascii?Q?Swwes5vRsIQYGsFmriSPoLztTpmSqVfrDwmAMP4Ul3Yu10SH1FuxfKreIDJN?=
 =?us-ascii?Q?os0I9LYZ+bzePvTmMVtNSyO6pT7BtyNLzxyCckjdqRtOMfL1En85aJvWtab1?=
 =?us-ascii?Q?Qp39csgcfdN66ofMw+Tu66n47UQYip2knPJt38N4ODqZRb1ptERVQzbocVvG?=
 =?us-ascii?Q?r8gOow4D+gkPHaZZnDe5sDEst0DKsvu7gLmGwsSr6Un0B9yPrQE+TwzdDfRJ?=
 =?us-ascii?Q?42TGA6UaK4Ce3rW5XUDGVtRpyC0WnZKvjhRuN0FyxV8Haocb0bD7pX0b8z48?=
 =?us-ascii?Q?wYCXbccItAApq6+TVFjETQNIXGkoN7J7r059oiyAK8y8MeiqUgXnonn2NgsI?=
 =?us-ascii?Q?6fksm7drnN5uZZhBNCcojYuOs9h+oBJngCDXe+cS0HgGlZBpsZkrMAAbSN/m?=
 =?us-ascii?Q?BBdVEPHi9CAuaImmy5PO3uVeNWtmXnjfKTjxB+/Ua/SALTUUR+1g7Il9egYC?=
 =?us-ascii?Q?D96rIqpwQACezCotM6SXq/OJupbEFSWIYtgtd+yaXBQe5LrkBxpNFNHNxCd7?=
 =?us-ascii?Q?W962UDnAcpZi8kF19PTtY+In9lIZ6yRw8VsmKxON9JYPtHer2Vu+cYucri/s?=
 =?us-ascii?Q?o2P7F9825usO+VpC+wzLYvzAPJcmQCt4WZ6L96DDxK3FhNQjx8cuyBjKl3dj?=
 =?us-ascii?Q?VmaL/b1CZ6K72XGcM93NiiXqmY8NdUin85BWhscd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e20d635-1ce3-4d33-ccea-08dcf33e95ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 08:42:10.8189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oU7OyDoOtTla8prhh64t1Iq6Wtg+Uhn5e6JySvMCE9LPkviJHPjuGIxK+2pR0s4O9V68ydnc6uIi3TGHjtWo2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7740
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
> Sent: Wednesday, October 23, 2024 12:23 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>
> Subject: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitte=
r
>=20
> At the moment dsc_split represents whether the dsc splitter is used or no=
t.
> With 3 DSC engines, the splitter can split into two streams or three stre=
ams.
>=20
> Instead of representing the splitter's state, it is more effective to rep=
resent the
> number of DSC streams per pipe.
>=20
> Replace the `dsc.dsc_split` member with `dsc.num_streams` to indicate the
> number of DSC streams used per pipe. This change will implicitly convey t=
he
> splitter's operation mode.
>=20
> v2: Avoid new enum for dsc split. (Suraj)
> v3:
> -Replace dsc_split with num_stream. (Suraj) -Avoid extra parentheses. (Ja=
ni)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           |  4 +++-
>  drivers/gpu/drm/i915/display/intel_display.c     |  2 +-
>  .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c          |  4 +++-
>  drivers/gpu/drm/i915/display/intel_vdsc.c        | 16 +++++++++++-----
>  5 files changed, 19 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 87a27d91d15d..7d5571c39b7e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1595,7 +1595,9 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
>=20
>  	/* FIXME: split only when necessary */
>  	if (crtc_state->dsc.slice_count > 1)
> -		crtc_state->dsc.dsc_split =3D true;
> +		crtc_state->dsc.num_streams =3D 2;
> +	else
> +		crtc_state->dsc.num_streams =3D 1;
>=20
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST; diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..3dfff0a8c386 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>=20
>  	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
> +	PIPE_CONF_CHECK_I(dsc.num_streams);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>=20
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..5611a4dd6a6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>  	/* Display Stream compression state */
>  	struct {
>  		bool compression_enable;
> -		bool dsc_split;
> +		int num_streams;
>  		/* Compressed Bpp in U6.4 format (first 4 bits for fractional
> part) */
>  		u16 compressed_bpp_x16;
>  		u8 slice_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 286b272aa98c..77487a55280c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2409,7 +2409,9 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	 * then we need to use 2 VDSC instances.
>  	 */
>  	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
> -		pipe_config->dsc.dsc_split =3D true;
> +		pipe_config->dsc.num_streams =3D 2;
> +	else
> +		pipe_config->dsc.num_streams =3D 1;
>=20
>  	ret =3D intel_dp_dsc_compute_params(connector, pipe_config);
>  	if (ret < 0) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 40525f5c4c42..afc40d180dec 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -379,7 +379,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum
> transcoder cpu_transcoder)
>=20
>  static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state
> *crtc_state)  {
> -	return crtc_state->dsc.dsc_split ? 2 : 1;
> +	return crtc_state->dsc.num_streams;
>  }
>=20
>  int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state
> *crtc_state) @@ -976,8 +976,14 @@ void intel_dsc_get_config(struct
> intel_crtc_state *crtc_state)
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
>=20
> -	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> RIGHT_BRANCH_VDSC_ENABLE) &&
> -		(dss_ctl1 & JOINER_ENABLE);
> +	if (dss_ctl1 & JOINER_ENABLE) {
> +		if (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE)
> +			crtc_state->dsc.num_streams =3D 2;
> +		else
> +			crtc_state->dsc.num_streams =3D 1;
> +	} else {
> +		crtc_state->dsc.num_streams =3D 0;
> +	}
>=20
>  	intel_dsc_get_pps_config(crtc_state);
>  out:
> @@ -988,10 +994,10 @@ static void intel_vdsc_dump_state(struct
> drm_printer *p, int indent,
>  				  const struct intel_crtc_state *crtc_state)  {
>  	drm_printf_indent(p, indent,
> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d, split: %s\n",
> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d,
> +num_streams: %d\n",
>  			  FXP_Q4_ARGS(crtc_state-
> >dsc.compressed_bpp_x16),
>  			  crtc_state->dsc.slice_count,
> -			  str_yes_no(crtc_state->dsc.dsc_split));
> +			  crtc_state->dsc.num_streams);
>  }
>=20
>  void intel_vdsc_state_dump(struct drm_printer *p, int indent,
> --
> 2.45.2

