Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DC3A07551
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 13:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C0F10ED7E;
	Thu,  9 Jan 2025 12:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="VfkpfpvK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D47910ED81
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 12:10:20 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-4361f664af5so10473145e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jan 2025 04:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736424619; x=1737029419; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ScDEvNBMi9Yu3n8HTIx1zSceI6fYU9kCdn5rYgIhGU8=;
 b=VfkpfpvK5wDzWi2Kh1DxFsQYa/rLiILXejpqQiiWkfy1Q7hdC8ePQKa4A2l9QSj54m
 SXJAaD6y8Hf7mnGNUFSR/1B+i1ssOfv5X3x2ilqd6vMozgjTOZnnyfQdfhRZniU40VP+
 B4LUdHQT8uAj1mT9mHsBhP2v/zrTRp8fSiArMH5VZpc8s8vuhQqZwcImXiD+7gwl5v9I
 8w7gv4UVIU9DmFBSAHUeCy5GlaPFsslc9SG7L3YiyaTEsDm2Xm1//e/Z70a68f4/jYMV
 5J5m7nUCLFno0pdGwn1ybrhxZCQjNC5SMimqPFODiMc8xFMGuePFhyTap/ItC9VEtuq3
 BByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736424619; x=1737029419;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ScDEvNBMi9Yu3n8HTIx1zSceI6fYU9kCdn5rYgIhGU8=;
 b=CJ9t3Oc3C4vijAP3VvYzhoZO/9sQmgak+nZqP6BoZPSD3RsDgNttfF5jRSoIoJN4lA
 t/J40MAsIM/bHaeXbXMUvl0llfNtp7CV8ZU9MK3f2VipUtclQLecHi2it922ZC5ZpCnj
 L7D2jkjEW6P+54WzZm4DhyAd8Jp32IJZrlDrcGcuUwQWPwhtR8L5otfR4T3F874zKUma
 7oM0NwO6vTvoH3gFuAMuW7Pt3gX5TwWPtxNbo9pl6n8U6aAdtGZOwOV68u8B71eyppan
 ivAuIor5re8kA5PZj5oaRs+tvCtfQrDfZE+07krqaxNpqIfLcdCMfq0SCRvnACp+tjH6
 GO3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVfUaazJ8B3It8P56REeATtVB/BLl8KZRrgHBuMJvGmXJilLFUufIzNj1V644CE6Pm4+JtlKDrzw1w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwYIGKUB1c/m6WXJWQ2io4IjWMy6gZrfahisXfN6ZyzR2QvZJaI
 LPCsRb0XNco7j0jJRy85M/pQwUng7NvIMWXpf0V/j+yJHFybcDmQwuRfowLEpzw=
X-Gm-Gg: ASbGncsoe+KTTQXxazxrHuJTmg3mN/N0tMLlV7zQFZrF6x57vfrhC5iqEF6/K5whenJ
 j+EsALlKK8xTRJk1tNZ8uMGz8SKD43b5tnj7hxTi0lrLv0xLARweaDd1GjwXDWfwGvQprRH/72v
 GQSlJb1Dm1/H+2jJDLsistrOw/b4mYW+5lUk5rdawUUQ+/OdYEUILwodvPj5+lMO54+l7HXn0PD
 UjWMD6nvid5489G0tGXRpncF+zoHJh+gR/PIi1yoFVCH8j2Bd1oCi0=
X-Google-Smtp-Source: AGHT+IG8rp+QX8v4S4fqKATVXk+QD/aEvAPXmO9Bulu0mN6QuKMDbLW3pqUmFSzB7pw+E5Uf11Sy2A==
X-Received: by 2002:a05:600c:46ce:b0:436:6ddf:7a27 with SMTP id
 5b1f17b1804b1-436e27072a7mr53497435e9.23.1736424618831; 
 Thu, 09 Jan 2025 04:10:18 -0800 (PST)
