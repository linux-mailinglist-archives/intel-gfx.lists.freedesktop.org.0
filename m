Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880DB1DBB2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 18:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA16D10E892;
	Thu,  7 Aug 2025 16:31:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQXq4iLS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53AF10E88B;
 Thu,  7 Aug 2025 16:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754584300; x=1786120300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R3nemiC478kSnEGlXOJQNZkV6dsQpokQzhJrvg96Dvc=;
 b=WQXq4iLSK9pH4OPheFFMwBRC8CZWTyTBUXOzElCinkbiEprLWS6hyHLh
 hiGUUZ7BbAXr1auE4uNfo5PWN5AbRX5z1IWCyoHxvpYe+PA4P/H1Ysh6W
 MiGg+aJCe2iDEjPXyHfR9SNMu2Of62eStutW/zlPhOy88w9uVvhPA9khP
 zl6vbBo27jBH8+qOFDZzxKE0Up+jTW3p3xOgKjwnVxEklzz2i9R3ulWIF
 au/aZj7RoxGYL7wPwkcrwLQ7V6yzwnOC5QSTjK7G0o1lrFw6D5e6Qqfew
 rwc/+045CU0McGwNDW7pXJbUBAQhncbZnODIrNzXKpuZFZuNEsD0LjV5Y Q==;
X-CSE-ConnectionGUID: ntDIaqsQTsupPqjRnavTzg==
X-CSE-MsgGUID: SLwTaQbFTNakkPRkOI2hbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="57006382"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="57006382"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 09:29:38 -0700
X-CSE-ConnectionGUID: j3vrVvg0QV6HgOpBId9x+Q==
X-CSE-MsgGUID: wHfbBtbzRa2E2A61na0pYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169313378"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 09:29:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 09:29:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 09:29:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.87) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 09:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v9xrXKVgqwpPeztwRXEouoKB/sHgW5rGZpgX/vtL2kREVUPaWhJbIgHVvye4Xi04e64DX7m5EprDZQT8IrZ+BwjCUZ7TOqYllzPMMjZrY3vDVUIjSe/No1qTy3y/pwt8lx3WMeMnEFIfIaEYPA9ObvxPLBroHZIAPQuoNMm9/k/Yn7Co+GKQcMQwlDh4wsDRQrEcFY8bnBQPyKA9W0HBZeZJT9HkoK8Z1VBFXJ7HEmQ63UK/FyW3ktexB/OotLIS6f3elLZRyChGv+mMu8qrU9845rU33ZyPx76MJxjU+gK+NgJji/IpWuonll/wlloYVWfggQIeck+Q7IB6KitRWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cylYN8OeFqEqhmFNdetY+LVLGM1lOFB5EunSNZOgIVI=;
 b=UpK18uSDeJ07PuWUiJymXp7A3xVGtm44VyYbtK89bSjOmho3a6K6XAyyfN85Kja2TftI6f23VhLxf1muomN/Cqm/ipMjT9Pdmcd/UBMWJG4AvqMNkG6sZqO1E/wKACE9lqzfklP8yyuDa63HmiuCHImK7FaA1aqM6s0esizQgRxHtZ2jSjJxO30B8io3skiBaqP3ogGExPwz0iyHLUuIAc7k7XtMAD2LeJf0iiWVWJg1WbftkdZLG0i8VJqamb6401bv4xOrbT4beFXx0jj+9vUi+clp0Grw68DtJfXPBybqAIqb71FsX+Vs7LCS69U8ZWumtB3M83D3bdncJSdrHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA3PR11MB9157.namprd11.prod.outlook.com (2603:10b6:208:57b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.17; Thu, 7 Aug
 2025 16:29:32 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 16:29:32 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 03/12] drm/i915/skl_scaler: Introduce helper for chroma
 downscale factor
Thread-Topic: [PATCH 03/12] drm/i915/skl_scaler: Introduce helper for chroma
 downscale factor
