Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8A4AA0FE9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 17:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C05110E4C0;
	Tue, 29 Apr 2025 15:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BpavIGpI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD83010E4AF;
 Tue, 29 Apr 2025 15:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745938975; x=1777474975;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=30Zik57l1B4rufhZijjOVyK/ZDtR/0CEMhp8NahLOFE=;
 b=BpavIGpI3gcO6R3H/KBoZHnjbbKTgSYWYxZWXmULfy0YqtgYdzqWUL55
 0pifY8fKUSYWCLo3iFO4b97VCf8qZXDRN0Rt9jkRTCfEVbQWPgHIW6pFp
 ThI/kVQtR5Al0vZuLlZXlPT/oxQINkpPdWZB/kL2Di6FqtLAT3CCAVKao
 V3FJGWpG5lvH4srgCcrZcMbfRXJvb9LeMyqrSVb0BMEACZ0zh00K8YCvu
 let0Qx8ppaiXTNlie0Xg1xU1BcThoRhB54+g2Leck84BZHng/djl0wtxV
 PPGJaSr/ylDAhaJjAo4WoClLVbul5s9BAYmgkEWMEpK1Is8+NhVLzeA0C Q==;
X-CSE-ConnectionGUID: G3jJ6Zm5TqmStXZ0nbp6vg==
X-CSE-MsgGUID: /aDqwmksTJu6Vg8DZbq5fQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="57765684"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="57765684"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 08:02:49 -0700
X-CSE-ConnectionGUID: Bx0r9RgaRo62xZJTk8xp3w==
X-CSE-MsgGUID: ORtrutuwR0SrckIw9J/M7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="133562058"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 08:02:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 08:02:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 08:02:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 08:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ouoCXB3zQWCkVxezXOyjOXF+K8i5etln18bJJUohNZvc3hfNP6uILAFIlox9IY1Jrub6WYK0YHrQsLNfIkv5k+ij4C/k84bpy4W+/cjbUMBEHEj0Xw7hNt96yT9TY474gWNhuCfPSs/w77sG6GX2Ug/KVbcxR2w73nB/BZCGWJn4/WKrAntrqYiAKdttS81IO/IiHjP1v9EJfOlgAh+0LECiAXu3vUnwUibOBY02SfFPk/KWMrlzFN1H9pLb+r8wy473g3l3Bfb/KH6/wKwmtKXPfVBqR5yUN5wGsYyMnH5amOVPk2hKjL1UA19csu69Cmyf7nWdAS1NIpfFrlS6Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xsul/T4dMfVlR/S1L+nMrpXSXOx/eVaGY5Yi/0lw2nc=;
 b=wu1QrJnpWHtwgm4OvTJCmhG71GSt9EFgctW1OfFF/qmeaI6xnlP3NdQORLlydzs7OcM6nNARgFLSdV0/ezpKyoH9kf2X1EPcqIHuZm62E/zF645hEedMCRc3VR2CA9O/lOvusx3rHAJYrzxcpQtEuWPsNyx3SoCvuLX5x/mwUCPgTpTqENEwMn2+k3smQs7IxFwVgv4Mr/pa6z811GE4Zm3Qnc8fmL2UHJyljJytNaPkkyW1/Y8wM+OB0mumRi8VCnNfsn3WLG79hrakNWysYDPtKzrM628aLCYc8nstA8PUH7EsXyzrksPv+toV6JHrXralJgfJdBozzoP1DGJThw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF453C3BEC4.namprd11.prod.outlook.com (2603:10b6:f:fc00::f1b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.34; Tue, 29 Apr
 2025 15:02:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 15:02:38 +0000
Date: Tue, 29 Apr 2025 18:02:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Use intel_connector for DP and HDMI
Message-ID: <aBDqFSIFca3rmc5J@ideak-desk.fi.intel.com>
References: <20250428134716.3396802-1-imre.deak@intel.com>
 <174588016945.22691.13030187855665914674@c664b1dc75d1>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174588016945.22691.13030187855665914674@c664b1dc75d1>
X-ClientProxiedBy: DU6P191CA0011.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::25) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF453C3BEC4:EE_
X-MS-Office365-Filtering-Correlation-Id: b1f484da-f91d-42b6-16a8-08dd872ee1a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hUoD78WtLX4avAS936tBvQXbHbNkadNnyCDhXIU/Iqj/0Sv0VwXc9ymuWCqe?=
 =?us-ascii?Q?GvmM7DH164o6z1PjAfjSKbsKBtuHw71K7ntLlzihopmoZksFiv/bLDbM2oaY?=
 =?us-ascii?Q?z/0uXw75qVgAYQlk84HsnWxompoItFDs8rKqFCCK6bxYQuOup7pVE99xpFPN?=
 =?us-ascii?Q?/fqZB96Hb8Yw9C7ul8++QaIwK+eLAwpMmh3fMmQGKit5ZS2oIXENJA+BiOKo?=
 =?us-ascii?Q?p51DfQ5MdMj2Bgu8jr7l8jghBRmbxRicRLOHYOYBvywfc1uYY7h1nqtINvmf?=
 =?us-ascii?Q?xt0PaNgboYiDf09I+qL8cun7X/PjfWzvk+tSuVDyjWNGoC6kMTaVaz8kdtZE?=
 =?us-ascii?Q?4/0D/DdYB9/61dx9NDQg01RrzEHtrU4Qtn6er2sjPh+SR8rl8vtfGaU6WMD6?=
 =?us-ascii?Q?2nkagm99mp/61/G++ibXBPOwM7ge2Z1DKlfDpYRwrTajjvos1CQ1sl0KZ9Mg?=
 =?us-ascii?Q?1pNs2H7hGTiipfVK6hT3wdW9YUbOWI5hygdAR5akGZ4npBvm1EZO8Sc0ZMgO?=
 =?us-ascii?Q?6MeQmb+JaCVQbVDYTGrWS9L4j7fMZwY6E6EF6Ltbe7tDqIfC6VnCXJbCLCAG?=
 =?us-ascii?Q?2MifrCKknTP7RZKBE2x3JzO6VBENltIRJWwIykDMGG5EDoP87gRBepg7dd98?=
 =?us-ascii?Q?pNeaz9hL1E/PUmQLrRJWLEPGzbrZpOa3C9ef9alyTEMuXiio8dIa+SdAQpLV?=
 =?us-ascii?Q?j+W6XvtLfZYTphaz+kauKY1eAbKw0dwzsk89aoQhQisfFxYgRHwUd53JF6yf?=
 =?us-ascii?Q?acxNlogd53tlMVs1hS3ckxln5/0WXnW2KwI76i+fCgUV/RS26j9hA69BYWfy?=
 =?us-ascii?Q?zJGXiAUC9co+675CZyX6pL4LTKWF07lT6KB/zKHEG4CxUXd1IPd7k2ccGTOW?=
 =?us-ascii?Q?pWYZvOz9GK2Wcc6DXjEJ5/bGm9Q0gf+CcchP3Lv3qJo9/IAjp/gqOyhbFemU?=
 =?us-ascii?Q?RdStChUSt80HkPik6zXm2uC/DkMbHNTuKfpWWIxA+krQSRwHBfHKwkHm/BBg?=
 =?us-ascii?Q?XBR5cZU7geF5Uc/LIxcztS1vI94rzTrUi7uvl5o41R+YT/MV1Gei5aKWwXwy?=
 =?us-ascii?Q?ltsw0GgbSwPBIXGzxvRtKNHyNk0q7EV2/tcuJYNBZBnu8ovL8M2W5HsaXFIV?=
 =?us-ascii?Q?1DA7FgPVHU8Eq5pjzm59lRLmex/EU1qME1wLV2EXyVasR8xCsMCFg5cHMG0V?=
 =?us-ascii?Q?7vA3NyBcIxJhxIAdS3c/H/gO8d1bPb2mQc1rQqWLxo5G1Z59yt2VpVuwwG5X?=
 =?us-ascii?Q?WhyYy52pDkh60p/iq9OPWvVIwXvYyMgHQellLPp8F8ULk09UfO1mFPof1i//?=
 =?us-ascii?Q?SHJSSRdfBLQsisWrm9crcVVuAJ39gTvwNHnRuTmEFWW3aF2BN7UaZp8gcOA4?=
 =?us-ascii?Q?SuHQYIA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NPMk3XgqZzj3ljWhyy3voE8wFTTj8DUDkJGqN9AyMSzeyMRCDRrXiZyFz9mD?=
 =?us-ascii?Q?i25Px+TUVZZGm2vxaPm52vGcenBxKtHzeRvKJkfDGY1/CUm1JLzqUahuMDuA?=
 =?us-ascii?Q?O1Kx2UYxeuB1MKQCVVX3qU/m6X2oWYkm71krEm3l6/izuDnQzgrSnJZct16A?=
 =?us-ascii?Q?14kMxR9cQdbj/kZQQ/qgosMQWOzS5MqzWfm+sZDx4mMwZOQbr3Dso51jaUYy?=
 =?us-ascii?Q?Qb6HMlyqc9/5sxZWubeIb4IFwXTPy6vpISpK/WERqg2Pnel0vzZGtlf+PBdr?=
 =?us-ascii?Q?fhPyupF4CZjKoiJ9lPFsUe2+xtE7Mm8e95qNHhbBtJSCepwBMtCii734hhbm?=
 =?us-ascii?Q?cvKBx53JElCWm0heGXor1GU2OKsubJ3vER8FGe8+MKnbNrdo3+ztwjeWUlzU?=
 =?us-ascii?Q?J5EqFA4Qatz7fXS00KJMF3OhIeD0h+HW68XlbfOzYSCNNEyxyD/0eVTNFoXM?=
 =?us-ascii?Q?jKeycG1AjO53gyq2e4JbwvsCiAQHuB3L4ZtDr48Oc2ygJYQ1Zlb8Gcp/3Rk+?=
 =?us-ascii?Q?ElyZBSFvFQW/Sgg8g3vT/aU9PaBG13km9rfYBnEZ+upXBNcvYnXH3Fj8AY5q?=
 =?us-ascii?Q?zdcThCXkZRYkRwp98dkBsYeaDZHX7r4HRAFalaTNGHf4wxN0yt/Gwc4Or1wQ?=
 =?us-ascii?Q?3oKUUubV0NgjwWjMb0xfhiUfaFO3lByAsdWlO1BKQIeZn2GcKD1OjLOIGMoZ?=
 =?us-ascii?Q?Q2IJ9tpWI05mw2KUcLATosHROafi3lDZ0Z+tJvvNlTnUlxKvnk1fWScX3tQ7?=
 =?us-ascii?Q?AutCXagcoUgqtSDn6v8geL5wf3QBC5tyValX1V3qT2oHLNFisgAM8PvSpSPf?=
 =?us-ascii?Q?rXwBHSk/6R4NtCTCPhfCpHzKs9gdenNUTLyyRy+g4AbuF5x2Z+FTegcLeZaN?=
 =?us-ascii?Q?jQcoAaOOtsdIrdyr7AP9CDCtHg67pf+mJBSgfDWodc4KmM5iIsez7K3IVw94?=
 =?us-ascii?Q?4eYbXuksO1xschjYMxuwjJyCTcs2zKXteDQae6g1xBDOjq6e9ZZWcyw8iAK/?=
 =?us-ascii?Q?ESK5t8VVWWiWk+dyfq5fJV2/H0aU/IENr8l7ZGcQ2TX7Rf3NNX3O3ieIIEUR?=
 =?us-ascii?Q?vlOqIP5RZ5mStSdfu7QKdooowVWxVbT4M1pIESuoOuunK2QUw5tql4BCDnj6?=
 =?us-ascii?Q?jlfxNBr03YBz1rHNTOcSWpADG0tmzhF8CmRa+owiLFgJQzcRrMYhcRlhX3zG?=
 =?us-ascii?Q?V6nv02UnNSyCQ9AXx6dABEUWvqG+VH9Y6dG+GNK6pE1CWZftGJGNJM9FRNAt?=
 =?us-ascii?Q?MZMpVNQXU/QejkcyPOTHzSwHeR968/OFKjIj+MXEtC2FCUjxhWyegPt0CEmd?=
 =?us-ascii?Q?D+pnkZqKS//QKHn7OSxiq7TmBC0grLSXytx+MpGJH2yjv28HjSQFwP0hgQWu?=
 =?us-ascii?Q?+z0E38MEfWM3BNo+0wSWPtQ/wveznemmT/e5s6HAPV5JhryGNzR9nSvRD3ls?=
 =?us-ascii?Q?ggt4IT3CWQDJ1RFncMGFstil984LXo9aVhwq8wNUoEQk/PZm08xloYahhrYW?=
 =?us-ascii?Q?JdcTVKZca/PJ4YdgSIgJUd/3g0Wvz31rpkA8cWTlWmWGP6aJKvA6+xT5URzz?=
 =?us-ascii?Q?Jk1jaznTP8wgW9YDNa7nNcqYPmbZ4b1BBG6m5PcX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f484da-f91d-42b6-16a8-08dd872ee1a5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 15:02:38.5352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HwHXKZF2TF/q0c/pVrz9Y7mWWXCwLAcFiYVI6OZUIJyKwlBiyN3yg4EYt1zObQsRFfn4oMa7PdCAOIqu/igRzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF453C3BEC4
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 28, 2025 at 10:42:49PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Use intel_connector for DP and HDMI
> URL   : https://patchwork.freedesktop.org/series/148369/
> State : failure

