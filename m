Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6889CF6D78
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C1B10E486;
	Tue,  6 Jan 2026 06:02:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7/BkKr/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB3010E483;
 Tue,  6 Jan 2026 06:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767679366; x=1799215366;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ykOr7SuvV6cG37TsjpFib93QZNeZRnshnrJMb9ArwZg=;
 b=G7/BkKr/0TfL1cU0L9y4HkAIAakycshfhWNiW1ssN9iItD410nU5Sio6
 6MbVMbx42lEkL+ztM3QR52iFZwW982Q++YntdAwWsBex6f4rHbIX+wZLj
 d7cThhSigzOiRJB21rJuTL24qnC8PWTfE43IGCTQ5ARYoUr9QIU2who2/
 E1+5PJgInfiXkzEKm1KVj+7YpK64+g/hDJBM9sdWWh5QYhrNFoZSK3NrU
 c0PWpERVC5cZY+wjhsveEaPwt3lOOtfgzBpk5793pfo+mrnIC9na10MOR
 oF8uuNsoVWtdXdC95g96QeLUVdSiarfn+/xa1ue6MxGg44kI3zIMmF0Nx A==;
X-CSE-ConnectionGUID: JifM/KggRiSSRTtrzylB5Q==
X-CSE-MsgGUID: 9Y5vZvlTTomaFDgR8co1ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="91700552"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="91700552"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:02:45 -0800
X-CSE-ConnectionGUID: vI9auqNNSMeHYQvmOmtvqw==
X-CSE-MsgGUID: eS63L2p3RxOfS+9t352+TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207045606"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:02:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:02:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:02:44 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:02:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jy50az0U54p50+Tz9A8IEafQa7sw0Yt+PH1ycP7LYIhjLtyRj+FagrzIaiGujjqleVwEuj2HPfmIqjTyIS5t6kghfuDM5GpH4d60P4AVbGXiag10KW1Mf5U7tn+apuOPU2mmI0Z1YHyBtQ5aFuklR5uSGJ8ClytTt56cIaHW6DcE4LSGQ3f1qgZirjMoWY/fQdFhUl6r6wqGPBw5S5Jb+ttdSi/b8CLUQ/yzv5bLvbJJLiJK04Z+E/6sy0uGtzoTdM2ktMc6z9ouDiLGOh4psDclzwCdl0NZdhaZlCQuVyM3EsvoD3ROCGsGzAmKecPPUEPFhqWNSDlo4h/X5vfLJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tykp/vh+jJPsOyxCLMLLIIru6mU6qYqJNu/LSuj4jvQ=;
 b=U0uh1N4+203dif52vEdvsQJmCPlYTOKHdqXH7I2M7Uuiqp3Z87frjgPHZ1AAmzifyXe7f2gc8NXDNM0xqlxHbl2C7QOr0ZOvPkXPdbkESBhxTBEJFRdNfKkk7UO79DOnNwdX0fNsbFyJn8CNHUhTFjSBj5tqO8VdDUvcMxVbscbH5yqaRf5Vqj6dWpc7n0Nb0arHgfgSLEuEondmBVA7Wbbs8rPPJJ6RVVSm8yIg94MKunp2+myFPBar3tCGSKbtNZetrSNVtlViVSYD6VV4PlvCo56Q1EpJsofmrtaLr1y1wR2dMbr6Mjq8l8ftYHP6qysAx176feuZbhsewOD0Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4; Tue, 6 Jan 2026 06:02:41 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:02:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 05/15] drm/i915/cx0: Drop encoder from port clock
 calculation
Thread-Topic: [PATCH v2 05/15] drm/i915/cx0: Drop encoder from port clock
 calculation
