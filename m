Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2899EE77F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 14:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F3B10EDAE;
	Thu, 12 Dec 2024 13:11:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="fUeDpK/O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D8210EAE0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 09:08:20 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-434f80457a4so2362905e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 01:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733908099; x=1734512899; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sOc5WY2rc/xEm+sPKHyC8DvQOWTsoRLRqyloQEsY77A=;
 b=fUeDpK/OqmRQD4Z72A7OVmxQyLV3mrLwv3RaMa/I6uUvZ4Vh95oQyhYKXqA7+MazER
 7SqAlkyDnJ7xqeadxGl956LBtbU8EYGy4Rl++S3Bb3bIKi3I2J8iha60dmuDh25b2s4j
 9bQ+Ml9ZRKmkiRz59QYqNMqWK9QbyEvv8uaAxikjvSLS+DqrGHNoZBd4ZGysY1I26ccn
 yAOYMKykG12jb9HziSFyatiYtxzoY2dCxLexjhqF+UZco2ECW/cGhoSvMOxargYuItAf
 lAJQ1BRjkvk3m+7rWLzwskOHKD/b7rL6uFNfAe7Nn/WAtJmBme8/uAA0uSmXdktCm/dp
 SpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733908099; x=1734512899;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sOc5WY2rc/xEm+sPKHyC8DvQOWTsoRLRqyloQEsY77A=;
 b=YhZmA58KsMCrcLofEXIo6beHgTi2WLTegdFa7NCHSuziAwU4M0mUHkcsFeefFaOV5j
 4MGcNPKc7DMpyP7NQwnUor9+fPV+XCM7EScfnqzn3guLSow4M0J9MIuMmXSchQ6BJ2HZ
 sgPZNseYktLPVzyOZ01YdS9P6rMQQi8C4jm8fMIt9gJnP4Ueso99HH27zFcwPznxOFYv
 Fv/JyfkOIpKR+R8Rnj+T0x6ipu7Q+/40exku3uDRoEI659EFye8/6mE6T5U0CNoC8OH3
 gWOxVvTjyfPrJ6z6h+y3qNhqYX3+kanAcAv6coX00VDigUp1nhK5FsSa2a2u1vWi9f5+
 IJvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7wgEQvhBaBWS/MCB2SEDbEeSCVqWA4MVpKDADDmlEaB+Z65eJO/O7GkeZM55Fm3akgLH8HEmEal8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywgw4BOco9RfbIColkIIVwUV3cie4W2Jsj0AskogzFvudossGTV
 7G0jLIlFWikx4O4D8CicbWgtQaCE+YSFlKLd/WRoaQi12u4tnAHlEIFiHRQWmq4=
X-Gm-Gg: ASbGncu+4G8KhGf8zrJhn1MuE2ziO1N2Jwh8h0IXe9RB3YlLb8JAuQQzU6VePSHHFJG
 /Eh0avqX6XLTDCF+GczUsyhh+mLvUSMzOomQnv0om0R5ubJPuCLzipK5L1gPdtsJJuEKBqRR6lG
 lQyC7ayelrhHNOO0TxRNKgF/RtDzuqgZw6o93jT8brgk57IsjXfT/+TAvR3QgQ2FOnl6rsBhDQS
 R09cqaDnAVNc13nd8Wh8MFOdahawUFUajAcfbSD7Sv3/84wex9C
X-Google-Smtp-Source: AGHT+IFWF72VEAOuphKHQ5dyzcCPjXpafd4+8begHjj7RZTqVLd3ZvocSIjkzAv1tDYNowU12sH8Hw==
X-Received: by 2002:a05:600c:3b11:b0:434:fa73:a906 with SMTP id
 5b1f17b1804b1-4361c5c4e21mr11693265e9.4.1733908098781; 
 Wed, 11 Dec 2024 01:08:18 -0800 (PST)
Received: from linaro.org ([82.76.168.176]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-434da0d2637sm220870775e9.2.2024.12.11.01.08.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 01:08:18 -0800 (PST)
Date: Wed, 11 Dec 2024 11:08:16 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Johan Hovold <johan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH RFC 4/4] drm/msm/dp: Add support for LTTPR handling
Message-ID: <Z1lWgDk6vzbx4ew7@linaro.org>
References: <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-0-cafbb9855f40@linaro.org>
 <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-4-cafbb9855f40@linaro.org>
 <6lpeexb5menpwrzcnmr367x4lmhvzyovhdybn54mnwk55ieehy@mos4oso67boo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6lpeexb5menpwrzcnmr367x4lmhvzyovhdybn54mnwk55ieehy@mos4oso67boo>
