Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B39C11A1D87
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083A26E9D1;
	Wed,  8 Apr 2020 08:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0846E9D1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:43:19 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id 65so6862203wrl.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=B3aDdZASnyELIOavmgJ+3RVuvOon8Lf5byCZBBlaqwc=;
 b=vLPdPQBURshgbMf5YaUym572aGAWwSu65KaABQz1gV/9IjIj9Qp96kzLaXywU23f2h
 /lppEov4sORmJNZ+lwExmAIvzmJ1DvtL8HOJusVFUPYjJMToWsdJL55wCQJpzMjfjbGX
 iUmfkR0ZIbyIjZpNvcNRohsJQY5926MDHa5TkpRhDPGYTAEe09T8gYkdWs5GgKYMxm9s
 SdR8FGsMQDlbbz4weECXR82UgAJg0kLvKhpX13UX1YxMARF1rwQeoVWOKXtenqBi0tY1
 fogMgZb/P8QLGW71EKV+WQ3HzDeJfIsHFJLOSA6TtPWt2RFVeDpyCgcuJ6WuGU+e/e33
 DPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=B3aDdZASnyELIOavmgJ+3RVuvOon8Lf5byCZBBlaqwc=;
 b=PdYMMxtREOGwD2jvtFPwfcilYO0yPlUwtl3ujYFJGGqrw+haZOETkOPaJYCxpZwJrq
 aCUsfsS+yQ8z/gj7WBnvnbARNToDq4zNDl1BTsivL+4V+MiyJypRe4FU7qMvNoZu8DiP
 65sZGI7f3Vf5lDz66XV422D5eFEI+T5sdcIVbu5zU8TIMfz2/BrfuWp/VSOftfLna8OQ
 8+f3g7M5HK4go06KLnhFBGhBV8/biwLOdi3i2rQmaVlKkMjsrTZo/JGKEi0MtzHuz8cl
 pXddr+Mk6Afb9KbpRLOUM3OF7PPYlLAw8XNz9mpt0JFt9JJiQGS2B9ZDcGScSuM20qji
 7JOg==
X-Gm-Message-State: AGi0PuaFhj7+HOQ/hcYJzvbRev+eNGDcH1++DpN39UrkTJNJSScOHGKd
 TiqwnPxlsIHujpxYby6fAVU=
X-Google-Smtp-Source: APiQypIDfswAnYn0bDeNMgiJRwMneCp2RkTUMZPuNrM/Dyw6g7EKqkkAOc2bz23UWMZ6o8TwbsCW4Q==
X-Received: by 2002:adf:f9cc:: with SMTP id w12mr7414179wrr.148.1586335397957; 
 Wed, 08 Apr 2020 01:43:17 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id c18sm34231255wrx.5.2020.04.08.01.43.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:43:17 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:43:13 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-13-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081142400.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-13-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/17] drm/i915/dram: prefer struct
 drm_device based logging
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



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Prefer struct drm_device based logging over struct device based logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/intel_dram.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 6b922efb1d7c..8aa12cad93ce 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -495,6 +495,5 @@ void intel_dram_edram_detect(struct drm_i915_private *i915)
> 	else
> 		i915->edram_size_mb = gen9_edram_size_mb(i915, edram_cap);
>
> -	dev_info(i915->drm.dev,
> -		 "Found %uMB of eDRAM\n", i915->edram_size_mb);
> +	drm_info(&i915->drm, "Found %uMB of eDRAM\n", i915->edram_size_mb);
> }
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
