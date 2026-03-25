Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPweOcHTw2lLuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:23:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70353324CDC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E593C10E6EF;
	Wed, 25 Mar 2026 12:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MyOdzKvD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82F210E6E3;
 Wed, 25 Mar 2026 12:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774441408; x=1805977408;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SXzqTzJQD3TxxDQXtWXF4HyijregFhsdrNqLWjzCalM=;
 b=MyOdzKvDF3v4/Jek9Loi8BCH4AbuU5yvHf1hW9w7wRMXGogpszNrLJTE
 8W4hzXbXiUlmNL82rc2KLO2aygGfvCF38YRnpJhuT9YLHkayVUzUM6JAY
 DouwSaJNtx9+epfC161RSX1MS/R+5FLxasLZWXG1VSYSAUpjpgMceku8J
 SJYn51JHD9Nl+rXBaH2Pp93i5Ufg0UcLbI8lFFVYHP/4x+43KCEvE7z/I
 Im8OV94ua/ci7guZ97yDkWqqGBrM8BuGOPF5Dp6cYp1bliNcgnpmFXseS
 7Gpv6+lq+1kFL4pS4XZR6yqah/lovz9cWXLCbWwWaQTFR+H67UieRbRdw g==;
X-CSE-ConnectionGUID: d0Gct3XFTGOIMRgU4y5p9Q==
X-CSE-MsgGUID: hMs1hdJlS62+tVTgrYjgjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75666236"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75666236"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:23:27 -0700
X-CSE-ConnectionGUID: GTO3ZVTMR/Wy582Wb6aZow==
X-CSE-MsgGUID: oWc4N53vQWGY4lXgG2wuJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="229599417"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:23:24 -0700
Date: Wed, 25 Mar 2026 14:23:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 14/26] drm/i915/writeback: Define function to destroy
 writeback connector
Message-ID: <acPTufY6SO5nWnh0@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-15-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-15-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 70353324CDC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:32PM +0530, Suraj Kandpal wrote:
> Define function to destroy the drm_writbeack_connector and
> drm_connector associated with it.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index e677cdfa6207..86b53e4603ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -161,6 +161,12 @@ intel_writeback_detect(struct drm_connector *connector,
>  	return connector_status_connected;
>  }
>  
> +static void intel_writeback_connector_destroy(struct drm_connector *connector)
> +{
> +	drm_connector_cleanup(connector);
> +	kfree(connector);
> +}

Please squash with the patch that added the init/allocation.

> +
>  static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>  	.destroy = drm_encoder_cleanup,
>  };
> @@ -170,6 +176,7 @@ const struct drm_connector_funcs conn_funcs = {
>  	.fill_modes = drm_helper_probe_single_connector_modes,
>  	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +	.destroy = intel_writeback_connector_destroy,
>  };
>  
>  static const struct drm_connector_helper_funcs conn_helper_funcs = {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
