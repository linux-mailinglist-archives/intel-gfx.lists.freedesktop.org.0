Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE0hEIfpr2nkdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:51:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952FA248D91
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330FE10E6A8;
	Tue, 10 Mar 2026 09:51:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1xSET+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3DD610E6A7;
 Tue, 10 Mar 2026 09:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773136258; x=1804672258;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SSKwr7CadpJlH1OV1lf4EFqP68179Agh/IndHFJvJWU=;
 b=f1xSET+UjcpBPgit1B2Vmj0kxb1uGW1oqmzKlIXg9iKL9l17GuBv/UoK
 SrNjJ3mmOYGXW6A1/8tA7cGomPsjRHfESUsrWMysQ2tWOmEYYiJ+NEgF0
 u9a8SC9fUFVICgEdO0p+ZAZmEkKDhgha1X1KsD0/kcP/Ga7M6r7fFIUbb
 P1S9YSYehaZXOC1cMeCaZr4z/51E2H8rYqf491cDyCK5fc2B+07m6bQ86
 bCu8/LG7jjLxCGqFIqY/2k3sCtnRMe82SaoqPI6uPfXuv2eRI7LgG/WX6
 JUu+vng2kZz3MriJ+8kzzT6DjVU7Wm2Hp29rZpsfBQCYvKd++6Pmv4HHE Q==;
X-CSE-ConnectionGUID: IPQ0kf8LTo2WGk6TjY63Kg==
X-CSE-MsgGUID: CIiRlWyiR9K9VMCW7El1hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="85533620"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="85533620"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:50:58 -0700
X-CSE-ConnectionGUID: y3IlWAmoSPu/jXGpG6TfDQ==
X-CSE-MsgGUID: eLtTKuzNQneB8COM/dOOdQ==
X-ExtLoop1: 1
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.33])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:50:56 -0700
Date: Tue, 10 Mar 2026 11:50:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com, swati2.sharma@intel.com
Subject: Re: [PATCH] drm/i915/dmc: Update PIPEDMC interrupt mask
Message-ID: <aa_pfV7gz8r-QVl3@intel.com>
References: <20260310083047.2593048-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260310083047.2593048-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: 952FA248D91
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.52 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.83)[subject];
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 02:00:47PM +0530, Dibin Moolakadan Subrahmanian wrote:
> >From display version 35 onwards PIPEDMC_ATS_FAULT and
> PIPEDMC_GTT_FAULT interrupt bits are no longer defined.
> 
> Update the interrupt mask to drop these and
> enable the PIPEDMC_ERROR interrupt.

That's two different things in one patch. Please split
properly.

> 
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index c3b411259a0c..e60f1f977070 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -509,6 +509,10 @@ static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
>  
>  static u32 pipedmc_interrupt_mask(struct intel_display *display)
>  {
> +	if (DISPLAY_VER(display) >= 35)
> +		return PIPEDMC_FLIPQ_PROG_DONE |
> +			PIPEDMC_ERROR;
> +
>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>  	 * triggering it during the first DC state transition. Figure
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
