Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40033725475
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 08:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BBD10E436;
	Wed,  7 Jun 2023 06:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B13210E436
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 06:39:56 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-3f732d37d7cso41536935e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jun 2023 23:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686119995; x=1688711995;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HI9GdCgHoTGlfQU0exK8pWHJCdZzP4jYRRoNTOZ37xQ=;
 b=RosDcx37udii0ZeWmNfNQw33MgXpSbLBh1BulbpvPbCAgWogAhWiVGM/3pjgd6n2Kf
 oq1AvzeV7XoA8zoZhdJYYBnWieCKtU310GP36DINnoWyZhixEOuEeYio/lyTWQXB1L/k
 YRz3Y5t59PW2qfQxQTcaEw1S6oMpYW63/0oa31NkCHZt2NUQHZeHF14XMCrV3iKJswp2
 /zhrJIFQJA88yVPumlmCBwfrGbDCj4hYqbIxGXHSEDNrjbNFDJet15i6hlowqhqLx4m/
 pRe/HSCUoIZhvmuOvdcIkb8QbN5A3S8FBU3B6KYwkOCJcLUkvAl/NCePZxAbvCuzAifb
 qsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686119995; x=1688711995;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HI9GdCgHoTGlfQU0exK8pWHJCdZzP4jYRRoNTOZ37xQ=;
 b=OQvOQH3X6A2Xoy4ix4jq7+W3UKeBu8x3z9MbuK94H4KOalO2mPV0r8D9wI+p25qRk2
 AQLMHDzaD1+E4LEfsr/NnI/5AabfoRidzj0ta1kH2DQUx5OyvuFkELqSR4X+To1fDqXo
 ZOkC0u9Mv7QROzJiKMqk+R7NEaCSh0djpeZRwt+UYgIubSNygshPrnxw2+QWqpq9vOzK
 BSpGu050HI7z6KvMjaCKJWB7HFVjFHQFtccourFjKkuJmJRJiYkz1u1vnftDUwPxMWBM
 yA4OILqU7nlBdNHFiUVOOg4e3t3TLlj8yxi57Mxlm6nloYuaomC73Y/GIP6uZRm4b8nh
 BdpQ==
X-Gm-Message-State: AC+VfDzhQvuQE55Y9cdTuq6gwEfRUwTsxwPExVJxrRQ+0JW+OxfOG4l8
 fNMf2VrAjr/RjWXPrBFhdj3L6A==
X-Google-Smtp-Source: ACHHUZ4/qEfuig8+pBDtHKvj+17QGcfaaoDYGfYpjItmrZ/JwJ0QdLy8j1q7Gdv88FeJuzPMts3g1Q==
X-Received: by 2002:a5d:6702:0:b0:2ef:b4a9:202f with SMTP id
 o2-20020a5d6702000000b002efb4a9202fmr5174080wru.69.1686119995427; 
 Tue, 06 Jun 2023 23:39:55 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 z10-20020a056000110a00b003063a92bbf5sm14528126wrw.70.2023.06.06.23.39.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jun 2023 23:39:53 -0700 (PDT)
Date: Tue, 6 Jun 2023 21:32:16 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <a0088658-d7d0-4047-9b5e-ea8e1987afc0@kadam.mountain>
References: <ZH7sr+Vs4zOQoouU@moroto>
 <15829bd2d58a7439d416e2e36c5c4a17281b9fc2.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15829bd2d58a7439d416e2e36c5c4a17281b9fc2.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "airlied@gmail.com" <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 06, 2023 at 06:07:19PM +0000, Teres Alexis, Alan Previn wrote:
> That was my bad, i could have sword i'd fixed that before the final rev. Thanks for fixing this.
> nit: below function applies to MTL only which at the moment is still force-probed, so not sure if the fixes tag is significant.
> 

The Fixes tag is correct.  It's definitely a bug fix.

(I invented the Fixes tag so technically that makes me the worlds #1
expert on Fixes tags).

regards,
dan carpenter