X-Mailman-Approved-At: Thu, 12 Dec 2024 13:11:29 +0000
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

On 24-10-31 18:54:25, Dmitry Baryshkov wrote:
> On Thu, Oct 31, 2024 at 05:12:48PM +0200, Abel Vesa wrote:
> > Link Training Tunable PHY Repeaters (LTTPRs) are defined in DisplayPort
> > 1.4a specification. As the name suggests, these PHY repeaters are
> > capable of adjusting their output for link training purposes.
> > 
> > The msm DP driver is currently lacking any handling of LTTPRs.
> > This means that if at least one LTTPR is found between DPTX and DPRX,
> > the link training would fail if that LTTPR was not already configured
> > in transparent mode.
> 
> It might be nice to mention what is the transparent mode, especially for
> those who do not have the standard at hand.

Sorry for the late reply.

Will do in the next version.

> 
> > The section 3.6.6.1 from the DisplayPort v2.0 specification mandates
> > that before link training with the LTTPR is started, the DPTX may place
> > the LTTPR in non-transparent mode by first switching to transparent mode
> > and then to non-transparent mode. This operation seems to be needed only
> > on first link training and doesn't need to be done again until device is
> > unplugged.
> > 
> > It has been observed on a few X Elite-based platforms which have
> > such LTTPRs in their board design that the DPTX needs to follow the
> > procedure described above in order for the link training to be successful.
> > 
> > So add support for reading the LTTPR DPCD caps to figure out the number
> > of such LTTPRs first. Then, for platforms (or Type-C dongles) that have
> > at least one such an LTTPR, set its operation mode to transparent mode
> > first and then to non-transparent, just like the mentioned section of
> > the specification mandates.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/dp/dp_display.c | 25 +++++++++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> > index f01980b0888a40b719d3958cb96c6341feada077..5d3d318d7b87ce3bf567d8b7435931d8e087f713 100644
> > --- a/drivers/gpu/drm/msm/dp/dp_display.c
> > +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> > @@ -107,6 +107,8 @@ struct dp_display_private {
> >  	struct dp_event event_list[DP_EVENT_Q_MAX];
> >  	spinlock_t event_lock;
> >  
> > +	u8 lttpr_caps[DP_LTTPR_COMMON_CAP_SIZE];
> > +
> >  	bool wide_bus_supported;
> >  
> >  	struct dp_audio *audio;
> > @@ -367,12 +369,35 @@ static int dp_display_send_hpd_notification(struct dp_display_private *dp,
> >  	return 0;
> >  }
> >  
> > +static void dp_display_lttpr_init(struct dp_display_private *dp)
> > +{
> > +	int lttpr_count;
> > +
> > +	if (drm_dp_read_lttpr_common_caps(dp->aux, dp->panel->dpcd,
> > +					  dp->lttpr_caps))
> > +		return;
> > +
> > +	lttpr_count = drm_dp_lttpr_count(dp->lttpr_caps);
> > +
> > +	if (lttpr_count) {
> > +		drm_dp_lttpr_set_transparent_mode(dp->aux, true);
> > +
> > +		if (lttpr_count > 0) {
> > +			if (drm_dp_lttpr_set_transparent_mode(dp->aux, false) != 1)
> > +				drm_dp_lttpr_set_transparent_mode(dp->aux, true);
> > +		}
> > +	}
> > +}
> > +
> >  static int dp_display_process_hpd_high(struct dp_display_private *dp)
> >  {
> >  	struct drm_connector *connector = dp->dp_display.connector;
> >  	const struct drm_display_info *info = &connector->display_info;
> >  	int rc = 0;
> >  
> > +	if (!dp->dp_display.is_edp)
> > +		dp_display_lttpr_init(dp);
> 
> Why is it limited to non-eDP cases only.

In case of eDP, I don't think that there will ever by a case that will
need an LTTPR in between the eDP PHY and the actual panel. It just
doesn't make sense.

IIUC, the LTTPRs, since are Training Tunnable capable, they help when
the physical link between the PHY and the sink can differ based on
different dongles and cables. This is obviously not applicable to eDP.

> 
> > +
> >  	rc = dp_panel_read_sink_caps(dp->panel, connector);
> >  	if (rc)
> >  		goto end;
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry
