Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1D665C7CF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 21:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A816610E4D4;
	Tue,  3 Jan 2023 20:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F2D10E4D9
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 20:03:31 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id fy8so12796913ejc.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Jan 2023 12:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1rXC/1iMRQXT5gTovrzWHIaaYUIfSieY/RekIIP5u6w=;
 b=Rd4CWL1aQQEN0Xm5LmM/CrE0VBkQvHFJ+2bN7E/RelLYDK6BCDLifhoAuWK7r99oZ9
 +0U0MRPrkm82cUlR96GKSYuPO+E5JfAXVq5YSG0/vYHkCG6Lf3drtKyaru6Ssc3/YAxg
 pP8thxR/HzwRDhrbpoUjG2J3CYycNEYMRlCQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1rXC/1iMRQXT5gTovrzWHIaaYUIfSieY/RekIIP5u6w=;
 b=BtXpGpAvO7XTExJch8lCFYN9wm6Q5ApEt+K6Aq6MAG6QEjmO2ETWHKH6mLPVICgEgj
 RhkQC3YGDCTnOEW39SeQef4gD7JsMbXNUQfPWoVst5k9iIkn3CarYgQ3vx1f7qfl1QUE
 XYVGHBzwzqYgPHgDDM+iRkJBU27AyLu3BmhCwlPx8opyFMk3+xCbUTCjOfeuEW1p9mDq
 UncSeL2EfahSvrf7e2yiQgvtCWZo/1/YQqv8uWpnVCVMw9yqzqhzYfYpnY7aJMmrCJNH
 Eew41iUJ87WaHuegG2zs85sq8SjSrf83ufHYG8ci/kZqDf7wWK1KRSxZ2lJHsrrSN7z7
 mryg==
X-Gm-Message-State: AFqh2koIDsvR3ZNvZNO9ybeACTcADOS9M5Lw0JUFFCMN/wOtgCw6bKpV
 +Fk0qwOb6X2dhGyF3uyj/01Bjw==
X-Google-Smtp-Source: AMrXdXu9ry6DfTSsYRRUCO164DmzAsedIznpRCps3SiBnBzMAB/DzQQl8Nc6nW53IkChXIBsZJOjxQ==
X-Received: by 2002:a17:906:3f86:b0:7c1:765:9cfc with SMTP id
 b6-20020a1709063f8600b007c107659cfcmr41480674ejj.34.1672776210335; 
 Tue, 03 Jan 2023 12:03:30 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 17-20020a170906201100b007c08439161dsm14333169ejo.50.2023.01.03.12.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Jan 2023 12:03:29 -0800 (PST)
Date: Tue, 3 Jan 2023 21:03:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maxime Ripard <maxime@cerno.tech>
Message-ID: <Y7SKDwg6ot78I4Bp@phenom.ffwll.local>
References: <20230103144926.bmjjni3xnuis2jmq@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230103144926.bmjjni3xnuis2jmq@houat>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 03, 2023 at 03:49:26PM +0100, Maxime Ripard wrote:
> Hi Daniel, Dave,
> 
> Here's the drm-misc-next-fixes leftovers.
> 
> Maxime
> 
> drm-misc-next-fixes-2023-01-03:
> The drm-misc-next-fixes leftovers. It addresses a bug in drm/scheduler
> ending up causing a lockup, and reduces the stack usage of some drm/mm
> kunit tests.
> The following changes since commit b02897e56b4e1fa6445be695ce5d605bb098435c:
> 
>   Revert "drm/fb-helper: Perform damage handling in deferred-I/O helper" (2022-11-23 09:11:32 +0100)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2023-01-03

Thanks, pulled.
-Daniel

> 
> for you to fetch changes up to 03dec92c4f788c54a7c01b40a018f601eb8a6c52:
> 
>   drm/scheduler: Fix lockup in drm_sched_entity_kill() (2023-01-02 17:45:18 +0300)
> 
> ----------------------------------------------------------------
> The drm-misc-next-fixes leftovers. It addresses a bug in drm/scheduler
> ending up causing a lockup, and reduces the stack usage of some drm/mm
> kunit tests.
> 
> ----------------------------------------------------------------
> Arnd Bergmann (1):
>       drm/tests: reduce drm_mm_test stack usage
> 
> Dmitry Osipenko (1):
>       drm/scheduler: Fix lockup in drm_sched_entity_kill()
> 
>  drivers/gpu/drm/scheduler/sched_entity.c | 2 +-
>  drivers/gpu/drm/scheduler/sched_main.c   | 4 ++--
>  drivers/gpu/drm/tests/Makefile           | 2 ++
>  drivers/gpu/drm/tests/drm_mm_test.c      | 6 +++---
>  4 files changed, 8 insertions(+), 6 deletions(-)



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
