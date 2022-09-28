Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F425ED931
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 11:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8878610E395;
	Wed, 28 Sep 2022 09:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B7910E395
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 09:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664357655; x=1695893655;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=btiIQz5R8dBNjqB6AGieznZkU2llPtZ+1OMZLlEaVoo=;
 b=TviGkwcWCUDePOtF9snKoCJd/kIcXjKg4snnOAgEeGHnfPqorFw42xmk
 wtRqrEhaLdVG3grJCWMDGL54EMV5FhMcqsr/hVH9hVYmWcVOUYZTCQ9id
 DblLoUWSMlrY6+LOkqFBs8cO6UG6TGwI4zuyuHXdZ4tnxYX5A1rMyr291
 l75WcnLdabIrivoD5FEYTpXMkw5sRznsMbenDXrLGVCwnWE1Lyeqp+Nug
 rw71wbW/ai+OkATz2q88oBWvtRQNVBxZIcj1+qYzcl3PZzLlzRgTOKhHN
 NzvFYs38R4guk0c4pPZRgrPtEEHrCLxhgdw0EbNvC8KeCTZ05D75o/E7h A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363395052"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="363395052"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 02:34:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="655063254"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="655063254"
Received: from novermar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.30])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 02:34:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <8f0e921300db2b6a36497773d4508892e1ea5a43.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916063720.422321-1-khaled.almahallawy@intel.com>
 <20220916212512.9112-1-khaled.almahallawy@intel.com>
 <871qry2i9x.fsf@intel.com>
 <8f0e921300db2b6a36497773d4508892e1ea5a43.camel@intel.com>
Date: Wed, 28 Sep 2022 12:34:10 +0300
Message-ID: <87bkqzzvu5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
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

On Tue, 27 Sep 2022, "Almahallawy, Khaled" <khaled.almahallawy@intel.com> wrote:
> On Mon, 2022-09-26 at 19:48 +0300, Jani Nikula wrote:
>> On Fri, 16 Sep 2022, Khaled Almahallawy <khaled.almahallawy@intel.com
>> > wrote:
>> > Bspecs has updated recently to remove the restriction to disable
>> > DDI/Transcoder before setting PHY test pattern. This update is to
>> > address PHY compliance test failures observed on a port with LTTPR.
>> > The issue is that when Transc. is disabled, the main link signals
>> > fed
>> > to LTTPR will be dropped invalidating link training, which will
>> > affect
>> > the quality of the phy test pattern when the transcoder is enabled
>> > again.
>> 
>> And how about platforms prior to display 12? The requirement is still
>> there AFAICT.
>
> This restriction is not needed as well for earlier platforms. We are
> able to set PHY patterns without these restrictions using legacy shell
> script solution we used for compliance since SKL and that what we do
> currently for eDP PHY CTS up to RPL. 
> Also windows driver doesn't have this restriction on their code for all
> generations. 
>  
> Simply just setting DP_COMP_CTL will trigger the phy test pattern
> needed. 

Sadly bspec disagrees. :(

Anyway, please repost as new thread to get fresh CI results.

BR,
Jani.


>
> Thanks
> Khaled
>> 
>
>
>> BR,
>> Jani.
>> 
>> 
>> > v2: Update commit message (Clint)
>> > 
>> > Bspec: 50482
>> > Cc: Imre Deak <imre.deak@intel.com>
>> > Cc: Clint Taylor <clinton.a.taylor@intel.com>
>> > Cc: Or Cochvi <or.cochvi@intel.com>
>> > Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------
>> > ------
>> >  1 file changed, 59 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index c9be61d2348e..2bf323f3f155 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -3675,61 +3675,6 @@ static void
>> > intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>> >  	}
>> >  }
>> >  
>> > -static void
>> > -intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,
>> > -				  const struct intel_crtc_state
>> > *crtc_state)
>> > -{
>> > -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> > -	struct drm_device *dev = dig_port->base.base.dev;
>> > -	struct drm_i915_private *dev_priv = to_i915(dev);
>> > -	struct intel_crtc *crtc = to_intel_crtc(dig_port-
>> > >base.base.crtc);
>> > -	enum pipe pipe = crtc->pipe;
>> > -	u32 trans_ddi_func_ctl_value, trans_conf_value,
>> > dp_tp_ctl_value;
>> > -
>> > -	trans_ddi_func_ctl_value = intel_de_read(dev_priv,
>> > -						 TRANS_DDI_FUNC_CTL(pip
>> > e));
>> > -	trans_conf_value = intel_de_read(dev_priv, PIPECONF(pipe));
>> > -	dp_tp_ctl_value = intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
>> > -
>> > -	trans_ddi_func_ctl_value &= ~(TRANS_DDI_FUNC_ENABLE |
>> > -				      TGL_TRANS_DDI_PORT_MASK);
>> > -	trans_conf_value &= ~PIPECONF_ENABLE;
>> > -	dp_tp_ctl_value &= ~DP_TP_CTL_ENABLE;
>> > -
>> > -	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
>> > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
>> > -		       trans_ddi_func_ctl_value);
>> > -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
>> > -}
>> > -
>> > -static void
>> > -intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
>> > -				 const struct intel_crtc_state
>> > *crtc_state)
>> > -{
>> > -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> > -	struct drm_device *dev = dig_port->base.base.dev;
>> > -	struct drm_i915_private *dev_priv = to_i915(dev);
>> > -	enum port port = dig_port->base.port;
>> > -	struct intel_crtc *crtc = to_intel_crtc(dig_port-
>> > >base.base.crtc);
>> > -	enum pipe pipe = crtc->pipe;
>> > -	u32 trans_ddi_func_ctl_value, trans_conf_value,
>> > dp_tp_ctl_value;
>> > -
>> > -	trans_ddi_func_ctl_value = intel_de_read(dev_priv,
>> > -						 TRANS_DDI_FUNC_CTL(pip
>> > e));
>> > -	trans_conf_value = intel_de_read(dev_priv, PIPECONF(pipe));
>> > -	dp_tp_ctl_value = intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
>> > -
>> > -	trans_ddi_func_ctl_value |= TRANS_DDI_FUNC_ENABLE |
>> > -				    TGL_TRANS_DDI_SELECT_PORT(port);
>> > -	trans_conf_value |= PIPECONF_ENABLE;
>> > -	dp_tp_ctl_value |= DP_TP_CTL_ENABLE;
>> > -
>> > -	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
>> > -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
>> > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
>> > -		       trans_ddi_func_ctl_value);
>> > -}
>> > -
>> >  static void intel_dp_process_phy_request(struct intel_dp
>> > *intel_dp,
>> >  					 const struct intel_crtc_state
>> > *crtc_state)
>> >  {
>> > @@ -3748,14 +3693,10 @@ static void
>> > intel_dp_process_phy_request(struct intel_dp *intel_dp,
>> >  	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
>> >  				  link_status);
>> >  
>> > -	intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
>> > -
>> >  	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
>> >  
>> >  	intel_dp_phy_pattern_update(intel_dp, crtc_state);
>> >  
>> > -	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
>> > -
>> >  	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
>> >  			  intel_dp->train_set, crtc_state->lane_count);

-- 
Jani Nikula, Intel Open Source Graphics Center
