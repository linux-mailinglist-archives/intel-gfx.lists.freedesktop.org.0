Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B72A25F2D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 16:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D84A10E4F4;
	Mon,  3 Feb 2025 15:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oK6L8htp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7879110E4F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738597620; x=1770133620;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AD99rmUY1yJB8q8RkrOEJjLqn18PPRkYlLLOlpqx02g=;
 b=oK6L8htpG2BcSEMmiDQ7Oa2LoPoULL7fYZaFy7JwJbRxfD4iSAmE5IE+
 0hxGAxmsv+3G3GVEu9K8a8aRP61vRCTpZCUEPAR1jFCFxnVNvHJ18mvxb
 j0SmleTcJ5766UVaYtFy3Uy1WOZAKfUXKzSJTvwRy4zje8Ixj5krG7xuY
 vBkPJHqV/9DeKgjkzBUmjt88iotY/c6huVhE/OFRu3k7ufg0Rmhijz/8G
 ioIHyQ/9t3bhe0VpHuhZ2LS6gO0ttMbkv44LPNXEoaaW5eAgFspXnVCUY
 pBCF0QXEE+6+NbB5UZ2Cq6PTaGBjBwhnDVMXLgUkMAYKb60516lo+XNBr Q==;
X-CSE-ConnectionGUID: khz9A808R2231tLezYq+WQ==
X-CSE-MsgGUID: oUyvtnN4RwqF6L0T2hR4Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="42846323"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="42846323"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 07:47:00 -0800
X-CSE-ConnectionGUID: 500BVIswRRiIVRdLY9Ya4g==
X-CSE-MsgGUID: ibNke2XSStiePBiNzmr/WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="115354517"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 07:46:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 07:46:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 07:46:58 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 07:46:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vBYsXKc/Pj8ctoEc2ed4kcSHVXkE8/ND7undRL9czjaWz5V57IAvJGBQTkjpXn/zlT5MrMcNb9h56IwPppQ7wpwXzUXZgBDwrw9xe2obhbzbklJa0MuabP1yht2EtdqC6Yyn0jXxcOCNDm0Tb7/hAoeYZouwlnOnPpus456i++y1EcI7gCEp4DSmVzv64nzQzNi3LRNWiGtdMWA6MyxGmTNUQJSiloAgStzwIWu+g8/k3VEwXmGJL8CkVYw9rI/3zZAxb3u+bEgwIBQHmqz07qR4NockBZlGqniDF7ujeXFdqmuH/7nL8yHG4kv68LDw/uqL3lGIWwwiOVCIScwO+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlJZkG0npoJktafF+Gj1TB0x67978YIECzu6Gd/pWUQ=;
 b=M2ewrMy3VVHl4LYN3WO79t3j+xg7e2ty0jEiJ33BL+KtcQkQEQJqARR/eg0XOKJtdkfWXLidY4vmgIz5bfW9pqkj86y7+xeL4kNDJmMvwEocgEs2Ldv77e/Mn+J576L6ZkiG4TtjdUO3iEcMvRK7/GUxMYJsGsCDgZ1ROG/0uZBXFlXCTs345AVGye5IZvI/obikx/ZHl8KGwc29ABTQRRJ8lOYWTokud7ejHKpuRIESi+NAnGsyjgcPXZjL//MiSGO/rcxEpS/DO8lerwRDAM4DLTegPisW9YqMteIEU+NM8Z0qSQUq6s9DFr2Oeg9kKVhxi9QzfXSdXOqESKWOgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Mon, 3 Feb
 2025 15:46:55 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 15:46:55 +0000
Date: Mon, 3 Feb 2025 10:46:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6Dk7OD9T5Lt35T8@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <87r04f756c.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87r04f756c.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0362.namprd04.prod.outlook.com
 (2603:10b6:303:81::7) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|MW4PR11MB6740:EE_
