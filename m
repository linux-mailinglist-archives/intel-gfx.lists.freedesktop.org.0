Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GjRIavv/WlJkwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:14:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0114F7974
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1884810F4E4;
	Fri,  8 May 2026 14:14:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKPjNF7O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ED8010F4E2;
 Fri,  8 May 2026 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778249639; x=1809785639;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=XR5li8FJ0hbQQXQGSS2Hwbrw8O7/gmGMZU/IGjuEyf8=;
 b=PKPjNF7O70b4J5th49nvzVQ9GOS8UxrHWjlO9Bwi4O12nIYonpLQcLWF
 E69zAz89k8OaLLYqTLITFn6lL5ihcK+rvjBeSI602Hs3N8TQ1a/KTRJuc
 zDEYM0l/Sq/RxrIIMxhZRQZl8hEjpeoLeGkU2ECUsxz2OGK7hskmKChz9
 4mYM5Sjg+BXjFCh+JpgP8x4ZbGYaVQPttiC9huN1eIlghqWngL347eEnN
 mdhJjwDO/3gPO+NJXYuLWgp6YMpHhFWWFPLWQSH/Wv+HNjy9xl9/Fp+TJ
 d5G1pVWCPNmtCic+z7VWqcIHSgxGWy5zcsZFF9t/FKHN6TQEA0ElGWYBx w==;
X-CSE-ConnectionGUID: JmekdiV5RPafpFkzIdMZSQ==
X-CSE-MsgGUID: DUtnkmXvT625sP6+jgHtjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="79402124"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79402124"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:13:58 -0700
X-CSE-ConnectionGUID: f5oflgl3T/+gFeAoNDp8Kg==
X-CSE-MsgGUID: X9UTHZDgRmiw6tC5YRFNAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="267156215"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:13:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 009/108] drm/i915/dp_link_training: Use link_training as
 base pointer in debugfs
In-Reply-To: <20260428125233.1664668-10-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-10-imre.deak@intel.com>
Date: Fri, 08 May 2026 17:13:54 +0300
Message-ID: <5585535a68e00ea1639ae4ec386929a0836fef35@intel.com>
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
X-Rspamd-Queue-Id: 0D0114F7974
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> Retrieve the link_training pointer from the connector and derive the DP
> pointer from it in debugfs entries.
>
> This prepares for a follow-up change where values exposed via debugfs
> entries will be retrieved from the link training state.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 25 +++++++++++++++----
>  1 file changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index c2f9af251b6a9..1762e507dd1ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -67,6 +67,11 @@ struct intel_dp_link_training {
>  	struct intel_dp *dp;
>  };
>  
> +static struct intel_dp_link_training *connector_to_link_training(struct intel_connector *connector)
> +{
> +	return intel_attached_dp(connector)->link.training;
> +}
> +
>  static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
>  {
>  	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
> @@ -2307,7 +2312,9 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
>  {
>  	struct intel_connector *connector = to_intel_connector(data);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct intel_dp_link_training *link_training =
> +		connector_to_link_training(connector);

Nitpick, this fits on one line. The newline is a worse distraction than
going over 80 chars. Ditto below.

> +	struct intel_dp *intel_dp = link_training->dp;
>  	int err;
>  
>  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> @@ -2327,7 +2334,9 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
>  {
>  	struct intel_connector *connector = to_intel_connector(data);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct intel_dp_link_training *link_training =
> +		connector_to_link_training(connector);
> +	struct intel_dp *intel_dp = link_training->dp;
>  	int err;
>  
>  	if (val > 2)
> @@ -2353,7 +2362,9 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
>  {
>  	struct intel_connector *connector = to_intel_connector(data);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct intel_dp_link_training *link_training =
> +		connector_to_link_training(connector);
> +	struct intel_dp *intel_dp = link_training->dp;
>  	int err;
>  
>  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> @@ -2373,7 +2384,9 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
>  {
>  	struct intel_connector *connector = to_intel_connector(data);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct intel_dp_link_training *link_training =
> +		connector_to_link_training(connector);
> +	struct intel_dp *intel_dp = link_training->dp;
>  	int err;
>  
>  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> @@ -2398,7 +2411,9 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = to_intel_connector(m->private);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct intel_dp_link_training *link_training =
> +		connector_to_link_training(connector);
> +	struct intel_dp *intel_dp = link_training->dp;
>  	int err;
>  
>  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);

-- 
Jani Nikula, Intel
