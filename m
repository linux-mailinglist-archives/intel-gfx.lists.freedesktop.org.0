Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2B4BE0532
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 21:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053C010E8C3;
	Wed, 15 Oct 2025 19:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkg5pZ+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE34310E8C0;
 Wed, 15 Oct 2025 19:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760555568; x=1792091568;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fBp25nbGMo0ZdH+EfsI3eemt+TQfisjsS+72G6FMND4=;
 b=fkg5pZ+hyAvo2O3RvE5kx9ByEJ53wki+D/RdrEM5a5kMoMBNd10xdSSV
 yBZqVz6nWMPMt9xQxCerrFt5xdMjFfILCsOw4DxI2hLB3NbiPkD3SbhWz
 ShBLylVSTJxWwmI6p2qAE/rx/MrUHsk3N/VMMMxanZwAUxnhojeVRi0rp
 oPa8uNDASM2wIEm5trfKY5eKg/OVgNMhbDEkVIBNPPqQrf1UGMaAJlms1
 w32tLrygIGa7znu/LWCGHKk29T7FLI7H6h5je87LJ/V6K1PuGo49RyEOk
 BcN/QufKuRCJjxWieZrJCtMndFKf8MVDApSa1Vy6fYTm3J/EfOFgJ0dYA g==;
X-CSE-ConnectionGUID: CcfL2G3ISy+7k8ZPeIxvmg==
X-CSE-MsgGUID: PtZ8dLWZQYujZOinecrs7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62635569"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="62635569"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 12:12:47 -0700
X-CSE-ConnectionGUID: HoSSLYToSBafln84/RFz6A==
X-CSE-MsgGUID: WvlKWQ6JSASi65eONJ9aNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="182196479"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 12:12:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 12:12:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 12:12:46 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.11)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 12:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D+Bn0Pd2ypphCGWggpjnrNaoC+nPrBgLZB7/jy2HkiF6XnLR+zTETV1J+0RhWXU5lpTFfR3y8249ubJMB5bmS0I57nnhMLiLsOqWzrChI68E/KzMIX1IRPROxRXjJVeed9edFnCeNsi4rtjLK3+HYFtkvtZW1hyfN9bHjXOQIryFrlU9KEbzgcCZUDtIuPDHnLo3P+9/+6y2M+s7u2F1ZO/XPepsaK4mW9yI/DyfyFSOf5cpqJkx5GHR9YeStqkzCEwOSfmhpfs1GriY89MF2yAAP04v/E//1e09tf2b75ffvkyKE1aTCl4bv8KUTQQ6u4zBfM6qwz2IRpzcmozE/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Zj0Q29OX1zq+7YOmll85EKxZ6r/+C3BATf7C1y0auo=;
 b=nBlN9k9Ae1MyoPiBeeW6xDWFvA6j9u+UIMtfyDMRoy4eICc/ckbn6bQeWy4Z8WcuKMEeXKUkGwZtzoc6TVfkVbGvHJkStAS2tsr2lZ3lqdCpGH2GZD904VK0YUko8LqJ8hVPk3cZMtl0TswAFoEduMS03otFeON3MvO1GTrxRS51oQtOJyNB7hJee6C/6KNMvyFTqzEzy13hbKOt58oofYWsGC4SCIfPfA89QK2Hitb6pf0UpAxaH6ZJQMDgVcfRCootXkZ3a+aPP5AuGXTrvNmGGjSGyQOgfgYrRp3eLbNJhOW459lacX6gUyF6OjOCK5CiUxGOjVdnCN4BReITQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB7949.namprd11.prod.outlook.com (2603:10b6:8:eb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Wed, 15 Oct
 2025 19:12:44 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 19:12:44 +0000
Date: Wed, 15 Oct 2025 12:12:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 06/32] drm/i915/xe3p_lpd: Update bandwidth parameters
Message-ID: <20251015191241.GQ1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-6-d2d1e26520aa@intel.com>
 <20251015174830.GN1207432@mdroper-desk1.amr.corp.intel.com>
 <176055195453.3168.13465856329598949210@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176055195453.3168.13465856329598949210@intel.com>
