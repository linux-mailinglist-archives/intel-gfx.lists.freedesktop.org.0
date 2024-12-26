Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A9AA04337
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF55410EAED;
	Tue,  7 Jan 2025 14:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gl29Q2Gg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37C910E075
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2024 13:08:32 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-4361fe642ddso68009465e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2024 05:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1735218451; x=1735823251; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2xYN5a7hOoppgoAE3bkR8Zunji5zT+kUi/AFcDG3CeI=;
 b=Gl29Q2GgjeMXIuTlwwk7TXmaNjV4vgFNQwRa0nx+vXumJn0W2Xr4U2aRrdar6u5N9d
 lN+SpzfmvFWJYu02X28HwM5rmU9gAKaQkNZaBXashyDaSKR8WqThcfdXoOJ+R7Urtp5k
 WnQ+UsQvMjkHpqTtkdDJ23L/BxJNMJQXTlj5Z9fLrrGjhR2haGgHxF0MYr4cAS7gif5U
 jzVAVD3O5LmcLbAx7slq53CpxrBZD+dtC7IVjvCOHsAuH9duOYcYLEB2eusQnV/HL7nl
 ZpqmweDCCf6VRNrYI6kk96MHmvx5YDKXDQcvvtL6Mps0f8tcul4xN0dfzLyamn0a6/aB
 vNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735218451; x=1735823251;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2xYN5a7hOoppgoAE3bkR8Zunji5zT+kUi/AFcDG3CeI=;
 b=DFzJmH7b7xY0xgK2uJ3/yyImfXTPw5KccP4khejdCMmX0BHbN16kRw5wT2dqsl+h03
 Cbaqt6MB/g6YEYBiEbBqNX+PGblguTXuYAfBA3ZJF3l4TKhynKQhIFlsHnHDApmG2dsa
 MCbOb2qKw4m0zxlONj8jYYcH2NH+PDLi6hJTZPQ7FFXNe300QTOM0RnigicOookzR/8G
 z8ZlfRQt4zWCiuMpePiMLcJEKXMn0tdJMRHo46+haIMDOi/rDbDXGuMhj9KjGq+x34Gi
 t3bErIgIoy5tuss758tTnPEg0N8f6qP6EsCTuq+YTYM/pMcR6kfQ8+s+ooQIUvC3uvYk
 cfBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8wVAGCZCV+2o8BFZ9EXg8hWKIA2G8u7ajcnO4kC2HwE/hqQ7+gCAk9qAFivg3R5Pv99trdAyoyIQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywjxmkp8vHo5OfRJDR9uWjP/RCmUuwNL++gT1Ujmwzos968xKUb
 RvjXNqS2yrQdgHfD++STSkEeRBzEWYkuEazQljBiwOpYcTUzsrE3u+jy/Q8zhQw=
X-Gm-Gg: ASbGnctOthSU0VsC9h27/1kUJpFfaYmc0d4uaWbVZw+d9jzIkzW+EycS68yzy8gk9aj
 0u/Ve6sMEL07azhr/nh8cfhP7+CYr2Q3I8QxEukGraUpWH+XuiXQhzR4+KtLUMHlh5eDFadT1B5
 4Tn0ftanhnY+o5zPncLryjGy57IJNj7v/jvVVDKZbCwU/CppIp6nv6Z1iJW4OvG+FYUw3IWxF2B
 INL98KAuuQrpLM20TWqrV3zifTsqoIxfCR4uiM9yNIkH/DXSOxK8T8=
X-Google-Smtp-Source: AGHT+IGvNY9x8znPid+jlSUugq+7Voy4lhkFD150p7UMeaZJEhSIyuzOQxvdWb877xCzmOFRcxCZRA==
X-Received: by 2002:a05:600c:4f11:b0:435:9ed3:5698 with SMTP id
 5b1f17b1804b1-43668b5e09bmr177464715e9.24.1735218451158; 
 Thu, 26 Dec 2024 05:07:31 -0800 (PST)
Received: from linaro.org ([82.76.168.176]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4364a376846sm264591185e9.0.2024.12.26.05.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2024 05:07:29 -0800 (PST)
Date: Thu, 26 Dec 2024 15:07:27 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
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
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] drm/dp: Add helper to set LTTPRs in transparent
 mode