X-MS-Office365-Filtering-Correlation-Id: 4671e324-9a61-49fa-87e6-08dd4469fc49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qieRtsfDEpkfleIUf+xBpD351ranPqwgCUWLtsPDcJUo73O31JJIXbYwQg1r?=
 =?us-ascii?Q?CgFgKomuY7UCwK5woP6GlVgcBmI3gajRdPiAN85ZB1xaRKuYSUdGSgqz55Ch?=
 =?us-ascii?Q?RtZwKbv8H335G4Fm1/uQ9f/xJi9EBFYLsdhXwEdBBgfE605bBbKchsqcxgaB?=
 =?us-ascii?Q?R+et0Wzu1kv3odNJfFIbIbvzd6uxNXqE65/NmSYgp3UD2bJOs9d8Ab1FW8qM?=
 =?us-ascii?Q?cCOxUmYPELziJy4mlh8+cyBlwI+V169NRtt4xooeUpBgmmXfS+QpkoaUSqNn?=
 =?us-ascii?Q?Z+HB4/vZqWj1c7lTdKCdkUZM0nn3gWgCpL1ADLO/IUgLKA0XrNQwIKmV20Nl?=
 =?us-ascii?Q?JNU5Ge/sRGDXzVI3HbR08zyAU7DT3fliwXBFE9dPFfkqOuAeHfxB1BXf2F6Y?=
 =?us-ascii?Q?EfgQKlyUUaPiPAJmbmjzB47op308YZM9cMdFNi94CfCH8Gh2kf19IQKoZia4?=
 =?us-ascii?Q?ddTsi4D6/kfKDKw8cUEBevXtZtyIQV0KPBZpU2yTuLlJRpnIfFIG18BiGVSA?=
 =?us-ascii?Q?Tv1o9Bs4njsi8Yy5HZDACq3YuHTCJE1WURDEdjN2yUDyqnEEjds51QYUnhAz?=
 =?us-ascii?Q?h7XzpOOfedFikbBtr8VhrkcsvoPEqkhT3RXCXIQfnBp/VMCt/Gr8b4nd+Yfw?=
 =?us-ascii?Q?I35topiG1IS75eSCE/2WXrbsp9NoM1abcAeyXdRnHE1MbfwYk3ShjDUVj1o1?=
 =?us-ascii?Q?pMjkCQqHFsc60FahZwW08u/KBT5gmlWT83aIQ56vKqCCeb/7ql9X5CzZglRI?=
 =?us-ascii?Q?xCywpoz3IC0UIQrPHI4ktVC4zTcawl2NdYIlyym43okjJl78NFZ8UD8W/bzZ?=
 =?us-ascii?Q?HGFzH6MYBvTsGdX7p1iy6jfqX5hRPif88YDRZtg/djLVbCrTc8b2pl0/8a1o?=
 =?us-ascii?Q?0nHcjDbYOW0gnAXqkHKF/+4B6ORpJVImbGm9xduz2lx+A+6m0Stueq9Ro9+g?=
 =?us-ascii?Q?C/l8sefqBzfSeFtZa5fGd7/MYffp2vTChPPxE3j/CbByGTKv8vxeLUiNE4Tz?=
 =?us-ascii?Q?VH3n+oJeBK9UqGSiFuOcCeZo6+sHfAve2BfItFzd0TU0z7mpfBa8+jqhpgkG?=
 =?us-ascii?Q?v5p4mKAvYE5DjrYF/ME6mudamoHP9A5dEaBvxgEPxpwAwtddP+FXyrZvJeYa?=
 =?us-ascii?Q?+DScyXQp0pMt6UzWIGD+dzcro+8qQ2fXcp3iT0+MSbXAdgtTqNK5uuXMTrIq?=
 =?us-ascii?Q?UjjDXPxPJZsCAhJgw7m+Kvn3rmFI3oQojBIrTOlSjd822ADoq0MrdYtF1PWa?=
 =?us-ascii?Q?R9JL17gvD/IN8W/O6IZ5HJ6miH4DwbzE2a5yCw+iVH3kBw1F0sSJW1m1uxjA?=
 =?us-ascii?Q?GwB40JtjeBHNkxiTCzSy8j/9GJxFA+nE8HmZU3+H0gX7OtEPobagzSqhqa10?=
 =?us-ascii?Q?dWDelEv3AbXe1FMzlapr1zRXJ96t?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c6RfQzvV5CgmbNgrWtF5DaqTaxEIO91SJsoFaVsgmNVNBKO9TOwG99rBnV8G?=
 =?us-ascii?Q?r4HrBSIK7pWNWrumlobvLzy4cKKR0h9yOget1IrrMYnjW77fM/hqaqcpQcWL?=
 =?us-ascii?Q?0DLvbmwxq+PGN/y8CCXeaHbhJ0bgb1cgng1DtXbbB57eTuNFULDt+4Oi+vDr?=
 =?us-ascii?Q?R/Zp48qizjyCDYMQTbsJYPtGiLt6TyX+GkgWW5yXTMTIOoApI20HAP3sVQuW?=
 =?us-ascii?Q?AtV+TviS0uVOXLhJ39fCLBnME6tYVYlBOu3dxQ+T6WvY+PYv+E10d+veXGko?=
 =?us-ascii?Q?IEy1VJkXG7Ha+p/oxYq4n6D84PfvEQWROxwlDvS0+MOH/JU3Ik2gwFXwwWus?=
 =?us-ascii?Q?SOYSmdTIsUPRQTa0uTHi2mnNZopbWRGLvbEa4BkC6ZZCZnwIIiABLz7wV5vK?=
 =?us-ascii?Q?TxrIQpq2p4WTqEHzFqHN637uaq7+2TKZ+cspxsWFDYtHZ5gsqKfeGAkHY5Cf?=
 =?us-ascii?Q?zUS1Pc+muI5xUFsy0/QD6+PX0nlSbqeLzQLoTfK/q3y+p6jYAesLjXGUDeMV?=
 =?us-ascii?Q?XvFBSMiBxOTulBCVXsUDn52bK0v1G+gtRHCgRi9CqKB4ljhb43/Se8ZoBVgY?=
 =?us-ascii?Q?cfMR4GAYMf8KbnD2Ho+DLmH6ussBg42WbF5UQbD8tK9nT+idVbuEBV5N+2nZ?=
 =?us-ascii?Q?H0HU3BgiQ5f/fIsEyMaEc5VI5i+AAauvre1lgO7n65pdPNY756huZZI/i+9p?=
 =?us-ascii?Q?E1vKizV7VSU+4H42ok3+GgB1aUSc/aRs7qPNUsZReP1tSp90BSkoDUabNY7p?=
 =?us-ascii?Q?R8LkCcaTjxeoZeAfrsBmBL/cNnFf4fynf3btyO2vq8utnLtdWvxg1xenkUb+?=
 =?us-ascii?Q?5RXXzdZztAG5AKaNejv6x6jxBHmp+RD3FlP+1PcRETAdWD+Clhp9BneXh5Jz?=
 =?us-ascii?Q?igYJkuUFNNODs3H0AGdazapeRROitxx/qQi8h1FHXQxEjVWseTxirm5FVLsa?=
 =?us-ascii?Q?C8EkSxYrBIvPsiVaEDDVrsR9Qx3OJXnd950LjS1vYmrNftrafQbvYRKCYmT2?=
 =?us-ascii?Q?nwts1ycrmbKHQkQ3qg+ty0FlzVn5yLhuOLg2Y2QtcbucPj3yYECneU54IDIX?=
 =?us-ascii?Q?BqV6m/aKeKaE6LNw0QKRxYQiGbpzooM3PdNi0Snd4zRdXgeS4jZbE1FyAukd?=
 =?us-ascii?Q?gNXgneQR1yiSDaxqrt5EPpfx3OorIW2gpmNpi6pB6zdEmVHI3mt48HVAq5sT?=
 =?us-ascii?Q?2439zl19N82pKPlpUeqdxqr0lxc1cNbVVSJzirmVzhFjYZMEZ37ZkUKleuDs?=
 =?us-ascii?Q?w+eku96XNqninJLkM/mnSHEvXeRVSsR2FA87/vet9kKGZghZG2Maclxqx6Qg?=
 =?us-ascii?Q?Z6kQ3DiwLtAPBjojU7BQZhEKrKsxVvQNisEo6qZYiJLCfmu+qaKHJkXUcdH7?=
 =?us-ascii?Q?XDljpKoNyf5P3yu0fGuqINiGn4or8s33UEvDAE615TdTuyS7+MYlyC+Xhxsv?=
 =?us-ascii?Q?lsm1daOvXNMb31w2W9ot1zd7eEAHAgXoK3HMNnk3d4EUOmmLxjCxuyAihJyp?=
 =?us-ascii?Q?crb83je5bv2SgzJ2bqzlylXGVJCjCG/SRNfiFVhdiCDxKQbZf7Voc95zHAmw?=
 =?us-ascii?Q?L8HvLgPO7LnH8lqUTb4qn9grGnQoRb5njQ7uh3rt5Bmbh3WUOVSgMgV4aarS?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4671e324-9a61-49fa-87e6-08dd4469fc49
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 15:46:55.3269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1uKZ5tC2Ldl0epFKjmm52yNzZkp5Yqhs/pbTea65a5V4Jtlj76L1k/X29S/0H1Ks6xqrXd88eXHuhMUllrtZgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
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

