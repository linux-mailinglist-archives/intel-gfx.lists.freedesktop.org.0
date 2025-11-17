Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC5FC637D9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C3010E344;
	Mon, 17 Nov 2025 10:19:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OS9DoS97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4C810E33F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Nov 2025 10:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1763374786;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8Sj1yzB+yodW9emJVWyrm3VZBnBWrcQvlOUnMxJLYhU=;
 b=OS9DoS97KJsLJmOgYU2KOk1Bb4T1/5hfso1cZCcgCeEeQ3sOt5JncVcPstd8WXPJTURA86
 YOQ6eMmS/omQaufM8nLj7sfNJLTGB1oSixKe7uRdgVzFcjjcc/AWROxdzOB4/F0M85legT
 MjFcVThLqdEtX3xudDVBF9DRkB2o8A0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-677-8QCdGNEIMXObrSGr5vi_Vw-1; Mon, 17 Nov 2025 05:19:42 -0500
X-MC-Unique: 8QCdGNEIMXObrSGr5vi_Vw-1
X-Mimecast-MFC-AGG-ID: 8QCdGNEIMXObrSGr5vi_Vw_1763374781
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-429c76c8a1bso2451078f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Nov 2025 02:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763374781; x=1763979581;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8Sj1yzB+yodW9emJVWyrm3VZBnBWrcQvlOUnMxJLYhU=;
 b=Zlt1ZXyqDwuI32Sj9jvEmoKQHBBB6EcJ1JEge0NXzfndxQF2Eay8Mb5IgtYYTT67JT
 MQv0MoT2h9uiz2n8Ec9fpsJbGBscMkukjmKOjdFNYVu2QlepQDfZSSHbzx0ZvQNVlkpg
 Nb5kU41/mJ5mjQPv33cVr1EbJnaANPO0nSnavn0nEJkeGoGz03v/m5HcCRY0Wk8/jfVn
 1H869frUuzrUsSfJNPI2A3Fb6/rK1kDmPjauKVXHJIJOCteBXbj3omo1X4g7Y0dioZNl
 SUN0BINkwye2Pws5BmFx0xCcH2hROONgRpTCpDC2yza4wZXGlJAd5UIvDS2vAt+jftDA
 17Ig==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtw2tJADol0Pn8HKUOH1v9YGYDbhrTTjLULTMq+mcXwhSOYxPs8iS7nJlH84rXnf19WTUc2yIQqgo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFKgv9G1tP3qN0F7jruTm0DlGzQDPeMqeLzZ8VcllTI5r4mW1T
 5Yxba5PqHuzgPuhI5fIyqvak5cIivYcsqU5RajKETjUkgnQtwQjiFQUC/2E/UFKNLnYP0CQ2i9k
 xYUSlTRRmr2+/iqzHhf10JqnEHJDGzYWcJ2n4DuLhqtSYz9Odxb+krlBPYhdh7+w06DNQ4Q==
X-Gm-Gg: ASbGncuSHuD9OTGDBAQdI7ZppaFOP3nMC89BGI9EC/N2oMf77MP8dUykmpKU7v2i76p
 X3wHAdv4myixWeRqeAxz5r5n6x98t0JS91XIKKKnjghq1aebBnVOXG7nFz2/B5nm5S27/NvGz+h
 A2fEmZ8KiAe4OVwwVfbJxKE1+bqMyf7UHNUyWaaY9PJsdYDv7puPbkvIXBUlcY2vAQ3SpMwDStz
 xhvQSHmWdzznhAdBAlnvUKqV3tKO5lCDhEBlgGm2A01iY09YhPeBQ1hEeUb4e7lqDgxSPqC52rH
 6lRdTkFzIKWpmk9Pj48Trc6LCtvqq7hOlOtR43P/2jljbvMRx0EUAqng194fL8XeQ81O/i1q3yk
 LaZN/3Mki2jKpPOuuHeSJX4jSeE797Mt/RmzO/Idu
X-Received: by 2002:a5d:5f47:0:b0:427:9e6:3a64 with SMTP id
 ffacd0b85a97d-42b593847f2mr10779162f8f.47.1763374780929; 
 Mon, 17 Nov 2025 02:19:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHuLJzRkeZwRTSmYiDMNFB5b9Y04M5/X3K0AsCLwjmRlR2lS/HTXuIsn1n38y2t71o3SspdXw==
X-Received: by 2002:a5d:5f47:0:b0:427:9e6:3a64 with SMTP id
 ffacd0b85a97d-42b593847f2mr10779119f8f.47.1763374780429; 
 Mon, 17 Nov 2025 02:19:40 -0800 (PST)
Received: from localhost ([195.166.127.210]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42b53f0b8d6sm26377484f8f.28.2025.11.17.02.19.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Nov 2025 02:19:39 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 simona@ffwll.ch, linux@armlinux.org.uk, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, patrik.r.jakobsson@gmail.com,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
 sean@poorly.run, marijn.suijten@somainline.org,
 tomi.valkeinen@ideasonboard.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, thierry.reding@gmail.com, mperttunen@nvidia.com,
 jonathanh@nvidia.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v2] drm/fb-helper: Allocate and release fb_info in
 single place
In-Reply-To: <20251027081245.80262-1-tzimmermann@suse.de>
References: <20251027081245.80262-1-tzimmermann@suse.de>
Date: Mon, 17 Nov 2025 11:19:38 +0100
Message-ID: <87ikf9kll1.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Y37QVQW2BKxI0svzPA605K0V7i2eXZrnBwIX8AP7WGM_1763374781
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thomas Zimmermann <tzimmermann@suse.de> writes:

Hello Thomas,

> Move the calls to drm_fb_helper_alloc_info() from drivers into a
> single place in fbdev helpers. Allocates struct fb_info for a new
> framebuffer device. Then call drm_fb_helper_single_fb_probe() to
> create an fbdev screen buffer. Also release the instance on errors
> by calling drm_fb_helper_release_info().
>
> Simplifies the code and fixes the error cleanup for some of the
> drivers.
>
> Regular release of the struct fb_info instance still happens in
> drm_fb_helper_fini() as before.
>
> v2:
> - remove error rollback in driver implementations (kernel test robot)
> - initialize info in TTM implementation (kernel test robot)
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

It simplifies the drivers' code indeed.

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

