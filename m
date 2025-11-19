Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C40BC6CCE2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 06:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA2110E576;
	Wed, 19 Nov 2025 05:29:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mWiRc3YF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14E110E572;
 Wed, 19 Nov 2025 05:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763530170; x=1795066170;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KL4Da3q4O7oJbUUOUAPRax8wWETg09//UxEXJiP+ZEo=;
 b=mWiRc3YFt7ozWCiPdMNtqzBzCo3uwfp3cB5likqghKKQXPdEfBJKxY0u
 cY3e2j+leyELPd0LeR3oq3Juk2xvWoSG4wADveh5ezUTSs3V1y4WUvYE0
 V4p9Zcq2TavFDLBDpJu69HC3spLTbhPPwRlVUjjD7fIq2RIhqgh6Yydda
 wb212nPxvS0KY4SQ7YOxlILxVla5TnVNVNkvwjn41O/er8hmxkZO1mHVi
 Zbrz4CVGe2K9ZtIHOctbFUKjJ39HgOUJe8cL+PFtZPbLdMli2Aa51cZCc
 BXtQ8pRLXwncRGiPc/odKu8pS+vzSxGBlqQXzfbXdUzdTRH2TqQjNdcQs Q==;
X-CSE-ConnectionGUID: 7CNU4uUBTUuvMDjJqpPuew==
X-CSE-MsgGUID: ASdZutTjQeCLBwgTilptBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65722562"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65722562"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 21:29:30 -0800
X-CSE-ConnectionGUID: t1MRVhFUSrS6lvQemqwa/A==
X-CSE-MsgGUID: po66jEJwQl62QJ77bTfMCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191402324"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 21:29:29 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 21:29:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 21:29:29 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 21:29:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IplVbOH2M9JOrEkcMl/q/xHsSh8IPHV6eB4VNM8PfCKS6q3WFqWm1bD0w40vAP3Xmbc2qM8NG1etZ+1C9YHm63HJaRskihkbcDhpVPhE+k2eO8vlmwwXd0VlpV4A5yAWsmt25w+yO8C2nsSc8wiwhZQuLa6aJNFWi6+7wFeeGBlQDgSzKDeJBz7ui75wXQsrCguSNttZCj9XUc3HysZ5Fr5vIZJqPXe90Zioq7zuVwkE4wdCzK4bmmQ3IRAiRN4DhixCERDqBcwm84p/7Vj8omvi1rpCmUSrCcYeAEjZWwfgC7DcEh7QJKC6yfOD7cyXkLq+nEQS4YkHQ4JY68lPdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebJaKlGXCesyRyMp7FYB5c/roowu8SXsWRBy+bs3qeU=;
 b=uOnv0ztc7aoJh0uytvr3XQwOSSsWCo0KKXSLCsLOym6z3jwk/j5iDAQCHzDX3qhNmbpnXKS3ivSCJAABtWC+p32fApdP4sA1GsMYDCEIiE6BNJJ2O8v/jQ5NmPugLGmVtK9ZHKoikUTAe2dfaDrz3zAvYwap7+Njy9DRGCC+ix8C5dGe407S4UAqy6lWYfiOkCKH1iv+xHh3dKwtaA8HC520mVRXuOud8DIj9COY1E51jMbpRtzUCAVhEqhhWrTp1Pt2p4FnK6f0lQyL77T3x+VOV20AFYYDH7rrXgJ0xcrZlQjq1SgCvwudb7VTi7Mhv586wNej3Pw7FG/Y1FC+Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5889.namprd11.prod.outlook.com
 (2603:10b6:303:168::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Wed, 19 Nov
 2025 05:29:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 05:29:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Topic: [PATCH v3 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Index: AQHcWJERaQAnD6qfD0idEoIv5lHPibT5eTYw
Date: Wed, 19 Nov 2025 05:29:19 +0000
Message-ID: <DM3PPF208195D8D1C07D13CFEBD05E9D62DE3D7A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-22-mika.kahola@intel.com>
 <20251118132830.2584422-1-mika.kahola@intel.com>
In-Reply-To: <20251118132830.2584422-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: 0cd717d9-7a38-4b08-963a-08de272c969c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?b443diCWGAPlwPnfB9e8qyjZEAnfR4yiMSmPUzgSjeOI6d5a3PeEXh+7jvSG?=
 =?us-ascii?Q?x1Jfi6+FrGRB26cmAJYbR2CuhyJGfK0VEr1YJmX/xZmg5PyoHpaf3kycgKtB?=
 =?us-ascii?Q?OEJgZe/R4NQb0Q2xaTGyXm7wNN2ti0Vj4L5qJegiymK8XGKZJ8BO0iqQrblP?=
 =?us-ascii?Q?+pwS2nGgrrnnj2SyaFInjn21xSHTfutIzW/OjVOorKLjLPawmUJTABfRErvW?=
 =?us-ascii?Q?sspTAJW6V1HWFyb+jEeybnnaiAGaRgyfy2qJRBTFSJhMRHkWPqz1U0Udt377?=
 =?us-ascii?Q?jCv3n6u3Ry7yRvlSRaomILIYaZVAQaJkEC3lAyN4IAeg5C7lNaz136t7mpvD?=
 =?us-ascii?Q?vXL//OK7BaT/u9NrfkQ9Sf5OxuPzIHTUmcnqCDacP5BFi/ydSj+kKkvmew4Y?=
 =?us-ascii?Q?EzFkwAaCcexy5mkJLk9guyxeBe16Q4qTCwtr7EpATjE6vgC2bwkhj2402n9K?=
 =?us-ascii?Q?VEyTzWVFOXWl6Qxpnla3KTSFkrS5+xAtNA8xqT9xBymw0Olo7/Ka5EH6RCQp?=
 =?us-ascii?Q?6LRsGHaMDqNWHLiI6JdAcQlhKCU1OCBNqtr+X+6dNwEBJqd/1+gLSD+Wykwr?=
 =?us-ascii?Q?Tv/wTxfNAHeAJFTIu0jhH0cIATc2s1qfHFQpcuQNeQAcoz1Uwav3kq3e6OMV?=
 =?us-ascii?Q?0eSBSlhNVN6nuwqS+ztAOFCUppfhSdcpIaGLL6nD8MZDNj3+PGQgIiX30K6S?=
 =?us-ascii?Q?ddmnSpQqWeEx2wL/Twfks1COK+EirxbUzm3D5zGN1nY06zULdCvrN/djqd8k?=
 =?us-ascii?Q?lXdq6RFiTBfX3TItISnADEPfKwa3wsnSXgSWVIALGrpAYJY9Tzp3aWPjcz/1?=
 =?us-ascii?Q?B81KIhkxKnsokPHwW8P2bfTSYmuedaGD5tQmDNqn5VxjvbQ0ohbz9d8Ax4gp?=
 =?us-ascii?Q?RICrKBCCQPpfC4Un/3BsblSW27TIVmhJXMf0KZyNK68LD9+jez4uIn+bLecn?=
 =?us-ascii?Q?VWAqIl0sUUU0AgDOHZe7Jwy837tme1oWGyKYjJwOd8MPLay6FdWTK+db7/Qq?=
 =?us-ascii?Q?Tv0LB3H2bjm15GJm79epVMBDNPUP4xGPNFXbhYLbFDFrBsV3GXvZNpsvMl1z?=
 =?us-ascii?Q?FPzf/u4RznKChfnWRp+snYP1wdFld/0V+om3i0mzip7sDTkfteI5QsLz+Mpy?=
 =?us-ascii?Q?pxwztUTDkzNbrALC5eMOYjJXV4UjSI6XyHcbGFuxZeVqOl5O6PqiNW7tbh7c?=
 =?us-ascii?Q?s6x9D5m2gcGq8FibdkzBk+fZIE1BQpJEgCSempBIafjWelSHlQ3n3AEjtTOo?=
 =?us-ascii?Q?3ea6j/Wy1jqFHarnNF9N5BwhopNMbTf5r3asNmCgrnk2uEC6NdppJeCeG+be?=
 =?us-ascii?Q?uPAqQgy3pjCc4kZ/OxzF/m5pG9xzLQ7oC5ce+CJ8QeD+0DJdtihQZUCe9NEE?=
 =?us-ascii?Q?LvKX/vblrxfChTSP9j6C31jIzy79OFlH5/jBY9HpOSx7uYNesnZY3tikrQC9?=
 =?us-ascii?Q?NcOoz9/qjNvuCoobkuMNO0be2WR8CBGK+C/WhCOyWiuNSTuJfC2iupZK/0x1?=
 =?us-ascii?Q?FntGQ0wpoAde8Gzkf0S8Ce/KQPCSzcFmubGb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Xoj9ENYfan05LqkPkt5TllAuHtNz7DIFX8NgZQcVZCMUbNBVYKAkCOaj1YeP?=
 =?us-ascii?Q?b5B0yQmlu3m+yPoXtQu4gNcT5x0GvDj0aDEbi3x4T2D2gPolYgc9Rvg51YUC?=
 =?us-ascii?Q?iyWluZErxvGiwrL7fsel9HOxajyUsnsN3sO9tMWxK5biHcOLqYuB/ssuBdJ6?=
 =?us-ascii?Q?wg7dzf/kxjWzT7DT+tu7IfAX6y7Z69iSJAz8WIX64Txi6hvpW+YXKexx4Hlc?=
 =?us-ascii?Q?+q8dIi+0wykXme7R2XPjlT4wX2IYGO6ASTgpqra1+Cau4YS9edvr4LZKrhWP?=
 =?us-ascii?Q?x59xFK2fN2S+PZdPMov3oJHTriMn8Ngp5cO4JtqiJAmXcFs7kdiqX0E2xBWH?=
 =?us-ascii?Q?odi86Q9QxAGbtogPN7uxYp2eHtwDZVIqPczYy1esYQbNnzHPcFuB8cyRTndf?=
 =?us-ascii?Q?wmSzan8D6RQ7O2RBLNmvSjZ9VvexnDmOW1vg+nuBAgra3S0CnnaAOKbVBWTP?=
 =?us-ascii?Q?+HcmKzPNpq1pdeKMyYw8sJOinfwWyMELO+hSMGPZcE9kjY+zCewhRKaH6EmS?=
 =?us-ascii?Q?tysqjTHCBFsagvdxEEAOkUZNfrEwnQWJ7n+FIRl68qC+fMDQmKJbHztHErzt?=
 =?us-ascii?Q?PBcMktOOY5TVGEpMEDVMq0DeLFH9gJMPFANceIYgfs2GSIUAldS3p8GimT/i?=
 =?us-ascii?Q?VzeorDs62Bo7hh9Jm4mka4URXj5ZTawfjFHD6SctniiNU51DaZmxfhGZGdkl?=
 =?us-ascii?Q?Vee6SDqTfhnx782Ao8fi7hOc1Wuyigo9dsVvZcNAK2xiTK494koeVRrjgXpv?=
 =?us-ascii?Q?JzQkcHfSIwhxW+DExqc8vkXufumJk9ZE/7paYmkcqOJJxBqUDtovqtMqaQlR?=
 =?us-ascii?Q?P27pfr/6mm7eLnMpGhkVUjBNAvLKsiL4BfK9vFihJzhE3wonrNUhx/FjL6rq?=
 =?us-ascii?Q?WXC1kr2leUspKYeXBp3RSeuMKA6hif//o1QQzBXAklKAOBPmW11OrdGHxfIN?=
 =?us-ascii?Q?CMUoJ3zCe4zKHoDuG1CcQskIO/u+Ly4Ej9CQdT6o4mVe+Yr/iC3qEowJ2MPg?=
 =?us-ascii?Q?egnjvoVlqv88Wd5MjOCs8pIetrIQU03/kiGDy9LBNer3PF4Z0WaabJeC14XO?=
 =?us-ascii?Q?AskwyNeBn8Rtaf3AqB8tdtjHxzMUxk4dHxB5zO4xtMKwDaEzMO5h4ylCdsHw?=
 =?us-ascii?Q?h3T5B0kvO3szIWYeeCL35sX9SqVCB7ex8Gq+T7BvJyHvT9EEpB3oGoriPkrN?=
 =?us-ascii?Q?epjQ1KlIJ8vJVzoOh+HDah96L3axumDL0IwtjPJqbfakGdsc3HX7qG5sGaK4?=
 =?us-ascii?Q?unq2q7NeP1tQkxP+dV2+iKmOwEfjXR692hr27oZC2uP8snJP5lSuoLDT7Npe?=
 =?us-ascii?Q?j9qiws5lRkorqGOzEfXwugYaNV8O4q/f3fG/lrUhgrEVzGpgzUCvqxBU64+j?=
 =?us-ascii?Q?kVHkgJeg/ftWS2t5ZhsTx/XC6LUPJ2tGYRNiikxSaAD5pApFEIfsBR86gvwK?=
 =?us-ascii?Q?wChkG0C20wCG7a/tZshvzSeLWvsrzTDOfMkI8sYQu2q8OwMR5FTgYB4CZl84?=
 =?us-ascii?Q?8w7uMSQlRM/x63ixxUeuKAx03sCLlDuzxZT6t9C9gNZuECd0bf7bDvI0yYUM?=
 =?us-ascii?Q?uhsozMCKKpbTzukQzpkDM3kGlNRTS7P4rOqXD4GK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd717d9-7a38-4b08-963a-08de272c969c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 05:29:19.1933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DihPPnReTny4jlOXd9FAuRcyVgpvcMuIkDJRUi1lPGTRvkR5muq9TCzQmSzNH9LVuqrWSVYSh79nvvKVXuuvdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
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

> Subject: [PATCH v3 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
>=20
> Add .update_active_dpll function pointer to support dpll framework. Reuse
> ICL function pointer.
>=20
> v2: Add check for !HAS_LT_PHY (Suraj)
> v3: Remove the incorrect !HAS_LT_PHY condition and
>     check for existing dpll_mgr
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v1

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
For v2
With the below comments addressed

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 002ccd47856d..40ce117bb088 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3667,8 +3667,8 @@ void intel_ddi_update_active_dpll(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
>=20
> -	/* FIXME: Add MTL pll_mgr */
> -	if (DISPLAY_VER(display) >=3D 14 || !intel_encoder_is_tc(encoder))
> +	/* FIXME: Add NVL+ pll_mgr */

This this need to be for NVL+ and DG2 too


> +	if (!intel_encoder_is_tc(encoder) || !display->dpll.mgr)
>  		return;
>=20
>  	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc, diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c45f18201ee8..e6dd6f1123d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4449,6 +4449,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.compute_dplls =3D mtl_compute_dplls,
>  	.get_dplls =3D mtl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
> +	.update_active_dpll =3D icl_update_active_dpll,
>  };
>=20
>  /**
> --
> 2.34.1

