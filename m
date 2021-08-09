Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB5C3E46C8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 15:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C9189B5F;
	Mon,  9 Aug 2021 13:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958D189B5F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 13:38:42 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id f5so5714913wrm.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 06:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PUoT48Kepu/WtsZ2zSXdg3rVEV6q2hzCreGMpVRHbBY=;
 b=dRDp3P0MjiNOTlyUFXjf9e+528S552qdXJ7krg52p0OSY36FdlpRvaHvEY1J4HZpfx
 cXwGcrKEaXw0BbV2yplnU8EM9AwDasAVq2p8sRVh9dInVZOonHVH20GOp1tjv3zydsc/
 hTfrwT30/9D+TAxgkiulYHv1IuEc3r9br+Ces=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PUoT48Kepu/WtsZ2zSXdg3rVEV6q2hzCreGMpVRHbBY=;
 b=UqmUhZnrp6cbnkkBiBLt0+U82YTEJV0gcZtqupScVGaEzs8BiolZQ2HanuqT/jArPS
 jbFJeiVivmLmIGtZVbIFOxkIS9384nPdEUL98nbHZh5JoIVRpZgy3rX55h55gvd+U+2F
 SPRLF357/3NSPNCwn8/2Y0Yj1D/8t2pueak7VAKOfq58fU1bKZ20quyiZVZaSVuO07EF
 5slpsH+xggILkBZcYpflMgsJl36L7tdQqOBoJBFHXy8kXxHSD8j2VaY1jpAvXhbEIe4C
 JLqY4HAz39UEJX7nDMyCP9ptLvzq42flUVzKqWEosqn6U2s3JgK38H7yXlKRrJtMo5BB
 Cjdw==
X-Gm-Message-State: AOAM531eIhX2I0dMdcFu33lADVN57KuGYT2JDQlhhWLKuI8mrLsmdup0
 ZtN2QQkL9sSt163ORiiV4PgJog==
X-Google-Smtp-Source: ABdhPJwNMIksoNnfwnDL94M6cCLC469zciqEj6l/tCwCCWMtveboPOpy0iUcTZQMtdzk16jAFXwx2Q==
X-Received: by 2002:a5d:5750:: with SMTP id q16mr25440040wrw.9.1628516321122; 
 Mon, 09 Aug 2021 06:38:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 140sm18782060wmb.43.2021.08.09.06.38.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 06:38:40 -0700 (PDT)
Date: Mon, 9 Aug 2021 15:38:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YREv3mwWxH6cN9I7@phenom.ffwll.local>
References: <20210808180757.81440-1-matthew.brost@intel.com>
 <20210808180757.81440-3-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210808180757.81440-3-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Fix memory
 corruption in live_lrc_isolation
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

On Sun, Aug 08, 2021 at 11:07:56AM -0700, Matthew Brost wrote:
> GuC submission has exposed an existing memory corruption in
> live_lrc_isolation. We believe that some writes to the watchdog offsets
> in the LRC (0x178 & 0x17c) can result in trashing of portions of the
> address space. With GuC submission there are additional objects which
> can move the context redzone into the space that is trashed. To
> workaround this avoid poisoning the watchdog.

A Bspec reference here would be good (we can quote anything that's marked
for public release, so doesn't have one of the IP markers).

Also I think the above should be replicated in condensed form instead of
the XXX comment.

With those: Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch> since I
definitely have enough clue here for a detailed review.
-Daniel

> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 29 +++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index b0977a3b699b..6500e9fce8a0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1074,6 +1074,32 @@ record_registers(struct intel_context *ce,
>  	goto err_after;
>  }
>  
> +static u32 safe_offset(u32 offset, u32 reg)
> +{
> +	/* XXX skip testing of watchdog */
> +	if (offset == 0x178 || offset == 0x17c)
> +		reg = 0;
> +
> +	return reg;
> +}
> +
> +static int get_offset_mask(struct intel_engine_cs *engine)
> +{
> +	if (GRAPHICS_VER(engine->i915) < 12)
> +		return 0xfff;
> +
> +	switch (engine->class) {
> +	default:
> +	case RENDER_CLASS:
> +		return 0x07ff;
> +	case COPY_ENGINE_CLASS:
> +		return 0x0fff;
> +	case VIDEO_DECODE_CLASS:
> +	case VIDEO_ENHANCEMENT_CLASS:
> +		return 0x3fff;
> +	}
> +}
> +
>  static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
>  {
>  	struct i915_vma *batch;
> @@ -1117,7 +1143,8 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
>  		len = (len + 1) / 2;
>  		*cs++ = MI_LOAD_REGISTER_IMM(len);
>  		while (len--) {
> -			*cs++ = hw[dw];
> +			*cs++ = safe_offset(hw[dw] & get_offset_mask(ce->engine),
> +					    hw[dw]);
>  			*cs++ = poison;
>  			dw += 2;
>  		}
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