On Mon, Feb 03, 2025 at 11:23:23AM +0200, Jani Nikula wrote:
> On Mon, 03 Feb 2025, Mohammed Thasleem <mohammed.thasleem@intel.com> wrote:
> > Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > due to dc6 counter has been removed to validate DC state.
> > Adding dc6_entry_counter at display dirver to validate dc6 state.
> >
> > Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> >  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> >  3 files changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 554870d2494b..cc244617011f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -376,6 +376,7 @@ struct intel_display {
> >  	struct {
> >  		struct intel_dmc *dmc;
> >  		intel_wakeref_t wakeref;
> > +		u32 dc6_entry_counter;
> >  	} dmc;
> >  
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index f45a4f9ba23c..0eb178aa618d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> >  	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> >  
> >  	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > +
> > +	display->dmc.dc6_entry_counter++;
> 
> This file has no business touching the guts of display->dmc.

my bad... I might have suggested that because here we are covering
something up for DMC :)

But yet, maybe better another place of i915_display.

> 
> BR,
> Jani.
> 
> 
> >  }
> >  
> >  void bxt_enable_dc9(struct intel_display *display)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 221d3abda791..f51bd8e6011d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> >  	if (i915_mmio_reg_valid(dc6_reg))
> >  		seq_printf(m, "DC5 -> DC6 count: %d\n",
> >  			   intel_de_read(display, dc6_reg));
> > +	seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
> >  
> >  	seq_printf(m, "program base: 0x%08x\n",
> >  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> 
> -- 
> Jani Nikula, Intel
