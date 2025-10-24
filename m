Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2DCC06005
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 13:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39FD10EA55;
	Fri, 24 Oct 2025 11:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="L2CnG2P6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E02C10EA54
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 11:36:40 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-b6d3340dc2aso379811066b.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 04:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1761305798; x=1761910598; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xS/jV9mpqgr8ibLarMcAksgGJ99MACM2hNYnbMBce6w=;
 b=L2CnG2P6GtLYSwAB8lx3QxF91GonJKTzacMtTpItd8Lo+4AuV193pCsNCANDFHXiFn
 J8BtrhUY/VDzHFLdnvbzLX7HzSsSEVHeyyYNSm/kej+voFi//ACi3UtME0YhZFmU3dFJ
 4JPWmj4F1thH1u77IYeCgrMvHCtBa0ha2cH28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761305798; x=1761910598;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xS/jV9mpqgr8ibLarMcAksgGJ99MACM2hNYnbMBce6w=;
 b=jviZAcMdX/2u3a3YbmcDK/EDweRL8I7SabQdI7lbOkR44tiW5S1nXxD4f8nFNP4adX
 NCS7HtS0YeRZX29FgInNT2Yq7KgFYkwsACBei94etOmAN8s2azOs/FRlxxroibhL5dsk
 oII03XA82LQZgjDVOwSYnZ6r1rE/Jy7cxx55cRWCAfrfNbFZJW2Z3IQf2DXjaLsyRi4R
 SxFBfBjgOiIVQWFdDH+mpogiz58/E/cryDo9k+U7p3rMUzDfbzTTDT5cdloczpBrEeCO
 JvSIxyNLwj7Br4LMXLX9VTZ7C3L6uD0gq9M3T195PklDT1xn2Sef20pbvpthnIIyEXhm
 7bPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0+eFLPIIy1NLFkhpH1/kl/h2TX8mOJX2KrrNBgtuL0VIKsMN9ZMugzkciaMAl1RbETJVjgmcJZVs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyXA/e7k/mKy9wTLKOxGkkWAIe7r0LtJxgClzG4IGiyG6UG2uNJ
 eD/quCJcM4DEOB6XZbQfFrgNupSEh+YKFgbv4z8C8AFRTQ/uDujVS7yAdvgOg+vjNTE=
X-Gm-Gg: ASbGncv2zDPgN239HDJKeHuCjLZdH++PiZg0HmZaNR5u/wksFOHHif6ZbBYwasgeqYX
 HjU2idzjd+mobyvW75iKf7NlCE3E2jGd/3IHtK3L+J/EqyMpRWoVZcJ0b2U2GOVLJqe6QJ37Yuj
 h0zcUzuHwb9ykXPVtXugeQ8Xpy/vWQFG58mOxwIpjbhtQ2ybBMOo84jknQPgoanV4+VymOQzcIy
 1PQj4AA9o6XZL+B2v9I7FE8+Uc2g5AwCbXx9b1fAB6WXbGm2h4HOWr+Vg2i3kXdvpToz6ySYZQY
 eTptFWqPF4q73m+mMVl1AAZeEeQFLAMyrWcsYOIrWII8eu4pSroyFiLkT5aRTDklT10q4SGdxHI
 ohrZADMMi2JrJcr5vFgAikxAYqr1io+OU4+cONnPDoiAGCaAKzIGjxidDqblR0BowGo1K9PCFBP
 6Kiih+j4f7jxVuYJrXjFb64g==
X-Google-Smtp-Source: AGHT+IEgyDCTn1Z2dJQpbcfsC4iMVoN0ZOj2eMaELwMMAzQ8g1Pm25wE6XfUCpVu0Tj9TVGdsm1fhA==
X-Received: by 2002:a17:907:6095:b0:b4f:6d1c:6f4d with SMTP id
 a640c23a62f3a-b6d6ba8ef1emr270363766b.5.1761305798580; 
 Fri, 24 Oct 2025 04:36:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-63e3ebb3299sm4215129a12.2.2025.10.24.04.36.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Oct 2025 04:36:38 -0700 (PDT)
Date: Fri, 24 Oct 2025 13:36:36 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-misc-fixes
Message-ID: <aPtkxAl2lBSBjaRw@phenom.ffwll.local>
References: <20251023083449.GA13190@linux-2.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023083449.GA13190@linux-2.fritz.box>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 
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

On Thu, Oct 23, 2025 at 10:34:49AM +0200, Thomas Zimmermann wrote:
> Hi Dave, Sima,
> 
> here is this week's the PR for drm-misc-fixes.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2025-10-23:
> Short summary of fixes pull:
> 
> panic:
> - Fix several issues in size calculations
> 
> panthor:
> - Fix kernel panic on partial unmap of GPU VA region
> 
> rockchip:
> - hdmi: Fix HDP setup
> The following changes since commit 5801e65206b065b0b2af032f7f1eef222aa2fd83:
> 
>   drm/sched: Fix potential double free in drm_sched_job_add_resv_dependencies (2025-10-16 14:26:05 +0200)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-10-23
> 
> for you to fetch changes up to 23437509a69476d4f896891032d62ac868731668:
> 
>   drm/panic: Fix 24bit pixel crossing page boundaries (2025-10-21 11:28:03 +0200)

Pulled into drm-fixes, thanks!
-Sima

> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
> panic:
> - Fix several issues in size calculations
> 
> panthor:
> - Fix kernel panic on partial unmap of GPU VA region
> 
> rockchip:
> - hdmi: Fix HDP setup
> 
> ----------------------------------------------------------------
> Akash Goel (1):
>       drm/panthor: Fix kernel panic on partial unmap of a GPU VA region
> 
> Alok Tiwari (1):
>       drm/rockchip: dw_hdmi: use correct SCLIN mask for RK3228
> 
> Jocelyn Falempe (6):
>       drm/panic: Fix drawing the logo on a small narrow screen
>       drm/panic: Fix overlap between qr code and logo
>       drm/panic: Fix qr_code, ensure vmargin is positive
>       drm/panic: Fix kmsg text drawing rectangle
>       drm/panic: Fix divide by 0 if the screen width < font width
>       drm/panic: Fix 24bit pixel crossing page boundaries
> 
>  drivers/gpu/drm/drm_panic.c                 | 60 ++++++++++++++++++++++++++---
>  drivers/gpu/drm/panthor/panthor_mmu.c       | 10 +++--
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c |  2 +-
>  3 files changed, 62 insertions(+), 10 deletions(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Frankenstrasse 146, 90461 Nuernberg, Germany
> GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
> HRB 36809 (AG Nuernberg)

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
