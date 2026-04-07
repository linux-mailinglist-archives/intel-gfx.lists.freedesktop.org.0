Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHnBGbvS1Gl/xwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:47:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB933AC47B
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2D010E3A7;
	Tue,  7 Apr 2026 09:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XV2Zf2Oe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD0A10E3A4;
 Tue,  7 Apr 2026 09:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775555255; x=1807091255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ePdhWynRAro/K/JYahRklePNMDmq/8abTs02+Wo53PA=;
 b=XV2Zf2OeS53gJK90qxUJ6FCFnw3W3NMFl4/7buaRWB9eUq5jx/LsyfIx
 nW3v+fHqBRcTAWSMy585/a9jC1ZvZA0kdXcI5QZJbVNe+qQX3SwWQTofB
 RXZnwZXi0WmxHlMyij4nQmFE5uQyC2xkutApRejCFjd8J07Glmr7wYSRf
 SZbd/o9P2kmmhfao3Xz16moiK8nVKHmcsqP3kvd+mT4VQQSDb2Rhfa8Mb
 IfVuXz20iUuzLpLclhYbVkRrGB8gNAfCPxsriBEcd4ko6rnpClhsS3Jrl
 nCfKqtS9L27q9O7wsPbY5NInYs2hOthV1hZQg+9bFKHs6x43BqXoDMAvE g==;
X-CSE-ConnectionGUID: S9YXLSdaS6qFG8174iVIJw==
X-CSE-MsgGUID: xVarIol8T7CU21zFyLqKAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87965575"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="87965575"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:47:34 -0700
X-CSE-ConnectionGUID: isrcO/CuQpGV3ygzMcYFZQ==
X-CSE-MsgGUID: COEPjFc7R5iXiJ8s4HDAng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="223818048"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.84])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:47:33 -0700
Date: Tue, 7 Apr 2026 12:47:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/8] drm/i915: move SKL clock gating init to display
Message-ID: <adTSrRSRQvJqOvmR@intel.com>
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
 <20260331121608.1016333-2-luciano.coelho@intel.com>
 <DM3PPF208195D8D6D18797DF43D23B2AB3DE35AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <4c2ab7b05e665b3cca5a809917faf3b64d1ce7f5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4c2ab7b05e665b3cca5a809917faf3b64d1ce7f5@intel.com>
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
X-Spamd-Result: default: False [-0.72 / 15.00];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: EBB933AC47B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 10:58:13AM +0300, Jani Nikula wrote:
> On Tue, 07 Apr 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> +void intel_display_skl_init_clock_gating(struct intel_display *display)
> >> +{
> >> +	/*
> >> +	 * WaFbcTurnOffFbcWatermark:skl
> >> +	 * Display WA #0562: skl
> >> +	 */
> >> +	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS); }
> >
> > Not sure about this being moved here but I feel like this belong in
> > intel_display_wa.c see that it is a WA
> 
> A lot of intel_clock_gating.c is about workarounds, and I don't really
> care a whole lot about moving these to intel_display_wa.c at this
> point. It's much more important to move the display related things from
> i915 core to display.

I still think it would have been much easier to move the gt stuff out
from init_clock_gating to the proper place in the gt code. And then we
could have just moved the remaining things into the display code as is.
But people seem to prefer the hard way for some reason :)

-- 
Ville Syrjälä
Intel
