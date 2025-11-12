Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC793C50905
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54CE010E68F;
	Wed, 12 Nov 2025 04:51:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FYf70UD3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69DFA10E192;
 Wed, 12 Nov 2025 04:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762923094; x=1794459094;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a69kK7nhsnU7F5xbvQRmh4mKhYVF0ftRa4mfPOc3nnY=;
 b=FYf70UD33G3rBYWwQG8/eELrlFg8e7L+FplULWw3VzuEhYFeruNpUw8/
 wga5RNv6gHXNkzlrU3Kzg1v3zJy3v/M8v8Nt19FctPfy3DADOn2nJ2lA4
 20EGvHSvSTrgz8yKMtpjheraj5ZAFvK2zzy4YSUmGTA/dmLfav3a1s5sa
 f63tdMREawnXOTAvhWgJw0cUfKstTmT8W+0hXvuddjNKjVNjL8r0KjZQQ
 rBJKm6hvh2nO7j9GUXVi+zqvstc2hPbH+6kvH7YUwwWBNlcBjE9lK1QO6
 rzfqVBs4R13htJqiV2M3a0zeORl8AyP1zmuqOvDVO3glxs41x7a787e2Z w==;
X-CSE-ConnectionGUID: hXZ9E6NnTPyc+bcEx1Ox0g==
X-CSE-MsgGUID: y3xRhFouRYS6PGGPdcG33Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="90453359"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="90453359"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:51:34 -0800
X-CSE-ConnectionGUID: UDGcvTPPQKy9uN8J7IRlEw==
X-CSE-MsgGUID: i3UTrIdwSvWQn9jJnLCfhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188888200"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:51:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:51:33 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:51:33 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:51:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ePylKQkddHNQ6go3BrPWbw94ZYiuNFONnJW2TAl+4yq4nax7AxN+y6x4lEK3cggDpdhouKkyOKivoB4IkJfmfThookYBzkzQ8sX6yvq9OF0myOg3LKRBv/j39rsBsRf2pZrmHpNK8R9WQuvHZEw1a2HL0VPM+NDBrHEAqLnTIAoO5tO2sIXYEbF0pab0e/yuxaprRPmKP9+TafffWA0uXdASrAGoACc1Z5I189CIfvlnH7tsZOEtE1wg1srJqevjrNSKV7aSbSlzyZ3p6iQsaaKpwFcsjKSMfr6nMYgQKPc3Q+G3bpQskCAZAgfNhxDbK1hMf5KkIQDuVLautuDwLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GAe8Nlam5JRi4zESnvcQY3YfOBvEWifRJnoO6xMxXlk=;
 b=B225bzS1OTjLLdvUVk+SbXa0JGgDVBsprr5LyMs+XoiDF1pz+OPCyo9rq6IWtv/hwEAshctH1r4zZUBcY3jGpFVnOd3FUF9WTRUbbLbDq7L6F8/EDeuV2MXjD/zn6bvqSV6H1OXoqnIflxzArxmJgAl37xwWuHg3j2YKry35uWqodOhPeaSM1BMO+/TXbIf2cZt8AHJOBQtslx5EMf8IW+pCFCzORUzTkKc2Ya1BteAmHACI/WqgWhG5zUNVuZUoDYqCGNodsNDUVRKyMuDSz6mfMrNNBbnqjN+hdKMQa+K9gUVdAKOLNAZ3RlsGjw5490e8qQLKTfjf+TP6n9R/ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6442.namprd11.prod.outlook.com
 (2603:10b6:208:3a9::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 04:51:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:51:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 22/32] drm/i915/display: Add .update_dpll_ref_clks
