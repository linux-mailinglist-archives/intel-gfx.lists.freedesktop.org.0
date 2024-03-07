Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95CE87527B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 15:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4845810F368;
	Thu,  7 Mar 2024 14:55:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LwsWbJ/z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB72810F368;
 Thu,  7 Mar 2024 14:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709823355; x=1741359355;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=QhAgHdAlbZWszsrrCpj7c6qbU4v1pXLgcirsYtHSJvs=;
 b=LwsWbJ/zUmI+WakjruPFAwod0sdC+5SfJBzCg8t4j0f16/83HiWmdD5r
 1P13IHZFoMEW2k9tDoRB6LFchzEXEjdqK3yGnSGrSTnX4xv7ld4urZA0S
 Y7nO+/VpI1fDzuSdccNFapS5XRBMTkRRCKSzH24fdmTb3zQD2yKyXCX2h
 0pKTcZ+cqvmLOKRg5HadvKy39jXj6vx6RVt1nLik1iasNZXPJGs8kEvsT
 djf5UzQZPOytNr0bfkkDtrHh4mp0WDhZpAiDJ7XugCtQe914bqahVvk+Z
 55o+GFNQ2wySujuMQQWj+npuUUqf3xasfNfjvDIiBsuXNYd8AqzfzHC6E A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="7435000"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="7435000"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 06:46:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="10105187"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 06:46:29 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 06:46:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 06:46:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 06:46:28 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 06:46:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqDXzk8TCuwFa7OCI7/HCtnfLxAbeE93sByJx4HQ16xCs3O2N13BpnPQOTqhTMnpH0A6lK1QKRI7X+3Sl56v41ohug+KGVs+8JELUbMYhiu5AWCrNlR71BRLYljcFrYuWybg4zkdA6GO5uJGOIyMkgnvcXmLq3xOYSjyxylz3bT4qrx7d3kk+679OBDXf2cgYzC83DAI2/UNhIieRRblYiOroRJEB+BJsEz1RUgv2isjvhPtZI0/zVMFWjOc23QQclIc1WM4U6u5zWcK5m2XG9HmeDbkXKMtVHLR69JBMy5fVlM3pN2siKV/HTIASMpJZ4KKwRadKWVWDnfqmf3nZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U1x0Re4OiB3fFlutAKwkkxl66QO5J9Zdr/5YPtCY5Mo=;
 b=i4bAXpuqKozaRiPRH/ot0AALAihukjNyFWeBI7JkorPzTgBCLQUjPimIVDMp808NTJPoawIgYhKknqboapFBAahcwQ7bSnfH8+Bxwu9pZfgGYy8R3wO7HmV26D6THrhlc+92pwx+9PRdBLTuffxV0SNmFM+nRu9LP2uVtVtWnWA3nK3jMnhdNOjjanbfglWkTfbSUfXppRj+1TtN4pdaJmcM9caa08+lpZGDPexCkY3mEpAc1M6fYXy68274XtOJwjB266G4i1awozC4MfpF8LGJhtaIjpcs8dXyJWk2ZwqT/IftIlNmuXSZBH34dW6IxW/R2WeT/OBO5oOAavHj4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.9; Thu, 7 Mar
 2024 14:46:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 14:46:26 +0000
Date: Thu, 7 Mar 2024 09:46:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <ZenTPngZUhMx5V4z@intel.com>
References: <20240307001554.162153-1-rodrigo.vivi@intel.com>
 <ZekKtpIobqZzyvDR@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZekKtpIobqZzyvDR@intel.com>
