Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DDB6795BA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 11:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59A710E66C;
	Tue, 24 Jan 2023 10:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587E410E66B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 10:49:20 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id r9so13444878wrw.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 02:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:in-reply-to:organization:references:cc:to
 :content-language:subject:reply-to:from:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ivkoSEmBL37qh5eawT21bwSiFYzbxKghoG8dL7YpIvA=;
 b=uXFv6QAyNXJEHl0pb424C7/0iVnf8MyGqR7arx50c0rXRAU90vQokno+NlaCAhkGP4
 qMKce8F8IZjDvF56xtAz6D94KJjvJAeT8fpDMRLo9yM+U9PleZ9XK0GS3EEvOcUTgtD5
 CznJ3+x2bO25G63nQdFbyvebVB2wo2YYmlFA8i1LAH2UFZWAlNryQXUGpDHRUq+aXp8W
 qadn0afLRE/KutGuSnDZNmrR7JjW9hrPqvi6KEmbzvjKmqw7Jyx/XhUIDbCsGKw22uJh
 pwpvAwQGnrBAU+i5pr6sEJOP8IgP/HFl/+/KWd+evM27L6wT0YGmQ970h71ttQbG3evh
 vY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:organization:references:cc:to
 :content-language:subject:reply-to:from:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ivkoSEmBL37qh5eawT21bwSiFYzbxKghoG8dL7YpIvA=;
 b=X0twQUUxfHkB5wQJXgl0cAYqTH79RVULia6/8qHjVtHoY5VyE0Zu90TwJJqmfzD/aO
 eCehP4lNvwN2Pza210LpHxjGIFwqoRBLLlPWBSkjEUbdFzJgdOzd2BN1QqMC4CyqNgP7
 jn1eWEag2wkvv9S1LhZODvpnmsj5HpGVvF5ogGmwGxNj8cVGIsbFMFog1QxHw8tJJ4hL
 B4O4C5uFK3gHfeAeBXvVbNeM7m8Ll4RexAT8Jfwgmn1S0q0TTbjMUdTmzaNfIEOmlOru
 zRYzg8JGcbI0/rbziaJM3Bl5edhUkURQo8Rr/BK2XgFNjkvnGgMSxfdlZdNv2EAS3K2k
 J46A==
X-Gm-Message-State: AFqh2kpWFiFWFlN+GyjPFY7Sl0f5fXcJqOSrSN/tFW4IMUM7ONRx8rk1
 siOzElInGqNzUPkQxbNkRcXk7Q==
X-Google-Smtp-Source: AMrXdXuhsqoNn4jCqnXdHK0Ia8vFgqSed8rf633m82PfC2jvNWPyFX/IDiITLj9e/MUsB0MunBV7XA==
X-Received: by 2002:adf:f790:0:b0:2bd:ebc0:6f79 with SMTP id
 q16-20020adff790000000b002bdebc06f79mr24257660wrp.46.1674557358775; 
 Tue, 24 Jan 2023 02:49:18 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:ebd2:15b:f444:7985?
 ([2a01:e0a:982:cbb0:ebd2:15b:f444:7985])
 by smtp.gmail.com with ESMTPSA id
 r1-20020a0560001b8100b002bfae16ee2fsm1522330wru.111.2023.01.24.02.49.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jan 2023 02:49:18 -0800 (PST)
Message-ID: <91b76590-0fc7-24e0-8259-790c89b73638@linaro.org>
Date: Tue, 24 Jan 2023 11:49:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
References: <20230124104548.3234554-1-dmitry.baryshkov@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230124104548.3234554-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/probe_helper: extract two helper
 functions
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
Reply-To: neil.armstrong@linaro.org
Cc: intel-gfx@lists.freedesktop.org, Chen-Yu Tsai <wenst@chromium.org>,
 dri-devel@lists.freedesktop.org, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 freedreno@lists.freedesktop.org, Marek Szyprowski <m.szyprowski@samsung.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/01/2023 11:45, Dmitry Baryshkov wrote:
> Extract drm_kms_helper_enable_hpd() and drm_kms_helper_disable_hpd(),
> two helpers that enable and disable HPD handling on all device's
> connectors.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/gpu/drm/drm_probe_helper.c | 68 ++++++++++++++++++------------
>   1 file changed, 41 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
> index 95aeeed33cf5..ab787d71fa66 100644
> --- a/drivers/gpu/drm/drm_probe_helper.c
> +++ b/drivers/gpu/drm/drm_probe_helper.c
> @@ -222,6 +222,45 @@ drm_connector_mode_valid(struct drm_connector *connector,
>   	return ret;
>   }
>   
> +static void drm_kms_helper_disable_hpd(struct drm_device *dev)
> +{
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		const struct drm_connector_helper_funcs *funcs =
> +			connector->helper_private;
> +
> +		if (funcs && funcs->disable_hpd)
> +			funcs->disable_hpd(connector);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +}
> +
> +static bool drm_kms_helper_enable_hpd(struct drm_device *dev)
> +{
> +	bool poll = false;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		const struct drm_connector_helper_funcs *funcs =
> +			connector->helper_private;
> +
> +		if (funcs && funcs->enable_hpd)
> +			funcs->enable_hpd(connector);
> +
> +		if (connector->polled & (DRM_CONNECTOR_POLL_CONNECT |
> +					 DRM_CONNECTOR_POLL_DISCONNECT))
> +			poll = true;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return poll;
> +}
> +
>   #define DRM_OUTPUT_POLL_PERIOD (10*HZ)
>   /**
>    * drm_kms_helper_poll_enable - re-enable output polling.
> @@ -241,26 +280,12 @@ drm_connector_mode_valid(struct drm_connector *connector,
>   void drm_kms_helper_poll_enable(struct drm_device *dev)
>   {
>   	bool poll = false;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
>   	unsigned long delay = DRM_OUTPUT_POLL_PERIOD;
>   
>   	if (!dev->mode_config.poll_enabled || !drm_kms_helper_poll)
>   		return;
>   
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		const struct drm_connector_helper_funcs *funcs =
> -			connector->helper_private;
> -
> -		if (funcs && funcs->enable_hpd)
> -			funcs->enable_hpd(connector);
> -
> -		if (connector->polled & (DRM_CONNECTOR_POLL_CONNECT |
> -					 DRM_CONNECTOR_POLL_DISCONNECT))
> -			poll = true;
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> +	poll = drm_kms_helper_enable_hpd(dev);
>   
>   	if (dev->mode_config.delayed_event) {
>   		/*
> @@ -810,24 +835,13 @@ EXPORT_SYMBOL(drm_kms_helper_is_poll_worker);
>   
>   static void drm_kms_helper_poll_disable_fini(struct drm_device *dev, bool fini)
>   {
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -
>   	if (!dev->mode_config.poll_enabled)
>   		return;
>   
>   	if (fini)
>   		dev->mode_config.poll_enabled = false;
>   
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		const struct drm_connector_helper_funcs *funcs =
> -			connector->helper_private;
> -
> -		if (funcs && funcs->disable_hpd)
> -			funcs->disable_hpd(connector);
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> +	drm_kms_helper_disable_hpd(dev);
>   
>   	cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
