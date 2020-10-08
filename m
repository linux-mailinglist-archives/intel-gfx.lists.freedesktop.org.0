Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6301E287A15
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 18:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172526E16D;
	Thu,  8 Oct 2020 16:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3196E16D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 16:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602175175;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gHKD0aQI/7JBaioK/QfMPV93J3kvny7ubmqoofn11rg=;
 b=WAXb0ubEDA1bE9TkfB3ouWoALHEpqcIdB3v0whoypeBiQZxQP6p5KysYuDuqMPeNKK4RLD
 MLwXdKaBtUyniz4hOh6t2myI7jeWa2WGpyGf5goCgbidSsNk/xtNSKQIR1iMLZTQSdMmeE
 lZw5WtZkR9wSrqILMJEXm8LEBVVF4QA=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-qpW0G7SsN9eDdm-KtDKtjA-1; Thu, 08 Oct 2020 12:39:34 -0400
X-MC-Unique: qpW0G7SsN9eDdm-KtDKtjA-1
Received: by mail-qk1-f199.google.com with SMTP id c19so4357338qkk.20
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Oct 2020 09:39:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=gHKD0aQI/7JBaioK/QfMPV93J3kvny7ubmqoofn11rg=;
 b=htA95sItDjW92YEQOl08wN9GwzEKlXqnKA4se/G2f2cOkMpsxy10g4gGjPPC9vYTMY
 vCTOMXQ7JiESCvnb+ojT275Tu0gB03g0geZMaDwnVIiLQ127Bkc5DLD2rgHgTBWjLMIN
 XtKqw9/AtD4TBaoQPzJx1Td3TpWg4lUYRwQB9y7mcU/vQA6ohnf882ir5HQTbWcLKCZT
 z/U7v+cBzzLTYp7CsK0PpE1U3dl9BEHkqmHsQCOc6uyQSiddNzgzA4n5uYaXwdxlWC1B
 znFFm0ZZXXHekhjYl+YJXP0lcTeENjPvOcw7hT6qgGEIy7yUdkOlI/z5PsTGBxmlSC5B
 eZZA==
X-Gm-Message-State: AOAM530yvGFeJjjq8bdRcbdCssobhRpvZSLW5UDEhoJZ/C2aVO+ZZDk2
 BFsnCSOSwdr1kQGnk2tb7KiJIbwJUjBums0WXEaWHPvJssxAnUuBSzYs+xvvqRWE4hWgNniEctl
 gOyotzuBGVRQrvZdrkLaVbJBg9Unu
X-Received: by 2002:a05:6214:a03:: with SMTP id
 dw3mr8534278qvb.44.1602175172883; 
 Thu, 08 Oct 2020 09:39:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzzD/BIqM2qDW5EZsbmKgRQ4QnPZvC3mJ/hmWWb2lDFMa2/m4vcbfXCB2+gIzlq1RNY0B0gDA==
X-Received: by 2002:a05:6214:a03:: with SMTP id
 dw3mr8534258qvb.44.1602175172573; 
 Thu, 08 Oct 2020 09:39:32 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id c1sm4534743qta.86.2020.10.08.09.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 09:39:31 -0700 (PDT)
Message-ID: <c06193df9273fb396bdb40e73aed64197ba3b01d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Thu, 08 Oct 2020 12:39:30 -0400
In-Reply-To: <D18BA369-25A0-4D5E-A171-9EACF7DC950B@canonical.com>
References: <20201007065915.13883-1-kai.heng.feng@canonical.com>
 <268f495fbb7e3042eb613398a8513a83d28d3fd9.camel@redhat.com>
 <D18BA369-25A0-4D5E-A171-9EACF7DC950B@canonical.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dpcd_bl: Skip testing control
 capability with force DPCD quirk
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
Reply-To: lyude@redhat.com
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-10-08 at 10:32 +0800, Kai-Heng Feng wrote:
> Hi Lyude,
> 
> > On Oct 8, 2020, at 05:53, Lyude Paul <lyude@redhat.com> wrote:
> > 
> > Hi! I thought this patch rang a bell, we actually already had some
> > discussion
> > about this since there's a couple of other systems this was causing issues
> > for.
> > Unfortunately it never seems like that patch got sent out. Satadru?
> > 
> > (if I don't hear back from them soon, I'll just send out a patch for this
> > myself)
> > 
> > JFYI - the proper fix here is to just drop the
> > DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP check from the code entirely. As
> > long as
> > the backlight supports AUX_SET_CAP, that should be enough for us to control
> > it.
> 
> Does the proper fix include dropping DP_QUIRK_FORCE_DPCD_BACKLIGHT entirely?\

Not yet - we need someone to help with reviewing my Intel HDR backlight
interface patches before we can drop that. I was just talking about dropping the
check where we don't enable the DPCD backlight if it claims to support
DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP

> 
> Kai-Heng
> 
> > 
> > On Wed, 2020-10-07 at 14:58 +0800, Kai-Heng Feng wrote:
> > > HP DreamColor panel needs to be controlled via AUX interface. However,
> > > it has both DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP and
> > > DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP set, so it fails to pass
> > > intel_dp_aux_display_control_capable() test.
> > > 
> > > Skip the test if the panel has force DPCD quirk.
> > > 
> > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > ---
> > > drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++----
> > > 1 file changed, 6 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index acbd7eb66cbe..acf2e1c65290 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -347,9 +347,13 @@ int intel_dp_aux_init_backlight_funcs(struct
> > > intel_connector *intel_connector)
> > > 	struct intel_panel *panel = &intel_connector->panel;
> > > 	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
> > > 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > +	bool force_dpcd;
> > > +
> > > +	force_dpcd = drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
> > > +				      DP_QUIRK_FORCE_DPCD_BACKLIGHT);
> > > 
> > > 	if (i915->params.enable_dpcd_backlight == 0 ||
> > > -	    !intel_dp_aux_display_control_capable(intel_connector))
> > > +	    (!force_dpcd &&
> > > !intel_dp_aux_display_control_capable(intel_connector)))
> > > 		return -ENODEV;
> > > 
> > > 	/*
> > > @@ -358,9 +362,7 @@ int intel_dp_aux_init_backlight_funcs(struct
> > > intel_connector *intel_connector)
> > > 	 */
> > > 	if (i915->vbt.backlight.type !=
> > > 	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> > > -	    i915->params.enable_dpcd_backlight != 1 &&
> > > -	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
> > > -			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
> > > +	    i915->params.enable_dpcd_backlight != 1 && !force_dpcd) {
> > > 		drm_info(&i915->drm,
> > > 			 "Panel advertises DPCD backlight support, but "
> > > 			 "VBT disagrees. If your backlight controls "
> > -- 
> > Sincerely,
> >      Lyude Paul (she/her)
> >      Software Engineer at Red Hat
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