X-ClientProxiedBy: SJ0PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB7949:EE_
X-MS-Office365-Filtering-Correlation-Id: 70222e1a-deef-4582-eec2-08de0c1ed1d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?k3i3PdlRFJBCRJQyv6FBP6JIpenO9vl3Kz3Xe/Ni1g85rjFbwPEw+8ixx/nI?=
 =?us-ascii?Q?grduiIv3Nfdg3f+FpymjuoASym0EDcy6FqViw8F1tslp5rSOH8h6rAD7WuJb?=
 =?us-ascii?Q?eLhTwRWbgD1Di+XbvJ14ub8Z9En9fWxLHDRobwgDWOmb8UzGM4cm2EHVspMX?=
 =?us-ascii?Q?tdAidK5NSiV56Ij1P+Mh5/BOMtj1Dx1c9qKfwWOqceACDVh5qlObSHaz8V7h?=
 =?us-ascii?Q?jHEcT/sRA6kGQ7lqU1goqHINYLYAvH4udCQH+IOHV9H5Aciq1Ep9ONrP1VDP?=
 =?us-ascii?Q?4alexHyWoLfBgzO4NachwKJF56c5vAkgjym95BjHFZSrxsVwELlBJk8pvc/b?=
 =?us-ascii?Q?snPUTW9LongNEVzMR9DQ7gI0NB4jHAJmmGTqieEWNZ/m60ZU3sy/cgsSg6fj?=
 =?us-ascii?Q?4NwLLArETKlMVs8/TYvhQYlT6ouyisv1WXUzfX+7qsBfMQBcXorWP1dDRouj?=
 =?us-ascii?Q?nXBAA1VMbfxOYVD24goycezPDLQNsxfLlMpNgnsdKjPqGJ4RCzp2+Tm4IjAT?=
 =?us-ascii?Q?1i/EQq/r/UAQLxsZFzERkk37eR42vyAdtlFaPQw1K3NvXJO/erd0xSun3+MK?=
 =?us-ascii?Q?dPxykhHwBr8DvsnSR8z/dyc9wKpOgJCmCCYxkGqOsOE+KHFfCeV2WMOq7beG?=
 =?us-ascii?Q?1C13fJL+TH4CO07nuVDSSKbQdBoPHl15bHHqjAqWeh8P27+54kqi1EGOuXIL?=
 =?us-ascii?Q?i7dxTWrQxQ8snGKzMoUyBMp4FdaqfQbrNe5jd433ZvH8jKMmdTbDN+VVYpZi?=
 =?us-ascii?Q?AOxWKVVpoqLJcD2I9VKi6RgPcSbIc3PRB+AN4o2xhP7LhQMhWmxmXDX4pkOO?=
 =?us-ascii?Q?UoTfPmARyuo5GbovoIhVLraEAkctxFoeSEZDACV03cznEVC68/tfPl8OpwhH?=
 =?us-ascii?Q?Bm232SDlXyxXiUYievNTSNt27iis/ez/cgzAJu4Ja6EyFeJs9hlG5XamzqUj?=
 =?us-ascii?Q?KGYb+8JcYcrzijIwHrcgfp2/D3dLzvGMiOp9q3vcM72XjCPGWhqwmtbHUOBV?=
 =?us-ascii?Q?hsVTX8Lkh7OYLX6BiDIRHRzZxOdkaAqh2qGMtSfXAXmEt3utvozT+y6wD9P5?=
 =?us-ascii?Q?q3u4B3F+V+cMqmAnQxpa4obYM+3tybeO2ixJmt6FXMrEcZOFHY8FJrTv1r1x?=
 =?us-ascii?Q?XpRp3H5dKSlKPdMUpZzx9L91lyymslm9lgRUxnw37pTukiv2EyPtYMaw3EL2?=
 =?us-ascii?Q?mfxOPCSlbUXEomylEh1JPf3kdIf0ASk0aRgCzn4kD46cSMFHbjof+rCU+o6r?=
 =?us-ascii?Q?nDX7IjaqAKWflsNYmxXz9Krye7EfKmWo+6v/MCtbsO578nwl+SGlsw6XVj7E?=
 =?us-ascii?Q?4YGKp1IS6aX0H7K7P3SE+jsZ1eTsnY7EkMnz6H1SyrFTMxY/dwVgdyhNVod6?=
 =?us-ascii?Q?6X3XSK1Lq5bAz9UFxK2smFNrNfDxO8tGUmd4uLcVA3TptkukY4M3zdSJIsmM?=
 =?us-ascii?Q?oNxzqtmHu09WWfkBh53olUyLMoz8SzUo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/6K/r8QCmDV2yOf5jQoCm5ffVFkKeC3bEeqIGdqiC/30Ggv6Pa8NnuUSiP/c?=
 =?us-ascii?Q?rKlC/x9USANTLaX09sIAZ8WBh9HlIyLJ0n11YUvRfgScWKX/cmHindacDWfi?=
 =?us-ascii?Q?3m7KNiPrfNEb5ZS2bDOwLdGlap9IrRpO+tusErQbuKz3kD+CadYU6rs6HxMk?=
 =?us-ascii?Q?Qm2QS2Z0q2s4kvAyjYUSrF+IJ4f+sOw6NvtpDGjGqNiAKaFTbTvSO3PUBY5Q?=
 =?us-ascii?Q?dq2RmvB2ncw1aqKg4vfGUKUCu+hnI5kcOv1kSp60TEcWvdsQ4BZ3TQn8/TKJ?=
 =?us-ascii?Q?qjsAXqbdYkmca1H7SvrACz831iAd7y94roZYnmVdFbMhWfe/osb1edxI0FmQ?=
 =?us-ascii?Q?/Fhhgj5iZFuSBGFUiJxfBfSl9yWRXyUN4MhP12aQNzFt4V3zm1bk17hH88Or?=
 =?us-ascii?Q?hc97lU0GzmsX7I0r5G4dgiqxvSHs2nVhuLru0zj+ZKMZgisNbEHhZAcKDN4/?=
 =?us-ascii?Q?ckQjOq9E8oLCY3oFIi9lA9wRIR+PFCzWdtVb8k3rslREjhvSbDw7ARFLvp4b?=
 =?us-ascii?Q?/MO+Z5cx/Eqktbhf8IFTqqZsBXmnPI0+PJ9VPVFwQBDxsLljVnjYunvc+MNt?=
 =?us-ascii?Q?Ba3lZ+nKCfv3L1x11brqsRVNPEybL11KuEFdcc7DPCmz9Bfj1t54jHoI4HLg?=
 =?us-ascii?Q?CNB//UBJytVsZbuDKeXzNeph9X3QilImtxYgKTPAZIZrWds6F+gapehBQKJo?=
 =?us-ascii?Q?3uTW/cuTY608LW0s17xOWM6M2nrogZqy4qobDElY8DgHuQp/yXQ8w+8hMkjK?=
 =?us-ascii?Q?lMB3AgfzVwiTp53ONW+Z/FpLrR85jwS18MALNiq85Aqs0e5zaRui0njC2a3X?=
 =?us-ascii?Q?uq6xgZd37ojXlt5qf0yIakSccjnmdUfXmTXKvmTBUDIefyFdNOh6PDmwWle7?=
 =?us-ascii?Q?4E/Jw5nvk66HdCMN6NfNX1W5OorJ2alu1dP4ZxuOX2q92faFYRPuxTA1Pl+a?=
 =?us-ascii?Q?5CN8F5cnGNSnd0tX8ybcov5WojE7z5Co+IAQKNVMg3dYgpru056HLLysUzPf?=
 =?us-ascii?Q?DStPtdeEUeXCB0jbTp21DbzpPK9DzqFrxGm4Vvy1t1/bjnHRLPugRR7JPePF?=
 =?us-ascii?Q?Dpha5vqSsBYRqV0I3yAvb3S4544vhJiymjfPDJHMhsXPQguNJ2sljbxDY9yV?=
 =?us-ascii?Q?0CexpJAGxwjKqRZ7BOtBJRPm2Ds7FqTJdzETN80DS+1NJJIyqzrXHNi2oMK5?=
 =?us-ascii?Q?AZ5Y2wcmZfTrw4UxaQtjuG5l6DCrz2jDL4DPVxnoFAGTUlUFueiJyTP9v/Ys?=
 =?us-ascii?Q?x8XvHBf/bcwtYvT+QsbErHUoQc0nYjk2YW+rl7szJu7tGfRA+EYSn41mR/nI?=
 =?us-ascii?Q?oRGLndaHsi7kmEUA/dYprmn9x8cezVE8D+K4sV79ZGqzsqgkm0QMRNs+b/Jn?=
 =?us-ascii?Q?Ab0VrpopYJSxgBKZyNig/ybOe7l01QOe4zPN12k7HmQOmwv1qr3S9YVylwjj?=
 =?us-ascii?Q?XkJBm85TXv3xzZ3P5mWGMscq8sXCG0s0P2oWb7PDQSAtYly1w1kancF836Hg?=
 =?us-ascii?Q?/q/ipUM9OAdieTOBmMLtcgBbJPuCSdL5HcuXIiP0zCKLq+PGCuxaIH+fWoos?=
 =?us-ascii?Q?VSoHy9cQBbAX4FgJ1vy6DnyFmCsElbsbYRi8DvmYeDyw0peotoWW2zsj2udO?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70222e1a-deef-4582-eec2-08de0c1ed1d4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 19:12:44.4404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9LZCCbY3ls3T5us0VV2yCuDkwzowDg8iBOn68yUp189b/413x2gEFFZr0Cn7y7iYKl8g3tbYemOgJQCJ3tXVfeWfiWBsCQvA8yXKQatSLGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7949
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

