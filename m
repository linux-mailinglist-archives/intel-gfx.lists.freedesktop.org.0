Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6979A0FEE
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 18:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D901810E760;
	Wed, 16 Oct 2024 16:43:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XjQqAohk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B876B10E749;
 Wed, 16 Oct 2024 16:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729096982; x=1760632982;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7fr8+h3oXrMFTB4fPqxYk9COMmW+4Aeu60gqzk0SeJk=;
 b=XjQqAohkmmKc7TSbi7E8xIjsVEE0Gvt9ztEHxtpeLVxCPFpAVefuuZ0K
 S9gBE4Elp1XO6eTSy09nvUvEkebOhWcTXcJ/x5QePlflZH7cPzFdp4L5i
 QmVry8JCS5OzEa08axtzbApk6vF+qpEo2fB927Yd/FwYLQxQ3NT7QDc55
 jTDkVMhXxOIRmMvkvPUtFopJwpNVD/QQ8iVtIjfWcX91L6/0nAVC6kSO9
 +xUyLJ6szykZzk3hdltMzXgThjxUdYozbetPfU0YsKwsq368MmT9qr9G7
 UlmSDCqZY697EiKIc1TSi3qLS/noNECAFcS0I0fu/7zpMEj3rfWm8rCRu A==;
X-CSE-ConnectionGUID: C+ZLhnENRKyXw1ko13xIUg==
X-CSE-MsgGUID: erFnn1WzQkuQ6cV2mFjf9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="39945582"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="39945582"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 09:43:02 -0700
X-CSE-ConnectionGUID: ApCKdrvkTu2DSO2MWAavhw==
X-CSE-MsgGUID: jKxR98jPR2u/NAkqaKQDiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="77947667"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 09:43:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 09:43:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 09:43:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 09:43:00 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 09:42:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=szXNZopiUePhlS70xcNWkGKUrk2zUhRTrLTI3l6Gj9fbWUHpYkKxXgY3t04oyIJi1Dcus75zKHAdHRURbIxHrTlvo37dLfzU+aKIY1+LPYbnTwWvUR3bcdM+oTTUg91/TgJCh3lxbVqTp+gxt7SS1YfGfqxW/D5EHvqfn5+qxC6VCvsvqBSDuaIOk5VP1HpSSDiHV6L+trbASfTecLGtgdjPgFPgnbMMrjX825FDMPGwhToNESRTFG/hMQqg4XYRDpJh1Psat5XiC2yJgOMzesvVqFyMHLrX5DIfZGnhj7W9VIKOFlXshcXkt8Tc/daqESrdz00H6mWFxKou+br4ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FpvimSuFjMz4R1KM0HcWFe2vDNGTVwtr6NoszS+TbU=;
 b=Q1NyU3pQNLiK/7z3EsCNLke/yo3YG4XbT7mCtdltWKatg53XIpEtv1KZSRCa+rwjW7OghC+UgFUr5zjuew1TlhMsHgdvQkltr4PkKbbWkUGRXjOeresAQPat+ofCsw4yTxVwiewpwBbzq58xLh9Pd0bL08qUZ/vG8BlAUJUfSJxlbQ9tuiWSa/2HYqX8h+XDzQ+UHZ1nqjoXAUH0Rh9cHzciXRujQ8/dZVzTvT98TxmcxEebbuAekgF4xZcWUpRLUlOSBf2seXEyzptE7lwbHTP0xF5zDJQBPXUFssn9H5RpiRLTOwz/MbHmejZKR+tNHjzAkHhBdqscMxlRJidpGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB8072.namprd11.prod.outlook.com (2603:10b6:8:12f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Wed, 16 Oct
 2024 16:42:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 16:42:56 +0000
Date: Wed, 16 Oct 2024 09:42:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Suraj
 Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 5/7] drm/i915/xe3lpd: Add new bit range of MAX swing
 setup
