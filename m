Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F6884FB7C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 19:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C1710F8C4;
	Fri,  9 Feb 2024 18:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="PvZAJ7mK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B0710F8C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 18:04:19 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-33b5bc9fdabso212620f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Feb 2024 10:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1707501858; x=1708106658; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=DDGOwrrqt5c3Zj0l8FVanxJvubypQgqlJ0WTKt1ARoo=;
 b=PvZAJ7mKv5RP6Rl7AAtY1VMEMp/enDz+IrK7uQ0z6vYrPj57/SyIqiwM1sWGwrNrSh
 V9k0x1geHFF6QnWMs5sTkLp2FlpcW4L0aF+1LWZ/Z69xMmefJNVDUH8oX2knHgKqBDgI
 yqmfEF3z/mtq3ag6AnGm91zAbv7tPehieNKaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707501858; x=1708106658;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DDGOwrrqt5c3Zj0l8FVanxJvubypQgqlJ0WTKt1ARoo=;
 b=I5P1ZbPk10NukZCiKf0WPLzf7jcHdshhjKncpzXGx8iRtyQsPM0sSjtPtcpL/BhbdW
 nr6mc7OZdErpw46eL8J8J5vEMkc/Uu9hqJiiavdOfuleDXZCxir/fsjmXwC/w3ZIs5FA
 gNs3CLc+h249u+oIISJzIYMSR5vYTOWk7zVEtmUYxjhkNTQ5fxgOWNnaWCxBAsQrgmqI
 Bxwiwyo/Sf01PLM1dusPlece7IFJvwzRoDOtq5jYflco4ackkZDG1vSm+OcA2JOXwPMQ
 9srqcHONAp+2yko7nprU3lH07KFVr9hheudNOGyk4t9YnL6DRHLhZ/gtHJK3aptQxT3M
 HIrw==
X-Gm-Message-State: AOJu0Yy692oCV5tsE7CmaXErfDKToMyYQXcWHQdrE/xcb898Q8z6Yyx4
 80SNqZcs7/Dxt5U/3wxUUYCQodYyCpNUv6BJpZ92gSwvYtVcmGQBlvNTQQh/vk4=
X-Google-Smtp-Source: AGHT+IGXQlxTxZvCi09N0bXjgAnY+PwIla/QEH2uBkCQD9xG+jLnikT7a+FS3ULZvbqJIUceELaKig==
X-Received: by 2002:a05:6000:16ce:b0:33b:51dd:753f with SMTP id
 h14-20020a05600016ce00b0033b51dd753fmr1750262wrf.0.1707501858002; 
 Fri, 09 Feb 2024 10:04:18 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWMUr7hIHhkGh5qUfKz0UED6a0VCHBGRbg3U4UIQ6RHg7hHEeaYtgljXxEDaBJcu1ao3NQ/ZZpSwz7uasTIFfxB/vxFl6Jo6V5ynGoL3LpV2PDRkHEKa877tJWLpmYb14cfwAG4meFkTTTCRfIgIcVeNsrysLTBzLifMdII9YeGhVnkkfA4ienLNrLcvve9cGDepZ+ZEYZWJ+9D/xjxQ4X/Y/MN2XUflOs62jxQkhkq+ojaMfwEmYys8ey4hM99/pnL6/avsNCzYnJMOfOK9d+oc6yzzqQms1CIRQpaVOFF5FFm8JRzTpWGDnAkaIQu
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 v10-20020a5d4b0a000000b0033b4d603e13sm2357576wrq.51.2024.02.09.10.04.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Feb 2024 10:04:17 -0800 (PST)
Date: Fri, 9 Feb 2024 19:04:15 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, christian.koenig@amd.com,
 alexander.deucher@amd.com, matthew.auld@intel.com,
 mario.limonciello@amd.com, stable@vger.kernel.org
Subject: Re: [PATCH] drm/buddy: Fix alloc_range() error handling code
Message-ID: <ZcZpH3hwBjv7s8WK@phenom.ffwll.local>
References: <20240209152624.1970-1-Arunpravin.PaneerSelvam@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240209152624.1970-1-Arunpravin.PaneerSelvam@amd.com>
X-Operating-System: Linux phenom 6.6.11-amd64 
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

On Fri, Feb 09, 2024 at 08:56:24PM +0530, Arunpravin Paneer Selvam wrote:
> Few users have observed display corruption when they boot
> the machine to KDE Plasma or playing games. We have root
> caused the problem that whenever alloc_range() couldn't
> find the required memory blocks the function was returning
> SUCCESS in some of the corner cases.
> 
> The right approach would be if the total allocated size
> is less than the required size, the function should
> return -ENOSPC.
> 
> Cc:  <stable@vger.kernel.org> # 6.7+
> Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
> Closes: https://gitlab.freedesktop.org/drm/amd/-/issues/3097
> Tested-by: Mario Limonciello <mario.limonciello@amd.com>
> Link: https://patchwork.kernel.org/project/dri-devel/patch/20240207174456.341121-1-Arunpravin.PaneerSelvam@amd.com/
> Acked-by: Christian König <christian.koenig@amd.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>

New unit test for this would be most excellent - these kind of missed edge
cases is exactly what kunit is for. Can you please follow up with, since
we don't want to hold up the bugfix for longer?
-Sima

> ---
>  drivers/gpu/drm/drm_buddy.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
> index f57e6d74fb0e..c1a99bf4dffd 100644
> --- a/drivers/gpu/drm/drm_buddy.c
> +++ b/drivers/gpu/drm/drm_buddy.c
> @@ -539,6 +539,12 @@ static int __alloc_range(struct drm_buddy *mm,
>  	} while (1);
>  
>  	list_splice_tail(&allocated, blocks);
> +
> +	if (total_allocated < size) {
> +		err = -ENOSPC;
> +		goto err_free;
> +	}
> +
>  	return 0;
>  
>  err_undo:
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
