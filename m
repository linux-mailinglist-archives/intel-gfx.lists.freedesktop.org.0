Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIgSEKfg/WkhkQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:09:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB544F6CF6
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE14610E31A;
	Fri,  8 May 2026 13:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6v/S0yx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C8D10E31A;
 Fri,  8 May 2026 13:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245795; x=1809781795;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LujI0/T8a+RHnzdgMCvgNRfOJLQDturS0zOBT2Nzr18=;
 b=J6v/S0yxclE9+tYQlH2ODjOyUIYkvq2lnBtryNG5fURpJsPBrNL5OKXa
 sVWiaZqgCGirZLSop2UGbU4K8PXHvEaubb5A4oVaqMAWY6/r1ZVComsYu
 655NznWnEU405CmhCKPFp3JoHO0R64DYd3xStCMWSGhzEO9GzbGpzLOBT
 +z7GthZUuwAqiQP4b9zP5bPMXE4fuemz4K0jokRNjAS0peZVtRZzD7O61
 cjhG7ATP9a7Xy8qjKqiUfL9oDb5RgoU0o20QimMB7YzLSF1zXiDUUh4MQ
 um9+tqCaxpWDRZQxoqE+Z1jSgxUJNXkF+qCf6LLzYqoauE5oNutkfLABA g==;
X-CSE-ConnectionGUID: Lb8LQLFxQrSQcy3OMq8G4Q==
X-CSE-MsgGUID: bVnYM0bORGe/HH/qOxjYCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="90674640"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="90674640"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:09:55 -0700
X-CSE-ConnectionGUID: heDupAZBSba3KAK7n0o0Hw==
X-CSE-MsgGUID: Pl7FUbieRxW9DjQmJlMg0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260495760"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:09:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 007/108] drm/i915/dp_link_training: Flush commits in
 debugfs entries
In-Reply-To: <20260428125233.1664668-8-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-8-imre.deak@intel.com>
Date: Fri, 08 May 2026 16:09:49 +0300
Message-ID: <159abd8f9ae013230c8d997ae3c949f79ada2100@intel.com>
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
X-Rspamd-Queue-Id: 2CB544F6CF6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> Flush pending connector commits before accessing the link training state
> from debugfs. Access to connector state - like the link training state -
> that may be updated from an asynchronous commit tail must hold the
> connection mutex and wait for the tail to complete. The commit tail
> cannot hold the connection mutex, so all other accessors must wait for
> it explicitly.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 653b974e925c2..6dfb6b8db235e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1866,8 +1866,11 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);

Not part of this patch, but I have a hard time making the connection
from "flush connector commits" to "wait for completion timeout on
hw_done".

What this patch does is add that "flush" all over the place, making it
even harder to make the connection.

It's not helping that struct drm_crtc_helper_funcs has ->atomic_flush
hook, which i915 does not use.

Maybe what I'm saying is I'm stupid and don't understand what flush
means here.


BR,
Jani.


> +
>  	if (intel_dp->link.active)
>  		current_rate = intel_dp->link_rate;
> +
>  	force_rate = intel_dp->link.force_rate;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -1939,6 +1942,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	intel_dp_reset_link_params(intel_dp);
>  	intel_dp->link.force_rate = rate;
>  
> @@ -1964,6 +1969,8 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	if (intel_dp->link.active)
>  		current_lane_count = intel_dp->lane_count;
>  	force_lane_count = intel_dp->link.force_lane_count;
> @@ -2041,6 +2048,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	intel_dp_reset_link_params(intel_dp);
>  	intel_dp->link.force_lane_count = lane_count;
>  
> @@ -2063,6 +2072,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	*val = intel_dp->link.max_rate;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2082,6 +2093,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	*val = intel_dp->link.max_lane_count;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2101,6 +2114,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	*val = intel_dp->link.force_train_failure;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2122,6 +2137,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	intel_dp->link.force_train_failure = val;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2143,6 +2160,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	*val = intel_dp->link.force_retrain;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2161,6 +2180,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	intel_dp->link.force_retrain = val;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2184,6 +2205,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
>  	if (err)
>  		return err;
>  
> +	intel_dp_flush_connector_commits(connector);
> +
>  	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);

-- 
Jani Nikula, Intel
