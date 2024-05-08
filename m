Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4D68BFF88
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 15:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811A010E121;
	Wed,  8 May 2024 13:52:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clBl08Yw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567D010E121
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 13:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715176372; x=1746712372;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yIFhs9xaI3/sUHXkuj2YGxqM3CUjHzermYtkeY0rcoU=;
 b=clBl08YwNDr56WNxG0sOOpM1p4qKMiOGiTASzdYkDq0h7mX8ylqrrAl6
 yUXh2ohs+lwQqOpSnZeEYxDX8jnnztbGszVSiH28PgWPEq6Lvwheecp+m
 B1A+gG7CjiNlPj16k0gSF4zukEIz1cWhvaXW005RrjmidWISczc/2Vyih
 wN+rz1rMgF3WG/blRx7hzsvUX5vdVm+RTekFdkXqtNyF3Cb5V+a6qHZBX
 F7kyoxtLDbLiwCskVW9jhjcVFwNaz7UJ0ttIhdOC87IrR9VDCxSOUDUyo
 SA6tmNv8cs0EmNNUVdDOyqJ51uFjh1nsZT0R97lCuz0CmI8deLX+hmvli Q==;
X-CSE-ConnectionGUID: UAM78ny1TwmUDb4aIezEQQ==
X-CSE-MsgGUID: srGj3UwBTOCNqXsHROXu+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="10905664"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10905664"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 06:52:52 -0700
X-CSE-ConnectionGUID: bTQd5p7SQwWDRu+UH8/sNg==
X-CSE-MsgGUID: yLDowlm0R3yegS1oClROGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52108994"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 06:52:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 06:52:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 06:52:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 06:52:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EXU2VlZIpSK7TK0hV0dxkt3U1mI8+DWGoH5NBgeOuyfOymaeprfz8zDDtFl71KUb8upoFlcG3x54pZHHLrz15GkoHlpjfoZN21wI0tkXH7TWR0eVzD2YpfpvaO2PUkFbNiyoI81Upbr/aevQdhZYCVbUdYqRW4dTEe6IwI1CvfyvLoY/pYyk4jzYeq6YLl6k42ALOoV4a9WgkI+2DW4EnKv9mqqlwk9Vbpwszw8cOu7FbCnHv+LkRllgtz+VjTx9Nt7p6nLFKH3J8eyRG647U1cM40dtCBw2C5nY02cClAmt4+oO37C/+O5kfnB4y0OhbK9192u05VqZWTs5f2oFBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlh1cfqBJZE4XPnMdSrNhcZ5dxjTB8kBhVhQ+5lMOkU=;
 b=c+PclaVIn0LOCuPWIGJIynD6QP1HEqD4Pcz9cYESY7drld6FUJNME1BwJXo+WOyGKvpHpnb8/l5SwCrGl6vorN2IUCCpLx4nIN1udH4sPjW+jhF0woaKmoaCrK6G2cJVVDsybKlfspNwOs6KVgHgEJoAZHIILx3Vfgg++hKTKxM9CgDcbem2UAm6uIZe9VY43HOZoL5/78DQvqbFNwYGrElFe2tsjYmQ5XTOHkeeJJ5rmx6CMSs1qIrGVCwz4VVnxwS17xGUR5q7Z1kZ7fsJ2PnvbAJdmvac2U1D1ZOIoosXLmWqtr1f//SrN6zVhsJ0bHVnMcxDFPnTRV2rWiXTBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB7857.namprd11.prod.outlook.com (2603:10b6:8:da::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 13:52:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 13:52:48 +0000
Date: Wed, 8 May 2024 09:52:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <lucas.demarchi@intel.com>
Subject: Re: [PATCH 4/5] drm/i915: simplify ULT/ULX subplatform detection
Message-ID: <ZjuDrK35A9VHNjtd@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
 <0d96bdbcb87672ef1b78b5f78431aab4d2984818.1715086509.git.jani.nikula@intel.com>
 <Zjt1W4owwCO2E4AZ@intel.com> <87bk5gjw3f.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87bk5gjw3f.fsf@intel.com>