Thread-Index: AQHcb2nsCaGtpDZw40CGaGWxC7Q7wbVExRWA
Date: Tue, 6 Jan 2026 06:02:40 +0000
Message-ID: <IA3PR11MB89377C2A93E72A60B5E8AE42E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-6-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DS7PR11MB6176:EE_
x-ms-office365-filtering-correlation-id: bb32b0a3-a3fe-4102-a4f3-08de4ce93393
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?xdaOjUJuYqjEDaclxFQTxcabnUkzQkXFvhzaOBsCsfg1PMpv5tCJT0Kj46M0?=
 =?us-ascii?Q?4dDFtyvgtAUrViOx8nD4k+kMnwcHmiB8aekyL2bVYw7hm93cj4tG89Mg1Ozb?=
 =?us-ascii?Q?r0f9VXm20rFj5L08jgvK2CY0oPoCoq2QLM1c11fyfx7k63NJ1gyUdFd7B/aF?=
 =?us-ascii?Q?ItwFvKqR545sM96HK1pPwHLyaXCGUunXEoOpwmYYkIRnvKK1n6jCtoR7jrp3?=
 =?us-ascii?Q?+zaIl1vmBNqkxhFxJ/Qw5FaZnwGjwp58t5ZIFI9AOPuHoGcEjmGYzREBcmTk?=
 =?us-ascii?Q?8mmhm02xrk8yU/Q+MVS/82sgpKc4hnVbxW9ROwJX7QdniF07wJFuTSPaDUic?=
 =?us-ascii?Q?1Cl3rVuXvGM0ocFzSh5jm8blu6puqUqdjgdmgsg+vri0DAOJ+BP3ISVWO+PE?=
 =?us-ascii?Q?ZuAEfLP5mNfcizQQoaISPO7030zZ87fboADZIQO0tGCwzxF79ZBcrf5BFW6o?=
 =?us-ascii?Q?TrvEJDjvSTnuDd8EnqVKJp3OuVRwyKIWgGLsb2ndKtuettS0pHqn3nQS38Ch?=
 =?us-ascii?Q?omKXzgFii4seyuGEiSNO2wSHqIe7fnRXrXNk8t0D4FeqrxoqRCyp9nbSiVcY?=
 =?us-ascii?Q?4Hqt7TyAHIEns50O0L5/FnlujRDJq69WEVb31lPS/3is6cQ+ZxLrX0eMKbgR?=
 =?us-ascii?Q?EvAq+yPR54mH6ceH7BNr29p+1vPCo8YfLyaTzEi7hnX44b/aZ9voOxt+uPO4?=
 =?us-ascii?Q?1QtrSPgIrxHwBYk6ogcb9/vx1QklOgcolCnMHktEnBN7dG43osQjP29Cv82K?=
 =?us-ascii?Q?9krZiBPxLfkDPoZY0AoWH1wNxXW8WGVe//4Zjf1NNAw8PSZQYqjNIlTK+Nzu?=
 =?us-ascii?Q?8LYBLgjAiZ2wf4N65MOo9hHreUHQFKX7DyuIIGyh46+uSfIOu0lF80UI9RUQ?=
 =?us-ascii?Q?PMBRZMUKnZ+kDXNpxi/knHRZ1AFN//pelO87q0IDdY6bhraiOlb2s0iSRoh1?=
 =?us-ascii?Q?Bx2M6XbLaA+BfnZK0/y1d31B2tVcqDeviEhRL2OV9fFD0io8FRPgwgualhTC?=
 =?us-ascii?Q?RBepQ4SnvwVaXHc587UwR73kRqGI2N7eGuVuX1Im4u53K65HDb1Ii3oZprun?=
 =?us-ascii?Q?cw2BEtoLA3pfPTHmDpGS3sj4uNF1xySm8X7yCkiWjNIK8dSPYYkTPyLDe7ph?=
 =?us-ascii?Q?OobdnGWPCgSORVqpBzYBOpH/WRMGhSJKhnQu7eOJ/VJKD5bU6qttVYuQnlsw?=
 =?us-ascii?Q?vNtVQ4ATSUcBTxM4qp35ldTwFSOVL7VbDKuSP0VmI4xLAlWdR4VGcDH56Q/a?=
 =?us-ascii?Q?yd+hTPG1OqapC5eDfzUSguwg2XwKqYukN+UgFNMVdm2egvtk373s88QBhCG5?=
 =?us-ascii?Q?5on/9eFQesHE7uRCp0wYLgJQYeLrPivTDjg+evwX3iLnfLuTotLPOJwNmWXz?=
 =?us-ascii?Q?+QV2Ml2HCwTQUstgEdmc5zhXdQap4vrqGxIeJATllVRRx9Z2qzLe9WcQIMt0?=
 =?us-ascii?Q?XRjLG7snTNy4eCAJZ5E41o7XJRcw8h41QxMuZugwedUyFIbAf41099pZbnOF?=
 =?us-ascii?Q?qI2RNkB9gJQNkmG4MlWaEe8Gakzs5W9l2b2C?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aoVLIk1ksVHhhfcJ3qVnr/22fY0/VMI+VKkRD3aEBQ5t4GHpupURQZ6KWPlk?=
 =?us-ascii?Q?tE7FoAKfOmm+tD05M9ZMEj5CUV71BkETzkUwRnmA/CiIM2WsA2WGDAP6H8xE?=
 =?us-ascii?Q?u38Z8QzG9xC9Sc00aQDCJtcHrjUKTa97BXrJcm8PDDf4WNADf6isnzqfyuNR?=
 =?us-ascii?Q?DVnwVx3DOoW/d9mYOmuKQnxD/7K7t2PlyueEW2NrnzjWniAbR4VqKL+wHt2R?=
 =?us-ascii?Q?R6UQb0CKhYTRuSt6b7JBbZS/248EzHGzEzTdL7ax/BcGpVD63VkvaSiSSo5p?=
 =?us-ascii?Q?6QsgVNCEr9/LQhLv2Ywvg9GQg+grKoWBjwtboIBP+a114PlsMlXma5Fbtl+q?=
 =?us-ascii?Q?PgvG+iGVGyea/slFhCT98TJ2CoYR/PWoGCxMw6rKs21lQyW07d/QY30bGpmg?=
 =?us-ascii?Q?rYzq3qCBWwZBlvuioCCJGT1395Df7AQ8uU2tUDKxhTShqUZWMmZkBLvraIQp?=
 =?us-ascii?Q?1Ht+c96XXlxjlC7mwoCTqw3ShXeQLZ0DJTFu43k5FVN/nu0iiSM7wZ8tWAIO?=
 =?us-ascii?Q?hHtppbEDt2QrcpK8N2UzHffdy55vSDflv9O4N65oakfphh0U39Oc1FCP9W6k?=
 =?us-ascii?Q?l+waob0ZH9tWhg0mFxwwUKhVhTsll278ntMgjxNj+92darFEiGwqIsEuyFOr?=
 =?us-ascii?Q?JA5KHNLX9gHOVXmuYSjgzp3dAMHkIsh5yC58kSoxowARi1fmGUzyLhXAOws0?=
 =?us-ascii?Q?BEh4zInHAdcETriReXjg9FfmLn3+3VFw5blTKx4Yy4wVo0bpZcRdbcyBIRT/?=
 =?us-ascii?Q?ArPz9EPhuBdTQ0P7Met4xMBxTVitMUVxtF/w+SlTTqudiZoCtuB9OYwaxIgr?=
 =?us-ascii?Q?gp5jyuPaaZqr8fhwPrFY+YyKTAlfZyCSodWhLB6nt1R3k2raqbN57jRJ0UTG?=
 =?us-ascii?Q?3Eewe9l4iHmLN1rMZ+kDgykae98dl86VnVc1ffW7DAk4xOanjQNOd5hGhPaH?=
 =?us-ascii?Q?EqpsyiXbmxzZckp9U3djmExnDAldj3AUdXeNwVC/mOo7KL6+zcJcyY97TEbU?=
 =?us-ascii?Q?IUlU328XIltN0Q6r8El55Vqtkwftq05lZvY5NtzPycACDRkPHfNGXZaWmy8I?=
 =?us-ascii?Q?QkLNt940BFDFhUN4CgkYafRLZ4QPUD1NuuEA2xmMb2xwhX3uJDI4ICeMf/bV?=
 =?us-ascii?Q?96k1yNWCrixG3Qwi9x788f9eRNj7nr+K/F/0Wogu94ugLA2LgfzKfB8GSd96?=
 =?us-ascii?Q?u7n8Dp9adto4vJ0gFrv8m9uz9LhATOz+ptlx3Fy2OyaS3s1/Q2JtncxicWzz?=
 =?us-ascii?Q?bkWUM3Tifm26j0rvEI1Ki4bHkymi98h+czXGmrDoP5T15EpUXkY66GJNFY7+?=
 =?us-ascii?Q?fcpG+CddcbGX608elvGamE6aSkGaw58yJjYoIBIwvSnSbW6oqFeFaz/9rP2r?=
 =?us-ascii?Q?ID2Fe7uLUZi2iK88CUfO1CsOjuZXs4kGIQX3K+8B6XaRh8MYVpp2KqDA0Qx8?=
 =?us-ascii?Q?khXBaEsBboYfV9dsVZhiqaf48Gfr+5MlMPss+lSWRFdG3Z59jWiTbtY7DBQ+?=
 =?us-ascii?Q?rH/VDyRtpsEG3YZyE+oY7aMJrT4MsUwm0CPQ5yheFV+y27cdAoXVk5GJ6PXe?=
 =?us-ascii?Q?uaekMXu8Ep6nloD18JW9OcFlJBD5RDYCk1vjhQQF/JwzWco4R1Qr1F7WT9zA?=
 =?us-ascii?Q?YtWazfuoql9ipEz6qs0qpXNcfz34xnZdMj+I3cgujdqpN19oUHPf6+AU4a2y?=
 =?us-ascii?Q?on3RyD8YrUH/9+HkRgZ6RqOkIb12lGI+ePOz9hTcygzhjT+1UG+fmMdASwis?=
 =?us-ascii?Q?ywVWF3PtHw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb32b0a3-a3fe-4102-a4f3-08de4ce93393
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:02:40.9284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQ0OQzqNlGM52pd1eOF2oiwarVi7G5yjsCFZoDDVadpqiFiXBgwXllm2BlPuhK4fhjeBwQkPioETy6/yuF98Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
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

