Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5C93D2F62
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 23:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2682F6ECCC;
	Thu, 22 Jul 2021 21:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B446EC2D;
 Thu, 22 Jul 2021 21:55:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211470659"
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="211470659"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 14:55:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="416096168"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 14:55:02 -0700
Date: Thu, 22 Jul 2021 21:55:00 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210722215500.GA22641@DUT151-ICLU.fm.intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
 <20210716201724.54804-51-matthew.brost@intel.com>
 <c0bd8e5c-784c-18cc-d724-f676dd3546aa@intel.com>
 <20210722213835.GA22352@DUT151-ICLU.fm.intel.com>
 <ebe8c917-c4b0-90a3-29df-030009cd7d51@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebe8c917-c4b0-90a3-29df-030009cd7d51@intel.com>
Subject: Re: [Intel-gfx] [PATCH 50/51] drm/i915/guc: Implement GuC priority
 management
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 02:50:24PM -0700, Daniele Ceraolo Spurio wrote:
> 
> <snip>
> 
> > > > @@ -1756,15 +1796,119 @@ static int guc_context_alloc(struct intel_context *ce)
> > > >    	return lrc_alloc(ce, ce->engine);
> > > >    }
> > > > +static void guc_context_set_prio(struct intel_guc *guc,
> > > > +				 struct intel_context *ce,
> > > > +				 u8 prio)
> > > > +{
> > > > +	u32 action[] = {
> > > > +		INTEL_GUC_ACTION_SET_CONTEXT_PRIORITY,
> > > > +		ce->guc_id,
> > > > +		prio,
> > > > +	};
> > > > +
> > > > +	GEM_BUG_ON(prio < GUC_CLIENT_PRIORITY_KMD_HIGH ||
> > > > +		   prio > GUC_CLIENT_PRIORITY_NORMAL);
> > > > +
> > > > +	if (ce->guc_prio == prio || submission_disabled(guc) ||
> > > > +	    !context_registered(ce))
> > > > +		return;
> > > > +
> > > > +	guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
> > > > +
> > > > +	ce->guc_prio = prio;
> > > > +	trace_intel_context_set_prio(ce);
> > > > +}
> > > > +
> > > > +static inline u8 map_i915_prio_to_guc_prio(int prio)
> > > > +{
> > > > +	if (prio == I915_PRIORITY_NORMAL)
> > > > +		return GUC_CLIENT_PRIORITY_KMD_NORMAL;
> > > > +	else if (prio < I915_PRIORITY_NORMAL)
> > > > +		return GUC_CLIENT_PRIORITY_NORMAL;
> > > > +	else if (prio != I915_PRIORITY_BARRIER)
> > > Shouldn't this be I915_PRIORITY_UNPREEMPTABLE?
> > > 
> > No, I915_PRIORITY_UNPREEMPTABLE is an execlists only concept.
> 
> then we need a
> 
> /* we don't expect umpreemptable submissions with the GuC */
> GEM_BUG_ON(prio == I915_PRIORITY_UNPREEMPTABLE)
> 

Actually this probably should < I915_PRIORITY_DISPLAY as we really want
pageflips to be high than any user context.

Matt

> or something, because that prio level would be assigned incorrectly
> otherwise.
> 
> Daniele
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
