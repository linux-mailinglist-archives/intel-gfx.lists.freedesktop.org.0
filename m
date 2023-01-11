Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111AF6666F8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA77A10E83E;
	Wed, 11 Jan 2023 23:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D5410E83C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:09:46 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 j16-20020a05600c1c1000b003d9ef8c274bso9446755wms.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 15:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9UQScSJfyMGe4w+apoimOZM3ngB2dIeu4UVoAiWJO0g=;
 b=NivEwwX8J4L0H7sgLkPd37KpZrWb6uHyWcJAyn5yiWiPYvEvzOKcylhrA5kQOboSrD
 zKbsr6WJQsSAsM+7eK6SlNXlmPwo4nTUg6gue5TQ34pkOtynhnbTo1bj6r/ADYwEb5bf
 zJbRjF/r196NHPQQs24Z/3lOewFmqKT3CK8hg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9UQScSJfyMGe4w+apoimOZM3ngB2dIeu4UVoAiWJO0g=;
 b=HTIngZ4qIeXbqEMjL4g4ENmGpX06oKeJ68kkFseFEZBFGxQENea2GdUGM+2hZAP9gq
 jFLHLDR2VklT6TJb3CbgquCK3UbJHRRXzVg6jJnOsh6vcq+XuDGPGSSTLUtwDLmIKhEh
 /NLHNrsN7EgkNcoJlQmEnM1uQzb4v3EsPrO9cyfyzkipnT7PFa8owhyLqSw6eJlJ1qEw
 3Hd9lD4+rCXrV0swc2UHpIJhHPdFsRVTc+aM4PdM+TiUBmtf2fWrB7GQzLndk5Wdt/JK
 BM8TKVulICYHVhzb2AgbujJmADJM6XBxScpMAzlKmqxsFIv5N8StrZhgs+FR0MOmHN7b
 mfxQ==
X-Gm-Message-State: AFqh2kqbNa3E7+qtUD0nrxJw3yfDvv0j0/+853MHAZxoBsPzQwG/Y+uq
 MCdk+g1i8jAFpYPRXQn1wD1TEg==
X-Google-Smtp-Source: AMrXdXsnDe3Ivq+JdQToTPbj4x7KGohtSYDeDDwMtFiMTv7llocWLZI46CtlGQeBOvjqpkl3kJYP/A==
X-Received: by 2002:a05:600c:1c21:b0:3d2:2faf:e54b with SMTP id
 j33-20020a05600c1c2100b003d22fafe54bmr53489153wms.6.1673478584778; 
 Wed, 11 Jan 2023 15:09:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm17037786wmq.9.2023.01.11.15.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 15:09:43 -0800 (PST)
Date: Thu, 12 Jan 2023 00:09:41 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jim Cromie <jim.cromie@gmail.com>
Message-ID: <Y79Btep8JnPKvuAp@phenom.ffwll.local>
Mail-Followup-To: Jim Cromie <jim.cromie@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, seanpaul@chromium.org,
 robdclark@gmail.com, jbaron@akamai.com, gregkh@linuxfoundation.org
References: <20221206003424.592078-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221206003424.592078-1-jim.cromie@gmail.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH 00/17] DRM_USE_DYNAMIC_DEBUG regression
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org, gregkh@linuxfoundation.org, jbaron@akamai.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 05, 2022 at 05:34:07PM -0700, Jim Cromie wrote:
> Hi everyone,
> 
> DRM_USE_DYNAMIC_DEBUG=y has a regression on rc-*
> 
> Regression is due to a chicken-egg problem loading modules; on
> `modprobe i915`, drm is loaded 1st, and drm.debug is set.  When
> drm_debug_enabled() tested __drm_debug at runtime, that just worked.
> 
> But with DRM_USE_DYNAMIC_DEBUG=y, the runtime test is replaced with a
> post-load enablement of drm_dbg/dyndbg callsites (static-keys), via
> dyndbg's callback on __drm_debug.  Since all drm-drivers need drm.ko,
> it is loaded 1st, then drm.debug=X is applied, then drivers load, but
> too late for drm_dbgs to be enabled.
> 
> STATUS
> 
> For all-loadable drm,i915,amdgpu configs, it almost works, but
> propagating drm.debug to dependent modules doesnt actually apply,
> though the motions are there.  This is not the problem I want to chase
> here.
> 
> The more basic trouble is:
> 
> For builtin drm + helpers, things are broken pretty early; at the
> beginning of dynamic_debug_init().  As the ddebug_sanity() commit-msg
> describes in some detail, the records added by _USE fail to reference
> the struct ddebug_class_map created and exported by _DEFINE, but get
> separate addresses to "other" data that segv's when used as the
> expected pointer. FWIW, the pointer val starts with "revi".