> Subject: [PATCH v2 05/15] drm/i915/cx0: Drop encoder from port clock
> calculation
>=20
> For C10 and C20 we have unused encoder parameter passed to port clock
> calculation function. Remove encoder from passing it to port clock calcul=
ation
> function.
>=20

Sounds awkward maybe=20
"Remove the encoder from being passed to the port clock calculation functio=
n."
Other than that,
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 664c48dc0ce3..b7ac89e32586 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2103,8 +2103,7 @@ static bool cx0pll_state_is_dp(const struct
> intel_cx0pll_state *pll_state)
>  	return c20pll_state_is_dp(&pll_state->c20);
>  }
>=20
> -static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> -					const struct intel_c10pll_state
> *pll_state)
> +static int intel_c10pll_calc_port_clock(const struct intel_c10pll_state
> +*pll_state)
>  {
>  	unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
>  	unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400; @@ -
> 2135,8 +2134,7 @@ static bool intel_c20phy_use_mpllb(const struct
> intel_c20pll_state *state)
>  	return state->tx[0] & C20_PHY_USE_MPLLB;  }
>=20
> -static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> -					const struct intel_c20pll_state
> *pll_state)
> +static int intel_c20pll_calc_port_clock(const struct intel_c20pll_state
> +*pll_state)
>  {
>  	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
>  	unsigned int multiplier, refclk =3D 38400; @@ -2325,7 +2323,7 @@
> static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>=20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>=20
> -	pll_state->clock =3D intel_c10pll_calc_port_clock(encoder, pll_state);
> +	pll_state->clock =3D intel_c10pll_calc_port_clock(pll_state);
>=20
>  	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder, true);
>=20
> @@ -2821,7 +2819,7 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  		}
>  	}
>=20
> -	pll_state->clock =3D intel_c20pll_calc_port_clock(encoder, pll_state);
> +	pll_state->clock =3D intel_c20pll_calc_port_clock(pll_state);
>=20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>=20
> @@ -3713,9 +3711,9 @@ int intel_cx0pll_calc_port_clock(struct
> intel_encoder *encoder,
>  				 const struct intel_cx0pll_state *pll_state)  {
>  	if (intel_encoder_is_c10phy(encoder))
> -		return intel_c10pll_calc_port_clock(encoder, &pll_state-
> >c10);
> +		return intel_c10pll_calc_port_clock(&pll_state->c10);
>=20
> -	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
> +	return intel_c20pll_calc_port_clock(&pll_state->c20);
>  }
>=20
>  /*
> --
> 2.34.1