X-ClientProxiedBy: SJ0PR03CA0299.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6477:EE_
X-MS-Office365-Filtering-Correlation-Id: ef9b0895-5023-4d1c-e8a4-08dc3eb55d78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4O4wn5Jlqz1o1LNDq3Qru49MVYarnLbqzzq+jPrOZ5nzPODKym2Z9Ngx37yhkhyB/f/vCMSTwwBaIT84CGrPsbbwdvb7RILJ5apVGPWfwIoh9aTTHpQ/tYL5tOlJcl52zaRgOO3JiaJ7I0DoD6SSeLC5V6h0flfq9c9AfBiXN+spOpXs/tX8Cg7he0NTxYg0pyGkK5bEPAai0sLDlb94agLHe38T2n0LUo8v3bPvCJO58CMqpoQ6B7lFRtVcia+R/G5SyennfSXyeTkQa0iErYQQngdunz/U6aFRIHn7Tr48ahMLn4b38HswTDLX0572pahUOwKbY3p1Dusukk4smM4qQxt9yIKfLUere2RVNuZPuEgLaPSAhjqp7Qev/KGboa95gTF4IGHd1DjU7QRDoFUEWGMIozQSTzcxRN1YIgwygGGIXDDeZq0iNZCsHg50R3iZR9VT7gZ3hR9+VOa0eSncQ6EI31kmvWBoDqgHRExGrhf8iZ1bBLOeE71gR+QIXFmo1Pev1YTdcjlTVIHyhP1LlpEpbQgTYVkpsi53bkr93yjqoj0ImQXim+jgRWoCgREUgjoZYA8wHMot1kQdxuhJy77YYcv+WSN5WYnIAkn3dIJtPyX8YrUHzwlqkZlbg4LMtr453JmAjy3wkysymR7XlvK7AjqBEmTBQ1hLIG8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?y9dn0JqCibCUNGq5s3AGg+iD1wf6xbSZdqEVonULZwiJW3Tn3YePaKVgnT?=
 =?iso-8859-1?Q?5OCZah0lGYI13d0CRRdO1QtwLD14l0UPwWE/Xw+I7uMP/6nTxFFg27CxIB?=
 =?iso-8859-1?Q?L+YQpU+H8CJy80rD4YIIRquYVkusNBLXLIq2lQjcanfMXVRFNRlC6A6EjF?=
 =?iso-8859-1?Q?xqxpPq9spZUlnxjO1VGcu0A8RcgXLPQ5bpX+wdV1cGJJFss/oHdOdQKwuv?=
 =?iso-8859-1?Q?pWSta84T9x3Myfe4yclSxzAoUR5CQa0/4Yk4zlxZhJZZwhobPLKNjq1LNG?=
 =?iso-8859-1?Q?LGouMcJJOEjpipEhoLZKD/a0YgP/3cLi9Hi3Me5soZAqrR0i4gGfjhelXX?=
 =?iso-8859-1?Q?tVPSYyJBP6RdrfXspOsEfAv80Eg1PuVyb0LJnp62ksiABsOdS0NoIHf27u?=
 =?iso-8859-1?Q?VnSVcGYzbM4kthWQrOCkrkN0zhfOUEr8+Zcaj/oHSHAh9Cmx3jIMDB0pr/?=
 =?iso-8859-1?Q?m6JesCzMSDOgRquX+gV2VG3j1edP0dbjIgQHyZHQ9N6CqqPs0QhjytLn4q?=
 =?iso-8859-1?Q?aDfxsGIxOwgZfrhm+cn2kswKVtQ6UQ9af+jWWDTqSJmrP6Sn2at6ALB30M?=
 =?iso-8859-1?Q?VyamIOoJJB7TMfTr0G+yzaKNUCIYEc+EHbpDMpKlp+ePFqdIeY/8nKyI5p?=
 =?iso-8859-1?Q?XRwnRbeKQy98CqJdKhs5/0F9tyGnQVp8RrCbIUM/rvUcxgmyV7RO5gsaih?=
 =?iso-8859-1?Q?KvELEo6zLXW1/ANEs92YCXm3xhcIjft30XcMqyrBf8uKg4DTvvt8oyMxUv?=
 =?iso-8859-1?Q?5ipAwR5dUJQixUSi8aXcmQMBspvzoSWiG+uzO4YSVAnkWzsrhQX51xtbju?=
 =?iso-8859-1?Q?r8Yv5R0knkN07pHUwHuh5Zd6SepsYQca4Wa1Bft356XDeYq69QcmE7fXhT?=
 =?iso-8859-1?Q?94ob+STi4Ct+ykq8+Ferfh0Z6HMXImIfNbuLtMmPN/LETX3SXMun+Vg1Xl?=
 =?iso-8859-1?Q?jzZ8UV+Ep9aUVws9dgMXonhcH7jncBQSAxNBz6uwYgIqW+sk0oX1ag+n1b?=
 =?iso-8859-1?Q?AK8dQscEyncz9iMIh1BiO/QBBTbXsFO3lodo/D7VRs7xAeRcGYNaCoW8bp?=
 =?iso-8859-1?Q?w/RVzpdzuzf4GXhllT09b709ksQKsogDnNrLXPYkE2IT2ck/QN9S9QcGf/?=
 =?iso-8859-1?Q?RLgvDoz/6UTuKrFAFHP1+UG8TJM816yLpOwXhgmj4LITHCHlEoXRAAJnHk?=
 =?iso-8859-1?Q?E+tFrBscPc9kIHA7SBBMCLlfE/QoTO2hyIWMfG2HkxN1oasYgnRlxCdNT0?=
 =?iso-8859-1?Q?fa1ZABjPI8628XiRWtKV5fUTwNpIr3G/dDNZ8oCWDDZCBB54Uf3OJecy8r?=
 =?iso-8859-1?Q?cP9rRI1TwccYDlcGQefPZyvzEFBaIS9nO9xOMJW10RIuCvoPeIoueedVKA?=
 =?iso-8859-1?Q?usR9jJfLJF/0v22l9aj74PIIhc8gcPuLqNzlo3oTzrCErY3XTYhpGSN07V?=
 =?iso-8859-1?Q?lRFLXxrnXO1XmfNrkr5c6IyUYnRRbRwiB4f/9G4oSNQWQl/oqWzx6UynrK?=
 =?iso-8859-1?Q?YlE6A8u1vjFcaLOHdY8QZDJa56wckN6xUzloO9uITCUH7pEX0fs1PpjMri?=
 =?iso-8859-1?Q?zgmryw0iPdLGa/YBH5pn/g17vOgNfi/Fco1zcXhELWL6p+02o+Ww1u9MAs?=
 =?iso-8859-1?Q?vn4P+TwaDWB84CDt6IFbJo74s9+cotQq4m?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef9b0895-5023-4d1c-e8a4-08dc3eb55d78
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 14:46:25.9977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ILuv8ZdIWyJHUimaUXtKz32Z/dhZpPhwm5S7lFzMPKfTa9Q4pYfrK+uyojHGGCP+CvitK5Ohcm+MZK6XTEGEjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
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

