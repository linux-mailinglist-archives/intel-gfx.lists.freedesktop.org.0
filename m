Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE28159791
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62CF06F408;
	Tue, 11 Feb 2020 18:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FABC6F408
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:01:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id c9so13593066wrw.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 10:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZbY9e71SO5qF4EnjaAWR6x5o409Ay+fOuj1uKDzW/MM=;
 b=Jkh0XKI1+jXDPTaR5QAES8JNUQZcbKqylIHazMTd33Re/ZEx1An8eDqXtmZ7Msi1uI
 7bBrthoQwPWv7wq04LoE7bCwuO3/usDCJpvVpBHJPOX/XvVQqo6CZixC+/71Yuy/IvmX
 HOuSsn5NjHdtuS+zDvSb+53gmk6yb+U0sZ4G4iidJtiu1JUx3QcWh1greE7OoFyy8Hbp
 Dz/D+vUO7VFkojM4tUMpRlzzfOa/cfqCo4uR4oJzIS9gCj9CUsjjC1VGQPzG6vBo8SLP
 lzSyTtKrjyg6PEH7UOscoELl6AGjRKrfE0jxwhkkgpqs3iZ5JT6RRUcj/Ovtaqq9NHrh
 4aNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZbY9e71SO5qF4EnjaAWR6x5o409Ay+fOuj1uKDzW/MM=;
 b=F3zYwtDJ5UFnr0+9b+cy7qdSuZRmK/1U9OsxKHotHsIPZEQ545ZYretsKdBmRnn4w6
 xZtqnWR9fNoA8NwsiSjb09ZrKKYwRDzYJyZ0srv2mGYCcmE44GGueUIaecII0FUMqzRI
 WXWTaUB8qgdXwQnQBXjjQNQltFCb3AVqDlwJTpCe4x9VCQS3iPvRZiImaofLypEA5Tsv
 G7OxGdsBmEnjUBNs6n5YD6XNGnIvTMV8K4K1ES5G+/Jv4D3ztO2x66Y+N1mSdCW59nqJ
 hk4ONwxyEQ6ePtzz+X9ETHYfofb5KhywdCs/Ecokf32M6bpO/+dFvw3Efl/bcCjLCWuD
 ieng==
X-Gm-Message-State: APjAAAWopMxoBeuLELSCxhDnafcptwhfGknBZJQWnr9CgyCXlI/AKsF7
 THFm0WCf9tM9Z4GBXK1A/Bk=
X-Google-Smtp-Source: APXvYqxewzJGqP2ojK498SEi3EyglRJYxqtzCOI/0nCxEDJexPD89m/xde8vfMJU5ZHEzAFXcfxFCQ==
X-Received: by 2002:adf:dd52:: with SMTP id u18mr9549900wrm.131.1581444111030; 
 Tue, 11 Feb 2020 10:01:51 -0800 (PST)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id z10sm4404491wmk.31.2020.02.11.10.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 10:01:50 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 11 Feb 2020 21:01:26 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200211134427.31605-1-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2002112047380.21042@wambui>
References: <20200211134427.31605-1-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: prefer to_i915() over
 drm->dev_private to get at i915
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Tue, 11 Feb 2020, Jani Nikula wrote:

> drm->dev_private is to be avoided. Use to_i915() on the struct
> drm_device pointer instead. Rename the affected local dev_priv variables
> to i915 while at it.
>

Applies cleanly, and compiles.
Changes also look good to me.

Reviewed by: Wambui Karuga <wambui.karugax@gmail.com>

> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++--------------
> 1 file changed, 10 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e68bafb76cb1..bee9c9b1a770 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1274,10 +1274,9 @@ void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
> static int intel_hdmi_hdcp_read(struct intel_digital_port *intel_dig_port,
> 				unsigned int offset, void *buffer, size_t size)
> {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
> -	struct drm_i915_private *dev_priv =
> -		intel_dig_port->base.base.dev->dev_private;
> -	struct i2c_adapter *adapter = intel_gmbus_get_adapter(dev_priv,
> +	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
> 							      hdmi->ddc_bus);
> 	int ret;
> 	u8 start = offset & 0xff;
> @@ -1304,10 +1303,9 @@ static int intel_hdmi_hdcp_read(struct intel_digital_port *intel_dig_port,
> static int intel_hdmi_hdcp_write(struct intel_digital_port *intel_dig_port,
> 				 unsigned int offset, void *buffer, size_t size)
> {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
> -	struct drm_i915_private *dev_priv =
> -		intel_dig_port->base.base.dev->dev_private;
> -	struct i2c_adapter *adapter = intel_gmbus_get_adapter(dev_priv,
> +	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
> 							      hdmi->ddc_bus);
> 	int ret;
> 	u8 *write_buf;
> @@ -1339,10 +1337,9 @@ static
> int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
> 				  u8 *an)
> {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
> -	struct drm_i915_private *dev_priv =
> -		intel_dig_port->base.base.dev->dev_private;
> -	struct i2c_adapter *adapter = intel_gmbus_get_adapter(dev_priv,
> +	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
> 							      hdmi->ddc_bus);
> 	int ret;
>
> @@ -1521,8 +1518,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
> static
> bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> {
> -	struct drm_i915_private *dev_priv =
> -		intel_dig_port->base.base.dev->dev_private;
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> 	struct intel_connector *connector =
> 		intel_dig_port->hdmi.attached_connector;
> 	enum port port = intel_dig_port->base.port;
> @@ -1537,14 +1533,13 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> 	if (ret)
> 		return false;
>
> -	intel_de_write(dev_priv, HDCP_RPRIME(dev_priv, cpu_transcoder, port),
> -		       ri.reg);
> +	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
>
> 	/* Wait for Ri prime match */
> -	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
> +	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
> 		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
> -			  intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
> +			  intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
> 		return false;
> 	}
> 	return true;
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
