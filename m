Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9C52F9C03
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 10:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E393A6E18E;
	Mon, 18 Jan 2021 09:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D366E11F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 09:49:12 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id l12so10559657wry.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 01:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=sSYFbfM9Da4W4yprSISGK+rzbCaBhrTeqyICcu8isSI=;
 b=MEID5dXH0nAohh2t20OSBRbwIults+Y/clL8d5Zoywl8pG1vX9oAoUrqgWkbct+D5T
 sBmb4oJykFGr6XGscyQLi/YCSPNQFigACWi29fujWnFtHb44075JIbDRffBALOeLKQUI
 7JI+AfFtlTN/8lxLCWUr6MNTTny2Zg53dmImk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=sSYFbfM9Da4W4yprSISGK+rzbCaBhrTeqyICcu8isSI=;
 b=kpkRhvyonJ9VBGKturSrHeHF3+frbYMfbFq15SoqSMRsexDvlBZweOMEWbiuGu2gvA
 8uZN+DoiC9+yhqnezyHJVf8gCcYiU3At6zsuCxKkqrZXlGL56hEq59OWS53Ww+bbCrQR
 eRB9N+0ViKMBSdVQim1DFuFUPL13hijcZ6FuIuaseaACaEDXWgTaixLmLcDpkOlF7nYP
 vq71E9W59+apMgRj5uyiqPN9hnVFes47uZgUcxerP1nloM8ioo7MQ7mOuovCds1DFm6v
 LsFJv9Q2tv1NDBJJWtBac80gecSe8qGgLcdJIT3LuRugFLGqvgIBaKS4kkNIFez6LRtq
 IMsg==
X-Gm-Message-State: AOAM532VQrF5RaGeHKW//mIYdRlTI2HqVTBHkQb+K3+sDirjKxCbozdc
 bczBPJ1qFF3nSF4mwAQS1T47kw==
X-Google-Smtp-Source: ABdhPJyNkHEjNj8L2i9pban7G0FrBR6GRuJU2SUW/Pv5bihvSUPM5fAgGbUHMl7RRn6n+jn+EXOFoQ==
X-Received: by 2002:adf:e990:: with SMTP id h16mr25656063wrm.307.1610963351184; 
 Mon, 18 Jan 2021 01:49:11 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k131sm12400386wmb.37.2021.01.18.01.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 01:49:10 -0800 (PST)
Date: Mon, 18 Jan 2021 10:49:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Zack Rusin <zackr@vmware.com>
Message-ID: <YAVZk3XKNf9W7guC@phenom.ffwll.local>
Mail-Followup-To: Zack Rusin <zackr@vmware.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ben Skeggs <bskeggs@redhat.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eddie Dong <eddie.dong@intel.com>, Eric Anholt <eric@anholt.net>,
 Faith <faith@valinux.com>, Gareth Hughes <gareth@valinux.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Jackie Li <yaodong.li@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Jan Safrata <jan.nikitenko@gmail.com>,
 Jesse Barnes <jesse.barnes@intel.com>, jim liu <jim.liu@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Keith Packard <keithp@keithp.com>,
 Kevin Tian <kevin.tian@intel.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Min He <min.he@intel.com>,
 Niu Bing <bing.niu@intel.com>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Pei Zhang <pei.zhang@intel.com>, Ping Gao <ping.a.gao@intel.com>,
 Rob Clark <rob.clark@linaro.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Roland Scheidegger <sroland@vmware.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Tina Zhang <tina.zhang@intel.com>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>,
 Zhenyu Wang <zhenyuw@linux.intel.com>,
 Zhi Wang <zhi.a.wang@intel.com>, Zhiyuan Lv <zhiyuan.lv@intel.com>
References: <20210115181601.3432599-1-lee.jones@linaro.org>
 <F914D9B9-6DD4-4383-9F7C-8D09FBFE96CE@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F914D9B9-6DD4-4383-9F7C-8D09FBFE96CE@vmware.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 00/29] [Set 15] Finally rid W=1 warnings
 from GPU!
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
Cc: David Airlie <airlied@linux.ie>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>, Jesse Barnes <jesse.barnes@intel.com>,
 Jan Safrata <jan.nikitenko@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gareth Hughes <gareth@valinux.com>,
 Pei Zhang <pei.zhang@intel.com>, Rob Clark <rob.clark@linaro.org>,
 Min He <min.he@intel.com>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Dave Airlie <airlied@redhat.com>,
 Niu Bing <bing.niu@intel.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 jim liu <jim.liu@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Roland Scheidegger <sroland@vmware.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Maxime Ripard <mripard@kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Eddie Dong <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Faith <faith@valinux.com>, Ping Gao <ping.a.gao@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zhiyuan Lv <zhiyuan.lv@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 15, 2021 at 06:27:15PM +0000, Zack Rusin wrote:
> 
> > On Jan 15, 2021, at 13:15, Lee Jones <lee.jones@linaro.org> wrote:
> > 
> > This set is part of a larger effort attempting to clean-up W=1
> > kernel builds, which are currently overwhelmingly riddled with
> > niggly little warnings.
> > 
> > Last set!  All clean after this for; Arm, Arm64, PPC, MIPS and x86.
> 
> Thanks! For all the vmwgfx bits:
> Reviewed-by: Zack Rusin <zackr@vmware.com>

Can you pls push them to drm-misc-next? I'm planning to go pull in all the
other patches later today that belong into drm-misc-next, but some patch
monkey help would be really great :-)

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
