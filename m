Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99127AB456F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 22:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884D910E4A4;
	Mon, 12 May 2025 20:26:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9pbSEG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634F110E1DB;
 Mon, 12 May 2025 20:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747081589; x=1778617589;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Z40kslrci4hlOSLzLb4G4Oj8+Q/hWHpKoD0422fTGrI=;
 b=F9pbSEG+kge02riyvazPpUFDP2Tq+qhxs2mqFRCs9/1u7MUNgOTLM1Ep
 7MVa3AJa0y/1bvgaS68K7NEVPsnop8lkrKksH1L2Kg1AVq33ILdF2d7lI
 Og/YGecZLNXoLBqzGKtrkIWQq6EZagmHT5AxatRpQoAxRv8u1HFf0+wRf
 6souuqP8q+jVb/6iOgF4gX7pirmSCbLywbdlz8zQkJRCYtqgrWaJC9xOd
 YY7Osoy3cITWzGO6/IoaUyXerOtrihPEliMxY8A6l1/UDiPF8wW6+TX+m
 9Y0kUM8hNSG1pJB/wKMj7+8ewILbfqjesKOMX0hkToVXn6oIsq+TGkyQk w==;
X-CSE-ConnectionGUID: MWZcxW2lTEu2RGayFay4IQ==
X-CSE-MsgGUID: yQR6XP3pTkKAeISNpGQ0ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48893353"
X-IronPort-AV: E=Sophos;i="6.15,283,1739865600"; d="scan'208";a="48893353"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 13:26:28 -0700
X-CSE-ConnectionGUID: rSf6OBApT+a4dxDKyPTJFA==
X-CSE-MsgGUID: MG1JHRbISCK8cacqxQ0oAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,283,1739865600"; d="scan'208";a="137323392"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 13:26:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 13:26:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 13:26:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 13:26:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QN0IQgLY/rNTmQ/odoc9fvsS7xjl8/IGxE1KZIGb2OxijSm3T+P9ByL7tgETp8oTp1VANfBmGW1dcyNSZqLcOXKF7Is3gfhE2vLB1pjyAShMnwhg4w1nA6kJL4KRZxo7CPKz1MPDwpVJz1+WzzQXPcHdzdkGOLdMAV6ARVuUpAwXooN8IP7w+EoIQGJYbCIa+p5uxw0L/9mtWxkhfqowx/i51PT02TYaBitakbfGi2JbWoG1q83afWjOR2micK6l5uZpGDrprMtUJV+vm52iz7GzSLI+bUojsiE/Ikf9NLkIIsqHqkFY8Et1ksX7eVv1KsrbnwjZ+iid1MSuafoabw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QYsNVLUjNmyaWPOglhsHr6yCkhwxrPk8CYGsdE1OHdo=;
 b=WS6HNWn36Bo9lmBIzNFtbqbZa1ppGWybHgo+BgBoCQ+RrPy8Dq6PqNSUOG+Fwj/GaDuvN7vTuidTZgYaTt0URAMBe4QNqcNSq8fHTpVq5+5YiVFPK47okhMSaXYQi8Drea/UKCFa2mKXjJPthRw3EeA160/Y0SfRTKNOLoskcc6QXHeFDwGH9et+KlvIKQFz+AlhiExgm3ahUtNBb56USjwrIozHOL3Y05qg7paleD2ycd9ATf0q5FHqVOkNFLwjtdIKECGFAZ9zLLS6d9X79S/6yD601yJMgKiQVZQfXc68cJa8EiJvqbTcJ0Ad3DVjHNFP8WysX6uM8PQ+/7+9uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Mon, 12 May
 2025 20:25:57 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::1dff:f717:6190:8c17]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::1dff:f717:6190:8c17%5]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 20:25:57 +0000
Date: Mon, 12 May 2025 23:26:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Mika
 Kahola" <mika.kahola@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/ptl: Use everywhere the correct DDI port clock
 select mask
Message-ID: <aCJZXWBsS7Is6Zpz@ideak-desk.fi.intel.com>
References: <20250512142600.824347-1-imre.deak@intel.com>
 <174708023231.10493.6499863984617165104@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174708023231.10493.6499863984617165104@intel.com>