On Wed, Oct 15, 2025 at 03:12:34PM -0300, Gustavo Sousa wrote:
> Quoting Matt Roper (2025-10-15 14:48:30-03:00)
> >On Wed, Oct 15, 2025 at 12:15:06AM -0300, Gustavo Sousa wrote:
> >> From: Matt Atwood <matthew.s.atwood@intel.com>
> >> 
> >> Bandwidth parameters for Xe3p_LPD are basically the same as for Xe3_LPD.
> >> However, now Xe3p_LPD has the ecc_impacting_de field, which could impact
> >> how the derating is defined.
> >> 
> >> For the cases where that field is true, we use xe3p_lpd_ecc_sa_info,
> >> similarly to what was done for Xe2_HPD.  Note, however, that Bspec
> >> specifies the ECC derating value only for GDDR memory.  For now, we just
> >> re-use the value that was defined for Xe2_HPD, namely 45.  We need to
> >> confirm with the hardware team what would be the correct value(s) to use
> >> for the ECC case.
> >
> >I think we need to use .derating = 10.  This specific block of the bspec
> >is a shared block that applies to lots of IPs/platforms.  GDDR isn't
> >relevant to an LPD platform and .derating = 10 is the documented value
> >for all other types of memory.
> 
> In that case, do mean we should drop the patch adding the field
> ecc_impacting_de and unconditionally use xe3lpd_sa_info?

