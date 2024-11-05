Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9359BC377
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 03:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC75C10E4FD;
	Tue,  5 Nov 2024 02:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVD/4Ndd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8E710E4FD;
 Tue,  5 Nov 2024 02:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730775491; x=1762311491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Q+N9UcXNzQQkmobSg4wxAlU26Y+UxFSxuLAuk3dIbE=;
 b=OVD/4NddvoGCTzW1q1bA2GM1+QyVXN07KNZk4yjKhpDy6wXxLkwdajHu
 tZCPRvz5rHMJ/Ct01L/IK519M3JY+qz1F+wE00rM/BbALUGkOFWQgbmbJ
 LHne+DguKBuTppIVAXffBS1sKVLKbga1fY+fhWdhwkeXGPmg2J4JSUFI7
 +e2wBZE8xlaMKU3Aq3czW0Xt26UkFTl2ySN6hHvCBJ0LyoRV/FtUcC8o5
 SyES6E7r04E1xTsv1FKApqCKMxr40p6qUy9e+ZXmyruvhaEMUgAvzKI0j
 nvUsQORIE7O99zlZtIHiEljwaruelJbGhhuNGW6aNvrs/RQaNdibMkARO w==;
X-CSE-ConnectionGUID: BBZm7qhvSnKJYZzaNdHYzw==
X-CSE-MsgGUID: fxyjmm1hShCxfXoEc9P4BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30717086"
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="30717086"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 18:58:11 -0800
X-CSE-ConnectionGUID: GD+1xJOBQBmWcjdas4/vfQ==
X-CSE-MsgGUID: OBCn0zrjReW/WzZDBtfHzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="83374418"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 18:57:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 18:57:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 18:57:58 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 18:57:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gfCk/wKrCm6aP9oesjGUPQuH/rtDfxeqmGcIqQsOUifBRStp9yOlEUEMsnqHIlBdFWMhouB6isznBaQ08HFUc22m2/phWgZ3PHnOE4DEEzv8MytauN6dadn7opfE9LKjqibWq21yzNxT1AMDE3xfHwyLW0rGRgsB+VqNKKbtHMLhKnn/uqRorsA6YJnyeU70Io3OIlUMouwHiniB5fXlmuWn+Lf05y2aonpoGGYBHqFNcEcP/gHqFSmKTIysyYVpIXA2Nu1ty8hBWkNd/A4XrLF/dkZQ3KLmUzXQwAQkg/B1iPB3dfhQ36+Z20VeqMbb2wiIUIwwCVMiH9CVVl9JNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8mtyBCuf65ThJHYGBSc7f/L5BLGIhA96IYK7mvj7nws=;
 b=r0YtzBS0YLTU9PM5TbEJRAsgzHZfVOLezvNk3edikCxPbrNGPhyedSEBuGh4Ap+pVtlEPr3YS6CTvlxmFKUiZwFKFjq0WK38dYkmW3uej4zqtQQH1wcsqEaBb3kziJSnh5ROc4Gspb6H/ViVMnhIRs/m0/Dc65bJryr3tp9AaMEDvVNVEOt6a79yGJxLngOqbTgUMIq6AKjJa8WAU+IKf7EbxQV5OGlD5z9Glmz/FQFOx4Lj1cOMnztOsi5ySGC2THwq6ZYvMlNqVhy027ZNJftKftomH9zfK3j6ThBJ0udHhx64v9KqKHmcM74FBS5DORbwNvaaHxeaqF0vMyA2eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Tue, 5 Nov
 2024 02:57:55 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 02:57:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH] drm/i915/xe3lpd: Update HDCP rekying bit
