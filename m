Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F5D714FAE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 21:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3148D10E1D6;
	Mon, 29 May 2023 19:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com
 (mailrelay1-1.pub.mailoutpod2-cph3.one.com [IPv6:2a02:2350:5:400::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD1C10E1C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 19:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=F5LGKOaO0xZd2QJQoDrZQ93hStlQw/BEXPGAVRv9xBI=;
 b=E3BHWy6DSEDzXa3oMsDKl2c4TWz8TrNT0WyjTOSe+XHyDaVgdT5aPg8T5hFaGMlUPeTTq/cLYHLlV
 K64J2Hv2MKaG704p5TTowDdRBBVkqBqZ9kK9Y1lHWwbF8hCE6m0obxp/YOxV+UUbLFXfkYVSMSGUUc
 0nLuy7L1Fl3FyC3AlqMbVyrETI6OmjZzrJXxEvCfr2bFcngJP14FvunK4S7tQx2H2Q9s1OSbxFFiob
 apuajeIfa32NJXM7Q+sYFBeUF5j4nGYUIt0PX6oQox7+Y7q97UrJ0ScYOXBMzx2/mJsdsS6h6DekA6
 0nj1tQdnvvnils3kyvnZM7xho6VMt0A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=F5LGKOaO0xZd2QJQoDrZQ93hStlQw/BEXPGAVRv9xBI=;
 b=x0HICKYM9KRbhvWk9S0JD14RS7oybqBEsNGG3i5w8SVdzkzLE9ImA16GyoklTIA3nv0gw+5D2CQ1v
 BSqXCZKCg==
X-HalOne-ID: 70b8da45-fe56-11ed-8520-99461c6a3fe8
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
 by mailrelay1 (Halon) with ESMTPSA
 id 70b8da45-fe56-11ed-8520-99461c6a3fe8;
 Mon, 29 May 2023 19:24:35 +0000 (UTC)
Date: Mon, 29 May 2023 21:24:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20230529192434.GC1370714@ravnborg.org>
References: <20230524092150.11776-1-tzimmermann@suse.de>
 <20230524092150.11776-4-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524092150.11776-4-tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH v4 03/13] drm/armada: Use regular fbdev I/O
 helpers
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
 dri-devel@lists.freedesktop.org, Russell King <linux@armlinux.org.uk>,
 mripard@kernel.org, daniel@ffwll.ch, linux-tegra@vger.kernel.org,
 airlied@gmail.com, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 24, 2023 at 11:21:40AM +0200, Thomas Zimmermann wrote:
> Use the regular fbdev helpers for framebuffer I/O instead of DRM's
> helpers. Armada does not use damage handling, so DRM's fbdev helpers
> are mere wrappers around the fbdev code.
> 
> By using fbdev helpers directly within each DRM fbdev emulation,
> we can eventually remove DRM's wrapper functions entirely.
> 
> v4:
> 	* use initializer macros for struct fb_ops
> v2:
> 	* use FB_IO_HELPERS option
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Russell King <linux@armlinux.org.uk>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
