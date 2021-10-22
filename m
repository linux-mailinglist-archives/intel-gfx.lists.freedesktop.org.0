Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3D2437FD5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 23:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F61C6EDD4;
	Fri, 22 Oct 2021 21:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6D76EDD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 21:10:22 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1634937022; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=b7NdMFjslN+7+bIG0grSxeDnMqg96yc25AlZFVXXjq8=;
 b=N1vs6xNj0FIJpxTaR1lp1/uvQ5G9kqgeQTH6n+VPmnl4UnikOxykWxKpyExSZvNpJ38YT9Lz
 Gi5LLdQZVePFLQCPxz9NRrygpyRiPfnxRZF1+ycq65Ft92CwsPSL1zgdKYcu+1sDom9Q5w6X
 B8VuZzNSdyyTdQtWAVAnGcoAqnA=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 617328be5ca800b6c1f0fc3f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 Oct 2021 21:10:22
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E53F4C4360D; Fri, 22 Oct 2021 21:10:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: abhinavk)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 25117C4338F;
 Fri, 22 Oct 2021 21:10:21 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 22 Oct 2021 14:10:21 -0700
From: abhinavk@codeaurora.org
To: Sean Paul <sean@poorly.run>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, swboyd@chromium.org,
 jani.nikula@linux.intel.com, Sean Paul <seanpaul@chromium.org>, Rob Clark
 <robdclark@gmail.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org
In-Reply-To: <20211001151145.55916-10-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
 <20211001151145.55916-10-sean@poorly.run>
Message-ID: <a3f343374bd26240cbbfdc43f6c40b75@codeaurora.org>
X-Sender: abhinavk@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Subject: Re: [Intel-gfx] [Freedreno] [PATCH v3 09/14] drm/msm/dpu: Remove
 useless checks in dpu_encoder
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

On 2021-10-01 08:11, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> A couple more useless checks to remove in dpu_encoder.
> 
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
> Link:
> https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-10-sean@poorly.run
> #v1
> Link:
> https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-10-sean@poorly.run
> #v2
> 
> Changes in v2:
> -None
> Changes in v3:
> -None
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> index 0e9d3fa1544b..984f8a59cb73 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
> @@ -1153,10 +1153,6 @@ static void dpu_encoder_virt_enable(struct
> drm_encoder *drm_enc)
>  	struct msm_drm_private *priv;
>  	struct drm_display_mode *cur_mode = NULL;
> 
> -	if (!drm_enc) {
> -		DPU_ERROR("invalid encoder\n");
> -		return;
> -	}
>  	dpu_enc = to_dpu_encoder_virt(drm_enc);
> 
>  	mutex_lock(&dpu_enc->enc_lock);
> @@ -1203,14 +1199,6 @@ static void dpu_encoder_virt_disable(struct
> drm_encoder *drm_enc)
>  	struct msm_drm_private *priv;
>  	int i = 0;
> 
> -	if (!drm_enc) {
> -		DPU_ERROR("invalid encoder\n");
> -		return;
> -	} else if (!drm_enc->dev) {
> -		DPU_ERROR("invalid dev\n");
> -		return;
> -	}
> -
>  	dpu_enc = to_dpu_encoder_virt(drm_enc);
>  	DPU_DEBUG_ENC(dpu_enc, "\n");
