Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iP0xG0m4y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:04:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2025F369432
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402BE10E950;
	Tue, 31 Mar 2026 12:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g45qxzca";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E4C10E93F;
 Tue, 31 Mar 2026 12:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774958659; x=1806494659;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eVbKK9P/ZjNfG0d8Ww4F4PICvtd6nYMwEjCbOQT5PQw=;
 b=g45qxzcalxvnqdIcXyZ287Cz6+k9tU3BKdWxM4LwMfp6IsaRNO8vifIb
 1uoS7ULVVQDtH6Qd/r2wi7eDdxHIXUgL4zadpOahRhDn3aGsmRI+Hf/jS
 ihCcczW+KjC+uL7flHYMcaWoIdPr9a/rNKl2pw8jbrvFGxtEDH0tVYvHR
 QYv5gNCYeyJr+ILkf0CDe0imaywX5xeOJYzj0LfUm3K+9ln6WRUzLfCvj
 341M//mCSfo2wyIrDgNyjvM2o2G9fXjqZKDahFfaVqCN479LtHzJh8PcJ
 IYylDG2QDYYRdGCeri/Xc8tdLQu1n0V5xaEKKzZXw1Tr335D98Vbm12Fb Q==;
X-CSE-ConnectionGUID: XPAxoKH9SzG1U4rOhHY1eQ==
X-CSE-MsgGUID: FFR2QthEQf2xExFV3pjirQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87360476"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87360476"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:04:19 -0700
X-CSE-ConnectionGUID: 7M44nmx6SL+muyqlXysXmA==
X-CSE-MsgGUID: Hscey7qSQaSx347W73YDDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="264284353"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:04:17 -0700
Date: Tue, 31 Mar 2026 15:04:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 15/19] drm/i915/psr: Program Panel Replay CONFIG3 using
 AS SDP transmission time
Message-ID: <acu4Pq1-3UnIDlf2@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-16-ankit.k.nautiyal@intel.com>
 <acrG2DjG2u0qMb-A@intel.com>
 <e3914ce8-b31b-41c0-b190-369b8c1eb5ab@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e3914ce8-b31b-41c0-b190-369b8c1eb5ab@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2025F369432
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 05:28:51PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/31/2026 12:24 AM, Ville Syrjälä wrote:
> > On Mon, Mar 30, 2026 at 09:36:52AM +0530, Ankit Nautiyal wrote:
> >> Panel Replay requires the AS SDP transmission time to be written into
> >> PANEL_REPLAY_CONFIG3. This field was previously not programmed.
> >>
> >> Use the AS SDP transmission-time helper to populate CONFIG3.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
> >>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >> index ca054135ca30..34b0993d9b1d 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> @@ -783,7 +783,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
> >>   				      const struct intel_crtc_state *crtc_state)
> >>   {
> >>   	struct intel_display *display = to_intel_display(intel_dp);
> >> -	u8 panel_replay_config[2];
> >> +	u8 panel_replay_config[3];
> >>   	int ret;
> >>   
> >>   	panel_replay_config[0] = DP_PANEL_REPLAY_ENABLE |
> >> @@ -792,6 +792,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
> >>   				 DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
> >>   				 DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
> >>   	panel_replay_config[1] = DP_PANEL_REPLAY_CRC_VERIFICATION;
> >> +	panel_replay_config[2] = intel_dp_as_sdp_transmission_time();
> > PANEL_REPLAY_CONFIG3 0x11a
> > ...
> > PANEL_REPLAY_CONFIG1 0x1b0
> > PANEL_REPLAY_CONFIG2 0x1b1
> >
> > So apparently we can't do the burst write for all three :/
> >
> > Looks like 0x1b2 is not used for anything so don't really understand
> > why it wasn't added there. Oh well.
> 
> 
> Oops! My bad. Thanks for catching this blunder.
> 
> I would also move the definition of PANEL_REPLAY_CONFIG3 above the 
> PANEL_REPLAY_CONFIG.
> 
> I guess I didn’t pay any attention on the offset at all, and assumed 
> this would follow PANEL_REPLAY_CONFIG2 :(

Yeah, I did the same mistake when reading the previous version and
suggesting the burst write. But at least we can still do the burst
write for PANEL_REPLAY_CONFIG1+PANEL_REPLAY_CONFIG2, so my suggestion
wasn't entirely wrong :)

> 
> Will be careful and will not repeat this again.
> 
> 
> Thanks,
> Ankit
> 
> >
> >>   
> >>   	if (crtc_state->has_sel_update)
> >>   		panel_replay_config[0] |= DP_PANEL_REPLAY_SU_ENABLE;
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
