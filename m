Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AB79CF49E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 20:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9EDB10E2EE;
	Fri, 15 Nov 2024 19:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsVBOmhn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9FC10E108;
 Fri, 15 Nov 2024 19:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731698007; x=1763234007;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PWEnF67dmLWJoxAyTijCjJM3k0eMBgI3TgJ3Hhuz0Ww=;
 b=IsVBOmhn3SX3Mqu5StUkUc06eZif0aGYte/iJuV7Wb2zC+pyRPC7Uorr
 /1j1KFqXXPFwZuGVe7TJYG/nY/icvNaSW2d0V/nDKBavG6Bv8ktwoFDzR
 1FHPu/OZ3MWUoIyuB63NhsvXISw44EG3PjbVR9cqBR2UbDy1mB3cUv54g
 xUei1qWIBmmT1JMsotDSUK/TyCCdKePb69LYqH0pkOZNIhJM9PC7NsS31
 kjcEu6hoKS2L9LWnuwWjlrmpl38anBvHCp0VwKnrkgHXyDcBl0MK4AGl0
 rnx3eobq00KnRTtca4MbNZ0AMKb0klG4ZP+ERGVeDvgoCqWi3Nkp9JC0e A==;
X-CSE-ConnectionGUID: c4ikEzx5QUqzxfPV/RVm8A==
X-CSE-MsgGUID: hXksqCI3RvS7dHU1fjsU0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="49245572"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="49245572"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 11:11:53 -0800
X-CSE-ConnectionGUID: NsioKUFfQwWYN9t4uVQ61Q==
X-CSE-MsgGUID: jy8kw64gR9mL04At8exq8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="111924361"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 11:11:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 11:11:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 11:11:46 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 11:11:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e6MzcZHd0LD688lnKI6aXL0I1vGvW88fJSKcca3ofzO88U4ZxUuvron+FhMOvUnH8A5JcBGGRodrHhA86KYZ9osHp+FNun/FqKdXtKXvR+3+DPpCkdj9iNBtLGDh/l4mG37dMPYGm3lOK4DwiICKrHSDG2K1hxzXEqEXi0Gjg377SAx/xk2+HTjEbxsWTkRsL/b1bcpTgg1zCfuvjMchZPFeN9KR3mDNopJ7QBLecoQUfGLkEeaUXMM/+5w2ThuS1V6GRWVTfCWwmcAHm0ilIvmZK/s5Xtzo7JYcOsB5YeEGvLcdpX7PtrCdqsgcFI/QNxBWxWnRKF7MVTCSmuCTog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2g4Vgr2Lwx0GTPevncXYe5yvmappiWjzQXcrvYEZUX8=;
 b=imBVPSyX9ohfNPqQv3il21k2nhOV/feuib7o60r9ZTUrLchPmK+OH4a0bRmQKXMX/bAmFm5OQHwvm8z+iAL/k6356+DjuOrNY1XFOyuAwMUYtsBqVTh011DCkGRXZdauPzDVXm+vKHob01lJfKaJVwO0VvW3AeVqa1g/O6CYbn7RehjwKU46tqq2m9+r74dkGonvjonLb/k6ukdnk0A7MNNmEoZmebdg04RZqNwj9IdJHj7Tkk2U0er87fdCqCt7IMIfZSgKSt358PANLk4Q1v2hC5waEQ2lKcw+UIG55saoTqCnubK0bO3G/L1H3sLtmEBDy3jVS/gKyRVGWFLgoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB6570.namprd11.prod.outlook.com (2603:10b6:303:1e3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 19:11:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 15 Nov 2024
 19:11:44 +0000
Date: Fri, 15 Nov 2024 14:11:40 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915/irq: emphasize display_irqs_enabled is only
 about VLV/CHV
Message-ID: <Zzec7CjzlBHs3nvy@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <3540e31869bbb68abd6cae88375d214d3aa1f5e5.1731347547.git.jani.nikula@intel.com>
 <ZzY57OkvPYMVqYkS@intel.com> <87zfm04p0c.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zfm04p0c.fsf@intel.com>
X-ClientProxiedBy: MW2PR16CA0002.namprd16.prod.outlook.com (2603:10b6:907::15)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB6570:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ca29802-43ab-4ba3-cfa0-08dd05a95791
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?A9eLH/8e4MJtHbNkFYCCRZ51g0WjfAHbsZCLofhUxD4vL2i92/1s9Fuhza9I?=
 =?us-ascii?Q?j4nLBdB0HFfchUVom63z8/deHhjg4xOugMA7MHBWFNMfL5qG1ZKacsYpCiL/?=
 =?us-ascii?Q?qYoKecONJQSSlcU5+olFvryxUqZ8PI5tpSEuj/9w+WoeHCVrTKFvDlqy1amv?=
 =?us-ascii?Q?WdZW8Ojnmqsz8z8ukesXpPzAesVJH3Yf971EYwcLjEqZpyzzu0JiIYo1Yd+W?=
 =?us-ascii?Q?FZ9g1wcSeOtU4LL3+DkLrZ0mVxDJ/+z2HdJ2bKYqBBJnqrsR7bAC/h6xCnlM?=
 =?us-ascii?Q?VSEPdTmiHwpAzPtIMoiJ4RMbN2bxVwq2tQc19AdXYL+UsLjvvFT9mauYahMB?=
 =?us-ascii?Q?r8p2zUTo2baikJigj+x1p7onnncnpcL+BaqUN/c59Hdyi+3fG7xV1Dg1MTkG?=
 =?us-ascii?Q?bitoXLjtLKnHdqfkNFPOtfEzYAtEZmCkp+Pjkjc3ytU1n5B+vD7WTfdDGPGd?=
 =?us-ascii?Q?v/Q6gNPA/SRGKA2RWaKsTgmKjJU3cPyrMTRuBovE20tnjFvRPj0WlIe7YGwC?=
 =?us-ascii?Q?AY776NE0fZcw2/r0TxW+S01tVBmNYdlDRScufqmzN+efw5QBBP0xfDXvI2gl?=
 =?us-ascii?Q?FU6uZ78zSNLKl6igTuPjTy3hssDknDCukr0gOqqo/pZGaJJVzIpGYVfyPCwb?=
 =?us-ascii?Q?rQZuikdXbsZoJxMCu5G4fZ3t7hkrOLaSgdrebbYHlTqun2Xw2CYqxch1Tq58?=
 =?us-ascii?Q?AwEE6QbVZ4wEz3pF987cENfRBLkCRivZ5yxcoHoExXNuzvga0y1OnLosQXGA?=
 =?us-ascii?Q?rNABRqho3Zm/BZQvcEN4OyCTUVfWCjUa2g4BE8ERVzdOCSua/tJSdQLx5+2v?=
 =?us-ascii?Q?auZazHZlpL6Htk7c/zNKyRZjVG2PRgc1gqwGxkN+Yl1U+yA6UdqV9U1AXM6K?=
 =?us-ascii?Q?8uidxZAQAGzv5JSRkQH+MOav6/W9wqZ3kpXIE8Dm5zfvEevkx98tRPec3hvY?=
 =?us-ascii?Q?GnOb6rqcvNNW/UHF1E48gUArHIJtBOhJaaQ7n5Z0GpTK9gNq9xTKwriDUNda?=
 =?us-ascii?Q?tmkAHpRMwCyPfm1lsHZjqwG2s2S9BXxTGyAHmoTJir/I3bi3tSuKOiiYa7t4?=
 =?us-ascii?Q?bUA5ClSDRFrX+vzjZpBJpVPDDYwjaOk0+p2jdUoJ/SKcyaSL76KRYbVauQEZ?=
 =?us-ascii?Q?ymr7Nwu3o2bZTikoBexEpHsvX5T8GtACpOfuOu3e+hfccDd+mnaJkYm0jagi?=
 =?us-ascii?Q?8Kski5NrT+BRJRbUp928bhfPDbkHKI6D5zDy/DyYzpDsfumqFHvfJ9yQfeiW?=
 =?us-ascii?Q?SJZWvplRZ9t/ThLv4tsVRfmqPGjpLKUtFZ28rzJPpTWRU1lOZdBM26sgv2iX?=
 =?us-ascii?Q?U1bToTF/AJ82eDc7e7gITYk8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wODVxZ6IJOfAMIYV4CghXTN1mKNUgxJcw3BC3CmGe7T6ThrQaCoIMppG4fQV?=
 =?us-ascii?Q?opjg5Pvnf6gfL9s9120o7iOVsr5f5qiTz3VPiI49T7QS5kGUYJtntxB/IyRP?=
 =?us-ascii?Q?/fRuXkxv3wZH4gF3wyiJ24sgbCjFrQRUAB6GSX1NKx4IcYS1Vf/D24Mvzn3i?=
 =?us-ascii?Q?oPs1hg5Ew7l/1xR+tnNYHKeuZP/5Wi0iqTreZkFklsZ0Cy1mVxGEDrwXYZHW?=
 =?us-ascii?Q?86aWwJ+H36QOo+Bw6H7VcEXLTlMout3VSmoOgKUg/KNCa9Sd1YEavkuvwF/b?=
 =?us-ascii?Q?qT4VN5wlusZfqREgnNXbfLqHLc4HdjpKz3qNggvoHpraeGy6SA3eDNP+Nwj/?=
 =?us-ascii?Q?agBgLhs71GMrFcASYvEirxIqG5Cr7NXIZT5SYPFX8NknISBorkrLp6IDOpIo?=
 =?us-ascii?Q?tdq2qo6+U5yNb2Cib6kaGN8O11MjDUBlBE4rc2mPeqtTvfUtCahbMxrPyrhu?=
 =?us-ascii?Q?us+FUSQP68BY55l3DqAhqmRTj4Hy8lV7edgdcr1GOpn7gI/0xE0OEuxgW4Ur?=
 =?us-ascii?Q?lc4jHxIE7fkRJDWT4SlWOwj/h1kKZtaHaYv5dmaGLkY559Uejf23yCDBmHrk?=
 =?us-ascii?Q?9u43FZBLpIYndyqdenkTdA9Av+l3mYSt30TP1+tNa+KEUeF51P/+0sAgLYqr?=
 =?us-ascii?Q?d3UZw3p2n/FkInykPYN2yLDqhaC1aO9zcdPHPiDnY6Fs2uXAB/VQjaBzoXbF?=
 =?us-ascii?Q?VXA6ZwuYxLbJ5oeshhqWGooKhgMzqMrP4bUkLgV6MJrql3chLattmjxZya8g?=
 =?us-ascii?Q?ZS0wQPYgz7BgaPljxubuIb9w4MU36rDW6MkVFBkLvVQOaY/kwy9WDbQjX0Al?=
 =?us-ascii?Q?Fob9FwLhZJ82piHp7x7b41h0qsaJ1VAlK5hBDw492LcD4ajuePMxAujW3Pz6?=
 =?us-ascii?Q?UCR+FbW7ZS8LmilOE9UE7wMYCVYQrEZoTKdqVgXYEYXvNhlww2gVuyTV9/oP?=
 =?us-ascii?Q?Pa4RLrcQ71oEu6lWvEiTORmbrAipF302ElZPKTQRc9EN4dqGevLUjlVjLKbf?=
 =?us-ascii?Q?rCeeetgTnejuPD7d5JEqba3rnsOwDBSyl00gt1OZXFG0F3akOBW9z1YqsZQm?=
 =?us-ascii?Q?IMR9eRgTko8uNGsuwewOTZY4+iHUpuc865Yr0QoTMDD+5pVuLBvtKHoIYOuw?=
 =?us-ascii?Q?xwqIfKBq2CQOTUe3Uz8FF+o88Ke/af3GiS56qx04bLXpgfktYy+asbuS7yev?=
 =?us-ascii?Q?ODWB61mBrvlvdcHY/XTT513K2ACZtI2/MDmZovYXVyIN6Wovdf2J9HJj8nXx?=
 =?us-ascii?Q?Nqxwahn6W/6fUUWSnx+sGGKJ0EsYjg72QSJCvKpoYqxfm51HZv+sWj28GKUh?=
 =?us-ascii?Q?EU6w3OisKpzSHkJQd0JD5snPJTDYD6oaie7D7dd9ncBNWMKUDU8z2jqPUEVS?=
 =?us-ascii?Q?CN9u864qO11uj9t3jJF7vVC+c8Qp4aWyIxe7dkgNMTgU7nO5hRNS8QfhX6ud?=
 =?us-ascii?Q?Skz9Xj5c/9qi/RwwdaZcVKWY7Pf/MNXCmvcK1qMLPjDsLTr+c620IgydrlEd?=
 =?us-ascii?Q?MkXUZKGW382cp20hvPb6WBWxWiYdyOaHqc1tdzqShFcK6Rjum+0KiQPHdrbo?=
 =?us-ascii?Q?12SoRSatwDZ+5ltu9hntDa/Bk9MZj6Cg+SBsHomZPkD+cLOZtCgbhenK8gQ4?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca29802-43ab-4ba3-cfa0-08dd05a95791
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 19:11:44.2802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ChXTDV+heAAPVbuUkha1SuZm2T+h6Xj/isUArsH265PlEAFB3FoKYOjszLf5OFRnA/gA34/FCfyP04OdpK7NEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6570
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

On Fri, Nov 15, 2024 at 03:15:15PM +0200, Jani Nikula wrote:
> On Thu, 14 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Nov 11, 2024 at 07:53:34PM +0200, Jani Nikula wrote:
> >> Rename display_irqs_enabled to vlv_display_irqs_enabled, to emphasize
> >> it's really only about VLV/CHV. Only access it when running on VLV/CHV.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_core.h |  9 ++++++-
> >>  .../gpu/drm/i915/display/intel_display_irq.c  | 26 ++++++-------------
> >>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  6 ++++-
> >>  3 files changed, 21 insertions(+), 20 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 45b7c6900adc..5ad66df1a85e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -453,7 +453,14 @@ struct intel_display {
> >>  	} ips;
> >>  
> >>  	struct {
> >> -		bool display_irqs_enabled;
> >> +		/*
> >> +		 * Most platforms treat the display irq block as an always-on
> >> +		 * power domain. vlv/chv can disable it at runtime and need
> >> +		 * special care to avoid writing any of the display block
> >> +		 * registers outside of the power domain. We defer setting up
> >> +		 * the display irqs in this case to the runtime pm.
> >> +		 */
> >> +		bool vlv_display_irqs_enabled;
> >>  
> >>  		/* For i915gm/i945gm vblank irq workaround */
> >>  		u8 vblank_enabled;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> index d5458b0d976b..50c1ca062b80 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> @@ -434,7 +434,8 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
> >>  
> >>  	spin_lock(&dev_priv->irq_lock);
> >>  
> >> -	if (!dev_priv->display.irq.display_irqs_enabled) {
> >> +	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> >> +	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
> >>  		spin_unlock(&dev_priv->irq_lock);
> >>  		return;
> >>  	}
> >> @@ -1499,7 +1500,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> >>  
> >>  void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> >>  {
> >> -	if (dev_priv->display.irq.display_irqs_enabled)
> >> +	if (dev_priv->display.irq.vlv_display_irqs_enabled)
> >>  		_vlv_display_irq_reset(dev_priv);
> >>  }
> >>  
> >> @@ -1522,7 +1523,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
> >>  	u32 enable_mask;
> >>  	enum pipe pipe;
> >>  
> >> -	if (!dev_priv->display.irq.display_irqs_enabled)
> >> +	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
> >>  		return;
> >>  
> >>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
> >> @@ -1697,10 +1698,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
> >>  {
> >>  	lockdep_assert_held(&dev_priv->irq_lock);
> >>  
> >> -	if (dev_priv->display.irq.display_irqs_enabled)
> >> +	if (dev_priv->display.irq.vlv_display_irqs_enabled)
> >>  		return;
> >>  
> >> -	dev_priv->display.irq.display_irqs_enabled = true;
> >> +	dev_priv->display.irq.vlv_display_irqs_enabled = true;
> >>  
> >>  	if (intel_irqs_enabled(dev_priv)) {
> >>  		_vlv_display_irq_reset(dev_priv);
> >> @@ -1712,10 +1713,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
> >>  {
> >>  	lockdep_assert_held(&dev_priv->irq_lock);
> >>  
> >> -	if (!dev_priv->display.irq.display_irqs_enabled)
> >> +	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
> >>  		return;
> >>  
> >> -	dev_priv->display.irq.display_irqs_enabled = false;
> >> +	dev_priv->display.irq.vlv_display_irqs_enabled = false;
> >>  
> >>  	if (intel_irqs_enabled(dev_priv))
> >>  		_vlv_display_irq_reset(dev_priv);
> >> @@ -1911,17 +1912,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
> >>  {
> >>  	i915->drm.vblank_disable_immediate = true;
> >>  
> >> -	/*
> >> -	 * Most platforms treat the display irq block as an always-on power
> >> -	 * domain. vlv/chv can disable it at runtime and need special care to
> >> -	 * avoid writing any of the display block registers outside of the power
> >> -	 * domain. We defer setting up the display irqs in this case to the
> >> -	 * runtime pm.
> >> -	 */
> >> -	i915->display.irq.display_irqs_enabled = true;
> >> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> >> -		i915->display.irq.display_irqs_enabled = false;
> >> -
> >>  	intel_hotplug_irq_init(i915);
> >>  
> >>  	INIT_WORK(&i915->display.irq.vblank_dc_work,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> >> index cb64c6f0ad1b..476ac88087e0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> >> @@ -1457,7 +1457,11 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
> >>  
> >>  void intel_hpd_irq_setup(struct drm_i915_private *i915)
> >>  {
> >> -	if (i915->display.irq.display_irqs_enabled && i915->display.funcs.hotplug)
> >> +	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
> >
> > I like the overal change, but it is not just a 'Rename' as the commit message
> > tells if we are changing conditions.
> 
> The commit message does say, "Only access it when running on VLV/CHV.",
> but yeah, I could rephrase it.

looking again and everything really looks good. My only problem is
with the word 'Rename' in the commit message...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> 
> 
> >
> >> +	    !i915->display.irq.vlv_display_irqs_enabled)
> >> +		return;
> >> +
> >> +	if (i915->display.funcs.hotplug)
> >>  		i915->display.funcs.hotplug->hpd_irq_setup(i915);
> >>  }
> >>  
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
