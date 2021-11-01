Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D23C1441DEB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 17:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09F86E241;
	Mon,  1 Nov 2021 16:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C0F6E231
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 16:19:01 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id 71so11390397wma.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Nov 2021 09:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6vFgj/yKLjhcSXIPlIGOlxeWxKqOjgtHS6m4IoAvUNY=;
 b=HfiJ0IF5Z1LojuKgd1j/U83E/+0ezCSW24VOp+QYFj5JrQLSCyCQF32ocu9SB6v3AB
 4U19zVeu/64sZ/zbx9nepJAf6xX+kDKogtrDM2bGU0h9cUQ6lCbIqnT1zLJ6YP0uJ1bR
 fcsc8+e3UB8wz2IFeY+4+t8On669IK+Uq/ufWx84XBPC6CEJKWY6kRZZ1A9Sqs//73Nv
 YxgQ98NPCBQWt3RBhJ/1PaUPfXiITIBvpkxRL6ZcdfEt7of8BO/33ZczpKU9FFADDqcD
 StzhDNNoIFhmMoO47QH/fHD6pevpe8A5iIwIl4In46KO2P25RkL5CqFBh3cqsGRrAKVd
 T1Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6vFgj/yKLjhcSXIPlIGOlxeWxKqOjgtHS6m4IoAvUNY=;
 b=2jsQE9PsgNWTNJ1FFqtwmd6zPKbwxBm+f4jEqvPxag/UwSJk3tr5GlS614fVAZVlsR
 l1vMY7vK6RVYgL9jbMskfdf6cyV0D4PI0zOKdXO5yPEBzcJekkDReSfO8i1DVTZWzZSQ
 oPH8Y2S323v6exve3Crf7YOoCE2Vi1xEAH4iRvV37AOQrMEzXDrVMU7nke5xdoN4LGAI
 EBo36AtxBZAvFbRLkJ1l34UQ2olJY48PfGp61NI073DPdoXZk6/Rxfiilh1EgZd13kFW
 Cmb4uIn42ou6APxZKQFpttjTZf4NXPbZSdx/7zYIM494tSOmclmfiiUmbPRADUO1Hx+Q
 jJYA==
X-Gm-Message-State: AOAM531+afMFNyZ6EnYix2r48By2dX7vgcd5NnlETlDo4tVj8lsdcVVW
 ZZlVswGZDOQIJhENM8ryYCLyGvffyji8Mw==
X-Google-Smtp-Source: ABdhPJzIG4yiFVrHTTLX8fiWpH0ur6ioPjOOjRPhiaOb0v6i46cfQthPB4bPQmhpQwe8IPBFgGuOjQ==
X-Received: by 2002:a7b:ce16:: with SMTP id m22mr9739840wmc.39.1635783538718; 
 Mon, 01 Nov 2021 09:18:58 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.86])
 by smtp.googlemail.com with ESMTPSA id r15sm14741092wmq.37.2021.11.01.09.18.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Nov 2021 09:18:57 -0700 (PDT)
Message-ID: <0ba3b7a5-af53-9e31-3588-57c863455868@gmail.com>
Date: Mon, 1 Nov 2021 18:18:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211026225105.2783797-1-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/adlp/fb: Remove CCS FB stride
 restrictions
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I didn't notice anything nag worthy, entire set look ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 27.10.2021 1.50, Imre Deak wrote:
> This patchset removes the CCS FB stride restrictions on ADLP. This makes
> the uAPI for these FBs (via CCS modifiers) match the TGL one.
> 
> It also fixes a few issues I noticed during testing.
> 
> I tested the patchset along with [1] (required due to the ADLP uAPI
> change) on SKL/TGL/ADLP.
> 
> [1] https://patchwork.freedesktop.org/series/96316/
> 
> Test-with: 20211026212620.2718277-1-imre.deak@intel.com
> 
> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Imre Deak (7):
>    drm/i915/fb: Fix rounding error in subsampled plane size calculation
>    drm/i915/adlp/fb: Prevent the mapping of redundant trailing padding
>      NULL pages
>    drm/i915/fb: Factor out functions to remap contiguous FB obj pages
>    drm/i915/adlp/fb: Fix remapping of linear CCS AUX surfaces
>    drm/i915/fb: Rename i915_color_plane_view::stride to mapping_stride
>    drm/i915/adlp/fb: Remove restriction on semiplanar UV plane offset
>    drm/i915/adlp/fb: Remove restriction on CCS AUX plane strides
> 
>   drivers/gpu/drm/i915/display/i9xx_plane.c     |   4 +-
>   drivers/gpu/drm/i915/display/intel_cursor.c   |   6 +-
>   drivers/gpu/drm/i915/display/intel_display.c  |  19 +-
>   .../drm/i915/display/intel_display_types.h    |   3 +-
>   drivers/gpu/drm/i915/display/intel_fb.c       | 196 +++++++------
>   drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>   drivers/gpu/drm/i915/display/intel_sprite.c   |   8 +-
>   .../drm/i915/display/skl_universal_plane.c    |   4 +-
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 272 +++++++++++-------
>   drivers/gpu/drm/i915/i915_vma_types.h         |  19 +-
>   10 files changed, 324 insertions(+), 209 deletions(-)
> 