X-ClientProxiedBy: DUZPR01CA0121.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::11) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|SJ0PR11MB4783:EE_
X-MS-Office365-Filtering-Correlation-Id: b9e54651-6409-49a6-a95a-08dd919333bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vyWiaQOWO3EBrndCg3aROmvzoamstAkXukLPl6VarKT5LeYMHAnAM3mwGDcl?=
 =?us-ascii?Q?RYg82rEY2gR33dMiP72QucuO1OKqpsKFnX75JI+wknkI+2S+tFyukzED8yNV?=
 =?us-ascii?Q?ELILnQXZH06L20hKqZ6PH8i6IT42nqbF23QYhTsDN+8ppTLG8jTST+3nkOYW?=
 =?us-ascii?Q?pTrugHM7dHx7fRkzeNr+6W7rgcpm2nt1RKPTCf0q6K5HcdJYws+fKYZD7piQ?=
 =?us-ascii?Q?6YjG7QBfkTn52WqW2IE/PNIUHJTlov1rtWypGc510uD0lNEBxFFbuAgh/RlZ?=
 =?us-ascii?Q?bMtFBCB7J+wiHUHpywNMIyBo5sasQlxGWXLrgrLzPV91H09kMUKkDkaDcw/z?=
 =?us-ascii?Q?orD4QmQ3Zi0mYIhPXFGkfkNam8vY2hSuW95h5597xxfdhJzaVcfrUbEmcTgt?=
 =?us-ascii?Q?WxJW7/hYYD/6l9huWk3yqefe4f26xIsu2dKmSEAiovReXpeklHJiMKzrVrEJ?=
 =?us-ascii?Q?fw1rWd+G5rJWi5r94ScW51kMdmszUXiN/18VCY8aT6ISqZT4zrG6bwT/aaIs?=
 =?us-ascii?Q?CQCigUU2XTbU8BnWqLpjeG7gr+9Ha3kcWr8sQaQTAS5ZKFNFZsVudHGUP8n3?=
 =?us-ascii?Q?G+jBz1yQe/0JvpC8hXlL07iW6fHU5svOGtZAVKDV9C7l1cKXvrFA4TJ4H2RD?=
 =?us-ascii?Q?QxIE04rL0NEOF+DITwgju6LA0fVocz0YSjALu9HUUAIo4Yholh3VSRnnljyX?=
 =?us-ascii?Q?BA+saPpCO/S5zFdx+BwONDt7GutqiNyAmiwNwOKy4N7Pm+7ZTLWxAwbMnZu3?=
 =?us-ascii?Q?8DsIx4S8oAeE2abBp0Rr4gLqLix9TtRNwylH6A06qBil+VmXJA7ySIhVE8ew?=
 =?us-ascii?Q?+0RH4YTq04MiGd95tGreiGc4omuP6ML/3E3Sfps8Lpqa6L6Ry7rL7/NDycy5?=
 =?us-ascii?Q?vHgY+UW4cfDatfKk77yKPTwKokpNmnCn21Faw4PS6cq4329XKkm8UTXduLGE?=
 =?us-ascii?Q?eDfOK4uthIjSEmQKAFruo+0T6mDjSYh5SNDcaCckZS0rm9M6jrW7GyQZXcPu?=
 =?us-ascii?Q?YgMF6f2ARgYtg33YE52/DjNeg3dNIw9AxpW0aGlz+iIS7CGGOgfrip1g8mL1?=
 =?us-ascii?Q?ZZtmaO/do4vcHcSEc3LieLCqOofbaNQJs/39rupwpolZSeBWJcHoB4QcWcUa?=
 =?us-ascii?Q?B6t9i5Ex3UuqyoAbtKM8tbxXTziKd8o1aUYj+3bRDygVkoQoT/4Ztq7E1tzJ?=
 =?us-ascii?Q?XLF2hYh4+wabS638o/H8flvPQ1VoHcMzFE2Ae5dow8ikEC9WeZipMaSYjr8t?=
 =?us-ascii?Q?zL9wWqdV7Z4ZOo4ZlkVccT4+mNK8g+0LoYBMOV7zNy5ZCndZmOELxXK37E25?=
 =?us-ascii?Q?2LLGYtaek7HwDP7m+1uNd6Uw2e2lKOxUfXH+0uNLrJe7uSLq+tlBaZoEJR4B?=
 =?us-ascii?Q?Uhpa1Sy+oG7/qMht50F09uAYmKMXxRp03zrSLhx/zqqeIzHyHtVb7SuzpALx?=
 =?us-ascii?Q?1iAOhA/lK3E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cGMtSwqIIQdEmE12cx+ZKkRYq5Xnw/5RnCUyvAcPILSftvVLWaIwl+ehvNnR?=
 =?us-ascii?Q?/Q1ZFNoYs/kYULQmAdICUxRJ/GWSl3GbSg/jeRr1MvZVFMetTpQK2MOTmBht?=
 =?us-ascii?Q?V9c+A3SKp9mA6Cj+v+UjdAV3s4/3FNJcjj3SCiNeWYQcnDTzukdUsCFROY/b?=
 =?us-ascii?Q?ycSges0PNmza6jFWq/2QgOwb43l2mIN/BsViX8PthjScnC210DcY5vOnsLpy?=
 =?us-ascii?Q?K5jnwxeEBncIKjQ5DUUhGDQGJJ1C6DC1tfP0sK8gAzd6OyskJNBQaKt0cOyz?=
 =?us-ascii?Q?Pydck1Q2JhRxo4hgg9bzGAs5o41vpp4hd4ra3cQ47ZAIAN8h7vlDuTe6CRvg?=
 =?us-ascii?Q?LcrzH9xSRBXquYuFUo30GPOwGAGar3d2zE8b8GicXZUHgzlZJYfn2sJQLWo6?=
 =?us-ascii?Q?Y6rZrixU92OtG5qRzTXsBHJoGUAVtHxcvXS1xYeMSquL/HPfB0gNnwwD5a3q?=
 =?us-ascii?Q?vOAGOgniDe+Lktu89AIEenurgZ15McCgm7asHjILY0lOo7WW66Ajw1Rvvh6B?=
 =?us-ascii?Q?4dNugViNbMKy/uoBrNrCf+Yq9fp/Xp0GMOtSBVooYhY5USNdANnDoBXKu+Fg?=
 =?us-ascii?Q?tfZDTwNYSOcT6BCkLeQ6+RlYAsvzhseAV9zfVldFByO6GuAmAvUSihW/72NW?=
 =?us-ascii?Q?HerFz4HPys/a7SIeQxraOsZNdOx2dhrzQsugxQzaDMqowTufskIqTYAzdYtV?=
 =?us-ascii?Q?a9argDu2/s7NV1HZ/CIop5/43smzT53GCsiIGTQUyEpp5y8H8itSF2E9zUwV?=
 =?us-ascii?Q?kTNhl4lh0Hw9AAutQ8GBTLlusfa4VJQ/EsbQiSs1GkczLOkknRPeq1/WeSMC?=
 =?us-ascii?Q?qvG3reI52osfONDajmuGQ6cgxxPpHYsvOs/hahibXvEVTY6dG/PZRt6Z9tC5?=
 =?us-ascii?Q?oLdY3WtmY9HeNruXJ3RISiGB34gtwUfsFb5RcSyRsY76g6yEIHiLGnwj4SQ0?=
 =?us-ascii?Q?vaphY34HouhV2CIEeTvZKs65E6BOuA0Y51QrMwlSCTaa+iOiVPMU5rdX4HYA?=
 =?us-ascii?Q?xZN1+sHs5hpEoUm6Vdm65bdOlfPmV6tq9exNM3G7ub56FcCt4z3Dr4kVsirx?=
 =?us-ascii?Q?KGNcBCGfLcAzBDPMycmFx7xpEZAcCaR7TwJuF96I93u7tzqGfjGXtcn9Pnmd?=
 =?us-ascii?Q?p4LsVpi7aUZ4SeMg6YjuwZKgUNUHjXl8MLGO7YyH3guwGLBGHFL9LG3Gx3qL?=
 =?us-ascii?Q?vimOHkGTxvQqver8FqMQ+Tcj/y2GREaMMywlJzBAiVNTFLKhcZG6PI+SirJt?=
 =?us-ascii?Q?Mn6eVGFz56Vttm4IWHofN+VKXe0A9mLnGv+tpFcrwbQQ8DWEhlJTl/0Rb21K?=
 =?us-ascii?Q?w0eY4buM5dkVRqh5QwnS49DZeY31DEgls5LKSQfgJpX9sn+cSfrF8iDtbOh+?=
 =?us-ascii?Q?lG1wdqOC8vMnp63j4+hxSaw3HT9YeK94OfDuYWZyQB/x7zXXmEZbnBpuqNQQ?=
 =?us-ascii?Q?iK0puGCx/u6CRH4jiruiw6cAJ9ozmRnsfX0ZqP4up5fwg6tqbpyeXON6UQ0p?=
 =?us-ascii?Q?I6+mRa+IMsH6T3QjuqXwu2HyHYzoUb/vexO0feIX5QaVKPUKEK1tF3POgJMq?=
 =?us-ascii?Q?5GXyn2ssHmZkYQT/GeCDslo+2Sd/kzkAqoB9U7hs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9e54651-6409-49a6-a95a-08dd919333bb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 20:25:57.2514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PXY1ExUBvBvR1Khy8nTvLPJMRj1S4nKE4P2Bc2t2hhBmffMWFguUV/bbCKk8RCBgntIo2vGUhQ/FYcu8p34n6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
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

