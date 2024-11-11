Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 017989C3F93
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 14:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9935B10E4B2;
	Mon, 11 Nov 2024 13:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJRypc+O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459B310E4B2;
 Mon, 11 Nov 2024 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731331854; x=1762867854;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+ys0lfUpC9VJcxTV5v63z4Y7GTTsKG1p1oUT+nJPzRw=;
 b=UJRypc+O48O8AvRHXaVJ2FDT2ZzUKxAa9nwJ+/aE8/g52cSVmhx21DmV
 W/1r2gYQNYnhSitcMpLPLbUL64aN0aiY8FUQR+OViOU/aNAM50ovsjrmL
 uahyorwPXwjNz1CUC6p1njDwJ309qtP9gpbmoxRh6JPsFTb0EjjevHVvY
 O1ZezpzjF2p3sJlSEFC/Bp1li/Gom+oByxTBhd9LgesEgCVzPQJb+Fm3j
 Q6/FqrUXDseBqZH+bvhB4i9BrGLJLewhP0GNTsxEc8IRJHTWZJKyT6/JO
 bL6c5vuZ78FqrBIwwsbpHAlAi4rPFSukXWT1M0aLS8BSaAk63e8LgSWXw g==;
X-CSE-ConnectionGUID: qevKfV8jTrGF8FyRdTYLMw==
X-CSE-MsgGUID: UxfNdW/pTrSZE4+XLMoVXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="41764800"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="41764800"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 05:30:54 -0800
X-CSE-ConnectionGUID: t/q3Ur9RTaqWeb8mNBjHFw==
X-CSE-MsgGUID: y9Ziq6rZRXiOQ0hlIG4RMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86662582"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 05:30:54 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 05:30:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 05:30:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 05:30:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bEWYk7jzkLJQ2tVSQDP/8tefeNrziBDmn5PqXnmFDcPFaVV8301f5dgOrpEu3wWS4Qi5PQzrMJC8dTbOzPBVnQUTPEo/kfkbNs8pK51tW6ovsXL5L2QwZjfz9vYWo6I/sCrybZhYM26ZjQfLycoNiqh+73ZI1cxuBXtQqWHU7Zw6cBZzidkEreOPqs0zapY+jKo+vQMfvvKXXPXlOr+84RBqbc6nOqTvvCh3mkeIU14g6rb37pfZut9mynQCnBT9wntSe0DH33C6RNnQoQ/cgLE5QInfnV84QVNn3ZZZZyzvBj6i71qxXpPRn5ZZDduQls8VGdT/qmtjxUc1NK39Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3TjXDq7DLrQ46Wx9RU1B5W7YsCIx0zzeyXrYLxAthIk=;
 b=IidgXfcJ7RnpDQe5MdV3w6YXVbTOvXI67tR+6QvDZNJrHxrlhCg1JB3twanTME7OspRBsLT/E9WlFk+2TCJyUK8rVLnJSE+WF3iN2l53EpvCnBCRL6L8qk/T2YBGNcnTersfejI3XysyaPHbgPk9WF/jdM35vrwf5Bicf9yIuKPcwZhkWNZM49wLIpTQtHPowW8xAhgImFNr1zUUyYYbSKl7fHqd7+d932icLLOLyHL7KBcSGualAHTgCbObL7dS5ianpek5Bz6qcwhil2i2msUNQozebuiENjFHujChfReQCnikoMFfEHfKg0wrX3aOh5vuqn0vPooF7NC2ohZWAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB8547.namprd11.prod.outlook.com (2603:10b6:610:1bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 13:30:51 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 13:30:51 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/watermark: Initialize latency variable to
 appropriate value
Thread-Topic: [PATCH 1/3] drm/i915/watermark: Initialize latency variable to
 appropriate value
Thread-Index: AQHbNDX2dLSgo8enfUKSB/2KNJnFVLKyEz3w
Date: Mon, 11 Nov 2024 13:30:51 +0000
Message-ID: <IA1PR11MB6348B31E4C060BAA2E096DEBB2582@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241111123259.1072534-1-suraj.kandpal@intel.com>
In-Reply-To: <20241111123259.1072534-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB8547:EE_
x-ms-office365-filtering-correlation-id: 7ec44b94-c25e-4cd5-8b83-08dd02550f98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gAD+WqOjik9D/l6jMZSX6vNP+6IpU8qjr7MDpHNwhnaZ7PJrejls8AOXPTx5?=
 =?us-ascii?Q?Nri3PtOQsBioJbQO2YFjXE5VyEN0hoUMpHE/0pHXHUKtvXpJBU2c2Q9eswsa?=
 =?us-ascii?Q?+uQWrH1MQ5EX26cb5Cl11ilhyaC9wlVfTdMOA4lxB9ZuCpE9dzHLZN2y18Mb?=
 =?us-ascii?Q?5l+VFGHXcRpr22dzXxVx1U6eybwkT0wTgsQ2QvCRvm54dJ65pKUWrpbLVPlb?=
 =?us-ascii?Q?mot0lXQY2TdGHU+G0ok2flffDftDbgcczTfCs5SglpNN6rZ89Edpsk9HgYe2?=
 =?us-ascii?Q?1dCTNvU1mYe0qEQZ/Absg6fdPUtbe7NhfuhGvfAuWyIR4TnppAouh4/0JRey?=
 =?us-ascii?Q?YKVZtc8mNgPO1leLGMzdZk5/4+8lrA/zuzELTXY0Db837NIQQCnJhdaozP/p?=
 =?us-ascii?Q?ZkQ8g8toMEDKVJFCSodZqFzUR5lyg9SGm0rm+1wlsOETqIjclSAiR0M5DnBP?=
 =?us-ascii?Q?JrzENCMY9Yky95+L3/0HP2JV5GRYf4A6aZ25R+rb1bAAKapMGpbhmXxnVaGf?=
 =?us-ascii?Q?oEa6ODJVQKLnCK+v3OAAzHGY0pqxtyH0PcADA42O8jV7lrykAVT3oqnImrlZ?=
 =?us-ascii?Q?stt9UW8+qf5Tj2GsVVxNsZ1GMPa4cOeFM/kJ0X3gmtW/wa2vjRSIUhi+vVnn?=
 =?us-ascii?Q?P4/fhfcUh85A7zbCMW7ZgJNGyJZOKDKEHu04XVY1WLHghg0JAvc1p4elvjJ9?=
 =?us-ascii?Q?lyFq0Q/hCym67tOLCoYrwPmLWDuDYorWQmckaLQOqjdfS5UJOhI+bJmgBOph?=
 =?us-ascii?Q?j2kFsNRWxwjqjfnLxYf/znN3o2lcMUaI77rtSRY09678NzRpmfNuUzQeJZlr?=
 =?us-ascii?Q?aqhBKA45F6936Qcy2DteHqsAia5lGc3fikC00LgCPChxAOWjqiGGE5Ifz91b?=
 =?us-ascii?Q?PJjSMRWl5Rit+a5qKUEDSxObKF73jvNp3algVWS65R9ye+O1WV/GoyTesftt?=
 =?us-ascii?Q?Qcj6XiJsS3XMG6KFMOee+5643CdwiEmuqUtK3p77lUTaMJEUQxBjYo0AF7qY?=
 =?us-ascii?Q?wIaytDo5fQ84KN3fBhvhNwQHD06WqJgOjkdS72bPXgbe2iZWMvdjmCETHxBR?=
 =?us-ascii?Q?vqBHXv5h/9LCVQhnASLuNgvHvOU88QhqyX/YarC6dqLVDEhsZlb4UHcEYDd7?=
 =?us-ascii?Q?WK0aUacIpDvKnwHfVN0J4ot524Xst5jXlafkGWQpE9CLCdsAwGQFhBNmTTha?=
 =?us-ascii?Q?p/qLEoaM8690YUUxvRkBvmHxJ2K3R2q8Tu//0u40jrrT9Nmqz6MtOPhpKB+d?=
 =?us-ascii?Q?uwJUgalXoutT0geUCHebNTx9BuHhzXbXqTuYfPYgdRaaKrl9ehsuwgLMAIRs?=
 =?us-ascii?Q?Zcqh6z0Cdv3SDlHire2rlypFepVXxlnOtNCDtbjZ09nXzV9wt87WxKx5tyDA?=
 =?us-ascii?Q?ifCQyjg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rai1zz/oG17tyoPqpf6/labN5AEzvJhtSPQgjvTAeSlTXc265v15FkW+Qrhd?=
 =?us-ascii?Q?/mha90gUx8HkOql2eTsfSqU7vxCSkFSJKvN7x344k3dQ6Yq39OkP0gU2AIER?=
 =?us-ascii?Q?jaw5ohWmLi5zQ9XRGKykeN0ms9n/mREIsB1onv8FJoDoJswJCtgZCZo/l5Dn?=
 =?us-ascii?Q?Q6kKxZT3ftY3Cymc7glcgLJ6H6PdTHr9UI0Z/UzOUuiR5NTbzbHcFCZT3CKh?=
 =?us-ascii?Q?b8yuCu3SQfrzOjJm8YKkPq8KcReeSYj1/eVfReM+iduR27OCRfpX1M2kGwKp?=
 =?us-ascii?Q?YYWkNhptZaYxO2h9C9LtgDXjlmqW+Sn2DVmos9THuOC05rUvPaP2cvqbcqhq?=
 =?us-ascii?Q?oVg9480bghNpnfHmMe9AEVXIq4jwzdsfTc9K+ncLjNAHkuamQJehYVRjUg+Q?=
 =?us-ascii?Q?+no7pEKgHuo7K0KHz5V7B02sef9HNhQj3OwIauwR9sJxSt/iex7QSNs6DxsH?=
 =?us-ascii?Q?Qg0p1WpRSHdYKv1XVfbWmrlrN4lbDn8Y0ZWfG9RKAJog5vPUoeB16C9HGAbp?=
 =?us-ascii?Q?oKHEjaeUznyFejtDx0IPm9Tliup4Fc1k1y7DAnnNjT0dj16tAKpYzJozktm5?=
 =?us-ascii?Q?E4zKDk7AfQnmFxzHBv8672xa5j4Gp7RuV94zqM+V7KAC24L5JJ7oe/mc57PW?=
 =?us-ascii?Q?hT3wR32ISLJ479Aei8EAE7nTEPcacLCVOoWS8+0+emw9vu0Rf1l65ohYht+W?=
 =?us-ascii?Q?bFvz5bShW7wf+AtOtMR3BCRwX5Sroko136yWG54gA27CWIROut0XoDv3naUu?=
 =?us-ascii?Q?mYjfFSkYyqwyf/TRH64KuQTZSRVBGVVz7cVn+ZJSKd+lBMz9zHya8to0s9F9?=
 =?us-ascii?Q?qtFejKefxWvnZUpV3cOtRIZF1yIp5YJTwqgny3kNtPhnmt+WXTrmOCfdjPoH?=
 =?us-ascii?Q?Ul4fdUR3WwjSKSaZp0cnRtUg7g4hNekV4HGw+ziwIS2nwUeVVE5XFjnXN8RU?=
 =?us-ascii?Q?3yNmEZ2FggV1nv0wrtfAY+dI50pmeidyfYR1o7tqy5ykmdu/9raj1h5n0zug?=
 =?us-ascii?Q?MAzreTF23y7FG4KxBU1yTHbAKRM8CCDfe79DyXWiTwBHcXwhFAObRYjv/AHa?=
 =?us-ascii?Q?5pHnuVnwoGCzcanThojA3zRPGHNTStmMiNhG0tn9mlBlN25VTsdo6v/Jg7kz?=
 =?us-ascii?Q?Nasc6WA/s8ziK3j1xMiej6MygECAHe48sMSWCvYT56AXhKdTmDpQnqFcwmUL?=
 =?us-ascii?Q?G2y1ozoTZ8rUwPTUTeldkM/A89/5owwMV6MvqBpVJYQVcPX+70MF9nSg41hg?=
 =?us-ascii?Q?L/Fc7hFy/7EjJJdN+gVv6QcObaflxdnEiw+cSMijjF3TqmfFmRXI4IWiP4Zp?=
 =?us-ascii?Q?yAYlGZV7hRLkS016A8XhCq9U598x65O7qTxXKc5lKgQUYy1RTU/MloNA+KF/?=
 =?us-ascii?Q?DQ9mHGYUbx3d2hrgevezKJITR9TSJbCFX7hwusw92KF7MDmsIEV+ajhi6ANR?=
 =?us-ascii?Q?0PRgF6XAEY/G3gxGd6mULEX6W1TrG4Mt00koxa+4dxEyfiUXYNgrFnJ3gwfV?=
 =?us-ascii?Q?60dCrA/KCyEoObM7Hs11J+e7RyjqJNWdEU7L+PJIrksKe3pQ8ReNFqYocY8F?=
 =?us-ascii?Q?A7MvdLkrPmhS5GI0C8yRcKBaCgdGkLMU9KnUAaSs+sgBoxLDs3EGrGLQFOLi?=
 =?us-ascii?Q?0gL0iR3OC7EhjrbVtAR6GGU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec44b94-c25e-4cd5-8b83-08dd02550f98
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 13:30:51.3232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QW4x8ilX7XI5x4rRZ2aAR7q4glkPmOiQkSNUYyFhdu2/Ku6kDjdbmj0MQtk1Y0mAYWJ1ujbQPe1XBHUipSacD0/Q1sNaTg79RjqAHSH7ONzYApQvs1YHojDeFzGoyN6S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8547
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 11 November 2024 18:03
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 1/3] drm/i915/watermark: Initialize latency variable to
> appropriate value
>=20
> Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps to
> eliminate the else block and make the whole code a lot cleaner.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d3bbf335c749..a97e90ac643f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2850,7 +2850,7 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,  static void  skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)  {
> -	u32 max_latency =3D 0;
> +	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  	u32 clear =3D 0, val =3D 0;
>  	u32 added_wake_time =3D 0;
>=20
> @@ -2863,9 +2863,6 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  		added_wake_time =3D DSB_EXE_TIME +
>  			i915->display.sagv.block_time_us;
> -	} else {
> -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time =3D 0;

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	}
>=20
>  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> --
> 2.34.1

