Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33559A05C67
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 14:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F2210E1F1;
	Wed,  8 Jan 2025 13:12:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Mv33jmNc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DC710E1F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 13:12:55 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-5401bd6cdb7so16974488e87.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jan 2025 05:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736341914; x=1736946714; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=DRFucKupJRi3JrfmGRRAwshOALuZUCh2srHJV4yPz/M=;
 b=Mv33jmNcOx1uLVFuBEll+weXo+PS6GGZ/Volpyics+kpVx1OOClJqIxdn6JaWnu5eD
 FTli67TWA4DEHrrJdwv386+emn72S2cdjRQgIls0JBkybGqC0VCluOTzpqTAL6kE9AVu
 /jZlRK0qyFNYShVcV8BtJ7BxMmEzTV9aUewkcqmNmJGlEmzp92pOR0s1itIWFgFjzSu6
 n2gICtDhurxGX0pC/HTJIqtvQ3TR3HRkEJ9aZ6gYPvGUFMZ2kt9RaBj0JYn37lvOKwon
 voHI4PQBaQriMC1Bx8HiQpRukjrYO24wiM7Ym2ZyDLWyVlYTmnkxihlxj6apTRPF5H9s
 Et0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736341914; x=1736946714;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DRFucKupJRi3JrfmGRRAwshOALuZUCh2srHJV4yPz/M=;
 b=fW6RHJYOCK/kuw5xDfliSlVblPgwXgdw9hglq7iVoeielS+CksHiY9eEvHgL2e5/UR
 VQu19kZKb+a5v0+gQsNLPxiAtaTxQKalghfjzCHeu/5fv0xIQZw3NntxoqHIaIp6W67v
 VdOGeZX6f32M1JFtwnJumI+kMDN392UQBAZPWmqK4jFz7kSSqEe+6J7g9qKyVob2PUT5
 pPeU2yblT9bD7nta3hUeZToI8Au1WvFZCAwj/9srwW3XFdtd3nisWlblqVehXSdkL355
 QOE/QWLaUh5hxL/EMlxhqu5QeyNE1RR7C0lMobRP0DSXqmj7DbK8ysrqcvg8e/2z/RuB
 u41Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/wst89OcGVjl9ftxSmRtNGR+RcwdLeiLZsXj4Sb+7QowozICJFpY+iYNmHTvKjRSn7BcuKR186E0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzq0Wn2P6mJc6f0oKZ90VJXV0n/4xEUQHiiGd5U7Z8IM2VhGwOj
 sXxd/idR/AS3lYmM63b7vt6g0LnvLmQTT1H1PB4sRcD8kepqA6ay1CklXFB3axk=
X-Gm-Gg: ASbGncuUsFpiu3utOUiNysXAydb5IxrQZyML491urjFCUkx0jFXgBy0NUZeTZcFCzu+
 Sk69MNGA9FxKyp4kp9LQetxu0ZLB7NXJ+r5AGfgjUsehmhNDnwO9wXVB55kGPKSOQe/QkvBK01M
 bK68aZWkrQhfO86l4K6YU/ipiu6PXaI7hxfTx5VLRiLT5IOFlkKuhkxmZzcNmhQ/yQdoyN2V7EK
 itOLW6LJBI/+t3ykjGj3Z1jaxorbc0H9NTltuRpHXseREjvm48jiISr8BHCmaecr/6shk34a82K
 j8KHfUIP2OQR5J22qTDTr6ZclLgnLPZ/NLfs
X-Google-Smtp-Source: AGHT+IH+8M6pwb6Rkal5Oy3icsCCUmDzxSkXtYlmI/444nM3KABxABMYN+TTayrP+FqimK/xSMwSqw==
X-Received: by 2002:a05:6512:acf:b0:542:63a8:3939 with SMTP id
 2adb3069b0e04-542845a6f01mr769532e87.8.1736341913844; 
 Wed, 08 Jan 2025 05:11:53 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-542238301efsm5581695e87.247.2025.01.08.05.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2025 05:11:52 -0800 (PST)
