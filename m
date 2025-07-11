Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F50BB0173F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 11:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F149A10E9DC;
	Fri, 11 Jul 2025 09:08:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="A8JlXSdN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939AB10E9DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 09:08:39 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-3a4e742dc97so1904776f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 02:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1752224918; x=1752829718; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NClqQGvSyyWbFAtwxH41cChinxe5vTi0AslNu9ZJ5jM=;
 b=A8JlXSdNDAynvcNNxpUdgUJVlaNVlIWv4bgriA0K22kWAMbCvSwd6zLKczMRFrUsqf
 7G2htS3p4B4r2hMZCV1Cz48x7QW0+HrIjGJfSxaEONOWSvvIhu3VJGHN8FUTYrA8dHF5
 A2QpVVuBOpd9qhOfrxBJSASE7Oe96wIIkWlgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752224918; x=1752829718;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NClqQGvSyyWbFAtwxH41cChinxe5vTi0AslNu9ZJ5jM=;
 b=Lzde/P87/FrDQ2HKMXRR3wW7nHo6XX/x8I/GM552L5M70typXFVKUFYwD970NqS/AE
 bGjulibYCKIm6w8ueSYnqYUevSB51bJI9PIPPPirR3I/gfWUkTeCFyoyeAdSblzNCINQ
 kf5eWptQUqe2U+/IhYr3GIrMKcSsHmyIVugvJTeM59yuxsTWxwrylQU5CaAgC6PYiUWZ
 1wBI5gAZf4q48akQJYsqQPIzeucXDqNkBZiJjliRWm0yYJLXMBCY1ie10zum8ISE+5yq
 EbdEEZepVMS3uZRrkSINfLp+ApZbUI+W3NcqL3oPxugfeFqKRQdLn83agh9xCeCZPNIW
 7i/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU5keB8JCiZVI8bZEO5ULRIsG2chy2s/r2mQkUGJIcCLPazk9J53i/DO2H+jZjSrCCwFd9VYaEeQC8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzCgsWnC8+z+dYarQmWz62W8Hk4z73Bz+aID/nB/R2zMBc9UaMC
 /t/CgqmvtOXRBQ/O5u/PQd4afC5KadsuU5to8KphEipJVuwJxFD1HdPzgbtDaV8VJh83zsc9Gj8
 f9e/0oVE=
X-Gm-Gg: ASbGnctp91g6SV6ZeCl7LC1QVeRSNQtLm04ISwwo5xlje4xPp7k7thC5Bt+a0Yfcffi
 sK4XOi91ivrl9cP70e71jRFnGNLN/J8yKVsjDgfakj3iLF6QMgGrQrtc8odrejFACftIFHw4Axh
 d0EAKrFh8xLvquiWPvENaMtSdpFTwLb5o0CW8m2MdlbFywjs4+xZhEXIn4E9u07OBwSOTBMX9XD
 1XgZSrJh1C1Zzqp4JpcvIh9MQFO1fHQSBpXtgnyT3txGtE8OCFs66HswA3f7DUJIgbuc48/Frq0
 mKK97d7JhxddvbKnKxIqgy6IEkxOdIn+LJwPvFhxwnW647k6d/a6pjKsCthBb60gVi2WuMWdbBb
 yaT8HLcPBj/j6h8jsDX1oZMXTXVxdgr8jiA==
X-Google-Smtp-Source: AGHT+IGVsLzQL1NlYFVJvXIE4T0h4Rt3wByr9RdaY2zy17RQYDMiTV0C4rlOHtb8gaPmgLYxigvqbg==
X-Received: by 2002:a05:6000:1a8f:b0:3a4:f7e7:3630 with SMTP id
 ffacd0b85a97d-3b5f1e86f8emr2234076f8f.15.1752224917885; 
 Fri, 11 Jul 2025 02:08:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b5e8e269a0sm3871184f8f.86.2025.07.11.02.08.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jul 2025 02:08:37 -0700 (PDT)
Date: Fri, 11 Jul 2025 11:08:35 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Maxime Ripard <mripard@redhat.com>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-misc-next
Message-ID: <aHDUk5RwrJlNWk4M@phenom.ffwll.local>
References: <20250710-observant-elite-dingo-acfd6d@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250710-observant-elite-dingo-acfd6d@houat>
X-Operating-System: Linux phenom 6.12.30-amd64 
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

