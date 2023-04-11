Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E496DDC7C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 15:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110ED10E4BD;
	Tue, 11 Apr 2023 13:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBD010E35A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 13:44:46 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-2ef70620b9dso629689f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 06:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681220684;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Fp4rlXw79VcdA2AOoSPpOfYMZ9IUxLVJ3GocVp0+rN4=;
 b=M9knvb6pdlQ3GyWNetTLlteC0E2mKH0SdNXMypNKBJFlpJlMUu/DAbcHTr3bPsR5/j
 SYTEq1F7tMMx5SHTYY5XlnULPEZTieVTqnT8C0O3s0CkL5VdHz5t4JArJWpMaQkA5Fn0
 XzQAO5LxvhoZrBJ0SJWrPvOpZEdfUbU/abbRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681220684;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Fp4rlXw79VcdA2AOoSPpOfYMZ9IUxLVJ3GocVp0+rN4=;
 b=8MiisYa2NaLPyoN8YxClB63F5hTkOLiZp5TMZEr8Ro28QvFVA57GkAFg0IGTSCVgRX
 bXsVSG0CdTZBFuAEUfDzvkz+W/lSqJbJ/D40FtKCZbJ658/w/JAgEcd0LYswccUITf5k
 nMXN1t0doYqDDfpHdK9b0/cA7eT7hMu/3nEmuQyyTLatr4lT1dEKf7iTuVei0gYGWpPe
 j4o8S4CU9hjnqIarjFVmXUBqBYl8Cs1j6sC2uM6Bo3gYwEG1ifUWhx4ot4BrtDH9NBe3
 rtj/cfOQj+TpeHBJB9RyRZjUk9n6vV5RiQTkFtkX2onpR6jDTdLHmTSO+84VoVYonlKZ
 xr8A==
X-Gm-Message-State: AAQBX9e0Q9DdE6g3eCkpPBYlkqxiF47hHto/5lUJ+SmIwcaJll5VklQp
 WPoDBhU0Jten28JfAaVkeDG0rSOyNIkV/47VQ4g=
X-Google-Smtp-Source: AKy350aG4k+mNBiF8l8fXL2dxJrJEyAlXU5HH05sc8I796zTIROU200GENXBJcM9/TJ/mqG0FF1ycQ==
X-Received: by 2002:a5d:54c9:0:b0:2e4:c9ac:c492 with SMTP id
 x9-20020a5d54c9000000b002e4c9acc492mr6788945wrv.1.1681220684488; 
 Tue, 11 Apr 2023 06:44:44 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 c14-20020a5d4cce000000b002f2782978d8sm4178312wrt.20.2023.04.11.06.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 06:44:44 -0700 (PDT)
Date: Tue, 11 Apr 2023 15:44:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <ZDVkSaskEvwix8Bz@phenom.ffwll.local>
References: <20230404193934.472457-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230404193934.472457-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] fbmem: Reject FB_ACTIVATE_KD_TEXT from
 userspace
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
Cc: linux-fbdev@vger.kernel.org, Shigeru Yoshida <syoshida@redhat.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Maxime Ripard <mripard@kernel.org>, shlomo@fastmail.com,
 Nathan Chancellor <natechancellor@gmail.com>, stable@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Peter Rosin <peda@axentia.se>, Qiujun Huang <hqjagain@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 04, 2023 at 09:39:34PM +0200, Daniel Vetter wrote:
> This is an oversight from dc5bdb68b5b3 ("drm/fb-helper: Fix vt
> restore") - I failed to realize that nasty userspace could set this.
> 
> It's not pretty to mix up kernel-internal and userspace uapi flags
> like this, but since the entire fb_var_screeninfo structure is uapi
> we'd need to either add a new parameter to the ->fb_set_par callback
> and fb_set_par() function, which has a _lot_ of users. Or some other
> fairly ugly side-channel int fb_info. Neither is a pretty prospect.
> 
> Instead just correct the issue at hand by filtering out this
> kernel-internal flag in the ioctl handling code.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Fixes: dc5bdb68b5b3 ("drm/fb-helper: Fix vt restore")
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: shlomo@fastmail.com
> Cc: Michel Dänzer <michel@daenzer.net>
> Cc: Noralf Trønnes <noralf@tronnes.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: dri-devel@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v5.7+
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Qiujun Huang <hqjagain@gmail.com>
> Cc: Peter Rosin <peda@axentia.se>
> Cc: linux-fbdev@vger.kernel.org
> Cc: Helge Deller <deller@gmx.de>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Shigeru Yoshida <syoshida@redhat.com>

An Ack on this (or a better idea) would be great, so I can stuff it into
-fixes.

Thanks, Daniel

> ---
>  drivers/video/fbdev/core/fbmem.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> index 875541ff185b..3fd95a79e4c3 100644
> --- a/drivers/video/fbdev/core/fbmem.c
> +++ b/drivers/video/fbdev/core/fbmem.c
> @@ -1116,6 +1116,8 @@ static long do_fb_ioctl(struct fb_info *info, unsigned int cmd,
>  	case FBIOPUT_VSCREENINFO:
>  		if (copy_from_user(&var, argp, sizeof(var)))
>  			return -EFAULT;
> +		/* only for kernel-internal use */
> +		var.activate &= ~FB_ACTIVATE_KD_TEXT;
>  		console_lock();
>  		lock_fb_info(info);
>  		ret = fbcon_modechange_possible(info, &var);
> -- 
> 2.40.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
