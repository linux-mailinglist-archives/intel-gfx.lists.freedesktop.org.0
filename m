Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648DB9878B6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 19:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D7C10E09A;
	Thu, 26 Sep 2024 17:55:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQAfDcCs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27E410E09A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 17:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727373318; x=1758909318;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=D75eVhMGSboH0Tz7WJjrVHpGoNhRXd+3yq3TWGkzzzY=;
 b=IQAfDcCsKJEQaVIMs7uUQ4WS+jzhChEhOrHHuGeK+lSFuSM4D8TVz514
 TkSmHibipOqEOTqWhLr2RrKW799B89CtGlh+4eQCLvki3ugSJ23FNhbHz
 9LnQPGgTNZ/LbIA+OLPldddt+OT8yzaPjyzsf1skL5b6pQV/24nZ+Ebps
 YB0BAeI6IVubBt76SZ4hKW19zZcrGr48qnk/1miaFI640MqqpC6M2AGRm
 qJdGvt2oRr4T7JM6/WNiipmqlxR3bu5jwxOVgJHyguHGluCZnYdIfY5hm
 KAKu1d1J5c1wijDo2i8cHDc/efclgGGvUAJL9Mb0dfmrZ75l3BuFeYOKY w==;
X-CSE-ConnectionGUID: o0d9GUQRQAaGPZar3JWHmw==
X-CSE-MsgGUID: kTOFi7s+RIKHo4cVm8esbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="49024269"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="49024269"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 10:55:16 -0700
X-CSE-ConnectionGUID: FDzp3A/YTKqbZfLeGPpYzA==
X-CSE-MsgGUID: LJ1UPEHFR86Z94vxJUqCag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="72558652"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 10:55:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 10:55:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 10:55:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 10:55:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 10:55:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wQyhhK52rA7VvoFzIGLRGzXDIDE0FtQfku4NeCXC/l+EKBIFRmzPoywmlj0nYxKONXP4E8LfOOG/N7DzIiU+VM5wfoJrjPiG9ra/U6rBBdv+gY4lhoinQ5gZgTBLa+3cNd1KKzm/Qbry5AkfefEoHO3g3CfRAx39ktBxEWwEq/R/34kUk3dxjaam6U/EzlQkTgJIzfO9sACqJdHtbA6ZaRzKsxxAlejHvJb6vuVL1MPCDIwFA0q7V8jYgfQqDQ9U/VyyMl0bAL+kcCofRGPjwCrsBLuRKTqCXdQoSOuBXUbaG9S42DxeaoRHtUSyArU8ePulpD9zJQk+xkOlYyILGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UVIDVJL41W495vq7GCQ3dflKOkLj4Qko63eYE3i937o=;
 b=uX3TBwYP7BpeNi6JJ9m3pNf5low334o5fIfnUUCj2G9ogSWbdxusbTvdyMbHUNePahIf16kDPISQRKNTIVmOAPAnQoqB7W7iOWSmysAPjEx3W73bYeyPU4J1N5fak4uqQxdhrL+ABJqWzbZL87UNTewJ/tMzPDMi9myPWIdgQVWXLH9SsAIOPai5ryQGMBoCNYWEBErIknhMEOZMOHHVzF4eMamVupE7ZeBMNC2MctOPC5q+kub4371PlUqJ40KOM69XauMn6Qi07r9Z3IYX7QSfo2m46tazyT1MVqxn6lRwzP/khvZN8KyK0HVKMjQiNUb6ZJbCl1T5OnC8Tt1lXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Thu, 26 Sep
 2024 17:55:05 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8005.021; Thu, 26 Sep 2024
 17:55:04 +0000
Date: Thu, 26 Sep 2024 10:55:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <uma.shankar@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for ICL and
 above
