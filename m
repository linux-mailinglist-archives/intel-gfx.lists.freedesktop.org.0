Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAtnMrII82lswwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:45:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F172F49ECE0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8076B10F23D;
	Thu, 30 Apr 2026 07:45:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNevKTVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BE910F23D;
 Thu, 30 Apr 2026 07:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777535151; x=1809071151;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NYz7/i4cuHthVmL/nx0n1Myc1mam1yqQXFVjzhXC/UA=;
 b=aNevKTVGAPI0ak6GjdOJFkV1y8eP/vbTd/y6oeV453/ijZsnKML9ycGp
 q7d02vS984vqZ9QmWAKMUHe9uL+B2or7yLS0OdhtkAg1IfK7rhsKIU0eJ
 qhiT5t09KIPTM1SBUVEx19VhObygzbGgL6J0YfzG6UgQHFjxRFble2X6s
 wZwg9Xyjbwc+7x+AsEXIozrtperl5sGoWxRnYWpAd86yvjnPWAT0x0AVf
 nFkbPDjdmBV+XNM03lqc1Z+4nRWRMbn+G9pO4/vNvTnl3QH07iETTSbb7
 49Sqt3QAn9SlFT86DwEyiOPXxQXpHYiAT9zA37fTdwtnMkTH0xeKtkPy4 A==;
X-CSE-ConnectionGUID: iMhiZSCxS+u1oxNg/F8d/Q==
X-CSE-MsgGUID: tvV5/kBtRImc6Y8iuoLHyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82333841"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="82333841"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:45:51 -0700
X-CSE-ConnectionGUID: yH5spatETfi3UJGFcK7TeQ==
X-CSE-MsgGUID: BKTk3nZCTZigLesOE+TyGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="239496312"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:45:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: bitey <s.mavlenkov@mail.ru>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com
Subject: Re: [PATCH] drm/i915/dp: Fix link retrain loop on pre-gen8
 platforms with DP adapters
In-Reply-To: <20260430030846.29373-1-s.mavlenkov@mail.ru>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260430030846.29373-1-s.mavlenkov@mail.ru>
Date: Thu, 30 Apr 2026 10:45:46 +0300
Message-ID: <3d70412ad467067f492f9b6975c1fb7d8773e2dc@intel.com>
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
X-Rspamd-Queue-Id: F172F49ECE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[mail.ru,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

On Thu, 30 Apr 2026, bitey <s.mavlenkov@mail.ru> wrote:
> On Ivy Bridge (and other pre-gen8 platforms), active DP-to-HDMI protocol
> converters such as the Chrontel CH73111 trigger an infinite link retrain
> loop on kernels 6.x+. The monitor connected through the adapter goes
> black and recovers approximately once per second, eventually causing
> system instability.
>
> Three changes introduced in the i915 DP stack combine to cause this:
>
> 1. intel_dp_stop_link_train() now automatically schedules a post-training
>    link check via intel_encoder_link_check_queue_work(). The Chrontel
>    adapter reports non-standard DPCD link status, which causes the check
>    to fail and trigger a retrain, looping indefinitely.
>
> 2. intel_dp_needs_link_retrain() unconditionally returns true when
>    seq_train_failures > 0, bypassing the actual DPCD link status read.
>    A single marginal training attempt permanently marks the link as
>    needing retrain.
>
> 3. intel_dp_short_pulse() forces LINK_STATUS_CHANGED on every short HPD
>    for all platforms, causing unnecessary link checks that initiate the
>    retrain cycle on adapters that generate frequent short HPDs.
>
> Fix all three by gating the new behavior behind DISPLAY_VER(display) >= 8,
> restoring the 5.15-era behavior for Ivy Bridge/Sandy Bridge and earlier.
> These platforms use the older g4x DP path and do not benefit from the
> aggressive post-training link monitoring.
>
> Tested on Intel HD 2500 (Ivy Bridge, device ID 0152) with a Chrontel
> CH73111 DP-to-HDMI adapter driving a 1920x1080 display over 2 lanes
> at HBR (270 MHz).

Please file a bug over at [1] with the full dmesg reproducing the
issues, and reply with the link to the bug.

Thanks,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


>
> Signed-off-by: bitey <s.mavlenkov@mail.ru>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c              | 8 +++++++-
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 3 ++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ORIGINAL..FIXED 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5676,6 +5676,7 @@ static int
>  intel_dp_read_link_status(struct intel_dp *intel_dp,
>  			  u8 link_status[DP_LINK_STATUS_SIZE])
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	int err;
>  
>  	memset(link_status, 0, DP_LINK_STATUS_SIZE);
> @@ -5712,7 +5713,8 @@ static bool intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  	if (intel_dp->link.retrain_disabled)
>  		return false;
>  
> -	if (intel_dp->link.seq_train_failures)
> +	if (DISPLAY_VER(display) >= 8 &&
> +	    intel_dp->link.seq_train_failures)
>  		return true;
>  
>  	/* Retrain if link not ok */
> @@ -5965,6 +5967,7 @@ static bool
>  intel_dp_short_pulse(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	bool reprobe_needed = false;
>  	u8 esi[4] = {};
>  
> @@ -5988,7 +5991,8 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
>  	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
>  	 * or intel_dp->link.force_retrain for DPCD_REV >= 1.2
>  	 */
> -	esi[3] |= LINK_STATUS_CHANGED;
> +	if (DISPLAY_VER(display) >= 8)
> +		esi[3] |= LINK_STATUS_CHANGED;
>  	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
>  		reprobe_needed = true;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index ORIGINAL..FIXED 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1154,7 +1154,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  
>  	intel_hpd_unblock(encoder);
>  
> -	if (!display->hotplug.ignore_long_hpd &&
> +	if (DISPLAY_VER(display) >= 8 &&
> +	    !display->hotplug.ignore_long_hpd &&
>  	    intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
>  		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;

-- 
Jani Nikula, Intel
