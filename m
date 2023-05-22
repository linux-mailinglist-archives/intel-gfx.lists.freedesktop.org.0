Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B916470CAA0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 22:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEC110E373;
	Mon, 22 May 2023 20:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C054B10E373
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 20:16:04 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-5307502146aso4516575a12.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 13:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1684786564; x=1687378564;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lqoDgNZ9G+pnENJHcgKxrrSDm2QXQ2DN2DVXwRpe84M=;
 b=THb6a7A4+ZDhhztCUfCFsPY/zH0txXyjC+97nEgRFTe1FP6hH7wG4Rx1Ek+S2QkeNF
 rROT12GKEBSriZA/G+nXPcCRbwKUoWabsNyX9y4bwg6gYnpx4jqfuiWo86AeIMljKk3j
 mtLnQUhAfjXjiVaWPWRf4oLQqhq9xk4iIH0sk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684786564; x=1687378564;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lqoDgNZ9G+pnENJHcgKxrrSDm2QXQ2DN2DVXwRpe84M=;
 b=YHJXQyNPDsy9amOdT6N13Ojz3yA2qO7qGmIqWG/2IB81S2TAxHfhi/IPAKTy9/ztkk
 FfUGDZkwyFcvE+LYRPY5V7+S28kCB91gqWKuaQr9S37402MFgz1Xp9r+9950scTny/zp
 +e4XPM2MMyPufdFgYQawGfhB0PUM83oQsrO7mR8/xzmtSqofDb8qvon35LF0JseKem0p
 s8ElTwXS54k2ydiC6qOew3Nbg/u0D0YvKZcK/268NUTJvdyYjFz4GUiNjhg10j0K4xVs
 wxFa7P33Dwye7ohYDFzGmv1C71TN1O7Ou9c33DS+/9sxiUebqbqB8J8IJlu1VMkht7bt
 AmWQ==
X-Gm-Message-State: AC+VfDwXQTn0DpaOwAbESBNNm0XyTBNFmIN85TV01SkWqW9nfmddufKD
 WWMZ7ix4usS9L7WunsqKwlBSGQ==
X-Google-Smtp-Source: ACHHUZ5SQz5k2SFL2blrf696wn78BpsNXHQRqB45l9/xGKDzmS28pRewvtArfVcejoeUFg//+tPPxA==
X-Received: by 2002:a17:90b:1003:b0:255:5bde:e6cc with SMTP id
 gm3-20020a17090b100300b002555bdee6ccmr5042944pjb.17.1684786564102; 
 Mon, 22 May 2023 13:16:04 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 ei13-20020a17090ae54d00b0024744818bc5sm6340408pjb.9.2023.05.22.13.16.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 May 2023 13:16:03 -0700 (PDT)
Date: Mon, 22 May 2023 13:16:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Azeem Shaikh <azeemshaikh38@gmail.com>
Message-ID: <202305221316.2817AA4FC@keescook>
References: <20230522155228.2336755-1-azeemshaikh38@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522155228.2336755-1-azeemshaikh38@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace all non-returning strlcpy
 with strscpy
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 22, 2023 at 03:52:28PM +0000, Azeem Shaikh wrote:
> strlcpy() reads the entire source buffer first.
> This read may exceed the destination size limit.
> This is both inefficient and can lead to linear read
> overflows if a source string is not NUL-terminated [1].
> In an effort to remove strlcpy() completely [2], replace
> strlcpy() here with strscpy().
> No return values were used, so direct replacement is safe.
> 
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> [2] https://github.com/KSPP/linux/issues/89
> 
> Signed-off-by: Azeem Shaikh <azeemshaikh38@gmail.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
