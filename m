Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11D49B0DCC
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 20:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D24810EB74;
	Fri, 25 Oct 2024 18:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIfYLOIg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569CD10EB74;
 Fri, 25 Oct 2024 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729882734; x=1761418734;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Cu+l0HUR+HiovZlkjclqxoLvbpLVB/nVzFa+zuMtdXE=;
 b=IIfYLOIgunsoMCBFYH4KfScIkMWDZk4xrHFyWXj4ln+EVNcYTihjz8ah
 daE/RV/zD2A1oE6yBbdQGgtxoDtNQvfakmcXlRkT9JrH7/m0/6A9MLM6y
 5lU9TCzo2t9dESFtQrKH1WtdSZLdGpG1N1WEFnbkZVJxui22/QHGVDH+v
 VAt21mnR9XqeVlb62tJa8Zi+3v8uEH+dMiUS7rT5OXGpzcKPWw8PKtj+Y
 Nnrxi9WF3nNOrhP0/dRfU86VCdBW/0F6x0ztH7ZSg+KwRQnKgMqR46Mzg
 NLf8Td5AGbxS6EU1YvjS0IctiCC/nU05dgJw7JaXYL2adJLLQfDL76SZb A==;
X-CSE-ConnectionGUID: FXpyMLZBRxiIsCMvpLORFQ==
X-CSE-MsgGUID: Kw9HV76KQui9Cj+hL4YlyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40148179"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="40148179"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 11:58:53 -0700
X-CSE-ConnectionGUID: maIprlsUSRu4fBW4sX5DGA==
X-CSE-MsgGUID: 6d0zgeMCS7+NVSF2Hcyjzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="84971767"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 11:58:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 11:58:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 11:58:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 11:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eOo2hjsXBmk3AJ8rR2N1KVcoWJeS9AMHN+DAw54IaniSN+SqTGPhB7xHEJuV9VysLIA2TBpB9rsvjl1MsqRTERluQqPVJWLuOahus6n0AnOFrz9M5L6tz8WTr6MNKDqAGx18CCOu+bEeOmZ+by8fuxSRRlBm5WHDDsfSnkLRv8xVoStlhh+pHyvepiCZY1WP1s0cnwfsdfeo1IywH8E3Z+MGs61xhKTEe+Q/57d4uF8dF//igUtlhUqArabdRHd5YyfX9BfxL9rkQ7/TNKfhUG0TKsV7+VEKWuaY6JxZr8q/hSJb6J1TAqElBzwPmD6K9+s/RQfx61jpmpbh+0m+hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNo6J3WLeKmdGfC0D/5G0hPM99yo+uQllWewi6XGkFk=;
 b=DykgdVUIzF4lZJiQhdNxNvtn+3hAxcHbp3qltwUHnnRM7TDj4FPpiAzD/PGlRh1sK8OqZu/iAhhk0w/XuMOfs1McKDERXlpEb2wREnnr/4Qf0kLTQatJVbngvIZd62t7/bF86lUo5yycCcDaUXXmLUOWxTecCaInnL5PRvxoyGrdr3+Ac03nwBoTgRXwFv6K5SkFjwp945Bci3p7psSfYjKQXokImR6KI39qQQBiT/Ob/rjy02wwCPvlQ+DE3H0rQGIm9sAtyP7PhNw8g9He3J8uhXlYRRElSxPTs7gQmzbsnYpEw42nbpIuTpHAMbqrZanmubaA7skbdaRwwBHcVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB6773.namprd11.prod.outlook.com (2603:10b6:806:266::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Fri, 25 Oct
 2024 18:58:16 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 18:58:16 +0000
Date: Fri, 25 Oct 2024 11:58:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Message-ID: <20241025185808.GR5725@mdroper-desk1.amr.corp.intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-4-matthew.s.atwood@intel.com>
 <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67501BE6E81E6C9F14CD4C05E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SN7PR11MB67501BE6E81E6C9F14CD4C05E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0339.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB6773:EE_
X-MS-Office365-Filtering-Correlation-Id: c1db336c-25ee-43d9-a025-08dcf526fc00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Dwy0dFnunb6PBAMqCnvDOJtr6LsfGU6px1NVAdTjVzTjlybgDkJRFyBgBKcu?=
 =?us-ascii?Q?OWlpwG5Krh0odDEjJ7dAwTDG+DCEMp8Avigl4wCPSlxkYVQ2MZCN/7KB5M1/?=
 =?us-ascii?Q?MiYNirVTUTdce2PwEA1mnl7X/UMBO7szgULFgSyVK9+Tb6HRl6vJEqckjjPl?=
 =?us-ascii?Q?4vHDBBY7zqGSrC0ICWLb5aIt1+KPl6tm6O0QllyHMcDqCLVFKZejbE0OuEyI?=
 =?us-ascii?Q?38NWF1NgAhMYZxm03LV3Vpx3rZMi2xN1FXWRGiFlBbIT+zHZYeOtxkJDN4BH?=
 =?us-ascii?Q?kSh+kOZ8pHchZ42xz/4jfgZDOMJNklCIVAwnmRGUV4RuPyEzi0tkrrl9MRhl?=
 =?us-ascii?Q?kBWN4i7hQCOFJ5YnLMpQ79l+ZhbIqbBMlDpW46pTT8DbF07PAuCnLQ+3otV5?=
 =?us-ascii?Q?BkJ0E3aDVO3W5OS1gCjdwck1UbKGzlpUpg5WnJCkWhQdsSnn2DZnY8BGgI0U?=
 =?us-ascii?Q?7KX3/OHQ5FTZ5Tg6vFR7mwbe73EaP2yQqbQJ+kSySGVjb2bF/o7X+dy+agpQ?=
 =?us-ascii?Q?SwcfZASUXw3kzI4jJX9kL2tXwWc2T8eXWTR4L5N44VpNwZ8V4BtTVZwSsj6b?=
 =?us-ascii?Q?zom08btjLQ/QHYD7jhSGXayjKhwLQ1ZGxqWP/uALbFpNi1avPskjpeLqRo07?=
 =?us-ascii?Q?0TE9zWVfPnhceYJabldvLWB5LFlBdFGQKNAh+OtQqlmhyGEtj5+/HdOEjuBl?=
 =?us-ascii?Q?3lJ+tivEZeCEA/ji7beCZz72Tuc9I7EzbPwfWRbG6jVcKwBPKf/4VjfLCs2I?=
 =?us-ascii?Q?6i7MpEXVlrKYkiaegWCop7v6+CKcTVYKcQcRIOHCCzYDk9wfjKs+QrzLK23s?=
 =?us-ascii?Q?dHnpnM4cnGMcUq3w/Ola5zHV9D+vCYBpPjSx63pZ/U4VAhTinz8j2HUSoHNT?=
 =?us-ascii?Q?B4Q3pQrBDpIov/8cDHR/7Y/tiA4Lwb+NXBUfncwRr4/iMotGwnVTH4zzz2FS?=
 =?us-ascii?Q?aKXxor8jRZCM79uRBonbHSRWdbCPQLhzxfy4fMHBSmR8HFaLGKY7qCzCpqF5?=
 =?us-ascii?Q?xG0cd6Cc/gOzks9fDmnNiEVqqGgol6noA5Uf1u0Dp+54y4RrXTSedruqarNI?=
 =?us-ascii?Q?byXB3hjIq6s+fNorPUA5q3tHyN6SC/wpoMGSFg8PkFDIFvHxK0BUUN6h3FNC?=
 =?us-ascii?Q?LLaNhjmTY/cucXWZYzMpv5VbWybPvmvIkgqj9E/EY1I7QPHfJ88pXOqBrKrf?=
 =?us-ascii?Q?n4Ca2b22Maclj7E0f16f51uANkOI4kcIkLsJYQ21Z36ka7nAan6jx2ZlDbyT?=
 =?us-ascii?Q?b/9zA7S6QvmdHbIU42q2Pwa2F4rImZXdx9+PtyQzDFZWWD6oo3Tcre8tOrVG?=
 =?us-ascii?Q?0xM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lXhd26AvhXBglXefxZSVEbOrG1DyGQS0SJOpwnqsWDHAmGMxLamj4fwP0zho?=
 =?us-ascii?Q?GnnDPIrqW9N6/zWt0P5+aRhYE2PxKhaHQ1g4M/5nlbiNnCwigJIINmhRFVkK?=
 =?us-ascii?Q?3xHQcWDr7YUHjNyxPBaJKcwV2x3UD+XYufDpb0bSyquILa09SqUN+o+2XUG/?=
 =?us-ascii?Q?v7qvz93FBqIn5hj1Sj1ydvIPHCtPjsLNvOvu2KpiDHZ/azLrmXdTngfciskA?=
 =?us-ascii?Q?FjJ/MFOrVSJohpiqyAZ0bFfHvCBTRIoHsqYs1PSTtEVFuFmIXDFdz5AvMcBi?=
 =?us-ascii?Q?yJeJPP7C7xx4+ujfRN+FVx4HZnG5uKzuvJEzGar8E/qzkhcmvPhIi+pkA82w?=
 =?us-ascii?Q?xfupCdeMNwBIJeuFohl/2C83jDIT0HeV1iJe4+Vy1MmHc/U3YO5nTiPpb6y5?=
 =?us-ascii?Q?mUfIfUzdbqzhmPLZcs0lmx+5oIu7IWJqzW264H7gGRxSJNVHsRYi6YnCRmLI?=
 =?us-ascii?Q?hN8vRqAUu1Qvj8W5lNcfVkx/mgAnm1zsW/bimkA/Pfy0mNtgdaSkFD1NRUrc?=
 =?us-ascii?Q?suEgemeRC4lXWV/YfpW7ZLGSz2ZnMuN/phjLktSCh5L0JvyO/jZOSjjrhMpX?=
 =?us-ascii?Q?27HC4zt8SIDTBkbWxh8pjA2W2SaS5nqW18pJIRO8yeOHHBXfHOxNK+Uvjkrz?=
 =?us-ascii?Q?meAY3KvrgQ2hCp519oF83bfxUexq4e+gw8mNTA8VDzqDVhnuScX9t2zPosUx?=
 =?us-ascii?Q?4dylhzE/91niRZtXbWx/91wA+zdgjDNo97BRs6BBf4Mc/icMyKm9jmsB6DJp?=
 =?us-ascii?Q?QJ9IfIJkZRP6CRW/VW420r6Mf8B9wq+cbKvYy8QtIksYtdWB30CdKK6ZCyv/?=
 =?us-ascii?Q?VtSkITq/CFDhlx4PWd+MgQIMOn4ggfsNebhOcis2JkXUCFTQW9CPNT8Nlxah?=
 =?us-ascii?Q?f52GIixSFlB5sJwZd+ne2jZWWTwWliDkBm0bZRCUggtpGnXab5UFeOIc/Eux?=
 =?us-ascii?Q?4vK14TLtqZ3a/LLHFHKc0/ahoidE+tlULvDFTDY/iqMrS3xC2cpG9r9ez3sU?=
 =?us-ascii?Q?kvf91Ag8B+iW+dsVWEvvy4FfZqj6uIVCpQoHn5Z/yeFiz/51YQkM+uANZ2HM?=
 =?us-ascii?Q?oruYgrIZvXKMKwmCDWTwArOvt4BaqOOEFJ7+ylW5JEs+tH1ZrlC9Kv+254a/?=
 =?us-ascii?Q?PsnYjt9ivPaqZirQmJdOFnHrmInQznv5zg26StKY8cvldFqnbGmRaj/Q7ZNn?=
 =?us-ascii?Q?A8+zaGf5pAGjXJRskjhmibdZO8SLj3fpynf1ZuFJ8sUl1Njky5+YaJ4pyNPi?=
 =?us-ascii?Q?NfKQUcSAS0fLjm9/qEUHcSPNKtuWl5yCR8SI/9jEO9T/tSxbV/3kDsUxzEmt?=
 =?us-ascii?Q?KCMHG4lYqjJD90+eT/499ovozRDFAM1foB+LlydPn6X7SiQ8wnsziIF2ZYFo?=
 =?us-ascii?Q?SnEv+lFI2YK8re1/RsGbHUIn42b4stYvdoZ4dwnuSSXc7fGHylciiXYNiA27?=
 =?us-ascii?Q?3wYSSNqer+0VeC4rAGUPIkZUeXXbCbJnHooRliPLe6NoBYVNYfdJ23z8Amw1?=
 =?us-ascii?Q?Tr3keTPlHpImxEsAMUyVdv/6u4a4jdjacWfjoan0tzzxm1wu9xpwrvLHZm/v?=
 =?us-ascii?Q?ySypUjp7ny2VYv+ggpQ6tmlV1BnGLukoK188UD0bMxEZ/h2cRDMeBk0FoF2g?=
 =?us-ascii?Q?Iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1db336c-25ee-43d9-a025-08dcf526fc00
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 18:58:16.6715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JFIYfh3dLrfyIPuxG+NKOMT67CMC7fGabHWPYdqzsHCBXrv3liR5H6+/YkfxP1Ru4sGeZ6H+3YkDmFxdlikjc4Q/jdFy3wNcMdsNYKw2Z+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6773
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

On Thu, Oct 24, 2024 at 02:52:14AM +0000, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Wednesday, October 23, 2024 11:22 PM
> > To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
> > Xe3
> > 
> > On Fri, Oct 18, 2024 at 01:03:07PM -0700, Matt Atwood wrote:
> > > From: Suraj Kandpal <suraj.kandpal@intel.com>
> > >
> > > We need to disable HDCP Line Rekeying for Xe3 when we are using an
> > > HDMI encoder.
> > 
> > This is still missing the "why" for this change.  Is there a bspec reference that
> > gives the details?  From the description of the bit itself, it sounds like the
> > setting here (for both Xe3 and earlier Xe2) should be based on the HDCP
> > version rather than the platform/stepping.
> > 
> > As mentioned previously, this entire function is labeled as "/* WA:
> > 16022217614 */"  If we're now using this function for something other than
> > that specific workaround, then we need to fix/move that comment.
> > 
> > 
> 
> Bspec: 68933

I think you pasted the wrong number here?  This is a generic page that
just has links to four transcoder DDI registers and nothing else.  It
doesn't have anything to do with HDCP rekeying.

Maybe you meant 69964 (which is one of the four links from the page
above) that gives the register definition of TRANS_DDI_FUNC_CTL?  But
the info there implies that we're not really handling this properly
since it says that we need to enable/disable rekeying based on the HDCP
version.  We're disabling for HDCP 2.0 and above here (correct), but I
don't see where we're handling the enabling for HDCP 1.4 and earlier?
Unless I'm overlooking something, it seems like the driver always
updates TRANS_DDI_FUNC_CTL with a rmw cycle rather than building a new
value from scratch, so we can't really rely on the bit being 0 by
default for the cases where rekeying should be enabled.


Matt

> 
> 
> > Matt
> > 
> > >
> > > v2: add additional definition instead of function, commit message typo
> > > fix and update.
> > > v3: restore lost conditional from v2.
> > > v4: subject line and subject message updated, fix the if ladder order,
> > > fix the bit definition order.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
> > >  drivers/gpu/drm/i915/i915_reg.h           |  1 +
> > >  2 files changed, 8 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index ed6aa87403e2..70dfc9d4d6ac 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> > intel_encoder *encoder,
> > >  		return;
> > >
> > >  	if (DISPLAY_VER(display) >= 14) {
> > > -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> > STEP_FOREVER))
> > > -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> > >cpu_transcoder),
> > > -				     0, HDCP_LINE_REKEY_DISABLE);
> > > +		if (DISPLAY_VER(display) >= 30)
> > > +			intel_de_rmw(display,
> > > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> > >cpu_transcoder),
> > > +				     0,
> > XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
> > STEP_FOREVER) ||
> > >  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> > STEP_B0, STEP_FOREVER))
> > >  			intel_de_rmw(display,
> > >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> > >cpu_transcoder),
> > >  				     0,
> > TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> > STEP_FOREVER))
> > > +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> > >cpu_transcoder),
> > > +				     0, HDCP_LINE_REKEY_DISABLE);
> > >  	}
> > >  }
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index 89e4381f8baa..8d758947f301
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -3817,6 +3817,7 @@ enum skl_power_gate {
> > >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> > >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> > >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> > >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> > >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> > >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > > --
> > > 2.45.0
> > >
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
