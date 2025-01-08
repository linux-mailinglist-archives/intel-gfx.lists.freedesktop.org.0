Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 100F4A05D40
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 14:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A399510E426;
	Wed,  8 Jan 2025 13:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Q1T0aWrr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 069BA10E426
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 13:47:43 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-5d3cf094768so4925240a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jan 2025 05:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736344001; x=1736948801; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=RJuigyfwmP8g+AjzZPBKqd3NanhyQaBWQuNEBkBgD08=;
 b=Q1T0aWrr1zPw/OosdKTteFJUa7lzzu8wMZnNYwxoX9FVoDHIT2a2k8OdAIJ8cA5F6X
 mr8Pbx4lAL2OqFx51ABW0HmsHlaFCHvGtcLw4Ds7me0A0yZx2QFCn1Jl+4Oo9opFsSNE
 vTePfcUb8wUQr6Fur9PYX49FUEvu1U4yJt89DRflzlgsl2anBdGtGzERdABVdJOeR3sB
 vh+U6e40SAD9s76kvRF9cS5ywg2A7jikN//6BEvYF62hog2CeT+qTgWkLat5mdD6Ktma
 3WmWEm+Fw5GP1p6HkMXIbMBA06LA6qR+e3frZ/VSm+d2lvLsI7hSNeenYEwBy+dTLAfj
 uLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736344001; x=1736948801;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RJuigyfwmP8g+AjzZPBKqd3NanhyQaBWQuNEBkBgD08=;
 b=PmjRveS11T7twpYLu01zefKiHABnlTSX27HrSj3vGIwf/kmFxxTK1nYjFD6s1OCfO0
 Cj8g4y2w33qo7Qsy5/7PGICzBR6qwsElXCYtQEf3SJiBAzP4seIjYxyod/ufBWNvRMQc
 UiyrRI+F+2Zm362ceOHng7hKbMAgVIlNUFzmPtnjFcAyYL3QdmdXgZZHeJ4qmCSr4s9x
 M32+A5E5Jd1F/lNwzyyDqCBQmfULxMOy6AcOs7qzbK/1MaFdQIe0Pn2eDGdk2KOCYmEh
 8TtLKumNgmET7+bkH9R5mfKbo9BGVIvXQZ2PLIIOTAQtJh5GnpwAJrRO9a7lhyp9s3RK
 6+Pg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSZZMZdrcN2sv3eQz+/1kSUz7PDzVixVt0b0yH156ZiIgEqmx7OqK6XDmZXBI0mZfjFwPX2RCH51o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwQ1PC6H+SQuIwy/OoDw+buY0P+c3k631YFxDbwEm/lIPjkSZ28
 U2lgPAOea9GoRRJDYHS7zleeQjn86xjqmJDeZDMMaRksD+69yplgFkHuQFcAJO2DWfR7gjpzm+s
 z
X-Gm-Gg: ASbGncu/eqlGqbNssVgT5J4fUgXpaV0TfFeO3hTFg4/YqrbfhXNYbybKPp27UGc4WIq
 ANzSWka2n0CILUmXaU4yaOdKppf6gHMe1SiYCVCwtXsO3/NG735JCcMPhJ3l7XuTTsu4gUilScS
 lciuM0e603XihOFPCk+E1fUHBCQ6TA9VMM8Z/uOF5m4buQtdfvqKRMBf2mV02BiFmKsACr0mBed
 OxKEbJ/qPe+bIs/MvJrDX7Z7H0TL7EN1MNs4tH+EKXfuNofGz8MYrY=
X-Google-Smtp-Source: AGHT+IEBlTrxBtjf7901ssDCnGeSN4NcUwtvM8JV72Q4zJ9UCPrPz4BdIknjwwKXyCc18LVEe1ItmQ==
X-Received: by 2002:a05:600c:3b91:b0:436:46f9:4fc6 with SMTP id
 5b1f17b1804b1-436e26928e6mr24415245e9.8.1736342135088; 
 Wed, 08 Jan 2025 05:15:35 -0800 (PST)
Received: from linaro.org ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2e21e1esm20577465e9.38.2025.01.08.05.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2025 05:15:34 -0800 (PST)
Date: Wed, 8 Jan 2025 15:15:29 +0200
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
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH v3 3/4] drm/i915/dp: Use the generic helper to control
 LTTPR transparent mode
