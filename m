Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7282F3ABA29
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 19:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92D76E946;
	Thu, 17 Jun 2021 17:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A916E944
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 17:00:38 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 c18-20020a05600c0ad2b02901cee262e45fso4096262wmr.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 10:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uHxmvH4R8kmb4L8LuiV2WQ2YOwyECSkYXAUrA9Qg9Ao=;
 b=T2casNZFghgQyqX0pEVbDIOJd/pf+xanRLV7qru2x2YXO2ELc2Wp8m6d892eaRuUsb
 WLo571CL6QQftTVczXj2NfgQ08CMPo9OQTQb+QBv55XYp6LorQfEyrVzVYc8je9bkGVB
 AQsuNN4SYJro7oB7UozIl+XWSeDjnYdKn5uBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uHxmvH4R8kmb4L8LuiV2WQ2YOwyECSkYXAUrA9Qg9Ao=;
 b=pswxxhlfe9S8BfUrHCDkG4LCpnCN4hiB00oTyeg78OKzOW2BQxEJyXIPkKl9mQhqPx
 C89RR07Z07ITS3wj5HcSvaBkJXMx1yrwEKMhIOKgEtDkQAI3r5yyuEVEvQndGp5fcHWL
 6+DVWM3sUUb1gzTnAYnwWgyo1TsqvDuqoLqzbF5uHTLIZTtQAuy+SYugyBHNX/clhV8g
 pm9IQyctcguPmYP0Oxhymo9ogF0fcvBtnau3lzCykJkluaOxT+iYHM5fphMfuryvXLPv
 1J/+HQfGyerhRvMC6F9JpUA0YY953kMM8c8W7pjbi6nYWUxJ3uoTeg3dtsgE/DIWal1r
 jN7A==
X-Gm-Message-State: AOAM530BnRCZX+2/gAzyWdchmsvFtj1Js9wotBU5wbcSm/Kj3uhvDFhX
 VroYuo6b4WcWr6T/9z/q32OscRl9tUcGfQ==
X-Google-Smtp-Source: ABdhPJxu1656Wr/7ZHC6+GivpM9/+QBG8weQZgPCtnRFmGhQUyEUBj0mjISh/MCuye96lQnjhQgmEw==
X-Received: by 2002:a1c:2584:: with SMTP id l126mr6091233wml.83.1623949237159; 
 Thu, 17 Jun 2021 10:00:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b15sm7201711wrr.27.2021.06.17.10.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 10:00:36 -0700 (PDT)
Date: Thu, 17 Jun 2021 19:00:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YMt/sq+rHGPkptb5@phenom.ffwll.local>
References: <20210611234044.853-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611234044.853-1-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/2] GuC submission / DRM scheduler
 integration plan + new uAPI
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 carl.zhang@intel.com, jason.ekstrand@intel.com, daniel.vetter@intel.com,
 mesa-dev@lists.freedesktop.org, christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 11, 2021 at 04:40:42PM -0700, Matthew Brost wrote:
> Subject and patches say it all.
> 
> v2: Address comments, patches have details of changes
> v3: Address comments, patches have details of changes
> v4: Address comments, patches have details of changes
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Imo ready (well overdue) for merging, please annoy Carl or someone from
media for an ack and then ask John or Daniele to merge it into
drm-intel-gt-next.
-Daniel

> 
> Matthew Brost (2):
>   drm/doc/rfc: i915 GuC submission / DRM scheduler
>   drm/doc/rfc: i915 new parallel submission uAPI plan
> 
>  Documentation/gpu/rfc/i915_parallel_execbuf.h | 117 ++++++++++++++
>  Documentation/gpu/rfc/i915_scheduler.rst      | 148 ++++++++++++++++++
>  Documentation/gpu/rfc/index.rst               |   4 +
>  3 files changed, 269 insertions(+)
>  create mode 100644 Documentation/gpu/rfc/i915_parallel_execbuf.h
>  create mode 100644 Documentation/gpu/rfc/i915_scheduler.rst
> 
> -- 
> 2.28.0
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