On Mon, May 12, 2025 at 05:03:52PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-05-12 11:26:00-03:00)
>
> [...]
>
> >diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >index 960f7f778fb81..59c22beaf1de5 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >@@ -192,10 +192,17 @@
> > 
> > #define   XELPDP_TBT_CLOCK_REQUEST                        REG_BIT(19)
> > #define   XELPDP_TBT_CLOCK_ACK                                REG_BIT(18)
> >-#define   XELPDP_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(15, 12)
> >-#define   XE3_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(16, 12)
> >-#define   XELPDP_DDI_CLOCK_SELECT(val)                        REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
> >-#define   XE3_DDI_CLOCK_SELECT(val)                        REG_FIELD_PREP(XE3_DDI_CLOCK_SELECT_MASK, val)
> >+#define   _XELPDP_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(15, 12)
> >+#define   _XE3_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(16, 12)
> 
> Since bit 16 is unused for pre-Xe3 display IPs, I wonder if we should
> simply redefine XELPDP_DDI_CLOCK_SELECT_MASK to be REG_GENMASK(16, 12)
> and add a comment noting changes by display IP? Are we aware of
> something that would be wired to bit 16 that would prevent us from doing
> that?

Not sure if a register bit is not used, unless it's defined as reserved.
For pre-Xe3 (pre-PTL) bits 16-17 are not defined as reserved.

