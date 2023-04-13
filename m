Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019006E148C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 20:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D084C10EBDF;
	Thu, 13 Apr 2023 18:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2065710EBED
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 18:47:22 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-3f0a72c78feso1784215e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 11:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681411640; x=1684003640;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wnotl5kFKcqx2M0iAukhtXHV7Gtd92Q/8R66QpfmpTQ=;
 b=F9Tehjzy+57M7YubuPLGM2390SQY5LLgRU8J0NNoTstl0hF7NMtKfdjXODGSzWj800
 Nfm4BugMucjcdm63sv4Vqy4fC+YZul3rnMEkqsw+IOiiaEPA5f8thnFQzJevkLMLBeMY
 GcVDV6ds2fkmQ9Luy7ctPS5Zhhekcfp8X+uls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681411640; x=1684003640;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wnotl5kFKcqx2M0iAukhtXHV7Gtd92Q/8R66QpfmpTQ=;
 b=IP0I0sm0jrz7lQNkFdtSf6Yl6GCNfEAvsOAOy+PTFD8NKif7p07MqLaGmks13AiiGE
 dDSRzhy0OzKT2mQWNpgLJVd0LCkFg2DtgTSqXw+gwJwJqqducC8YwGpd2Ns3Al4x3gX6
 LI9MXbLE5RFSbitEiLMcYDAoE9zI0nxnQma8V7pQPadwWTOZaTyAW0IV0tl9rIxfZ0yF
 NOkkYENJzqbSTz1DB09w0GqNcwLYaOyP2o4mXmJt6t/O50CV+0pXXaZ+kSThCodQVh10
 LiFAv3LUOCSf3oUtb6RixiMLl2lqLSKmF3uU3F3Hm4Glgpu1mc2bxeZdgtVwfgS+7ktY
 2xjw==
X-Gm-Message-State: AAQBX9daij0AKJwHUPEpfH2FEH6he33kK5PREhQCQEOx1T+6LeJnPTzH
 zCO/rgtXVw8nJSw9h5hMJqSS2Q==
X-Google-Smtp-Source: AKy350aI3OO1XGWGiZ8iOD3I4RbjZGx5Ww7U1d34ZD4iFfVcexnGNbCZr+ayQcorQDt02C2nRLiZog==
X-Received: by 2002:a05:600c:1c8e:b0:3f0:a9b8:e816 with SMTP id
 k14-20020a05600c1c8e00b003f0a9b8e816mr2363668wms.2.1681411640170; 
 Thu, 13 Apr 2023 11:47:20 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 n21-20020a7bc5d5000000b003e91b9a92c9sm2504857wmk.24.2023.04.13.11.47.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Apr 2023 11:47:19 -0700 (PDT)
Date: Thu, 13 Apr 2023 20:47:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <ZDhONRj2Pk4HHoP3@phenom.ffwll.local>
References: <ZDfxo+PXyw9ivFLI@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZDfxo+PXyw9ivFLI@jlahtine-mobl.ger.corp.intel.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-next-fixes
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

On Thu, Apr 13, 2023 at 03:12:19PM +0300, Joonas Lahtinen wrote:
> Hi Dave & Daniel,
> 
> Just one Cc:stable fix for indirect sampler state this week on
> drm-intel-next-fixes.
> 
> Regards, Joonas
> 
> ***
> 
> drm-intel-next-fixes-2023-04-13:
> 
> Short summary of fixes pull (less than what git shortlog provides):
> 
> Just one Cc:stable fix for sampler indirect state in bindless heap.
> 
> The following changes since commit 55bf14961db9da61220e6f04bc9919c94b1a6585:
> 
>   Merge tag 'mediatek-drm-next-6.4' of https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux into drm-next (2023-04-11 12:28:10 +0200)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-2023-04-13

Pulled, thanks.

> 
> for you to fetch changes up to 81900e3a37750d8c6ad705045310e002f6dd0356:
> 
>   drm/i915: disable sampler indirect state in bindless heap (2023-04-12 11:36:09 +0300)
> 
> ----------------------------------------------------------------
> Short summary of fixes pull (less than what git shortlog provides):
> 
> Just one Cc:stable fix for sampler indirect state in bindless heap.
> 
> ----------------------------------------------------------------
> Lionel Landwerlin (1):
>       drm/i915: disable sampler indirect state in bindless heap
> 
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 19 +++++++++++++++++++
>  2 files changed, 20 insertions(+)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