So I honestly have no idea here, linker stuff is way beyond where I have
clue. So what's the way forward here?

The DEFINE/USE split does like the right thing to do at least from the
"how it's used in drivers" pov. But if we're just running circles not
quite getting there I dunno :-/
-Daniel

> 
> OVERVIEW
> 
> DECLARE_DYNDBG_CLASSMAP is broken: it is one-size-fits-all-poorly.
> It muddles the distinction between a (single) definition, and multiple
> references.  Something exported should suffice.
> 
> The core of this patchset splits it into:
> 
> DYNDBG_CLASSMAP_DEFINE	used once per subsystem to define each classmap
> DYNDBG_CLASSMAP_USE	declare dependence on a DEFINEd classmap
> 
> This makes the weird coordinated-changes-by-identical-classmaps
> "feature" unnecessary; the DEFINE can export the var, and USE refers
> to the exported var.
> 
> So this patchset adds another section: __dyndbg_class_refs.
> 
> It is like __dyndbg_classes; it is scanned under ddebug_add_module(),
> and attached to each module's ddebug_table.  Once attached, it can be
> used like classes to validate and apply class FOO >control queries.
> 
> It also maps the class user -> definer explicitly, so that when the
> module is loaded, the section scan can find the kernel-param that is
> wired to dyndbg's kparam-callback, and apply its state-var, forex:
> __drm_debug to the just loaded helper/driver module.
> 
> Theres plenty to address Im sure.
> 
> Jim Cromie (17):
>   test-dyndbg: fixup CLASSMAP usage error
>   test-dyndbg: show that DEBUG enables prdbgs at compiletime
>   dyndbg: fix readback value on LEVEL_NAMES interfaces
>   dyndbg: replace classmap list with a vector
>   dyndbg: make ddebug_apply_class_bitmap more selective
>   dyndbg: dynamic_debug_init - use pointer inequality, not strcmp
>   dyndbg: drop NUM_TYPE_ARRAY
>   dyndbg: reduce verbose/debug clutter
>   dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP with
>     DYNDBG_CLASSMAP(_DEFINE|_USE)
>   dyndbg-API: specialize DYNDBG_CLASSMAP_(DEFINE|USE)
>   dyndbg-API: DYNDBG_CLASSMAP_USE drop extra args
>   dyndbg-API: DYNDBG_CLASSMAP_DEFINE() improvements
>   drm_print: fix stale macro-name in comment
>   dyndbg: unwrap __ddebug_add_module inner function NOTYET
>   dyndbg: ddebug_sanity()
>   dyndbg: mess-w-dep-class
>   dyndbg: miss-on HACK
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c |  14 +-
>  drivers/gpu/drm/display/drm_dp_helper.c |  14 +-
>  drivers/gpu/drm/drm_crtc_helper.c       |  14 +-
>  drivers/gpu/drm/drm_print.c             |  22 +--
>  drivers/gpu/drm/i915/i915_params.c      |  14 +-
>  drivers/gpu/drm/nouveau/nouveau_drm.c   |  14 +-
>  include/asm-generic/vmlinux.lds.h       |   3 +
>  include/drm/drm_print.h                 |   6 +-
>  include/linux/dynamic_debug.h           |  57 ++++--
>  include/linux/map.h                     |  54 ++++++
>  kernel/module/main.c                    |   2 +
>  lib/dynamic_debug.c                     | 240 +++++++++++++++++++-----
>  lib/test_dynamic_debug.c                |  47 ++---
>  13 files changed, 344 insertions(+), 157 deletions(-)
>  create mode 100644 include/linux/map.h
> 
> -- 
> 2.38.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
