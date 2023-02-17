Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C895369AC32
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 14:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98E410EFC6;
	Fri, 17 Feb 2023 13:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F8610EFC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 13:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676639573; x=1708175573;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=grkLAKfpKBwtCxIvoAVvxTiOUXLiOoEhdj5yhJ/xD20=;
 b=ZUGM10mZzyMjnq6Apz/kFwl2T+qDWFPymzFInn8Hl3GTe2OdcdsNzvyi
 SkGIvyNs9gvvHHvUoAresFNpycBFVagk6RBv18ivmiEsTrKJdBeTJBDpv
 ijA4mV29vmZulCZewDQG4N+UWL8DnnxG2fffJxClN52GONw6HWYIE2ktu
 rHbXrT0g7gELk2WAkmgSboiIqsjGga9jayeIDXq/jFUFD9HqiGRGh5cto
 lqdfC5Kdakg+ZyGAhlRq9l/knEoTLwr5BTlkSfRUqMdIkDz4OrOwLnBZI
 UZoMWxEE7cxDPbluEQcV9y1vFHq+OUKTPZ1ivW8vZiv6MLNgmqVfNQP7u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="333342401"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="333342401"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 05:12:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="670535430"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="670535430"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 17 Feb 2023 05:12:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Feb 2023 15:12:49 +0200
Date: Fri, 17 Feb 2023 15:12:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <Y+99Uc6KRznizZjA@intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <20230216231312.32664-3-ville.syrjala@linux.intel.com>
 <02f8d9ad-81bf-b176-4565-015dec53442e@intel.com>
 <Y+9s8+EuHTk5ZI0e@intel.com>
 <5fc93ec8-a51f-c28b-848d-825bed4d0b94@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5fc93ec8-a51f-c28b-848d-825bed4d0b94@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Fix platform default aux ch
 for skl
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 17, 2023 at 06:35:51PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/17/2023 5:32 PM, Ville Syrjälä wrote:
> > On Fri, Feb 17, 2023 at 03:15:59PM +0530, Nautiyal, Ankit K wrote:
> >> On 2/17/2023 4:43 AM, Ville Syrjala wrote:
> >>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>>
> >>> SKL/derivatives have DDI E but no AUX E, so we need to pick
> >>> another aux ch as the platform default. DDI E is more or less
> >>> the other half of DDI A, so we pick AUX A.
> >>>
> >>> In all other cases we should have a corresponding aux ch for
> >>> each DDI.
> >>>
> >>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 ++++++++++++--
> >>>    1 file changed, 12 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >>> index 57eb3ff187fa..96967e21c94c 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >>> @@ -739,10 +739,20 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
> >>>    	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> >>>    }
> >>>    
> >>> +static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
> >>> +{
> >>> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >>> +
> >>> +	/* SKL has DDI E but no AUX E */
> >>> +	if (DISPLAY_VER(i915) == 9 && encoder->port == PORT_E)
> >>> +		return AUX_CH_A;
> >>> +
> >> I guess we might need to fix intel_dp_aux_init also. Wont we have
> >> dig_port->aux_ch and intel_dp->aux_ch pointing to different things?
> > There is no intel_dp->aux_ch.
> >
> >> For example for SKL and DDI E, intel_dp->aux.name will be derived from
> >> dig_port->aux_ch i.e. AUX_CH_A but intel_dp->aux_ctl/data reg will still
> >> point to DP_AUX_CH_CTL/DATA_E.
> >>
> >> Am I missing something?
> > Everything is based on dig_port->aux_ch.
> 
> Yeah my bad. I think I misread and got confused. We indeed are using 
> dig_port->aux_ch, for getting aux_ctl/data reg.
> 
> I couldnt get the exact bspec mention for SKL not having AUX E, but SKL 
> Display connection Bspec:4217 throws some light, if I am not fully off.
> 
> Is this applicable to Canonlake too  (Bspec:14004) from Display 
> connection it does seem to have DDI E but no DP_AUX E?

There is no Cannonlake.

-- 
Ville Syrjälä
Intel
