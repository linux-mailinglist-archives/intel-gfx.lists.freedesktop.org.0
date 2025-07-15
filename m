Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2DEB056CB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 11:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9414010E1FA;
	Tue, 15 Jul 2025 09:40:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lrs5vxwq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C7510E568;
 Tue, 15 Jul 2025 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752572411; x=1784108411;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=UcEByBBFMcI+xwo1dcJ4XA1nAyNNNZTuJBdDx/dukOo=;
 b=lrs5vxwqu0S1ODrqVl1QuGx93uEROvN0XZkx2wD6RAE82LuWZ3XkuL+o
 qohd+cc6Kx5vpHLCicAaHqHPpkqBaqmCAWZiSjLT1cysNTDMn6hRIW0c1
 CVl6/FWPbUMAOn1yhpUYea9v93gUlHDeExAJkVR0vaNh9K9vc4qqTHm8y
 NIbQe29lTUZnUKd5iD9t04Z2qgv9hT8P+3uxTWk1nsdgs+EiLebUb9lNw
 O2Zs1C1zXTeeM0XQYe2iZ6byfVuhwobZBPMIzAC8JIKdB87rw2+s2uYmm
 +n+fWREQ3X1oaBY/DMT5DizQyBobbbYnPLLXlbypjxWHGgEjDmg/2oVi0 Q==;
