Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5272987457
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5604810EB3E;
	Thu, 26 Sep 2024 13:21:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PwDjnCE9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCFE10EB3A;
 Thu, 26 Sep 2024 13:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727356877; x=1758892877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KYHorqTa+zkBhavZhf09FN1yHL1PhUvEZCKDmd1JaE8=;
 b=PwDjnCE9t97ADu6NThsHETdaX0qAwxIs/zZpfAYtAxsbgONJ4vVtv62d
 qaxS0DevQwB1WUIEb76J6EbO7clZIteq1HWj+U6+Uofn55TMxjdWSiix3
 iZrISOawfOAk20d4dcpPn/QiD2tkUTI4Gjs2qw/F39LlkpdBH8qQ5Jrh8
 Dqh5b+1IWSjGVGO9aSDXTKuq+ZuRTP0F8i6reeMwNdk0jS7plm/Lbi2na
 +Pe3SPink3FKAo7UnXQ6GlUdcrV1xMsQDNNmAANgJQhfwYU7pxw7+m4iZ
 Oy3ia166Bx+vuqom9uR8Jf7IFArQC/57SdKdlUWRU2QFMeHPpghKmiOVz A==;
X-CSE-ConnectionGUID: G8NI+c0TRJa3Uh/MzAhi2A==
X-CSE-MsgGUID: ap7NtbWyQw2h8Ti5SKHdig==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26604285"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26604285"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:21:17 -0700
X-CSE-ConnectionGUID: l40wZjQvQ+mcz8fCY2whYQ==
X-CSE-MsgGUID: Fqhtq/YQQfm8vmMQBNe4ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72292303"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 06:21:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 16:21:14 +0300
Date: Thu, 26 Sep 2024 16:21:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 02/15] drm/i915/display_debugfs: Allow force joiner only
 if supported
Message-ID: <ZvVfyhxtxbuEmI3i@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-3-ankit.k.nautiyal@intel.com>
 <ZvVCMMoVowdWfrAz@intel.com>
 <a7ad897f-a6d5-4172-a46a-2683f8d3a52c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a7ad897f-a6d5-4172-a46a-2683f8d3a52c@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Sep 26, 2024 at 06:37:46PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/26/2024 4:44 PM, Ville Syrjälä wrote:
> > On Thu, Sep 26, 2024 at 12:56:25PM +0530, Ankit Nautiyal wrote:
> >> Currently we support joiner only for DP encoder.
> >> Do not create the debugfs for joiner if DP does not support the joiner.
> >> This will also help avoiding cases where config has eDP MSO, with which
> >> we do not support joiner.
> >>
> >> v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
> >> supported. (Ville)
> >> v3: Remove HAS_BIGJOINER check. (Ville)
> >> v4: Reverse checks for connector type and intel_dp_has_joiner(). (Ville)
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 ++++---
> >>   1 file changed, 4 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> index 890ef7067b77..08adeaa2e87f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> @@ -1328,6 +1328,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
> >>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> >>   	struct dentry *root = connector->base.debugfs_entry;
> >>   	int connector_type = connector->base.connector_type;
> >> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > I'd probably drop the local variable entirely since it
> > can give us garbage for non-dp stuff.
> 
> Yeah, can directly use intel_attached_dp(connector) to avoid having 
> intel_dp with some garbage values for non DP connectors.
> 
> Thanks for the review.
> 
> As an aside, now that the first 4 patches (that are dealing with the 
> debugfs) are reviewed, can I send them as separate series and merge them?
> 
> This will help get the IGT changes merge for debugfs changes.

Sure. Though CI is bogged down still, so dunno when you can
expect results form there.

> 
> Thanks & Regards,
> 
> Ankit
> 
> >
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >>   
> >>   	/* The connector must have been registered beforehands. */
> >>   	if (!root)
> >> @@ -1362,9 +1363,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
> >>   				    connector, &i915_dsc_fractional_bpp_fops);
> >>   	}
> >>   
> >> -	if (HAS_BIGJOINER(i915) &&
> >> -	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> >> -	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> >> +	if ((connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> >> +	     connector_type == DRM_MODE_CONNECTOR_eDP) &&
> >> +	    intel_dp_has_joiner(intel_dp)) {
> >>   		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> >>   				    &connector->force_bigjoiner_enable);
> >>   	}
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
