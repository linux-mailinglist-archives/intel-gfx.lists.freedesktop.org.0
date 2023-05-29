Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101FE714FD2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 21:39:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3836810E2D9;
	Mon, 29 May 2023 19:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailrelay4-1.pub.mailoutpod2-cph3.one.com
 (mailrelay4-1.pub.mailoutpod2-cph3.one.com [46.30.211.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6355610E292
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 19:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=hS9C7fWnDSPQZ58CnQCj5SHuhoWrOmFyL9LAfljaHzg=;
 b=TSG6EveYvpoZeDtJvX0S0rh8cPRm68zaX+nLQZziu3IJ5+uTkmDTZTE84nxTAIAY4Ruhg+Lvga8L+
 nkWTGHhBXkJVKW1hYZsulYVf0n7XuweNX+kFho/NbTkVSvPexZGTwVd4gYVHAroCGkFdxtIJe9y/6W
 PuU1/1cSrokjLt9QnsI1cGx4tFmnl0Hrf/BMkHvYuoQ4ikpapge7jFkAHnlH/JydZAYhnQfFjreh2m
 es9wAyzXGp61BLd0/rpX5uKm6rPyaOvuDptojcU9QHBIfQf3rlVH7eI8X19wGLGKAczV7wsyD47kiq
 Lx0ISnID16EndPqNVPNn99VVkrLdiuQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=hS9C7fWnDSPQZ58CnQCj5SHuhoWrOmFyL9LAfljaHzg=;
 b=zUwswgSuyFtdlgerXhHDRpVhe/ckMs2wC7vrz/tXGZL8S4IjG9LpJ3SNbcQNrDY5PvQbrrqGEPflI
 rn/gVP4DA==
X-HalOne-ID: 4ec6af59-fe58-11ed-8a77-592bb1efe9dc
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
 by mailrelay4 (Halon) with ESMTPSA
 id 4ec6af59-fe58-11ed-8a77-592bb1efe9dc;
 Mon, 29 May 2023 19:37:56 +0000 (UTC)
Date: Mon, 29 May 2023 21:37:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20230529193755.GE1370714@ravnborg.org>
References: <20230524092150.11776-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524092150.11776-1-tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH v4 00/13] drm/fbdev: Remove DRM's helpers
 for fbdev I/O
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
Cc: freedreno@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, javierm@redhat.com,
 dri-devel@lists.freedesktop.org, mripard@kernel.org, daniel@ffwll.ch,
 linux-tegra@vger.kernel.org, airlied@gmail.com,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas.

> v4:
> 	* use initializer and generator macros for struct fb_ops
> 	* partially support damage handling in msm (Dmitri)

I like the macros. They make it simpler and we do not spread the _cfb_
misname to more files.


> v3:
> 	* fix Kconfig options (Jingfeng)
> 	* minimize changes to exynos (Sam)
> v2:
> 	* simplify Kconfig handling (Sam)
> 
> Thomas Zimmermann (13):
>   fbdev: Add Kconfig options to select different fb_ops helpers
>   fbdev: Add initializer macros for struct fb_ops


>   drm/armada: Use regular fbdev I/O helpers
>   drm/exynos: Use regular fbdev I/O helpers
>   drm/gma500: Use regular fbdev I/O helpers
>   drm/radeon: Use regular fbdev I/O helpers
>   drm/fbdev-dma: Use regular fbdev I/O helpers
>   drm/msm: Use regular fbdev I/O helpers
>   drm/omapdrm: Use regular fbdev I/O helpers
>   drm/tegra: Use regular fbdev I/O helpers
These are all:
Acked-by: Sam Ravnborg <sam@ravnborg.org>
