Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A65CF1A10C2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170D36E8A8;
	Tue,  7 Apr 2020 15:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BC26E8A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 15:55:56 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id s8so4473414wrt.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 08:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Zz5pPKcp7gVjA79pDzhxbyVOwv3uzNbtXBxvXtE++7c=;
 b=rc2v7dKNfm2o7I1P2SionBBxofMDian0UCtP/4DQvTm1DpLOVVyPZ6XQmA9S8WDNhE
 jzr2WYOeTqOLdODDylgBrX4dahAzHdod8xjoJsYzqVtBvmVFHRKbA/ss71UgCSGGg52E
 ErW8+RyO7COw3Vo1ahlfXZePh0TRJ9i2FbF6JA5p5NZFfbg5Ark/Mq4MjkkVUWV5i80D
 xTB8zKS0/5KHWDQ3x3ln5/2mpochedgOCYC9olFh4Ati0Xia4RSiviR89pizGNATxSQ0
 tm02ldjRpQ2GtK18dNiM0CHK59GjFozDyCMlFdplEjEJXG59hd4HS6q0vbMVAoiOQJJK
 msyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Zz5pPKcp7gVjA79pDzhxbyVOwv3uzNbtXBxvXtE++7c=;
 b=sCp4oRCJx6wRozdkaepTImvig/gxincpL+LhpRvWVMCobafHuIOB1DQ9C9dPjsLtEf
 a8Qv1pP2laX+Bz9MR/0MsxRxkPXjXGDNJbzWeIWXnqMJBhFyn2ymZdiYMEGiQCT+P8C7
 PUiK8FweAyjC8atHBsnSRxexm1qbKXOJeh035+e/oFXgTGCo9vYFTYqXTZ0vHRJRzb+J
 CPvQ6PApNsD00TkTHU5gRW2SvdWC3RmKUaYqFv//LH8vEyHN3hGj/SVJYBPV975Kbn+c
 Zriw/MMTOtzkX9CjtLp6SwS8LAbnaeMNVtJdv01OmXUGcPBqnw0aKjdmdIP3FGKsUhBA
 Ef6g==
X-Gm-Message-State: AGi0PuaZpMOMikOnFhphdsXOmoD8eHLdx1plcRw/z9buDeMt7gIOkdKU
 Hesmw5bcLEdxMyPCBIFZXvk=
X-Google-Smtp-Source: APiQypKo3i4BHPoLUmqlf4liKpiP8sYkGCe5Q6B6ZzjLV5dNSmpKbtHF4P0iSZosnkHPnyDrSlUfoQ==
X-Received: by 2002:adf:ec11:: with SMTP id x17mr3408223wrn.42.1586274954744; 
 Tue, 07 Apr 2020 08:55:54 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id s13sm15487515wrw.20.2020.04.07.08.55.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 08:55:53 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Apr 2020 18:54:15 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-7-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004071853180.100944@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-7-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/17] drm/i915/bw: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/display/intel_bw.c | 9 +++++----
> 1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 58b264bc318d..88f367eb28ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -338,16 +338,17 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
> 			  const struct intel_crtc_state *crtc_state)
> {
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>
> 	bw_state->data_rate[crtc->pipe] =
> 		intel_bw_crtc_data_rate(crtc_state);
> 	bw_state->num_active_planes[crtc->pipe] =
> 		intel_bw_crtc_num_active_planes(crtc_state);
>
> -	DRM_DEBUG_KMS("pipe %c data rate %u num active planes %u\n",
> -		      pipe_name(crtc->pipe),
> -		      bw_state->data_rate[crtc->pipe],
> -		      bw_state->num_active_planes[crtc->pipe]);
> +	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
> +		    pipe_name(crtc->pipe),
> +		    bw_state->data_rate[crtc->pipe],
> +		    bw_state->num_active_planes[crtc->pipe]);
> }
>
> static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
