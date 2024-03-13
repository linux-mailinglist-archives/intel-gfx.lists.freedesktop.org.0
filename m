Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E9787A577
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 11:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07CCD10F736;
	Wed, 13 Mar 2024 10:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCI8XNlU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4325E10F735
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 10:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710324167; x=1741860167;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jrYow9OebtJ8UryK+BWOtrvV2Oq5aQb8QDRGcnpwtKk=;
 b=fCI8XNlUzQjfLQ5Fke0nJjXPqDyAfqWVS2xogvWNH0FJKz+3RMnMlns8
 uo4t/enKtaZhC4IqN4nxsYTDTdVvOCT32GSLYuwyI1eM+5c7v/SICECq+
 aKl+Js11gUEiaYAmwTzOgvWaL15eU4WziNLnXXCiBDVJkVXjX/30wYfG3
 z3qeX0YrcDLh6sNf1PawrA5Ok7jjVRqatd8w8OgZa8Oc2zy2er2Y9WIL7
 B/f4E01HX8nOj/SbtpeFKnSk4lBeFv4heHMMh8hyuLs0gaQdcG6Q852gk
 T0QsJCa780r7stjS7PdqDNs34bWCbQaZ8CyUkANyxN2MFDyecKMIUWfbg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8886500"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8886500"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 03:02:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="16520379"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 03:02:44 -0700
Date: Wed, 13 Mar 2024 12:02:37 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: Re: [PATCH 6/6] drm/i915: Allow bigjoiner for MST
Message-ID: <ZfF5vZ5CQBW2l4DD@intel.com>
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
 <20240308131146.32714-7-stanislav.lisovskiy@intel.com>
 <CAE72mNmgt3i-KiEOOWhs8uro-3O-85yRN7=MUecRVrPCuhDtcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNmgt3i-KiEOOWhs8uro-3O-85yRN7=MUecRVrPCuhDtcw@mail.gmail.com>
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

On Tue, Mar 12, 2024 at 09:48:33PM -0700, Manasi Navare wrote:
> Now when we enable bigjoiner for MST, in MST case
> intel_ddi_post_disable_hdmi_or_sst() function wont get called,
> Do we need similar changes for MST case to loop over the joined pipes
> in MST bigjoiner case?
> 
> Manasi

Hi Manasi, check now my latest series, that should handle this.


Stan

> 
> On Fri, Mar 8, 2024 at 5:12 AM Stanislav Lisovskiy
> <stanislav.lisovskiy@intel.com> wrote:
> >
> > From: Vidya Srinivas <vidya.srinivas@intel.com>
> >
> > We need bigjoiner support with MST functionality
> > for MST monitor resolutions > 5K to work.
> > Adding support for the same.
> >
> > v2: Addressed review comments from Jani.
> > Revert rejection of MST bigjoiner modes and add
> > functionality
> >
> > v3: Fixed pipe_mismatch WARN for mst_master_transcoder
> > Credits-to: Manasi Navare <navaremanasi@chromium.org>
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++++--
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
> >  2 files changed, 13 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 3756975bd561c..3bf8941107473 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3924,9 +3924,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
> >                 pipe_config->lane_count =
> >                         ((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
> >
> > -               if (DISPLAY_VER(dev_priv) >= 12)
> > -                       pipe_config->mst_master_transcoder =
> > +               if (DISPLAY_VER(dev_priv) >= 12) {
> > +                       if (!intel_crtc_is_bigjoiner_slave(pipe_config))
> > +                               pipe_config->mst_master_transcoder =
> >                                         REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
> > +               }
> >
> >                 intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
> >                                                &pipe_config->dp_m_n);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 53aec023ce92f..3e6e2cd08d3ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -525,6 +525,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  {
> >         struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >         struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
> > +       struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >         struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> >         struct intel_dp *intel_dp = &intel_mst->primary->dp;
> >         const struct intel_connector *connector =
> > @@ -542,6 +543,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >         if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >                 return -EINVAL;
> >
> > +       if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> > +                                   adjusted_mode->crtc_clock))
> > +               pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> > +
> >         pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >         pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >         pipe_config->has_pch_encoder = false;
> > @@ -1330,12 +1335,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >          *   corresponding link capabilities of the sink) in case the
> >          *   stream is uncompressed for it by the last branch device.
> >          */
> > -       if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > -           drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
> > -               *status = MODE_CLOCK_HIGH;
> > -               return 0;
> > -       }
> > -
> >         if (mode->clock < 10000) {
> >                 *status = MODE_CLOCK_LOW;
> >                 return 0;
> > @@ -1349,8 +1348,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >         if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
> >                 bigjoiner = true;
> >                 max_dotclk *= 2;
> > +       }
> >
> > -               /* TODO: add support for bigjoiner */
> > +       if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > +           drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
> >                 *status = MODE_CLOCK_HIGH;
> >                 return 0;
> >         }
> > @@ -1397,7 +1398,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >                 return 0;
> >         }
> >
> > -       *status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > +       *status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
> >         return 0;
> >  }
> >
> > --
> > 2.37.3
> >
