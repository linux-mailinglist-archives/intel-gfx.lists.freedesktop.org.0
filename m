Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66070634F6C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 06:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A2910E4E4;
	Wed, 23 Nov 2022 05:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DED710E4E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 05:16:36 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id jn7so13807844plb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3/GFgNuTk5dcM/67XAcLN9c2vPJk4DQa5iW+kpyi2wg=;
 b=DIQ2SWNsMCZIePjdu8YTQZsC0GXXOBZ2hgmqPXivZJaHBZn2ed2iV+7ozDtL5mxb9t
 Cr2ki3hrdFUU9W8/ah9zt4RjV8b1c7VD9iKgWsed9xK/u/f6dMaUZnsw0PMgZUw1HUvU
 ZJKCaiCVhcJzPJ6vxu1PUOEtBCyVJGJsjZmGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3/GFgNuTk5dcM/67XAcLN9c2vPJk4DQa5iW+kpyi2wg=;
 b=8LiESQTjXnrDQtIf9MUgB8Fm6k5IE/GDJQNNmfx6xF+RcAmL0Txs9hBx/ILdJqbroS
 V0ny/VYGn5FkhlSLXBDKXZorTFPqLlJo2+1vZLCrIBQ83c1Oar0CxEwI+0wFDyUOKZVN
 Wq8eG4sgiKgDy6oq3IwQ1RzcGrryX0Irt7R9QBsv2VKxSAvewNgzJqBC/8SC9kjfuFAB
 yZiQKVzuqh3AViEtzLVBjFlk0VQJRlsXF2iScYZXc5Qye7doFhnEnd0CZggYXVHhSVpC
 zxIIl3qD9l+mrervnTVPAIJvFaH26hK0yRRhdyjVsA+Apt0RLESPj86UwSjiq4hxkGtx
 KgoA==
X-Gm-Message-State: ANoB5plzXtxa7YZIUBSS7IQ0G61st7Rg/uoFfW7NADGAMVyRF+KbEwwq
 n54QDhxs+/Cpy/Q6LjoKmT/07ssYqLNYqa9F
X-Google-Smtp-Source: AA0mqf6kib7z2tkBxkW3pMQe9hbNsC133rNmKH8bLV670iQXIa2kel6KiBJ0HFmF6uhIki6ju1ywXA==
X-Received: by 2002:a17:902:cf41:b0:189:3e36:28b8 with SMTP id
 e1-20020a170902cf4100b001893e3628b8mr2590115plg.94.1669180595994; 
 Tue, 22 Nov 2022 21:16:35 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 h11-20020a170902f54b00b001869ba04c83sm13107875plf.245.2022.11.22.21.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 21:16:35 -0800 (PST)
Date: Tue, 22 Nov 2022 21:16:34 -0800
From: Kees Cook <keescook@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <202211222116.5B28E9B8B@keescook>
References: <20221122120948.3436180-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221122120948.3436180-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hti: avoid theoretically possible
 negative shift
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 22, 2022 at 02:09:48PM +0200, Jani Nikula wrote:
> If phy is PHY_NONE, the shift to register bits becomes negative. Check
> and warn about this.
> 
> Reported-by: coverity-bot <keescook@chromium.org>
> References: https://lore.kernel.org/r/202211180848.D39006C@keescook
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