On Thu, Jul 10, 2025 at 12:06:19PM +0200, Maxime Ripard wrote:
> Hi Dave, Sima,
> 
> Here's this week drm-misc-next PR. It's likely to be the last PR for
> this release cycle.
> 
> Maxime
> 
> drm-misc-next-2025-07-10:
> drm-misc-next for 6.17:
> 
> UAPI Changes:
> 
> Cross-subsystem Changes:
> 
> Core Changes:
> 
> Driver Changes:
> - amdgpu: debugfs improvements
> - ast: Improve hardware generations implementation
> - dma-buf heaps:
>   - Give the CMA heap a stable name
> - panthor: fix UAF in debugfs
> - rockchip: Convert inno_hdmi to a bridge
> - sti: Convert to devm_drm_bridge_alloc()
> - vkms: Use faux_device
> 
> - bridge:
>   - Improve CEC handling code, convertions to devm_drm_bridge_alloc()
> The following changes since commit 203dcde881561f1a4ee1084e2ee438fb4522c94a:
> 
>   Merge tag 'drm-msm-next-2025-07-05' of https://gitlab.freedesktop.org/drm/msm into drm-next (2025-07-08 14:31:19 +0200)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2025-07-10

Pulled into drm-next, thanks!
-Sima

> 
> for you to fetch changes up to fe69a391808404977b1f002a6e7447de3de7a88e:
> 
>   drm/panthor: Fix UAF in panthor_gem_create_with_handle() debugfs code (2025-07-10 10:16:50 +0100)
> 
> ----------------------------------------------------------------
> drm-misc-next for 6.17:
> 
> UAPI Changes:
> 
> Cross-subsystem Changes:
> 
> Core Changes:
> 
> Driver Changes:
> - amdgpu: debugfs improvements
> - ast: Improve hardware generations implementation
> - dma-buf heaps:
>   - Give the CMA heap a stable name
> - panthor: fix UAF in debugfs
> - rockchip: Convert inno_hdmi to a bridge
> - sti: Convert to devm_drm_bridge_alloc()
> - vkms: Use faux_device
> 
> - bridge:
>   - Improve CEC handling code, convertions to devm_drm_bridge_alloc()
> 
> ----------------------------------------------------------------
> Alessio Belle (1):
>       drm/imagination: Clear runtime PM errors while resetting the GPU
> 
> Andy Yan (9):
>       drm/rockchip: inno_hdmi: Merge register definition to c file
>       drm/rockchip: inno_hdmi: Refactor register macros to make checkpatch happy
>       drm/rockchip: inno_hdmi: Remove unnecessary parentheses to make checkpatch happy
>       drm/rockchip: inno_hdmi: Rename function inno_hdmi_reset to inno_hdmi_init_hw
>       drm/rockchip: inno_hdmi: Move ddc/i2c configuration and HOTPLUG unmute to inno_hdmi_init_hw
>       drm/rockchip: inno_hdmi: Use sleep_range instead of udelay
>       drm/rockchip: inno_hdmi: switch i2c registration to devm functions
>       drm/rockchip: inno_hdmi: Simpify clk get/enable by devm_clk_get_enabled api
>       drm/rockchip: vop2: Fix the update of LAYER/PORT select registers when there are multi display output on rk3588/rk3568
> 
> Chaoyi Chen (2):
>       drm/rockchip: lvds: Convert to drm bridge
>       drm/rockchip: cdn-dp: Convert to drm bridge
> 
> Cristian Ciocaltea (3):
>       drm/display: hdmi-cec-helper: Fix adapter unregistration
>       drm/bridge: Fix kdoc comment for DRM_BRIDGE_OP_HDMI_CEC_ADAPTER
>       drm/bridge: adv7511: Fix DRM_BRIDGE_OP_HDMI_{AUDIO|CEC_ADAPTER} setup
> 
> Dan Carpenter (1):
>       drm/dp: Clean up white space in drm_edp_backlight_probe_state()
> 
> Greg Kroah-Hartman (2):
>       drm/vkms: convert to use faux_device
>       drm/vgem/vgem_drv convert to use faux_device
> 
> Heiko Stuebner (1):
>       drm/rockchip: vop2: fail cleanly if missing a primary plane for a video-port
> 
> Jared Kangas (3):
>       Documentation: dma-buf: heaps: Fix code markup
>       dma-buf: heaps: Parameterize heap name in __add_cma_heap()
>       dma-buf: heaps: Give default CMA heap a fixed name
> 
> Juston Li (1):
>       gpu/trace: make TRACE_GPU_MEM configurable
> 
> Luca Ceresoli (3):
>       drm/bridge: tc358767: fix uninitialized variable regression
>       drm/sti: hdmi: convert to devm_drm_bridge_alloc() API
>       drm/sti: hda: convert to devm_drm_bridge_alloc() API
> 
> Maarten Lankhorst (1):
>       Merge remote-tracking branch 'drm/drm-next' into drm-misc-next
> 
> Marek Szyprowski (1):
>       drm/bridge: analogix_dp: Use devm_drm_bridge_alloc() API
> 
> Matthew Brost (1):
>       drm: Simplify drmm_alloc_ordered_workqueue return
> 
> Shixiong Ou (1):
>       fbcon: Fix outdated registered_fb reference in comment
> 
> Simona Vetter (1):
>       drm/panthor: Fix UAF in panthor_gem_create_with_handle() debugfs code
> 
> Sunil Khatri (6):
>       drm: move drm based debugfs funcs to drm_debugfs.c
>       drm: add debugfs support on per client-id basis
>       drm/amdgpu: add debugfs support for VM pagetable per client
>       drm/amdgpu: add support of debugfs for mqd information
>       drm/amdgpu: fix MQD debugfs undefined symbol when DEBUG_FS=n
>       drm/amdgpu: fix the logic to validate fpriv and root bo
> 
> T.J. Mercier (1):
>       dma-buf: system_heap: No separate allocation for attachment sg_tables
> 
> Tamir Duberstein (1):
>       rust: drm: remove unnecessary imports
> 
> Thierry Reding (1):
>       drm/fbdev-client: Skip DRM clients if modesetting is absent
> 
> Thomas Zimmermann (13):
>       drm/gem-shmem: Do not map s/g table by default
>       drm/tegra: Test for imported buffers with drm_gem_is_imported()
>       drm/tegra: Use dma_buf from GEM object instance
>       drm/ast: Declare helpers for POST in header
>       drm/ast: Move Gen7+ POST code to separate source file
>       drm/ast: Move Gen6+ POST code to separate source file
>       drm/ast: Move Gen4+ POST code to separate source file
>       drm/ast: Move Gen2+ and Gen1 POST code to separate source files
>       drm/ast: Move struct ast_dramstruct to ast_post.h
>       drm/ast: Handle known struct ast_dramstruct with helpers
>       drm/ast: Split ast_set_def_ext_reg() by chip generation
>       drm/ast: Gen7: Disable VGASR0[1] as on Gen4+
>       drm/ast: Gen7: Switch default registers to gen4+ state
> 
> Tvrtko Ursulin (2):
>       drm/sched: De-clutter drm_sched_init
>       drm/sched: Consolidate drm_sched_rq_select_entity_rr
> 
> Yumeng Fang (1):
>       drm/rockchip: dw_hdmi: Use dev_err_probe() to simplify code
> 
>  Documentation/userspace-api/dma-buf-heaps.rst      |   11 +-
>  drivers/Kconfig                                    |    2 -
>  drivers/accel/drm_accel.c                          |   16 -
>  drivers/dma-buf/heaps/Kconfig                      |   10 +
>  drivers/dma-buf/heaps/cma_heap.c                   |   36 +-
>  drivers/dma-buf/heaps/system_heap.c                |   43 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c        |   52 +
>  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.h        |    1 +
>  drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c            |    2 +
>  drivers/gpu/drm/amd/amdgpu/amdgpu_userq.c          |   55 +
>  drivers/gpu/drm/amd/amdgpu/amdgpu_userq.h          |    1 +
>  drivers/gpu/drm/ast/Makefile                       |    5 +
>  drivers/gpu/drm/ast/ast_2000.c                     |  149 ++
>  drivers/gpu/drm/ast/ast_2100.c                     |  348 ++++
>  drivers/gpu/drm/ast/ast_2300.c                     | 1328 +++++++++++++
>  drivers/gpu/drm/ast/ast_2500.c                     |  569 ++++++
>  drivers/gpu/drm/ast/ast_2600.c                     |   44 +
>  drivers/gpu/drm/ast/ast_dram_tables.h              |  207 --
>  drivers/gpu/drm/ast/ast_drv.c                      |    4 +-
>  drivers/gpu/drm/ast/ast_drv.h                      |   17 +-
>  drivers/gpu/drm/ast/ast_post.c                     | 2027 +-------------------
>  drivers/gpu/drm/ast/ast_post.h                     |   50 +
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |    6 +-
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   40 +-
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |    3 +-
>  drivers/gpu/drm/bridge/tc358767.c                  |    1 +
>  drivers/gpu/drm/clients/drm_client_setup.c         |    5 +
>  drivers/gpu/drm/display/drm_dp_helper.c            |   14 +-
>  drivers/gpu/drm/display/drm_hdmi_cec_helper.c      |    2 +-
>  drivers/gpu/drm/drm_debugfs.c                      |  118 +-
>  drivers/gpu/drm/drm_drv.c                          |   16 +-
>  drivers/gpu/drm/drm_file.c                         |   11 +
>  drivers/gpu/drm/drm_internal.h                     |    6 +-
>  drivers/gpu/drm/drm_panic_qr.rs                    |    2 +-
>  drivers/gpu/drm/imagination/pvr_power.c            |   59 +-
>  drivers/gpu/drm/panthor/panthor_gem.c              |   31 +-
>  drivers/gpu/drm/panthor/panthor_gem.h              |    3 -
>  drivers/gpu/drm/rockchip/cdn-dp-core.c             |  291 ++-
>  drivers/gpu/drm/rockchip/cdn-dp-core.h             |    8 +-
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        |   16 +-
>  drivers/gpu/drm/rockchip/inno_hdmi.c               |  452 ++++-
>  drivers/gpu/drm/rockchip/inno_hdmi.h               |  349 ----
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |   29 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       |   33 +
>  drivers/gpu/drm/rockchip/rockchip_lvds.c           |   68 +-
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c       |   89 +-
>  drivers/gpu/drm/scheduler/sched_main.c             |   81 +-
>  drivers/gpu/drm/sti/sti_hda.c                      |   27 +-
>  drivers/gpu/drm/sti/sti_hdmi.c                     |   26 +-
>  drivers/gpu/drm/sti/sti_hdmi.h                     |    2 +
>  drivers/gpu/drm/tegra/gem.c                        |    4 +-
>  drivers/gpu/drm/udl/udl_drv.c                      |    2 +-
>  drivers/gpu/drm/vgem/vgem_drv.c                    |   30 +-
>  drivers/gpu/drm/vkms/vkms_crtc.c                   |    2 -
>  drivers/gpu/drm/vkms/vkms_drv.c                    |   28 +-
>  drivers/gpu/drm/vkms/vkms_drv.h                    |    4 +-
>  drivers/gpu/trace/Kconfig                          |   11 +-
>  drivers/video/Kconfig                              |    2 +
>  drivers/video/fbdev/core/fbcon.c                   |    4 +-
>  include/drm/drm_accel.h                            |    5 -
>  include/drm/drm_bridge.h                           |    2 +-
>  include/drm/drm_debugfs.h                          |   11 +
>  include/drm/drm_drv.h                              |   19 +-
>  include/drm/drm_file.h                             |    7 +
>  include/drm/drm_gem_shmem_helper.h                 |   18 +-
>  include/drm/drm_managed.h                          |   15 +-
>  rust/kernel/drm/driver.rs                          |    1 -
>  67 files changed, 3761 insertions(+), 3169 deletions(-)
>  create mode 100644 drivers/gpu/drm/ast/ast_2000.c
>  create mode 100644 drivers/gpu/drm/ast/ast_2100.c
>  create mode 100644 drivers/gpu/drm/ast/ast_2300.c
>  create mode 100644 drivers/gpu/drm/ast/ast_2500.c
>  create mode 100644 drivers/gpu/drm/ast/ast_2600.c
>  delete mode 100644 drivers/gpu/drm/ast/ast_dram_tables.h
>  create mode 100644 drivers/gpu/drm/ast/ast_post.h
>  delete mode 100644 drivers/gpu/drm/rockchip/inno_hdmi.h



-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