X-ClientProxiedBy: MW4P220CA0023.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB7857:EE_
X-MS-Office365-Filtering-Correlation-Id: 208a3233-56db-43d6-9c08-08dc6f662567
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0AzkoFxrERnkq5eAByJ79+bMTc+0D87xNhm3wExFONFEP4fjhZyhfepJQYw3?=
 =?us-ascii?Q?seUsH5Q0hxLTB74o4kN4jiXHjd0oZ6vAcywnxSAcP9ZTD2yMkP7LANDTHUxC?=
 =?us-ascii?Q?tUI0/NV7oMaxu/mjioafrxWyTQDiS3q2CbWabk8OCeC2+9eIsYytrSHW/M74?=
 =?us-ascii?Q?5DLA1lDVGjG3VdNRr2d5EUxwnSY3n4aLVwVAC7RWBt5160YgChre7/YiW39u?=
 =?us-ascii?Q?g7uMVuTfOdEMlGjbIGA6aay8XMPw56lWfm109o1BhV6ZLcvKbmBdi7FblIW7?=
 =?us-ascii?Q?MGk27L1E/th4OZehnVgNaePK3vgIKcDvgP8UcQel2YkLGGz/k4Tt4i/FpWaY?=
 =?us-ascii?Q?qp/OnTY8DfEP96WHd7STKIpAxQ2aBpCsAxJmwrPilE/kN40deVtHyzc4m6Ph?=
 =?us-ascii?Q?N/QsFbPogLV04qutxF18lIXHx4ld1raI5fWQbWymSUzfbdDvDVa2/DwRv8GE?=
 =?us-ascii?Q?oPPVKx3ds2Fs2HOcu9ezlCyO3/x7RfAsIDWRTWAA5VDPqPdLIYdhsgTPEcTz?=
 =?us-ascii?Q?j41TPDHnlKsVWrNxBSnrZ1ouY4sBdOc1sDszpIY3oBFrK2mu72QPe3P/CSzK?=
 =?us-ascii?Q?NiIjf1SFiNPNrbrC8n6Yx8xMmtJxpQiOBq3EZ7HZl0WZ6cbSRCVzr1EM0M9i?=
 =?us-ascii?Q?T4i4U2oukG0RQDeEOwzuMfvTCSP8FL3dpoqaLpVZuB4bs/O1I1/fgucS0HJV?=
 =?us-ascii?Q?F8L6GK5ZyVFrhH5nX3FIUf60FpEZBjy2rzx3NWE4GcorYdcdwD1Z37ZM6kcK?=
 =?us-ascii?Q?qgWaOrhI2EQ33s+nNtXR8OyFQLWSCuyV3WY7ktOVU182inCJc/Swg9oIgEUd?=
 =?us-ascii?Q?7iJ1kmO4r8rXrNBCrk++k3PsMNhfFRKSCcT/AdjKAQ87bYEF6c3XKRgwwTOm?=
 =?us-ascii?Q?EwrThEbhmeqYchBlCvpap3X/IVVXhS8N3EmGAAROx95Y4G1UW2IuCsmfAuWd?=
 =?us-ascii?Q?yM7nsRHyoN4/F2CNLUu1htxdKYG6fneaKpXGhDqdo2djqFtGDwwhPTM+Z9uo?=
 =?us-ascii?Q?FQkbJKw7mUGVRnXF3Ly81eUjfZ0pBbft3R/EjUAupOCI+0jVCDexcZd7ElcH?=
 =?us-ascii?Q?E0YQmHVpMfF1SzIolEoP9+P1NnSYP7TWG37cSiK7IvGNIGwBn4xyjgpw8NxT?=
 =?us-ascii?Q?sOt4xOUOodU510n+UWNm4BO5tCuSdlL4Upqs3jpzWd6MVGK/aUBq+MtC+utW?=
 =?us-ascii?Q?riGsJCtyU7tXqijSI3uYR4hufAUtT9zgCq/rj4V5/UNbGGZjANc24KwS+jEr?=
 =?us-ascii?Q?2U8tWTATElnHdP3cjINZvZ+FsvexKbYecd4lxmRLmw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g0HBlBuCL5zF+or8LByBo7XNz8MpeO9Lyntg+Zz9lrZ1ckOYWlNk3LQ6tCrp?=
 =?us-ascii?Q?U3xj+Oe0TqXhE4bmNWJXyrTccck2HPwbw8EyMbB7+i2OCqiWOm6T55t18a4s?=
 =?us-ascii?Q?+OJiRAQDQ9kIJH4SW7ggzVjID0vy1HNNIcqd6Us42w5byWSje8Oh0PThEan2?=
 =?us-ascii?Q?KQfKgXXQDqRBnPGzaB1ScSaRQ8WeGBgPHe2ICFXc+QYKEWQ8yOgxPu617UUa?=
 =?us-ascii?Q?zPaLzbSb1vjMgVhD8Mcnz4rXpgtvubx7z3JtKQFET+ePSymIk3dt4l4oPGIH?=
 =?us-ascii?Q?gKS6d+BraPrJS3SN9TTpKp4x0u+lEhe26r9FJGBJ6alTrSQwVVDZWiVnKptv?=
 =?us-ascii?Q?Kz2HAw81fRFRNh7Q2aQlzfq83iUSmz5q2SjO2nVDkSBEHuagQPDgzt1aPUN1?=
 =?us-ascii?Q?PmnFRL2vJMPCYbYnNtemu2IJvO3A3ZWYgZXyoGeSXKKSbiwVw/JCvMmI9SFq?=
 =?us-ascii?Q?EIScVdt0DnAhWY4uGA1I2U/iPagD6ZDFhE3zASObxSLMTaUsLiLm20LaWeCZ?=
 =?us-ascii?Q?ZWiaQj93dV/1ZBYfJHjSdXzgXiolON5+fGsGepYey6Uhvr2CfkV5OVsbgbdp?=
 =?us-ascii?Q?xtVRqBqbXfv+E0QGyMTcDLfCiwwJEU7BUS9Cp8GmD3Xn5nqBx4k1PDOCJzUW?=
 =?us-ascii?Q?Rz66JnlO5VeI35ylfvJMnJkDlNhUs2xBS5nOpV3OQuSO5R3gWDpwRi6v2p/X?=
 =?us-ascii?Q?ZfoY/CTy0RAuDnly4HdQf/2HKvS7dz0EnWx4OCHE8jT2a6oS8INJHTOw18My?=
 =?us-ascii?Q?ocFooNnxVTfHPmthnRcNrVXlA1k1ZF198KW9f3et++ANuA3iAAT6OAdzkXlX?=
 =?us-ascii?Q?RaTvzAYG0/+dbHHOSkUsg86bbMiLfy+1DLU5UOOWIWMaJD9z8ldm8dl7XaSh?=
 =?us-ascii?Q?ZcVq1MdPpVuaX8CEbf3qzLVa1+kqzuSBrO5+xC9PuKgt7J1GT4S18He4/1h3?=
 =?us-ascii?Q?y7bJGBLyUJ5Om5/o7pSr+z4k8hg7e/vIXcBbwGdk+7sUxz3V8TqnPV6bY26K?=
 =?us-ascii?Q?/CAwrcCk6dCuL6YfjmywHp4S1Mbge2qnRgx+wJrF4PEIw0VnYNyHa3suyqXR?=
 =?us-ascii?Q?UVeheqK9nGkBf3841xHAeVJT4dRtFkClO47ams4jnBBT8LliQGG9/AlVAhIN?=
 =?us-ascii?Q?+VPRGKF90DE8mgBRh8Hui4Et3gkvrkkjZpdt8sVlpjvjZlXp3mX+NR01F6oT?=
 =?us-ascii?Q?1I4vyWtvmR528WY1QMy1xMEdF4qGgV3He4EDVp3VoHMDm4oyx0+Dxnfrtgp5?=
 =?us-ascii?Q?eL3GaEECGR+ElywYvsT1VDa/cAgTzF97MiObFVI+BJmqE1tJ+d8eY91NrEVA?=
 =?us-ascii?Q?CkqmviJZLTCHADc2E9r3S3qAytut5goFfCRx9tGbRsS1iI4F5tW6NV2fJ9kK?=
 =?us-ascii?Q?fYoROfvN37m49+FOknABuxaPgi9svF2tE44ewY8/dRqAd+tnZ4zC/us8d+OH?=
 =?us-ascii?Q?hTi2FeRmAbu4EaaXcOWWr5EF5SdyRIYleJ6EpgbwMWv2xfOxBgLdSC6bc2Nd?=
 =?us-ascii?Q?JH4+yYYINVN89XdVry7D1bVnxtI8UhgQOBiDF9EEg//uIDvqSPWsKuBjHLt8?=
 =?us-ascii?Q?cOkeNLClQ0SLDUcHkTn+fP4m2l/mBNRk3W5cPifcVnqKzlTVlgqxcH6VSHSV?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 208a3233-56db-43d6-9c08-08dc6f662567
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 13:52:48.7091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GkHDEEg56EDfV9US1P9YbGs5udv1w3lfVW49cRl+2kkxmNbhaRFfXF9bebfxKc3HPy5nfD/gwf70RjxNJlpAKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7857
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