Message-ID: <Z356cSOjqJYrSMvt@linaro.org>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
 <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-3-5c367f4b0763@linaro.org>
 <3p3wgzhtptjexplxrluod6sk36xeltpoh4hxg2yagssw7nh7hj@ikc4rssp6zej>
 <Z3vQfIIDDgnFJsDn@linaro.org>
 <enzj72vy523bvlphbygxn42zocvhx24eghreffzrthomhy5jxo@2l4h345h7ojl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <enzj72vy523bvlphbygxn42zocvhx24eghreffzrthomhy5jxo@2l4h345h7ojl>
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

On 25-01-08 15:11:50, Dmitry Baryshkov wrote:
> On Mon, Jan 06, 2025 at 02:45:48PM +0200, Abel Vesa wrote:
> > On 25-01-03 20:09:42, Dmitry Baryshkov wrote:
> > > On Fri, Jan 03, 2025 at 02:58:17PM +0200, Abel Vesa wrote:
> > > > LTTPRs operating modes are defined by the DisplayPort standard and the
> > > > generic framework now provides a helper to switch between them, which
> > > > is handling the explicit disabling of non-transparent mode and its
> > > > disable->enable sequence mentioned in the DP Standard v2.0 section
> > > > 3.6.6.1.
> > > > 
> > > > So use the new drm generic helper instead as it makes the code a bit
> > > > cleaner.
> > > > 
> > > > Acked-by: Imre Deak <imre.deak@intel.com>
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > ---
> > > >  .../gpu/drm/i915/display/intel_dp_link_training.c  | 24 +++++-----------------
> > > >  1 file changed, 5 insertions(+), 19 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > index 8b1977cfec503c70f07af716ee2c00e7605c6adf..c5bad311edf7b9a5cebb633b9e9692bae397f9ed 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > @@ -119,9 +119,6 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
> > > >  	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> > > >  			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> > > >  
> > > > -	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
> > > > -		return false;
> > > > -
> > > >  	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
> > > >  				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
> > > >  
> > > > @@ -146,6 +143,7 @@ static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
> > > >  static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> > > >  {
> > > >  	int lttpr_count;
> > > > +	int ret;
> > > >  
> > > >  	if (!intel_dp_read_lttpr_common_caps(intel_dp, dpcd))
> > > >  		return 0;
> > > > @@ -172,22 +170,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
> > > >  		return lttpr_count;
> > > >  	}
> > > >  
> > > > -	/*
> > > > -	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
> > > > -	 * non-transparent mode and the disable->enable non-transparent mode
> > > > -	 * sequence.
> > > > -	 */
> > > > -	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
> > > > -
> > > > -	/*
> > > > -	 * In case of unsupported number of LTTPRs or failing to switch to
> > > > -	 * non-transparent mode fall-back to transparent link training mode,
> > > > -	 * still taking into account any LTTPR common lane- rate/count limits.
> > > > -	 */
> > > > -	if (lttpr_count < 0)
> > > > -		goto out_reset_lttpr_count;
> > > > -
> > > > -	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
> > > > +	ret = drm_dp_lttpr_init(&intel_dp->aux, lttpr_count);
> > > > +	if (ret) {
> > > >  		lt_dbg(intel_dp, DP_PHY_DPRX,
> > > >  		       "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
> > > >  
> > > > @@ -196,6 +180,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
> > > >  		goto out_reset_lttpr_count;
> > > >  	}
> > > >  
> > > > +	intel_dp_set_lttpr_transparent_mode(intel_dp, false);
> > > > +
> > > 
> > > I think the code now misses a way to update intel_dp->lttpr_common_caps
> > > in a transparent-mode case:
> > > intel_dp_set_lttpr_transparent_mode(intel_dp, true).
> > 
> > It is being called if the drm_dp_lttpr_init() returns a non-zero value,
> > but that is not part of the diff here.
> 
> Ack, thanks for the explanation. I'd suggest mentioning that in the
> commit message.

Sure. Will do.

> 
> > 
> > > 
> > > >  	return lttpr_count;
> > > >  
> > > >  out_reset_lttpr_count:
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

Thanks for reviewing!

Abel
