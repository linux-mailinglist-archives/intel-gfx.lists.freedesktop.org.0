Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5C29EE77C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 14:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED2610EDAD;
	Thu, 12 Dec 2024 13:11:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="YKJWe3di";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB3B10EB05
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 10:52:08 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-385e0e224cbso3334091f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 02:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733914326; x=1734519126; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XFBLxqgMKAfLfvAfVQrN7MaLGNe6NYPC9fHI64gRBug=;
 b=YKJWe3di8TgknfF/DD9EcvEYFH9CkF9qVfMjQx+Ymf8j+FpDAzAWCxZwJkIt1J2LOi
 GKnhzmZOtF55azJK2xAZrgvpWOPLSVuixOg7rR7iA5K1hxFZQ4OH7cJRoAEVSfE2320x
 M+nYS7C3VobPo8A4CvCpJPEGLkbSBYZkkO77EjAs/ZYc4JOnynUoQQ8mrYsFhPVmq3gA
 AZC/xoWBF9S/eEA1xlTgvOZ6GXJVTwGpxV2sra2ozj1YmUnHXsMHoeV55z5KljaitLIw
 MyyN0luXQz5P00dMYXoYY99eycvqp3fhJj0SD6kqZIKTH2iDSMB/QdH6ScKUazBuv9Zp
 RALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733914326; x=1734519126;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XFBLxqgMKAfLfvAfVQrN7MaLGNe6NYPC9fHI64gRBug=;
 b=MjL0DdIrHleWf+yWfzohX7CE3CBWHeze900IyfFcXCUxkBOIhCkDvRUzCu8LHHzM1a
 qkOWmLrOpzYbIiKKBDhx0dQhJyu3V6q+8Sw/QzXFjQv0iIPCMPmabfrFnhhR7vCiEuVt
 9jS7kWVK55CaVEFf6VvwxOT0IFFIU1faC+zYIK3qoODAVZlouDBHWUU/6PfZ4Ib4ngXo
 te7ZawSuR1/G0kz8YXoAEZDStf+IbaMUYA30fZjO4jo7LX4hcKGb0z41gnuYuj3ndR6v
 HItq3SEYs1qYCAFGUC4I1PzbDpHK9ny43TexG+pqrZ6hA+3gE6mZS5GRN5zi1YLoYecF
 NLmg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUG9UL7N42fy32G9ATzrzsScmz9XacJjuXnuiGJkoP+8tq8RfEIWBeHjx9MHk42DAA9CS3/ed8zJqs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwUE3y57NmqwIUWYY6OunDcUYWkLO9byMLUdZ2HeznTdnnQsnlH
 WcUd6iwZFPN4ugiOhLc5j/RA8lwFSIml1ZP+wiJswsyY/NtFkT1dhIKB/eck9ZM=
X-Gm-Gg: ASbGncuTejkfxSITxj/uG6PbJgLJ+I7LkflcL6AEXNOatR42CaCyD/iy96Mu8NnPVN9
 ep/dYep7uY3gf4zJvLCECm5PL8dbRbD3isFVQXdAWp8BUc7CWtfFome0DUww5cPMkFCzQuUZOwC
 nP+BeB6i+cB8+G4JXYovm6jClCC06Pv2QNeBamDYiYHm/gHO1tpI95dlTsFnfwHLBT54xwNcRNg
 5rnlP6AIrjcFKAccMjoxCz1l32jTbRos6WcA4lWCGnxHMjAHiPp
X-Google-Smtp-Source: AGHT+IFBGgeOIhgT/0xoVrPzs9kikKVwZG8cyzRbTcEIDbZA5WI7Cssaqba8E6bBXazv0oFwTl1XNg==
X-Received: by 2002:a05:6000:a0b:b0:385:ebea:969d with SMTP id
 ffacd0b85a97d-3864ce55a7fmr1934159f8f.22.1733914326450; 
 Wed, 11 Dec 2024 02:52:06 -0800 (PST)
