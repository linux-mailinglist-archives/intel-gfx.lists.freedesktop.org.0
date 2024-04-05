Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5751289A37F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96CA910F5FD;
	Fri,  5 Apr 2024 17:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="e7JqJgZp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4826910F5FD
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712338315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dngMj2rtBs9NhucgMGh6KCmhRW/t40vTfRCUBYvlPtU=;
 b=e7JqJgZpSO7q2GpCd3wtBG3dU6qViD/+omwH2Z5f3v2H/u51SDJfYRlsygmi8jVwk0t+11
 RfC4X1Lxfbh1kgjtrIIm/xleUqEYBs9jTFyop4m7lVKyMA3qwx9+kgrBWYAy4cPJkczCMS
 7jAIrMaibaYyX6lGKtEtzJX1JhlZ0FE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-216-UIa4QzdHNdy0Sjd1UmuFMQ-1; Fri, 05 Apr 2024 13:31:53 -0400
X-MC-Unique: UIa4QzdHNdy0Sjd1UmuFMQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-41489c04e3aso11703135e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 10:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712338312; x=1712943112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dngMj2rtBs9NhucgMGh6KCmhRW/t40vTfRCUBYvlPtU=;
 b=OtqrKMWMd/LYdCspH7/nes+4DL+qaUDWKrTI+u9r9NmyG/rio7R6GMam0J9VJlxGZc
 n+UhquLdshevhH9YEBunZUwk6etQh6IA8mztsDim/4cvj1/Qm7ivo3YLfKncHFd36dyh
 FPMJF3WYS8ih9ldjnfNJTLmnHukrVHFk1LhB4QYnYvGRMmTj+s6TO0kznx/YNNFY2dOB
 NgM1fzMyxX+TYNEYPA19SBf3I7LqtJTFFi/bvo9gdjOiymVF1hXPyrg64BhSJDHwz2ij
 ojlnwUZlVjNVtQLfach7v56/Q2wQaKtxl+G6qGwPMCmdRFntdFMxzUABtcr9D41ZIHJC
 kkWw==
X-Gm-Message-State: AOJu0YzP7KOTqgWyqjR+J47QzCJQlX90D4RjoASZywVMnDDiNYu8FEN3
 SRq9cl0g2wC7g1DGOAi7wiPgEG8mlU0xi6zVBOEqcgVccfcULx06d9mMfT9igtZZxdt9lM05Z5V
 4XqDbxhqoTqxOVhZp6gu7oe8sixhg9HVwxAVB4FJYmdYXbPX6RI/zcuA+hPBPvhgc/g==
X-Received: by 2002:a05:600c:3508:b0:412:ee8b:dead with SMTP id
 h8-20020a05600c350800b00412ee8bdeadmr1692966wmq.34.1712338312657; 
 Fri, 05 Apr 2024 10:31:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfsIxhr93U7ATLJY63Q5UdijKt37+CtyIWB0GKCrJ8WhuvkeQxg2JrJrNOzL2SUJ6yt7NASw==
X-Received: by 2002:a05:600c:3508:b0:412:ee8b:dead with SMTP id
 h8-20020a05600c350800b00412ee8bdeadmr1692950wmq.34.1712338312279; 
 Fri, 05 Apr 2024 10:31:52 -0700 (PDT)
Received: from toolbox ([2001:9e8:899a:a100:d85f:7bed:a911:4675])
 by smtp.gmail.com with ESMTPSA id
 je4-20020a05600c1f8400b004149536479esm3653196wmb.12.2024.04.05.10.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Apr 2024 10:31:51 -0700 (PDT)
Date: Fri, 5 Apr 2024 19:31:50 +0200
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, ville.syrjala@intel.com, naveen1.kumar@intel.com
Subject: Re: [6/7] drm/i915/dp: Write panel override luminance values
Message-ID: <20240405173150.GA933110@toolbox>
References: <20240404032931.380887-8-suraj.kandpal@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240404032931.380887-8-suraj.kandpal@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

On Thu, Apr 04, 2024 at 08:59:30AM +0530, Suraj Kandpal wrote:
> Write panel override luminance values which helps the TCON decide
> if tone mapping needs to be enabled or not.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 7af876e2d210..20dd5a6a0f3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -381,6 +381,29 @@ static const char *dpcd_vs_pwm_str(bool aux)
>  	return aux ? "DPCD" : "PWM";
>  }
>  
> +static void
> +intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_panel *panel = &connector->panel;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	int ret;
> +	u8 buf[4] = {};
> +
> +	buf[0] = panel->backlight.min & 0xFF;
> +	buf[1] = (panel->backlight.min & 0xFF00) >> 8;
> +	buf[2] = panel->backlight.max & 0xFF;
> +	buf[3] = (panel->backlight.max & 0xFF00) >> 8;
> +
> +	ret = drm_dp_dpcd_write(&intel_dp->aux,
> +				INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE,
> +				buf, sizeof(buf));
> +	if (ret < 0)
> +		drm_dbg_kms(&i915->drm,
> +			    "Panel Luminance DPCD reg write failed, err:-%d\n",
> +			    ret);
> +}
> +
>  static int
>  intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pipe)
>  {
> @@ -412,6 +435,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  		panel->backlight.min = 0;
>  	}
>  
> +	intel_dp_aux_write_panel_luminance_override(connector);
> +

Should this really always be set? It says override. Doesn't the TCON
have some values already that we're overriding?

>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.min, panel->backlight.max);

