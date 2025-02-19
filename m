Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED7A3C5B6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 18:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F61710E11A;
	Wed, 19 Feb 2025 17:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cjDKGv7g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B32D10E11A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2025 17:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739985018; x=1771521018;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=k1PMvkNUdR/r4n66jzmyxyXR9DkSXTsFhMqzyhaeNaY=;
 b=cjDKGv7ga7ur3ZeNs/o4DQeDVfVwwcs6nDerLYB5STq6w+jpe73YEgXg
 Wy1i+VMn3nhBS7CaKZsXl4hj1oS6yFYQsScGix3pkEjGY5dPpBsFyL4iE
 k69z9gYiSpjA1cmmbV33lURvkNWRYhE6E8Gd+ZSRnhS7x+vSQUAmLowc/
 ucG3BA2i3/E1Nzuo6Xf7b9EW1tK8ORMhL3/J9LMEa7kOOg3cHfJgI2qiy
 YZsbh246l7qahElR3rJJ7gcD3xffIakvvzM8sACRJtweIac5eiu4F3VNr
 D71StJ4BLrYF/VqYy7MLwLIX9Sx1S5fG8W9NNjFl4azfDB30sDgPNQJtS w==;
X-CSE-ConnectionGUID: FNQqTVC4RJCmT4g4vvwM6w==
X-CSE-MsgGUID: NwAEJ/IFQ6G0PJGtUIaNNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40877122"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="40877122"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 09:10:18 -0800
X-CSE-ConnectionGUID: A6/xdumdSaqOK+GTKAreoA==
X-CSE-MsgGUID: 7j35mw8JQG+sg5lXeExf+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="119747647"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2025 09:10:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Feb 2025 09:10:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 09:10:17 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 09:10:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YuHNn7LkZItsf5WvjBDELYr9MY2unxrHsOUe8Y+JKCnvqkofGf2GGP7V6hfcU+3XLwe5NgWQnEel/NPudpnpOgT6VNpygWE5cxHt7UDyUipKtkdLlC0+F5UZn8mB/Hj8Spw6GISiNeccEgkW2LFCT64eMmSpOHWtDTHP5zj7qetWvo8JUDMWFo25nAi/ER7NOzgJJR9Ew5EWLP8/Pp8jBtCMHWOgUKHSd7KvlTZht+ZvboSdgHjsaIf7OELYxHitegFU368lq4YtCZpX50NZQQGU/71VC9ol5kpPwq0NJtQ5e1pyMe/nrY6RDAdWxscPPGC0+8JxE0N5+ToeG6AzVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Yv637kZGxL6a0TFAepCrOJriN/FwxBHraqKDW4Tljg=;
 b=AHbnxIYmAMVfNHD4h9D6SYBMYJ/5MEn4v1a5XhQ4VY1s31HfuV+O21NdNZY85+xxbJ5CejZIhiqsdncbRGCzKExMEEA+XbbB8iojzQtlLGw9AQjMI/quHRmo3S/ASydTh90K1bSGFBTJ4IHS09V+HXE2ozwPTRKzPgcPSuSYCkuapzsXxMXDJDs16DdCythCL9RijBqtoo71W/yJsinrQ2bkRoaS+NX68GuTn5Tn8mIOYAFm3/CHErrjNchIH7vUCvIFxTd/x8CJCx+UxJEu5tAMadN2l3yHwms0V3BAWCuie9JeRUS24ADaMUApeOTVf5Q0wQOkHqA681avrkNRgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by PH7PR11MB8250.namprd11.prod.outlook.com (2603:10b6:510:1a8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 17:09:33 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8445.017; Wed, 19 Feb 2025
 17:09:33 +0000
Date: Wed, 19 Feb 2025 12:09:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/dp: Fix 128b/132b modeset issues
Message-ID: <Z7YQSHKtJ5yk74B-@intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <173985337661.3442418.13852246095833779014@b555e5b46a47>
 <Z7Xa3z7wdI_b7Fa0@ideak-desk.fi.intel.com>
 <87tt8pnblr.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87tt8pnblr.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0296.namprd03.prod.outlook.com
 (2603:10b6:303:b5::31) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|PH7PR11MB8250:EE_
X-MS-Office365-Filtering-Correlation-Id: c4339389-2daf-4115-c356-08dd51082d74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LJpDtaXHyHf2xqeYoTiEYxCWb04kEhEd91ymher86OCtGIqF7NFOD7vIxmIf?=
 =?us-ascii?Q?HJD+LE8cXs7bQxcOkIzTS++I4Sf9XymRZ+VwK1RxeNZaTGGB0ZeQnVuA8NC5?=
 =?us-ascii?Q?AV6idI5SZ5CHLuEIpfZHTAQEktQNoeZU7hpHrO+aqZvbRgTL/mWDxZa7Lovf?=
 =?us-ascii?Q?r0KXW4RmYzXCnBcjtNUzpW54P0Vbrd6yYnEair+7xLFbN1OhIPAi3m+HyiNf?=
 =?us-ascii?Q?0I149VnBTBf469kW9nSSHiOllLO6mzRdg0VjfUNcRA79/nVAjSlcA1h6a8uJ?=
 =?us-ascii?Q?BFSgcM+VGuMd1KKaV+jKMiRlveSM7zvNwVuEurkEi65jUOv34AeWxdz4aW4l?=
 =?us-ascii?Q?B1JMLPeuLqjboOBnIdwWjkGEcTV7aNrzx0A4AaXaZdsWD5VXGjNpxRBwgUtX?=
 =?us-ascii?Q?yz4F60+qKpoj/dRZ/42+kr+fVNduZCwv0dOBkGErg6gdYwWbcSz92oBKo6L0?=
 =?us-ascii?Q?uQUN5N64kGxPt1ugXvpqSOdJlIS0wOXUjwEU+0vrmo5acI+eGl0/PlWh1YzD?=
 =?us-ascii?Q?x1F6OahmyRyeobUcFhufAF/Gw3ZUTzxO5ZNKF5HHweiMGmDG5I2kltp49bT3?=
 =?us-ascii?Q?L6IhQ4nW7O1Zb3y9j9gd70eq5zUlVQ4zSP0bD7fkSLZfBkzs1PBXyUR0Y2sc?=
 =?us-ascii?Q?7H/SND69eOf4BKZ0zN7QBvmmyFonqOzBehMSJ5MZyI2dUjceU4V0GXnKvuNK?=
 =?us-ascii?Q?qQU0TKiVqSp1E0DU/9V1sJQWKL2ObwDMBhCDThFGFxqvZK+PS0U+suLJKBBH?=
 =?us-ascii?Q?iJfm0UemHRw4khj21WSPNIjprUqn98oeHlFIe0YZoQTLmv/c7bDHKKpCdGVD?=
 =?us-ascii?Q?gn1DudDk6SarlGL+f4nUN4xQk7oNd6jLjgsEJkP73lCJTM3yEF/cNwhKxzJM?=
 =?us-ascii?Q?swbInabYItfLLzCW/ObuzphfslP4CCS5rKApevVStr1TYWV0X3ueSyr5i92Z?=
 =?us-ascii?Q?v+2ZXIG/Et6vJWXIIX6Xa41FP/rp0Uyg9nDfZImVbyvG/HnAIu0AZ2vR6TOW?=
 =?us-ascii?Q?8fezAh7yyLUn7Vr1ykdmjr7++X9YORGHqnfQjL6fZZ3stfIvXGnUpoRs/uRl?=
 =?us-ascii?Q?r7be0K/redBfIBxvYCFwRuPuGqzTq2IHSg1Kki+vrHSvMh504KIurEG0VyCe?=
 =?us-ascii?Q?TOlcKhOczRrUvtVcrJClDZHy8zG1l9e3DUB1Ak1+c+0dcaVOPrhMhSKXMYkZ?=
 =?us-ascii?Q?KrJ3icWj5Cu4RLZkF/Sp2oqqBsN3XTlBnyJf/spUEdrKw+f0109rpOPURhN4?=
 =?us-ascii?Q?n45HN3v7OmRyzsXbODB9J6ziA9639KlLRDf7tG8NzpckRI5WEmuuMAVpFKKd?=
 =?us-ascii?Q?FyWifWhos4QMOwKJ7MKD7fvVlVIgpSEPdAxw6X9EmbU8QXw+QX3qzFHNnmgG?=
 =?us-ascii?Q?AAOghnJjI3RFrUpawR3O2mQh4GLw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9xCLoWqs+gfArMCxihJkMX5UFXTWiYWl8Lsgh1HHyRB0h9jcyg/0Jpo/VjKQ?=
 =?us-ascii?Q?Q4nLk/LCrUpNXiLrEMgHI2gO5DsP1GIV4i2TSwAlVG9hLVvRdUov4b17jJf5?=
 =?us-ascii?Q?dg3rMVA7beUqL2lwJipk/pHINH0b7Gmu4bPb1+9WK7QG8PleCXmRL6mzuQjH?=
 =?us-ascii?Q?wXer/x/9QT1nXkEzrywKsP5CnvP85MBN4EXCBwZlbU+Essspm4m1zfa9Fklc?=
 =?us-ascii?Q?53JsTIj9a7z9ebJP4fcpeEy67b1MaCZ2GqOuLnLO9+PMWLxtidLZFJirr0rU?=
 =?us-ascii?Q?L1SoJbi61yH5qoxuXOEh8ks3t/H9CYlbGRIXfVda2A5l5AffpLaRTGUZsEFF?=
 =?us-ascii?Q?moFwaya4aEQ7SvXbQkeGLkk1PcnBa6bWfN8LsPoFyF+vQ6RJoKJfIm27Mn9i?=
 =?us-ascii?Q?yeEeKLcSQgfwj0IA6Rd/LA1zmGNotHytGeWPyFaatuA/yhf3rgjMHeZ65WPV?=
 =?us-ascii?Q?teekqMBVJAqe3dLe2hC3oV6XGLUWITLqFK7OHxWBM5WvAhAvQyupEnSp4ndJ?=
 =?us-ascii?Q?0XhsWkdlV3FL+4WR80a/qcxv43bq+M3mqx7Ik2lEgOXVxR6tf+WdA3SzYrTy?=
 =?us-ascii?Q?elfFnQY+3Bakgc0GHVe/cQo6+tjTs1tFw3tFYdiuEAj3IV0rAyTaueNc6i+V?=
 =?us-ascii?Q?8mOx+L8NNGfC2UpbbpK8HqBKlaFEZNorapvvogUkMnDmWpf5Z347WdPBYxA0?=
 =?us-ascii?Q?RqguwrypMPx+glEzpSTgp7atEnUbcRGneZvJ/WAbN6MBFBvOJO0maEsut1kN?=
 =?us-ascii?Q?jVwKbeRuKQOhkAckWmQA3Sqd7+yXyHXoAqofbP+DLkdHQXDm3lJs2t71a8Ay?=
 =?us-ascii?Q?EIJzH8kdP03ownQJqQdjqtH1muOSvP69AQocjZOmDgnHec5LGoUe+SJFbdFK?=
 =?us-ascii?Q?vph7wq7hG9wvnCAThukFnWizfG2M5PARgISS4aH/eIRIBMTWtgMMrxxoifZF?=
 =?us-ascii?Q?DriSkWlbL9QkgJH8W9ZXAWvz56fFg5Vmkpzb8yUGOjPmGpqokvG4nITVlXO6?=
 =?us-ascii?Q?ybAZgKJPpyF9E5+Mq4DASwEj88cLyshReAAMVb9+D4sel1o/kXJyCJ/Tyj1F?=
 =?us-ascii?Q?ENwEZv+DZ1IAxtKd3q96zG1MKpfjuttW+ID55aR4U5LKJEvUi7Mf6qHppxNf?=
 =?us-ascii?Q?pVEExFMcIIpjy+s7cpqjqYcSSCuD7v6ovk6lHbdNZSF9H01HFVOyMGrK6B4a?=
 =?us-ascii?Q?Z/ivVODEDd3FdoVI3lhb6XgMZCJ3E90eNHoXg7/cRjwM49da/O7ZVaIk9BEB?=
 =?us-ascii?Q?niTxGT/mv/a7E31+8fgjHNwp+e7Wuyi4xfgTLgyRLd0/pqjv9P6g/dSZpL7s?=
 =?us-ascii?Q?jEJKonSeqDVw+iQxib0Djzh2HeoGxTcB8e+i4iaDybyM9Z6tR7bpsychQ44Z?=
 =?us-ascii?Q?KN1DjL47TE5rhL3fFb6ck/dCWyFezuYIK8bXJgGDnzCSRJdMZ8yaLRdLp++x?=
 =?us-ascii?Q?pYVIejLq7kBwJYXzXjjHbNYvcO/EIA3otV2uHJFIn7F8qdzpJ1apJt0+O7yA?=
 =?us-ascii?Q?xY8ysvUsy1mjcEYdnLBwSOvkszR6BU4g1JKcEknQvoius9J88WUio0t0r8x9?=
 =?us-ascii?Q?xGCO87exvE2PxCYWYhMyxynaeXvXorIA3ZmpSTFKSnnmGW3L7M+4iasvBCwq?=
 =?us-ascii?Q?tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4339389-2daf-4115-c356-08dd51082d74
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 17:09:32.9534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mOx2OCA6RQIPlXwqa2d9OE7jSuJ4M+U/PLP5k2Vp5xkyR18WC4hHoQ6ntVbrCTaHmcYQK9EwAWeIgrI3G+fBKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8250
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

On Wed, Feb 19, 2025 at 06:27:44PM +0200, Jani Nikula wrote:
> On Wed, 19 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Thanks for the ack/review, patchset pushed to drm-intel-fixes, adding
> > the bspec references to patch 1.
> 
> Uh, so you did, but committers aren't supposed to apply patches directly
> to drm-intel-fixes, only drm-intel-next. Maintainers cherry-pick to
> fixes.
> 
> Rodrigo's maintaining fixes now. Would it be the simplest to just remove
> the commits from fixes, apply to drm-intel-next instead, and then
> cherry-pick?

Yeap, I'm going to do exactly this.
Thanks for the heads up.

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
