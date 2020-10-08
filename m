Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44236287A92
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 19:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4FE6E0BE;
	Thu,  8 Oct 2020 17:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79C66EAA1
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 17:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602176822;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rK1iYGxAQ5ciDSQAszI1wUVPzFtoiJoG8sac/Clna0o=;
 b=X2ZO5ffjOAmq12BLTKkp+xuJWVJrZzC30+AosoSwEqwbYr7VXLpH8xxO/LjPENoG8vV2/6
 2Yp1O3Oe6AVz9PnKTG452e0vymr06kjGpJ21gfRDBKhCxPUix7cSworgxY4hn47IX26Dop
 2vAGlHaSyRK/2kKWw4NpHXaIc4Cjt4o=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-453-qjOehKAbMZ6xrfslNSUQVg-1; Thu, 08 Oct 2020 13:06:59 -0400
X-MC-Unique: qjOehKAbMZ6xrfslNSUQVg-1
Received: by mail-qk1-f200.google.com with SMTP id v190so2016034qki.21
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Oct 2020 10:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=rK1iYGxAQ5ciDSQAszI1wUVPzFtoiJoG8sac/Clna0o=;
 b=lvYb3qehH0I8qNTTTbfCS/+Wu6J9m50GlUQeIXEkJZFRHtIUueZGNDvig3Jm96/XwR
 IdgD1ljq7iIqabmlK+Ytnw8s48xGsNyGIG5UidtiZDnZx2C5frx1MM2AfuSfJQHDMCyq
 qHjxhpkAzmpIupuc1ZxHRK8QgOFE5W09B4XD/yyhd57da6OG+KNm+h5JUcHaHk4cmsHH
 h6grfXCN9J9ErR8bqk00w+qZeN1sLOB2QIh1eH/EQ/4p6euh30evHwTTXAAUmz08QCx+
 QrWkbDhKdK3VbBlPFsxcbLPFheFZyyCYE9tVxOo4Vn+JIqeIBrWZlkyFZVIe6DFUxEBu
 9vbg==
X-Gm-Message-State: AOAM531Q0xhaVzlKHC3wWAiqkbLk4x1CbUXPPj5GmBhyWTOxJQJyzBlK
 EkH70chBGXnoLFhn+dPjCeSdVPBA4+EkV0nqT1jba/DG72zGNbySpIUn60W9qIK8ETybVQcbwzm
 P0WPDLr6Z/fuv1JrqwsBttiSUNBPP
X-Received: by 2002:ac8:73d0:: with SMTP id v16mr9207126qtp.384.1602176819473; 
 Thu, 08 Oct 2020 10:06:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxWocfkdhUGtEO7kiKzKyk6jBtDfxMhS6Bm8W9msZo38JHs1faT+EE/7YE2XbW0+jmyeTPl3A==
X-Received: by 2002:ac8:73d0:: with SMTP id v16mr9207108qtp.384.1602176819239; 
 Thu, 08 Oct 2020 10:06:59 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id j24sm4342925qkg.107.2020.10.08.10.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 10:06:58 -0700 (PDT)
Message-ID: <27402476cddeef59e9ee05e1cdda430a9e34d29c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Thu, 08 Oct 2020 13:06:57 -0400
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

oh hold on, I misspoke. Here's the patch I was thinking of:

https://patchwork.freedesktop.org/series/82041/

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
> Does the proper fix include dropping DP_QUIRK_FORCE_DPCD_BACKLIGHT entirely?
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