Thanks for the review, patchset pushed to drm-intel-next.

The failures is unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16470_full -> Patchwork_148369v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_148369v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_148369v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_148369v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@dmabuf@all-tests:
>     - shard-mtlp:         [PASS][1] -> [FAIL][2] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-6/igt@dmabuf@all-tests.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-4/igt@dmabuf@all-tests.html

It's some GEM issue:
(dmabuf:3238) igt_kmod-WARNING: dma-buf: Running dma_fence/test_wait_timeout
(dmabuf:3238) igt_kmod-WARNING: Wait reported incomplete after timeout
(dmabuf:3238) igt_kmod-WARNING: dma-buf/dma_fence: test_wait_timeout failed with error -22

The host has an eDP connector, relevant to the changes, however can't
see any display related issues in the log. I couldn't find any previous
instance for the above error.

>   * igt@gem_exec_gttfill@engines:
>     - shard-snb:          [PASS][3] -> [INCOMPLETE][4] +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-snb4/igt@gem_exec_gttfill@engines.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-snb6/igt@gem_exec_gttfill@engines.html

Hang during the
<7>[  370.546788] [IGT] gem_exec_gttfill: starting dynamic subtest bcs0

test.

The host has an HDMI connector, relevant to the changes, however can't
see display related issues in the log. A previous instance of a hang on
an SNB host, in the same test/subtest:

./IGT_8342/shard-snb5/2/igt_runner.log:
<7>[  334.845907] [IGT] gem_exec_gttfill: starting dynamic subtest bcs0

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_16470_full and Patchwork_148369v1_full:
> 
> ### New IGT tests (16) ###
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.31] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.05] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.07] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.06] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-a-hdmi-a-3-y:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.19] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-a-hdmi-a-3-y-rc-ccs:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.30] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.20] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-3-y:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.18] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-3-y-rc-ccs:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.23] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-3-y-rc-ccs-cc:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.19] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-c-hdmi-a-3-y:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.18] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-c-hdmi-a-3-y-rc-ccs:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.25] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-c-hdmi-a-3-y-rc-ccs-cc:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.19] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-d-hdmi-a-3-y:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.18] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-d-hdmi-a-3-y-rc-ccs:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.25] s
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-d-hdmi-a-3-y-rc-ccs-cc:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.18] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_148369v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#11078])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@device_reset@unbind-cold-reset-rebind.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][6] ([i915#11078])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#3281]) +2 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][8] ([i915#13356])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][9] ([i915#12392] / [i915#13356])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2-9:        NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-process.html
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2-9:        NOTRUN -> [FAIL][12] ([i915#13665])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_compute@compute-square.html
> 
>   * igt@gem_ctx_isolation@preservation-reset@vecs0:
>     - shard-mtlp:         [PASS][13] -> [DMESG-WARN][14] ([i915#13723]) +3 other tests dmesg-warn
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-7/igt@gem_ctx_isolation@preservation-reset@vecs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-7/igt@gem_ctx_isolation@preservation-reset@vecs0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#8555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_ctx_persistence@heartbeat-close.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][16] ([i915#8555])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#280])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_ctx_sseu@engines.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [PASS][19] -> [FAIL][20] ([i915#12714] / [i915#5784])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-15/igt@gem_eio@unwedge-stress.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-13/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][21] ([i915#4771]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4525])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2-9:        NOTRUN -> [SKIP][23] ([i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-set-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#3281]) +8 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3281]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3281]) +5 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2-9:        NOTRUN -> [SKIP][29] ([i915#4537] / [i915#4812])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#4860])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4613])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#4613]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3282])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_madvise@dontneed-before-pwrite.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#4077]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][35] ([i915#4077]) +8 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-dg2-9:        NOTRUN -> [SKIP][36] ([i915#4083]) +6 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_mmap_wc@read-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4083]) +2 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_mmap_wc@read-write.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2-9:        NOTRUN -> [SKIP][38] ([i915#3282]) +3 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_partial_pwrite_pread@reads-uncached.html
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3282]) +2 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#3282])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#4270]) +2 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#5190] / [i915#8428])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][43] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#8428])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4077])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_userptr_blits@coherency-unsync.html
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3297])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][48] ([i915#3297] / [i915#4880])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@set-cache-level:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3297])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@gem_userptr_blits@set-cache-level.html
> 
>   * igt@gem_workarounds@reset-context:
>     - shard-mtlp:         [PASS][50] -> [ABORT][51] ([i915#13193] / [i915#13723]) +2 other tests abort
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-3/igt@gem_workarounds@reset-context.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-7/igt@gem_workarounds@reset-context.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#2856]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@gen9_exec_parse@bb-start-param.html
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#2527]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#2856]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_drm_fdinfo@busy-check-all@ccs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#11527]) +6 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@i915_drm_fdinfo@busy-check-all@ccs0.html
> 
>   * igt@i915_drm_fdinfo@busy-check-all@vcs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#11527]) +7 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@i915_drm_fdinfo@busy-check-all@vcs1.html
> 
>   * igt@i915_drm_fdinfo@busy-hang@vecs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][57] ([i915#14073]) +7 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@i915_drm_fdinfo@busy-hang@vecs0.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#14118])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][59] -> [INCOMPLETE][60] ([i915#12455] / [i915#13820]) +1 other test incomplete
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][61] -> [FAIL][62] ([i915#3591]) +2 other tests fail
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#11681])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#7984])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [PASS][65] -> [DMESG-WARN][66] ([i915#4391] / [i915#4423])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-16/igt@i915_suspend@basic-s2idle-without-i915.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#5190])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#4215] / [i915#5190])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-a-hdmi-a-3-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#8709]) +7 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-a-hdmi-a-3-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#10333])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [PASS][71] -> [FAIL][72] ([i915#5956]) +1 other test fail
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2-9:        NOTRUN -> [SKIP][73] ([i915#1769] / [i915#3555])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#1769] / [i915#3555])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5286]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][76] -> [FAIL][77] ([i915#5138])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3638]) +4 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5190])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#5190])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][82] +5 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][83] ([i915#10307] / [i915#6095]) +54 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#10307] / [i915#6095]) +155 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#6095]) +13 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#14098] / [i915#6095]) +13 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#6095]) +4 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#6095]) +19 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-4.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#6095]) +143 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#13781]) +4 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#13783]) +3 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][93] +9 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_color@ctm-max:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] +5 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_chamelium_color@ctm-max.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_chamelium_frames@dp-frame-dump.html
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#11151] / [i915#7828])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#11151] / [i915#7828]) +1 other test skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#3299])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-0.html
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3116])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#6944] / [i915#9424])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_content_protection@lic-type-0.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#9424]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#9424])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#7118] / [i915#9424])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3555]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#13049])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][107] ([i915#13049]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#13049])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][109] ([i915#13566]) +1 other test fail
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#3555]) +3 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#3555] / [i915#8814])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][112] ([i915#4423])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-14/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][113] ([i915#4103] / [i915#4213]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#4103]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4103] / [i915#4213])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#4213])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#9809]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#13046] / [i915#5354]) +3 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#13046] / [i915#5354])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3555] / [i915#3804])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3804])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#13749])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#13749])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_dp_link_training@uhbr-mst.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#13748])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][125] -> [SKIP][126] ([i915#13707])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4854])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#1839])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_feature_discovery@display-3x.html
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#1839])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#9934])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#9934]) +6 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#9934]) +3 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-snb:          [PASS][134] -> [FAIL][135] ([i915#11832] / [i915#13734]) +1 other test fail
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-dg2-9:        NOTRUN -> [FAIL][136] ([i915#13734]) +1 other test fail
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip_event_leak@basic:
>     - shard-dg1:          [PASS][137] -> [DMESG-WARN][138] ([i915#4423]) +2 other tests dmesg-warn
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-12/igt@kms_flip_event_leak@basic.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-14/igt@kms_flip_event_leak@basic.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][139] ([i915#2672] / [i915#3555])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][140] ([i915#2672]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#2672]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#2672] / [i915#3555]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][144] ([i915#2672] / [i915#3555] / [i915#5190])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#2672] / [i915#3555] / [i915#5190])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#2672])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#1825]) +8 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#5354]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#8708]) +2 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#1825]) +14 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8708]) +7 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#8708]) +11 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#3458]) +13 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3023]) +10 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9766])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#9766])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3458]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][158] ([i915#5354]) +20 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#3555] / [i915#8228]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][161] ([i915#3555] / [i915#8228]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_hdr@static-toggle-suspend.html
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8228]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#10656])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_joiner@basic-big-joiner.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#10656])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][165] +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][166] ([i915#3555] / [i915#8821])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_plane_lowres@tiling-yf.html
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3555]) +2 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#13958])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_plane_multiple@2x-tiling-yf.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][169] ([i915#13958])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8806])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#13046] / [i915#5354] / [i915#9423])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#12247]) +3 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#12343])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_pm_backlight@brightness-with-dpms.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#12343])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#3828])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_pm_dc@dc5-retention-flops.html
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3828])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [PASS][177] -> [SKIP][178] ([i915#9519]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#6524])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_prime@basic-modeset-hybrid.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#6524] / [i915#6805])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#12316])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#11520]) +3 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][183] ([i915#11520]) +5 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#11520]) +2 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#4348])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][186] ([i915#9683])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-pr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_psr@fbc-pr-suspend.html
> 
>   * igt@kms_psr@pr-cursor-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#9688]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_psr@pr-cursor-blt.html
> 
>   * igt@kms_psr@psr2-primary-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][190] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_psr@psr2-primary-blt.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#12755])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][192] ([i915#12755] / [i915#5190])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [PASS][193] -> [SKIP][194] ([i915#3555] / [i915#9906])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-11/igt@kms_vrr@negative-basic.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-5/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#8808] / [i915#9906])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-3/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#9906])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#2437] / [i915#9412])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#2437] / [i915#9412])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-rkl-8/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2437])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][200] ([i915#3708] / [i915#4077])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-9/igt@prime_vgem@basic-gtt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][201] ([i915#12543] / [i915#5784]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-14/igt@gem_eio@reset-stress.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-16/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_endless@dispatch:
>     - shard-dg2:          [TIMEOUT][203] ([i915#3778] / [i915#7016]) -> [PASS][204] +1 other test pass
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-10/igt@gem_exec_endless@dispatch.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-11/igt@gem_exec_endless@dispatch.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [FAIL][205] ([i915#5138]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [SKIP][207] ([i915#13749]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-sst.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-10/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][209] ([i915#14033]) -> [PASS][210] +1 other test pass
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-dg1:          [DMESG-WARN][211] ([i915#4423]) -> [PASS][212] +3 other tests pass
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-16/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-edp1:
>     - shard-mtlp:         [FAIL][213] ([i915#13734]) -> [PASS][214] +1 other test pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-5/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-vga1:
>     - shard-snb:          [FAIL][215] ([i915#13734]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-snb1/igt@kms_flip@wf_vblank-ts-check@b-vga1.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-snb4/igt@kms_flip@wf_vblank-ts-check@b-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
>     - shard-snb:          [SKIP][217] -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [SKIP][219] ([i915#3555] / [i915#8228]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-2/igt@kms_hdr@static-toggle.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-11/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][221] ([i915#9519]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [FAIL][223] ([i915#9196]) -> [PASS][224] +1 other test pass
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [FAIL][225] ([i915#7173]) -> [SKIP][226] ([i915#7118] / [i915#9424])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-11/igt@kms_content_protection@legacy.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg1:          [SKIP][227] ([i915#3555]) -> [SKIP][228] ([i915#3555] / [i915#4423])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-12/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-14/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][229] ([i915#10433] / [i915#3458]) -> [SKIP][230] ([i915#3458])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
>     - shard-dg1:          [SKIP][231] -> [SKIP][232] ([i915#4423])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][233] ([i915#12713]) -> [SKIP][234] ([i915#13331])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg2-7/igt@kms_hdr@brightness-with-hdr.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-cpu:
>     - shard-dg1:          [SKIP][235] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][236] ([i915#1072] / [i915#9732])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16470/shard-dg1-13/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/shard-dg1-15/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
>   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12714]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12714
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16470 -> Patchwork_148369v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16470: 5ee9d7c2aac6950c88c9eaf9002761ce4c430345 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8342: 8342
>   Patchwork_148369v1: 5ee9d7c2aac6950c88c9eaf9002761ce4c430345 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148369v1/index.html
