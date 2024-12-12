Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C779EE8B8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 15:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F0210EDFD;
	Thu, 12 Dec 2024 14:27:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IkxRYlLg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F9710EDFD;
 Thu, 12 Dec 2024 14:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734013646; x=1765549646;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=V4ZfZgMs5fMdNC9e9aw45VoX6+1PieQMoswiNK5Yh7c=;
 b=IkxRYlLgfWzus8+R5nP4ZMNVtkyIHbh8Em6mmcikl1i+3KxKbz54bicI
 ODLNbVBnEYIgjdJBM0PmbTcLYWrnHhSCtTc3aE4GtpOfxfxFQrq1MJ2B2
 EPN4h0Yri/n7/a7pdFD+6psi4ztK2RFisOTc/gXYtBU1MRUXeWF5XEsd4
 pKChydnLWd6XLKciC3NGOnHGZaHJqXXBhFnuxe9XcltMBhYreJZQx4ruE
 8gF3cdimIk3vubbrVr2GnDpIW5yvKCewnTyxlV2LG9ok8TrbiC2Psmesk
 XFdyHay0Mt6W7727L0pYVugETLDAUzls0f/rQtIzZXjf1BFGqWJtMEVuZ g==;
X-CSE-ConnectionGUID: Txn6gbI7RvWtICnkmUCdeQ==
X-CSE-MsgGUID: r30YWOfLSZinexLvaf+6og==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34560412"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="34560412"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 06:27:25 -0800
X-CSE-ConnectionGUID: bZqhpcY4S1q/9FYI/uqpOA==
X-CSE-MsgGUID: wmfMdjt7TQmKMGYFJiw+Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="95988764"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 06:27:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 06:27:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 06:27:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 06:27:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wi143WkJnYSdPPaNvh85LDyuP2/+w+LgfAQBLCgXLfvN9K7Mo+HetFjqHnifLEoKIRstJZ70xp1M1YQa+qdfhN4OZEfHb4Qrz41+AzNkoU4t0AGbr3Z2Ftf86a9pd9RfY0bDzR2NVSOeEr5rcT0LzdVOcEvEqRP/nylazMPWnjG9RT8o5sUT/RSlOeTfU+ov5nFkVakbOHYuLXvJGSxGIzPTh8IinH799LcPcV9IdVvvCUvmUp/NO9rkpevoi8EQrujG14hCWLsaq+gVAlolusyrRsjJNp/wkmRKtpW/6RjvQ3N41HNOmr3KhgeeFJK2jP6dyLItZJ9ziN9JEwhllg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=niWdGiXiVlxLRQlay4PHWW9kc0SLN01lIBL/K2dWFYc=;
 b=k7RiQbBBihlbxjNaajJFc+7UsZL5EA4RrmC8yM+3yK1C5g0eggvXyl07oE0tWHxAG9kzWDDgr2Gf9B0JA+Xrv0A/dmFUsjoJMXzo9CINJLu+Bz2Nc33rrtvXYLXFZhjyFtS5RC/yBmiZ7golS8fUD7vxCA7Lu8U1XKj3CWyugsSwzLwPE8wzX8HXAOXQK8yGT1HVF/zvy9vgOs+NvZ2wmhNWKmdXWqYN4nra/zmnet+LbMrX15fh7Hp7TUiMa0OQZTcn4EKCWox9LuFqBZANaNaTquIlY8UvMtZhMh6pmqjv9QNfRMZaZAY46oQE1n+kj0llqI8UNTMNTNhBXJqI/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CY8PR11MB7338.namprd11.prod.outlook.com (2603:10b6:930:9e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Thu, 12 Dec
 2024 14:27:20 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 14:27:20 +0000
Date: Thu, 12 Dec 2024 09:27:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/display: Use a single early init call for display
Message-ID: <Z1ryxbX57XwNPa0o@intel.com>
References: <20241206185956.3290-6-dev@lankhorst.se>
 <20241209155142.209657-1-dev@lankhorst.se>
 <87h67bzxqb.fsf@intel.com>
 <83cf254b-da30-4375-9720-583bd8382230@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <83cf254b-da30-4375-9720-583bd8382230@lankhorst.se>
X-ClientProxiedBy: MW4PR04CA0176.namprd04.prod.outlook.com
 (2603:10b6:303:85::31) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CY8PR11MB7338:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e1e310e-d6f1-4edc-561c-08dd1ab91681
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?m3loW/90UEriOK7aHcF15u3SiWYMAzgRrIA//lNcj1juyHIIukg0Ci3rmsiR?=
 =?us-ascii?Q?sNOIpsi2z/tfJonc986vnBgI+bwQj/Zi1hNn9pWwX5UWr1fcXWSN0cPczwky?=
 =?us-ascii?Q?GiI1UYLL7lpW94GD2v4tFARywd3QcQdbQrw7J/1R9vADVre/dXk0GXggrta0?=
 =?us-ascii?Q?Dh5q510P7Njy5SdQg5SiB0mIQasv3z2kaNVMNyE63/G08v0QieJ0FvvSr8ad?=
 =?us-ascii?Q?o0dXdQcTfLYaHSefNWFTMHe3cz7Ajil9TaCMhzNa/Hck2UFHYLOEi2Rm+iq6?=
 =?us-ascii?Q?qpXK89w3MoXlQH5CjBPV0YFMdyCnvWrBYR14ZKlp0X4U8/YGHsEJsTlJKrSS?=
 =?us-ascii?Q?cTB29OwV+jlqD2a4+Q4SL4LqzA1uVfkmWlslEkt+hwp+oVaWzWeuKvxXbML/?=
 =?us-ascii?Q?A9lbfNd5/kkNZHLNAWXo1KBLdLVB3Mg6kIa3XxAEuVSJhnprndqfOshsh2US?=
 =?us-ascii?Q?6z7mdnEvrm01vgXm1vTsYLlFpQMiIkRNqaJV21ZYdri3+vuZ0KM3Jyc/7tLY?=
 =?us-ascii?Q?YahnKMwm9p6wSgJR+Hgh9s/s1pfRyoSPp755i1dX8RslkM5AIZb7xDSDr/Ag?=
 =?us-ascii?Q?IAgjN8sv6MsTaqyHcbKPRormlKlk7so1u3LmNuwM96Y1E1sFZBBafkjXwYy8?=
 =?us-ascii?Q?xfVhjZKuoaCjdz6a5agpCnsJgbWl59T/O3jlHM4ufnnzc98bs2A08Ki3wf6l?=
 =?us-ascii?Q?Yutv53CTCF31uSapz8Qn4xoanh9mS5OJA0KuF4ZFxQqsj+qokMSU3ZAPFK7b?=
 =?us-ascii?Q?4jv+9xFiWrYLSABmAoGVMDV+T6tddYxLVGuILzKkG9qPtkSEaS56iRVvvLfV?=
 =?us-ascii?Q?Gj9JCKjG4m5onTyXaSG15FmdEoC5BuOZcau6adCjhJciI3OArn31Q6A0/Q5/?=
 =?us-ascii?Q?wQnJ6ykz4/4sFYlVqGop2lNDrqQr6+vNXKrrddSiuHvOKQCwU3gwJExJscA+?=
 =?us-ascii?Q?u73FaYak4xqn7UhCzAvpKkuQnH/PyQtma6FNGhWIuS7KBl1//HI72bXiSBOr?=
 =?us-ascii?Q?nrhhpuggYV0VuwaWF8ajo+UvpsPMnrLaE+X0PdzWeKiWgpErT73MsEWVzoy5?=
 =?us-ascii?Q?6561929mkvEnPGR4K7Zv3UUCIw2X5CGmJ+4t44iUitbuXCm3rvs3c5eZgktN?=
 =?us-ascii?Q?/X3CLUc3pPwzbe/pdj8dv7FpwXFYd6In3BFjcSePRLQJezkRCl80+B2N4quD?=
 =?us-ascii?Q?xUZIh5Px6E2lpwe98tTUSRhr3ounsu4AHqY6j7o6OyxmXZae+shvMCtAeJpj?=
 =?us-ascii?Q?TjnpNwIznqyqj7gV4am+UmKxGuxLcLP8K7SfC5VIDnqnu9ZxhalbZ89TLPXy?=
 =?us-ascii?Q?2GfSwXWEXJ5KM7W8Qlaqf5hBFyb8BNeoxQgzHYNniLbWFg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Rf8g7VchOCaYMo8N0FL5VJCsr+EX/6moUuWlUo9gn73ip0A+x8bR4trHc+M4?=
 =?us-ascii?Q?n+xvTBNz8WHy1hrTBCMZWjBZcVBvocK86Kfbe5/7VvaCVZjPmscqwzTpZvai?=
 =?us-ascii?Q?AHUugwnFyggJLEcOuj3UASLA1yeQ7c8jOycfK2VVIKXXVYvD0tLItgr/HRTq?=
 =?us-ascii?Q?+umJzFnlZvOG/e4tkQYGwuPhiOV9X+IT2bo1pzW2gYDLKO8DiOPhSQEpPoE/?=
 =?us-ascii?Q?WXHhO8LQ904tiXPsfiUp9Cn+hBWjpDVArgoGjXIfAtvdYeoUnCzC6gzyVPwU?=
 =?us-ascii?Q?UzWvqWtWUsH3d0GHG2lZLnPBshHZMcoVVzXVsyMPbA5U1ZLavYIezQUveovL?=
 =?us-ascii?Q?blXiaBQi4wDTVI7iewSvmNCzjGY7D1xQYQP2HU9ooJCHN0sJ18T6bFaRat7E?=
 =?us-ascii?Q?MeDTppVq/NwITWlDiIuuIz9yQimSpr8viyNrS6sxI1fwYWWMzghvDwQZBhU3?=
 =?us-ascii?Q?Qh6sveOmM58QZDrVApQlaG7ThsIfCBNpTJZ/h+q9gNeT5tlKJUOgU/MhbK9s?=
 =?us-ascii?Q?cWgmdHFKAox+JlxZLcJ87QCXXx2bEEhvtPwGHn6Jlj5InFE2xRstvi4pIIPf?=
 =?us-ascii?Q?eqTDUnBKD9QhZ1QP5AOjnPnSKMeJrPTmzSxqui034dOVAVrS/hiLBO4DeYoF?=
 =?us-ascii?Q?D4E+nImiNcBvS6f7wTxi8icS608ln/fQwzOqa8RIt/jumhmX4ti2cpz2rqFK?=
 =?us-ascii?Q?GivgadvM+/a46xxiEhlujblJru5YhGnNo+xvVCloNCp5hDLrpu6huNOC27sV?=
 =?us-ascii?Q?JB7hCiybkgQdt1MS76SopWlzCsMxi9uDWcYmppQeERlUWZGhT91X4pq7Sy3P?=
 =?us-ascii?Q?8F5TI+AEbczVq8PNTHP5/hFyWJhXUranp1cyP4Kgjdvt2TxLWYeCdEToXqdB?=
 =?us-ascii?Q?6ztucrsqm59LaQFcecHzP2TuzpzxeDcKvmhl1sxUXYojZYyjyvdvLFPZQcHl?=
 =?us-ascii?Q?j97xT/YgYwZqhPMz+Dsd1WWKA/N3wKM6F9BML5kpracgPT0/pcJGaPhXtbTS?=
 =?us-ascii?Q?oy0JBgSsoOgdwyKAa/o5W2OoCH8bThnnOVp9WvLpsqU5SnBWUAPB5IgXSyFk?=
 =?us-ascii?Q?4epzASL/RlHs6Z0ax4aXeF8YOHkGQxnBVnWUp/3scnhhQ1pvzCC5DIO3ghcP?=
 =?us-ascii?Q?u/nTM1EcaHfXQxjwPD4QsjaV3LqC5EZnMDtf5ZUhryjtH7Q2T13H13sa/vMk?=
 =?us-ascii?Q?wRZfxiR7zoI5scel5UfVBFGrRmjtPV0CeR+Isnk74Ee0COLChGC14KWmXsPk?=
 =?us-ascii?Q?Fg6THfPdeUr5GZu2H+zh/Yb/1DpzVRmObDfQ7viHcZh6ifu3IH4bmFRue+P6?=
 =?us-ascii?Q?AR1Rd4/oPNjTMQ0fJxvDl/+kSjkEq8sBV2gbJb4D/A+4sDEBNmkFZLo956W6?=
 =?us-ascii?Q?DL0S1W6bIsv5OLRK4RIUX0MERmSz5IEYcG/DFeHNWw+NTxKc5qjZBhyENduY?=
 =?us-ascii?Q?kSNEvNw8WrdK7huTngIoho+rW3V15S8gjBc3+70t7i2S3egya+NUb/PJfLK0?=
 =?us-ascii?Q?LkQlbOsRiQgyX2L29Gw/Bg+WSpFi7h2p7T5xznlHrzXIEkOOgk5aydLeeDR2?=
 =?us-ascii?Q?VBgbhPTGpb/7AvQB65E+CKU+IXB55AM2BQ6WOLqg9G8y7Dh/fx8Qo+Irhf0w?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e1e310e-d6f1-4edc-561c-08dd1ab91681
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 14:27:20.7671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lkGA5IYQOprLHsTE9Bda2oN75rOgnOetgw3jKYgZa6A79ukJX5AAtVe3fDa+/erI8Gqv2uEh3WeWTFtOYAVdcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7338
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

On Wed, Dec 11, 2024 at 07:32:08PM +0100, Maarten Lankhorst wrote:
> Hey Jani,
> 
> I believe at least for the platforms xe cares about (gen12+), display is
> sufficiently separated that everything can be performed in a single init
> call before we enable interrupts.
> 
> Because of the strict separation between xe and display, it should be fine
> to keep the ordering as-is from this patch.
> 
> (some xe init here)
> xe_display_init_nommio()
> (some xe init here)
> xe_display_init_noirq()
> (some xe init here)
> xe_display_init_noaccel()
> (some xe init here)
> irq_enable()
> 
> should functionally be the same as
> 
> (some xe init here)
> xe_display_init_early()
> (some xe init here)
> irq_enable()

hmm, but also I don't see a problem of this:

xe_display_init_nommio()
some xe init here)
xe_display_init_noirq()
xe_display_init_noaccel()
(some xe init here)