Thread-Topic: [PATCH] drm/i915/xe3lpd: Update HDCP rekying bit
Thread-Index: AQHbLuqKUyxzKIVNTEGLX/zJ4tvToLKn/vvQ
Date: Tue, 5 Nov 2024 02:57:55 +0000
Message-ID: <SN7PR11MB6750C6400EFAB4D06B530753E3522@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241104185055.739605-1-suraj.kandpal@intel.com>
In-Reply-To: <20241104185055.739605-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8344:EE_
x-ms-office365-filtering-correlation-id: bf089c9a-1543-41e3-347d-08dcfd45a5db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?a3rtBNSmHmd4JE54+YVjhpfP2HPgh9wz3rJLZQ3hw1qs2N/tFYEyJQluR+yM?=
 =?us-ascii?Q?FThT+eKoVTYOVR6tSINq2xoF2zWHQ4aW3It/Sibt7jFX/AlT+P+5Ou7BVK9p?=
 =?us-ascii?Q?tXEn37TDEQhoQ30RCM4OYZnnTKsQnvcHy8biN6W+wp3nX7NCXxyQB4q+xM+h?=
 =?us-ascii?Q?qPf2GtYkdiian5cBybHJPP2C9uiV3G9Bowly2u9jCnv3bUmEPxhTxkAwk0r0?=
 =?us-ascii?Q?YFy/NfZA0UeZlOnnBIfplPQNlfsWK0MscM9rL4YrEm61gHG/eabjr21AhVGm?=
 =?us-ascii?Q?iGR1vCFwbcAVq1EnCgC9qLz5nXuiWUYpBxjwov5nKa+tRWW10c7sWLvbDh0H?=
 =?us-ascii?Q?FypIBDNGpGkujNtWK0hIFx63GIkAr72ZsQVvKLLCRdA8eXTifGQ97lJMO0fm?=
 =?us-ascii?Q?k4Z72vRxkjMa8JaoLQ/W3CJP42y5QqCGsHYJ8SmA7K1AGQqEzJB7ZYVG8S0V?=
 =?us-ascii?Q?K1DZdL5cki1jCXZ2lwyrXb/t1jvx3aWHUraqzTWAMjFfDCrq4zZkayikTfEX?=
 =?us-ascii?Q?qBaOGF/Kiailn5I1BBniWVQ1DrGNT4xI3SqdyAHdpP8q9ZhIj4+qvYzDIefA?=
 =?us-ascii?Q?BJPYihOJDmT9vAjR7z9AaC+jslzOikTx8vfl+AYUCbFU9Be7AqP/hgg491Df?=
 =?us-ascii?Q?XrmWFN9LwFgr1XU+IAWKLq9/183aYOGhpeUZIhezlemm4LFZ53LgEInygq9j?=
 =?us-ascii?Q?yhRTJCnaBIov+XTdn4ieQh2aahGw3tqu2Hxr19mGF5ZIQWh6a/d02b+BJUuX?=
 =?us-ascii?Q?IQLfsWE6Ixr7RM5M++DcECw0Wan8xIOBgbXLQ34DtDrmMe52tLs/7yhAmFj4?=
 =?us-ascii?Q?+eiyVZPAZYKDtvD203mQAeCkp/3I8FqaHRRQ3WvtA1MVul3B2RF96dB1G+fD?=
 =?us-ascii?Q?kekOdUiX+/jdDEUOce12b2sz/otj8qJpJIOIvSe9WvmYbtjvuFPVZdU6sqgQ?=
 =?us-ascii?Q?Y52LLKc5pz/MnyxCXl4SqWpKVLnwmMHAH6B0PbZnywBB2F01N5Poh7gJb/Kz?=
 =?us-ascii?Q?4IT4e1Cf3UC39hbMYQ4YARQby8n/x5N52ByVV0BI8R5UFk4emX3kAwtx/t8Z?=
 =?us-ascii?Q?+JDXmf6YszZE9dPgXsgtERwrrPftUu9ElYr/YQkplWJbVEgQFjnZ/J1nCOWL?=
 =?us-ascii?Q?wcRPbGNlrLcgzuhnWUOIW8EKh0zyWNCYQ3Tv/aqDtJ0Tj7XBnz2OqL5zAPyG?=
 =?us-ascii?Q?gWf5Aed7UQEWveWKV82wnz2Pb1VLkp66PLe8GnOhLnN9N5Dv07anpN2fGzuG?=
 =?us-ascii?Q?Z2JjEjGkFZYaXYsnWz0m1tv/g/+ylbNk5w7sZxth0BRfQbrUAXX2CDbUIxFm?=
 =?us-ascii?Q?VkCap+hV+veF3j1sNHyKs7C5eYqhRNFLGeKkewCpuuhSqDQ2MiJ7Wq+Iy/7i?=
 =?us-ascii?Q?P+CqCcQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H+DvA1oic0e3yqiwef50dOaLsniroVN/S5DH70DLsIzop7KqPlpuKaWMxRdP?=
 =?us-ascii?Q?R4SFL7k67JU8hEN24QgE1qBD4IjN3073TXSBIe2Ti4ilQki0DnQjfmHmVfqM?=
 =?us-ascii?Q?xxEccC15kS7dcudbK6fq1XwE2yatgKL12PJfXi9zPBKMVfwYAUDBmrOCQVb0?=
 =?us-ascii?Q?6GaAN8SZHlGmgKiIJdrqv7jIS3bT8TlWpu/GSMhKMfWKmGIwRNDTKH6iQl2O?=
 =?us-ascii?Q?dunWJIUFX2x+vWCd6N9G2IacFAwh4cSvWh53ub8000L6PwxdsD1Exas2XxrB?=
 =?us-ascii?Q?ppb+oF/BBlE73hmq6i+GhKvVwXguSo3j+ZbO/fEJJ6skyPtQJMzIyDtJdFMT?=
 =?us-ascii?Q?ZhF59vATHIHqf0EVrw5B+3d3G6Al3QOSpJzuHVOFBKGbotgCJ9Upx7ATvBfX?=
 =?us-ascii?Q?GXrKmN9IaYIZrOqazD7oJso9SOIP0QoB4T9T41DjztarySimA/Q70sn6v6cd?=
 =?us-ascii?Q?5N3uZrPd4OVNx43n4MZW3DtRuhrcY86hiqQ0NJDl2cTHokTmlbhnObD+St96?=
 =?us-ascii?Q?IHaN/KCp2FL4lii+kY+PV/H+H0zHGbF/SVXLYYld8/ndchv4qEyK1SfJNW8Z?=
 =?us-ascii?Q?cmcJDEJUIQBOTd6y32m3/fPjqn0NYcc+5SJENeNS1grao++RoiZCZY/650uu?=
 =?us-ascii?Q?LjOJrmdFvazEFwzdt5HxWBOSrX1k9404k3/JGdH1PRr7FfRgomlzAcqHU0Q8?=
 =?us-ascii?Q?qCUTPur62V4vnT8JARfCqWuyNJYv218IVY3I8y+NTGn8JBfe9wkRWbfTeHlG?=
 =?us-ascii?Q?mkRs3I08zlj6SJots7bRcLWzZmMHlKoBP1ArQDIA4kPFV0IZLOwIl5VhJjj3?=
 =?us-ascii?Q?3Q9K34QqiQmlWNTNs0flfgTgrxYrMS2J/Iww/FlGlYFZg+r1lduu5piCbS8h?=
 =?us-ascii?Q?PduUlYDumSXFnHS0i9qa6hpJJqO1qkcDXMZAv0ScHYUwHcqewf69Xaj1UUGs?=
 =?us-ascii?Q?nj6B9JDMnCB0mNHEm/dMv/XYCf3u790isxVOj6vDxhw7rujcA0rUcR/YfazI?=
 =?us-ascii?Q?/63LjwD2VLjZu+dBxk2D6skZO0Y62ptC5ZB7cMQQMNdIGKgLy4E/D8eVnmiI?=
 =?us-ascii?Q?vZvvLjz0bsnGfn2DeZMlVZtLF7NKmEtCwgHVKNRhZkt3QMrs809aIT3f6h+M?=
 =?us-ascii?Q?Uagly/tKudp2LajtEisPVZ2iWVVhQaUQ/j7/H/SpAnswmRjvAtDRvxRdoV5g?=
 =?us-ascii?Q?lyzGr9CfbSgexA8iOXqLCS2NdBS305sTbjrzJJc0JpyKv5sXLtmA4fLG7GPH?=
 =?us-ascii?Q?/FZqB2IHdpC7Inw/gQgd1HLfs3AxnI1GKtAuXk5TeZD5P8zJM0OqPk3FISYc?=
 =?us-ascii?Q?z3i+oYSP2m+08qvVKJodC6B5ycOPMPxpmrf3JG4bDHzphgtU5pSukDtz+VeO?=
 =?us-ascii?Q?yoOxc+XsclKgW9faOKUxB1m6eUfw+O92gzE7mlM9kHblEG97Og68jilb87gh?=
 =?us-ascii?Q?Jw7Glc20rz8HO9hf89zwTgvjOkmrhrfJN3itbzPtIgHgzV08c/cIQwl/1xeV?=
 =?us-ascii?Q?12CS5E6evgEpv6ffgR4X2iw7OWx0aZNTpRBENx9hBdLTY+vUvRaKPuYNK0ry?=
 =?us-ascii?Q?e97rCDPgzKwze0m+5GnCz11i6mxPHQvroiroYl6H?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf089c9a-1543-41e3-347d-08dcfd45a5db
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 02:57:55.6488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 24IhH4LcIrCkrR4krvY8pTQUAx2GcLvYHRhp/Zg8aZjQElLhrcihzBWBzbhDTYKYyNgaZYomFLFxNLPuxkC9yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, November 5, 2024 12:21 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/xe3lpd: Update HDCP rekying bit
>=20
> The TRANS_DDI_FUNC_CTL bit used to enable/disable HDCP rekeying has
> moved from bit 12 (Xe2) to bit 15 (Xe3); update the RMW toggle accordingl=
y.
> Also drop the misleading workaround comment tag on this function since
> disabling of HDCP rekeying is something that happens on all platforms, no=
t
> just those impacted by that workaround.
> While we're here, also re-order the if/else ladder to use standard "newes=
t
> platform first" order.
>=20
> v2: add additional definition instead of function, commit message typo fi=
x
> and update.
> v3: restore lost conditional from v2.
> v4: subject line and subject message updated, fix the if ladder order, fi=
x the
> bit definition order.
> v5: Add the bspec link and remove the Wa comment tag
> v6: Rebase over new changes
> v7: Fix commit subject and message, reladder the if/else blocks
>=20
> Bspec: 69964
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks for the reviews pushed to din after correcting the subject line typo