> I remember something similar was done to other register fields in the
> past. Some examples I found:
> 
>     3fe856180c94 ("drm/i915/xe3lpd: Add new bit range of MAX swing setup")
>     247bdac958fc ("drm/i915/adl_p: Add ddb allocation support")
>     d7e449a858ec ("drm/i915: Just use icl+ definition for PLANE_WM blocks field")
> 
> --
> Gustavo Sousa
> 
> >+#define   XELPDP_DDI_CLOCK_SELECT_MASK(display)                (DISPLAY_VER(display) >= 30 ? \
> >+                                                         _XE3_DDI_CLOCK_SELECT_MASK : _XELPDP_DDI_CLOCK_SELECT_MASK)
> >+#define   XELPDP_DDI_CLOCK_SELECT_PREP(display, val)        (DISPLAY_VER(display) >= 30 ? \
> >+                                                         REG_FIELD_PREP(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
> >+                                                         REG_FIELD_PREP(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))
> >+#define   XELPDP_DDI_CLOCK_SELECT_GET(display, val)        (DISPLAY_VER(display) >= 30 ? \
> >+                                                         REG_FIELD_GET(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
> >+                                                         REG_FIELD_GET(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))
> >+
> > #define   XELPDP_DDI_CLOCK_SELECT_NONE                        0x0
> > #define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK                0x8
> > #define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK                0x9
> >-- 
> >2.44.2
> >