Thread-Topic: [CI 22/32] drm/i915/display: Add .update_dpll_ref_clks
Thread-Index: AQHcSlUhl9P4OhrJQ029DD2PFNF9Y7Tuiyzg
Date: Wed, 12 Nov 2025 04:51:29 +0000
Message-ID: <DM3PPF208195D8D71ADB09F3A21C285478AE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-23-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-23-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6442:EE_
x-ms-office365-filtering-correlation-id: d11fc5da-7ed5-4f64-2a9f-08de21a7251a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?RJliaxxwztic0miRR4cykBIYWrYj/PFA8VoF20yfvUPdiChmuGLisnlU93Sv?=
 =?us-ascii?Q?NHNZy1ByHEVVnILFMV1Ba9bpb0p7RLBNpri1x1gfhaO4JSeTBRr2+AbdV1sR?=
 =?us-ascii?Q?3GMH6MynvmwBxE/3HiynRU4d8s4mnoBiTkv+2K8HrmAjgUwnaSEytwDKyFyd?=
 =?us-ascii?Q?3rBX+7jBS2S8fT6CwaRa4hoeoarCclHmLBs7EoyjT9RfD4wWEbAUyA3xrAIi?=
 =?us-ascii?Q?t67ijA4BqaIjVLyiBpzkybQDD2phDcPdVIaD1nljP4v5HjkMe+2BOJc6K/nd?=
 =?us-ascii?Q?rkbZdB6lUPTrB9CbfPRGRZPvhlzRzbpMsibvJlivyQTZ5uFMKPH8qPqACLKB?=
 =?us-ascii?Q?AUiu9B/BmqWWDDjWDUgV5U9W0a97ImMv5296GhrHhlR4Co4gkhJ0fuZ50XsX?=
 =?us-ascii?Q?1UydBNUpv9tS2gg3m6GZ3Ambt2TT2jUInvWoS5JiMRCDM3VYNeXW8R9ZrBHC?=
 =?us-ascii?Q?8NOh4FVZgCFHC6zrDX+LbNjugJroEbEaq2uLXYVvjwadGnYTADUX34pFKHfN?=
 =?us-ascii?Q?FQsVZz65/yn0TywjowISZ7emUQPiabOZswgs7eWkgjGBdz8vVWT7FnAOJnVH?=
 =?us-ascii?Q?hfHKVC6g+ynnYPY/+cMxtCAw3aoR3T2jmRDFdgUKvmER6uZ0eMGk0dXHWEoS?=
 =?us-ascii?Q?MEFyRlS6GmlPQx7WibRD5NFzn7Sd7fDs79HMWFSocwsHAean3dRiFoCZZnDJ?=
 =?us-ascii?Q?4qJvzjNgC6iG/pq7TCc+zux44RshyKLeLpZoS7hrzvORk187rPS7V3RiCV3O?=
 =?us-ascii?Q?5sTHMpP1DXAnXCMR3Tw99IaKjxXypWsCphTKjYOw+qaba+PvyRrX1O1AQ2tt?=
 =?us-ascii?Q?Adxs667TCzJRr8K7m9ljBdcPV6RX7FyRpK2SZrDSCJgqPWmUdv3kKNMPwW2x?=
 =?us-ascii?Q?B+RcIiwgtp8+O5ThUBMNoDMhPJUnDZcMB3qN3cIrOn50gOWKUnsfTjicrPFc?=
 =?us-ascii?Q?rHehgTtYNkportFHn627nLt/pQK4SBJXk6TjfTHODj5qriMH2Yyunj6RIWMU?=
 =?us-ascii?Q?MHVbiu5O/fMr4gmDNkpfY5S1r3IizKNXyd19/KocYE4CxIxXWpsG7jqZbv1L?=
 =?us-ascii?Q?3rFtO/9tGwxUN7RXELoJeaRmQ5chlvgHd4WlsChV/KKhRoGt46wpzYqeEQ3l?=
 =?us-ascii?Q?6Snc3LfkF7xJA4Xkfgzl01u6un3U0WRcvnGYWEieNIakwRBXNSgGPeVuIPDh?=
 =?us-ascii?Q?6iW7ad8kAiHGhr6MuCu8ptXDzYo/r8kxYJv842Nx0e7mnvEpx+4pVtHNC+W+?=
 =?us-ascii?Q?4r5Q8Zrch0BX3P1vx5mv3EGx5xsVFWAH2qGWNanCyndSUqzqHn696xILvYkS?=
 =?us-ascii?Q?x4LSvLI9OUyvM1ViiYGPH0CQkaIsO56uvZRB8IJnv+V4eDm+ZfVmBJ9Rowlc?=
 =?us-ascii?Q?XHpBcWzNjOtJ9qqd6VORTGN54JxS8FV73iu3TXnoVNMdSdSWOORcg3EkHE/l?=
 =?us-ascii?Q?UKP5ki3sMveEp5unV0O8ftxA1XGH61yn7Wl84d4UuNe4z6YRiNun6ZmD2VIh?=
 =?us-ascii?Q?XruJaYcz1WtPSgS5Wk5MtPSNMoDikD0DrN/9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CQ10XE7DBVuRWp7R1+ho8mzW7o+kC5lCZPyPS+fOpAEMCIbAoE/0J5Elfqs9?=
 =?us-ascii?Q?LicvSrQk0VQmxF1xiEFxpcr5/Ojma9roZiJzlmDzd4nVEB0RLlZz4iIB+U+2?=
 =?us-ascii?Q?lU3ixOzVIQ31iYWUYL8eDDSOL/+UJxAYJgwB3qjC+bwz9YoHLSu1NxC8jWs2?=
 =?us-ascii?Q?gB5E6LPcmU85moUOVkqeqlUxx4U/3A9CNpelZCm7O7hxqE7Hz4ieSf7b8bF0?=
 =?us-ascii?Q?7TKBi5pSEKeQCjBUKYCjGtN3DKmZWVEL/RPPWWw0cLUI2rzwsgpB9FFBXcIw?=
 =?us-ascii?Q?TH/GMqcftfOBix22Miro48C3UE7QCOj+gfkpfBXbFhkKI1Ai9gIGEDD1EHHQ?=
 =?us-ascii?Q?3wxF+q1bLlH76pMUEFTizd0JQiEjZ9BZUB/ZdvEMWqyOggEuLJNIH07J4Ytn?=
 =?us-ascii?Q?k6Km6EXoFmIaebJrMKebTI90IqrP481Ztus2GSzWGDKbHyGzyemYry27Nf+1?=
 =?us-ascii?Q?qJ1nrTx1te1QRo116ejF7Or+sZoJlRfc6hnLtybEExldaoR7TNEqAFCSY21l?=
 =?us-ascii?Q?cY4k6yBe+rLTCszg1X5h4HoJ2VhLIxkt6Xs32gX8214y27T3NxY+/8okEzuk?=
 =?us-ascii?Q?ouhXjmp0xa7BfzFLF4Et0oy8BMf2gM/G7Eh0LKHnqdIxLTJDOYG0hguyAoZm?=
 =?us-ascii?Q?0Gvyoi0vlrAA8EJ7incflbNkm+NDuf+AGwd5iJGHt91b478/qWviCQUK9YsS?=
 =?us-ascii?Q?o2yUOTxsgnXjmwd+dvZQtP/EvLKKICxmHxz3cFgyq28uXGDVsDPRLrjPrk5s?=
 =?us-ascii?Q?hEkFBg84IEcuI4pingmAPyJcNNJhXNCG3wqiMCBVesLqkukUY6VF4HHvMGRj?=
 =?us-ascii?Q?GvsMtkZaeq4RaUC4nUEdYfJK4CZClbLwFvy8QBMQU+8m45WUXNA4bweM1CwM?=
 =?us-ascii?Q?6T/BvZNAn93WPabpzxFqAoZaelFxycrTioqkndj6frlCrwaoI3Ucvh4qFnq6?=
 =?us-ascii?Q?fgA86CFcG821XKEhk57GxV1bKwntqb2L7m+u+ByumSfAZgY/sSjhOtYjxREr?=
 =?us-ascii?Q?2mfV/NuubM4Ko2HzUF00pm9YaPXl5nSuf561hGSYmyMXWX0rjmQpFJojQZln?=
 =?us-ascii?Q?UYL3IUFb90hqGxckoEDBtWU1R8SbeZQBXj+moHZ4TdHeCvz61cggrqtfO3Vw?=
 =?us-ascii?Q?uPguN2Uc6nAA9Hw0TP7v+7e3JMQUlgqU/C/PBRQ7BJjDVceCBRXXK0ttOobd?=
 =?us-ascii?Q?fhgh7+UMIycFfhd/KYqMaJhKs7RToe17Ub+luOXjqoqq56Y39yKBQWAcUQp2?=
 =?us-ascii?Q?YPrp/+vFyxKQEdxY+YkWwi/zVKtJyhZChJLgTdvNZRgSFyBkiPTd32MBRxqW?=
 =?us-ascii?Q?7Lnts3/vRniOhwfISu8B2FEzMI8GaqwKdPivYm9g+tZO8peDW8WWX01Y4VkQ?=
 =?us-ascii?Q?S59xcgVQwgoAGN0XFju0mEHiifpX6y49+TJxamI9f0Q1SGGxFuoKKLI704bz?=
 =?us-ascii?Q?PU8SgMzqrXGzfWwreXoN0ifPq+sw7q5qmplHFBoI/U5fAedf/VrnRiOsNWaH?=
 =?us-ascii?Q?WBkdRGhxLPqqHjn9CcVLyJu6YhIpnG8c1WSSnI83A8ybOy+C8vZlvK4p0uiK?=
 =?us-ascii?Q?u9FCCzqvF3pUZlIa0ZVgj2NyxHaBUg4ijs2IODxf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d11fc5da-7ed5-4f64-2a9f-08de21a7251a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:51:29.8199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CElj8g+nllNZumb7M5dLYnDkotGsJ2XB+uig9ZSDDI9mJIuj1dljxuOUHTWqBRv35Qi0VBMWWOERg//1qxEkFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
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

> Subject: [CI 22/32] drm/i915/display: Add .update_dpll_ref_clks
>=20
> Add .update_dpll_ref_clks function pointer to MTL+ platforms to support d=
pll
> framework. Reusing ICL function pointer.

Keep this imperative
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 3b62943e2748..01e649d66f08 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4450,6 +4450,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.get_dplls =3D mtl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
> +	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  };
>=20
>  /**
> --
> 2.34.1

