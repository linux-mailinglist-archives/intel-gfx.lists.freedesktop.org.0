Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3CD42DA2D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 15:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889FF6E893;
	Thu, 14 Oct 2021 13:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30EAE6E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 13:21:29 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id r18so24115793edv.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 06:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SFoIG8L1vokrBlarScESiVXievYJsJzPK55+p+C11Z0=;
 b=j4zytPQKSAHgDn8yMnxOeU4tZHiraDMhgKKBRV6VBSbenUe3k5zoKrbfVVzbFoktGe
 moxyXMSMBXxSvSLzYj+seXrmVyabXtXpxoSPCM2x+b23i2Sa2f7AQBSMfhdtysFzJBPx
 +i41fdyNGNiFvagrXxKHzrU03uKOxjnsAedZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SFoIG8L1vokrBlarScESiVXievYJsJzPK55+p+C11Z0=;
 b=gepQibhTMUPc+t9trK9J8dZj/cE17w7JIKroW19fx2qvDdXUhwY45enCy96J1j+K9C
 /q+BkVybU+i4sSVp6a1ZB9cxrV0TaAJue6Rn/joohpQDzmqqJL829pA/IsG25PocnvnV
 4y+5W47d0TGWE/gRORaN2KRPZ05QNQ4o7VqQ3aEaKnvG5PQsgoUoLniiiZknqcGuOCS2
 ILxriaxHn0h2UqsX8e2bVrgJtkvLmys0kF0CC35reqKfOMvPIbMDoM0wdWz7AZvznkga
 I6NofNfNYIQ2id0rCpRwCdpxxWLLYNGinKZCP+zBrRcRHv751+3W45pS1BtpLkFYLQ+M
 Yh/w==
X-Gm-Message-State: AOAM530TjkfztnfU0mHUY5WILbogAuy10ktJ8s/xA3nGFS/sKvlZDhxu
 tAuoakNb/Hy+EOGuiqPL0wIAPaglTGGJ4Q==
X-Google-Smtp-Source: ABdhPJw7OexEo+uJCxDSjdjD7p3cgaMakIl1im0XCiKUSl/nFZLNIXouZmJT6ZZRlhCR9XdXMLwqJA==
X-Received: by 2002:a17:906:2dc9:: with SMTP id
 h9mr3716563eji.431.1634217685131; 
 Thu, 14 Oct 2021 06:21:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p26sm2143643edu.57.2021.10.14.06.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 06:21:24 -0700 (PDT)
Date: Thu, 14 Oct 2021 15:21:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Message-ID: <YWgu0v5iPDFViHXS@phenom.ffwll.local>
References: <20211005065151.828922-1-bigeasy@linutronix.de>
 <YWbK8wSxNjVu9OLm@phenom.ffwll.local>
 <20211013123525.5nijgyx5ivnuujes@linutronix.de>
 <YWbXvvTzMF1EZ5c7@phenom.ffwll.local>
 <20211013173548.nldcwheo4t52dgvp@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211013173548.nldcwheo4t52dgvp@linutronix.de>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH] drm: Increase DRM_OBJECT_MAX_PROPERTY
 by 18.
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

On Wed, Oct 13, 2021 at 07:35:48PM +0200, Sebastian Andrzej Siewior wrote:
> On 2021-10-13 14:57:34 [+0200], Daniel Vetter wrote:
> > Hm there's a pile of commits there, and nothing immediately jumps to
> > light. The thing is, 18 is likely way too much, since if e.g. we have a
> > single new property on a plane and that pushes over the limit on all of
> > them, you get iirc 3x4 already simply because we have that many planes.
> > 
> > So would be good to know the actual culprit.
> > 
> > Can you pls try to bisect the above range, applying the patch as a fixup
> > locally (without commit, that will confuse git bisect a bit I think), so
> > we know what/where went wrong?
> 
> c7fcbf2513973 -> does not boot
> c7fcbf2513973 + 2f425cf5242a0 -> boots, 18 x DRM_OBJECT_MAX_PROPERTY
> 6f11f37459d8f -> boots, 0 x DRM_OBJECT_MAX_PROPERTY
> 6f11f37459d8f + 2f425cf5242a0 -> boots, 18 x DRM_OBJECT_MAX_PROPERTY

Just to check, you've built 6f11f37459d8f, and then you cherry-picked
2f425cf5242a0 on top (not merged), and that already got you the warning
flood?

I'm probably blind, but I'm really not seeing where this pile of
properties is coming from. Can you pls also boot with drm.debug=0xe and
attach full dmesg? Plus your .config please.

Thanks, Daniel

> 
> > I'm still confused why this isn't showing up anywhere in our intel ci ...
> > 
> > Thanks, Daniel
> 
> Sebastian

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