They're somewhat orthogonal.  The hardware (or rather firmware I guess?)
now has a way to tell software that there's ECC present that would
impact bandwidth, and in general that notification could be used with
any kind of RAM.  Some platforms will never have a situation where ECC
matters to bandwidth (so this new flag will never be set), some igpu
platforms will have cases where system memory ECC impacts bandwidth, and
some dgpu platforms will have cases where vram ECC impacts bandwidth.
We don't have any relevant rules at the moment, but real details may get
added to the spec later as we get closer to supporting the specific
platform(s) that these IP versions will be incorporated into.  But
adding the general ability to read out the new flag and have it ready
for when platform-specific details start arriving in the future seems
fine to me.  We could add a warning print if the flag is actually
getting set on some platform before we have any rules documenting what
we're supposed to do about it.

In general, I'm wondering if the memory bandwidth numbers are something
that we should consider moving back to platform-based checks.  The
hardware teams tie these kinds of changes to tickets associated with
specific IPs, but that's mostly just because of how the databases for
hardware changes are organized these days.  The reality is that the
details for memory characteristics are something that's more defined by
the underlying platform rather than the IP (and that's especially true
for igpu platforms where where we're talking about system memory that's
used by the CPU and all the other devices on the platform as well).


Matt

> 
> In the meantime I'll try to get clarifications from HW team on this.
> 
> --
> Gustavo Sousa
> 
> >
> >
> >Matt
> >
> >> 
> >> Bspec: 68859, 69131
> >> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bw.c | 21 ++++++++++++++++++++-
> >>  1 file changed, 20 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> >> index 8f5b86cd91b6..f0940ff9d19b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> >> @@ -461,6 +461,20 @@ static const struct intel_sa_info xe3lpd_3002_sa_info = {
> >>          .derating = 10,
> >>  };
> >>  
> >> +static const struct intel_sa_info xe3p_lpd_ecc_sa_info = {
> >> +        .deburst = 32,
> >> +        .deprogbwlimit = 65, /* GB/s */
> >> +        .displayrtids = 256,
> >> +        /*
> >> +         * FIXME: The Bspec only shows that derating for ECC should be 45 for
> >> +         * GDDR memory and does not mention other types of memory.  For now, we
> >> +         * just re-use that value, but we need to confirm whether that is
> >> +         * correct or if there are different values depending on the memory
> >> +         * type.
> >> +         */
> >> +        .derating = 45,
> >> +};
> >> +
> >>  static int icl_get_bw_info(struct intel_display *display,
> >>                             const struct dram_info *dram_info,
> >>                             const struct intel_sa_info *sa)
> >> @@ -812,7 +826,12 @@ void intel_bw_init_hw(struct intel_display *display)
> >>          if (!HAS_DISPLAY(display))
> >>                  return;
> >>  
> >> -        if (DISPLAY_VERx100(display) >= 3002) {
> >> +        if (DISPLAY_VER(display) >= 35) {
> >> +                if (dram_info->ecc_impacting_de)
> >> +                        tgl_get_bw_info(display, dram_info, &xe3p_lpd_ecc_sa_info);
> >> +                else
> >> +                        tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> >> +        } else if (DISPLAY_VERx100(display) >= 3002) {
> >>                  tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> >>          } else if (DISPLAY_VER(display) >= 30) {
> >>                  tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> >> 
> >> -- 
> >> 2.51.0
> >> 
> >
> >-- 
> >Matt Roper
> >Graphics Software Engineer
> >Linux GPU Platform Enablement
> >Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