Received: from linaro.org ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2da63eesm53042595e9.3.2025.01.09.04.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2025 04:10:18 -0800 (PST)
Date: Thu, 9 Jan 2025 14:10:16 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
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
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Johan Hovold <johan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v4 4/4] drm/msm/dp: Add support for LTTPR handling
Message-ID: <Z3+8qDc19zicI6vQ@linaro.org>
References: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
 <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-4-918949bc2e3a@linaro.org>
 <feb4f780-8fe6-426b-9ba4-ab1fb102ac27@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <feb4f780-8fe6-426b-9ba4-ab1fb102ac27@quicinc.com>
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

On 25-01-08 14:57:41, Abhinav Kumar wrote:
> 
> 
> On 1/8/2025 6:31 AM, Abel Vesa wrote:
> > Link Training Tunable PHY Repeaters (LTTPRs) are defined in DisplayPort
> > 1.4a specification. As the name suggests, these PHY repeaters are
> > capable of adjusting their output for link training purposes.
> > 
> > According to the DisplayPort standard, LTTPRs have two operating
> > modes:
> >   - non-transparent - it replies to DPCD LTTPR field specific AUX
> >     requests, while passes through all other AUX requests
> >   - transparent - it passes through all AUX requests.
> > 
> > Switching between this two modes is done by the DPTX by issuing
> > an AUX write to the DPCD PHY_REPEATER_MODE register.
> > 
> > The msm DP driver is currently lacking any handling of LTTPRs.
> > This means that if at least one LTTPR is found between DPTX and DPRX,
> > the link training would fail if that LTTPR was not already configured
> > in transparent mode.
> > 
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
> > Tested-by: Johan Hovold <johan+linaro@kernel.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   drivers/gpu/drm/msm/dp/dp_display.c | 17 +++++++++++++++++
> >   1 file changed, 17 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> > index 24dd37f1682bf5016bb0efbeb44489061deff060..ad09daa4c8ab5c0eb67890509b94e72820bab870 100644
> > --- a/drivers/gpu/drm/msm/dp/dp_display.c
> > +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> > @@ -107,6 +107,8 @@ struct msm_dp_display_private {
> >   	struct msm_dp_event event_list[DP_EVENT_Q_MAX];
> >   	spinlock_t event_lock;
> > +	u8 lttpr_caps[DP_LTTPR_COMMON_CAP_SIZE];
> > +
> 
> The reason downstream stored it panel is to read it first in dp_panel's
> read_sink_caps and call lttpr_init if drm_dp_lttpr_count() is non-zero.
> 
> But here it looks like  msm_dp_display_lttpr_init() internally handles this
> for us. So no need to store this?

Replied to Bjorn already about this and why I thought it was a good idea
to add it.

But will drop in the next version.

> 
> >   	bool wide_bus_supported;
> >   	struct msm_dp_audio *audio;
> > @@ -367,12 +369,27 @@ static int msm_dp_display_send_hpd_notification(struct msm_dp_display_private *d
> >   	return 0;
> >   }
> > +static void msm_dp_display_lttpr_init(struct msm_dp_display_private *dp)
> > +{
> > +	int rc;
> > +
> > +	if (drm_dp_read_lttpr_common_caps(dp->aux, dp->panel->dpcd,
> > +					  dp->lttpr_caps))
> > +		return;
> > +
> > +	rc = drm_dp_lttpr_init(dp->aux, drm_dp_lttpr_count(dp->lttpr_caps));
> > +	if (rc)
> > +		DRM_ERROR("failed to set LTTPRs transparency mode, rc=%d\n", rc);
> > +}
> > +
> >   static int msm_dp_display_process_hpd_high(struct msm_dp_display_private *dp)
> >   {
> >   	struct drm_connector *connector = dp->msm_dp_display.connector;
> >   	const struct drm_display_info *info = &connector->display_info;
> >   	int rc = 0;
> > +	msm_dp_display_lttpr_init(dp);
> > +
> 
> Can you pls move this call after msm_dp_panel_read_sink_caps()?
> 
> If msm_dp_panel_read_sink_caps() fails there is no need to call
> msm_dp_display_lttpr_init().

Sure.

> 
> 
> >   	rc = msm_dp_panel_read_sink_caps(dp->panel, connector);
> >   	if (rc)
> >   		goto end;
> > 

Thanks for reviewing!

Abel