Message-ID: <20240926175501.GC5725@mdroper-desk1.amr.corp.intel.com>
References: <20240923031007.1058072-3-suraj.kandpal@intel.com>
 <20240924073450.1261535-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240924073450.1261535-2-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR03CA0032.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::7) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6492:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a0fc209-bc71-4178-8f62-08dcde5459b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ubyNK/kgAgWApSvNDnuyd2F9QkvrPXgJwzKMlFoHYd3ArOp9JQ9CBuaUziVb?=
 =?us-ascii?Q?yW8FQgGboA8MXn7RUE5Sxd0y9tMrJ60GnlxypT2i00ewefHIFmV0UyhSpYo/?=
 =?us-ascii?Q?IMqAe+nf2owol0avhAoV48dp55TZwbrnPPos5crt5YH5zXDTArGYeWzBnU/g?=
 =?us-ascii?Q?biF9dqtMM/vUSLe5zoou+s0C/j1FHEOdcCPLb4lk4sOF6GPGUwooAFniDoit?=
 =?us-ascii?Q?YD6tv/AOx+ICYpTiOansOm3Ywtfm8nW/0lw741benGFKjRjykuK2L7lj+JnM?=
 =?us-ascii?Q?m1D3/Iiu/LqMzdBg4LWHohOoedkN7i6hKkN/1a5g00y+1jWZgAHWkLarPchK?=
 =?us-ascii?Q?pTCKxw47nsGbsuscXWHT7igjBl58PcwO48ZP7hxlIiRAVMkF8hz5dItSGrAP?=
 =?us-ascii?Q?nA2PetbxLXnYO4xOqiSN90Y/bjmbJCPDEEWjyKNHxvKU3ggGK7oYdxZL/S1w?=
 =?us-ascii?Q?Xd7aKAjVV/Nc/kFklEKIh1c5cAWG89u57P/Jm7v2STjJ/Fwl981bd3RKrLBj?=
 =?us-ascii?Q?24t5U1QFun/H/GC4SDxw7953fAdGRa0uf9i40XBaXTErT/OpLrUI6698/haY?=
 =?us-ascii?Q?kc6OaikZvOnk/6SUS7xrUgkbsFGkvArRn+xnwWIyG0LCq4ybvfUBXXvqXOBW?=
 =?us-ascii?Q?evD+2ck2NebWStuhnhNecOK+lJwxEzhPJhsAKe4yWzX1iZ2z7RkgGHaJK4D6?=
 =?us-ascii?Q?eDbAmSGgwW9cIC+qwVxsBiW+RcjjEY0r2JDh/mQugq8cWvDeT/VXrFonJNsf?=
 =?us-ascii?Q?a+ECkyenJ4Z/7CizjXWBt301ZNQ0ctXaAyczsj5ikJ9wWV62N4V5NkePsizF?=
 =?us-ascii?Q?jb6Ee/hThWDGjSMo/wasKKiQbgTcIkqkTF9dCmLsKVU+TUSgkhlO/H6VIphZ?=
 =?us-ascii?Q?fjJSV0tLDnzBAHSCs3bpbIefktcFvcTmjDIQUrrDn/FWG1mL4NWEhyUVJr3q?=
 =?us-ascii?Q?GV0IOCOqRLjdWUsZfKzWyQBep+s7mPlg0vM7XiQUfKQWHorxeZ3gLIsLKny6?=
 =?us-ascii?Q?3nMnMiwW28FtO94LY28sIhpq70nnt4ydkFHPZ8a3BpoPPmia/8dqVy+xvxy0?=
 =?us-ascii?Q?6F84paDLQQbvnCqCf+gz73GJlW4ihthOJS5ilGiSmaMoxhFAdm4Ffmxc0BmU?=
 =?us-ascii?Q?zyw6DdO8O7IJAl0MCVjAovfoBCdSQw7Yn7PZbdnnlY8F2Zqy7C1oYeGaNg6V?=
 =?us-ascii?Q?qbm+v7Z/NJAJfdmx0qh7HNFEbIjk3sX63RU/e5cDiR0ikRKMmhIyefpcU977?=
 =?us-ascii?Q?XAhZrLYhgtm/lI3Gweg0eSOwZXOiT/37VQz+rP8V79/2suT096mlX+LaNl1F?=
 =?us-ascii?Q?uEnXo3OLTLrVdinicYaOjVkAAEyc+j06gg814fMfLFPm0w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o7GN0S1RN1klnGB6odmvseJO+oxTPiix5SQ3ioO3SWOVvsuD2BMV5jwcyod5?=
 =?us-ascii?Q?aNSzVhAFYuQ/Fj0ZmsgjOaiJsasw9QtKQTYV+Kcn5FxmHsV2qqoufNQA2U7P?=
 =?us-ascii?Q?+Ha4a8ox7NUpVUXn/FoH1YejPmlCxebYmMNDqw6RbP/7X76u1lkxooyX7k5c?=
 =?us-ascii?Q?ruZh3UVrDKW9jZxlOVDRH/teCqakMXcGPDwibCyUwb+Zt1nbbppkCv7cF+dx?=
 =?us-ascii?Q?d5TWvpxAagfJknnE8x1BokorGLCaOTk+KaD7hoFfu+7mLW3XW015fJvs8Faf?=
 =?us-ascii?Q?7lBm/UtyTUgBYWOA3dU5Lc+6QyAjN6miUh5ji1uAhuHDU3yHhPTLxVy8E9Px?=
 =?us-ascii?Q?2uPOPAGEvCv1hIBkDf6Bs1vyrpGvvKnl+JqELvAbYsDe02vpF2lr3+lvU22X?=
 =?us-ascii?Q?M69bOB5OoY+D9gFcsjhBregoMLqjwanLyDQyrq/qEsT47ZkxL0+YyaXNU8B2?=
 =?us-ascii?Q?omPuo1hqg/i3gTPFcSENnFE4QBfF39wQw4p5DyzaX0+85f0r9OOu/Cox5PeS?=
 =?us-ascii?Q?MO4Y73nvCr1S6ZaKxUpJFf6IzDlZHMSe+1gGAFFF5B3s3nFAl+Cc1FDLxy7Z?=
 =?us-ascii?Q?zj5RtYzH5w+W90EZGov6pSwp3vAtn1wrwWiJY4igwlLSC58w2zAsiNzYXxMT?=
 =?us-ascii?Q?UPI+x44QB3Kw+TSnGx3ELpZ4ljZ74Ti4MM81Rgd2jqMvyI4j8kuFskRN/ZDq?=
 =?us-ascii?Q?9EzblooOFSwqmCfHreygPV4L3aNRA8ax/F7AU2UnGnpJzF1p4gqodNnCkIFn?=
 =?us-ascii?Q?4CIhz1E2d1BjRlWRqMyuz91TbU/swz79TkhxRyb8FYhDYr3QUHxzH5yI4r2f?=
 =?us-ascii?Q?+mqvU2PU+R4wfO0vz9TJF4pmesp8bpIgSeew3hTM2wyC80GyDcBhjbxIUdeC?=
 =?us-ascii?Q?Usz1BJSNJbm8HLvXKNaE6eaLYe/brLK1PbxDTzkGiaD/pJjvdR1QYSgFAAIR?=
 =?us-ascii?Q?bL1H4E6/kow0U2S6A0wQ+XKYx3t0+UFW3jizJMN2pgv7B2Hy1mn+jb8xXO57?=
 =?us-ascii?Q?7vf8aCPBnc5NCuphvitNyq5kzJw4RiUY5kNCWFVDMWc0d7En8TywPYU/mdM8?=
 =?us-ascii?Q?cJu14LJYCqXoMIGANHlTBoxO/cDngpaVzwbQsRBxsvHysxow8BLrdAoUsXmm?=
 =?us-ascii?Q?4Z4PJ6UPwVv4glq7p1+QLbjj0dRNfiD6GrvkIEWj86vuejPB8rDcVcohOna0?=
 =?us-ascii?Q?WZ50bD1/uKnXnlpqxT9Juki6dhc3bNWicoCR5FGciygF3M7MursHOyNlJ+Ry?=
 =?us-ascii?Q?5L9IJfkagLMSpsiZcX5+QKMe0ygaawLl+7I2sN7kjC56oy+kJO4hL0GgJ8eE?=
 =?us-ascii?Q?o4JQvIBBvW21bvcuFFXWADIEBx7BK8FqrzS0CZAkozDgaKl/IxmoXFMAozle?=
 =?us-ascii?Q?pW0Ws0FIlHwXd3w8RlKhq6aeW4h58zH04ilyFv7d1QaEBfbPemtCFgwJHKSE?=
 =?us-ascii?Q?d1Ml9g1jUbckq2eJNHwa4AovP5t4AtCx/A8k9mUFskgpd4XUEVMXHjmrif3N?=
 =?us-ascii?Q?wBcOeu1sSct83YQpT5/g0KOkDadhcWjhA2vP6zq/eyR1TBaQTHsKzP68AeNO?=
 =?us-ascii?Q?LKhFKC2yGd102vThoKMhwUNtQuI5gSnTgCXRatcFs+KbjqfvRDsuUquxXsnu?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0fc209-bc71-4178-8f62-08dcde5459b3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 17:55:04.4466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: djoMYcaO47llJxTIIteNr4Wvb++bVuCDj3T8GoNBaG+kqfFINYx+efEOZsvYWc5tnsHQdqfOCvNkorv+TTmKfQZ99y7BoC+R5pgrlo4HxZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
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

On Tue, Sep 24, 2024 at 01:04:51PM +0530, Suraj Kandpal wrote:
> Reduce SHPD_CNT to 250us for ICL and above as it lines up
> with DP1.4a(Table3-4) spec.
> 
> --v2
> -Update commit message and comment [Matt]
> 
> --v3
> -drop condition and use value of 250us for ICL and above [Matt]
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Ville did mention that the 250us value is also present in older
revisions of the DP spec so maybe we will want to also adjust some of
the older platforms at some point.  But that can happen in followup
patch(es).


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 2c4e946d5575..3a105cfd3c90 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -849,10 +849,11 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>  	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>  
> -	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
> -		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> -	else
> -		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> +	/*
> +	 * We reduce the value to 250us to be able to detect SHPD when an external display
> +	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
> +	 */
> +	intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>  
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>  
> -- 
> 2.43.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
