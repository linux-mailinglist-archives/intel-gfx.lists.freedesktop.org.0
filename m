Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D959A230696
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 11:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29CBC6E21E;
	Tue, 28 Jul 2020 09:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B29B6E22C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 09:32:45 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id p14so16296632wmg.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 02:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AU9s58NWcS4q66ON/qBITRLtbQLz4Yu7YHkO3lD5N1o=;
 b=X3yxH1PlydEeFDHHHKr1CfN30iWUPFVw5u/q1V4LWa7RGJj3qy9YXwXCLbC/UTLvxH
 vI94ur6E4g1IflF6c2LDwPqvOTQtlZZU+ilrNw358MqOXMFiOCMMbKYiXxp00JMmHwrv
 myaQ5ZXBWbJXSo9I7nrcFYymm1O4cM74diRVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AU9s58NWcS4q66ON/qBITRLtbQLz4Yu7YHkO3lD5N1o=;
 b=lc9JrtcTkM+RmUJ92EnXxrpdIsAz6vI1ogZn5pavjZbpgSc+A1affz6jhquxsyvtFH
 hENgU/Tsel4ptIEoApRCiMA/GYvFXe1r/sF0ZnpGYW9xRj4eMLG43V87tHIG2142VmP8
 W0tZvcn0JKfUWLFmgKlipZBoTvND1yg+aoyaGU6Quwtc8QpDUUwpzw9wlUY/7OMduIgN
 e0nKtuXvkH7IuBQ9kQkZZZBeBJrWYebxUcLP+wXvO3IwDu42pD9kj8XXp+5+qTEcUf8U
 O4LGsBaKcjQFlEkMU8z1AE1o3UbKDKHoEwNXsvdpHCerTV5C9t/CKRgIrbKktSvcAOc4
 ePXg==
X-Gm-Message-State: AOAM5315MiRzenf4/ptazu9bWbM1V8Dhsef5TbucCUWb1F3qXf+oKcab
 vr0ugmGIafMswL//cMzef6a+HA==
X-Google-Smtp-Source: ABdhPJzMd7r5Oa5NIocH3+xVBk8Yr1yD8sECFjIodeQxzcJMT+FPiM6Fcmh2HkTIQ0+HL2ZUwNQhbw==
X-Received: by 2002:a1c:81d1:: with SMTP id c200mr3134701wmd.162.1595928763643; 
 Tue, 28 Jul 2020 02:32:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h10sm16464733wro.57.2020.07.28.02.32.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 02:32:42 -0700 (PDT)
Date: Tue, 28 Jul 2020 11:32:41 +0200
From: daniel@ffwll.ch
To: 
Message-ID: <20200728093241.GE6419@phenom.ffwll.local>
References: <ba78cd19-45ad-b17e-5174-256cc11f36c2%40nvidia.com>
 <20200727205112.27698-1-ddadap@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200727205112.27698-1-ddadap@nvidia.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/6] vga-switcheroo: initial dynamic mux
 switch support
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 27, 2020 at 03:51:06PM -0500, Daniel Dadap wrote:
> Changes to allow vga-switcheroo to switch the mux while modesetting
> clients remain active. There is existing support for switching the
> mux without checking can_switch; however, this support also does not
> reprobe after the mux switch is complete. This patch series adds a new
> type of switch event which switches immediately while still calling
> client driver callbacks, and updates the i915 DRM-KMS driver to reprobe
> eDP outputs after switching the mux to an i915-driven GPU, and to avoid
> using eDP links (which i915 always assumes to be connected) while the
> mux is switched away.

So before digging into the details I think the big issue we need to solve
first is locking. And current vga-switcheroo is already broken in that
regard (there's some fixme comments in drivers about it), but I never
cared because it was full device switch only, initiated by users.

But you now add vgaswitcheroo to modeset code, and runtime switching, I
don't think we can ignore locking here anymore. Also, it's classic abba
deadlock design: i915 modeset code calls your new functions in
vgaswitcheroo, and vgaswitcheroo calls into modeset code to shut down
stuff. This doesn't work (you get away with it by omitting locking in some
places, like the current code).

One totally nuts idea I've had is to protect vgaswitcheroo output state
with a drm_modeset_lock. That supports full graph locking, which means it
doesn't matter where we start: nouveau, i915, vgaswitcheroo. So could work
out neatly.

Problem: That still leaves the loop for the device switching, which is all
tangled up here, so either we make this completely separate, or we figure
out a plan how make this work for device switching too. And the additional
problem is that drm_modeset_lock is already a highly entrenched lock, I'm
not sure whether we can also support the device switching with that
approach: The device locking we'd need would need to be an outermost lock,
or at least fairly big, whereas drm_modeset_lock is kinda a level below.
Or I'm making a mess here (it is already one after all).

Also, where's the other side? I know the other side you care about is in
the nvidia blob driver, but that doesn't count for upstream. We need that
code in nouveau for review and merging.

Cheers, Daniel


> 
> Daniel Dadap (6):
>   vga-switcheroo: add new "immediate" switch event type
>   vga-switcheroo: Add a way to test for the active client
>   vga-switcheroo: notify clients of pending/completed switch events
>   i915: implement vga-switcheroo reprobe() callback
>   i915: fail atomic commit when muxed away
>   i915: bail out of eDP link training while mux-switched away
> 
>  drivers/gpu/drm/i915/display/intel_display.c  |   7 +
>  .../drm/i915/display/intel_dp_link_training.c |   9 ++
>  drivers/gpu/drm/i915/i915_switcheroo.c        |  27 +++-
>  drivers/gpu/vga/vga_switcheroo.c              | 153 ++++++++++++++----
>  include/linux/vga_switcheroo.h                |  20 +++
>  5 files changed, 185 insertions(+), 31 deletions(-)
> 
> -- 
> 2.18.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
