Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808C7D7DD8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E08710E76C;
	Thu, 26 Oct 2023 07:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D1B10E76C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698306904; x=1729842904;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Kn7ta++tEuCWyf93MrVIuFmNnAJtfwbUUfLjDW2crkw=;
 b=cj4lrPBSH1PsuHGHtmlPAAv0i48QRyUyOX/H5xtfmeR8sXPqhUbHVluj
 57DLFvPj/V4TqHQikGEqV3uduGATky6V1PThsHikNROxhQrNy/izjmsDq
 PiDOOFj5WRyxpp6UazhcmtOBdng27edGlwKMiKWSaJ6z+zc2s6ZCqVZ9M
 W83IOUTwEIxCshEzztpT3rZhoWEXTFBSUat6N4ZERjjQYA3IQtJ3cOz9q
 Bk8PUGaBp98yWMg3mreY1spOKwoL9/flwRODycUik7XLLG4sdud9Y7qRr
 w8I9j6wHIFJ4Dgba4+4eS87Uc4eIYB3JICoN9p58PQ2pRcjpqAWkKwiOh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="372527714"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="372527714"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="708982565"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="708982565"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:55:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB67501A1F59BE149107945E1EE3DDA@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026071540.974755-1-suraj.kandpal@intel.com>
 <20231026071540.974755-2-suraj.kandpal@intel.com>
 <87bkcl96v0.fsf@intel.com>
 <SN7PR11MB67501A1F59BE149107945E1EE3DDA@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 26 Oct 2023 10:54:57 +0300
Message-ID: <878r7p95ta.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp
 enable function
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

On Thu, 26 Oct 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Thursday, October 26, 2023 1:02 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
>> Subject: Re: [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp enable function
>> 
>> On Thu, 26 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Let's create a blanket function which just has some conditions which
>> > need to be checked before connectors enable hdcp.
>> > This cleans up code and avoids code duplication.
>> 
>> Let's call that function intel_hdcp_enable(), and hide all the details inside
>> intel_hdcp.c. These are the only callers outside of intel_hdcp.c.
>
> Maybe the rename current intel_hdcp_enable() to something else as that also is called in
> Intel_hdcp_update_pipe on which I wouldn't want these conditions to be enforced.
> I thought of renaming the current intel_hdcp_enable() to _intel_hdcp_enable() but that is already
> Being used as a function name to enable hdcp1.4
> So any suggestions what I can rename it to?

Please just call it intel_hdcp_enable(), and deal with the above
problems internally in intel_hdcp.c. Don't leak the problems outside of
intel_hdcp.c.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
>> >  drivers/gpu/drm/i915/display/intel_hdcp.c   | 11 +++++++++++
>> >  drivers/gpu/drm/i915/display/intel_hdcp.h   |  4 ++++
>> >  4 files changed, 17 insertions(+), 8 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > index 9151d5add960..338049b66e9c 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > @@ -3259,10 +3259,7 @@ static void intel_enable_ddi(struct
>> intel_atomic_state *state,
>> >  	else
>> >  		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
>> >
>> > -	/* Enable hdcp if it's desired */
>> > -	if (conn_state->content_protection ==
>> > -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
>> > -		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>> > +	intel_hdcp_try_enable(state, encoder, crtc_state, conn_state);
>> >  }
>> >
>> >  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > index 7b4628f4f124..cfcaf54a4a72 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > @@ -836,10 +836,7 @@ static void intel_mst_enable_dp(struct
>> > intel_atomic_state *state,
>> >
>> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>> >
>> > -	/* Enable hdcp if it's desired */
>> > -	if (conn_state->content_protection ==
>> > -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
>> > -		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
>> > +	intel_hdcp_try_enable(state, encoder, pipe_config, conn_state);
>> >  }
>> >
>> >  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder
>> > *encoder, diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > index c89da3568ebd..9d632a85309d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > @@ -2324,6 +2324,17 @@ intel_hdcp_set_streams(struct intel_digital_port
>> *dig_port,
>> >  	return 0;
>> >  }
>> >
>> > +void intel_hdcp_try_enable(struct intel_atomic_state *state,
>> > +			   struct intel_encoder *encoder,
>> > +			   const struct intel_crtc_state *crtc_state,
>> > +			   const struct drm_connector_state *conn_state) {
>> > +	/* Enable hdcp if it's desired */
>> > +	if (conn_state->content_protection ==
>> > +	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
>> > +		intel_hdcp_enable(state, encoder, crtc_state, conn_state); }
>> > +
>> >  int intel_hdcp_enable(struct intel_atomic_state *state,
>> >  		      struct intel_encoder *encoder,
>> >  		      const struct intel_crtc_state *pipe_config, diff --git
>> > a/drivers/gpu/drm/i915/display/intel_hdcp.h
>> > b/drivers/gpu/drm/i915/display/intel_hdcp.h
>> > index 5997c52a0958..280eaa4d1010 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
>> > @@ -44,5 +44,9 @@ void intel_hdcp_component_init(struct
>> > drm_i915_private *i915);  void intel_hdcp_component_fini(struct
>> > drm_i915_private *i915);  void intel_hdcp_cleanup(struct
>> > intel_connector *connector);  void intel_hdcp_handle_cp_irq(struct
>> > intel_connector *connector);
>> > +void intel_hdcp_try_enable(struct intel_atomic_state *state,
>> > +			   struct intel_encoder *encoder,
>> > +			   const struct intel_crtc_state *crtc_state,
>> > +			   const struct drm_connector_state *conn_state);
>> >
>> >  #endif /* __INTEL_HDCP_H__ */
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
