Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CAE46EDD1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B5F10E140;
	Thu,  9 Dec 2021 16:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C9D710E116
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 06:12:01 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id m6so7360246oim.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Dec 2021 22:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=4RvTOElFtjC6K+YtTFs0DQWYPsT5j+ievJDMuHacLoY=;
 b=gTDcbQcQviVXwGHqelMkl3tznVzOOD5dAldIOXwUNq+Wb1juxj6sy9VNnuyEWs/YxX
 tz3IyuWVcGMGCogH+EVFDY1oAMYdGobKJ8y3qO7McBYMVIakK40oIYrJP0Nf36vN1PVC
 r6kBOj5+1or6IhEa/Gd8Z9Anz82J5FcBxWq9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=4RvTOElFtjC6K+YtTFs0DQWYPsT5j+ievJDMuHacLoY=;
 b=x9F4y7gI4nD9DBF/J8IqXIHdaKAeVxz4Pcfax8bzCx8fG9FiMppk3Pzs6Agf49hKp4
 ribzphewDLnIK09qKuYhSM5YQdLug/m3khDykTkl+Zhn/y1VkBTe0UPXSPkBgUJOvRL7
 MsFPjaix8AbDNNsqHFknLQ6gHET28d5bCDk2S0IMYK2mlJrXoFSmsc72DnOxnTps/GSF
 O7DdZiC+dI3Ut1WvDoEvXmqHSeU02YlyKGhSqLPbrV/YFrKw/PJCWHhk3GwD773LbEW/
 xdJF/JZGtjNr/6YmRTBhFbQGp9o9bUrVUaIW7Id9YcdMa398XNsmzYSG23zx5ZZwnBIt
 J5bw==
X-Gm-Message-State: AOAM531W7VdpvMdLLGrlO/Q/9YslcfqlYOZPpS6J5emLI/+Bhw3rSDiw
 8bzQk+AlEiAQ6do7kpPi+mTDRyDUdlo/FMk77CWdwlpGCfs=
X-Google-Smtp-Source: ABdhPJw8baMKy/6HPjiu44S1WLMWj6mF5r6iglZK7qkpnBQ5pEqKEVCpHcUPy2GTKqgvmEhssF1HWgZQSw1p/Flt/rI=
X-Received: by 2002:aca:2319:: with SMTP id e25mr3730698oie.164.1639020663186; 
 Wed, 08 Dec 2021 19:31:03 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Dec 2021 19:31:02 -0800
MIME-Version: 1.0
In-Reply-To: <20211105030434.2828845-15-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
 <20211105030434.2828845-15-sean@poorly.run>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Wed, 8 Dec 2021 19:31:02 -0800
Message-ID: <CAE-0n511nL2iwNztf=4900sYa-+W8V09c6G5uN=fo+Lr1Ws3HA@mail.gmail.com>
To: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v4 14/14] drm/msm: Implement HDCP 1.x using
 the new drm HDCP helpers
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
Cc: jani.nikula@intel.com, linux-arm-msm@vger.kernel.org,
 abhinavk@codeaurora.org, bjorn.andersson@linaro.org,
 David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Sean Paul (2021-11-04 20:04:31)
> From: Sean Paul <seanpaul@chromium.org>
>
> This patch adds HDCP 1.x support to msm DP connectors using the new HDCP

 $ git grep "This patch" -- Documentation/process/

> helpers.
>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Abhinav Kumar <abhinavk@codeaurora.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
> Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2
> Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-15-sean@poorly.run #v3
>
> Changes in v2:
> -Squash [1] into this patch with the following changes (Stephen)
>   -Update the sc7180 dtsi file
>   -Remove resource names and just use index (Stephen)
> Changes in v3:
> -Split out the dtsi change from v2 (Stephen)
> -Fix set-but-unused warning identified by 0-day
> -Fix up a couple of style nits (Stephen)
> -Store HDCP key directly in dp_hdcp struct (Stephen)
> -Remove wmb in HDCP key initialization, move an_seed (Stephen)
> -Use FIELD_PREP for bstatus/bcaps (Stephen)
> -#define read_poll_timeout values (Stephen)
> -Remove unnecessary parentheses in dp_hdcp_store_ksv_fifo (Stephen)
> -Add compatible string for hdcp (Stephen)
> -Rename dp_hdcp_write_* functions (Abhinav)
> -Add 1us delay between An reads (Abhinav)
> -Delete unused dp_hdcp_read_* functions
> Changes in v4:
> -Rebase on Bjorn's multi-dp patchset
>
> [1] https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-14-sean@poorly.run

Looks mostly ok to me. One nit below but otherwise you can have my

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

> diff --git a/drivers/gpu/drm/msm/dp/dp_debug.c b/drivers/gpu/drm/msm/dp/dp_debug.c
> index da4323556ef3..c16fce17d096 100644
> --- a/drivers/gpu/drm/msm/dp/dp_debug.c
> +++ b/drivers/gpu/drm/msm/dp/dp_debug.c
> @@ -198,6 +201,35 @@ static int dp_test_active_open(struct inode *inode,
>                         inode->i_private);
>  }
>
> +static ssize_t dp_hdcp_key_write(struct file *file, const char __user *ubuf,
> +                                size_t len, loff_t *offp)

I deem this API through debugfs no good, but I can see that opening the
can of worms that is programming the key other ways is worse, so alright.

> +{
> +       char *input_buffer;
> +       int ret;
> +       struct dp_debug_private *debug = file->private_data;
> +
> +       if (len != (DRM_HDCP_KSV_LEN + DP_HDCP_NUM_KEYS * DP_HDCP_KEY_LEN))
> +               return -EINVAL;
> +
[....]
> diff --git a/drivers/gpu/drm/msm/dp/dp_hdcp.c b/drivers/gpu/drm/msm/dp/dp_hdcp.c
> new file mode 100644
> index 000000000000..03ea3a974576
> --- /dev/null
> +++ b/drivers/gpu/drm/msm/dp/dp_hdcp.c
> @@ -0,0 +1,462 @@
[...]
> +
> +int dp_hdcp_attach(struct dp_hdcp *hdcp, struct drm_connector *connector)
> +{
> +       struct drm_device *dev = connector->dev;
> +       struct drm_hdcp_helper_data *helper_data;
> +       int ret;
> +
> +       /* HDCP is not configured for this device */
> +       if (!hdcp->parser->io.dp_controller.hdcp_key.base)
> +               return 0;
> +
> +       helper_data = drm_hdcp_helper_initialize_dp(connector, hdcp->aux,
> +                                                   &dp_hdcp_funcs, false);
> +       if (IS_ERR_OR_NULL(helper_data))

Just IS_ERR()?

> +               return PTR_ERR(helper_data);

Because PTR_ERR() on NULL is zero. Maybe return PTR_ERR_OR_ZERO() is
supposed to be here? Or I don't understand why
drm_hdcp_helper_initialize_dp() would return NULL.

> +
> +       ret = drm_connector_attach_content_protection_property(connector, false);
> +       if (ret) {
> +               drm_hdcp_helper_destroy(helper_data);
> +               drm_err(dev, "Failed to attach content protection prop %d\n", ret);
> +               return ret;
> +       }
