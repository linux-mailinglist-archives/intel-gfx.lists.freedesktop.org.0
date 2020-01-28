Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B67314BDED
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 17:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9C06E0DE;
	Tue, 28 Jan 2020 16:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6436E0DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 16:41:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 08:41:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="222160413"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 08:41:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B80A195D5@BGSMSX108.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200127111608.7246-1-vandita.kulkarni@intel.com>
 <87o8upcdie.fsf@intel.com>
 <57510F3E2013164E925CD03ED7512A3B80A195D5@BGSMSX108.gar.corp.intel.com>
Date: Tue, 28 Jan 2020 18:41:19 +0200
Message-ID: <87tv4fbkk0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Enable dsi as part of
 encoder->enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jan 2020, "Kulkarni, Vandita" <vandita.kulkarni@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@intel.com>
>> Sent: Monday, January 27, 2020 5:34 PM
>> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>
>> Subject: Re: [PATCH] drm/i915/dsi: Enable dsi as part of encoder->enable
>> 
>> On Mon, 27 Jan 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
>> > Enable the dsi transcoder, panel and backlight as part of
>> > encoder->enable and not encoder->pre_enable.
>> 
>> That's the *what*, and we can see that much from the patch.
>> 
>> But we need to know *why*, and why you think it was done like this before, and
>> why it's okay now, etc.
>
> Now this is necessary, as we should configure pipe parameters like pipe_src_size before enabling the pipe_config for dsi,
> And we are using the same code path as other encoders.
> I will update the same in the commit message.
> Thank you,
>
> Also please let me know your opinion on handling pipe src size part to icl_dsi to before enabling the transcoder.

This patch is now part of [1]. Please review.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/72678/

>
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++++++++--
>> >  1 file changed, 8 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > index 1186a5df057e..d40ee5951168 100644
>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > @@ -1086,8 +1086,6 @@ static void gen11_dsi_pre_enable(struct
>> intel_encoder *encoder,
>> >  				 const struct intel_crtc_state *pipe_config,
>> >  				 const struct drm_connector_state
>> *conn_state)  {
>> > -	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> > -
>> >  	/* step3b */
>> >  	gen11_dsi_map_pll(encoder, pipe_config);
>> >
>> > @@ -1101,6 +1099,13 @@ static void gen11_dsi_pre_enable(struct
>> > intel_encoder *encoder,
>> >
>> >  	/* step6c: configure transcoder timings */
>> >  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
>> > +}
>> > +
>> > +static void gen11_dsi_enable(struct intel_encoder *encoder,
>> > +				 const struct intel_crtc_state *pipe_config,
>> > +				 const struct drm_connector_state
>> *conn_state) {
>> > +	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> >
>> >  	/* step6d: enable dsi transcoder */
>> >  	gen11_dsi_enable_transcoder(encoder);
>> > @@ -1727,6 +1732,7 @@ void icl_dsi_init(struct drm_i915_private
>> > *dev_priv)
>> >
>> >  	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
>> >  	encoder->pre_enable = gen11_dsi_pre_enable;
>> > +	encoder->enable = gen11_dsi_enable;
>> >  	encoder->disable = gen11_dsi_disable;
>> >  	encoder->post_disable = gen11_dsi_post_disable;
>> >  	encoder->port = port;
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