On Thu, Mar 07, 2024 at 02:30:46AM +0200, Ville Syrjälä wrote:
> On Wed, Mar 06, 2024 at 07:15:45PM -0500, Rodrigo Vivi wrote:
> > This patch brings no functional change. Since at this point of
> > the code we are already asserting a wakeref was held, it means
> > that we are with runtime_pm 'in_use' and in practical terms we
> > are only bumping the pm_runtime usage counter and moving on.
> > 
> > However, xe driver has a lockdep annotation that warned us that
> > if a sync resume was actually called at this point, we could have
> > a deadlock because we are inside the power_domains->lock locked
> > area and the resume would call the irq_reset, which would also
> > try to get the power_domains->lock.
> > 
> > For this reason, let's convert this call to a safer option and
> > calm lockdep on.
> > 
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 6fd4fa52253a..4c5168a5bbf4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
> >  	 * power well disabling.
> >  	 */
> >  	assert_rpm_raw_wakeref_held(rpm);
> > -	wakeref = intel_runtime_pm_get(rpm);
> > +	wakeref = intel_runtime_pm_get_if_in_use(rpm);
> 
> On first glance that sequence looks like complete nonsense, and
> thus likely to be cleaned up by someone later.

indeed. as many other things around i915's rpm infra.

> 
> To me _noresume() would seem like the more sensible thing to use
> here.

well, same effect actually. we would use the _noresume if we
put it without checking if the usage counter was bumped.
However, since our put takes the 'wakeref' into consideration
anyway, let's use this one that is more straight forward for
our current code.

> And even that might still warrant a comment to explain
> why that one is used specifically.

In general we grab this inner references when we want to ensure
that we have full control of the situation, i.e. ensuring that the
other reference which we are relying are not dropped while we still
have some operation to do. It is safe to have and cheap, so that's okay.

> 
> I'm also confused by the wakeref vs. wakelock stuff in the runtime pm
> code. Is that there just because not all places track the wakerefs?
> Do we still have those left?

yeap, those are very nasty and not documented. But looking a bit of
the history and the documentation about our get vs get_raw, it looks
like wakelock only exists so gem/gt side could ensure that gem/gt
side itself is holding the reference, and not relying on some reference
that was actually taken by display.

One thing that crossed my mind many times already is to simply entirely
remove the runtime_pm from display and do like other drivers simply
checking for crtc connection at runtime_idle.

But then there are places where current display code uses the rpm
in use to take different code paths, and also all the possible impact
with the dc states transitions and other cases that I always gave up
on the thought very quickly.

But you are right, we will have to comeback and clean things up
one way or another.

But I wish we can have at least this small change in first so I don't
get blocked by xe's lockdep annotation and I also don't have to
workaround the annotation itself.

> 
> >  
> >  	for_each_power_domain(domain, mask) {
> >  		/* Clear before put, so put's sanity check is happy. */
> > -- 
> > 2.43.2
> 
> -- 
> Ville Syrjälä
> Intel