Regards,
Suraj Kandpal
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 23 ++++++++++++-----------
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 13 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f6d42ec6949e..4e937fbba4d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -31,7 +31,6 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> -/* WA: 16022217614 */
>  static void
>  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  				      struct intel_hdcp *hdcp)
> @@ -42,16 +41,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
>  	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
>  		return;
>=20
> -	if (DISPLAY_VER(display) >=3D 14) {
> -		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> -				     0, HDCP_LINE_REKEY_DISABLE);
> -		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> STEP_FOREVER) ||
> -			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0,
> STEP_FOREVER))
> -			intel_de_rmw(display,
> -				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> -				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> -	}
> +	if (DISPLAY_VER(display) >=3D 30)
> +		intel_de_rmw(display,
> +			     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> +			     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +	else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> STEP_FOREVER) ||
> +		 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0,
> STEP_FOREVER))
> +		intel_de_rmw(display,
> +			     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> +			     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +	else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> +		intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> +			     0, HDCP_LINE_REKEY_DISABLE);
>  }
>=20
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state, diff --g=
it
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> 22be4a731d27..c160e087972a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3819,6 +3819,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_PVSYNC		(1 << 17)
>  #define  TRANS_DDI_PHSYNC		(1 << 16)
>  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> --
> 2.34.1

