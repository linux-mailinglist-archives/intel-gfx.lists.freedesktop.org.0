Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHZnI81Pc2ncugAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:39:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13D97463F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9E310EA9A;
	Fri, 23 Jan 2026 10:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqKOEfMg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23EBB10EA9A;
 Fri, 23 Jan 2026 10:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769164746; x=1800700746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oThnN+wGNyuKRYz4gmeU1DCgWv0A28+RsRbYRhADQ30=;
 b=hqKOEfMgQVN0kP2sKly4nK+r8/ivBzLG8ElccGRxtZ7hSd55QVX3VPOZ
 ObezAEN2N3Nruwxc9s7pCTEWr44fAFjmAE/4CYg8pAo+b7Dl9AuTKjuGa
 8ooASDPaa67sX8oBEtEswr16gA/A84H63O+W0cEIi9+ny2DksJZYNIVJT
 1WHfVE4FifCBZkSeeoc67POvQ3STigP2A+vtxqoWLBKEVppk8xbkPIZmj
 mACi7SBsopIA41//r4qRIQ/bJtnikxnU3Bx1iQcjcza/hDJimw+kAApfV
 HsnWnaPK/hiu0d6Kgn17K6ZKkQJLeCNJhPI47dTGUSMy74kaJA74xcq8k Q==;
X-CSE-ConnectionGUID: 3xjAqcLxQzup93iTCocB9A==
X-CSE-MsgGUID: rsptEN5TSH+DBIZhMVIK0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="73004854"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="73004854"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:39:06 -0800
X-CSE-ConnectionGUID: 7n9YFKHhRCOzRcz130w/Uw==
X-CSE-MsgGUID: FEy9eBVNRouqGT6wCeyU8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="244606689"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:39:06 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:39:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:39:04 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:39:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ITNqGP8u6r8W9604hwLf8rxOepIuNRv12bhGU6r0Xaq87GJkqXhr3qPUk2uSVeqy432wSpCF3NSOhchE7i7kE+aM322FCPAJjRzC1nwOIdPuxeQYvHPwESAqcy4oG58IiEwgPLG9SJcaemGJ2bUW8HFFQlHOrUkSV8zAeaNou7NGFiTENTxybQsEg73iwxse2nA/wdAW7W73xCyBVbutoPBRmwe4OZGOM988bS3pAokV5DHT4wqbZa0c5MUHoOpP6G4HQpcpMES9ugpBjWgu45lxXl88N3gUO5XsWa9EYRsqPHhavSIOUr9EFNK7jZBC1t6mEp7OmS/SWMWLaGP0RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MU7gC0Dp94WRLSlt/3AHGlYHk7VzthUuDOIE8m2BALg=;
 b=sVnxkYAXhJNZ2IbITkEdoqhfrnMwTglJZGMzBBK2eS/XhsKtHqTYnm+m4gbwzoAvubcj936YVqCdQhtxfSo8WcoDsJDRXJcLs2prnF7iO+oWu2iQb+F5BsL/B+413TjH7jzCaAHHBQHjy5RjmAeZBS6eHkVUCUykgLAKwJVRjjS1ueBHt50pH4S8E4RTEQX/SjeskmNKa+80j5DA9M2TWfHzwAXIoHaXRWlnVHdr4fRX/2k0TVh2QX2IGpFYSmD2qst9CV/KEZTjjnITC0SmuJlx3Qaczzzh97SNrGyloyHfvgkjWUPFleyZQsPXBdK4AFF4WviSAIqKxGDHnB9M9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.12; Fri, 23 Jan 2026 10:38:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:38:57 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 01/19] drm/{i915, xe}: Extract display registers from
 i915_reg.h to display
Thread-Topic: [v2 01/19] drm/{i915, xe}: Extract display registers from
 i915_reg.h to display
Thread-Index: AQHciyrl3NhlBVOmxUu7iLDL5XGsOLVeCsoAgAGHu8A=
Date: Fri, 23 Jan 2026 10:38:57 +0000
Message-ID: <DM4PR11MB63600262D057D0A1B1899DBCF494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-2-uma.shankar@intel.com>
 <a361944ea5c4c8d5cbac086270d57e8d319d003c@intel.com>
