Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26BA9951B4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0A010E560;
	Tue,  8 Oct 2024 14:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKPAJYbt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248FF10E55F;
 Tue,  8 Oct 2024 14:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728397881; x=1759933881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wapkxQhAHlNRg1wAXQ+xjjWQPbkbB3TZtTAqc8wOn80=;
 b=QKPAJYbtyDJjxsOHmBKd5kMHQRvg2tM0H3qG7AsZSerrwG6iBmWb47Xy
 aawuZ++Yi2VbZ3j5bcTGPOSL6Mf2WkjXLT8G0ElRlmnehMbTd7TnRg0/e
 rOnwC7797lVpCn6qJ4JuJNUKNqqlHCzs0zQeaHLLxRmg5uzs2B5T1WVMo
 nRXc9W96xVlQVfOpjNMIOBgOsOZUsqErXrH3BkTUfbnpJYEYKqXgsQJb4
 w3auJ1b4CvU+pjG/cMSBvyED/0gTWU3OVxeNjG0leyNrSFVs+6g8HP699
 swROfl/2mTlMUBctql4STbTN9YGh8Fq5N8kRTT8gYB32XJkTzeDZDdITQ Q==;
X-CSE-ConnectionGUID: AosdGS4lQwaPu3lcr1YwjA==
X-CSE-MsgGUID: zuMUqY+cRsKJWG0iwxTIHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38165358"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38165358"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:31:10 -0700
X-CSE-ConnectionGUID: y0k5zHcMRNazQZU5Jex0xw==
X-CSE-MsgGUID: /bsyHfe0T2eUQaIPDjG01w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="80643497"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:31:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:31:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:31:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HrVuEWKHnMzOt1nf5IegPHKpejFa2x730ZkoAK3cD8XXbhFCE1AGolbcWBPFITwqybOwPHqaq0svIZ/7v5i643YWQLFJ1n8myFTX6QPdNbAwumixy2j4/Qlk7uIcwus8IMFEo8DOkwkWu3bmd3bV8uZtVzsRypUqUVMeoEJQdPqb7XGwDXVofQZcKk+6o70OuqevVmMJvq82BE9QGw0pzulXMQk+NOPMx/xL2Yap5P2Y4WYYRJFOk5MJfZwtLILVH+4UcDi7WrTflmo4Ggp83by12U0qAFI16cefdexxAploDE2Lop46vHJmkMbUW/6p6gkquayGAOQlqjNH4JMLoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=68lzM844FwVOwoqG5Y/71kghbx9uFZbpYeawxABRuCo=;
 b=OP0thCANuu8wU69A+vCeV0oP+PjWqmPzzt011bPQ0GbZ6b1HkKDXiTj/kbIP03e4eLUlnKpXJJDW5hmuSnDVOdEFGgJUIHGrDLw4Tmq2HtPMUy7aKeLJ+tsLY05rDktaJjrxTeSYl4cDVVJa1ZqCl24zUoWjEBOp5Wwn6JVCgnbJVwI/dimAcO5iKK8aFPQPhoh265a9n6BEz1WQvZl+JdHTMm+38LvZbvsj+sR5x0+ppLQTM6ub1IDUaHTRvxQ69lX3joBwyRJTNfi/K+Tf1gnrua+m3fL5r8bWUhkIzpW/oTzZjUCGrm/cORnv+S6cee2YfjMGhg6iPoebWMuiJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS0PR11MB7927.namprd11.prod.outlook.com (2603:10b6:8:fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 14:31:06 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:31:06 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 23/31] drm/xe/display: Prepare runtime pm functions
