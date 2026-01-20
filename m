Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKEsIR+hb2nrCgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:37:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9D3463DC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1F510E5A7;
	Tue, 20 Jan 2026 13:58:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ky/C8GBS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3283B10E0E3;
 Tue, 20 Jan 2026 13:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768917483; x=1800453483;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LAeJ33N34V3xiu6JkTytHTFPgJIClqzTw/4ydKpsr6s=;
 b=Ky/C8GBSbqssX7uT4MZTzQNHHtY+2Y87ifugTenSBg23iZKIxEKdcNQ0
 OOSLie1tWi8PViPKvqvVG247YISBCWi4Aodzf2pGfbnVPyf4BNE8CP1UX
 72c+0Xq1MSvbJ8p0tddrruFYPWo+JO0wodBdInd507MMjO+Fs2YOi2nQp
 1rpIE2r6AN1rmEBR6idxpZcjrvL+4oIJjtW3Vbh9u4MkQ99DB7J2p00BW
 jqUYMDBM5aBA0RS/cY93sbBkcK0RrB4wLkEDww/IzooTgup13KRBXxFRe
 Qxl4vla8/98GJOS79FZVRc9r7eXclf6ghAhu3A3Ah0V7rdA6nuzr1ZzIk g==;
X-CSE-ConnectionGUID: 8dpNLzNuRpuaBNw0/AoM7Q==
X-CSE-MsgGUID: R99kkLQWQ9eCxGm+kUzvSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69137739"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="69137739"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 05:58:02 -0800
X-CSE-ConnectionGUID: pu2G1CHxS2ylkP+gmyUJMg==
X-CSE-MsgGUID: 9BX8pWuVTpu1X95FFbKA0w==
X-ExtLoop1: 1
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 05:58:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Mika Kahola <mika.kahola@intel.com>, Suraj
 Kandpal <suraj.kandpal@intel.com>, imre.deak@intel.com
Subject: Re: [PATCH v3 1/3] drm/i915/pps: Enable panel power earlier
In-Reply-To: <36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260116085455.571766-1-suraj.kandpal@intel.com>
 <20260116085455.571766-2-suraj.kandpal@intel.com>
 <36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com>
Date: Tue, 20 Jan 2026 15:57:56 +0200
Message-ID: <7c7b6afb4fdb0c4259a20a6fd847f66f5c9dbb17@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 1E9D3463DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 20 Jan 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 16 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> From: Mika Kahola <mika.kahola@intel.com>
>>
>> Move intel_pps_on() to intel_dpll_mgr PLL enabling
>> .enable function hook to enable panel power earlier.
>> We need to do this to make sure we are following the
>> modeset sequences of Bspec. This had changed when we
>> moved the PLL PHY enablement for CX0 from .enable_clock
>> to dpll.enable hook
>
> So I really hate this.
>
> Yeah, maybe it follows the spec now, but what connection does the DPLL
> manager have with the panel power sequencing?
>
> Absolutely nothing.
>
> The DPLL manager has no business calling PPS functions.
>
> Currently only the g4x and DDI encoder code does PPS power calls, and
> they're the only ones who should manage PPS.
>
>>
>> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>
>> v2 -> v3: 
>> - Rather than splitting the PHY enablement sequence, enable PPS
>> earlier (Imre)
>
> Please point me at the review comment. I couldn't find anything that
> would suggest moving the PPS calls to the DPLL manager.
>
> Please let's not do this.

Cc: Imre

>
> BR,
> Jani.
>
>
>>   
>>  drivers/gpu/drm/i915/display/intel_ddi.c      | 6 ++++--
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 5 +++++
>>  2 files changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index cb91d07cdaa6..1784fa687c03 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2653,8 +2653,10 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>  	/* 3. Select Thunderbolt */
>>  	mtl_port_buf_ctl_io_selection(encoder);
>>  
>> -	/* 4. Enable Panel Power if PPS is required */
>> -	intel_pps_on(intel_dp);
>> +	/*
>> +	 * 4. Enable Panel Power if PPS is required
>> +	 *    moved to intel_dpll_mgr .enable hook
>> +	 */
>>  
>>  	/* 5. Enable the port PLL */
>>  	intel_ddi_enable_clock(encoder, crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> index 9aa84a430f09..b5655c734c53 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> @@ -40,6 +40,7 @@
>>  #include "intel_hti.h"
>>  #include "intel_mg_phy_regs.h"
>>  #include "intel_pch_refclk.h"
>> +#include "intel_pps.h"
>>  #include "intel_step.h"
>>  #include "intel_tc.h"
>>  
>> @@ -4401,6 +4402,10 @@ static void mtl_pll_enable(struct intel_display *display,
>>  	if (drm_WARN_ON(display->drm, !encoder))
>>  		return;
>>  
>> +	/* Enable Panel Power if PPS is required */
>> +	if (intel_encoder_is_dp(encoder))
>> +		intel_pps_on(enc_to_intel_dp(encoder));
>> +
>>  	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
>>  }

-- 
Jani Nikula, Intel
