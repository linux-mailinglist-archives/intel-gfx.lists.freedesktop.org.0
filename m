Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5F26605BA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 18:30:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A1D10E8A0;
	Fri,  6 Jan 2023 17:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDC210E89F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 17:30:32 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 bg13-20020a05600c3c8d00b003d9712b29d2so4053095wmb.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Jan 2023 09:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pLGNK8Q+34qpO+L8QcDQiYZ6O0H195xUAjxzQafSpWk=;
 b=dbAlpH+WTDZUx9oaGIuFqkDxr8kTh333WXelK2V/2+uimZ8Ul3EoNXoEusWgT/EUzD
 cYktL1Etjjni4ZqO/+R9Ll+ZUU2VmLEu9+K2Dhtr6jRPnQ+ejWzWgjlBpRJ35LLjpbQl
 tkQjsPVDd/Q4mFSUAAYD35y3TLS76Mvsohc+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pLGNK8Q+34qpO+L8QcDQiYZ6O0H195xUAjxzQafSpWk=;
 b=wqv6gXV0Oi9F3dQs5ELgn6rZRiU9xKUMLBSndbPCbaZE2qDaHcHr6aAc7wS+ww4cWR
 6YgGxYt9p9HW4iz6EXK4DAHrxbhPjauPUB5sR7TGvkv0DdW164X+efea8rUAIstji90I
 cpdLqu50pVC+t+nWS+lf8znCk1nCs4rf5iIbwhX0pVRTV914Z6mpnT0WSo0nfNDT79RD
 tkCfvBc01UfJS8IWUznUs+7I1UI975QodwA/ocfimQX/hwk0Fm+p49IvAv9ZllUogvFd
 dbaWr4uh+YfwbK2O5XHBrEYbXs7X06IDzrBNvNph1/SV+UyeC3InuC1qqcDSF7CF1bq5
 TnjA==
X-Gm-Message-State: AFqh2kpiaILEiVDMabqHriRHR/tPdb3fEJ82Uh5yLup3bZre3J04UIng
 rwKdXcutUNqyTSQtuz60OrvAnXgrIq3DdKMk
X-Google-Smtp-Source: AMrXdXs2txZjSP9votayYGf9e4OhgCeHyRLe18MH8DJ+sads2k/YvPdWI9N7e0stcVETvW3RFsinSA==
X-Received: by 2002:a05:600c:2e44:b0:3d3:4406:8a3c with SMTP id
 q4-20020a05600c2e4400b003d344068a3cmr39529082wmf.32.1673026230692; 
 Fri, 06 Jan 2023 09:30:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 u16-20020a05600c00d000b003cf4eac8e80sm2840525wmm.23.2023.01.06.09.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Jan 2023 09:30:29 -0800 (PST)
Date: Fri, 6 Jan 2023 18:30:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y7hasy4680qoO0Qx@phenom.ffwll.local>
References: <Y7cszBkLRvAy6uao@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7cszBkLRvAy6uao@intel.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 03:02:20PM -0500, Rodrigo Vivi wrote:
> Hi Dave and Daniel,
> 
> Only GVT related fixes for this round.
> 
> I have another fix queued for i915_vma_unbind_async from Nirmoy that will
> target stable 5.18, but I figured it out late so I didn't run CI on that yet.
> So I'm holding this for now. Maybe and extra PR tomorrow or it will
> wait for the next week.
> 
> Here goes drm-intel-fixes-2023-01-05:
> 
> Only gvt-fixes:
>      - debugfs fixes (Zhenyu)
>      - fix up for vgpu status (Zhi)
>      - double free fix in split_2MB_gtt_entry (Zheng)
> 
> Thanks,
> Rodrigo.
> 
> The following changes since commit 88603b6dc419445847923fcb7fe5080067a30f98:
> 
>   Linux 6.2-rc2 (2023-01-01 13:53:16 -0800)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-01-05

Pulled, thanks a lot.
-Daniel

> 
> for you to fetch changes up to 87809d3196c2a7a015ab80ca1cb8c19b659bc5f6:
> 
>   Merge tag 'gvt-fixes-2023-01-05' of https://github.com/intel/gvt-linux into drm-intel-fixes (2023-01-05 08:03:38 -0500)
> 
> ----------------------------------------------------------------
> Only gvt-fixes:
>      - debugfs fixes (Zhenyu)
>      - fix up for vgpu status (Zhi)
>      - double free fix in split_2MB_gtt_entry (Zheng)
> 
> ----------------------------------------------------------------
> Dan Carpenter (1):
>       drm/i915: unpin on error in intel_vgpu_shadow_mm_pin()
> 
> Rodrigo Vivi (1):
>       Merge tag 'gvt-fixes-2023-01-05' of https://github.com/intel/gvt-linux into drm-intel-fixes
> 
> Zheng Wang (1):
>       drm/i915/gvt: fix double free bug in split_2MB_gtt_entry
> 
> Zhenyu Wang (2):
>       drm/i915/gvt: fix gvt debugfs destroy
>       drm/i915/gvt: fix vgpu debugfs clean in remove
> 
> Zhi Wang (1):
>       drm/i915/gvt: use atomic operations to change the vGPU status
> 
>  drivers/gpu/drm/i915/gvt/debugfs.c   | 36 +++++++++++++++++++++++++++++++-----
>  drivers/gpu/drm/i915/gvt/dmabuf.c    |  3 ++-
>  drivers/gpu/drm/i915/gvt/gtt.c       | 21 +++++++++++++++------
>  drivers/gpu/drm/i915/gvt/gvt.h       | 15 ++++++++++-----
>  drivers/gpu/drm/i915/gvt/interrupt.c |  2 +-
>  drivers/gpu/drm/i915/gvt/kvmgt.c     | 35 +++++++++++++----------------------
>  drivers/gpu/drm/i915/gvt/scheduler.c |  4 +++-
>  drivers/gpu/drm/i915/gvt/vgpu.c      | 12 +++++-------
>  8 files changed, 80 insertions(+), 48 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
