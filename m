Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 766EC40B9A1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 23:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B6189F35;
	Tue, 14 Sep 2021 21:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6386A89F31
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 21:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631653716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OPVYUaa4q0JMTrFQlPjMgLUYioMDrptsB6v0OwyeL30=;
 b=HHkb+gxxEENVqeJ0B0fZ8kpKp7gMTmS+zluzNQXl1aqbvJywaLR/QPigsydZKA1/m6WuMY
 1CJ5LydJb36TkVa+mrWLWIazZfqyErNmSO1FEWAKTM+VYcZFqZOG1Ya0fzlwNIt7DcqBnn
 TcPXGKn2Wpx17ni2+VIrVuPp72ZwSPc=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-yJo8WTIWNOK7XAO58_TfHA-1; Tue, 14 Sep 2021 17:08:35 -0400
X-MC-Unique: yJo8WTIWNOK7XAO58_TfHA-1
Received: by mail-qt1-f197.google.com with SMTP id
 l22-20020a05622a175600b0029d63a970f6so186865qtk.23
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 14:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=OPVYUaa4q0JMTrFQlPjMgLUYioMDrptsB6v0OwyeL30=;
 b=cXFTx1MT6KpNiffuahvOYSmqmBIoLs8DntoTpXHzkLw4pt0DghKCIeODdD3inQhOQM
 K1kAP4/xeyEqzDWV5x3sQJVQ7t/kZ3Vz+p5fXfUNrCsqhFtbOkwbh1LoQM4RdWCymQet
 figIpNxRH0F1Ap8usDlfUl8WAEVHj6LXohP3ru9rrJnnq50rEy2SvvYGT2NMMbHL2eMT
 sJOjHCxmZIc/5QZPOjMGKNDEZcIWkFLSUtYTAYizEBu+n97AdC4VHBPyHM2rV2EDwcwT
 YIcYkkdxgtB6A+NZTrg27G1LuNiqWoJ+XSm4AYCHW5vzVHTDsQ4WefGqa9R6jKoODF5N
 jlkQ==
X-Gm-Message-State: AOAM533dWEbs4mkap7tPNFENKa+6tZiKwDKczXiBQrG5wexm3Xtzr+4o
 mAVz8Hvf/AZT/M0VOmpY1aIobWQslUn+6jusmt+XqdFKxCC1zh2TYigSw+oU8Xs/oTpxjN3FO08
 8Fag+dx2sTRoA4D4WcsMD8K7y7wT1
X-Received: by 2002:ad4:54ea:: with SMTP id k10mr6640536qvx.25.1631653714743; 
 Tue, 14 Sep 2021 14:08:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz0+Z22sjfUZHtZx9EapanuMNFi+HsTNb8/Z5vHEZJQ+JdxKJlAdgwvwXw55vH9n9BiuWCDhw==
X-Received: by 2002:ad4:54ea:: with SMTP id k10mr6640521qvx.25.1631653714548; 
 Tue, 14 Sep 2021 14:08:34 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id w12sm6539773qtc.47.2021.09.14.14.08.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Sep 2021 14:08:34 -0700 (PDT)
Message-ID: <410de2c8e865446ec7f9d72a419b2674d34891bf.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Vasily Khoruzhick
 <anarsoul@gmail.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,  Sean Paul <seanpaul@chromium.org>, Aaron
 Ma <aaron.ma@canonical.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Tue, 14 Sep 2021 17:08:32 -0400
In-Reply-To: <87r1dr34nk.fsf@intel.com>
References: <20210913193509.3575-1-anarsoul@gmail.com>
 <87r1dr34nk.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: add a delay before setting
 panel brightness after power on
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

On Tue, 2021-09-14 at 12:09 +0300, Jani Nikula wrote:
> On Mon, 13 Sep 2021, Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> > Panel in my Dell XPS 7590, that uses Intel's HDR backlight interface to
> > control brightness, apparently needs a delay before setting brightness
> > after power on. Without this delay the panel does accept the setting
> > and may come up with some arbitrary brightness (sometimes it's too dark,
> > sometimes it's too bright, I wasn't able to find a system).
> > 
> > I don't have access to the spec, so I'm not sure if it's expected
> > behavior or a quirk for particular device.
> > 
> > Delay was chosen by experiment: it works with 100ms, but fails with
> > anything lower than 75ms.
> 
> Looks like we don't respect the panel delays for DPCD backlight. The
> values are used for setting up the panel power sequencer, and thus PWM
> based backlight, but we should probably use the delays in DPCD backlight
> code too.

This makes sense to me, you're referring to the panel delays in the VBT
correct?

> 
> BR,
> Jani.
> 
> 
> > 
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 4f8337c7fd2e..c4f35e1b5870 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -210,6 +210,10 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> >  
> >         ctrl = old_ctrl;
> >         if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +               /* Wait 100ms to ensure that panel is ready otherwise it
> > may not
> > +                * set chosen backlight level
> > +                */
> > +               msleep(100);
> >                 ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> >                 intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >         } else {
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

