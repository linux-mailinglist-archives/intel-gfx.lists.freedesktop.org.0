Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9AE666112
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 17:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF56210E78F;
	Wed, 11 Jan 2023 16:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F7D710E78F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 16:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673456288;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7etFesSwsvyBFG9PixPP0WNXA/+GdaIXm+B9o1JCqbU=;
 b=Yq/2NAhtoMI04oSUyrz2JBnMAbxUFMK1UNgHI5AkjIUSHNvOVQawaRM/tvrT/yO38trFJg
 jjVzWhcKLVIaezM/qd4TNO2Qlnfke8PVYPpFfrQbK/TLo8FE/MoaOXPuqxiD5mkFNHg8iy
 7xyI/iATRL7DCCgeZVEVin8m5xfIzJU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-576-1Y7gqFo0OdeM4B5Dmcov-w-1; Wed, 11 Jan 2023 11:58:07 -0500
X-MC-Unique: 1Y7gqFo0OdeM4B5Dmcov-w-1
Received: by mail-wr1-f69.google.com with SMTP id
 j18-20020adfb312000000b00293def622d1so2899038wrd.17
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 08:58:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7etFesSwsvyBFG9PixPP0WNXA/+GdaIXm+B9o1JCqbU=;
 b=pCmkok51a3RobhYwWRvHCjbnGp8/0mLkECUlG96vbL5CS9AuKXRehd288nxLjvuOzb
 WxLL/c9fYW2caYLbcfkDK3NV4gXWFffp8e/BcLcLMrgsJQMTakMpdui7gSIT3vXgxK9J
 MEx6gtjBryaCyYSAJ0ZNxEvGeJvekdryQp8Hp1X2PMfpQjJNm2mu89Aco2LbOa4hhNsN
 wdkMOr1wtduV4pH8+9L8BdFHpzpMiWiosXX/sMkEl+tIJc238pPOuptePhnf5W4oHxv9
 P1KVC+KqTPIeSw9gFZxSc5hD62W9+LalPotC3ev5bMZmBZV+lSnHy72nKz0P6oTovwHI
 7cCA==
X-Gm-Message-State: AFqh2kpiUMDuI05SHQehnicQMJFHlkBazR+RALMYBQ50RRO44QDejd4/
 0eL4LO6KePSHn0XMIwYv2NOp5nTdl1TK8vjpS601OFZIp5qCHV4sUtxz3xcwJ3CSEW9u6a2kVJ5
 B8Ll+3fCbI2o1Z4WEAoCdvBGYEWjY
X-Received: by 2002:a05:600c:21d9:b0:3d1:d396:1adc with SMTP id
 x25-20020a05600c21d900b003d1d3961adcmr63929867wmj.14.1673456286295; 
 Wed, 11 Jan 2023 08:58:06 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsxjRh5UhyjQkcfJm4bdKJ4BVXP/8uye1XsNO01BkxbdNj4oAF8iB8sLA2+2zHmR/3TIvJT0w==
X-Received: by 2002:a05:600c:21d9:b0:3d1:d396:1adc with SMTP id
 x25-20020a05600c21d900b003d1d3961adcmr63929856wmj.14.1673456286106; 
 Wed, 11 Jan 2023 08:58:06 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm16181863wmq.9.2023.01.11.08.58.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Jan 2023 08:58:05 -0800 (PST)
Message-ID: <fb72e067-3f5f-1bac-dc9b-3abd9d7739a2@redhat.com>
Date: Wed, 11 Jan 2023 17:58:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
 <20230111154112.90575-11-daniel.vetter@ffwll.ch>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20230111154112.90575-11-daniel.vetter@ffwll.ch>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 11/11] video/aperture: Only remove sysfb on
 the default vga pci device
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
Cc: Aaron Plattner <aplattner@nvidia.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Daniel,

On 1/11/23 16:41, Daniel Vetter wrote:
> This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable
> sysfb device registration when removing conflicting FBs"), where we
> remove the sysfb when loading a driver for an unrelated pci device,
> resulting in the user loosing their efifb console or similar.
> 
> Note that in practice this only is a problem with the nvidia blob,
> because that's the only gpu driver people might install which does not
> come with an fbdev driver of it's own. For everyone else the real gpu
> driver will restor a working console.

restore

> 
> Also note that in the referenced bug there's confusion that this same
> bug also happens on amdgpu. But that was just another amdgpu specific
> regression, which just happened to happen at roughly the same time and
> with the same user-observable symptons. That bug is fixed now, see

symptoms

> https://bugzilla.kernel.org/show_bug.cgi?id=216331#c15
> 
> For the above reasons the cc: stable is just notionally, this patch
> will need a backport and that's up to nvidia if they care enough.
> 

Maybe adding a Fixes: ee7a69aa38d8 tag here too ?

> References: https://bugzilla.kernel.org/show_bug.cgi?id=216303#c28
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Aaron Plattner <aplattner@nvidia.com>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: <stable@vger.kernel.org> # v5.19+ (if someone else does the backport)
> ---
>  drivers/video/aperture.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
> index ba565515480d..a1821d369bb1 100644
> --- a/drivers/video/aperture.c
> +++ b/drivers/video/aperture.c
> @@ -321,15 +321,16 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
>  
>  	primary = pdev == vga_default_device();
>  
> +	if (primary)
> +		sysfb_disable();
> +
>  	for (bar = 0; bar < PCI_STD_NUM_BARS; ++bar) {
>  		if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
>  			continue;
>  
>  		base = pci_resource_start(pdev, bar);
>  		size = pci_resource_len(pdev, bar);
> -		ret = aperture_remove_conflicting_devices(base, size, name);
> -		if (ret)
> -			return ret;
> +		aperture_detach_devices(base, size);

Maybe mention in the commit message that you are doing this change, something like:

"Instead of calling aperture_remove_conflicting_devices() to remove the conflicting
devices, just call to aperture_detach_devices() to detach the device that matches
the same PCI BAR / aperture range. Since the former is just a wrapper of the latter
plus a sysfb_disable() call, and now that's done in this function but only for the
primary devices"

Patch looks good to me:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