On Wed, May 08, 2024 at 04:01:56PM +0300, Jani Nikula wrote:
> On Wed, 08 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, May 07, 2024 at 03:56:51PM +0300, Jani Nikula wrote:
> >> For HSW/BDW ULX machines are also considered ULT. For the sake of
> >> simplicity and clarity, handle this at the IS_XXX_ULT() macro level
> >> instead of two simultaneous subplatforms.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_drv.h          | 9 ++++++---
> >>  drivers/gpu/drm/i915/intel_device_info.c | 4 ----
> >>  2 files changed, 6 insertions(+), 7 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> >> index d1d21d433766..9c57af484ba8 100644
> >> --- a/drivers/gpu/drm/i915/i915_drv.h
> >> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> @@ -562,19 +562,22 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
> >>  #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
> >>  				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
> >> +/* BDW ULX machines are also considered ULT. */
> >>  #define IS_BROADWELL_ULT(i915) \
> >> -	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
> >> +	(IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT) || \
> >> +	 IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX))
> >>  #define IS_BROADWELL_ULX(i915) \
> >>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
> >>  #define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
> >>  				 INTEL_INFO(i915)->gt == 3)
> >> +/* HSW ULX machines are also considered ULT. */
> >>  #define IS_HASWELL_ULT(i915) \
> >> -	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
> >> +	(IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT) ||	\
> >> +	 IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX))
> >>  #define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
> >>  				 INTEL_INFO(i915)->gt == 3)
> >>  #define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
> >>  				 INTEL_INFO(i915)->gt == 1)
> >> -/* ULX machines are also considered ULT. */
> >>  #define IS_HASWELL_ULX(i915) \
> >>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
> >>  #define IS_SKYLAKE_ULT(i915) \
> >> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> >> index 27b4a5882be3..a72efa919602 100644
> >> --- a/drivers/gpu/drm/i915/intel_device_info.c
> >> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> >> @@ -232,10 +232,6 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
> >>  	} else if (find_devid(devid, subplatform_ulx_ids,
> >>  			      ARRAY_SIZE(subplatform_ulx_ids))) {
> >>  		mask = BIT(INTEL_SUBPLATFORM_ULX);
> >> -		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> >> -			/* ULX machines are also considered ULT. */
> >> -			mask |= BIT(INTEL_SUBPLATFORM_ULT);
> >> -		}
> >
> > Oh... it is a long time since I don't look to these bits,
> > but I don't believe that the define above would cover this case here.
> >
> > It seems that you will miss the bits in this platform_mask.
> 
> How come?
> 
> What this does is make ULX platforms also match the ULT checks. Thus I'm
> changing the ULT macros to include ULX subplatforms.
> 
> Or I don't understand what you mean.

I'm sorry, I had missed that mostly that platform_mask is used
at the decision of the defines above.

However, this change would have some side effect:

	err_printf(m, "Subplatform: 0x%x\n",
                   intel_subplatform(&error->runtime_info,
                                     error->device_info.platform));

The signature for GPU hangs error states would change on these
platforms. That could cause some confusion on people debugging
some issues. Although that's so old that I honestly doubt that
it would have some meangninful impact.

up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> 
> 
> 
> >
> >>  	} else if (find_devid(devid, subplatform_portf_ids,
> >>  			      ARRAY_SIZE(subplatform_portf_ids))) {
> >>  		mask = BIT(INTEL_SUBPLATFORM_PORTF);
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