Thread-Index: AQHcB46ow7aqv31OtUifaKBp0oXg2LRXYb6g
Date: Thu, 7 Aug 2025 16:29:32 +0000
Message-ID: <IA1PR11MB63484A7390DC5D8A4A89063EB22CA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA3PR11MB9157:EE_
x-ms-office365-filtering-correlation-id: 9f227534-d6de-40b3-b993-08ddd5cf9706
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vvjXmAb5tMMCSvzUhD0o3Q7L0qWU6kF2BXA7rynAwNE38UR1JXdn/o0LiGpc?=
 =?us-ascii?Q?79UdQ+kPoFvzgNtvRrorbB6JT7YUdoGjKidtwG3GGb38zYcvzI/LGJUOPns1?=
 =?us-ascii?Q?1HPXPWUvWFxcHRnuAsQwuZKx6zR3mPWrevJnqGJzC3STqj9/Y/HwtlmiUZXc?=
 =?us-ascii?Q?OUgSFQbDj+E9KuRxUjU+tg0RwHrwPpD+RakAAa9Loww3+26MLXAyz3Sxey4c?=
 =?us-ascii?Q?LPf5icBQ4Y4BElaiMC5dS/m2wn5xNCnyecvagGgquvMW2SofPsxD0ZszWDEZ?=
 =?us-ascii?Q?MEvnqv0p4u2+WngzElfOB2BWMhSG/O5oGblG5Dw/TZVPxXXQlVKPayJ98YoQ?=
 =?us-ascii?Q?R5zWrGgyNKPdFKVBRHpDQrxrKHKn6/RnkimnvDdaLjLB5NZnj0RQP5gN4Y00?=
 =?us-ascii?Q?NviVMUBWyWu2nzT7lHhDYOpFh+8Ai0ZpPSvC7EhQS56g9F7ym+9ZzCyRuwNd?=
 =?us-ascii?Q?38qtoQrTEnI3RqNI2CqZHjJP52FGasLkJEc7KKEyWueQPsbo+XtSp+mA/JCj?=
 =?us-ascii?Q?mpk0cP4bwQkVGunVx6tl5PE+Bj5Wa9fiAx22dcDaVI9FYmkQokCrYej5qXbE?=
 =?us-ascii?Q?3983pNY52k3K+h5aRYl8qoPEaOj9zpnwxSxmjVoCRACGpQT151TDVJrWxh03?=
 =?us-ascii?Q?CqYR8O2lxP/K7231RGD+QCaXs8uA39wFZDlxm/q3x1LsuvBAMPsB1dp3QUGJ?=
 =?us-ascii?Q?jRu8OGmGr4QwmsER6UcUTjbiK61UM67+sUvXYX1ulyhDOgECFn7AzRhysn/D?=
 =?us-ascii?Q?Dt46qqhsq+9V/5sD4LtpJrOK480S1pzt9xvE6ufjeKmzq7DiysDW4fD8rs4H?=
 =?us-ascii?Q?RYquNPcPrDoBOQZQinGRYFKbCM82jJVaZoNqZPAA9V0azFcuiSFyLtr+B6aW?=
 =?us-ascii?Q?su0N5LPC4lOkMYE2eEbvtZaf6LP3iDN+n+Kec40xuYxvvKM4/zWzyRDcy1Lu?=
 =?us-ascii?Q?5Y7incE1ZG1iXTnM6vhyZMLkaqxhCqHTL84wDxR/V70srFc3tH5HaXm3tEB5?=
 =?us-ascii?Q?p1+Gc5MeqGdomhW1BiB/peA3yusDCv/15y3w85DP08IDZJK+qAhHSZoDIiCq?=
 =?us-ascii?Q?d0hyZhcamys8M+VsbO0oE66gv1zquX1tklAfR8i+9mihOdvlj0eiEJTxC3An?=
 =?us-ascii?Q?91clBQaU+bIohF+yceJIhSNDFxZ3lo34p5VLOIVk1+DXvoETdnZZmOCWf0km?=
 =?us-ascii?Q?pTiMM/3kjfoQlzN6xJlF3GpgXwyMvOjP7NlojgSQjdcgxq5l6G/QxzJuL9dW?=
 =?us-ascii?Q?HOuHXYSChk9RxA928cfo8Y41n3D3sqLSQV0RknD7BOO1HMZJtMcobp6CU9Ll?=
 =?us-ascii?Q?Z5bZl0GPx9Z+lVLBDICPu0MJghaMjuCDFswKH5FOo/xG3v7doZHzBDXm65Sa?=
 =?us-ascii?Q?WDyFqq9kXj/XEL3LYHubocTKRmLkcnCH3J4K4OqjReEPgxZQLk9zja+X3KV+?=
 =?us-ascii?Q?z9tYF5XoWdNNFxNuEFl/tHMyu6Ola9bpLhOgMobOwhP9q+F/J1RNzA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1/6NV5dVlvJcHTwdBTLvr4j54NtnIC9Fqgd21J7U8NRJlekDsSDgBXWLJrhA?=
 =?us-ascii?Q?mFOKQQzhUvaffRhsoYouvL6IVw7qhni+5MqXfKnxRpP3DbzJwv6m1cGy4YBM?=
 =?us-ascii?Q?cB8OwknRZiV/4q5VbyC7IiV/xnj6aM/PVqFXnSmqkhErbBWbVtIfig+8DmG6?=
 =?us-ascii?Q?SXMcOrvUO327IUBSjCs8pMa058UYMLMZaw6VE9YxyJX1PNH/zMw4OECDMsea?=
 =?us-ascii?Q?BXU04OS1frp1ns9Ul4wuJ1I3I2OWsYrBHE2TgnQqvfjJ4YsK/PrmoY+j7TkU?=
 =?us-ascii?Q?8FhXNmX5vKVQp8r/iwo+N0nGKskLACCKOMDYvZ3duKnN7f/dSnNyMUGCY6hy?=
 =?us-ascii?Q?TkGLbK0tp7P7hoxX9cQl7lA+97IQv2/trxxIW47idi95Vb548EDegMJh7idw?=
 =?us-ascii?Q?RmL+MTrSMvLA2brggbRTKc+cVVQTeMpsqI4ahH1TBj61mJXP8xmMyjK73O0Z?=
 =?us-ascii?Q?G6AkLr07dH6m7KxNIiY2OYSMN62cABXNoz2YpqN1GRIlEx+R1oPYFTL+plYS?=
 =?us-ascii?Q?+3VFZJyK5rLA0w4ocOZyjjZYVxk0r0OpLGIRH8tZ6VRnZzekvCiV/ZpuVpwY?=
 =?us-ascii?Q?b6JEdL0y85LjxcbPsR1qqxfqmC6d20DZ47QTRJmCmZ1UVmicltUfUhRbSrKZ?=
 =?us-ascii?Q?xR2NTOnaux6aTAkHeDsCz8bhCdMSSLZTosGdRj754ITpqITSlWdMxf5haE/Q?=
 =?us-ascii?Q?8Ktool0r7mEHBvp6CY6YSaE6I7Mn87G/lhRwkgDyejZIfmRYl0o2XmkZixY5?=
 =?us-ascii?Q?Add0HaofuUvIXEfxGd2mzaFW3o4ToQb1E+fGEJFN53sT+M9Kb69ACpI7HMDX?=
 =?us-ascii?Q?b8/GnUo/qE0U/22T3PcVullud0GjO98yDxXKtXjK0HrHkDe5LTG3W3C1sQr9?=
 =?us-ascii?Q?j60OSWMY+IchUYRt/c/4WIPyFqjHCQgG4Ty1jlaPftj3+hQci3accaQasFC2?=
 =?us-ascii?Q?nvn2f+mpfYteL+AnNCxPQkaTljTH9F0AJDnRUl5s7pBKrpp4e7fMOv3/KkTh?=
 =?us-ascii?Q?/U4jkX8uTTHxdYDNfyfwGF/bcPkNWSIprRuzaN/ostzVQrTxxYiQ+QdwInek?=
 =?us-ascii?Q?XTm9Is6LIktZ6IMKkZivBKNKZGna2sVyefUDQX8YZGfaOv/gbXnHEcgNj4eH?=
 =?us-ascii?Q?6gPa4igHUMe/CKPaP1Qc0tXaL7/C8CCI5d5FNt0H/j4HXyPrSbCo0PIHhPG4?=
 =?us-ascii?Q?tvV+uEYVFGJhXVy0WmBm78Zej5qn02XaWYz26O9+gBONlPeRRNDcZLb/BcZw?=
 =?us-ascii?Q?TYc8W4StGvlg2Vo4lUv91ecH18YTFUUYk0Qfja0ZRMjWejJd1Aw577YQQ/NC?=
 =?us-ascii?Q?bC09LIv06VYHM/2e/JOxT60OUJs7QiKxr1XRDhAmo/HIFiBqnVzpfhf5MO5o?=
 =?us-ascii?Q?A3NoCjInjWfwuqtjnBYuU4N9m/OrPm4M+bilsLr36fdgF0uIm2gQJwky0uHE?=
 =?us-ascii?Q?LS4R/QGYO0w0VWm0NSmiz/bzZitLbfhLDiakRRU9Gfe3V6VkWZ39+ByN684Q?=
 =?us-ascii?Q?kREO2buOB/bPJsiEmu7EfVhmPDf5d/vgniot0sE1rBhXOU55HzSKqRA88rHt?=
 =?us-ascii?Q?Xpfy5Fr1CGolA9lCr78NYhqDmYEgppguD3h4+ts7ZKPa9dJMfhGCPORbKkcn?=
 =?us-ascii?Q?XsiXgnYsW68KJcWDyW8Ob9I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f227534-d6de-40b3-b993-08ddd5cf9706
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 16:29:32.4693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ixAPjEHu9Nj7GwdWvQvD1JDCfMYNEhQ3ZDSE3q9I8BIAyGbE45XyhaLU2lWZrlZ/YO+EbWhV2DyirKOfoZMJ8mLqVAIltsCHK9HbMvyEF70slye62of2cQy1KO6XdjB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9157
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
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 03/12] drm/i915/skl_scaler: Introduce helper for chroma
> downscale factor
>=20
> For 444 to 420 output format conversion, scaler uses 2x downscaling in ea=
ch
> direction. Introduce skl_scaler_chroma_downscale_factor() to encapsulate =
the
> chroma subsampling adjustment used in scaler/dsc pre-fill latency calcula=
tions.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c    | 5 +++++
>  drivers/gpu/drm/i915/display/skl_scaler.h    | 3 +++
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++----
>  3 files changed, 11 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index cd7ebbeb9508..05ccd26b817f 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -968,3 +968,8 @@ void adl_scaler_ecc_unmask(const struct
> intel_crtc_state *crtc_state)
>  			  1);
>  	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);  }
> +
> +int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state
> +*crtc_state) {
> +	return crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 :
> +1; }
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 12a19016c5f6..257330d4c329 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -45,4 +45,7 @@ skl_scaler_mode_valid(struct intel_display *display,  v=
oid
> adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
>=20
>  void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
> +
> +int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state
> +*crtc_state);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 74ab10a04e83..97b42bbf5642 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -30,6 +30,7 @@
>  #include "intel_plane.h"
>  #include "intel_wm.h"
>  #include "skl_universal_plane_regs.h"
> +#include "skl_scaler.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
>=20
> @@ -2182,8 +2183,7 @@ dsc_prefill_latency(const struct intel_crtc_state
> *crtc_state, int linetime)
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  					&crtc_state->scaler_state;
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> -	int chroma_downscaling_factor =3D
> -		crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
> +	int chroma_downscaling_factor =3D
> +skl_scaler_chroma_downscale_factor(crtc_state);
>  	u32 dsc_prefill_latency =3D 0;
>=20
>  	if (!crtc_state->dsc.compression_enable || @@ -2223,8 +2223,7 @@
> scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int lin=
etime)
>  	if (num_scaler_users > 1) {
>  		u64 hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
>  		u64 vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> -		int chroma_downscaling_factor =3D
> -			crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
> +		int chroma_downscaling_factor =3D
> +skl_scaler_chroma_downscale_factor(crtc_state);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>  		int latency;
>=20
>  		latency =3D DIV_ROUND_UP_ULL((4 * linetime * hscale_k *
> vscale_k *
> --
> 2.45.2

