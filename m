Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79448A3C2DB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 15:59:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F300D10E827;
	Wed, 19 Feb 2025 14:59:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mj8uKOSS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B9C10E835;
 Wed, 19 Feb 2025 14:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739977180; x=1771513180;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4bYh2WFXhCbK25VJO4idmgEQ6zdORGwd3n3+RKoCJ38=;
 b=mj8uKOSSeL+Tc4SzNFmzFO5GyARXm1Zq0GTy7miNtHtn1kz6lt0clKou
 D+LeE8q1elWp1rHWqfy1JMsLy7nSw7+dglAlli4vTrcNqEqHjmddWvP6J
 i3duS6DTpfsw384ujmwQSM8/fDQpUSBTgpmpqjkdMtOEEkpHjex+JxyBW
 TmKucbKebnqv40sZE27puVLxrMyO0a9TtWalXoECFACQc4QBpGIlc5/uA
 ug0eNBYx17B6puibP2NmUOhd32iofUdRDvUpKbqFEYuklXMl9PnOrx0PF
 LnRE/4eVapqs0NxAKdk++7cVFCKaHW7E09N6MS+yIfG7ZoDtZjyvQGoGZ g==;
X-CSE-ConnectionGUID: ANGYVQ5LQa2V7NhZoJjPoQ==
X-CSE-MsgGUID: TTcMRAKVTSGZQJdeo5A1mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44484537"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44484537"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 06:59:39 -0800
X-CSE-ConnectionGUID: fH8fKsSFT5+CSyQLSbbpUg==
X-CSE-MsgGUID: Dv6UNbRyQ4ygoHBMMN7xJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="114933685"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Feb 2025 06:59:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2025 16:59:07 +0200
Date: Wed, 19 Feb 2025 16:59:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 08/19] drm/i915/dp: Avoid vrr compute config for HDMI sink
Message-ID: <Z7Xxu9repjszkKjb@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-9-ankit.k.nautiyal@intel.com>
 <Z7N8h_4fKfiGZPIc@intel.com>
 <6c2768bf-e4d4-4da8-bbf0-2d21ff241050@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c2768bf-e4d4-4da8-bbf0-2d21ff241050@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Feb 19, 2025 at 06:23:01PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/17/2025 11:44 PM, Ville Syrjälä wrote:
> > On Fri, Feb 14, 2025 at 05:41:18PM +0530, Ankit Nautiyal wrote:
> >> Currently we do not support VRR with HDMI so skip vrr compute
> >> config step for DP with HDMI sink.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
> >>   1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 9ed7d46143e9..bdf53d255d91 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -3199,7 +3199,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
> >>   	if (pipe_config->splitter.enable)
> >>   		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
> >>   
> >> -	intel_vrr_compute_config(pipe_config, conn_state);
> >> +	/*
> >> +	 * VRR via PCON is currently unsupported.
> >> +	 * TODO: Add support for VRR for DP HDMI2.1 PCON.
> >> +	 */
> >> +	if (!intel_dp_has_hdmi_sink(intel_dp))
> >> +		intel_vrr_compute_config(pipe_config, conn_state);
> > I thought the AS SDP was pretty much for this, but I guess
> > we're missing somehting else still?
> 
> For PCON AS_SDP with the required fields is fine, but still some work 
> remains like parsing HFVSDB fields for VRR capabilities for HDMI2.1.
> 
> However this doesnt seem to be the correct place to handle this, as we 
> still need to use fixed timings when PCON with HDMI2.1 panel.

Right, so this should rather be checked in
intel_vrr_is_capable().

> 
> I will drop this patch for now.
> 
> 
> Regards,
> 
> Ankit
> 
> 
> >
> >> +
> >>   	intel_dp_compute_as_sdp(intel_dp, pipe_config);
> >>   	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> >>   	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
