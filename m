Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aG8wFmCNFWrUWQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:09:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8005D5505
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C900810E658;
	Tue, 26 May 2026 12:09:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PpkeZ+W3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C64F10E638;
 Tue, 26 May 2026 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779797340; x=1811333340;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=N91+t8wc5GxZEvA3XLxyRuyGSEXb/TW8oB5H7wwOZEg=;
 b=PpkeZ+W3A7YBAVAbW5O0A0+6bEFtSMDtB5aP6fv1FZDHYbUw26KQFA8x
 PQGk+8cMfwa4HHWDcERqpkQI3ReK/N2+1wsW7PcwykD51m7yDBoXWeVk/
 QJkN4upb8WLGbAI0do3HgNaIaiEibt42MycDhDhmG1D+IGnSvzC8DTnyO
 zl81A5tV/Ds6dzlsLua7BEprdqMnNPOJtJBXxix+iExMxsW28KCIbHquC
 sdd2ImOewksyNJBzzBbaR22HAYWouS/jam7TaClxQZoNlBIo8KyWTlAAf
 nkiEQAEqIx+FN+rtxquIQLFLLoCZO8i+ss+0frsARISR+8x3pYRufL648 A==;
X-CSE-ConnectionGUID: Ydl2BfBQS+W86Dr1jEGFXQ==
X-CSE-MsgGUID: fVF9jwm8RHmtUHwKe3yIzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80457313"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="80457313"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:09:00 -0700
X-CSE-ConnectionGUID: VI+QvYyPSu2VOpgw9eLQ+Q==
X-CSE-MsgGUID: mxUje0FeREGKnRRp5PB0ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="240856315"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:08:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2] drm/{i915,xe}: move xe_display_flush_cleanup_work()
 to i915 display
In-Reply-To: <20260525110553.651208-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <7aecde385b66dbf7d0e61759528c6cd643581a3d.1778659089.git.jani.nikula@intel.com>
 <20260525110553.651208-1-jani.nikula@intel.com>
Date: Tue, 26 May 2026 15:08:55 +0300
Message-ID: <ccc2ec71539102b0b2411d311582601e30a90eb5@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6E8005D5505
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> xe_display_flush_cleanup_work() is a bit of an oddball function in xe
> display code. There shouldn't be anything this specific or xe
> specific. While I'm not sure what the correct refactor for the function
> should be, move it to shared display code for starters, next to the
> eerily similar but slightly different intel_has_pending_fb_unpin() that
> is only called from i915 core.
>
> The main goal here is to unblock some refactors on
> for_each_intel_crtc().
>
> v2: Add FIXME comment (Ville)
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Ville, ping?

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/xe/display/xe_display.c      | 27 +++-----------------
>  3 files changed, 26 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c8935f69db1..a6cee0f81358 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -737,6 +737,28 @@ bool intel_has_pending_fb_unpin(struct intel_display *display)
>  	return false;
>  }
>  
> +/* FIXME: All callers need to be audited and unified between i915 and xe */
> +void intel_display_flush_cleanup_work(struct intel_display *display)
> +{
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(display->drm, crtc) {
> +		struct drm_crtc_commit *commit;
> +
> +		spin_lock(&crtc->base.commit_lock);
> +		commit = list_first_entry_or_null(&crtc->base.commit_list,
> +						  struct drm_crtc_commit, commit_entry);
> +		if (commit)
> +			drm_crtc_commit_get(commit);
> +		spin_unlock(&crtc->base.commit_lock);
> +
> +		if (commit) {
> +			wait_for_completion(&commit->cleanup_done);
> +			drm_crtc_commit_put(commit);
> +		}
> +	}
> +}
> +
>  /*
>   * Finds the encoder associated with the given CRTC. This can only be
>   * used when we know that the CRTC isn't feeding multiple encoders!
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 45a90d2fe6ec..72f33113a5a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -402,6 +402,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
>  void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
>  void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
>  bool intel_has_pending_fb_unpin(struct intel_display *display);
> +void intel_display_flush_cleanup_work(struct intel_display *display);
>  void intel_encoder_destroy(struct drm_encoder *encoder);
>  struct drm_display_mode *
>  intel_encoder_current_mode(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 8d08da60336d..a5066de3d789 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -244,27 +244,6 @@ static bool suspend_to_idle(void)
>  	return false;
>  }
>  
> -static void xe_display_flush_cleanup_work(struct xe_device *xe)
> -{
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_crtc(&xe->drm, crtc) {
> -		struct drm_crtc_commit *commit;
> -
> -		spin_lock(&crtc->base.commit_lock);
> -		commit = list_first_entry_or_null(&crtc->base.commit_list,
> -						  struct drm_crtc_commit, commit_entry);
> -		if (commit)
> -			drm_crtc_commit_get(commit);
> -		spin_unlock(&crtc->base.commit_lock);
> -
> -		if (commit) {
> -			wait_for_completion(&commit->cleanup_done);
> -			drm_crtc_commit_put(commit);
> -		}
> -	}
> -}
> -
>  static void xe_display_enable_d3cold(struct xe_device *xe)
>  {
>  	struct intel_display *display = xe->display;
> @@ -278,7 +257,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
>  	 */
>  	intel_power_domains_disable(display);
>  
> -	xe_display_flush_cleanup_work(xe);
> +	intel_display_flush_cleanup_work(display);
>  
>  	intel_opregion_suspend(display, PCI_D3cold);
>  
> @@ -333,7 +312,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  		intel_display_driver_suspend(display);
>  	}
>  
> -	xe_display_flush_cleanup_work(xe);
> +	intel_display_flush_cleanup_work(display);
>  
>  	intel_encoder_block_all_hpds(display);
>  
> @@ -365,7 +344,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  		intel_display_driver_suspend(display);
>  	}
>  
> -	xe_display_flush_cleanup_work(xe);
> +	intel_display_flush_cleanup_work(display);
>  	intel_dp_mst_suspend(display);
>  	intel_encoder_block_all_hpds(display);
>  	intel_hpd_cancel_work(display);

-- 
Jani Nikula, Intel
