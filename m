Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D667962772
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 14:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD67C10E4B2;
	Wed, 28 Aug 2024 12:42:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="HoZ4oZjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2010610E4B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 12:42:18 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-42812945633so57598365e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 05:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1724848937; x=1725453737; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aBbVwg3aFbgbkgsAMFksSMiWG1qUpNJPNceAEiRp3zc=;
 b=HoZ4oZjoIH/fUkZ+KuNdhwZGYus1Kl9RpaLXmF4vNDBENkxfKibXoqNQi38zCNfs/0
 irqI2t9KkEBAGbaAFts0vSQGGXOAPL7vF/Cd9KJIeDXmJSCN9pExtPaPgHhY9cCeflbd
 qk0OHbsBcTT0XAAXOJyclsm67sfGarFCOHcAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724848937; x=1725453737;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aBbVwg3aFbgbkgsAMFksSMiWG1qUpNJPNceAEiRp3zc=;
 b=QLN8myhnjafEQdBefL0qwowUvbgginjqwweodHJSjnSNZChRpB2rNisguW6co8nOko
 0OhL+rdhtgdzqo8JgAOKyrfs46N62gK1bHhICZnAp5ZzHVnWjOL4Zpjb1GE93UL+Mn/3
 94ZLWcQO89TJWmn62pi237Su4pfVnxsQ4CY9LsSpXFqbpNWhJeQxTIeZE3CFaGMhyu/x
 HOMC3AARq1swuQkbC8o+m42xO1XBQtHHyXL8v9C2LBCexPo7pxLbEeq4w5qi3Il/1fDI
 IiPAWGVt/60RwSAe9/7M+TUg60wyxxefAdtXQzkve3sgj/AcKTklBut5t04hyBP1iK/z
 yM8g==
X-Gm-Message-State: AOJu0YykxQ0t4UAYa7X5RXOSD9Dv6K8gHeuHHiurLjJ+60tGX8P8WFt3
 JP+UWv//odkplre5MZ0+KZpCkRw7vum2OVyDrocS6OwoLLPeKO7g1HtfuHErK7Q=
X-Google-Smtp-Source: AGHT+IGxt2ZXhOJpX2xUpu6zoqX+yadk7UVI6JLYpmJvcNhG3ATHosslj4SFdjCP7Fzq4dc6jxmALw==
X-Received: by 2002:a05:600c:35c6:b0:426:6667:5c42 with SMTP id
 5b1f17b1804b1-42acc8d494fmr118113185e9.4.1724848937102; 
 Wed, 28 Aug 2024 05:42:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ba640402asm20697615e9.41.2024.08.28.05.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2024 05:42:16 -0700 (PDT)
Date: Wed, 28 Aug 2024 14:42:11 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/i915: nomodeset and i915.modeset cleanups
Message-ID: <Zs8bI82wGQ31GHVj@phenom.ffwll.local>
References: <cover.1724843853.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1724843853.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 6.9.12-amd64 
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

On Wed, Aug 28, 2024 at 02:19:07PM +0300, Jani Nikula wrote:
> Is it time? It is.

Concurred. On the series:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Cheers, Sima

> 
> Jani Nikula (2):
>   drm/i915: fail module probe on nomodeset and i915.modeset=0
>   drm/i915: deprecate the i915.modeset module parameter
> 
>  drivers/gpu/drm/i915/i915_module.c | 9 +++++++--
>  drivers/gpu/drm/i915/i915_params.c | 3 +--
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> -- 
> 2.39.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