Message-ID: <Z21VD82XCOVgVJUh@linaro.org>
References: <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-0-d5906ed38b28@linaro.org>
 <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-1-d5906ed38b28@linaro.org>
 <Z1mk08SHEd5_vc99@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1mk08SHEd5_vc99@hovoldconsulting.com>
X-Mailman-Approved-At: Tue, 07 Jan 2025 14:52:08 +0000
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

On 24-12-11 15:42:27, Johan Hovold wrote:
> On Wed, Dec 11, 2024 at 03:04:12PM +0200, Abel Vesa wrote:
>  
> > +/**
> > + * drm_dp_lttpr_set_transparent_mode - set the LTTPR in transparent mode
> > + * @aux: DisplayPort AUX channel
> > + * @enable: Enable or disable transparent mode
> > + *
> > + * Returns 0 on success or a negative error code on failure.
> > + */
> > +int drm_dp_lttpr_set_transparent_mode(struct drm_dp_aux *aux, bool enable)
> > +{
> > +	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> > +			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> > +	int ret = drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE, val);
> > +
> > +	return ret == 1 ? 0 : ret;
> 
> This looks correct, but I had to go look at drm_dp_dpcd_writeb() to make
> sure it never returns 0 (for short transfers).

Will follow Dmitry's proposal here.

	if (ret < 0)
        	return ret;

	return (ret == 1) ? 0 : -EIO;


> 
> > +}
> > +EXPORT_SYMBOL(drm_dp_lttpr_set_transparent_mode);
> 
> This appears to be what the driver currently uses, but why not
> EXPORT_SYMBOL_GPL?
> 
> > +
> > +/**
> > + * drm_dp_lttpr_init - init LTTPR transparency mode according to DP standard
> > + *
> > + * @aux: DisplayPort AUX channel
> > + * @lttpr_count: Number of LTTPRs
> > + *
> > + * Returns 0 on success or a negative error code on failure.
> > + */
> > +int drm_dp_lttpr_init(struct drm_dp_aux *aux, int lttpr_count)
> > +{
> > +	if (!lttpr_count)
> > +		return 0;
> > +
> > +	/*
> > +	 * See DP Standard v2.0 3.6.6.1 about the explicit disabling of
> > +	 * non-transparent mode and the disable->enable non-transparent mode
> > +	 * sequence.
> > +	 */
> > +	drm_dp_lttpr_set_transparent_mode(aux, true);
> 
> Error handling?

Yes, this makes sense. But other than throwing an error I don't think
there is much to be done. I'll add an drm_err here just in case. 

> 
> > +
> > +	if (lttpr_count > 0 && !drm_dp_lttpr_set_transparent_mode(aux, false))
> 
> No need to check lttpr_count again here.

So the logic behind lttpr_count and this transparency mode changing, as
specified in the DP standard, is as follows:

- If there are 0 LTTPRs counted, then nothing to be done, otherwise set to
transparent mode.

- Then, if there are between 0 and 8 LTTPRs counted, set non-transparent
mode successfully.

- Otherwise, rollback to transparent mode.

This last rollback might result in two transparent mode settings without
a non-transparent one in between, but AFAIU, that is OK. Making sure this
doesn't happen would just make the implementation more ugly without any
benefit, IMO.

> 
> > +		return 0;
> 
> I'd check for errors instead of success here and do the rollback before
> returning -EINVAL.
> 

Yes, I think it would be more cleaner. Will do that.

> > +
> > +	/*
> > +	 * Roll-back to tranparent mode if setting non-tranparent mode failed or
> > +	 * the number of LTTPRs is invalid
> > +	 */
> > +	drm_dp_lttpr_set_transparent_mode(aux, true);
> > +
> > +	return -EINVAL;
> 
> And return 0 explicitly here.

Yes. Will do that.

> 
> > +}
> > +EXPORT_SYMBOL(drm_dp_lttpr_init);
> 
> In any case this works well and is needed for external display on the
> Lenovo ThinkPad T14s, while not breaking the X13s which does not need
> it:
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Johan

Thanks for reviewing and testing!
Abel

