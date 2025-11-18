Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DABC6739F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25C710E1E3;
	Tue, 18 Nov 2025 04:14:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoEWefW6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B53E10E1DD;
 Tue, 18 Nov 2025 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763439249; x=1794975249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+qj5vqClJ22rbN0U07U7pZngf8fwAaECgcrS9gH8V18=;
 b=aoEWefW6EZrFSPgo82HEfBV7vGUWfiuZ9cdFtr5eDc0YnzoHgTieBXq4
 JzID0mWf/uDF7KMxRDvhnZ/AmZqxa9xtuu+XT6JLq25mpRikgmtqPgtMQ
 4/cYY0wlURGcuh4eRG+Tjp2AWrglfYNm8B2KIi7h2XV0md3aPuG2iyqft
 HVr94nhZU6dc9Jtko1IkxRONqGtmrYhkOE3IVh+g+eKzGthXLZYLEgNWV
 FQcx6P+GSw9JB7G6b3Jk1SZ824uRGEyaXzN+9DEMoH5zYHlzHQ1vvGPvR
 bJH7fPx6qVv28532FOg1MyS5Uq7GFrJqkzqr1KZpgUjHYHvaQlxRvN1M0 g==;
X-CSE-ConnectionGUID: 13ThhZ4sTXOwm3zGEvG0cA==
X-CSE-MsgGUID: SCs87E+sQwKRLc05Aa+qQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="75774473"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="75774473"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:14:09 -0800
X-CSE-ConnectionGUID: UhqilNCjTLaNhktw7lDXzw==
X-CSE-MsgGUID: vBrlBedBT/Wl9dVY3UTGSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="221546363"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:14:08 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:14:07 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:14:07 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:14:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nG+sl7zioP2AYGMiRbWwVwHcZZtkJJo2XS312ihwYWJUAg+sXFeSQVhc4fH8GSpIAtXHCrJ99MzEqq7u+lZlhrA4yiP8PWhUIJDf1tFHeDgHDcT6JjqhiPlesJ0hLCM8IPLReWdVg13E+b5PBW7BCG5cSdajD6HymNthbf8pCS8X/5f4ZUiFgeCcb8dBDF+TB7ZAOwDKtRSDj7Si/qw0gPQ9+U55fK5xpNg9Dkpq5XKxOzUS/mt/av/zYn+V73trBKJLSkxbDNCA/nfHwPeG2rMgb1TmZy4iv3YiHsEgg0BgX2k5J0NDAffkiTn4StJ5dtrMixxIKyfeU3t8eLkLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+XIIXhlVsq3ZPWYbvobj+dbAK3EoNGx0u+y1U4vaKA=;
 b=VTHmAOG3PVPzCOvko0du5HGRL5Au+X3YcjolZkgxEUVWWTlut74ZoVI7o98tMNlC4/1WJ5dD4r0ewG3w5LsD14NcmPertSXvdZdERy+NmQlPuZzqCYVn3M/zLEPNzHK2eXtpWtRTs478GSdGFzZH383k92mbfsPGTR/ty5SRXXbtMIhBcZy+Ho8Um/n5Rc4vA77uCLJz/rLLAPETJvnoCASAIQohrAQ8veIMPt2N8kI5M65sd8FgW/25VL8XvY+IC/TKibf/V6HrbE99ReblJaRAvwQ1qcmmBLgPdfPFRKYBSjBQFxfaT4FpTKRBFhJVRQLgrOUfhOiouxWdIDkc7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CO1PR11MB5171.namprd11.prod.outlook.com
 (2603:10b6:303:94::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Tue, 18 Nov
 2025 04:14:05 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:14:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 32/32] drm/i915/cx0: Enable dpll framework for MTL+
