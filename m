Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261258AA577
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 00:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC81611A058;
	Thu, 18 Apr 2024 22:34:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R6QdVa+4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B1A11A058;
 Thu, 18 Apr 2024 22:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713479657; x=1745015657;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=QGm2jKWA9xzPc7jRlrFq544ii5EIxwo/YOB/tKm3HAs=;
 b=R6QdVa+4jeGytb4ELAqYD56GvNciPQTaNzWOb+7sszW90L03swZ8w3bh
 knS/bh/NQ7MRPxq2yogHCB9jgHYCOJvzH5ZmJzYNAtIFPYR5/FyN+XJSQ
 tvrrD55xMjf9zSlRll8/T9OnKmfM9DnwrLAXFnhJbf7AIFOqUW3MmuMV6
 1nyrVEOaROeo1GZ33Z6s5mycj46zSjLnFzqrdvswomYNUkgC50mjZ7MR0
 c/NGCc93XJY3pdWzGWForuwsfXkxxc4Mv7ruUNTT/IQf0CsHjSWax3k7b
 SKjbOSg7LuFRxxazX7vw0f6TXUbMRQuThuyhHhVM8yWVGYfzF8xRLvCXd w==;
X-CSE-ConnectionGUID: jhrK8r1aRJ6fuEhVc9Qcjg==
X-CSE-MsgGUID: nZfJcMFlRY+7iOH8bTFr+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="26516579"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="26516579"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 15:34:17 -0700
X-CSE-ConnectionGUID: +jsKylefSKKU+OPBFwQByw==
X-CSE-MsgGUID: n1TEQm5DSCuIZQby0ujrCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23109593"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 15:34:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 15:34:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 15:34:16 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 15:34:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TyacQ/o6qR40VRG1Txp4g4XTV5Q47smIVxaR0HdXrj/Lo898T493Gq2mq96VclhtXDp1HYlFDrM2HX96lBPW/bHJdUle38hQVAtNDzAcxmlQAAK+pWwDASbTnCiOewWfyic43DGLJ01EYpDIwYX4tkyAAewpsJPGfy4VG6A8dvgJaq2MRCpB/PHc0+4LPNzrED0l9UEZvNw/zawc1cRVP20fCHkqjkq3p+cIVSz4/2NFzW74vGhKqu9OCDxO9ENPBPED1vW8tWhCCtRkUe74ouHCxCnbI6ZThX7ZpTkUdoDU09OHPLIj1Lq+iHhFKSvktlhQJka3zSl1aeOI9TVJLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igdSO/MukGkPjGpD+68WNdsxCm0RiqHz8b21SEkZryQ=;
 b=GaTOfPxhxcj+B/21m0A8Rqc4GHJdhJLorzbIecJ0n/2/HZHLNgtxAghoIffsxjH2dwF67Rc2vbWc7JoV64oBX5q3h3dr5lNzCKNwuMsz/EFvReogcEfBCQTsqyGy5SeyH9RVl4UIThFdb8NdguWpB8e2jUNJb/jXY1KAsWiv6I+eVNHMfWBgX0/5mnFnzRGXS6ZEPegB2pt1/DWcy2+PlU1qPJq4+H0XS6Z3KedBGahiB9uCrAostRRoKduIo+FPb2OPS7y75UUKYmZ3Q3eph2du3jthpxHt9iOM3K2aXhRYFxtqAooI+rBFx257jeqIElgMxsZDzzKesDCojXU9PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6805.namprd11.prod.outlook.com (2603:10b6:806:24c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Thu, 18 Apr
 2024 22:34:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Thu, 18 Apr 2024
 22:34:12 +0000
Date: Thu, 18 Apr 2024 18:34:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Francois Dugast <francois.dugast@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Convert intel_runtime_pm_get_noresume towards
 raw wakeref
Message-ID: <ZiGf4MkIsW6lqZy0@intel.com>
References: <20240418221320.66644-1-rodrigo.vivi@intel.com>
 <ZiGe/Tqo94YbxOnm@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZiGe/Tqo94YbxOnm@ideak-desk.fi.intel.com>
X-ClientProxiedBy: BYAPR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6805:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cd8bf60-b6e3-4991-7443-08dc5ff7ab66
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: BlcCWNzr3d3ySVfK22GDmGZ8GPX1FtiABEmLb7TQEtGatKk53J50u6VOEtJe0AlSKIb0T4GPGIXqGf/9FhRml8UE6WFU12/PwMGp1A9OJsXmz7VcNGWM05tNIWEeyjDsSl4m0lKk21KeaBL16PaQLCuxDokF9muq+vPiX7eWV4IKosZdpv3wE6B+zmiE+GyZMZHzMaYbFoSQbU10aka1Y/j0BEuCn4BsPsFKKvhZDGTCnlXRGbpIfikpCr9/onQDJCNYjgMKZGwKAAjMx5vLVHAD6lxiP/pDUUQaYvIg915gNxZedlz7P2+CdiwBMyFbxLjjIswgzt7i9PKQw7WR4DltIyaYvqFo0NKEYZWKBcuyIAxIf0KlCglbdIA6YwOx9Kqlfbq07t2ibHNmpUiFAcyGdGkB2SvSzQ7BbT0MoTxP3Xw2Bet0y9MaMdbroEis81vZ9wN9sbmGKnLv8HLXGpS3Z5KsHd1UDN2WTKqnYxL51xgdKmJzxFBe27u41Aof6cMcnxyUXf7Gwd6LKqnWkIqkoMHBXFML21T93NagsJUd5CzBbVvWlEKMmt6UUMSyNbiqZ87oqS8bcKXby0oEyGvYkbSG3s+fQMX3qMFADRA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?epEAdd4Mg8VubIPTwd9qab8zHg2a9RuARZSKtejLRW9dpb7pdTjWXoHhBq?=
 =?iso-8859-1?Q?OYSWGTk8isPrxDOz7xipkfzX3JQdIMfPHDD40LKC1rNDc8aLS44h6MKykM?=
 =?iso-8859-1?Q?La/d6J+CoD8lEpI3R2QQMMUsutzpAFnpNrT1FO0tltT9umQBN0D6j1oacW?=
 =?iso-8859-1?Q?7X2MslrzbU/bq2xzp71w8/nd5pOkcmuCjqUMU5ph0D/YHumbIaqDn+Ub6o?=
 =?iso-8859-1?Q?VkTcsGU6sUVNVgY6a9MIWS8ugsp74Ohr2+S0nLFbZYxaJUbguSs8eazyPE?=
 =?iso-8859-1?Q?7CcmsQ7Cc6MHYtpGi06LEoVgfv3ZBcdXBJjewHYXoWmxAy5EBEq9vp7gIK?=
 =?iso-8859-1?Q?wmhZXc1HelcrYXwGqIubD13dOfePeN/xW/A5b5wJroF9vjqye8Qmn9RFO6?=
 =?iso-8859-1?Q?OZWXgP6VU8+auMYdhdAZzPP+vfmPT6efA51rTwWTzW7VdFmAudrTq3NRRr?=
 =?iso-8859-1?Q?MTNmJkOxQqL7mcldGhsI+c7jAhGbx5lQBXYW4lOXqEYlShpJC1m5LDgsPA?=
 =?iso-8859-1?Q?STxVoJCaReHF17RFHBby2jsRfjz/BZsD/Znv2KnJ1hRzCI6hhKikI+cPE+?=
 =?iso-8859-1?Q?1rr45uydlAylgAtProb+wLVaE68wfmOaqprTYyg6dzrqBEmYUdzRCc2TWG?=
 =?iso-8859-1?Q?SJNnE+w5VX9HQgrg1D6+EtkBTknOOP6mgtt4uomOm1/tXK4+FpOd348LDR?=
 =?iso-8859-1?Q?9PE5echZC0xRQBHO5rHUHVFMIoKyFdUgQOJEsmKfr0IOOrbbdkdL8S/IZJ?=
 =?iso-8859-1?Q?uI6p8SjpBdVWyVBL3MRCo+LI1EdtyBFo2NG13BEk/q5IZVtWn5YIUDc7tX?=
 =?iso-8859-1?Q?qMyDobwTdceHt3QM35gdtt4jCCr8XwVek1XjZ/83z2khkmFuQ6XUodJcce?=
 =?iso-8859-1?Q?e8jyEvQdST9lNIr7Fbr8sMwc2muRoO0sqsmsuwj77cXkWq1I/hKzPWXThj?=
 =?iso-8859-1?Q?n6rwfF5QRfWvp6dLs8BulNu3Af6TWGtDTCvvNpfwoksQmNmJirM2PjolsM?=
 =?iso-8859-1?Q?wdl5+d/t27KOV+wRPEWv06gChxFm9EFlDqxDGzX1xE+vYzkJ+lxCb8gQqA?=
 =?iso-8859-1?Q?IWvmbAzZPB6V2vUyg9mE4ib9JuwmUlcbxdVPnheYD292eTw/U3GT2eSND3?=
 =?iso-8859-1?Q?/pZQM744C3eHCizibMn6hU3SruogSvnuIzDkd+cy6kM5MHVqtTqwrZpxRo?=
 =?iso-8859-1?Q?oZTzqAgDQ2RIkzl+qG4iCvkb+waKWWcKisVv4jBPUwB9bIkY6HlcptibLz?=
 =?iso-8859-1?Q?IeX8eDLHEFSFLvidw8xG5YD/UOW4ZNkAtsk38Npr+xZlVUu8Egm+OQidxz?=
 =?iso-8859-1?Q?yI2CeXFXEhsy3hN8je8L8lBHKNUm7swVYGoQvsWVyTMqZBQZzKYmKtXQ9f?=
 =?iso-8859-1?Q?HSYUHXSqayplDtZfvoYIqslOPH/ypp4Mnv1EGjC0cEPtvRfc0N2kGVA7s9?=
 =?iso-8859-1?Q?EeSggmFtZhVLallT/N78BD+HjP/YjHXhX8DT5Exm4zEIASAHOKwOwHzadz?=
 =?iso-8859-1?Q?j0DDMAHuILT7CIgicA7eHKanvF/nRK4ZiltbFxNik8NZYVuWItQC2qvsS7?=
 =?iso-8859-1?Q?QcTW2ONYiY8+pVOLn/2CagjsSfO8r+ZszTNd5WCm8kby2FLMAS/8bm6BMl?=
 =?iso-8859-1?Q?0X8kgsDb/j7NYqUq3eYxWpLidhYUvTgTq/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd8bf60-b6e3-4991-7443-08dc5ff7ab66
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 22:34:11.9756 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yN1ERTeOnKeB/kk7fO1tgj1dF2LHKSBM9BMtnP8JfB8CpexIgS+VH50m+5HKwW/P2nmASKcZnhAf85T+RRk7ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6805
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

On Fri, Apr 19, 2024 at 01:30:21AM +0300, Imre Deak wrote:
> On Thu, Apr 18, 2024 at 06:13:20PM -0400, Rodrigo Vivi wrote:
> > In the past, the noresume function was used by the GEM code to ensure
> > wakelocks were held and bump its usage. This is no longer the case
> > and this function was totally unused until it started to be used again
> > by display with commit 77e619a82fc3 ("drm/i915/display: convert inner
> > wakeref get towards get_if_in_use")
> > 
> > However, on the display code, most of the callers are using the
> > raw wakeref, rather then the wakelock version. What caused a
> > major regression caught by CI.
> > 
> > Another option to this patch is to go with the original plan and
> > use the get_if_in_use variant in the display code, what is enough
> > to fulfil our needs. Then, an extra patch to delete the unused
> > _noresume variant.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Francois Dugast <francois.dugast@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Fixes: 77e619a82fc3 ("drm/i915/display: convert inner wakeref get towards get_if_in_use")
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10875
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_power.c    |  6 ------
> >  drivers/gpu/drm/i915/intel_runtime_pm.c           | 15 +++++----------
> >  2 files changed, 5 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 048943d0a881..03dc7edcc443 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -640,12 +640,6 @@ release_async_put_domains(struct i915_power_domains *power_domains,
> >  	enum intel_display_power_domain domain;
> >  	intel_wakeref_t wakeref;
> >  
> > -	/*
> > -	 * The caller must hold already raw wakeref, upgrade that to a proper
> > -	 * wakeref to make the state checker happy about the HW access during
> > -	 * power well disabling.
> > -	 */
> > -	assert_rpm_raw_wakeref_held(rpm);
> >  	wakeref = intel_runtime_pm_get_noresume(rpm);
> >  
> >  	for_each_power_domain(domain, mask) {
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index d4e844128826..e27b2ab82da0 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -272,15 +272,11 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
> >   * intel_runtime_pm_get_noresume - grab a runtime pm reference
> >   * @rpm: the intel_runtime_pm structure
> >   *
> > - * This function grabs a device-level runtime pm reference (mostly used for GEM
> > - * code to ensure the GTT or GT is on).
> > + * This function grabs a runtime pm reference.
> >   *
> > - * It will _not_ power up the device but instead only check that it's powered
> > - * on.  Therefore it is only valid to call this functions from contexts where
> > - * the device is known to be powered up and where trying to power it up would
> > - * result in hilarity and deadlocks. That pretty much means only the system
> > - * suspend/resume code where this is used to grab runtime pm references for
> > - * delayed setup down in work items.
> > + * It will _not_ resume the device but instead only get an extra wakeref.
> > + * Therefore it is only valid to call this functions from contexts where
> > + * the device is known to be active and with another wakeref previously hold.
> >   *
> >   * Any runtime pm reference obtained by this function must have a symmetric
> >   * call to intel_runtime_pm_put() to release the reference again.
> > @@ -289,10 +285,9 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
> >   */
> >  intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *rpm)
> >  {
> > -	assert_rpm_wakelock_held(rpm);
> >  	pm_runtime_get_noresume(rpm->kdev);
> >  
> > -	intel_runtime_pm_acquire(rpm, true);
> > +	intel_runtime_pm_acquire(rpm, false);
> 
> This needs to stay a wakelock, so that the HW access in
> release_async_put_domains() will not lead to a wakelock not held assert.
> Only the above assert_rpm_wakelock_held() needs to be changed to
> assert_rpm_raw_wakeref_held().

hmm I see. That was actually my first attempt here, but then went down
to check the intel_runtime_pm_acquire and got confused and ended up
trying to convert everything... will resend it right now.

Thank you!

> 
> >  
> >  	return track_intel_runtime_pm_wakeref(rpm);
> >  }
> > -- 
> > 2.44.0
> > 