> 
> When you look at it from the xe driver point of view.
> Nothing else in xe depends on display, and interrupts are not enabled until
> after this init call.
> 
> We must deviate from i915 with interrupts, because enabling interrupts may
> require memirqs, which performs a GGTT allocation.

We will eventually have to deal with the IRQ handling in a more unified way.
But for now, it could be 2 sequences in the call like that.

My goal is to make xe_display.c only pure wrapper for checking the xe
module parameter for display and calling the exact i915 function.

I understand that we might end up with some difference sequences, but the
difference sequence needs to live in i915/display and the xe_display.c
be a pure wrapper. That's the only way that we will be able to get to
a fully separate display at some point.

If we continue to add deviations we will delay that day even further...

> 
> The long explanation might be too long to stuff into the commit message, but
> I hope it makes sense. :-)
> 
> Cheers,
> ~Maarten
> 
> Den 2024-12-10 kl. 10:35, skrev Jani Nikula:
> > On Mon, 09 Dec 2024, Maarten Lankhorst <dev@lankhorst.se> wrote:
> > > Instead of 3 different calls, it should be safe to unify to a single
> > > call now. This makes the init sequence cleaner, and display less
> > > tangled.
> > 
> > Needs more explanation.
> > 
> > I thought the goal was to *unify* i915 and xe display init/cleanup. This
> > diverges them more, with actually functionally different things rather
> > than just slightly different ordering.
> > 
> > BR,
> > Jani.
> > 
> > 
> > > 
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> > > ---
> > > Rebase
> > > 
> > >   drivers/gpu/drm/xe/display/xe_display.c | 73 +++++++------------------
> > >   drivers/gpu/drm/xe/display/xe_display.h |  8 +--
> > >   drivers/gpu/drm/xe/xe_device.c          | 10 +---
> > >   3 files changed, 22 insertions(+), 69 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > index 317fa66adf189..b013a4db11183 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > @@ -101,19 +101,25 @@ int xe_display_create(struct xe_device *xe)
> > >   	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
> > >   }
> > > -static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
> > > +static void xe_display_fini_early(void *arg)
> > >   {
> > > -	struct xe_device *xe = to_xe_device(dev);
> > > +	struct xe_device *xe = arg;
> > >   	struct intel_display *display = &xe->display;
> > >   	if (!xe->info.probe_display)
> > >   		return;
> > > +	intel_display_driver_remove_nogem(display);
> > > +	intel_display_driver_remove_noirq(display);
> > > +	intel_opregion_cleanup(display);
> > >   	intel_power_domains_cleanup(display);
> > >   }
> > > -int xe_display_init_nommio(struct xe_device *xe)
> > > +int xe_display_init_early(struct xe_device *xe)
> > >   {
> > > +	struct intel_display *display = &xe->display;
> > > +	int err;
> > > +
> > >   	if (!xe->info.probe_display)
> > >   		return 0;
> > > @@ -123,29 +129,6 @@ int xe_display_init_nommio(struct xe_device *xe)
> > >   	/* This must be called before any calls to HAS_PCH_* */
> > >   	intel_detect_pch(xe);
> > > -	return drmm_add_action_or_reset(&xe->drm, xe_display_fini_nommio, xe);
> > > -}
> > > -
> > > -static void xe_display_fini_noirq(void *arg)
> > > -{
> > > -	struct xe_device *xe = arg;
> > > -	struct intel_display *display = &xe->display;
> > > -
> > > -	if (!xe->info.probe_display)
> > > -		return;
> > > -
> > > -	intel_display_driver_remove_noirq(display);
> > > -	intel_opregion_cleanup(display);
> > > -}
> > > -
> > > -int xe_display_init_noirq(struct xe_device *xe)
> > > -{
> > > -	struct intel_display *display = &xe->display;
> > > -	int err;
> > > -
> > > -	if (!xe->info.probe_display)
> > > -		return 0;
> > > -
> > >   	intel_display_driver_early_probe(display);
> > >   	/* Early display init.. */
> > > @@ -162,38 +145,20 @@ int xe_display_init_noirq(struct xe_device *xe)
> > >   	intel_display_device_info_runtime_init(display);
> > >   	err = intel_display_driver_probe_noirq(display);
> > > -	if (err) {
> > > -		intel_opregion_cleanup(display);
> > > -		return err;
> > > -	}
> > > -
> > > -	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noirq, xe);
> > > -}
> > > -
> > > -static void xe_display_fini_noaccel(void *arg)
> > > -{
> > > -	struct xe_device *xe = arg;
> > > -	struct intel_display *display = &xe->display;
> > > -
> > > -	if (!xe->info.probe_display)
> > > -		return;
> > > -
> > > -	intel_display_driver_remove_nogem(display);
> > > -}
> > > -
> > > -int xe_display_init_noaccel(struct xe_device *xe)
> > > -{
> > > -	struct intel_display *display = &xe->display;
> > > -	int err;
> > > -
> > > -	if (!xe->info.probe_display)
> > > -		return 0;
> > > +	if (err)
> > > +		goto err_opregion;
> > >   	err = intel_display_driver_probe_nogem(display);
> > >   	if (err)
> > > -		return err;
> > > +		goto err_noirq;
> > > -	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noaccel, xe);
> > > +	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_early, xe);
> > > +err_noirq:
> > > +	intel_display_driver_remove_noirq(display);
> > > +	intel_power_domains_cleanup(display);
> > > +err_opregion:
> > > +	intel_opregion_cleanup(display);
> > > +	return err;
> > >   }
> > >   int xe_display_init(struct xe_device *xe)
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> > > index 233f81a26c255..e2a99624f7064 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.h
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.h
> > > @@ -20,9 +20,7 @@ int xe_display_create(struct xe_device *xe);
> > >   int xe_display_probe(struct xe_device *xe);
> > > -int xe_display_init_nommio(struct xe_device *xe);
> > > -int xe_display_init_noirq(struct xe_device *xe);
> > > -int xe_display_init_noaccel(struct xe_device *xe);
> > > +int xe_display_init_early(struct xe_device *xe);
> > >   int xe_display_init(struct xe_device *xe);
> > >   void xe_display_fini(struct xe_device *xe);
> > > @@ -54,9 +52,7 @@ static inline int xe_display_create(struct xe_device *xe) { return 0; }
> > >   static inline int xe_display_probe(struct xe_device *xe) { return 0; }
> > > -static inline int xe_display_init_nommio(struct xe_device *xe) { return 0; }
> > > -static inline int xe_display_init_noirq(struct xe_device *xe) { return 0; }
> > > -static inline int xe_display_init_noaccel(struct xe_device *xe) { return 0; }
> > > +static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
> > >   static inline int xe_display_init(struct xe_device *xe) { return 0; }
> > >   static inline void xe_display_fini(struct xe_device *xe) {}
> > > diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> > > index fbec176ee64ad..c9c0b74c74ddb 100644
> > > --- a/drivers/gpu/drm/xe/xe_device.c
> > > +++ b/drivers/gpu/drm/xe/xe_device.c
> > > @@ -639,10 +639,6 @@ int xe_device_probe(struct xe_device *xe)
> > >   		return err;
> > >   	xe->info.mem_region_mask = 1;
> > > -	err = xe_display_init_nommio(xe);
> > > -	if (err)
> > > -		return err;
> > > -
> > >   	err = xe_set_dma_info(xe);
> > >   	if (err)
> > >   		return err;
> > > @@ -697,10 +693,6 @@ int xe_device_probe(struct xe_device *xe)
> > >   	if (err)
> > >   		return err;
> > > -	err = xe_display_init_noirq(xe);
> > > -	if (err)
> > > -		return err;
> > > -
> > >   	err = probe_has_flat_ccs(xe);
> > >   	if (err)
> > >   		goto err;
> > > @@ -724,7 +716,7 @@ int xe_device_probe(struct xe_device *xe)
> > >   	 * This is the reason the first allocation needs to be done
> > >   	 * inside display.
> > >   	 */
> > > -	err = xe_display_init_noaccel(xe);
> > > +	err = xe_display_init_early(xe);
> > >   	if (err)
> > >   		goto err;
> > 
> 