Thread-Topic: [PATCH v2 32/32] drm/i915/cx0: Enable dpll framework for MTL+
Thread-Index: AQHcV7KzY00QtEXMc0e4uZcSpbkb7bT3094w
Date: Tue, 18 Nov 2025 04:14:05 +0000
Message-ID: <DM3PPF208195D8DCA115673102EB6D2DE51E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-33-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-33-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CO1PR11MB5171:EE_
x-ms-office365-filtering-correlation-id: b002af67-844d-4ef8-62b0-08de2658e9cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?KNePKWRN6DMZTuma6nkfpQhf38GetxSkhvFFpR4W9yDl7KBi/TyxDg35iHLF?=
 =?us-ascii?Q?zwvj7tUKDvVSY2KxbE1WJDCjJHZMle55yA4R8fSYabmFkSunQlBbjryVYIAH?=
 =?us-ascii?Q?Sf7Ip24cNjQIdlQIsHOT/FV1TGXy5U75fHI9eYcDy9DhkYO+amdUzM4ekUOe?=
 =?us-ascii?Q?d6+uLU2j6VpnEIzRREY0QptLwIC+GXBH2+dQGP4whTyq4sMDjY4eGBEL3rZT?=
 =?us-ascii?Q?nYdSWZ1hG6dhXZhT38ZGXRE57Pxue9VeVxa5OEOU+cLt4y7DmZuODCzbGZTq?=
 =?us-ascii?Q?KyvP/xEZDSd2jUvAsx+DHRRQ12sQ80/gxRIJH4Lt4iHPnyiIxctqe3WiObHQ?=
 =?us-ascii?Q?2Ko8zYTu6Nr95t5cjtOvqAeUXA56NeOVIlGbmYX3cynIfgVUmsbIBs9HHsoF?=
 =?us-ascii?Q?Uzes8zkLwg328jbvDMD6I9l2ta4woxQ255W4+I5nL9MuxIc6iM2ilVui4r0D?=
 =?us-ascii?Q?g0k2IO6VI/4225OtMf8BBSPUGttzC1v+cgNrs1vLrMNgszt8wokt5xfxdm4f?=
 =?us-ascii?Q?qdiFdx5Sx41qM0H1Eh06iFSUYIm2vfhxgM4TtBFQNv+bMSUJUkGpauW0BIoR?=
 =?us-ascii?Q?gGcSrk5pXHsXbmWCY3TznJ8YXUzQOOA0D6lhgjIg0nKT8hPytrAUNniK1tqD?=
 =?us-ascii?Q?Q2pHElCeMhktQsAV1rHk9ZsNKAhec4ivNmIXBkjo2kjTy0/58Whr++WQJxCe?=
 =?us-ascii?Q?0qDlESrkxXejYZMblTSCjtUy4UcjxUBne2g6ATHxkh1ZwEvUG7QLOHSyqfFq?=
 =?us-ascii?Q?OMiHUrThEsR/DASVO/V7eqPmMrbr560pING1TBfI+vtYgO+9zBDXWqtP3iDE?=
 =?us-ascii?Q?YxQNMCqGnUl5Nn/FoM5sUQX0pZ4m4BHMHDqUeiKCy/rEukVpOUKyqMZZiz6c?=
 =?us-ascii?Q?/3aGiRWO1jxPpYqGRjLcbmjp6kNL+6VnsCTLtVseGcYoj2qpVz9EaS3DQqSR?=
 =?us-ascii?Q?x0QesM6wFAFk1N06PrrO2SGxGwFqVFrcT2A3UyzfeIy0SqVrk/WvnH7tXHQQ?=
 =?us-ascii?Q?h0h2twl1hXqS9RK7fgnDeg2XRqAM0rdnhjXNfqShSl3ZGNruoM9hkgBaoFjT?=
 =?us-ascii?Q?TysWJf0C0igoUQKiCP73J4sKiH7N222UuWHr6SxJXUITJfKHeix3jxJEgZXc?=
 =?us-ascii?Q?17ota4PhgnZGE/0m/xvC4LcQLwa6QWYp+5MiwoiK4vUfy/IzACPcSGG1MHel?=
 =?us-ascii?Q?VOpHw70qNPWKcffyY56xFR+7BZhNM5HzB6N3/koebSoWR/jNry+o19hpH0ng?=
 =?us-ascii?Q?swFtuMuTjX3WzN8F6KG+SmM3qBuE7VWj4djTo5zRtp2j0ADaH5X/TS1K2f4y?=
 =?us-ascii?Q?frWnZn6/Q6sPHejSmr/pUbCoD/6mmVGnj3+uDfNVfe5pFCdcIjR1GPRi/NIN?=
 =?us-ascii?Q?1+b/G+U1sHOGanuDHkenwP3cfJUP0jGsXA0F3cknR2xsFKvxGm57qLu4M7Bz?=
 =?us-ascii?Q?qlDfWIyPo5jRLolMxVZQMomjA7TD+NnnAUdI0qGRSCs1r5Zi9XI2WhIApyML?=
 =?us-ascii?Q?OwVyyi51HjYdt8tOAJRJ90ztjN97awDyMZSe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bqQOF/zxcR7ItyaXxJkyW0nfkYkpdPfOYO6ErU5pRfOyBjPIToLR2tdy3xQl?=
 =?us-ascii?Q?ij+C7W/dJ2Fcf3dt9hlFdLPW5pcDV8Uu+GYGfJVYCkLrRN0RvpVHSbVduTTM?=
 =?us-ascii?Q?HtwWSxMqcOn2SnDEa/eUoJW2+5uwt4dcoTCYEVkHi8tySCaMLH6FMsY2saHU?=
 =?us-ascii?Q?zIHLkpS2E8CXYsSL24ZBHnS1DVP0V0KzKgzUemuOvFI7ScbS+6XVZWx7e3Kg?=
 =?us-ascii?Q?zo2GE8lpXJMvZix+emrAeuFRIwWBDyqSjlwu5PfWuCxyxVY8tcLxs3I1xH35?=
 =?us-ascii?Q?2Hv2qd2w4YZ7UvRkId3fAacDn6Gx0uHiJ+DWV5WGCHuXVL8QMnmjkcHN9rm6?=
 =?us-ascii?Q?h5Vmf7OO2JqIdOF7ZD+yODVZbfKHc3yHad2k+xAakFNYFKbMMw+T4NnDJm/+?=
 =?us-ascii?Q?EBaS4tBo3sfYAohn1RoszbWKNqeEnVtcRMSzE+S4jpFXfTUBUrIzhMBAVIr2?=
 =?us-ascii?Q?GpJVk/30TDa7kGbTw5uEP7Fiz+EBMJuaMuyIYCKaGA5kOKWtHbpi3iPbc/88?=
 =?us-ascii?Q?MO8Rew0AJjFbtgQzi1Wxun2Qsb+EW/5PLLr9ENlGgNm33BgCqjSZeFb9nsrK?=
 =?us-ascii?Q?x+VPb8nLqOHg3VVCTpwWSyKI9uhWtCC/1AQT1NYBtm5PS1xObLlawQfyRU35?=
 =?us-ascii?Q?y0ILT7zioGoT9skERWNqL3VXmpGKf+qOfNVCrPF45otpIfWT2QvPf4hPOtgp?=
 =?us-ascii?Q?ES4qcdftUKBX3SCFGLldid0V1qNcRQyBJ3kYKPBA0t1SrDMSlPLFi9ScZhau?=
 =?us-ascii?Q?3iUn94DYM3DtvdzBN+vqd/t7EBWVCPnZwpB+NMONz/svxAF2TV0n6PTQCo84?=
 =?us-ascii?Q?BegfbMxBsLnvQDgrZ9NoAQ423B4afh06qAAoePZ7yv7Fk5aFLK/Yk7kMNI94?=
 =?us-ascii?Q?5BCqWCfaYv79PBCPNtDh1NCbEsbKAvQ9LpH8pfPYs9n4E2EECI4aV3LXjDJx?=
 =?us-ascii?Q?lwSrYxABU/Fu/9iIbhRHaRw4L3PzjFE7ABd8rQt6aIA7TUYIkyMDf5zPXhWc?=
 =?us-ascii?Q?iFPRz4vnkFeKsyav6GYfj6ZKSR0UZ3KHrelvUVy8AMbopoPTonBEjU7uq1ab?=
 =?us-ascii?Q?kMQj1kNmrvy+I/E5EdivVDBXebHIY9U/1SA+ZmPRWpSDt5pC4CsRr6joiET4?=
 =?us-ascii?Q?i3tryLqNXbHAKJYoH0eXRPMvfzo/DDnnui9T2RcpLfdacqOS2zyW+3Yri8j+?=
 =?us-ascii?Q?P3jLCTnZG5UWKECbFKBwdYJxwHViqUI99oEyMPIXOuqqNCuDtxSQ7SuVKElQ?=
 =?us-ascii?Q?3nbklyv4tWhSVWgAwiID2yK5CnOgVirgb2f00tXUaOQTcD/jwZt4c6ZhDyhc?=
 =?us-ascii?Q?0d+rHwLyQJy7F6B0EJAipJyoytzBn1sWZu16b2/1JUYjIKLMa3o+G44aOlsY?=
 =?us-ascii?Q?YyNVLaQAFeN7Jcf7eMxTMi44SGKA4xIXUFUPLVCKo2K1WDHGqzuEVCkvOyiJ?=
 =?us-ascii?Q?LjwQ01bzFX5PZs4ZZ8+M4ZpBevia0EKh590vC4YN1FC4l6/2mBR5GmZXuy2Y?=
 =?us-ascii?Q?IALj2Ver1kYy0DiUjoIrSryU94bZt8QSgLd4snAmSEPEAMp5GRU+0vqcKS5D?=
 =?us-ascii?Q?o49ZdFwliIXGutRwfGfhzuDxMx5gMWefj0nHq5Dg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b002af67-844d-4ef8-62b0-08de2658e9cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:14:05.4361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctHvVi7R+ud0BEuyKTcJS/sDhj6+qCanO//ndZjWSoZLptcTQJm8v+cpgwOxZrpwwKClWtRJ2lP80pNtRzO+tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5171
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