Received: from linaro.org ([82.76.168.176]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-387824a4e98sm1006870f8f.34.2024.12.11.02.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 02:52:05 -0800 (PST)
Date: Wed, 11 Dec 2024 12:52:03 +0200
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
Message-ID: <Z1lu04a4hlvAUQbX@linaro.org>
References: <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-0-cafbb9855f40@linaro.org>
 <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-4-cafbb9855f40@linaro.org>
 <6lpeexb5menpwrzcnmr367x4lmhvzyovhdybn54mnwk55ieehy@mos4oso67boo>
 <Z1lWgDk6vzbx4ew7@linaro.org>
 <iqt3i5mha44wksx7zqjjccz3od5tavyxygyda2dn2fz2w77n36@gyo3dh6a6j72>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <iqt3i5mha44wksx7zqjjccz3od5tavyxygyda2dn2fz2w77n36@gyo3dh6a6j72>
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

On 24-12-11 11:55:54, Dmitry Baryshkov wrote:
> On Wed, Dec 11, 2024 at 11:08:16AM +0200, Abel Vesa wrote:
> > On 24-10-31 18:54:25, Dmitry Baryshkov wrote:
> > > On Thu, Oct 31, 2024 at 05:12:48PM +0200, Abel Vesa wrote:
> > > > Link Training Tunable PHY Repeaters (LTTPRs) are defined in DisplayPort
> > > > 1.4a specification. As the name suggests, these PHY repeaters are
> > > > capable of adjusting their output for link training purposes.
> > > > 
> > > > The msm DP driver is currently lacking any handling of LTTPRs.
> > > > This means that if at least one LTTPR is found between DPTX and DPRX,
> > > > the link training would fail if that LTTPR was not already configured
> > > > in transparent mode.
> > > 
> > > It might be nice to mention what is the transparent mode, especially for
> > > those who do not have the standard at hand.
> > 
> > Sorry for the late reply.
> > 
> > Will do in the next version.
> > 
> > > 
> > > > The section 3.6.6.1 from the DisplayPort v2.0 specification mandates
> > > > that before link training with the LTTPR is started, the DPTX may place
> > > > the LTTPR in non-transparent mode by first switching to transparent mode
> > > > and then to non-transparent mode. This operation seems to be needed only
> > > > on first link training and doesn't need to be done again until device is
> > > > unplugged.
> > > > 
> > > > It has been observed on a few X Elite-based platforms which have
> > > > such LTTPRs in their board design that the DPTX needs to follow the
> > > > procedure described above in order for the link training to be successful.
> > > > 
> > > > So add support for reading the LTTPR DPCD caps to figure out the number
> > > > of such LTTPRs first. Then, for platforms (or Type-C dongles) that have
> > > > at least one such an LTTPR, set its operation mode to transparent mode
> > > > first and then to non-transparent, just like the mentioned section of
> > > > the specification mandates.
> > > > 
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > ---
> > > >  drivers/gpu/drm/msm/dp/dp_display.c | 25 +++++++++++++++++++++++++
> > > >  1 file changed, 25 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> > > > index f01980b0888a40b719d3958cb96c6341feada077..5d3d318d7b87ce3bf567d8b7435931d8e087f713 100644
> > > > --- a/drivers/gpu/drm/msm/dp/dp_display.c
> > > > +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> > > > @@ -107,6 +107,8 @@ struct dp_display_private {
> > > >  	struct dp_event event_list[DP_EVENT_Q_MAX];
> > > >  	spinlock_t event_lock;
> > > >  
> > > > +	u8 lttpr_caps[DP_LTTPR_COMMON_CAP_SIZE];
> > > > +
> > > >  	bool wide_bus_supported;
> > > >  
> > > >  	struct dp_audio *audio;
> > > > @@ -367,12 +369,35 @@ static int dp_display_send_hpd_notification(struct dp_display_private *dp,
> > > >  	return 0;
> > > >  }
> > > >  
> > > > +static void dp_display_lttpr_init(struct dp_display_private *dp)
> > > > +{
> > > > +	int lttpr_count;
> > > > +
> > > > +	if (drm_dp_read_lttpr_common_caps(dp->aux, dp->panel->dpcd,
> > > > +					  dp->lttpr_caps))
> > > > +		return;
> > > > +
> > > > +	lttpr_count = drm_dp_lttpr_count(dp->lttpr_caps);
> > > > +
> > > > +	if (lttpr_count) {
> > > > +		drm_dp_lttpr_set_transparent_mode(dp->aux, true);
> > > > +
> > > > +		if (lttpr_count > 0) {
> > > > +			if (drm_dp_lttpr_set_transparent_mode(dp->aux, false) != 1)
> > > > +				drm_dp_lttpr_set_transparent_mode(dp->aux, true);
> > > > +		}
> > > > +	}
> > > > +}
> > > > +
> > > >  static int dp_display_process_hpd_high(struct dp_display_private *dp)
> > > >  {
> > > >  	struct drm_connector *connector = dp->dp_display.connector;
> > > >  	const struct drm_display_info *info = &connector->display_info;
> > > >  	int rc = 0;
> > > >  
> > > > +	if (!dp->dp_display.is_edp)
> > > > +		dp_display_lttpr_init(dp);
> > > 
> > > Why is it limited to non-eDP cases only.
> > 
> > In case of eDP, I don't think that there will ever by a case that will
> > need an LTTPR in between the eDP PHY and the actual panel. It just
> > doesn't make sense.
> > 
> > IIUC, the LTTPRs, since are Training Tunnable capable, they help when
> > the physical link between the PHY and the sink can differ based on
> > different dongles and cables. This is obviously not applicable to eDP.
> 
> I think I just have a different paradigm: if the driver explicitly skips
> calling a function in some codepath, I assume that the usecase it broken
> or expected not to work (e.g. I read your patch like: LTTPR is expected
> not to work in eDP). If you would prefer to keep two separate code
> paths, please add a comment like 'we don't expect LTTPRs in eDP
> usecase`.

Fair point. But maybe I should drop the non-eDP condition entirely,
since the LTTPR count will read 0 and then the new helper (which
will be called drm_dp_lttpr_init() and will handle the disable->enable->disable
dance, just like you requested) will bail early if LTTPR count is 0.

That way should be more clean, IMO.

> 
> > > > +
> > > >  	rc = dp_panel_read_sink_caps(dp->panel, connector);
> > > >  	if (rc)
> > > >  		goto end;
> > > > 
> > > > -- 
> > > > 2.34.1
> > > > 
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> 
> -- 
> With best wishes
> Dmitry
