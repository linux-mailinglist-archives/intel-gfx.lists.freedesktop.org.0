Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71901699D84
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 21:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9085710E375;
	Thu, 16 Feb 2023 20:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D7910E375
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 20:18:58 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id r18so2424553wmq.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 12:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gV5rWMpBUKrLaDJeRT3ZsOG2NL5wYWp+tUxeIVGpLe8=;
 b=ayNqAAhtWMvqLaLONdTuEuZviGFivrgfSyq82yZ4SYZMCIIDmZdDXSusEP9oYt4GIp
 9RSUsAA2yQ9qcAxVoQumy3nrO+Gj0NZr1EHnlXU8s6eAJYatq53RJ48aPIA5U+JiDIq7
 1k+n396ufxCY7efckWfBpyC5xeGZj+L0i0kEQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gV5rWMpBUKrLaDJeRT3ZsOG2NL5wYWp+tUxeIVGpLe8=;
 b=J0/NpIkn5yuM9Hx+jzDj8ktCG5ijdLzC1C2fQOz06D9pvx8cwQG6K2irUmth00kSl3
 KzN6StxnN/0z8N7AwhaNMSVu1ydvNOWejcBzst0fb73se0eg4Np8ewD2T/4QOSHQaC96
 RrbZcaDKK68Uqii9Q5Kidth2uKVeLYx1m6o8ap3Cnte+ZmHSnCkQGphFqQt4eqMLILxP
 2YMMHMQCKOm8kHM6p65CCNB3la9kFv5LzWFGuf0jf2/KxiNT2RhciPxFOy7kUZg405Xn
 2luRqDfKWDG4fnn+3ZatMUX9kwqUO8+gsx5uDpL4/69UaYWxWy4ExTC0Ur2SJFfP2h8u
 Dx3g==
X-Gm-Message-State: AO0yUKX3vrmEcazdfK98mt9Zpk+p0a9FFsf7J7doo1MD+LpkbLP60dzX
 IxyKYI27cZ9rx9peoHX/N7aQ/A==
X-Google-Smtp-Source: AK7set8ZvPufhv4LOvsrxJtZZQ3vK1ykDz1T4jGr712q4FvkjTlAKJFxXM0hksOu+sFnWsEPyWW17w==
X-Received: by 2002:a05:600c:3caa:b0:3dc:5ae4:c13d with SMTP id
 bg42-20020a05600c3caa00b003dc5ae4c13dmr7038314wmb.4.1676578737317; 
 Thu, 16 Feb 2023 12:18:57 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 i3-20020a05600011c300b002c4061a687bsm2261733wrx.31.2023.02.16.12.18.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Feb 2023 12:18:56 -0800 (PST)
Date: Thu, 16 Feb 2023 21:18:48 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <Y+6PqOdRf+vu8rZc@phenom.ffwll.local>
References: <20230216162729.219979-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230216162729.219979-1-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/1] drm: Add a gpu page-table walker
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 05:27:28PM +0100, Thomas Hellström wrote:
> A slightly unusual cover letter for a single patch.
> 
> The page table walker is currently used by the xe driver only,
> but the code is generic so we can be good citizens and add it to drm
> as a helper, for possible use by other drivers,
> If so we can merge the commit when we merge the xe driver.
> 
> The question raised here is
> *) Should it be a generic drm helper or xe-specific with changed
>    prefixes?

I think if there's some other drivers interested in using this, then this
sounds like a good idea. Maybe more useful if it's also integrated into
the vm/vma helpers that are being discussed as an optional part?

Maybe some good old sales pitching here to convince people would be good.

Maybe one of the new accel drivers is interested in this too?

> *) If a drm helper, should we use a config option?

I am no fan of Kconfig things tbh. Maybe just include it in the vma
helpers, or perhaps we want to do a drm-accel-helpers with gem helpers,
drm/sched, this one here, vm/vma helpers or whatever they will be and so
on? Kinda like we have modeset helpers.

I'd definitely not go for a Kconfig per individual file, that's just
excessive.
-Daniel

> 
> For usage examples, see xe_pt.c
> https://gitlab.freedesktop.org/drm/xe/kernel/-/blob/drm-xe-next/drivers/gpu/drm/xe/xe_pt.c
> 
> Thanks,
> Thomas
> 
> Thomas Hellström (1):
>   drm: Add a gpu page-table walker helper
> 
>  drivers/gpu/drm/Makefile      |   1 +
>  drivers/gpu/drm/drm_pt_walk.c | 159 +++++++++++++++++++++++++++++++++
>  include/drm/drm_pt_walk.h     | 161 ++++++++++++++++++++++++++++++++++
>  3 files changed, 321 insertions(+)
>  create mode 100644 drivers/gpu/drm/drm_pt_walk.c
>  create mode 100644 include/drm/drm_pt_walk.h
> 
> -- 
> 2.34.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