Thread-Topic: [PATCH 23/31] drm/xe/display: Prepare runtime pm functions
Thread-Index: AQHbDsKA8BbVuPgid0iVMzgIr+5KMLJ8+xMA
Date: Tue, 8 Oct 2024 14:31:06 +0000
Message-ID: <CH0PR11MB5444DADB34EAFA259D0A1BA6E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-24-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-24-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS0PR11MB7927:EE_
x-ms-office365-filtering-correlation-id: 5984c538-2252-4f18-8208-08dce7a5d818
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6AuE5vzi/V8cJIWbP1HTbS/69Luj390cezwJJpJBh04+C+2wv8vFwXkvdZhB?=
 =?us-ascii?Q?7mo1La+OdJrAojpB64L38LPBhea6NPtCMtU9SIMbot5tjN7KU9N4+fFkZYjf?=
 =?us-ascii?Q?rFLPX0ULjXMYtG49s7R6Rg3teRGE4ZX5Bva+tPzUrARPC4A/eiUaPRel8Imz?=
 =?us-ascii?Q?JA9IiM4dGQQY/VXSgiq1wAylj1CGsh+C4B6YMrd8+cyKxwXpvXzZHe+0O+r6?=
 =?us-ascii?Q?HNxJEZ3U4TVjgmrdHYYH7aXAiZGQDCbxiEi4ZJnYQ73E2hCc12fy3QmmIdAi?=
 =?us-ascii?Q?4mfPZoH9FecB84XIhmvoq+hF5i5zDzsK7sy2oG69auvpK8MG4luzmOggpn+r?=
 =?us-ascii?Q?3hZEv63FWJh8lSSzQ/MbxYfqNSDuWgxReP5lKVU9qO2l5XJc/yiSL68LrLBD?=
 =?us-ascii?Q?5yMs6aYhdGOh86mbPpwy2v/RC27Eg3OLq5XiCWOr1yd9MDpzsxg+wJ/DC53y?=
 =?us-ascii?Q?olr4Q2hw1yIpUuv4LkKXWTPutx3QlasaCAPem6VsSRfKLsWIHqoQwjbSTBKS?=
 =?us-ascii?Q?Sq6VEu2d6lV4HZUK0pZzF2Zptfg37zNsfuQy+aokhNiDK+MdCtj0jPrW5fWk?=
 =?us-ascii?Q?J15TDfrvS+fXBPXU/INhTI27FLghMnVmBSvvTsJlMfvavl+z1Zge3I6uChn7?=
 =?us-ascii?Q?HlmJ6Y0hbcFjuUoNsruVDLEwh5a8SOY5BUt4M+RiDw7teNa9vojVpz2ScJbW?=
 =?us-ascii?Q?Wdln8GTewl32GvXgOetlsnDisa0dG6ZZl0kjIkjepDdsep7jdsoNlRiIZhkW?=
 =?us-ascii?Q?5mG9GDYnIuxYulFVT0vwSXQwRxhuruTZH6P40fSodXrYbPSaC748FEScsTqo?=
 =?us-ascii?Q?s1k4Sf3nXRc6Jh7kLCXcZqRvkCeXZYDg4P3wCP6ZHO45vW07GOw/ZdoWGlMi?=
 =?us-ascii?Q?W+zJDhAhhVASc4LAeyEqEmvCdfQLOFQ48Wk0qX4s0rePOidDI8+GyqKS/wPJ?=
 =?us-ascii?Q?jxuPnQHAIllx4/GjoCwH/WbDQyspBf1wJR85ewzTnqis/xAN2gQ8EI4xIlii?=
 =?us-ascii?Q?ecZ7dFUlh/5+QmHc9ZuToUvjVtj8siQGmWcfRY7cVt7bdLfdQGfxnZb4dE+I?=
 =?us-ascii?Q?enJyEyBFvsIBOiHMXGm8Tq9s9RG3hYEf4Du8PwJ0zj6ICmsvPoorD8cG/qYN?=
 =?us-ascii?Q?72f+PPIFTJjAXtGMR3vK3xgbfSkqZWjTj5yGykPs9krt+LzHz/+jJlgjDKUf?=
 =?us-ascii?Q?ZHnTdOVaXmMGIsEVHNWvRxAtw+b21URhAQpqHOUDo2Jq5o3KPNY0H54OERcc?=
 =?us-ascii?Q?x/n7etcsBF7wB/AMU3XRK2W0qdcVfc9XFipuK707byXweXMK7zBPbIWyhfhv?=
 =?us-ascii?Q?2b9+po9s+/sikcBnUCO86yO+xUrxtTP5Cix/xQB0etZJRQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W4wz7FospKIKH0Bhfhf15yMUg2uMuu5ckclcxOksAmfjUdsUWok1J79/q7fs?=
 =?us-ascii?Q?vkhWtdREJzN77HKlrwWQGBhLyCh0jAvLvTumFrp+LjIakRQkJrRngTVP3j4+?=
 =?us-ascii?Q?mGHc+2uhrAWx/gYJb7mQqfTBrG80VCMF4Ox6f5dJvef2i+orc1tOwGBJCj8B?=
 =?us-ascii?Q?6SFpZthEQ0FChJPEwDmLY2IKB39aKuUN3ddpl5uMsnos+G3oYypmLZhQ+kE3?=
 =?us-ascii?Q?4aIBdL08ZVfZqtaF5kaVzgQYww6Z6nMIFDx0uT2XorTR6vwYw4rE/F6x7+s5?=
 =?us-ascii?Q?USw1gypTnAr/csG19w0RKOloxG2IXxrdpwYWEk6507HSEoxJJoklRkYj8Vob?=
 =?us-ascii?Q?l0F0rBTnaFfmxlu2yF3FiTTDus1D1mS8G+gYVrKbctS5wj2Vtm9tiaAj5A7o?=
 =?us-ascii?Q?M8fhTYwcakMMnGrzySzPbvoBFAZM8V0lkhUG0X1sy8CgfAXmYv7Mlf4SiEYV?=
 =?us-ascii?Q?b2g9FFghvFPliPb88VYsWrAYxUdr+psQrZbmPBLy/BAJC9dt6YmuPNidsR75?=
 =?us-ascii?Q?ccPmogZ0CwRWpVkeEX3b6BjvA/l3dpKQV4PGjIHwnjpr1nsvP3jUixnkP17L?=
 =?us-ascii?Q?+eMojTX6+pp1EA5cxexk39+4duiSAL7be56rOVnrRjfpu6cuRvNuYp4PPZLQ?=
 =?us-ascii?Q?XtxsSF/DC6J6/O5a9Esm5Wi8ND2auPZxLVH0/lWi+b+o+9AxINI9drnW0+6i?=
 =?us-ascii?Q?/wkHLvwiCzmUSH3sDtYEPIiOScziS3buUFnfWPHDzyhUpTMmL8gxlRIl/5Bh?=
 =?us-ascii?Q?s8w5k6k8bW09qqYzLptoyfIorSIWcx42s8Arsz4SZhpHcbElRYA932CG5/jr?=
 =?us-ascii?Q?7Y/jXM3eYCVLa2SoLQdlDW4idryBHmMGnTM2lMMFw+JI+lvW2biBP6Hid1CA?=
 =?us-ascii?Q?XUQ8hEVKLD9wBQ40qC0jvw+zUwCwPyoyZ3Grn35oeGUM7WObDkzelgZpkxh2?=
 =?us-ascii?Q?BAd6WKHwYRHl/u/35G/YkS9kugw5ffsd+mNfRpp72YjZo/E8cHEX20MJvJvN?=
 =?us-ascii?Q?vAzSSLDgR7KLvnZD69j5NvlXCoST1bBPlgOrh6f7V9XjpIR+NqHM5OkcZKha?=
 =?us-ascii?Q?dYCu3jQdt3KdFHSGiVNcmQs/Ud8Ob9wds5/wkn0jD9X+q8Hg81mloP5QmkKc?=
 =?us-ascii?Q?yL/etCktDHKXrrB1uh4Nlg9wwqyQPac/4WjC2SlEAAoxj5lkju9Cy/kCMUlQ?=
 =?us-ascii?Q?luH5TbWDQzFXcGRpNxFMxHGKpvV1X4rbqlwPLaqH/8fRNEs/RsXB+2dooJdl?=
 =?us-ascii?Q?rgEq/C+gf54VSUR00h8bg7MvkG1QoTvBEsWJBs4aGBGhadjmnTB7QynaXhdp?=
 =?us-ascii?Q?6gndaQSTS2RSDUxeZymZMsDy38bK8cmJEzK+sYcT5TCF+u3Gzm1XZ0a1jvkh?=
 =?us-ascii?Q?eAX/2VNfxKRwAQKlKW4VqXOGt4FP7tYo+1uCUM69PTb6L9Nsr8IR9iVoON9D?=
 =?us-ascii?Q?xgf+THhrlKjXqHmptNnPIPjlFNjqgl6vPjTWzU01nZpkkeq5N28MR3Shn9/Z?=
 =?us-ascii?Q?itr8vFDDts/njM596BWSagmUOYRQb5svx37eG6s2eJ3OB7g8d5wFXyqdjU0g?=
 =?us-ascii?Q?ZUropiy34lowY0rRkf+io26SGh84WNcbjHfxGr/7pGSHH3BgopBDfPANXZlI?=
 =?us-ascii?Q?wQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5984c538-2252-4f18-8208-08dce7a5d818
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:31:06.0571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2bL6qzAqff8/vvXqdMlQjKE+8rEXkPtjxgi9TD/oPqRoXXuaiYBj+VOHiXXERRJKPL0PQ5xr9LP10mjIXkGBj6sIPLSFMxibiLa6tM1/R5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7927
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 23/31] drm/xe/display: Prepare runtime pm functions
>=20
> No functional change. Just organize the runtime_pm related
> functions to allow a later sync with the i915.
>=20
> Move runtime_suspend down near the runtime_resume.
> Create runtime_suspend_late and runtime_suspend_early
> stages for a better visualization of the missed i915
> sequences.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 41 +++++++++++++++++--------
>  drivers/gpu/drm/xe/display/xe_display.h |  2 ++
>  drivers/gpu/drm/xe/xe_pm.c              |  7 +++--
>  3 files changed, 35 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 6bfad26a3c06..1ab4dd51094f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -388,17 +388,6 @@ void xe_display_pm_shutdown_noaccel(struct xe_device=
 *xe)