X-CSE-ConnectionGUID: +r1272eBQAm4XqI4nHwjLQ==
X-CSE-MsgGUID: UZW20QKgQDikI+LnfI0RGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="58592954"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="58592954"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 02:40:11 -0700
X-CSE-ConnectionGUID: HZ5nTb3nSDiVnaDVmE61IQ==
X-CSE-MsgGUID: dtjeB38zQQup8RpsLho6KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161200197"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 02:40:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 02:40:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 02:40:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 02:40:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ffDxfYGJwUDCrjaOmcfp8f80fn7E2bZtJNw0tOD0N7to7fKps1nNHWzvTgS4/BHPowGDLP3119Qol2cpPRFfKZ86WhOtoJmtdJhItBRmvHAdILaJHynqeiuX4NZDLkULu7HfIAEb7darOl26PHJ+fEUboWFf3KRAl8wS3XyDg0zzj/eMrxgBvgg8fnc/wV29PeTHrlOoQajgdcfzJ7tLQ+e+7p6pJ85UAshEslSHkFEnox2xYEArRIXBbunJ0ydmVFqhD6xgCrUphYYnaht1UqQXeZPEcAy4WoYMHkPBBwQ6jcCe/A5ss/N4B+POwZirK5eKDgl+71N2KZ+x/veGUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8vy046iuUy8tDr5l6MFPYwULRcYIf3X4jJGG7+ZxbE=;
 b=mTZrvAkSijR6wjL8avI2PHvrrNcdstouNANKpPPo46PK/4A21xjSxQfMEFDFi6NDR+vm6in8rSOzH7Mn2eeO/1kZrs5J3fmOQ1PW/ExcVdRPNc99sVtEv+zNGhkl0iW2HBrHZG663SEI7v94IDtMVzxW4h8ht2Wo9lSLAXDqGpVyD2mcxZq+96MgmjBwG3CPxzED9ttp6aZVSof9qDXI9G3n3hgzRbM58ExqvYz+io/JUjKmgBh7B4udQIcWhr1C0hqw0mPw5oSCMnwALvrgKb4EFKuyV0Pg1zVTYW9LSy1nLzXgPdSNPGC8ZidCH3Kh5DE80aJzCDFeMLGw3Doojg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ2PR11MB8403.namprd11.prod.outlook.com (2603:10b6:a03:53c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Tue, 15 Jul
 2025 09:40:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.028; Tue, 15 Jul 2025
 09:40:08 +0000
Date: Tue, 15 Jul 2025 12:40:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/xe/display: Avoid dig_port work during suspend
Message-ID: <aHYh8Yg78OYk2oQr@ideak-desk>
References: <20250715055219.410193-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250715055219.410193-1-dibin.moolakadan.subrahmanian@intel.com>
X-ClientProxiedBy: DUZPR01CA0299.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ2PR11MB8403:EE_
X-MS-Office365-Filtering-Correlation-Id: ab69fc0a-229d-4234-8b29-08ddc38395b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eleB8sQNYCKVznjPYWU1LgFpz2qRtDyBZYdF5c72IIVFbQetC5pW00i0V7Sr?=
 =?us-ascii?Q?fxzUwYeDwtBz6XxfMuNbST8JNYRgJ8JQFTyQscPyiNJQ63oiWHpOnFY4S8w4?=
 =?us-ascii?Q?V2upEZfH65/t0AKd0GudEB5KMbTFPPmRghRgmlgUdYWKNwArpgPngxGiAc/q?=
 =?us-ascii?Q?leFV7HUoAaK6rzjNd300Wyn+Qi+tPRcCXZGShCe0T/gSU9RWhgV7Hzhh2Fl1?=
 =?us-ascii?Q?ZAoSo6z6AKO16xtZD0XKMLe9MNRZUGrOt8zYU3DN79May6RcEeEkwR4usIJ+?=
 =?us-ascii?Q?I5uuMk5+J0rkWN9O6IkxVt2rx/nLSMOhmYIpnNszCwJj/MemSAGaI95HU19S?=
 =?us-ascii?Q?+5QxaW/9SjizmDcc4gZCigvxvU22/cfs5AVSOBs5IUdA9yo0EjA9Ty16/3U+?=
 =?us-ascii?Q?z7zHb7XHZBhLAH1BeehiUBM10zkA0Ggtl49lJOW8hG5DpekCSdieQTpWJvBQ?=
 =?us-ascii?Q?2+OySBxEdfSCU4HWXFqvFAP159VkhUq3ikyqHSZupG5DiF6fnoU/q6D4Rmo1?=
 =?us-ascii?Q?ApJHQzEPm7xnxe4SJWFPTWwio0uN+nuyDWMJFpwFkurllwGoxNi/Bfydf+ct?=
 =?us-ascii?Q?IhgvFVvK3q4UNwUI3OcTTQettB1BZhgAiU4Wz7SRDqI4OfD++Zfx8psslnQy?=
 =?us-ascii?Q?9iLgK2qSS3L4K1X1lWZyPdBpw5yfP+E8BGt05MV03NkTDTjaVyCbp37dJiKs?=
 =?us-ascii?Q?Q5MO0oUrH2LpBq4PRtwtam8lG6gS32ep81IR+T8mA4vceXeR4rISpZqvAmVn?=
 =?us-ascii?Q?iyFtx8978d8HqBzY74Puf8PMGzVr7GZKTb3PaxFhkYpBIHjIO5/P/2c0sgm4?=
 =?us-ascii?Q?tkrEippsuy3acCuRVhP12FebWxiOA49eUqZmeXdLYz2im4vDJaKJU6jePjzc?=
 =?us-ascii?Q?RZYGnotUGFkRFdoy71cJChdxCwhaKmJc8yFRBaLUAphFbKANtIZTnL9ZFPDc?=
 =?us-ascii?Q?tLvyon3HLptSu2pS3EkscbVhisIOfx0IUbGOikVIiMhKqvSedJ+SXk03LZOi?=
 =?us-ascii?Q?u2bDlExspsrIkVPfVZt2q7Cdu2VoYqYh+87FouI0pqDMs4USlpuRug0fuEbb?=
 =?us-ascii?Q?hLlqDMDYQyPU5QKzsk3mbADWvqaZnYEvn/v2VO2xlbD0i9W161eKgv8fOZLt?=
 =?us-ascii?Q?ydqv+vSMbaffs60fHXP3HRnuveiTpYe6Zj7s3/UdHFzDIbK2cXS8UStlEapf?=
 =?us-ascii?Q?3Ypc3rGpm2p/ZrXtm1TMio6FEuyHBDqn+hpi7+/qEIxYz3EytNZGXGj6RN5C?=
 =?us-ascii?Q?WUHgmpHks0LaEcsB1Djf2vqMeSafQYWoCMRuxO791CMu/azcVQS4yCVXqKw9?=
 =?us-ascii?Q?zq5FdfNqbNWM7vISBfIR4bA8S6fAELu8PYoId8H7iEEKjJ1pj4wNMOl8oBeg?=
 =?us-ascii?Q?G4kEaqIccWyv5+u0RtTZVk4+76Z4NbMlwTA1KlytndVdx5kQca5Ql16rVvb0?=
 =?us-ascii?Q?IJ5jeWEX0TI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Suaj6FAyK1OyDMFDGMH6Gzt7HSq0u2c/A5ZmpaBcGVPXRQdqZlabk870b2LM?=
 =?us-ascii?Q?YpZzN+Eq2nu8dmJtOagaUMgkPkfkqd3ZnaXLvXZdmJhzYtulRZnAHfOm3ODc?=
 =?us-ascii?Q?6TwFRRbKO32dgewjgE9g/YD0UKED4iDGBfDCAxJM8W35XEAMnd0sYz+sEVcg?=
 =?us-ascii?Q?qtU66dXbuJG2CEji1U17s5pwsxv/X3y1yIz4oO2vnsBIhlIjy4mNYvl1jp+J?=
 =?us-ascii?Q?4Qm3TgVbTBnWJcP1W28YgLmzsHVgzi+/OwfsexbI/2zVyvRMpQHb+W1K5CAz?=
 =?us-ascii?Q?0nnN62+IbuMbVaHKdTCIAUt+CyjhnsiVfrm64D7zKNmLeAVD2+wnF3DxSZsd?=
 =?us-ascii?Q?Yw53Nl9gBpzPwVw2Bqd2nq7bEPxlSb8MbWJle3oNXH9KTGSK7kJangwjx4tk?=
 =?us-ascii?Q?zuQuEzhn3z1fDJim3TyLhfhGXk30Tnk8S+EiMdKQbrKTUJafT0mdNFZoP6QV?=
 =?us-ascii?Q?zSGQxtnaC/e7IEL7nCgW1wkdfwDDVxNTjfR7vHkojl8WWljhdyQ/vJQoal0U?=
 =?us-ascii?Q?mfAxQXAVJiqg0cjUkdBz2W5rfmO7iVTlCY/cuofRwdfdRdih0tu3trxL9QOK?=
 =?us-ascii?Q?XB6bpwS+zFPiPb3QmYl/YwRqgRKPNQZPYs84cKFt1y7hkKdvUiiLMf0pieQM?=
 =?us-ascii?Q?aiXaPjEuXWI4hKKyrDI3nb7tUuENIYxBguuhqpuT35PRHRl0CUyuCXSWeZoN?=
 =?us-ascii?Q?Iko9zZI4tLmBH/DFJXtHKknEKXqE5MPtt7qt2M2TdejQVvXyrD1ZnG28MvPc?=
 =?us-ascii?Q?x/61OZwI0X52iLP8a6reSGAzElhbEGzlLvBzCZ70hpB/COcwuqxayFVIWr6x?=
 =?us-ascii?Q?ox3KqAWJrhU3fBK2aWprj0DzRf+Uwz019vsuY1MFbAqBpyDckB3mbNpY3k6T?=
 =?us-ascii?Q?Jy8oeY67qSUrCFbIAB8txW5XKq3ZwM+GxptVLFMAbGol+MZyxeZWf/DhCOe1?=
 =?us-ascii?Q?sItZt27eiuZ6RzaWyrbThqe+6x0kmGrqhA1h2duISaoCXJ0zxgt1esVNIJP/?=
 =?us-ascii?Q?mpWhlOtBPzSjBQzPsT8ryHRThjLQWkqzuyU8bC9R6oc6PfgK/8yoMnN9y4oD?=
 =?us-ascii?Q?dob1L2riFmkOd/hnGCgv9kgTikwL0hOJxL3RrGoXh3okG7krFjDPMlbGWXaB?=
 =?us-ascii?Q?QulYCXtSDZFYzt5z2jORys2Ldpjdip6kz/PGL3OhFc7yvVbR4bGk7xZ2fj/C?=
 =?us-ascii?Q?rZY4FMdDwosshBwWnAY4J0GvDP/b9lgpK5z1b8IpjM04osR/UGrJDnXIoQBM?=
 =?us-ascii?Q?vd46UqLuTlJ2kF7sA5jh/lBWyRAKJT4vpd5WfFdJ/Ei41wWzlXQ30R/lRkre?=
 =?us-ascii?Q?Cm38CPmIrMcbc+ydGfAunvSrY8eiHTKLLJ4VwNVEtMnaZX1xLrNKoBO98ZPg?=
 =?us-ascii?Q?9IrOQg18OeliKGojsY3UMFtDNjUAkTX6PWIhtQiMN3lJkvNUrOHFmVgbipaf?=
 =?us-ascii?Q?krZh7r7eLRmbpwxnMeUPPs0DTm2CH4iZK9UZZIWBaXo0j9MAroIfT8FVQ6ID?=
 =?us-ascii?Q?OZW4b19oKOkd9VfTv+wWY1R9MpLX8BuTPpmbeghz86LkFS9c7Xv0oQpwCtFn?=
 =?us-ascii?Q?WKXrQUI2bycNOjOIITAgh2wNtzBJHKU+pImtIpAIkalbERERKCHR12gqqvjV?=
 =?us-ascii?Q?whLy3A1NGdKElnByEnpLWt5tg2qJWwO0C2OOqu6sAIiQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab69fc0a-229d-4234-8b29-08ddc38395b3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 09:40:08.1028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KgxH+w4cYYObjes8z54Tj2R93lYF0nhrDC7gTWa70pwnyzEXOlFAilLXOfWLeVvBVi8nkoOMyMbfYA6DhslX/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8403
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

On Tue, Jul 15, 2025 at 11:22:19AM +0530, Dibin Moolakadan Subrahmanian wrote:
>  It has been observed that during `xe_display_pm_suspend()` execution,
>  an HPD interrupt can still be triggered, resulting in `dig_port_work`
>  being scheduled. The issue arises when this work executes after
>  `xe_display_pm_suspend_late()`, by which time the display is fully
>  suspended.
> 
>  This can lead to errors such as "DC state mismatch", as the dig_port
>  work accesses display resources that are no longer available or
>  powered.
> 
>  To address this, introduce a new `ignore_dig_port` flag in the
>  hotplug in structure. This flag is checked in the interrupt handler to
>  prevent queuing of `dig_port_work` while the system is mid-suspend.
>  This behavior is consistent with the existing approach of suppressing
>  hotplug_work during suspend.
> 
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 22 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_hotplug.h  |  2 ++
>  drivers/gpu/drm/xe/display/xe_display.c       |  4 ++++
>  4 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 8c226406c5cd..376682c53798 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -209,6 +209,9 @@ struct intel_hotplug {
>  	 * cue to ignore the long HPDs and can be set / unset using debugfs.
>  	 */
>  	bool ignore_long_hpd;
> +
> +	/* Flag to ignore dig_port work , used in suspend*/
> +	bool ignore_dig_port;
>  };
>  
>  struct intel_vbt_data {
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 265aa97fcc75..b2891b7c3205 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -223,6 +223,26 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
>  	return queue_work(display->wq.unordered, work);
>  }
>  
> +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value)
> +{
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	spin_lock_irq(&display->irq.lock);
> +	display->hotplug.ignore_dig_port = value;
> +	spin_unlock_irq(&display->irq.lock);
> +}
> +
> +bool intel_hpd_can_queue_dig_port(struct intel_display *display)
> +{
> +	if (!HAS_DISPLAY(display))
> +		return FALSE;
> +
> +	lockdep_assert_held(&display->irq.lock);
> +
> +	return !display->hotplug.ignore_dig_port;
> +}
> +
>  static void
>  intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>  {
> @@ -691,7 +711,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
>  	 * queue for otherwise the flush_work in the pageflip code will
>  	 * deadlock.
>  	 */
> -	if (queue_dig)
> +	if (queue_dig && intel_hpd_can_queue_dig_port(display))
>  		queue_work(display->hotplug.dp_wq, &display->hotplug.dig_port_work);
>  	if (queue_hp)
>  		queue_delayed_detection_work(display,
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
> index edc41c9d3d65..9dc40ec7074c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
>  void intel_hpd_enable_detection_work(struct intel_display *display);
>  void intel_hpd_disable_detection_work(struct intel_display *display);
>  bool intel_hpd_schedule_detection(struct intel_display *display);
> +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value);
> +bool intel_hpd_can_queue_dig_port(struct intel_display *display);
>  
>  #endif /* __INTEL_HOTPLUG_H__ */
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index e2e0771cf274..2db71bd07c9f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -342,6 +342,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	intel_hpd_cancel_work(display);
>  
> +	intel_hpd_ignore_dig_port_work(display, 1);
> +

The actual problem is that HPD IRQs are disabled too late in xe, this
should happen already before intel_hpd_cancel_work() is called.

>  	if (has_display(xe)) {
>  		intel_display_driver_suspend_access(display);
>  		intel_encoder_suspend_all(display);
> @@ -469,6 +471,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>  	if (has_display(xe))
>  		intel_display_driver_resume_access(display);
>  
> +	intel_hpd_ignore_dig_port_work(display, 0);
> +
>  	intel_hpd_init(display);
>  
>  	if (has_display(xe)) {
> -- 
> 2.43.0
> 