Message-ID: <20241016164232.GZ4891@mdroper-desk1.amr.corp.intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-6-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241015231124.23982-6-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY5PR17CA0052.namprd17.prod.outlook.com
 (2603:10b6:a03:167::29) To IA1PR11MB8199.namprd11.prod.outlook.com
 (2603:10b6:208:455::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB8072:EE_
X-MS-Office365-Filtering-Correlation-Id: 23f90070-8a35-45d5-0ce7-08dcee0195d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xPe8zVEL04AKLfqRzJYLqYl8B/w4IZ46nN5rT1w2RQdq0AYkDl5/CJrYDgWQ?=
 =?us-ascii?Q?5bbT0COm3RKMTIVnH6YR+xkJ2VsTtRhlX9tgMk64w7MouFjz51bVeEhPSfzQ?=
 =?us-ascii?Q?aOiLclmFPxBEYJS0SU/kcslZROioDpVSJrijHlLXfX+Oi+Q2IfchQ66kW6/t?=
 =?us-ascii?Q?guGND3fD6dcdjKM8vILwUX6Nh5lw6NmxDkfKi0nd8mCNy5mR+Zq7m4h+78LE?=
 =?us-ascii?Q?5x8OPlOuQcNmBhU4kIihG1/6QnUo4bM93o3MuhfIkA99jHUo1LK3S7oNOc06?=
 =?us-ascii?Q?9B4S/D6auzvx7pwC5nZsHLgoGqzSFQeakreVWlpXsMSqI5veWPeya8kWXRmB?=
 =?us-ascii?Q?Du/DROvA6G1aNjsOCfK0j0xwzA27MbPS1VFBafBsgYq1qiixBE8IHb801FhR?=
 =?us-ascii?Q?2lGE7y73xOvhBO9s+KrRQ6ngl9lf9C69cmO4uoDw0+NmdClBaAGp/2QAOA3T?=
 =?us-ascii?Q?EblFc9gjKnYPGkQI6fAVABB9iw+KON5YB+8lZOYxC/luf71ClF4GYavW6Dof?=
 =?us-ascii?Q?zkDKUDOozPWMB3u4oPrR7g73xlbITPv1cRfS0ZWNyITyQIs8p3euv8ypxRK/?=
 =?us-ascii?Q?BYZ6ISn6qFgwgTIbMd1bcFvPPyyS5Z7X//qWLta0hakvxqzh1uAmwkkU0fTt?=
 =?us-ascii?Q?g58aN3SkywblTXJMHUnz9qc7f/HMJyz1ug9Mm+2IxL3rM31WU+pOKxtrA2rJ?=
 =?us-ascii?Q?mpTYL0tyGBJjrcTnlEmm8LAAxMTWyaXGcqXLknt1BiGAS/ZDbqsjCa4hIKi+?=
 =?us-ascii?Q?cWYjOZqMn/TpnOy1vTpKGsQDR502Dy5R5MMb0AudE7faFH9c9n4obT5vMI02?=
 =?us-ascii?Q?M71d0KCr3+2HLJn5UmdtbU+syojx8XShNaBbrSoH3xQ2HTwzM9A2bmtraJ4x?=
 =?us-ascii?Q?L/gYmVkK/0xMe7zXn96pp4Xc1mM71Rt+ZXcnooMAhg2t7GPOkXSjrn+Vj9IB?=
 =?us-ascii?Q?HiufqK5eqCugZNgf9ybhD/j3UKMj96JRII1Gxf8wA5i3fU5qMMKqm4n5TQUX?=
 =?us-ascii?Q?wTmnSqA8IFgf7OsCjnRIQYkwuuNU4KW1xmPVg1vD1MbBc17rHsyTfAs6VZWK?=
 =?us-ascii?Q?ywKe3nT8TLqskG7hzkn5Z/ywewj1OsQseozBOg73tXZOUzAAGJ4S8ola3jMA?=
 =?us-ascii?Q?UIJ2lFTfyBSAH+MGnyS1Ev9aRMOEL+rL7wh7m2Hl0LdGvS+ZZpQGsslHgE2p?=
 =?us-ascii?Q?vQTTBx05xPdN3ty6sn0BO+9PTUUNCukYDQx4RzQrTTVPtoHaGWh/tY5TH/Bu?=
 =?us-ascii?Q?RlACETMEN/NktPu/Oai4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/tmt9FoDlumJCTpIhHOBf527Uu7XEXayNC1Aebhrf7zO91AeCOTM43A/26mE?=
 =?us-ascii?Q?eGENYT+0HZ05gd8LsjNVpsJlRPuRZttoYQkpT/WDuNZfD+P1cCAO8NyRt9kx?=
 =?us-ascii?Q?dgNU2kuIL28t4u7URidFYyQxO6q4rMeNBArNSqTRn0H+pMvRUidgx6yGRQ52?=
 =?us-ascii?Q?mPwo7JYwua2d2FFuqeh5ie6NEKR0XP2k4jf3kNIrag5rKRljWJaZGZtfAlak?=
 =?us-ascii?Q?THHBKIEMMAUk54GuC1aSo8MOTJ1alggP3WEo/KC3XCXJmsFhXK2mCPU2pI1x?=
 =?us-ascii?Q?0v7//iTDhvwJUOePf0X/r0+jtuVoBu2BHtEGL1hSF4rqHBLB2xuh5fIkxJ7d?=
 =?us-ascii?Q?1sSvjdCR8ThnG0sA5PXvx3SBIwtDfe7g4/qlVctU300mBza8xjeYkIIdwaKB?=
 =?us-ascii?Q?WUlZZQs51tBI/YR59hOsrfqfUbSktmvkEKvfRlxVzhlQW3TwqSujCwH04MCV?=
 =?us-ascii?Q?bzjLwKHIWOMgjR9QW+LwHHtOTH8armcsq0jIKRXKqsfbS7amR/QEyxsw52oV?=
 =?us-ascii?Q?YdqzrA798Q+F1TYvCGnWTaffI0PFVW70o/xdpcxbypsJaEpBZgbzbWPD2Jgb?=
 =?us-ascii?Q?y8rEmzn6cfv+fmjksgAMO/gkJHavZwvjKDwUeiNoIYMGsRn8qMW1lcIFs5IV?=
 =?us-ascii?Q?Fi72+ly0nUXVQyk4Jks+rpBFdQVj9k24u845rdIEYOKNS8hz0I5MaYOqbWuk?=
 =?us-ascii?Q?0ymMMbhIEEho4cR/foy/J+j0jvSyOtzaz+fMIOe44VsnIBit2cW6/1fPvh44?=
 =?us-ascii?Q?npK44DiOeeEzqMNwshf8nG1I8eqh0oqGOa5vV7Hi/pGkWMj9USvuQpEBLJGB?=
 =?us-ascii?Q?mmTwl/4Vwg29ktJK0jUxJ1CZ69r3Gmyxe38jlVEZUiiJXdKv/lsR0hP+DBsP?=
 =?us-ascii?Q?EZJP/GHNp/60TnCKSD0514BM3Xuy4br8JtPlWaQOiKMryHMhsG+NhSQnzzOB?=
 =?us-ascii?Q?/aYHbpsPlLKPTAgyN1phR6Wsp7k+tNzeBN1XV+WpoZ05xfyqMSGLXAHnKBgS?=
 =?us-ascii?Q?oMi+5BgsA+bKflYXeXzrLgDaZTFC7Sv8jen0fGNlIOtN83kjT0hYlO9ynTOg?=
 =?us-ascii?Q?QdIBKWv8tiQSMdrkCBz11f9X7w7daCd/n8uYv8aluSwDcOVuh932JHEnaLDY?=
 =?us-ascii?Q?kkyoRhVclx0sgGjqoKoA5OcmEm8yO7jjqb3ewKmIVwos0EDuOBEcSUfO73Ja?=
 =?us-ascii?Q?0ku51XB523LoJcAx23XXq5hpX7bLlJWZSSobckPdXZiGpebFOrDee+XyZN99?=
 =?us-ascii?Q?MZugUZkARf4wB6/5zltGiRpCsof7q6Ygvno4hJImK8tn/sGJu7hamJ3+2OCn?=
 =?us-ascii?Q?73IjziQokBXOZYnF9/tSQKYla/zHU6qO4hDyDGLVX6WhgcFOI7GaLSFRxN6a?=
 =?us-ascii?Q?MXLeqTVunTjwPEZqCqs6XveROGZdb0jXLLZt4gIZjeS4jnAe7aIxH290Zch8?=
 =?us-ascii?Q?yYg/Y0VS+4jojHss0ClNEv9aeA2R0H8VKcMJQ7JI8Bpd2EvvQmPYed3RPNHu?=
 =?us-ascii?Q?/oXB+2CWbFxZmTSw4tAUGkQ2ulxL1vzJdfL3VOB3JaUoWMgFks+m50nK+UDY?=
 =?us-ascii?Q?elFr8nqozGPUKUZwjRV9+RQmwGO66z+EufTzAuDWwlbS+HMiRdt3YqKFqed3?=
 =?us-ascii?Q?Qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f90070-8a35-45d5-0ce7-08dcee0195d5
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8199.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 16:42:56.7674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Syled8PLMe22/AcRQssqJyo4gOb53LkMzXNCzkha12FIYgKeu9l1vgij9URLhy7BR278wesAS0zyAY16KfB9ly/JoxtkalfNSzIN8s2pKUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8072
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

On Tue, Oct 15, 2024 at 04:11:22PM -0700, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL
> register for DISPLAY_VER >= 30.

So the only change here is that the register field got larger, right?
I.e., it's 25:20 now instead of 23:20?  In that case I don't think we
need this extra complexity; we can simply do a one-line change of
PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK with the larger range of bits.
Bits 25:24 were previously reserved so we were never writing anything
into them on older platforms.  Extending the mask won't change any
behavior on older platforms and will just allow us to stick larger
values in there on Xe3 and beyond.

We have lots of cases in the display driver where fields get slightly
wider to be able to hold larger values on newer platforms.  As long as
the low bit of the field doesn't move, and the upper bits were
previously reserved/unused, we simply extend the field without adding
conditional per-platform logic in those cases.


Matt

> 
> v2: implement as two seperate macros instead of a single macro
> 
> Bspec: 70277
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     |  9 ++++++--
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 22 ++++++++++---------
>  2 files changed, 19 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 55f3ae1e68c9..847662930cb8 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -314,7 +314,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum port port = dp_to_dig_port(intel_dp)->base.port;
> -	u32 alpm_ctl;
> +	u32 alpm_ctl, alpm_swing_setup;
>  
>  	if (DISPLAY_VER(display) < 20 ||
>  	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
> @@ -331,10 +331,15 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
>  			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
>  
> +
> +		if (DISPLAY_VER(display) >= 30)
> +			alpm_swing_setup = XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15);
> +		else
> +			alpm_swing_setup = PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15);
>  		intel_de_write(display,
>  			       PORT_ALPM_CTL(port),
>  			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
> -			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
> +			       alpm_swing_setup |
>  			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
>  			       PORT_ALPM_CTL_SILENCE_PERIOD(
>  				       intel_dp->alpm_parameters.silence_period_sym_clocks));
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 0841242543ca..3aeb2af1fbf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -294,16 +294,18 @@
>  #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMASK(2, 0)
>  #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
>  
> -#define _PORT_ALPM_CTL_A			0x16fa2c
> -#define _PORT_ALPM_CTL_B			0x16fc2c
> -#define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
> -#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
> -#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
> -#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
> +#define _PORT_ALPM_CTL_A				0x16fa2c
> +#define _PORT_ALPM_CTL_B				0x16fc2c
> +#define PORT_ALPM_CTL(port)				_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
> +#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE		REG_BIT(31)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK		REG_GENMASK(23, 20)
> +#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(25, 20)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> +#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK		REG_GENMASK(19, 16)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
> +#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK		REG_GENMASK(7, 0)
> +#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
>  
>  #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
>  #define _PORT_ALPM_LFPS_CTL_B					0x16fc30
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
