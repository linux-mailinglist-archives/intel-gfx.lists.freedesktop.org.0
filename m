Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C38966065E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 19:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856D110E8B6;
	Fri,  6 Jan 2023 18:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6758310E8B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 18:29:27 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id m7so2044377wrn.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Jan 2023 10:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=heKjulj4vd8wqZaQwZ7f/NZciwr68hs+H70oCXrJOBw=;
 b=S1MWZ/D/HlFiipGQpawFD2vCb1GWHJWgR6DcDVxD3fbem8Q87eNJ6A26jBLGOAV8C/
 lhgKAPXcSZSfKkxOxuex48uScuVL22MUT5mFenTkGZAfwyUD58TA8JSWseK+a2p24ybq
 sk/fletafETXHdG+AQUivRuZ/N4eSvSv9b/Zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=heKjulj4vd8wqZaQwZ7f/NZciwr68hs+H70oCXrJOBw=;
 b=FZzTF3GB/gH7bxmgmi9G38QTgSpLKxXM6OHzKmiTZ4/Fiv6XEZ9TrH5Da3D/Ri9qSv
 8Xsy0zBPy3ModyX/72mP/XJfEU6TDyblx2uknwJRk0y5YA4NGudrVjj0rSopG1DA8n3B
 nad8+yYzqStJ+XkE3iSHhJi4cgS5ExvXfyyOLwKPiSTkSF6gDdXGPUL2j44jZrHKnd+u
 sIo1xHnq9DfhV42boKvQVpmWOgp2E6FszN+w4ZCGowj7fzp5r2+fEq6NfaV9odhN/yfu
 N9sr+dkwZ/ehtiYupDARYyqEhqva/lk3z8aKIt4KwQnspisdxz4sY5mRi6sU/JYI6435
 vUSg==
X-Gm-Message-State: AFqh2kpLX8dhPTglSoZ9xZh/RaTUyFjvu2r0evJ0Q9wSGxF/y5vHgK00
 kFcXvoFT0EoPYxuWvaQppA/+nQUJ/qIy4ZvK
X-Google-Smtp-Source: AMrXdXsKFJLFLuub2PMJnENgYzeQIxxsh1DtQF692UW1umddMnScOHngnPOqtbxj45hf/NPGk+opHg==
X-Received: by 2002:a5d:6a43:0:b0:26a:298:f067 with SMTP id
 t3-20020a5d6a43000000b0026a0298f067mr36459108wrw.43.1673029765955; 
 Fri, 06 Jan 2023 10:29:25 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 c18-20020adffb52000000b0025e86026866sm2189989wrs.0.2023.01.06.10.29.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Jan 2023 10:29:24 -0800 (PST)
Date: Fri, 6 Jan 2023 19:29:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y7hogpIPCmvrX+1a@phenom.ffwll.local>
Mail-Followup-To: Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com,
 airlied@gmail.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20230106090934.6348-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230106090934.6348-1-jiasheng@iscas.ac.cn>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing check and destroy for
 alloc_workqueue
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 06, 2023 at 05:09:34PM +0800, Jiasheng Jiang wrote:
> Add checks for the return value of alloc_workqueue and
> alloc_ordered_workqueue as they may return NULL pointer and cause NULL
> pointer dereference.
> Moreover, destroy them when fails later in order to avoid memory leak.
> Because in `drivers/gpu/drm/i915/i915_driver.c`, if
> intel_modeset_init_noirq fails, its workqueues will not be destroyed.
> 
> Fixes: c26a058680dc ("drm/i915: Use a high priority wq for nonblocking plane updates")
> Fixes: 757fffcfdffb ("drm/i915: Put all non-blocking modesets onto an ordered wq")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>

So you have an entire pile of these, and I think that's a really good
excuse to
- create a drmm_alloc_workqueue helper for these (and
  drmm_alloc_ordered_workqueue) using the drmm_add_action_or_reset()
  function for automatic drm_device cleanup
- use that instead in all drivers, which means you do not have to make any
  error handling mor complex

Up for that? In that case please also convert any existing alloc*workqueue
callsites in drm, and make this all a patch series (since then there would
be dependencies).

Cheers, Daniel


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c2686ecb62a..58f6840d6bd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8655,26 +8655,35 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  	intel_dmc_ucode_init(i915);
>  
>  	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
> +	if (!i915->display.wq.modeset) {
> +		ret = -ENOMEM;
> +		goto cleanup_vga_client_pw_domain_dmc;
> +	}
> +
>  	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
>  						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
> +	if (!i915->display.wq.flip) {
> +		ret = -ENOMEM;
> +		goto cleanup_modeset;
> +	}
>  
>  	intel_mode_config_init(i915);
>  
>  	ret = intel_cdclk_init(i915);
>  	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_flip;
>  
>  	ret = intel_color_init(i915);
>  	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_flip;
>  
>  	ret = intel_dbuf_init(i915);
>  	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_flip;
>  
>  	ret = intel_bw_init(i915);
>  	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_flip;
>  
>  	init_llist_head(&i915->display.atomic_helper.free_list);
>  	INIT_WORK(&i915->display.atomic_helper.free_work,
> @@ -8686,6 +8695,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  
>  	return 0;
>  
> +cleanup_flip:
> +	destroy_workqueue(i915->display.wq.flip);
> +cleanup_modeset:
> +	destroy_workqueue(i915->display.wq.modeset);
>  cleanup_vga_client_pw_domain_dmc:
>  	intel_dmc_ucode_fini(i915);
>  	intel_power_domains_driver_remove(i915);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
