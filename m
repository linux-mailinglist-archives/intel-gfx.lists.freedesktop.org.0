Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AXvMBvv/WlJkwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:11:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B884F7956
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B0F10E323;
	Fri,  8 May 2026 14:11:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O9Tbz1dC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C5410E323;
 Fri,  8 May 2026 14:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778249496; x=1809785496;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XctBmPjhk+VqJyvRVEghzyfPTqN7cNjISgXTBV3Hy7U=;
 b=O9Tbz1dCBIaWg0AyAtZMmEFno5kHFeaKzxypD/kCBxQpndxS3wtlRr4R
 /y5bezMg1MJVc8s0a9t/BvEz0T8VHmuiJKKxXy0XdFhis5EG7De9nqtJb
 8qapyGAduLeP6URSDveiWNYcl3jwCRywZD5cjuKrVMHdLmWgoGivRGbuM
 aobLPTxF1JIPXwkavg8YsS4cpnef+yi1WKULWJyCZEcPf11YROMXOoJSB
 uPgcfGyzFb1cBDbv679RhkbZ0tLSQ8e4SbDkHRUidnvh1zHynL3t83Fr0
 kvVWSX+Ie7djbRMnnNvJMMAK/YSnHzpeHZTuVhzayDH9oYAs0Da1O0SDJ g==;
X-CSE-ConnectionGUID: aeZcEAVVTjmJx1egLqGpYg==
X-CSE-MsgGUID: XOXxtnmvTZ+0J/JBzGxzJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89806357"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89806357"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:11:36 -0700
X-CSE-ConnectionGUID: 7mNLjmkSQ4uCaeWriHVmIA==
X-CSE-MsgGUID: +bSVuyG1RCO79EDu51lsKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="237019350"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:11:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 007/108] drm/i915/dp_link_training: Flush commits in
 debugfs entries
In-Reply-To: <af3mfZ6rFQDw3gyF@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-8-imre.deak@intel.com>
 <159abd8f9ae013230c8d997ae3c949f79ada2100@intel.com>
 <af3mfZ6rFQDw3gyF@ideak-desk.lan>
Date: Fri, 08 May 2026 17:11:31 +0300
Message-ID: <03c8293f6b259f7352190df0433e72903530cee7@intel.com>
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
X-Rspamd-Queue-Id: 24B884F7956
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Fri, 08 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, May 08, 2026 at 04:09:49PM +0300, Jani Nikula wrote:
>> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
>> > Flush pending connector commits before accessing the link training state
>> > from debugfs. Access to connector state - like the link training state -
>> > that may be updated from an asynchronous commit tail must hold the
>> > connection mutex and wait for the tail to complete. The commit tail
>> > cannot hold the connection mutex, so all other accessors must wait for
>> > it explicitly.
>> >
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++++++++++
>> >  1 file changed, 23 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > index 653b974e925c2..6dfb6b8db235e 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > @@ -1866,8 +1866,11 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> 
>> Not part of this patch, but I have a hard time making the connection
>> from "flush connector commits" to "wait for completion timeout on
>> hw_done".
>> 
>> What this patch does is add that "flush" all over the place, making it
>> even harder to make the connection.
>> 
>> It's not helping that struct drm_crtc_helper_funcs has ->atomic_flush
>> hook, which i915 does not use.
>> 
>> Maybe what I'm saying is I'm stupid and don't understand what flush
>> means here.
>
> The commit message tries to explain that, probably it'd be better to
> document this as well as the generic way to serialize some state being
> accessed against an asynchronous atomic commit: the tail of such
> asynchronous commits cannot take WW locks - which are generally used to
> protect the state of a DRM object. Here that state is the link training
> state of an encoder object. Since the async commit's tail cannot itself
> take locks, the way to ensure the exclusive access to the state is:
>
> - In contexts other than the async commit's tail itself 1) take locks used
>   in all other contexts to guard the state (mode_config.connection_mutex
>   here). 2) with the lock held wait for the completion of any pending
>   asynchronous commits (which also waits for the completion for the
>   asyncrhonous commit's tail).
> - In the async commit tail, the state can be access without taking locks
>   or doing any other serialization, since all other accessors of the
>   state will wait for the commit tail.
>
> Flush means waiting for the asynchronous commits to complete based on
> the above.

Maybe the function should be named accordingly...?

BR,
Jani.


>
>> BR,
>> Jani.
>> 
>> 
>> > +
>> >  	if (intel_dp->link.active)
>> >  		current_rate = intel_dp->link_rate;
>> > +
>> >  	force_rate = intel_dp->link.force_rate;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -1939,6 +1942,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	intel_dp_reset_link_params(intel_dp);
>> >  	intel_dp->link.force_rate = rate;
>> >  
>> > @@ -1964,6 +1969,8 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	if (intel_dp->link.active)
>> >  		current_lane_count = intel_dp->lane_count;
>> >  	force_lane_count = intel_dp->link.force_lane_count;
>> > @@ -2041,6 +2048,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	intel_dp_reset_link_params(intel_dp);
>> >  	intel_dp->link.force_lane_count = lane_count;
>> >  
>> > @@ -2063,6 +2072,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	*val = intel_dp->link.max_rate;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2082,6 +2093,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	*val = intel_dp->link.max_lane_count;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2101,6 +2114,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	*val = intel_dp->link.force_train_failure;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2122,6 +2137,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	intel_dp->link.force_train_failure = val;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2143,6 +2160,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	*val = intel_dp->link.force_retrain;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2161,6 +2180,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	intel_dp->link.force_retrain = val;
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2184,6 +2205,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
>> >  	if (err)
>> >  		return err;
>> >  
>> > +	intel_dp_flush_connector_commits(connector);
>> > +
>> >  	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
>> >  
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