>  	intel_display_driver_shutdown_nogem(xe);
>  }
> =20
> -void xe_display_pm_runtime_suspend(struct xe_device *xe)
> -{
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	if (xe->d3cold.allowed)
> -		xe_display_to_d3cold(xe);
> -
> -	intel_hpd_poll_enable(xe);
> -}
> -
>  void xe_display_pm_suspend_late(struct xe_device *xe)
>  {
>  	bool s2idle =3D suspend_to_idle();
> @@ -443,6 +432,35 @@ void xe_display_pm_resume_noaccel(struct xe_device *=
xe)
>  	intel_display_driver_resume_nogem(&xe->display);
>  }
> =20
> +void xe_display_pm_runtime_suspend(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> +
> +	if (xe->d3cold.allowed)
> +		xe_display_to_d3cold(xe);
> +
> +	intel_hpd_poll_enable(xe);
> +}
> +
> +void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> +
> +	if (xe->d3cold.allowed)
> +		intel_display_power_suspend_late(xe, false);
> +}
> +
> +void xe_display_pm_runtime_resume_early(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> +
> +	if (xe->d3cold.allowed)
> +		intel_display_power_resume_early(xe);
> +}
> +
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> @@ -454,7 +472,6 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
>  		xe_display_from_d3cold(xe);
>  }
> =20
> -
>  static void display_device_remove(struct drm_device *dev, void *arg)
>  {
>  	struct xe_device *xe =3D arg;
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe=
/display/xe_display.h
> index 256bd2d23964..64ff2d2f5270 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -46,6 +46,8 @@ void xe_display_pm_resume(struct xe_device *xe);
>  void xe_display_pm_resume_noirq(struct xe_device *xe);
>  void xe_display_pm_resume_noaccel(struct xe_device *xe);
>  void xe_display_pm_runtime_suspend(struct xe_device *xe);
> +void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
> +void xe_display_pm_runtime_resume_early(struct xe_device *xe);
>  void xe_display_pm_runtime_resume(struct xe_device *xe);
> =20
>  #else
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 77eb45a641e8..4cacf4b33d83 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -418,8 +418,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
> =20
>  	xe_irq_suspend(xe);
> =20
> -	if (xe->d3cold.allowed)
> -		xe_display_pm_suspend_late(xe);
> +	xe_display_pm_runtime_suspend_late(xe);
>  out:
>  	if (err)
>  		xe_display_pm_runtime_resume(xe);
> @@ -450,9 +449,11 @@ int xe_pm_runtime_resume(struct xe_device *xe)
>  		err =3D xe_pcode_ready(xe, true);
>  		if (err)
>  			goto out;
> +	}
> =20
> -		xe_display_pm_resume_early(xe);
> +	xe_display_pm_runtime_resume_early(xe);

