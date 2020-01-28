Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 480E714BDA1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 17:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A546E0D2;
	Tue, 28 Jan 2020 16:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D676E0D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 16:24:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 08:24:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="223575220"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jan 2020 08:24:40 -0800
Date: Tue, 28 Jan 2020 21:45:45 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200128161545.GF24118@intel.com>
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
 <20200128135425.14596-2-anshuman.gupta@intel.com>
 <87d0b3d5os.fsf@intel.com> <20200128154444.GE24118@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128154444.GE24118@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/hdcp: Update CP as per the
 kernel internal state
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-28 at 21:14:44 +0530, Anshuman Gupta wrote:
> On 2020-01-28 at 16:19:31 +0200, Jani Nikula wrote:
> > On Tue, 28 Jan 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > > Content Protection property should be updated as per the kernel
> > > internal state. Let's say if Content protection is disabled
> > > by userspace, CP property should be set to UNDESIRED so that
> > > reauthentication will not happen until userspace request it again,
> > > but when kernel disables the HDCP due to any DDI disabling sequences
> > > like modeset/DPMS operation, kernel should set the property to
> > > DESIRED, so that when opportunity arises, kernel will start the
> > > HDCP authentication on its own.
> > >
> > > Somewhere in the line, state machine to set content protection to
> > > DESIRED from kernel was broken and IGT coverage was missing for it.
> > > This patch fixes it.
> > > IGT patch to catch further regression on this features is being
> > > worked upon.
> > >
> > > CC: Ramalingam C <ramalingam.c@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c |  4 +++
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c    | 26 ++++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_hdcp.h    |  2 ++
> > >  3 files changed, 32 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index da5266e76738..934cdf1f1858 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14595,6 +14595,10 @@ static int intel_atomic_check(struct drm_device *dev,
> > >  		goto fail;
> > >  
> > >  	if (any_ms) {
> > > +		/*
> > > +		 * When there is modeset fix the hdcp uapi CP state.
> > > +		 */
> > > +		intel_hdcp_post_need_modeset_check(state);
> > >  		ret = intel_modeset_checks(state);
> > >  		if (ret)
> > >  			goto fail;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index 0fdbd39f6641..be083136eee2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -2074,6 +2074,32 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
> > >  	crtc_state->mode_changed = true;
> > >  }
> > >  
> > > +/**
> > > + * intel_hdcp_post_need_modeset_check.
> > > + * @state: intel atomic state.
> > > + *
> > > + * This function fix the HDCP uapi state when hdcp disabling initiated from
> > > + * modeset DDI disabling sequence. It updates uapi CP state from ENABLED to
> > > + * DESIRED so that HDCP uapi state can be restored as per HDCP Auth state.
> > > + * This function should be called only in case of in case of modeset.
> > > + * FIXME: As per HDCP content protection property uapi doc, an uevent()
> > > + * need to be sent if there is transition from ENABLED->DESIRED.
> > > + */
> > > +void intel_hdcp_post_need_modeset_check(struct intel_atomic_state *state)
> > > +{
> > > +	struct drm_connector *connector;
> > > +	struct drm_connector_state *old_state;
> > > +	struct drm_connector_state *new_state;
> > > +	int i;
> > > +
> > > +	for_each_oldnew_connector_in_state(&state->base, connector, old_state,
> > > +					   new_state, i) {
> > > +		if (old_state->content_protection == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> > > +		    new_state->content_protection != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
> > > +			new_state->content_protection = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> > > +	}
> > > +}
> > > +
> > 
> > Why does this feel like duplication of what you already have in
> > intel_hdcp_atomic_check()?
> intel_hdcp_atomic_check() have checks that for disconnected connector and it doesn't look for 
typo here, "intel_hdcp_atomic_check() checks that for disconnected connector and it doesn't check for new state shouldn't be UNDESIRED" 
> old state, that is not sufficient to fix the hdcp CP uapi state, it need to be fix only in case of
> modeset, Later on a fastset check can disable the modeset and we would endup calling intel_hdcp_enable
> while hdcp is already enabled. That is the reason i think we would require a new API to
> fix the uapi state.
> Thanks ,
> Anshuman Gupta.
> > 
> > BR,
> > Jani.
> > 
> > 
> > >  /* Handles the CP_IRQ raised from the DP HDCP sink */
> > >  void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
> > >  {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > > index f3c3272e712a..7bf46bc3c348 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > > @@ -13,6 +13,7 @@
> > >  struct drm_connector;
> > >  struct drm_connector_state;
> > >  struct drm_i915_private;
> > > +struct intel_atomic_state;
> > >  struct intel_connector;
> > >  struct intel_hdcp_shim;
> > >  enum port;
> > > @@ -21,6 +22,7 @@ enum transcoder;
> > >  void intel_hdcp_atomic_check(struct drm_connector *connector,
> > >  			     struct drm_connector_state *old_state,
> > >  			     struct drm_connector_state *new_state);
> > > +void intel_hdcp_post_need_modeset_check(struct intel_atomic_state *state);
> > >  int intel_hdcp_init(struct intel_connector *connector,
> > >  		    const struct intel_hdcp_shim *hdcp_shim);
> > >  int intel_hdcp_enable(struct intel_connector *connector,
> > 
> > -- 
> > Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
