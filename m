Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A023BAD0258
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 14:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCE410E37F;
	Fri,  6 Jun 2025 12:38:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="SAlssYPS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E4D510EA7A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jun 2025 12:38:05 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id
 ffacd0b85a97d-3a3798794d3so1640548f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Jun 2025 05:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1749213484; x=1749818284; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=K4RGkwRtwLz/ApyoBObDOLrgrSMH07hxl8gkzqpa9lE=;
 b=SAlssYPSFU75boFbajoxIroKKhQC5MxhjwSFGhqmQA1D5BIfj7206oGUJUslmS9qz6
 xtMu1+F0xzOhWITr3DPMk9Cf4THwe7KQa7+dv2ufejrQSYRP1rS6NsxUg3+nHazDCa0Z
 6JOj6gmEPEYlUyVAYG9mIsoYyYk5W1JcyFnRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749213484; x=1749818284;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=K4RGkwRtwLz/ApyoBObDOLrgrSMH07hxl8gkzqpa9lE=;
 b=sV7SBH4tKJ355jrjw+i1RVXY9NdSaTALIVoD9G2XAqTot4bKb5h/HHJvc3JEsDkpWD
 XbzgUyeKvAnAUSTwcZae5L5ytHvfZw1YCMHmIGJAqczIb3NlARj3cVp0PN+NbYT/Z/yY
 X+IJR0K2wXbWYobVdtJFSfAZ90W5yYpiYO9pv9NdQN/aMfQhfUbendUquNQNZ1IhjAFA
 DX6JB5m3Mdg9QPVDqk89VksnczDP8tqeRF5zkzlP2/n3kU/UuJrOjUD68BDZK76yNimu
 woZTXqvZh3IkQVgApr4lyYel68jjXonqEEtpj3Oa0LiYLGXGQ6x3ObWC3Hnm9ZTwJfg3
 CGLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8l4PR85kjbnd7okO6JjzM7pIjmZPXDLVdWICI/Iho6tt+pPzfivqVct69T6IARZ2quA7ZNti1898=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyGcAGZ/EjPa129wbxFoNGvy9bmuqCRA1wR4SabUthKQITBwCRY
 RlZh7MHhB6bcwY3cfJdSAsBUPJANyRDVEbIr4G9bZ+zEO09y3/tI7pIAinFBzJB8/9w=
X-Gm-Gg: ASbGncsKIRpyR7qUShJF94YFWmhAlRqLB5mbcv7cfJV4G3HnbmjMPrl7ZziV27114Mt
 sjA6tUJL0t69GnzdF/UeEJH2YU51l5Xnxy5pFuV8ZGg6kvSxVR/EbJ7X+D+FNpKqA2m0qCqQqgi
 4oHeSFTPVOaShgdh4yQRkbYWfBC5frk4qPscaO0QCzjeubLJUqRJHLkdxjeV9ROpIhkrPJvCwRc
 FrQJhUOUjYsgKdqMHkQdm/7N6e/PvrBByyllxe3u92cri85MGZllVKKPoD4ete/yl7MdRam2/nQ
 Jk9ndsUj4R2QpiGsI9+n1oCJQj4svgFYr/ezcLy49x13yCQrgVtQW6/7gchXKeI=
X-Google-Smtp-Source: AGHT+IFOw67PVNk8q11ZmC1f2g0emtQP8TMaOJnWBq/fbR5Ey7/O01xLkairF/ed2N64Zcgf1Hh0Iw==
X-Received: by 2002:a05:6000:26c8:b0:3a3:7077:aba1 with SMTP id
 ffacd0b85a97d-3a531ce677bmr2722476f8f.48.1749213483789; 
 Fri, 06 Jun 2025 05:38:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a5322ae43fsm1762351f8f.25.2025.06.06.05.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Jun 2025 05:38:03 -0700 (PDT)
Date: Fri, 6 Jun 2025 14:38:01 +0200
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
Message-ID: <aELhKAjV2bMRPORf@phenom.ffwll.local>
References: <20250528153550.GA21050@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528153550.GA21050@linux.fritz.box>
X-Operating-System: Linux phenom 6.12.25-amd64 
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

On Wed, May 28, 2025 at 05:35:50PM +0200, Thomas Zimmermann wrote:
> Hi Dave, Sima,
> 
> this is the weekly PR for drm-misc-fixes. Besides DRM, the bugfix
> for dummycon possibly affects fbcon and fbdev output as well.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2025-05-28:
> Short summary of fixes pull:
> 
> drm-scheduler:
> - signal scheduled fence when killing job
> 
> dummycon:
> - trigger deferred takeover when switching consoles
> 
> ivpu:
> - improve logging
> - update firmware filenames
> - reorder steps in command-queue unregistering
> The following changes since commit 6692dbc15e5ed40a3aa037aced65d7b8826c58cd:
> 
>   drm/edid: fixed the bug that hdr metadata was not reset (2025-05-19 12:26:08 +0300)

Pulled into drm-fixes, thanks.
-Sima

> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-05-28
> 
> for you to fetch changes up to 4557cc834712eca4eae7adbd9f0a06bdd8f79c99:
> 
>   accel/ivpu: Reorder Doorbell Unregister and Command Queue Destruction (2025-05-28 11:49:29 +0200)
> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
> drm-scheduler:
> - signal scheduled fence when killing job
> 
> dummycon:
> - trigger deferred takeover when switching consoles
> 
> ivpu:
> - improve logging
> - update firmware filenames
> - reorder steps in command-queue unregistering
> 
> ----------------------------------------------------------------
> Jacek Lawrynowicz (2):
>       accel/ivpu: Improve buffer object logging
>       accel/ivpu: Use firmware names from upstream repo
> 
> Karol Wachowski (1):
>       accel/ivpu: Reorder Doorbell Unregister and Command Queue Destruction
> 
> Lin.Cao (1):
>       drm/scheduler: signal scheduled fence when kill job
> 
> Thomas Zimmermann (1):
>       dummycon: Trigger redraw when switching consoles with deferred takeover
> 
>  drivers/accel/ivpu/ivpu_fw.c             | 12 ++++++------
>  drivers/accel/ivpu/ivpu_gem.c            | 25 +++++++++++++++++--------
>  drivers/accel/ivpu/ivpu_gem.h            |  1 +
>  drivers/accel/ivpu/ivpu_job.c            |  8 ++++----
>  drivers/gpu/drm/scheduler/sched_entity.c |  1 +
>  drivers/video/console/dummycon.c         | 18 +++++++++++++-----
>  6 files changed, 42 insertions(+), 23 deletions(-)
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
Software Engineer, Intel Corporation
http://blog.ffwll.ch