Putting a split here makes us check the above and below xe->d3cold.allowed =
status
twice.  I think it's mandatory for us to do so, but I can't help but wonder=
 if we can't
streamline it a bit.  Maybe breaking the above and below checks into their =
own
functions?  Something like:

"""
static int xe_pcode_ready_on_d3cold(struct xe_device *xe)
{
	if (xe->d3cold.allowed)
		return xe_pcode_ready(xe, true);
	return 0;
}

static int xe_bo_restore_on_d3cold(struct xe_device *xe)
{
	if (xe->d3cold.allowed)
		return xe_bo_restore_kernel(xe);
	return 0;
}
...
int xe_pm_runtime_resume(struct xe_device *xe)
{
	struct xe_gt *gt;
	u8 id;
	int err =3D 0;

	trace_xe_pm_runtime_resume(xe, __builtin_return_address(0));
	/* Disable access_ongoing asserts and prevent recursive pm calls */
	xe_pm_write_callback_task(xe, current);

	xe_rpm_lockmap_acquire(xe);

	err =3D xe_pcode_ready_on_d3cold(xe);
	if (err)
		goto out;
=09
	xe_display_pm_runtime_resume_early(xe);

	err =3D xe_bo_restore_on_d3cold(xe);
	if (err)
		goto out;
"""

Or perhaps it'd work better as an inline function?

"""
	err =3D xe->d3cold.allowed ?
		xe_pcode_ready(xe, true) : 0;
	if (err)
		goto out;

	xe_display_pm_runtime_resume_early(xe);

	err =3D xe->d3cold.allowed ?
		xe_bo_restore_kernel(xe) : 0;
	if (err)
		goto out;
"""

IMO I don't think either of these new options are particular upgrades to
the current implementation.  If anything, they're probably just side-grades=
.
So I won't force the issue.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt
	        =20
> =20
> +	if (xe->d3cold.allowed) {
>  		/*
>  		 * This only restores pinned memory which is the memory
>  		 * required for the GT(s) to resume.
> --=20
> 2.46.0
>=20
>=20