In-Reply-To: <a361944ea5c4c8d5cbac086270d57e8d319d003c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7177:EE_
x-ms-office365-filtering-correlation-id: fbef0e9f-d0bc-46fe-93b7-08de5a6b9ce8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?iXUZ38wi/MCEIX3tV/B4GkcsXQecyAkHsrn4G9opLA/wpvwn/mEhurSS3aGd?=
 =?us-ascii?Q?KZT96dPZLSDuzEGtaVTM7bvhKSTcJsAFd1a9aApZuci3HbMBM8VJuXnvMvuM?=
 =?us-ascii?Q?0KPwGOclv+5qzU1fB1j5pB1QkAk58/ZSrlUeji9ob74eVntadIvtvPBNug/G?=
 =?us-ascii?Q?cNYEfh+Nsxtrba3UggNmROffuPnut8wS/DI2HahPFHPCBwAWLfZtI6zF08EX?=
 =?us-ascii?Q?wAkjwqR0LqA63T5Wkx+ynDvEv0tEtdpBhtvIkQ7sk9BUMLV/7Inc/jtahnKd?=
 =?us-ascii?Q?Fe/cdJ9YSQtTn5eIQYNVt7RIPupdxK0l504iMacb8WJGW7+NCNVlOxIcIU1A?=
 =?us-ascii?Q?Cb00N2MrxHeuDjmk0jwSA+vMN+cJOyNJd8cDbNii0V8nTTs+0xl58iNJcoAC?=
 =?us-ascii?Q?BNVO1GOQiJyFRemEz9OyoFZ2Wq9iTlbdDkYFCmmHnMzRA/XrLKLHBdJWOSMC?=
 =?us-ascii?Q?QLmAsXCVT0kw0q4W3hEexqOTYstj4me7ygccQwjlr4sLGge2DcJ9oI5aA1Cb?=
 =?us-ascii?Q?OigVzUHViugVE/CAGop0m5EjpLFPR/0uOzT0LSwuId2IrjAZShgrkHQdadKq?=
 =?us-ascii?Q?AVpgIRtm1ZMw4ZZVl60B6+lRxbEc9joApbxTPdP3PVFDKM1hNi6OwVnOQ3RY?=
 =?us-ascii?Q?uTgtBJ0Bw6vXbXvyp8/OWbFrpUdin6wDj+vqGpxrcfFjUQBrX1Qq1SoxdWx4?=
 =?us-ascii?Q?sF7L7gBH5aYRzGvwHHooOFbykf6DQQBkQT3EPQ49gX1BFA9riTKHRo2nHUrG?=
 =?us-ascii?Q?cGWZvwcHDfvZCcvMaIYEqiQMHbGqMl/29uNnuvgrqvVoR3thMNKIU0OuajFE?=
 =?us-ascii?Q?IuHWOPZgFnpwgaQXw1LPHQhxxtww5aVewaPcv5jEwWcmNhOSslW/EYt/T5Wq?=
 =?us-ascii?Q?77KUjR+hvIzKWKthhlFl3sJwONiVVtFCa0XT5ApQ7EGZU0Hku17rK0HoltwM?=
 =?us-ascii?Q?iLstN+AqUXIEhLH6P8Qbdj1fMSrWEzK0ivxO/fixC0QetznJYJSI2DPg/Opk?=
 =?us-ascii?Q?xlmRjKR8qK70uDDfp11bZaCPSeU0qsxu5uBJucldNLwkPQ51zwMaPCKdwJxU?=
 =?us-ascii?Q?gZpYmhQS+7XqXVawKdwkf5VHD3pzxxGtIfrfn+W6MQDz837j5UHWS03QyF1R?=
 =?us-ascii?Q?zdvXMbpEdsD8gLmS2SD+1iViDCeNBrZwE9SBg3s6N2H6/aRGJ+jGjSD95tpz?=
 =?us-ascii?Q?c0Mbh2fJKcImUjfmW2Zf+Xd2efx/H/6u81DwrhrWUca8RWBMFuXi+KiwCbqe?=
 =?us-ascii?Q?SzmYiSYLBG5zwUNvZmkUZNIN86SYcjRHv7Ep4rzKvP5SIYGTOqzFJkXEKYse?=
 =?us-ascii?Q?uSvXT4epiC88CXeXRZFRkoIRExCHl9COTup5les+wlmvSdPZCWwezLBJh5Ic?=
 =?us-ascii?Q?XRQrOy2TzyU29FecSmp2GmAvjWOaGQ9xvkPYb0ARAwIQXluKfqzqx6cdsCwX?=
 =?us-ascii?Q?FOfVbsnWs2Rkspk2wHOK+j6iK8bdzQOaBI2NP+TCJJLHxXsbNCVMHSiJfGcC?=
 =?us-ascii?Q?ZG+yUkT9Z1z4afGcfxUmyOQCCbKujiFVSqyQjg5Z7GaVJPXesfspaen5ItQL?=
 =?us-ascii?Q?dmrb+p1z6Ny9hO8czpqc1zSq/lDBELj5awJO60YC0Eo6XMHAiglDO+L30k54?=
 =?us-ascii?Q?KGObdAnPGLmtC3Kpw6mJAvY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IH4ivr6xWlZ0x6P/u6vDnAfVSC+RwEGyFI+8E9NNI/xr4pwgFnFADucAl8DY?=
 =?us-ascii?Q?BbCg9r1BEe9MLOopvBn55RrBZTENAVt/WrucpuI9eyStG0qwlljn6ODcPhkT?=
 =?us-ascii?Q?vQAtzJD9mSfGhR2MmLgpsbzULdxI1GMQVb6J9STXMCP5JEl2y4H/vcScd1OL?=
 =?us-ascii?Q?FiKkZ7MpSf6v6mq2VecISCDwnq7EqKt79p6Dma/t/a8Lwc71LB0KDaCFVa/b?=
 =?us-ascii?Q?iqwrl4F+fx+6x2TXs8W7IeJnd44aIQfPJ07wmmnva1ag2OZlzd29wpLcTVJO?=
 =?us-ascii?Q?NGqgrOLg9UpVCL6ClQy69t1m5J+3PcT81vUDaodnbptPvDOp9+My9v6Q6TpD?=
 =?us-ascii?Q?P9TBcmiP4+F9yHwOwYBaB1b+SCGCqPgvjhZKpddmDvUN7uI5MfMc7jxPbbxl?=
 =?us-ascii?Q?wPSfcGXZZ79dlRQAUanHT7LVAKdrlEVB89Z+E8xr5foQl4Fw10Hk4skHbopI?=
 =?us-ascii?Q?eqmzJ/GcjnepNzCFamstYSEsWgAqZjEP3sWmr70ZD05CIISUS5dFRqs6PvTO?=
 =?us-ascii?Q?Y0ZZecRp1wzPlLKBqPBEJP2iLgR6ZKJo66aXbuGikgMwnp/N7D102fwAgFTT?=
 =?us-ascii?Q?I4t27W/K5FaBfsOPCiRP6vHu/wrlvxa2x+gBTmdSQQ8et0lY1mPbZh8akAIX?=
 =?us-ascii?Q?eLfaS85IXmo8FuDEvWxh2BmKavkEsp6dg+eVou0kEIogunomAKJK0DqkQKCB?=
 =?us-ascii?Q?rmXd/utJMxlKghSbjAuW6H2MYM9r62Nnm2QlH53VzxSdrAoxXh1G9ckFGIhs?=
 =?us-ascii?Q?iQTsdlI2PkJ5er3R+lL9dKpCf28KX0rGmUcbBMae/HnyuZGv8agoStb9NOgk?=
 =?us-ascii?Q?LWoXZBfl2O4KI+cekCdTy8LYcLh2ousWHUbuElOcyXdIzVZwkMGNXXmypYqM?=
 =?us-ascii?Q?QfICpmFdZcVuMIxjOBYXhpwMYPPVRFUMgvZnHbR7LCKNbZZE1lUNqPrUN69Z?=
 =?us-ascii?Q?qJTDK7AAm48kuhUnvknWJ6dtrZQ2IESfGlbF0maoOZlqmiI7pF3IpLNmBs6E?=
 =?us-ascii?Q?Agq0wh0GEq4ycQ0OAqLr5xY2hhf+TczqISDJf/IHzwRYxFjWtINCT4WBVMHo?=
 =?us-ascii?Q?CTTMHTRtJcbhhn1jpSeomlEJoVn3vMn7TKfMnsO6PICUiOzaXjTzVxAgn1Wq?=
 =?us-ascii?Q?fHtaMZ5+bnK/SV7tA+3dTZ6SsVAokyK4lnRKTNT1xXk8iPZQCf5ryMAQD5DA?=
 =?us-ascii?Q?L4wPnCzJCIBDp6cowBpG6yOb5KmBqmHKz08T5NaJGX1VckbLQahK/PjNfBSJ?=
 =?us-ascii?Q?U9XZkDXjUXXJ+7FsMxOCdvB1YspDWavkUahzxEETjbwjP7VpyBsJKLm5KXqh?=
 =?us-ascii?Q?O3s4+yFQwpXr9uYKZC/WWVsTwug3RldhrieSoXcba5hoPMUx0YrhgaDmq9Cm?=
 =?us-ascii?Q?EvYTT0/20GRXr0he7pJR5xHvIm2SLZ1nR6zW1V4G/4ASe6LwL6hSDfIpSGXM?=
 =?us-ascii?Q?e0EwutuNfqzWH6IHcZseOXGvp4C9loO58rbTLYeusvVNEuY6gXHfCDHo986e?=
 =?us-ascii?Q?uc16V6xgrbsUa1lX6Gl2A9f1Fe4ppkA4z5SE2UAW5TRZk43IGNSHjI3CjQ8k?=
 =?us-ascii?Q?fHwrkm6UUfnYGag0B6h48UP2tggvYQ2fOIsx/fkuFPYEkaiFy+hK6dZvn0oe?=
 =?us-ascii?Q?jUqPA8QqlJwmzu/2tsOaQrFgs1U5cXBbdWI3vH3HwfpjoEvkL3SC9llTomTt?=
 =?us-ascii?Q?I63NaT/b25eTkKn00McezmZ3DSItvrpgmyTpC8WjMbOxWeundsyTKJFicYiD?=
 =?us-ascii?Q?n7hGXjTcFg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbef0e9f-d0bc-46fe-93b7-08de5a6b9ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:38:57.3324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JNuLxOayhHO1jc/zullySVQzpp8+BeBKV+VTbrkI5TXWk24/cHnCKv4ps2kRyES9ZBeOoFoUlffvc00FXQKR2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.985];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B13D97463F
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 4:47 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 01/19] drm/{i915, xe}: Extract display registers from i9=
15_reg.h to
> display
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > There are certain register definitions which are defined in i915_reg.h
> > which are exclusively needed by display. Move the same to display
> > headers to remove i915_reg.h includes from display. This is a step
> > towards making display independent of i915.
> >
> > intel_clock_gating.c can include display header directly.
> >
> > v2: Drop common header in include and use display_regs.h (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Oh, the Subject should just be drm/i915, this isn't directly related to x=
e.

Sure, will fix it.

Regards,
Uma Shankar

> > ---
> >  drivers/gpu/drm/i915/display/intel_display_regs.h | 10 ++++++++++
> > drivers/gpu/drm/i915/display/intel_pch_display.c  |  1 -
> >  drivers/gpu/drm/i915/i915_reg.h                   | 10 ----------
> >  drivers/gpu/drm/i915/intel_clock_gating.c         |  2 +-
> >  4 files changed, 11 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9e0d853f4b61..9f8fbfb2e115 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -2021,6 +2021,16 @@
> >  #define  TRANS_BPC_6
> 	REG_FIELD_PREP(TRANS_BPC_MASK, 2)
> >  #define  TRANS_BPC_12
> 	REG_FIELD_PREP(TRANS_BPC_MASK, 3)
> >
> > +#define _TRANSA_CHICKEN2	0xf0064
> > +#define _TRANSB_CHICKEN2	0xf1064
> > +#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe,
> _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
> > +#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
> > +#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED
> 	REG_BIT(29)
> > +#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK
> 	REG_GENMASK(28, 27)
> > +#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)
> 	REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK,
> (x)) /* 0-3 */
> > +#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER
> 	REG_BIT(26)
> > +#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH
> 	REG_BIT(25)
> > +
> >  #define PCH_DP_B		_MMIO(0xe4100)
> >  #define PCH_DP_C		_MMIO(0xe4200)
> >  #define PCH_DP_D		_MMIO(0xe4300)
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > index 16619f7be5f8..69c7952a1413 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > @@ -6,7 +6,6 @@
> >  #include <drm/drm_print.h>
> >
> >  #include "g4x_dp.h"
> > -#include "i915_reg.h"
> >  #include "intel_crt.h"
> >  #include "intel_crt_regs.h"
> >  #include "intel_de.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 5bf3b4ab2baa..d247e107f42f
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1022,16 +1022,6 @@
> >  #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
> >  #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
> >
> > -#define _TRANSA_CHICKEN2	 0xf0064
> > -#define _TRANSB_CHICKEN2	 0xf1064
> > -#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe,
> _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
> > -#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
> > -#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED
> 	REG_BIT(29)
> > -#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK
> 	REG_GENMASK(28, 27)
> > -#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)
> 	REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK,
> (x)) /* 0-3 */
> > -#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER
> 	REG_BIT(26)
> > -#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH
> 	REG_BIT(25)
> > -
> >  #define SOUTH_CHICKEN1		_MMIO(0xc2000)
> >  #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
> >  #define  FDIA_PHASE_SYNC_SHIFT_EN	18
> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c
> > b/drivers/gpu/drm/i915/intel_clock_gating.c
> > index 7336934bb934..4e18d5a22112 100644
> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> > @@ -30,7 +30,7 @@
> >  #include "display/i9xx_plane_regs.h"
> >  #include "display/intel_display.h"
> >  #include "display/intel_display_core.h"
> > -
> > +#include "display/intel_display_regs.h"
> >  #include "gt/intel_engine_regs.h"
> >  #include "gt/intel_gt.h"
> >  #include "gt/intel_gt_mcr.h"
>=20
> --
> Jani Nikula, Intel
