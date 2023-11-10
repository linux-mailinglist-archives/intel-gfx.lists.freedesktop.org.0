Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4507E83D2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 21:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A9B10E273;
	Fri, 10 Nov 2023 20:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F5DE10E273
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 20:33:22 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-40837396b1eso910375e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 12:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1699648400; x=1700253200; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=SvutThoqvV4TleTUlCPRNFmrX/Q0+5pWjICaVQchlnA=;
 b=kU6T0uHhvbGQSVJw8RnYNWY2Ojc8AhKONHyjAKJprLb0QorJVPIduO22bfo8j8/kqT
 Uw0K7Vwocrd6uD2IfkLqs490thGEBObTAvedm69g9G1WZ7biwhBNwVMteZM6n2/J9r02
 ywrFFLkPdQc9RKC7PF2yp4U9H1wyH4hN+Z50Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699648400; x=1700253200;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SvutThoqvV4TleTUlCPRNFmrX/Q0+5pWjICaVQchlnA=;
 b=E1O/F02baRDcxcJ+MLBxb/snES0LLzkwQgeMPxCFwjH9evAtcOftfMrssRmCP4IA8u
 xrN+4RzJHtnram5s8IVjtqjUzlV3K3sQ4oBkWE9qNglTG+aqmBxO0WLxj2Id0Vfrp7od
 7/exyW2dcF6qw14nl7jSGu6WM+Ie21BPBTOQmzgd7Vd18eG4IYbaqH8/E3YvNMkI6B/M
 /5n484V67iPtRsH2VKNZDB++Fb0jfvefEMgsfD5qyijkF4GnMTy+VWS9l0GBEx12AX69
 DbmbnPTjKEPUoFY2nOGtj6niVjK3IP8onNWbhJr/1wjlum4dKlkb7HduzkXXPPXA2RAN
 XPiw==
X-Gm-Message-State: AOJu0YzVftFduoR9lBIxRURV35rkSynM33bYPumVSgL86BbrNZ+oq5fS
 jou8XPaja81hfgosYV+5jdShaA==
X-Google-Smtp-Source: AGHT+IHGra3txHPPfAdROu4Lt9CUbtXRyD/TATZzjHL2i9EY+1c9lycrZYMvL/QkdP9jFE1M5MNEZg==
X-Received: by 2002:a05:600c:1d24:b0:404:7606:a871 with SMTP id
 l36-20020a05600c1d2400b004047606a871mr288738wms.2.1699648400289; 
 Fri, 10 Nov 2023 12:33:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 h11-20020a05600c314b00b00407460234f9sm351675wmo.21.2023.11.10.12.33.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Nov 2023 12:33:19 -0800 (PST)
Date: Fri, 10 Nov 2023 21:33:17 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZU6TjYQVWgfW9xcw@phenom.ffwll.local>
References: <bc8598ee-d427-4616-8ebd-64107ab9a2d8@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bc8598ee-d427-4616-8ebd-64107ab9a2d8@linux.intel.com>
X-Operating-System: Linux phenom 6.5.0-1-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 08, 2023 at 02:18:28PM +0100, Maarten Lankhorst wrote:
> Hi Dave, Daniel,
> 
> drm-misc-next-fixes is empty, have a pull request for drm-misc-fixes.
> 
> Cheers,
> ~Maarten
> 
> drm-misc-fixes-2023-11-08:
> drm-misc-fixes for v6.7-rc1:
> 
> - drm-misc-fixes from 2023-11-02 + a single qxl memory leak fix.
> The following changes since commit 8f5ad367e8b884772945c6c9fb622ac94b7d3e32:
> 
>   accel/ivpu: Extend address range for MMU mmap (2023-10-19 08:01:20 +0200)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-11-08

Merged to drm-next, thanks.
-Sima
> 
> for you to fetch changes up to 0e8b9f258baed25f1c5672613699247c76b007b5:
> 
>   drm/qxl: prevent memory leak (2023-11-06 09:37:03 +0100)
> 
> ----------------------------------------------------------------
> drm-misc-fixes for v6.7-rc1:
> 
> - drm-misc-fixes from 2023-11-02 + a single qxl memory leak fix.
> 
> ----------------------------------------------------------------
> Christian König (2):
>       drm/amdgpu: ignore duplicate BOs again
>       drm/amdkfd: reserve a fence slot while locking the BO
> 
> Erik Kurzinger (1):
>       drm/syncobj: fix DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE
> 
> Karol Wachowski (1):
>       accel/ivpu/37xx: Fix missing VPUIP interrupts
> 
> Luben Tuikov (1):
>       drm/amdgpu: Remove redundant call to priority_is_valid()
> 
> Lukasz Majczak (1):
>       drm/dp_mst: Fix NULL deref in get_mst_branch_device_by_guid_helper()
> 
> Maxime Ripard (1):
>       drm/vc4: tests: Fix UAF in the mock helpers
> 
> Sui Jingfeng (1):
>       drm/logicvc: Kconfig: select REGMAP and REGMAP_MMIO
> 
> Zongmin Zhou (1):
>       drm/qxl: prevent memory leak
> 
>  drivers/accel/ivpu/ivpu_hw_37xx.c                | 11 +++++------
>  drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c |  2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c           |  3 ++-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c          | 15 ++++++++-------
>  drivers/gpu/drm/display/drm_dp_mst_topology.c    |  6 +++---
>  drivers/gpu/drm/drm_syncobj.c                    |  3 ++-
>  drivers/gpu/drm/logicvc/Kconfig                  |  2 ++
>  drivers/gpu/drm/qxl/qxl_display.c                |  3 +++
>  drivers/gpu/drm/vc4/tests/vc4_mock_crtc.c        |  2 +-
>  drivers/gpu/drm/vc4/tests/vc4_mock_output.c      |  2 +-
>  10 files changed, 28 insertions(+), 21 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