Date: Wed, 8 Jan 2025 15:11:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>,
 dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH v3 3/4] drm/i915/dp: Use the generic helper to control
 LTTPR transparent mode
Message-ID: <enzj72vy523bvlphbygxn42zocvhx24eghreffzrthomhy5jxo@2l4h345h7ojl>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
 <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-3-5c367f4b0763@linaro.org>
 <3p3wgzhtptjexplxrluod6sk36xeltpoh4hxg2yagssw7nh7hj@ikc4rssp6zej>
 <Z3vQfIIDDgnFJsDn@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z3vQfIIDDgnFJsDn@linaro.org>
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

On Mon, Jan 06, 2025 at 02:45:48PM +0200, Abel Vesa wrote:
> On 25-01-03 20:09:42, Dmitry Baryshkov wrote:
> > On Fri, Jan 03, 2025 at 02:58:17PM +0200, Abel Vesa wrote:
> > > LTTPRs operating modes are defined by the DisplayPort standard and the
> > > generic framework now provides a helper to switch between them, which
> > > is handling the explicit disabling of non-transparent mode and its
> > > disable->enable sequence mentioned in the DP Standard v2.0 section
> > > 3.6.6.1.
> > > 
> > > So use the new drm generic helper instead as it makes the code a bit
> > > cleaner.
> > > 
> > > Acked-by: Imre Deak <imre.deak@intel.com>
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  .../gpu/drm/i915/display/intel_dp_link_training.c  | 24 +++++-----------------
> > >  1 file changed, 5 insertions(+), 19 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 8b1977cfec503c70f07af716ee2c00e7605c6adf..c5bad311edf7b9a5cebb633b9e9692bae397f9ed 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -119,9 +119,6 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
> > >  	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> > >  			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> > >  
> > > -	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
> > > -		return false;
> > > -
> > >  	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
> > >  				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
> > >  
> > > @@ -146,6 +143,7 @@ static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
> > >  static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> > >  {
> > >  	int lttpr_count;
> > > +	int ret;
> > >  
> > >  	if (!intel_dp_read_lttpr_common_caps(intel_dp, dpcd))
> > >  		return 0;
> > > @@ -172,22 +170,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
> > >  		return lttpr_count;
> > >  	}
> > >  
> > > -	/*
> > > -	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
> > > -	 * non-transparent mode and the disable->enable non-transparent mode
> > > -	 * sequence.
> > > -	 */
> > > -	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
> > > -
> > > -	/*
> > > -	 * In case of unsupported number of LTTPRs or failing to switch to
> > > -	 * non-transparent mode fall-back to transparent link training mode,
> > > -	 * still taking into account any LTTPR common lane- rate/count limits.
> > > -	 */
> > > -	if (lttpr_count < 0)
> > > -		goto out_reset_lttpr_count;
> > > -
> > > -	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
> > > +	ret = drm_dp_lttpr_init(&intel_dp->aux, lttpr_count);
> > > +	if (ret) {
> > >  		lt_dbg(intel_dp, DP_PHY_DPRX,
> > >  		       "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
> > >  
> > > @@ -196,6 +180,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
> > >  		goto out_reset_lttpr_count;
> > >  	}
> > >  
> > > +	intel_dp_set_lttpr_transparent_mode(intel_dp, false);
> > > +
> > 
> > I think the code now misses a way to update intel_dp->lttpr_common_caps
> > in a transparent-mode case:
> > intel_dp_set_lttpr_transparent_mode(intel_dp, true).
> 
> It is being called if the drm_dp_lttpr_init() returns a non-zero value,
> but that is not part of the diff here.

Ack, thanks for the explanation. I'd suggest mentioning that in the
commit message.

> 
> > 
> > >  	return lttpr_count;
> > >  
> > >  out_reset_lttpr_count:
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry
