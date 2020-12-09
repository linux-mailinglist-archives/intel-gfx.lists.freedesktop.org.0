Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C90222D4A9B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 20:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FDA6E147;
	Wed,  9 Dec 2020 19:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D053B6E187
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 19:41:22 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id g185so2938077wmf.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 11:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wBPB0wWpzZwPMzHWTvAOphgnK21XoYfKx4TAHghRoMY=;
 b=d5SMWV9gwF8vqFTTBRwaN/iM1yddbBkA0WqCp9WUMGiGaz0ifv3PjyIk4qzt70R9i5
 7/MnJQuhc7eWEuhWqhORLPYYPREf7cuC4sQj7Em9zSCUv+QuT/17FD8ozEPeFAdX2Rkz
 /rLgytgMBYBNdKlwoYTfi02ANx24sorQ+E6rY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wBPB0wWpzZwPMzHWTvAOphgnK21XoYfKx4TAHghRoMY=;
 b=gEk31J6+iuJkIcdOYk51yCx0vEb3YaCFKYxaI9rCtKJRpAcE1kdBwCb7u4oA663XT2
 oXYUrzjVckeVt6EDaS4liluIC7JYi8YChX3WXVVN+lqN6ZCJ4gjy8jGjZzvHGLwwYcP1
 40PyNcZCKkpKaQq3H3Kr0EYkbWoemZPPvqzEgrXv0X648eZCxI1VGJbyMoHLo5lv671d
 +mIwmlfGbdo0CvnAQq0kT+8ego/kFYXLcVf2LQOHxugB93cp4wdhiUN3J9Q5LTmd4kEN
 huvmc2idf3A68xFcox8P+s2KwJneniBC7rXAHOB1gn/Ppg08sbk4qbAi1eDQh4cBRgEw
 Bjdw==
X-Gm-Message-State: AOAM531oxq9EF2ds9SqB2TkYYMkjvUWEB+2SkmTaI40AsQhBsRaWHCMG
 FeaWF3OGykHPmOO2sp7pRJ0f+w==
X-Google-Smtp-Source: ABdhPJxh0r5amakXi3A/sjPJ3gbEQZiyISaak0g3NJ5z+BevDJJqjJMCrFyExct29DBLG7M2TSQ6/A==
X-Received: by 2002:a1c:7f52:: with SMTP id a79mr4351690wmd.157.1607542881433; 
 Wed, 09 Dec 2020 11:41:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h3sm5425912wmm.4.2020.12.09.11.41.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 11:41:20 -0800 (PST)
Date: Wed, 9 Dec 2020 20:41:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201209194118.GW401619@phenom.ffwll.local>
References: <cover.1607429866.git.jani.nikula@intel.com>
 <87im9b9vbf.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87im9b9vbf.fsf@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/dsc, drm/dp,
 and /drm/i915: rc model size updates
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 09, 2020 at 11:34:44AM +0200, Jani Nikula wrote:
> On Tue, 08 Dec 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> > For whatever reason this old series was never merged. Please let's get
> > this done.
> 
> Daniel, Maarten, may I have an ack to merge patches 1 and 4 via
> drm-intel?

Ack.
-Daniel

> 
> BR,
> Jani.
> 
> 
> >
> > For i915 DP this still needs a patch to start using the model size from
> > DPCD.
> >
> > BR,
> > Jani.
> >
> > Jani Nikula (6):
> >   drm/dsc: use rc_model_size from DSC config for PPS
> >   drm/i915/dsc: configure hardware using specified rc_model_size
> >   drm/i915/dsc: make rc_model_size an encoder defined value
> >   drm/dsc: add helper for calculating rc buffer size from DPCD
> >   drm/i915/bios: fill in DSC rc_model_size from VBT
> >   drm/i915/dsi: use VBT data for rc_model_size
> >
> >  drivers/gpu/drm/drm_dsc.c                 | 30 +++++++++++++++++++++--
> >  drivers/gpu/drm/i915/display/intel_bios.c | 11 +++------
> >  drivers/gpu/drm/i915/display/intel_dp.c   |  8 ++++++
> >  drivers/gpu/drm/i915/display/intel_vdsc.c |  4 +--
> >  include/drm/drm_dsc.h                     |  1 +
> >  5 files changed, 41 insertions(+), 13 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
