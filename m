Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JxPLPKYnWnwQgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:26:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAFD186EEB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:26:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A687410E581;
	Tue, 24 Feb 2026 12:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m8wrkI+t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E41010E56C;
 Tue, 24 Feb 2026 12:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771935981; x=1803471981;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=apTYfIVjKcd/H6HYCxu6UdrBd5CxjlUBhHU1gt8ZlG0=;
 b=m8wrkI+tK/+5YpMtKUT+zPkMjltXe2kIcJeplPLm/84mAteahj5O+VhQ
 8EeErWmtIso2FL6UBZLnUabko4xDz6CBrKg0y/dsBnU2kdbv6ooMgzB/t
 MvYorE29raErY3Mos7mhiVnwPCNIhjA/VPeLZvYpbFua2QcD+rLKWL1yj
 GR1G5eprt8+3Iqqc5HyaAA0nCmrpfyMQFC708j2r3tEMkKlXde796wT1f
 sCIjoU1scVEmVoWhJa8wDN/rUu1POmtaa+Sc3lvO2Zlpr4meFjnWaz2SL
 8WQp2NPHjOetDqTpeyUdZRdvzCwqMyXabOI0CguyvxI3dMxE4UBaS5hcI g==;
X-CSE-ConnectionGUID: nJvSLcjOTK6uVHC2xqFLqA==
X-CSE-MsgGUID: BgeIHM28Q12FzR+pS3ZCrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84405285"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="84405285"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:26:21 -0800
X-CSE-ConnectionGUID: C4pHIvERRLGEEzqI4k9M4Q==
X-CSE-MsgGUID: g8hZO8TKQ3OxNqnAhV0Utw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="213705129"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.20])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:26:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mohammed Bilal <mohammed.bilal@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, Mohammed Bilal <mohammed.bilal@intel.com>
Subject: Re: [PATCH v1] drm/i915/debugfs: Add i915_extended_wakeup_timeout
 debugfs entry
In-Reply-To: <20260224083734.2947885-1-mohammed.bilal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260224083734.2947885-1-mohammed.bilal@intel.com>
Date: Tue, 24 Feb 2026 14:26:16 +0200
Message-ID: <cc5493055fc914166fc4b2395ca0370f53332a9d@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0AAFD186EEB
X-Rspamd-Action: no action

On Tue, 24 Feb 2026, Mohammed Bilal <mohammed.bilal@intel.com> wrote:
> Add debugfs interface to expose extended wakeup timeout information for
> DP connectors. This shows whether a retimer is present, the
> current mode (transparent vs non-transparent), and the wakeup timeout
> value in milliseconds.
> This helps verify whether the extended wakeup timeout is functioning
> as expected.
>
> Signed-off-by: Mohammed Bilal <mohammed.bilal@intel.com>

Do we really have to add debugfs for things that are just DPCD reads? We
have the DP AUX device exposed, and a userspace tool could read all of
this through that. It's much more pain to maintain this in the kernel.

BR,
Jani.

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 2614c4863c87..292ee71643da 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1310,6 +1310,78 @@ static const struct file_operations i915_joiner_fops = {
>  	.write = i915_joiner_write
>  };
>  
> +static int i915_extended_wakeup_timeout_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp;
> +	bool retimer_present = false;
> +	bool transparent_mode = true;
> +	int wakeup_timeout_ms = 1;
> +	int lttpr_count;
> +	u8 val;
> +	int ret;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +	if (connector->base.status != connector_status_connected) {
> +		ret = -ENODEV;
> +		goto out;
> +	}
> +
> +	intel_dp = enc_to_intel_dp(encoder);
> +	lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
> +	retimer_present = (lttpr_count > 0);
> +	transparent_mode = intel_dp_lttpr_transparent_mode_enabled(intel_dp);
> +
> +	if (transparent_mode) {
> +		ret = drm_dp_dpcd_read_data(&intel_dp->aux,
> +					    DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOUT_REQUEST,
> +					    &val, 1);
> +		if (!ret) {
> +			static const u8 timeout_mapping[] = {
> +				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_1_MS] = 1,
> +				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] = 20,
> +				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_40_MS] = 40,
> +				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_60_MS] = 60,
> +				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS] = 80,
> +				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS] = 100,
> +			};
> +
> +			if (val < ARRAY_SIZE(timeout_mapping) && timeout_mapping[val])
> +				wakeup_timeout_ms = timeout_mapping[val];
> +		}
> +	} else {
> +		ret = drm_dp_dpcd_read_data(&intel_dp->aux,
> +					    DP_PHY_REPEATER_EXTENDED_WAIT_TIMEOUT,
> +					    &val, 1);
> +
> +		if (!ret) {
> +
> +			int timeout_val = val & DP_EXTENDED_WAKE_TIMEOUT_REQUEST_MASK;
> +
> +			wakeup_timeout_ms = timeout_val ? (timeout_val * 10) : 1;
> +		}
> +	}
> +
> +	if (ret)
> +		wakeup_timeout_ms = -1;
> +
> +	seq_printf(m, "retimer_present: %s\n", retimer_present ? "yes" : "no");
> +	seq_printf(m, "mode: %s\n", transparent_mode ? "transparent" : "non-transparent");
> +	seq_printf(m, "wakeup_timeout_ms: %d\n", wakeup_timeout_ms);
> +
> +out:
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +	return ret;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_extended_wakeup_timeout);
> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
>   * @connector: pointer to a registered intel_connector
> @@ -1335,6 +1407,12 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	intel_dp_link_training_debugfs_add(connector);
>  	intel_link_bw_connector_debugfs_add(connector);
>  
> +	if (DISPLAY_VER(display) >= 30 &&
> +	    connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) {
> +		debugfs_create_file("i915_extended_wakeup_timeout", 0444, root,
> +				    connector, &i915_extended_wakeup_timeout_fops);
> +	}
> +
>  	if (DISPLAY_VER(display) >= 11 &&
>  	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {

-- 
Jani Nikula, Intel
