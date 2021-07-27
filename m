Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035543D7254
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 11:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FE16EA1F;
	Tue, 27 Jul 2021 09:49:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D19E6E9EE
 for <Intel-GFX@lists.freedesktop.org>; Tue, 27 Jul 2021 09:49:48 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id u15so3766356wmj.1
 for <Intel-GFX@lists.freedesktop.org>; Tue, 27 Jul 2021 02:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=i6Kdgs8ZLPcYgReHZlS9wlKCGi1I3QsQIYpSpbxcCb4=;
 b=R+D6Yie9RsBWGAAW9NP32Dlj6zJUH76pbLrPNJWaq5tGEkr2R/ZqObSTBrj/LcvxYC
 XZIqBLZzntcJRhZTIuuvXA9zktZkK3iYLyZ360Cuyr5mcAixAdHpJU05uppbgRlnfdB3
 fTkYSQUNxcD8Qj5ldOzryzJhe/1pyYtehy0k0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=i6Kdgs8ZLPcYgReHZlS9wlKCGi1I3QsQIYpSpbxcCb4=;
 b=rmwUiw1omIhaGir1WCJ9rZfYMbCBqDxKBdHDgo5mrTStqwBA4VaBRg+eLjjiEPOEfq
 AINrxBXSW9Q6alXXXLJQiu7pqMllS6fRfHhrKschSrp4tQAN/8CVwe/SLuDKpnPt8rWY
 jYYj/DvAahXxtPgoGOInJk9AQ1hMibJuAuc85vr5tABfOgw4PrrI1KbxDIFpuV/pdroQ
 M0liMFOr/G+HbMKvOa0NFUpr9YInJu7yK8fXvrlyc5YGNfsqwbSnvhRMt75rKrqLXL20
 M1wmuSU8FFYZriePudZiTp6LL0DD9wNK9eHerjJ2Ia/wcPVGPvN7gMz/aeQKfWh/BUtl
 eoAg==
X-Gm-Message-State: AOAM533YBG5JSs+vACaE97mPW4ixm+8Kf+OYvRwRs7Wj7xT7lB5pGdyk
 jwiEbeHzHFc5tcnHuPtb3DppCrs8csqvNQ==
X-Google-Smtp-Source: ABdhPJzL5YkOFUsZOyiMqHUWEQx5vsEE6yQJ5uOcLSl02rb6ZjynN3o8zaTfQ83MyXhuQ6A0yPkpJw==
X-Received: by 2002:a05:600c:4b86:: with SMTP id
 e6mr3220981wmp.110.1627379387272; 
 Tue, 27 Jul 2021 02:49:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d8sm2900164wrv.20.2021.07.27.02.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 02:49:46 -0700 (PDT)
Date: Tue, 27 Jul 2021 11:49:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John.C.Harrison@intel.com
Message-ID: <YP/WudLoHxIx/h1B@phenom.ffwll.local>
References: <20210727022145.157343-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210727022145.157343-1-John.C.Harrison@Intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/2] Add support for querying hw info that
 UMDs need
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
Cc: Intel-GFX@lists.freedesktop.org, DRI-Devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 26, 2021 at 07:21:43PM -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Various UMDs require hardware configuration information about the
> current platform. A bunch of static information is available in a
> fixed table that can be retrieved from the GuC.
> 
> Test-with: 20210727002812.43469-2-John.C.Harrison@Intel.com
> UMD: https://github.com/intel/compute-runtime/pull/432/files
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Can you pls submit this with all the usual suspect from the umd side (so
also media-driver and mesa) cced?

Also do the mesa/media-driver patches exist somewhere? Afaiui this isn't
very useful without those bits in place too.
-Daniel

> 
> 
> John Harrison (1):
>   drm/i915/guc: Add fetch of hwconfig table
> 
> Rodrigo Vivi (1):
>   drm/i915/uapi: Add query for hwconfig table
> 
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
>  .../gpu/drm/i915/gt/uc/abi/guc_errors_abi.h   |   4 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   3 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 156 ++++++++++++++++++
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.h   |  19 +++
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   6 +
>  drivers/gpu/drm/i915/i915_query.c             |  23 +++
>  include/uapi/drm/i915_drm.h                   |   1 +
>  10 files changed, 215 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h
> 
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