> Subject: [PATCH v2 32/32] drm/i915/cx0: Enable dpll framework for MTL+
>=20
> Now that MTL+ platforms are supported by dpll framework remove a separate
> check for hw comparison and rely solely on dpll framework hw comparison.
>=20
> Finally, all required hooks are now in place so initialize PLL manager fo=
r MTL+
> platforms and remove the redirections to the legacy code paths from the
> following interfaces:
>=20
> * intel_encoder::clock_enable/disable()
> * intel_encoder::get_config()
> * intel_dpll_funcs::get_hw_state()
> * intel_ddi_update_active_dpll()
> * pipe_config_pll_mismatch()
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 10 -------
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 29 ++++---------------
>  drivers/gpu/drm/i915/display/intel_display.c  | 29 -------------------
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 23 +--------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 ++--
>  5 files changed, 9 insertions(+), 87 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 9d96e8940838..96ab7f3b5539 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3432,9 +3432,6 @@ void intel_mtl_pll_enable_clock(struct intel_encode=
r
> *encoder,
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_mtl_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  /*
> @@ -3598,9 +3595,6 @@ void intel_mtl_pll_disable_clock(struct intel_encod=
er
> *encoder)
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_disable_clock(encoder);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_mtl_pll_disable(encoder);
>  }
>=20
>  enum icl_port_dpll_id
> @@ -3629,10 +3623,6 @@ bool intel_cx0pll_readout_hw_state(struct
> intel_encoder *encoder,  {
>  	memset(pll_state, 0, sizeof(*pll_state));
>=20
> -	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
> -	if (pll_state->tbt_mode)
> -		return true;
> -
>  	if (!intel_cx0_pll_is_enabled(encoder))
>  		return false;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 689bd3224919..4e379b0b066d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3669,8 +3669,10 @@ void intel_ddi_update_active_dpll(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
>=20
> -	/* FIXME: Add MTL pll_mgr */
> -	if (DISPLAY_VER(display) >=3D 14 || !intel_encoder_is_tc(encoder))
> +	if (!intel_encoder_is_tc(encoder))
> +		return;
> +
> +	if (!HAS_LT_PHY(display))
>  		return;
>=20
>  	if (!HAS_LT_PHY(display))
> @@ -4260,19 +4262,6 @@ static void xe3plpd_ddi_get_config(struct
> intel_encoder *encoder,
>  	intel_ddi_get_config(encoder, crtc_state);  }
>=20
> -static void mtl_ddi_get_config(struct intel_encoder *encoder,
> -			       struct intel_crtc_state *crtc_state)
> -{
> -	intel_cx0pll_readout_hw_state(encoder, &crtc_state-
> >dpll_hw_state.cx0pll);
> -
> -	if (crtc_state->dpll_hw_state.cx0pll.tbt_mode)
> -		crtc_state->port_clock =3D intel_mtl_tbt_calc_port_clock(encoder);
> -	else
> -		crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> &crtc_state->dpll_hw_state.cx0pll);
> -
> -	intel_ddi_get_config(encoder, crtc_state);
> -}
> -
>  static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)  {
>  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL; @@ -4319,10 +4308,6
> @@ static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder *encode=
r,
> {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	/* TODO: Remove when the PLL manager is in place. */
> -	mtl_ddi_get_config(encoder, crtc_state);
> -	return;
> -
>  	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
>  			       mtl_port_to_pll_id(display, encoder->port));  } @@
> -4332,10 +4317,6 @@ static void mtl_ddi_tc_phy_get_config(struct
> intel_encoder *encoder,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	/* TODO: Remove when the PLL manager is in place. */
> -	mtl_ddi_get_config(encoder, crtc_state);
> -	return;
> -
>  	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
>  		mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_DEFAULT,
>  				       DPLL_ID_ICL_TBTPLL);
> @@ -5325,7 +5306,7 @@ void intel_ddi_init(struct intel_display *display,
>  	} else if (DISPLAY_VER(display) >=3D 14) {
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
> -		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> +		encoder->port_pll_type =3D icl_ddi_tc_port_pll_type;
>  		if (intel_encoder_is_tc(encoder))
>  			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
>  		else
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e7bb8ec0d6bb..6c8a7f63111e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4977,23 +4977,6 @@ pipe_config_pll_mismatch(struct drm_printer *p,
> bool fastset,
>  	intel_dpll_dump_hw_state(display, p, b);  }
>=20
> -static void
> -pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
> -			    const struct intel_crtc *crtc,
> -			    const char *name,
> -			    const struct intel_cx0pll_state *a,
> -			    const struct intel_cx0pll_state *b)
> -{
> -	char *chipname =3D a->use_c10 ? "C10" : "C20";
> -
> -	pipe_config_mismatch(p, fastset, crtc, name, chipname);
> -
> -	drm_printf(p, "expected:\n");
> -	intel_cx0pll_dump_hw_state(p, a);
> -	drm_printf(p, "found:\n");
> -	intel_cx0pll_dump_hw_state(p, b);
> -}
> -
>  static bool allow_vblank_delay_fastset(const struct intel_crtc_state
> *old_crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(old_crtc_state); @@ =
-
> 5145,16 +5128,6 @@ intel_pipe_config_compare(const struct intel_crtc_stat=
e
> *current_config,
>  	} \
>  } while (0)
>=20
> -#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
> -	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
> -					   &pipe_config->name)) { \
> -		pipe_config_cx0pll_mismatch(&p, fastset, crtc,
> __stringify(name), \
> -					    &current_config->name, \
> -					    &pipe_config->name); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_PLL_LT(name) do { \
>  	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
>  					       &pipe_config->name)) { \
> @@ -5394,8 +5367,6 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	/* FIXME convert MTL+ platforms over to dpll_mgr */
>  	if (HAS_LT_PHY(display))
>  		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
> -	else if (DISPLAY_VER(display) >=3D 14)
> -		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
>=20
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
>  	PIPE_CONF_CHECK_X(dsi_pll.div);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 2da65bb20f1c..a4f372c9e6fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1212,27 +1212,6 @@ static int dg2_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =3D
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	int ret;
> -
> -	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
> -	if (ret)
> -		return ret;
> -
> -	/* TODO: Do the readback via intel_dpll_compute() */
> -	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> &crtc_state->dpll_hw_state.cx0pll);
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
>  static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
>  				      struct intel_crtc *crtc)
>  {
> @@ -1719,7 +1698,7 @@ static const struct intel_dpll_global_funcs
> xe3plpd_dpll_funcs =3D {  };
>=20
>  static const struct intel_dpll_global_funcs mtl_dpll_funcs =3D {
> -	.crtc_compute_clock =3D mtl_crtc_compute_clock,
> +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8fd3b06f393d..6c94dd2e1a15 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4558,7 +4558,6 @@ static bool mtl_compare_hw_state(const struct
> intel_dpll_hw_state *_a,
>  	return intel_cx0pll_compare_hw_state(a, b);  }
>=20
> -__maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
>  	.compute_dplls =3D mtl_compute_dplls,
> @@ -4584,9 +4583,11 @@ void intel_dpll_init(struct intel_display *display=
)
>=20
>  	mutex_init(&display->dpll.lock);
>=20
> -	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> +	if (display->platform.dg2)

This needs to become (HAS_LT_PHY || dg2)
	Dpll_mgr =3D NULL

Regards,
Suraj Kandpal

>  		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
>  		dpll_mgr =3D NULL;
> +	else if (DISPLAY_VER(display) >=3D 14)
> +		dpll_mgr =3D &mtl_pll_mgr;
>  	else if (display->platform.alderlake_p)
>  		dpll_mgr =3D &adlp_pll_mgr;
>  	else if (display->platform.alderlake_s)
> --
> 2.34.1

